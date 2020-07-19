#include "login.h"
#include "ui_login.h"

Login::Login(DataBase *database, QWidget *parent)
    : QDialog(parent), database(database)
    , ui(new Ui::Login)
{
    ui->setupUi(this);
    btnLoginDisableStyle();
    ui->stackedWidget->setCurrentIndex(0);
}

Login::~Login()
{
    delete ui;
}


void Login::on_lineEditPassword_textChanged(const QString &arg1)
{
    if(arg1.length() == 0)
    {
        btnLoginDisableStyle();
        return;
    }
    btnLoginEnableStyle();
}

void Login::btnLoginEnableStyle()
{
    ui->btnLogin->setEnabled(true);
    ui->btnLogin->setStyleSheet("QPushButton { \
                                min-width: 190px; \
                                background-color:	#888888; \
                                color: white; } \
                                QPushButton:hover{ \
                                color: palette(dark); }");
}

void Login::btnLoginDisableStyle()
{
    ui->btnLogin->setEnabled(false);
    ui->btnLogin->setStyleSheet("QPushButton {opacity: 0.1;}");
}

bool Login::validateEmail(QString email)
{
    if(!email.contains("@")) return false;
    if(email.split("@").size() < 2) return false;
    if(!email.split("@")[1].contains(".")) return false;
    return true;
}

void Login::on_btnCancel_clicked()
{
    reject();
}

void Login::on_btnLogin_clicked()
{
    QString username = ui->lineEditAccountName->text();
    QString password = ui->lineEditPassword->text();
    if(this->database->getUserQuery()->userLogin(username, password)){
        emit loginStatus(true);
        this->accept();
    }
    else {
        //create acc and wrong pass login here
    }
}

void Login::on_btnCreate_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}


void Login::on_backPushButton_clicked()
{
    ui->stackedWidget->setCurrentIndex(0);
}

void Login::on_createAccPushButton_clicked()
{
    User user;
    user.username = ui->usernameLineEdit->text();
    if(!this->validateEmail(ui->emailLIneEdit->text())) return;
    user.email = ui->emailLIneEdit->text();
    user.bio = ui->bioLineEdit->text();
    user.birth = ui->birthLineEdit->text();
    user.nickname = ui->nicknameLineEdit->text();
    user.profileImg.url = ui->profileImgLineEdit->text();
    qInfo() << user.toVariantMap();
}
