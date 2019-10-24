#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDockWidget>
#include <QListWidget>
#include <QStringList>
#include <TEQ1Camera.h>
#include <RealSenseD415Camera.h>
#include <DebugCamera.h>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
//    mt4sd::Camera *camera = new mt4sd::TEQ1Camera();
//    mt4sd::Camera *camera = new mt4sd::RealSenseD415Camera();
    mt4sd::Camera *camera = new mt4sd::DebugCamera();
    ui->cameraViewer->setCamera(camera);

//    QDockWidget *dock = new QDockWidget(tr("Customers"), this);
//    dock->setAllowedAreas(Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea);
//    QListWidget *customerList = new QListWidget(dock);
//    customerList->addItems(QStringList()
//            << "John Doe, Harmony Enterprises, 12 Lakeside, Ambleton"
//            << "Jane Doe, Memorabilia, 23 Watersedge, Beaton"
//            << "Tammy Shea, Tiblanka, 38 Sea Views, Carlton"
//            << "Tim Sheen, Caraba Gifts, 48 Ocean Way, Deal"
//            << "Sol Harvey, Chicos Coffee, 53 New Springs, Eccleston"
//            << "Sally Hobart, Tiroli Tea, 67 Long River, Fedula");
//    dock->setWidget(customerList);
//    addDockWidget(Qt::RightDockWidgetArea, dock);
}

MainWindow::~MainWindow()
{
    delete ui;
}
