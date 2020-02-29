-- Post Master table
create table Post_master(
Post_Code varchar2(6),
Post_Name VARCHAR2(50) CONSTRAINT nn_Post_Name  NOT NULL
);

alter table Post_master
add CONSTRAINT  pk_Post_master
primary key (Post_Code);

DESC Post_Master;


-- UNIT Master table
create table Unit_Master(
Unit_Code varchar2(6),
Unit_Name VARCHAR2(50) CONSTRAINT nn_Unit_Name  NOT NULL
);

alter table Unit_Master
add CONSTRAINT  pk_Unit_Master
primary key (Unit_Code);

DESC Unit_Master;
-------------------------------------------------------------

-- Awsrd master
create table Award_Master(
Award_Code varchar2(6),
Award_Name VARCHAR2(50) CONSTRAINT nn_Award_Name  NOT NULL
);

alter table Award_Master
add CONSTRAINT  pk_Award_Code
primary key (Award_Code);

DESC Award_Master;

--------------------------------------------

create table Training_Master(
Training_Code varchar2(6),
Training_Name VARCHAR2(50) CONSTRAINT nn_Training_Name  NOT NULL
);

alter table Training_Master
add CONSTRAINT  pk_Training_Code
primary key (Training_Code);

DESC Training_Master;

------------------------

create table Punishment_Master(
Punishment_Code varchar2(6),
Punishment_Name VARCHAR2(50) CONSTRAINT nn_Punishment_Name  NOT NULL
);

alter table Punishment_Master
add CONSTRAINT  pk_Punishment_Code
primary key (Punishment_Code);

DESC Punishment_Master;
-----

create table District_Master(
District_Code varchar2(6),
District_Name VARCHAR2(50) CONSTRAINT nn_District_Name  NOT NULL
);

alter table District_Master
add CONSTRAINT  pk_District_Code
primary key (District_Code);

DESC District_Master;


-------

create table Institute_Master(
Institute_Code varchar2(6),
Institute_Name VARCHAR2(50) CONSTRAINT nn_Institute_Name  NOT NULL
);

alter table Institute_Master
add CONSTRAINT  pk_Institute_Code
primary key (Institute_Code);

DESC Institute_Master;

-------

create table Religion_Master(
Religion_Code varchar2(6),
Religion_Name VARCHAR2(50) CONSTRAINT nn_Religion_Name  NOT NULL
);

alter table Religion_Master
add CONSTRAINT  pk_Religion_Code
primary key (Religion_Code);

DESC Religion_Master;


-----------------------------

create table Education_Master(
Education_Code varchar2(6),
Education_Name VARCHAR2(50) CONSTRAINT nn_Education_Name  NOT NULL
);

alter table Education_Master
add CONSTRAINT  pk_Education_Code
primary key (Education_Code);

DESC Education_Master;
 -----------------------


create table Relation_Master(
Relation_Code varchar2(6),
Relation_Name VARCHAR2(50) CONSTRAINT nn_Relation_Name  NOT NULL
);

alter table Relation_Master
add CONSTRAINT  pk_Relation_Code
primary key (Relation_Code);

DESC Relation_Master;

---------------------------

create table University_Master(
University_Code varchar2(6),
University_Name VARCHAR2(50) CONSTRAINT nn_University_Name  NOT NULL
);

alter table University_Master
add CONSTRAINT  pk_University_Code
primary key (University_Code);

DESC University_Master;



-----------------------------

create table Country_Master(
Country_Code varchar2(6),
Country_Name VARCHAR2(50) CONSTRAINT nn_Country_Name  NOT NULL
);

alter table Country_Master
add CONSTRAINT  pk_Country_Code
primary key (Country_Code);

DESC Country_Master;


select * from tab;

---------------------------------

create table Blood_Group(
Group_Code varchar2(6),
Group_Name VARCHAR2(10) CONSTRAINT nn_Group_Name  NOT NULL
);

alter table Blood_Group
add CONSTRAINT  pk_Group_Code
primary key (Group_Code);
