SHOW DATABASES;

DROP DATABASE IF EXISTS dblp_quarter;
 
CREATE DATABASE IF NOT EXISTS dblp_quarter
CHARACTER SET utf8
COLLATE utf8_bin;

USE dblp_quarter;

DROP TABLE IF EXISTS PERSON;
DROP TABLE IF EXISTS AUTHORSHIP;
DROP TABLE IF EXISTS EDITORSHIP;
DROP TABLE IF EXISTS PUBLICATION;
DROP TABLE IF EXISTS ARTICLE;
DROP TABLE IF EXISTS INPROCEEDING;
DROP TABLE IF EXISTS PROCEEDING;
DROP TABLE IF EXISTS BOOK;
DROP TABLE IF EXISTS INCOLLECTION;
DROP TABLE IF EXISTS WWW;
DROP TABLE IF EXISTS MASTERTHESIS;
DROP TABLE IF EXISTS PHDTHESIS;

CREATE TABLE PERSON(
personId		    INT		                ,
personFullName	    VARCHAR(100)	        ,

PRIMARY KEY (personId));

CREATE TABLE AUTHORSHIP(
pubKey				VARCHAR(150)     		,
personFullName		VARCHAR(100)	 		,

PRIMARY KEY (pubKey,personFullName));


CREATE TABLE EDITORSHIP(
pubKey				VARCHAR(150)     		,
personFullName		VARCHAR(100)	 		,

PRIMARY KEY (pubKey,personFullName));


CREATE TABLE PUBLICATION(
pubId		        INT		                ,
pubMdate	    	DATE					,
pubKey				VARCHAR(150)     		,
pubTitle			VARCHAR(1000)	    	,
pubYear				SMALLINT    			,
pubMonth			SMALLINT    			,
pubEE				VARCHAR(200)    		,
pubType            	VARCHAR(50)				,
pubSubType          VARCHAR(50)				,
confName		    VARCHAR(300)		    ,
 
PRIMARY KEY (pubId));


CREATE TABLE ARTICLE(
pubKey				VARCHAR(150)     		,
articleJournal		VARCHAR(200)	    	,
articleVolume		VARCHAR(100)	    	,
articleNumber		VARCHAR(50)    			,
articlePages		VARCHAR(100)    		,
articleUrl		    VARCHAR(200)    		,
articleBooktitle	VARCHAR(400)            ,
articleCrossRef     VARCHAR(300)	    	,

PRIMARY KEY (pubKey));


CREATE TABLE INPROCEEDING(
pubKey				VARCHAR(150)			,
inproBooktitle		VARCHAR(400)    		,
inproPages			VARCHAR(100)	    	,
inproUrl		    VARCHAR(200)    		,
inproCrossRef       VARCHAR(300)	    	,

PRIMARY KEY (pubKey));


CREATE TABLE PROCEEDING(
pubKey				VARCHAR(150)     		,
proceedBooktitle	VARCHAR(400)    		,
proceedVolume		VARCHAR(100)	    	,
proceedSeries		VARCHAR(300)	    	,
proceedPages		VARCHAR(100)	    	,
proceedUrl		    VARCHAR(200)    		,
proceedCrossRef     VARCHAR(300)	    	,

PRIMARY KEY (pubKey));


CREATE TABLE BOOK(
pubKey				VARCHAR(150)			,
bookBooktitle		VARCHAR(400)    		,
bookVolume		    VARCHAR(100)	    	,
bookSeries			VARCHAR(300)	    	,
bookPages			VARCHAR(100)	    	,
bookPublisher       VARCHAR(400)            ,

PRIMARY KEY (pubKey));


CREATE TABLE INCOLLECTION(
pubKey				VARCHAR(150)			,
incolBooktitle		VARCHAR(400)    		,
incolNumber			VARCHAR(50)    			,
incolPages			VARCHAR(100)	    	,
incolUrl		    VARCHAR(200)    		,
incoCrossRef        VARCHAR(300)	    	,

PRIMARY KEY (pubKey));


CREATE TABLE WWW(
pubKey				VARCHAR(150)			,
wwwBooktitle		VARCHAR(400)    		,
wwwUrl		        VARCHAR(200)    		,

PRIMARY KEY (pubKey));


CREATE TABLE MASTERTHESIS(
pubKey				VARCHAR(150)			,
masterthesisSchool	VARCHAR(300)    		,

PRIMARY KEY (pubKey));


CREATE TABLE PHDTHESIS(
pubKey				VARCHAR(150)			,
phdthesisVolume		VARCHAR(100)	    	,
phdthesisSeries		VARCHAR(300)	    	,
phdthesisPages		VARCHAR(100)	    	,
phdthesisSchool	    VARCHAR(300)    		,

PRIMARY KEY (pubKey));

USE dblp_quarter;

LOAD DATA LOCAL INFILE 'csv_quarter/person.csv'
INTO TABLE PERSON
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/authorship.csv'
INTO TABLE AUTHORSHIP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/editorship.csv'
INTO TABLE EDITORSHIP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/publication.csv'
INTO TABLE PUBLICATION
CHARACTER SET latin1
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/article.csv'
INTO TABLE ARTICLE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/inproceeding.csv'
INTO TABLE INPROCEEDING
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/proceeding.csv'
INTO TABLE PROCEEDING
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/book.csv'
INTO TABLE BOOK
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/incollection.csv'
INTO TABLE INCOLLECTION
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/www.csv'
INTO TABLE WWW
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/publication.csv'
INTO TABLE PUBLICATION
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/masterthesis.csv'
INTO TABLE MASTERTHESIS
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'csv_quarter/phdthesis.csv'
INTO TABLE PHDTHESIS
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;