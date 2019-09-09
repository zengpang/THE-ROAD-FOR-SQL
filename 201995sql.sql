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
insert into T_user values('id01'��'���»�'��'123'��'KBB'��'5678900'��'���ϳ�ɳ'��'13899005678'��
'ldh123','admin')
insert into T_user values('id02'��'��ĳ'��'123'��'KBB'��'5678900'��'���ϳ�ɳ'��'13899005678'��
'ldh123','admin')
insert into T_user values('id03'��'��ĳ'��'123'��'KBB'��'5678900'��'���ϳ�ɳ'��'13899005678'��
'ldh123','admin')
insert into T_user values('id04'��'��ĳ'��'123'��'KBB'��'5678900'��'���ϳ�ɳ'��'13899005678'��
'ldh123','admin')
insert into T_user values('id05'��'��ĳ'��'123'��'KBB'��'5678900'��'���ϳ�ɳ'��'13899005678'��
'ldh123','admin')
insert into t_Func_Role_Def values('1','Ͷ��������','Ͷ�긺����');
insert into t_Func_Role_Def values('2','�ܾ���','��ҵboss');
insert into t_Func_Role_Def values('3','Ա��','����');
insert into t_Func_Role_Def values('4','���ž���','����boss');
insert into t_Func_Role_Def values('5','�ɶ�','Ͷ����');
insert into T_func_item values('1','ɾ������','ɾ���û�');
insert into T_func_item values('2','��ѯ����','��ѯ�û�');
insert into T_func_item values('3','���빦��','�����û�');
insert into T_func_item values('4','��½����','��½�û�');
insert into T_func_item values('5','�ǳ�����','�ǳ��û�');
select * from t_Func_Item
select func_role_name,func_role_reserve from T_func_role_def where func_role_name='Ͷ��������';

