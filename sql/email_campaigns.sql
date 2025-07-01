Tables -

Companies:
Primary Key(Company_Id)
Company_name - Index

Connections:
Primary Key(Connection_Id)
Email_Id - Index
Connection_Name
Phone_Number - Index
Company_Id(Foreign Key to Companies.Company_Id)
Group_Id(Foreign Key to Connection_Groups.Group_Id)

Email_Campaigns:
Primary Key(Email_Campaign_Id)
Email_Campaign_Name - Index
Company_Id(Foreign Key to Companies.Company_Id)

Templates:
Primary Key(Template_Id)
Template_Name - Index

Email_Campaign_Templates:
Email_Campaign_Id(Foreign Key to Email_Campaigns.Email_Campaign_Id)
Template_Id(Foreign Key to Templates.Template_Id)
Primary Key(Email_Campaign_Id, Template_Id)

Email_Campaign_Connections:
Email_Campaign_Id(Foreign Key to Email_Campaigns.Email_Campaign_Id)
Connection_Id(Foreign Key to Connections.Connection_Id)
Campaign_Enabled_Flag
Primary Key(Email_Campaign_Id, Connection_Id)

Connection_Groups:
Primary Key(Group_Id)
Group_Name - Index
Email_Campaign_Id(Foreign Key to Email_Campaigns.Email_Campaign_Id)(can be NULL value)





Foreign Keys -

Connections(Company_Id) refers Companies(Company_Id)
Connections(Group_Id) refers Connection_Groups(Group_Id)
Email_Campaigns(Company_Id) refers Companies(Company_Id)
Email_Campaign_Templates(Email_Campaign_Id) refers Email_Campaigns(Email_Campaign_Id)
Email_Campaign_Templates(Template_Id) refers Templates(Template_Id)
Email_Campaign_Connections(Email_Campaign_Id) refers Email_Campaigns(Email_Campaign_Id)
Email_Campaign_Connections(Connection_Id) refers Connections(Connection_Id)
Connection_Groups(Email_Campaign_Id) refers Email_Campaigns(Email_Campaign_Id)


Cardinality of Relations -
Between Email_Campaigns and Templates -> m:m (Each email campaign must have at least one template)
Between Email_Campaigns and Connections -> m:m (Each email campaign must have at least one connection)

