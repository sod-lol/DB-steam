#include "mainpresenter.h"
#include "login.h"

#include <QObject>
#include <QApplication>
#include <QList>
#include <QDateTime>

#include "database.h"
#include "UserQueryAbstract.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    const char* driverName = "QPSQL";
    DataBase *database = new DataBase(driverName);
    Login login(database);
    MainPresenter w(database);
    QObject::connect(&login, &Login::loginStatus, &w, &MainPresenter::setVisible);
    QObject::connect(&login, &Login::rejected, &w, &MainPresenter::reject);
    login.show();
    return a.exec();
}
