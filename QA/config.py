# 数据库的配置变量
HOSTNAME = 'mysql_net'
PORT = '3306'
DATABASE = 'QA'
USERNAME = 'root'
PASSWORD = '123456'
DB_URI = 'mysql+pymysql://{}:{}@{}:{}/{}?charset=utf8'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)
SQLALCHEMY_DATABASE_URI = DB_URI
SECRET_KEY = "Aaudbabdasad"

# 邮箱设置
MAIL_SERVER = 'smtp.qq.com'
MAIL_PORT = 465
MAIL_USE_TLS = False
MAIL_USE_SSL = True
MAIL_DEBUG = True
MAIL_USERNAME = "932865549@qq.com"
MAIL_PASSWORD = "vjfbtoctvxqwbefi"
MAIL_DEFAULT_SENDER = "932865549@qq.com"


