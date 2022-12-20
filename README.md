# SQL-Data-Science-Project

This is a data analytics project where I role-play as a data analyst who works for works for a non-profit organization that strives to improve educational outcomes for 
children and youth in the city of Chicago. My job is to analyze the census, crime, and school data for a given neighborhood or district. 

In this project, I identify potential causes that impact the enrollment, safety, health and environment ratings of schools by answering questions relating to a 
real world dataset provided by the Chicago Data Portal. 

Steps to Run the Project:

Note: You must have a local instance of SQL Server already installed on you machine to run the project. You also must have SQL Server Studio Installed. 

1. Download this GitHub folder to your computer as zip file and extract the contents as a folder on your computer
2. Open the MS SQL project file using SQL Server Management Studio
3. Connect your local SQL Server Instance using File (top left of the screen) --> Connect Object Explorer...
  3.1 Server Type: Select Database Engine --> Server Name: Select your local SQL Server instance from the drop-down menu -->
      Authentication: Select Windows Authentication --> Click Connect
4. Run "Create Database" script
5. Run all the "Create Table" scripts. Inside of each "Create Table" script, in the BULK statement, change the absolute paths to the 
    absolute file paths of your local csv files. 
  5.1 To Get the absolute file path of a file : Right click file --> Select properties --> In General Tab, copy the full file path in the "Location:" section
      --> Under BULK statement, locate the FROM 'file_path' statement and replace file_path with the actual file path you just copied.
6. Next run each line in script.sql file one at a time to get the answers to the commented questions




  
