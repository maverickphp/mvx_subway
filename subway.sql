INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_subway', 'subway', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_subway', 'subway', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_subway', 'subway', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('subway', 'subway')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('subway',0,'stagiaire','Stagiaire',20,'{}','{}'),
	('subway',1,'employer','Employee',40,'{}','{}'),
	('subway',2,'chef','Chef',60,'{}','{}'),
	('subway',3,'coboss','Co-Boss',85,'{}','{}'),
	('subway',4,'boss','Boss',100,'{}','{}')
;