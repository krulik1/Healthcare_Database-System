# Healthcare_Database-System
Design, analysis, and implementation of a database system for a hospital.
## Contents:
**0.** Introduction  
**I.** Determination of data classes  
**II.** Modelling Entity Relationships  
**III.** Modelling Relations and Normalizing Data  
**IV.** Implementing the Database Strucutre and Initializing the Database  
**V.** Testing the Database and Demonstration of Sample Data Analysis  

## Introduction
This project is a comprehensive exploration of database management, specifically focusing on a general hospital environment. The project covers various aspects of database management, including data classes determination, entity relationships modelling, relational schema modelling, data normalization, database structure implementation, database initialization, and data analysis demonstration.

## Determination of data classes:
The data classes were determined based on the requirements of a typical hospital environment. The main data classes identified include Person, Patient, Nurse, Employee, Volunteer, Physician, Technician, Outpatient, Resident, CareCentre, Bed, Laboratory, Skill, Test, Treatment, Item, Family, and Visit. These classes were identified based on the various roles, entities, and activities within a hospital environment.

## Modelling Entity Relationships
The entity relationships were modelled using an Enhanced Entity-Relationship (EER) diagram. The EER diagram accurately represents the relationships between the various entities in a hospital environment. For example, a Person can be a Patient, Employee, Volunteer, or Physician. A Patient can be an Outpatient or Resident. A Resident is associated with a Bed in a CareCentre, and so on. The EER diagram also models subtype/supertype relationships, which are crucial in a hospital environment for standardization and organization of information.

## Modelling the Relational Schema and Normalizing Data
The EER diagram was then mapped to a relational schema, transforming the relations into 3rd Normal Form (3NF). This process involved ensuring that each relation has a primary key, eliminating any repeating groups, eliminating any attributes that are dependent on part of the primary key (partial dependencies), and eliminating any attributes that are dependent on other non-key attributes (transitive dependencies).

## Implementing the Database Strucutre and Initializing the Database
The database structure was implemented in PostgreSQL, creating tables that correspond to the relations in the schema. Indexes were created corresponding to the primary and foreign keys to optimize query performance. The tables were then populated with sample data to initialize the database.

## Testing the Database and Demonstration of Sample Data Analysis
The database was tested by running SQL queries to show the content of each table after entering the data. Sample data analysis was demonstrated by creating views to provide summary data about the care centres, such as the number of nurses holding an RN certificate and their total and average salaries. Other views were created to display information for each patient, including patient number, patient name, care centre name, name of nurse-in-charge, treatment ID, treatment name, physician ID, and date. These views were used to answer strategic questions about the hospital environment.

This project demonstrates a comprehensive understanding of database management, from data class determination and entity relationship modelling, to database implementation and data analysis. It provides a solid foundation for managing and analyzing data in a complex environment such as a hospital.



