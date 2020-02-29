create table Award_Detail(
Emp_Number NUMBER(6),
SN varchar2(10),
Award_CD varchar2(20),
Date_BS DATE,
Date_AD DATE,
By_Unit_CD varchar2(6),
Remarks varchar(100),
Enter_By varchar2(50),
Enter_Date_AD DATE
);

alter table Award_Detail 
add CONSTRAINT Fk_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);


-- By_Unit_CD

alter table Award_Detail 
add CONSTRAINT Fk_By_Unit_CD
foreign key (By_Unit_CD)
references Unit_Master(Unit_Code);
DESC Award_Detail;




alter table
   Award_Detail
modify
(
   SN NUMBER(10)
);



-- create punishment detail

create table Punishment_Detail(
Emp_Number  NUMBER(6),
SN VARCHAR2(10),
Punishment_CD varchar2(6),
Date_BS DATE,
Date_AD DATE,
By_Unit_CD varchar2(6),
Remarks varchar2(100),
Enter_By varchar2(50),
Enter_Date_AD DATE
);

alter table Punishment_Detail 
add CONSTRAINT Fk_P_By_Unit_CD -- cannot have same value of Fk_By_Unit_CD
foreign key (By_Unit_CD)
references Unit_Master(Unit_Code);


alter table Punishment_Detail 
add CONSTRAINT Fk_P_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);


-- Punishment_CD(FK)
alter table Punishment_Detail 
add CONSTRAINT Fk_Punishment_CD
foreign key (Punishment_CD)
references Punishment_Master(Punishment_Code);

DESC Punishment_Detail;

alter table
   Punishment_Detail
modify
(
   SN NUMBER(10)
);

DESC Punishment_Detail;
---------------------------------------------------------------------------------

create table Education_Detail(
Emp_Number NUMBER(6),
SN NUMBER(10),
Education_CD varchar2(6),
Comp_Date_AD DATE,
Comp_Date_BS DATE,
Country_CD  varchar2(6),
University_CD varchar2(6),
Remarks varchar2(150),
Enter_By varchar(50),
Enter_Date_AD DATE
);

alter table Education_Detail 
add CONSTRAINT Fk_E_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);


---- Education_CD
alter table Education_Detail 
add CONSTRAINT Fk_Education_CD
foreign key (Education_CD)
references Education_Master(Education_Code);



-- Country_CD)FK)
--University_CD(FK)

alter table Education_Detail 
add CONSTRAINT Fk_Country_CD
foreign key (Country_CD)
references Country_Master(Country_Code);


alter table Education_Detail 
add CONSTRAINT Fk_University_CD
foreign key (University_CD)
references University_Master(University_Code);
