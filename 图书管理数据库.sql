create table book_user(
   user_id int primary key,
   user_name varchar2(50),
   user_password varchar2(50),
   user_number int,
   user_money number(5,2),
   user_state number(1)
);
create table book_managers(
     manager_id int primary key,
     manager_name varchar2(50),
     manager_password varchar2(50),
     manager_permissions int 
     
     
  );
create table book_lend(
     book_id int primary key,
     user_id int,
     constraint fk_products_supplier  foreign key (user_id) references book_user(user_id),
     book_name varchar2(100),
     book_price number(5,2)
     
)
create table fine(
    fine_user_id int primary key,
    fine_money number(5,2)
)
select * from book_managers;
select * from book_user;
select * from book_lend;

select book_name,user_name from book_lend,book_user where (book_user.user_id=book_lend.user_id)AND(user_name='ÁõÄ³');
insert into book_managers values('7','command6','123','5');
select manager_password from book_managers where manager_name='KING';
select user_password from book_user where user_name='ÍõÄ³';
delete from book_user where user_name='ÕÅÄ³';




