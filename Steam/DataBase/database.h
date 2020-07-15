#ifndef DATABASE_H
#define DATABASE_H

#include "DataBase_global.h"

#include <QObject>
#include <QtSql>
#include <QString>
#include <QDebug>

#include "userquery.h"
#include "gamequery.h"
#include "UserQueryAbstract.h"
#include "GameQueryAbstract.h"

class DATABASE_EXPORT DataBase : public QObject
{
    Q_OBJECT
public:
    DataBase(const char* driver, QObject *parent = nullptr);
    ~DataBase();

    QSqlDatabase *connect( const QString& server,
                               const QString& databaseName,
                               const QString& userName,
                               const QString& password,
                               int port);

    bool executeQuery(QSqlQuery* query);

    void disConnect();

    UserQueryAbstract *getUserQuery();

    GameQueryAbstract *getGameQuery();

private:
    QSqlDatabase* db;
};

#endif // DATABASE_H
