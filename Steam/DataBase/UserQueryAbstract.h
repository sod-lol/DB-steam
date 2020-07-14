#ifndef USERQUERYABSTRACT_H
#define USERQUERYABSTRACT_H


#include <QtSql>
#include <QList>

#include "models.h"

class UserQueryAbstract
{
public:
    virtual QList<Game> getUserGames(QString username) = 0;

    virtual int getUserId(QString username) = 0;

    virtual QList<UserFriends> getUserFriends(QString username) = 0;

    virtual QList<UserBlocked> getUserBlocked(QString username) = 0;

    virtual QList<UserInvites> getUserPending(QString username) = 0;

    virtual QList<UserInvites> getUserReceive(QString username) = 0;
};

#endif // USERQUERYABSTRACT_H