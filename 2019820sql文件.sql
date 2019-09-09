create table Stu_User(
     Stu_id int PRIMARY key,
     Stu_Name varchar2(50),
     Stu_PassWord varchar2(50),
     Stu_Hody varchar2(100),
     Stu_Sex Number(1),
     Stu_Money Number(10,3)
)
drop table stu_user;
select * from stu_user;
select 3*2 from stu_user;
select DISTINCT stu_user.stu_hody from stu_user;
select stu_user.stu_money,stu_user.stu_id,stu_user.stu_name from stu_user where stu_money>200;
select stu_name,max(stu_money) from stu_user group by stu_name;
select stu_name from stu_user where stu_money=(select MAX(stu_money) from stu_user);
