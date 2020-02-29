create table Job_Termination_Detail(
Emp_Number NUMBER(6),
Termin_Date_AD date,
Termin_Date_BS DATE,
Termination_Type VARCHAR2(50),
Authirised_By_Code NUMBER(6), -- WHAT IS DATATYPE?
Authorised_By_Unit VARCHAR2(6),
Enter_Date_AD DATE
);
---- jOB TERMINATION NOTES

alter table Job_Termination_Detail 
add CONSTRAINT Fk_J_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);
--- Authorised_By_Unit(FK)

alter table Job_Termination_Detail 
add CONSTRAINT Fk_Authorised_By_Unit
foreign key (Authorised_By_Unit)
references Unit_Master(Unit_Code);

-- Authirised_By_Code(FK)






--------  Training_Detail  -------------
CREATE TABLE Training_Detail(
Emp_Number NUMBER(6),
SN NUMBER(10),
Training_CD VARCHAR2(6),
From_Date_BS DATE,
From_Date_AD DATE,
To_Date_BS DATE,
To_Date_AD DATE,
Country_CD VARCHAR2(6),
Institute_CD  VARCHAR2(6),
Enter_By VARCHAR2(50),
Enter_Date_AD DATE
);


-- Emp_Number(FK)

alter table Training_Detail 
add CONSTRAINT Fk_TR_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);

-- Training_CD(FK)
alter table Training_Detail 
add CONSTRAINT Fk_Training_CD
foreign key (Training_CD)
references Training_Master(Training_Code);

-- Country_CD(FK)



-- Institute_CD(FK)
alter table Training_Detail 
add CONSTRAINT Fk_Institute_CD
foreign key (Institute_CD)
references Institute_Master(Institute_Code);

  ----------------  Promotion_Detail ---------------------------
  
CREATE TABLE Promotion_Detail(
Emp_Number NUMBER(6), -- FOREGIN KEY
Promo_Date_AD DATE ,
Promo_Date_BS DATE,
Position_Code VARCHAR2(6), -- FOREGINKEY
Promotion_Type VARCHAR2(15),
Order_Date_AD DATE,
Order_Date_BS DATE,
Authorised_By NUMBER(6), -- FOREGIN KEY
Authorised_By_Unit VARCHAR2(6), -- FOREGIN KEY
Enter_By  VARCHAR2(50),   
Enter_Date_AD DATE
);

-- Emp_Number
alter table Promotion_Detail 
add CONSTRAINT Fk_PR_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);

-- Position_Code(FK)



-- Authorised_By(FK)




-- Authorised_By_Unit(FK)
alter table Promotion_Detail 
add CONSTRAINT Fk_PD_Authorised_By_Unit
foreign key (Authorised_By_Unit)
references Unit_Master(Unit_Code);



------------------------------------- Transfer_Detail--------------------
CREATE TABLE Transfer_Detail (
Emp_Number NUMBER(6),
Transfer_Date_AD DATE,
Transfer_Date_BS DATE,
Transfer_Type VARCHAR(15),
Service_Type_Code NUMBER(6),
Transfer_Unit VARCHAR2(6),
Authorised_By VARCHAR2(6),
Authorised_By_Unit  VARCHAR2(6),
Enter_By VARCHAR2(200),
Enter_Date_AD DATE
);

---
-- Emp_Number(FK)

alter table Transfer_Detail 
add CONSTRAINT Fk_TD_Emp_Number
foreign key (Emp_Number)
references Personnel_Detail(Emp_Number);



-- Transfer_Unit(FK)





-- Authorised_By_Unit(FK)

alter table Transfer_Detail 
add CONSTRAINT Fk_TD_Authorised_By_Unit
foreign key (Authorised_By_Unit)
references Unit_Master(Unit_Code);





SELECT* FROM TAB;