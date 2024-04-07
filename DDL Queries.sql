/*
 Project BAUN 6320 - UTD
*/


/* DROP statements to clean up objects from previous run */
-- Triggers
DROP TRIGGER TRG_BOOKING_INFO;
DROP TRIGGER TRG_CUSTOMER;
DROP TRIGGER TRG_MOVIE;
DROP TRIGGER TRG_THEATER;
DROP TRIGGER TRG_TICKET;
DROP TRIGGER TRG_TICKET_TYPE;

-- Sequences
DROP SEQUENCE SEQ_BOOKING_INFO_BOOKING_ID;
DROP SEQUENCE SEQ_CUSTOMER_CUSTOMER_ID;
DROP SEQUENCE SEQ_MOVIE_MOVIE_ID;
DROP SEQUENCE SEQ_THEATER_THEATER_ID;
DROP SEQUENCE SEQ_TICKET_TICKET_ID;

-- Views
DROP VIEW CUSTOMER_INFO;
DROP VIEW MOVIE_INFO;
DROP VIEW THEATER_INFO;
DROP VIEW TICKET_TYPE_INFO;

-- Indices
DROP INDEX IDX_THEATER_theater_id;

DROP INDEX IDX_MOVIE_movie_id;
DROP INDEX IDX_MOVIE_theater_id_FK;

DROP INDEX IDX_CUSTOMER_customer_id;

DROP INDEX IDX_BOOKING_INFO_booking_id;
DROP INDEX IDX_BOOKING_INFO_customer_id_FK;
DROP INDEX IDX_BOOKING_INFO_price;

DROP INDEX IDX_TICKET_ticket_id;
DROP INDEX IDX_TICKET_movie_id_FK;
DROP INDEX IDX_TICKET_booking_id_FK;

DROP INDEX IDX_TICKET_ticket_type_id_FK;
DROP INDEX IDX_TICKET_TYPE_ticket_type_id;
DROP INDEX IDX_TICKET_TYPE_tier;

-- Tables
DROP TABLE TICKET_TYPE;
DROP TABLE TICKET;
DROP TABLE BOOKING_INFO;
DROP TABLE CUSTOMER;
DROP TABLE MOVIE;
DROP TABLE THEATER;

/* DDL COMMANDS - CREATE TABLES */
CREATE TABLE THEATER 
( 
    theater_id      INTEGER NOT NULL, 
    theater_name    VARCHAR(50) NOT NULL, 
    location        VARCHAR(50) NOT NULL, 
    theater_type    VARCHAR(50) NOT NULL, 
    theater_rating  FLOAT, 
    CONSTRAINT PK_theater_id      PRIMARY KEY (theater_id) 
); 

CREATE TABLE MOVIE
(
    movie_id        INTEGER NOT NULL,
    theater_id      INTEGER NOT NULL,
    movie_name      VARCHAR(100) NOT NULL,
    duration        INTEGER NOT NULL,
    movie_datetime  TIMESTAMP NOT NULL,
    movie_rating    FLOAT,
    CONSTRAINT PK_movie_id      PRIMARY KEY (movie_id),
    CONSTRAINT FK_theater_id    FOREIGN KEY (theater_id) REFERENCES THEATER
);

CREATE TABLE CUSTOMER
(
    customer_id     INTEGER NOT NULL,
    f_name          VARCHAR(100) NOT NULL,
    l_name          VARCHAR(100) NOT NULL,
    phone           VARCHAR(30) NOT NULL,
    email           VARCHAR(30) NOT NULL,
    address         VARCHAR(100) NOT NULL,
    CONSTRAINT PK_customer_id   PRIMARY KEY (customer_id)    
);

CREATE TABLE BOOKING_INFO
(
    booking_id      INTEGER NOT NULL,
    booking_date    DATE NOT NULL,
    timings         TIMESTAMP NOT NULL,
    price           INTEGER NOT NULL,
    no_of_tickets   INTEGER NOT NULL,
    customer_id     INTEGER NOT NULL,
    CONSTRAINT PK_booking_id    PRIMARY KEY (booking_id),
    CONSTRAINT FK_customer_id   FOREIGN KEY (customer_id) REFERENCES CUSTOMER
);

CREATE TABLE TICKET
(
    ticket_id       INTEGER NOT NULL,
    movie_id        INTEGER NOT NULL,
    seat_no         VARCHAR(30) NOT NULL,
    booking_id      INTEGER NOT NULL,
    movie_time      TIMESTAMP NOT NULL,
    movie_date      DATE NOT NULL,
    screen_no       INTEGER NOT NULL,
    ticket_type_id  INTEGER NOT NULL,
    CONSTRAINT PK_ticket_id     PRIMARY KEY (ticket_id),
    CONSTRAINT FK_movie_id      FOREIGN KEY (movie_id) REFERENCES MOVIE,
    CONSTRAINT FK_booking_id    FOREIGN KEY (booking_id) REFERENCES BOOKING_INFO
);

CREATE TABLE TICKET_TYPE
(
    ticket_type_id  INTEGER NOT NULL,
    tier            VARCHAR(30) NOT NULL,
    price           FLOAT NOT NULL,
    perks           VARCHAR(100),
    screen_type     VARCHAR(30) NOT NULL,
    CONSTRAINT PK_ticket_type_id    PRIMARY KEY (ticket_type_id)
);

/* Create indices for natural keys, foreign keys, and frequently-queried columns */
-- THEATER
-- Natural Keys
CREATE INDEX IDX_THEATER_theater_id ON THEATER (theater_id);

-- MOVIE
-- Natural Keys
CREATE INDEX IDX_MOVIE_movie_id ON MOVIE (movie_id);
--  Foreign Keys
CREATE INDEX IDX_MOVIE_theater_id_FK ON MOVIE (theater_id);

-- CUSTOMER
-- Natural Keys
CREATE INDEX IDX_CUSTOMER_customer_id ON CUSTOMER (customer_id);

-- BOOKING_INFO
-- Natural Keys
CREATE INDEX IDX_BOOKING_INFO_booking_id ON BOOKING_INFO (booking_id);
--  Foreign Keys
CREATE INDEX IDX_BOOKING_INFO_customer_id_FK   ON BOOKING_INFO (customer_id);
--  Frequently-queried columns
CREATE INDEX IDX_BOOKING_INFO_price ON BOOKING_INFO (price);

-- TICKET
--  Natural Keys
CREATE INDEX IDX_TICKET_ticket_id  ON TICKET (ticket_id);
--  Foreign Keys
CREATE INDEX IDX_TICKET_movie_id_FK  ON TICKET (movie_id);
CREATE INDEX IDX_TICKET_booking_id_FK  ON TICKET (booking_id);
CREATE INDEX IDX_TICKET_ticket_type_id_FK  ON TICKET (ticket_type_id);

-- TICKET_TYPE
--  Natural Keys
CREATE INDEX IDX_TICKET_TYPE_ticket_type_id ON TICKET_TYPE (ticket_type_id);
--  Frequently-queried columns
CREATE INDEX IDX_TICKET_TYPE_tier       ON TICKET_TYPE (tier);


/* Alter Tables by adding Audit Columns */
ALTER TABLE THEATER ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);

ALTER TABLE MOVIE ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);

ALTER TABLE CUSTOMER ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);

ALTER TABLE BOOKING_INFO ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);

ALTER TABLE TICKET ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);

ALTER TABLE TICKET_TYPE ADD (
    created_by    VARCHAR2(30),
    date_created  DATE,
    modified_by   VARCHAR2(30),
    date_modified DATE
);


/* Create Views */
-- Business purpose: The THEATER_INFO view will be used to fetch information about the rating of the theaters at different locations.
CREATE OR REPLACE VIEW THEATER_INFO AS
SELECT THEATER_ID,THEATER_NAME,LOCATION,THEATER_RATING
FROM THEATER;

-- Business purpose: The MOVIE_INFO view will be used to fetch information about the movie and its performance based on rating
CREATE OR REPLACE VIEW MOVIE_INFO AS
SELECT MOVIE_ID,MOVIE_NAME,DURATION,MOVIE_RATING
FROM MOVIE;

-- Business purpose: The TICKET_TYPE_INFO view will be used to populate a list of all the ticket types and its perks
CREATE OR REPLACE VIEW TICKET_TYPE_INFO AS
SELECT TICKET_TYPE_ID,TIER,PRICE,PERKS
FROM TICKET_TYPE;

-- Business purpose: The CUSTOMER_INFO view will be used to populate a list of all customers and their contact details for promotional purposes
CREATE OR REPLACE VIEW CUSTOMER_INFO AS
SELECT CUSTOMER_ID,F_NAME || ' ' || L_NAME as CUSTOMER_NAME,PHONE,EMAIL,ADDRESS
FROM CUSTOMER;

/*Create Sequences*/
CREATE SEQUENCE SEQ_THEATER_THEATER_ID
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE SEQ_MOVIE_MOVIE_ID
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;

CREATE SEQUENCE SEQ_TICKET_TICKET_ID
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;

CREATE SEQUENCE SEQ_BOOKING_INFO_BOOKING_ID
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;

CREATE SEQUENCE SEQ_CUSTOMER_CUSTOMER_ID
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
/* Create Triggers */
/* Business purpose: The TRG_CUSTOMER trigger automatically assigns a sequential customer ID to a newly-inserted row in the CUSTOMER table,
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_CUSTOMER
    BEFORE INSERT OR UPDATE ON CUSTOMER
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.CUSTOMER_ID IS NULL THEN
                :NEW.CUSTOMER_ID := SEQ_CUSTOMER_CUSTOMER_ID.NEXTVAL;
            END IF;
            IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

/*Business purpose: The TRG_BOOKING_INFO trigger automatically assigns a sequential BOOKING_ID to a newly-inserted row in the BOOKING_INFO table, 
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_BOOKING_INFO
    BEFORE INSERT OR UPDATE ON BOOKING_INFO
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.BOOKING_ID IS NULL THEN
                :NEW.BOOKING_ID := SEQ_BOOKING_INFO_BOOKING_ID.NEXTVAL;
            END IF;
             IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

/*Business purpose: The TRG_MOVIE trigger automatically assigns a sequential MOVIE_ID to a newly-inserted row in the MOVIE table, 
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_MOVIE
    BEFORE INSERT OR UPDATE ON MOVIE
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.MOVIE_ID IS NULL THEN
                :NEW.MOVIE_ID := SEQ_MOVIE_MOVIE_ID.NEXTVAL;
            END IF;
            IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

/*Business purpose: The TRG_THEATER trigger automatically assigns a sequential THEATER_ID to a newly-inserted row in the THEATER table, 
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_THEATER
    BEFORE INSERT OR UPDATE ON THEATER
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.THEATER_ID IS NULL THEN
                :NEW.THEATER_ID := SEQ_THEATER_THEATER_ID.NEXTVAL;
            END IF;
            IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

/*Business purpose: The TRG_TICKET trigger automatically assigns a sequential TICKET_ID to a newly-inserted row in the TICKET table, 
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_TICKET
    BEFORE INSERT OR UPDATE ON TICKET
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.TICKET_ID IS NULL THEN
                :NEW.TICKET_ID := SEQ_TICKET_TICKET_ID.NEXTVAL;
            END IF;
            IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

/*Business purpose: The TRG_TICKET_TYPE trigger automatically assigns a sequential TICKET_TYPE_ID to a newly-inserted row in the TICKET_TYPE table, 
and assigns appropriate values to the created_by and date_created fields. If the record is being inserted or updated, appropriate values are assigned to the modified_by and modified_date fields.*/
CREATE OR REPLACE TRIGGER TRG_TICKET_TYPE
    BEFORE INSERT OR UPDATE ON TICKET_TYPE
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.CREATED_BY IS NULL THEN
                :NEW.CREATED_BY := USER;
            END IF;
            IF :NEW.DATE_CREATED IS NULL THEN
                :NEW.DATE_CREATED := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.MODIFIED_BY := USER;
            :NEW.DATE_MODIFIED := SYSDATE;
        END IF;
END;
/

-- Check the DBMS data dictionary to make sure that all objects have been created successfully
SELECT TABLE_NAME FROM USER_TABLES;

SELECT OBJECT_NAME, STATUS, CREATED, LAST_DDL_TIME FROM USER_OBJECTS;
