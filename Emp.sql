
create table emp
(empno number(19),
 emp_name varchar2(100),
  hire_date date,
  salary decimal(10,2) )
  
  
  
insert into emp values (100 ,'Donald Trump' ,Sysdate -1000 ,1000.25 ) ;
insert into emp values (101 ,'Hillary clinton' ,Sysdate -1001 ,1001.235 ) ;
insert into emp values (102 ,'Barack Obama' ,Sysdate -1002 ,1002.22 ) ;
insert into emp values (103 ,'Kim Jong' ,Sysdate -1003 ,1003.205 ) ;
insert into emp values (104 ,'Putin' ,Sysdate -1004 ,1004.19 ) ;
insert into emp values (105 ,'Tom' ,Sysdate -1005 ,1005.175 ) ;
insert into emp values (106 ,'Hary' ,Sysdate -1006 ,1006.16 ) ;
insert into emp values (107 ,'Jack' ,Sysdate -1007 ,1007.145 ) ;
insert into emp values (108 ,'Ranjeeta' ,Sysdate -1008 ,1008.13 ) ;
insert into emp values (109 ,'Angelina' ,Sysdate -1009 ,1009.115 ) ;
insert into emp values (110 ,'Bob' ,Sysdate -1010 ,1010.1 ) ;
insert into emp values (111 ,'Cherry' ,Sysdate -1011 ,1011.085 ) ;
insert into emp values (112 ,'Merry' ,Sysdate -1012 ,1012.07 ) ;
insert into emp values (113 ,'Gerry' ,Sysdate -1013 ,1013.055 ) ;
insert into emp values (114 ,'Husan' ,Sysdate -1014 ,1014.04 ) ;


select * from emp ;