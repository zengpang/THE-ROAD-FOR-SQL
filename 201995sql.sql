create table T_user(
  user_id char(4) constraint T_user_pk primary key ,
  user_name char(16),
  user_passwd char(16),
  dept_id char(3),
  telephone varchar2(16),
  address varchar2(32),
  handphone varchar2(64),
  usb_no varchar2(64),
  T_user_reserve varchar(54)
  
);

create table T_func_item(
  func_id char constraint T_func_item_pk primary key,
  func_name varchar2(32),
  T_func_item_reserve varchar2(64)
);
create table T_func_role_def(
   func_role_id  char(3) constraint T_func_role_def_pk primary key,
   func_role_name varchar2(32),
   func_role_reserve varchar2(64)
);
insert into T_user values('id01'，'刘德华'，'123'，'KBB'，'5678900'，'湖南长沙'，'13899005678'，
'ldh123','admin')
insert into T_user values('id02'，'刘某'，'123'，'KBB'，'5678900'，'湖南长沙'，'13899005678'，
'ldh123','admin')
insert into T_user values('id03'，'王某'，'123'，'KBB'，'5678900'，'湖南长沙'，'13899005678'，
'ldh123','admin')
insert into T_user values('id04'，'晁某'，'123'，'KBB'，'5678900'，'湖南长沙'，'13899005678'，
'ldh123','admin')
insert into T_user values('id05'，'赵某'，'123'，'KBB'，'5678900'，'湖南长沙'，'13899005678'，
'ldh123','admin')
insert into t_Func_Role_Def values('1','投标责任人','投标负责人');
insert into t_Func_Role_Def values('2','总经理','企业boss');
insert into t_Func_Role_Def values('3','员工','打工仔');
insert into t_Func_Role_Def values('4','部门经理','部门boss');
insert into t_Func_Role_Def values('5','股东','投资者');
insert into T_func_item values('1','删除功能','删除用户');
insert into T_func_item values('2','查询功能','查询用户');
insert into T_func_item values('3','插入功能','插入用户');
insert into T_func_item values('4','登陆功能','登陆用户');
insert into T_func_item values('5','登出功能','登出用户');
select * from t_Func_Item
select func_role_name,func_role_reserve from T_func_role_def where func_role_name='投标责任人';

