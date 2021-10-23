INSERT INTO Location(LocationId,LocationName) VALUES (1,'Noida');
INSERT INTO Location(LocationId,LocationName) VALUES (2,'Hyderabad');
INSERT INTO Location(LocationId,LocationName) VALUES (3,'Chandigarh');
INSERT INTO Location(LocationId,LocationName) VALUES (4,'Pune');
INSERT INTO Location(LocationId,LocationName) VALUES (5,'Mumbai');
INSERT INTO Location(LocationId,LocationName) VALUES (6,'Chennai');
INSERT INTO Location(LocationId,LocationName) VALUES (7,'Bangalore');


INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (1,'Data Analytics');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (2,'Full Stack');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (3,'Quality');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (4,'Operations Management');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (5,'Supply Chain');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (6,'Health Care');
INSERT INTO TechSkillMaster(SkillMasterId,SkillMasterName) values (7,'Programming Skill');


INSERT INTO SOFTSKILLMASTER(SoftSkillMasterId,SoftSkillMasterName) VALUES (1,'Communication');
INSERT INTO SOFTSKILLMASTER(SoftSkillMasterId,SoftSkillMasterName) VALUES (2,'TeamWork');
INSERT INTO SOFTSKILLMASTER(SoftSkillMasterId,SoftSkillMasterName) VALUES (3,'Leadership');
INSERT INTO SOFTSKILLMASTER(SoftSkillMasterId,SoftSkillMasterName) VALUES (4,'Flexible');
INSERT INTO SOFTSKILLMASTER(SoftSkillMasterId,SoftSkillMasterName) VALUES (5,'Adaptability');

INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (1,'confidence',1);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (2,'speaking',1);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (3,'respect',1);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (4,'collaboration',2);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (5,'team oriented',2);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (6,'team leader',2);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (7,'motivation',3);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (8,'leader',3);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (9,'positivity',3);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (10,'new situation',4);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (11,'improvise',4);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (12,'learning',4);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (13,'new skill',5);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (14,'change',5);
INSERT INTO SoftSkillDetail(SoftSkillId,SoftSkillName,SoftSkillMasterId) VALUES (15,'new role',5);