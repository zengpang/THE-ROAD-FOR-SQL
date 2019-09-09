
create table COURSE
(
  cno   VARCHAR2(5) not null,
  cname VARCHAR2(10) not null,
  tno   VARCHAR2(10) not null
)
;
 

create table SCORE
(
  sno    VARCHAR2(3) not null,
  cno    VARCHAR2(5) not null,
  degree NUMBER not null
)
;
 
.
create table STUDENT
(
  sno       VARCHAR2(3) not null,
  sname     VARCHAR2(4) not null,
  ssex      VARCHAR2(2) not null,
  sbirthday DATE,
  class     NUMBER not null
)
;
 

create table TEACHER
(
  tno       VARCHAR2(3) not null,
  tname     VARCHAR2(4) not null,
  tsex      VARCHAR2(2) not null,
  tbirthday DATE not null,
  prof      VARCHAR2(6),
  depart    VARCHAR2(10) not null
)
;

insert into COURSE (cno, cname, tno)
values ('3-105', '计算机导论', '825');
insert into COURSE (cno, cname, tno)
values ('3-245', '操作系统', '804');
insert into COURSE (cno, cname, tno)
values ('6-166', '数据电路', '856');
insert into COURSE (cno, cname, tno)
values ('9-888', '高等数学', '100');

insert into SCORE (sno, cno, degree)
values ('103', '3-245', 86);
insert into SCORE (sno, cno, degree)
values ('105', '3-245', 75);
insert into SCORE (sno, cno, degree)
values ('109', '3-245', 68);
insert into SCORE (sno, cno, degree)
values ('103', '3-105', 92);
insert into SCORE (sno, cno, degree)
values ('105', '3-105', 88);
insert into SCORE (sno, cno, degree)
values ('109', '3-105', 76);
insert into SCORE (sno, cno, degree)
values ('101', '3-105', 64);
insert into SCORE (sno, cno, degree)
values ('107', '3-105', 91);
insert into SCORE (sno, cno, degree)
values ('108', '3-105', 76);
insert into SCORE (sno, cno, degree)
values ('101', '6-166', 85);
insert into SCORE (sno, cno, degree)
values ('107', '6-166', 79);
insert into SCORE (sno, cno, degree)
values ('108', '6-166', 81);
insert into SCORE (sno, cno, degree)
values ('101', '9-888', 90);
insert into SCORE (sno, cno, degree)
values ('101', '3-245', 88);

insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('133', '乔安', '女', to_date('15-05-1996', 'dd-mm-yyyy'), 95033);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('108', '曾华', '男', to_date('01-09-1977', 'dd-mm-yyyy'), 95033);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('105', '匡明', '男', to_date('02-10-1975', 'dd-mm-yyyy'), 95031);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('107', '王丽', '女', to_date('23-01-1976', 'dd-mm-yyyy'), 95033);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('101', '李军', '男', to_date('20-02-1976', 'dd-mm-yyyy'), 95033);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('109', '王芳', '女', to_date('10-02-1975', 'dd-mm-yyyy'), 95031);
insert into STUDENT (sno, sname, ssex, sbirthday, class)
values ('103', '陆君', '男', to_date('03-06-1974', 'dd-mm-yyyy'), 95031);

insert into TEACHER (tno, tname, tsex, tbirthday, prof, depart)
values ('804', '李诚', '男', to_date('02-12-1978', 'dd-mm-yyyy'), '副教授', '计算机系');
insert into TEACHER (tno, tname, tsex, tbirthday, prof, depart)
values ('856', '张旭', '男', to_date('12-03-1979', 'dd-mm-yyyy'), '讲师', '电子工程系');
insert into TEACHER (tno, tname, tsex, tbirthday, prof, depart)
values ('825', '王萍', '女', to_date('05-05-1982', 'dd-mm-yyyy'), '助教', '计算机系');
insert into TEACHER (tno, tname, tsex, tbirthday, prof, depart)
values ('831', '刘冰', '女', to_date('14-08-1987', 'dd-mm-yyyy'), '助教', '电子工程系');

select * from SCORE;
select * from STUDENT;
select * from TEACHER;
select * from Course;
select * from Course2;

select * from SCORE where Degree=85 OR Degree=86 OR Degree=88;
select * from student where SSEX='女' OR class=95031;
select * from student order by class desc;
select CNO,SNO from Score where degree in (select Max(degree) from Score);
select AVG(degree) from Scope where cno in(select cno from SCORE group by con having count(cno)>=5);
create table Course2 as select * from Course where CNAME!='高等数学';
select sname,DEGREE from STUDENT,Score where Student.Sno=score.sno order by DEGREE  desc ;
select score.degree from score,course where score.cno=course.cno AND course.cname='计算机导论';
select student.sno,Sname from student,course,teacher,score where student.sno=score.sno AND score.cno=course.cno And course.tno=teacher.tno And teacher.prof='副教授';
select count(Sno) from student group by class;

select * from teacher where to_char(sysdate,'yyyy')-to_char(tbirthday,'yyyy')>35;
select student.sname,student.sbirthday,teacher.tname,teacher.tbirthday from student,teacher,score,course where student.sno=score.sno AND score.cno=course.cno AND course.tno=teacher.tno AND student.ssex='男' AND teacher.tsex='男';
select sno from score where cno='3-245' and degree>(select max(degree) from score where cno='6-166');
select sno,avg(degree) from score where sno in(select sno from score group by sno having avg(degree)>60) group by sno;
select student.sno,student.sname from student,score where student.sno=score.sno AND score.degree =(select MAX(degree) from score );






