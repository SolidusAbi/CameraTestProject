#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->cameraWidget = new mt4sd::CameraGLViewer();
    ui->verticalLayout->addWidget(this->cameraWidget);
}

MainWindow::~MainWindow()
{
    delete ui;
}

