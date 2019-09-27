#include "mainwindow.h"

#include <QApplication>
//#include <thermalcameralib.h>

#include <ThermalCameraLib/TEQ1Camera.h>
#include <ThermalCameraLib/CameraGLViewer.h>

int main(int argc, char *argv[])
{
    //mt4sd::ThermalCameraLib *camera = new mt4sd::ThermalCameraLib(mt4sd::CameraType::I3_TE_Q1);
//    if (!camera->isConnected())
//        return -1;

    mt4sd::Camera *camera = new mt4sd::TEQ1Camera();

    QApplication a(argc, argv);
    MainWindow w;
    mt4sd::CameraGLViewer *cameraViewer = new mt4sd::CameraGLViewer(camera);
    w.addCameraGLWidget(cameraViewer);
    w.show();
    return a.exec();
}
