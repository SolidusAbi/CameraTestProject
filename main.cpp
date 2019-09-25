#include "mainwindow.h"

#include <QApplication>
#include <thermalcameralib.h>

int main(int argc, char *argv[])
{
    mt4sd::ThermalCameraLib *camera = new mt4sd::ThermalCameraLib(mt4sd::Camera::I3_TE_Q1);
    if (!camera->isConnected())
        return -1;

    QApplication a(argc, argv);
    MainWindow w;
    mt4sd::CameraGLViewer *cameraViewer = new mt4sd::CameraGLViewer(camera);
    w.addCameraGLWidget(cameraViewer);
    w.show();
    return a.exec();
}
