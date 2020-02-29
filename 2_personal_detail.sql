create table Personnel_Detail(
Emp_Number NUMBER(6),

First_Name VARCHAR2(50) CONSTRAINT nn_First_Name  NOT NULL,
Mid_Name VARCHAR2(50),
Last_Name VARCHAR2(50) CONSTRAINT nn_Last_Name  NOT NULL,

Perma_District_CD varchar2(6),
Perma_VDC_NP  varchar2(50),
Perma_Ward_No number(2),
Perma_Tole varchar2(20),

Temp_District_CD varchar2(6) ,
Temp_VDC_Np varchar2(50),
Temp_Ward_No NUMBER(2),
Temp_Tole varchar2(20),

Gender varchar(6) CONSTRAINT nn_gender NOT NULL,
Religion_Code varchar2(6) ,

Father_Name varchar2(50),
G_Father_Name varchar2(50),

Date_Birth_AD DATE,
Date_Birth_BS DATE,

Nom_Name  VARCHAR2(50),
Nom_Relation  varchar2(6),
Nom_Address  varchar(50),

Height number(2),
Blood_Group varchar2(6),

Appoint_Date_AD DATE,
Appoint_Date_BS DATE,

Appoint_Age number(2),
Appoint_Post varchar2(6),
Appoint_Unit varchar2(6),

Enter_By varchar(10),
Enter_Date_AD DATE
);

-- Add primary key

alter table Personnel_Detail
add CONSTRAINT  pk_Emp_Number
primary key (Emp_Number);

--- Add foregin keys

-- District foregin key many to one 
alter table Personnel_Detail 
add CONSTRAINT Fk_Perma_District_CD
foreign key (Perma_District_CD)
references District_Master(District_Code);


alter table Personnel_Detail 
add CONSTRAINT Fk_Temp_District_CD
foreign key (Temp_District_CD)
references District_Master(District_Code);

-- Religion  foregin key
alter table Personnel_Detail 
add CONSTRAINT Fk_Religion_Code
foreign key (Religion_Code)
references Religion_Master(Religion_Code);

-- Blood group foregin key  one to one

alter table Personnel_Detail 
add CONSTRAINT Fk_Blood_Group
foreign key (Blood_Group)
references Blood_Group(Group_Code);

-- Appoint_Post(FK) one to one 
--Appoint_Unit(FK) one to one

alter table Personnel_Detail 
add CONSTRAINT Fk_Appoint_Post
foreign key (Appoint_Post)
references Post_Master(Post_Code);
--- 
alter table Personnel_Detail 
add CONSTRAINT Fk_Appoint_Unit
foreign key (Appoint_Unit)
references Unit_Master(Unit_Code);


-- Nom_Relation Relation_Master
alter table Personnel_Detail 
add CONSTRAINT Fk_Nom_Relation
foreign key (Nom_Relation)
references Relation_Master(Relation_Code);

Desc Personnel_Detail;

select * from tab;