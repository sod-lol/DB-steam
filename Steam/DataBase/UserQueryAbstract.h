#ifndef USERQUERYABSTRACT_H
#define USERQUERYABSTRACT_H


#include <QtSql>
#include <QList>

#include "models.h"

class UserQueryAbstract
{
public:
    virtual bool userLogin(QString password, QString username) = 0;

    virtual QList<Game> getUserGames(QString username) = 0;

    virtual int getUserId(QString username) = 0;

    virtual QList<File> getGameImages(QString name) = 0;

    virtual User getUser(QString username) = 0;

    virtual QList<UserFriends> getUserFriends(QString username) = 0;

    virtual QList<UserBlocked> getUserBlocked(QString username) = 0;

    virtual QList<UserInvites> getUserPending(QString username) = 0;

    virtual QList<UserInvites> getUserReceive(QString username) = 0;

    virtual bool insertUser(User user) = 0;

    virtual bool hasGame(QString gameName, QString username) = 0;

    virtual bool purchaseGame(QString gameName, QString username) = 0;

    virtual bool setProfileImg(QString path, QString username) = 0;
};

#endif // USERQUERYABSTRACT_H
