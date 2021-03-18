DROP SCHEMA IF EXISTS YatzyDB CASCADE;
CREATE SCHEMA YatzyDB;
SET search_path = YatzyDB;

CREATE TABLE Spill 
(
	spillID int, 
	PRIMARY KEY (spillID)
);



CREATE TABLE Poeng 
(
	poengID int,
	enere int,
	toere int, 
	trere int, 
	firere int,
	femmere int, 
	seksere int, 
	summ int, 
	bonus int, 
	etPar int, 
	toPar int, 
	treLike int, 
	fireLike int,
	litenStraight int,
	storStraight int, 
	hus int, 
	sjanse int, 
	yatzy int,
	total int, 
	PRIMARY KEY(poengID)
);

CREATE TABLE Spiller 
(
	spillerID int,
	navn VARCHAR(40)
	PRIMARY KEY (spillerID)
	FOREIGN KEY (spillID) REFERENCES Spill (spillID)
	FOREIGN KEY (poengID) REFERENCES Poeng (poengID)
);