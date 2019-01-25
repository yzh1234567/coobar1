use coobar;
create table coobar_user(
      uid int primary key auto_increment,
      uname varchar(20) unique not null,
      upwd varchar(32)  not null,
      phone char(20) ,
      email varchar(20)
);
insert into coobar_user (uid,uname,upwd) values(null,"tom1234",md5("12345678"));
insert into coobar_user (uid,uname,upwd) values(null,"jerry1234",md5("12345678"));
insert into coobar_user (uid,uname,upwd) values(null,"rose1234",md5("12345678"));

use coobar;
create table coobar_adImg(
    id int primary key auto_increment,
    img varchar(128),
    src varchar(128),
    title varchar(128),
    aid int
);
insert into coobar_adImg(id,img,src) values(null,"img/index-section/lunbo1.jpg","/products");
insert into coobar_adImg(id,img,src) values(null,"img/index-section/lunbo2.jpg","/products");
insert into coobar_adImg(id,img,src) values(null,"img/index-section/lunbo3.jpg","/products");

use coobar;
create table coobar_index_F1_product(
    id int primary key auto_increment,
    pid int,
    img_src varchar(128),
    href varchar(128),
    old_price decimal(10,2),
    new_prece decimal(10,2),
    title varchar(128),
    count int,
    seatNumber int
);
create table coobar_index_F2_product(
    id int primary key auto_increment,
    pid int,
    img_src varchar(128),
    href varchar(128),
    old_price decimal(10,2),
    new_prece decimal(10,2),
    title varchar(128),
    seatNumber int
);
create table coobar_index_F2_product(
    id int primary key auto_increment,
    pid int,
    img_src varchar(128),
    href varchar(128),
    old_price decimal(10,2),
    new_prece decimal(10,2),
    title varchar(128),
    seatNumber int
);
create table coobar_index_F3_product(
    id int primary key auto_increment,
    pid int,
    img_src varchar(128),
    href varchar(128),
    old_price decimal(10,2),
    new_prece decimal(10,2),
    title varchar(128),
    seatNumber int
);
create table coobar_products(
    id int primary key auto_increment,   #产品的id
    title VARCHAR(128),         #主标题
    old_price DECIMAL(10,2),    #原价格
    new_price decimal(10,2),    #新价格
    count  int ,                #购买数量
    img_src varchar(128),
    href varchar(128),

    lname VARCHAR(32),          #商品名称
    category VARCHAR(32),       #所属分类
    details VARCHAR(1024),      #产品详细说明

    shelf_time datetime,          #上架时间
    sold_count INT  ,           #已售出的数量
    surplus_count int           #库存量
);
insert into coobar_products (id,title,old_price,new_price,count,img_src,href,lname,category,details,shelf_time,sold_count,surplus_count)values(
    null,
    "新疆板栗南瓜单个装重1-2kg",
    49.90,
    29.90,
    1,
    "img/F1_product/南瓜1.jpg",
    "/details/",
    "南瓜",
    "蔬菜",
    "新疆板栗南瓜单个装重1-2kg",
     now(),
     2999,
     100
)
insert into coobar_products (id,title,old_price,new_price,count,img_src,href,lname,category,details,shelf_time,sold_count,surplus_count)values(
    null,
    "四川四季豆500g",
    9.90,
    4.90,
    1,
    "img/F1_product/四季豆1.jpg",
    "/details/",
    "四季豆",
    "蔬菜",
    "四川四季豆500g",
     now(),
     3897,
     146
)
insert into coobar_products (id,title,old_price,new_price,count,img_src,href,lname,category,details,shelf_time,sold_count,surplus_count)values(
    null,
    "重庆娃娃菜500g",
    4.90,
    2.90,
    1,
    "img/F1_product/娃娃菜1.jpg",
    "/details/",
    "娃娃菜",
    "蔬菜",
    "重庆娃娃菜500g",
     now(),
     23234,
    234
)
insert into coobar_products (id,title,old_price,new_price,count,img_src,href,lname,category,details,shelf_time,sold_count,surplus_count)values(
    null,
    "山东白萝卜500g",
    4.90,
    3.90,
    1,
    "img/F1_product/白萝卜1.jpg",
    "/details/",
    "萝卜",
    "蔬菜",
    "山东白萝卜500g",
     now(),
     2334,
    1234
)
insert into coobar_products (id,title,old_price,new_price,count,img_src,href,lname,category,details,shelf_time,sold_count,surplus_count)values(
    null,
    "山东白萝卜500g",
    4.90,
    3.90,
    1,
    "img/F1_product/白萝卜1.jpg",
    "/details/",
    "萝卜",
    "蔬菜",
    "山东白萝卜500g",
     now(),
     2334,
    1234
)
create table coobar_product_img(
    id int primary key auto_increment,
    pid int,
    img_sm varchar(128),
    img_md varchar(128),
    img_lg varchar(128)
);
create table coobar_product_family(
    id int primary key auto_increment,
    name varchar(128)
)