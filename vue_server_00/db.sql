#功能一:创建新闻表
#1:表名 boy_news
#2:几列 4
#3:列名 #id/title/img_url/ctime/point/content
#4:类型
#id      INT
#title   VARCHAR(255)
#img_url VARCHAR(255) 
#ctime   DATETIME
#point   INT
#content VARCHAR(2000) 
#5:添加20条件

CREATE TABLE boy_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(255),
  img_url  VARCHAR(255),
  ctime  DATETIME,
  point   INT,
  content VARCHAR(2000)
);

INSERT INTO boy_news VALUES(null,'123','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'124','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'125','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'126','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'127','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'128','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'129','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123a','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123b','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123c','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123d','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123e','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123f','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123g','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123h','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123i','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123j','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123k','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123l','http://127.0.0.1:3000/1.png',now(),0,'123');
INSERT INTO boy_news VALUES(null,'123m','http://127.0.0.1:3000/1.png',now(),0,'123');


#功能二:创建评论表
#内容;时间;那条新闻;编号
CREATE TABLE boy_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(50),
  ctime DATETIME,
  nid   INT
);
INSERT INTO boy_comment VALUES(null,'赞一个1',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个2',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个3',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个4',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个5',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个6',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个7',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个8',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个9',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个10',now(),5);
INSERT INTO boy_comment VALUES(null,'赞一个11',now(),5);

#创建用户登录表
#用户登录密码需要加密保存使用 MySQL自带函数md5()
CREATE TABLE boy_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd VARCHAR(32)
);
INSERT INTO boy_login VALUES(null,'tom',md5('123'));
#理解:用户输入123对用户输入内容加密
#加密后与数据密码比较
#SELECT id FROM boy_login
#WHERE uname = ? AND upwd = md5(?)

#创建购物车表
CREATE TABLE boy_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  count INT,
  price DECIMAL(10,2),
  pid INT,
  uid INT
);
#vue 服务器 db.sql保存数据库脚本 
CREATE TABLE boy_shop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  name VARCHAR(255),
  tel  VARCHAR(25),
  addr VARCHAR(255),
  time VARCHAR(255),
  star INT
);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000209_main_082.jpg','B71HD06U','1000000209','羽绒服','8:00~19:00',100);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000217_main_025.jpg','B71HD06U','1000000217','棉服','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000310_main_052.jpg','B71HD04U','1000000310','帽衫','8:00~19:00',80);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000343_main_092.jpg','B84KT1409F','1000000343','卫衣','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000350_main_069.jpg','B24KT1559F','1000000350','卫衣','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000359_main_017.jpg','B83MT1133U','1000000359','卫衣','8:00~19:00',80);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000384_main_037.jpg','B71HD06U','1000000384','棉服','8:00~19:00',100);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000389_main_014.jpg','B84WS1423U','1000000389','卫衣','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000479_main_043.jpg','B84JP1209U','1000000479','羽绒服','8:00~19:00',90);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000519_main_042.jpg','B84MF1003U','1000000519','卫衣','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000522_main_066.jpg','B84MF1003U95','1000000522','披肩','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000524_add3_066.jpg','B71HD06U','1000000524','卫衣','8:00~19:00',100);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000556_main_020.jpg','B84MF1003U','1000000556','衬衫','8:00~19:00',91);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000655_add3_092.jpg','B71HD06U','1000000655','帽衫','8:00~19:00',100);
INSERT INTO boy_shop VALUES(null,
'http://127.0.0.1:3000/img/product/md/1000000656_add3_062.jpg','B71HD06U','1000000656','帽衫','8:00~19:00',100);
CREATE TABLE boy_pro(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25)
);