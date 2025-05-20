-- #1-6 Basic Select Queries

-- #1
Select *
From Media_Habits;

-- #2
Select User_ID, Age, Gender
From Media_Habits;

-- #3
Select User_ID
From Media_Habits
Where Country = 'USA';

-- #4
Select User_ID
From Media_Habits
Where Age > 30;

-- #5
Select Count(User_ID)
From Media_Habits;

-- #6
Select Distinct Occupation
From Media_Habits;

-- #7-15 Aggregation and Filtering

-- #7
Select AVG(Screen_Time) As Avg_Screen_Time
From Media_Habits;

-- #8
Select User_ID, Daily_Social_Media_Time
From Media_Habits
Where Daily_Social_Media_Time > 3;

-- #9
Select User_ID, Daily_Gaming_Time
From Media_Habits
Order By Daily_Gaming_Time DESC
Limit 5;

-- #10
Select Country, AVG(Internet_Speed)
From Media_Habits
Group By Country;

-- #11
Select Count(User_ID), Marital_Status
From Media_Habits
Where Marital_Status = 'Single' OR Marital_Status = 'Married'
Group By Marital_Status;

-- #12
Select Occupation, Avg(Monthly_Income) As Avg_Monthly_Income
From Media_Habits
Group By Occupation;

-- #13
Select User_ID, Daily_Video_Content_Time
From Media_Habits
Where Daily_Video_Content_Time < 2 AND Primary_Platform = 'Youtube';

-- #14
Select Gender,Sum(Notification_Recieved_Daily)
From Media_Habits
Group By Gender;

-- #15
Select User_ID, Subscription_Platforms
From Media_Habits
Where Subscription_Platforms > 3;


-- #16-21 Advanced Analysis 

-- #16
Select User_ID, Social_Media_Fatigue_Level, Average_Sleep_Time
From Media_Habits
Where Average_Sleep_Time < (Select AVG(Average_Sleep_Time) From Media_Habits)
AND Social_Media_Fatigue_Level > 7;

-- #17
Select User_ID, (Daily_Social_Media_Time + Daily_Entertainment_Time 
+ Daily_Messaging_Time + Daily_Video_Content_Time + Daily_Gaming_Time) 
AS Media_Engagement_Score
From Media_Habits
Order By Media_Engagement_Score DESC
Limit 10;

-- #18
Select Tech_Saviness_Level, Avg(Time_On_Educational_Platforms) As Avg_Education_Time
From Media_Habits
Group By Tech_Saviness_Level
Order By Tech_Saviness_Level;

-- #19
Select Country, Avg(Monthly_Expediture_On_Entertainment) As Avg_Monthly_Expediture
From Media_Habits
Group By Country
Order By Avg_Monthly_Expediture DESC
Limit 3;

-- #20
Select 
	Case
		When Age Between 18 And 25 Then '18-25'
        When Age Between 26 And 35 Then '26-35'
        When Age Between 36 And 45 Then '36-45'
        When Age Between 46 And 60 Then '46-60'
		Else '60+'
	End As Age_Group,
    Avg(Screen_Time) As Avg_Screen_Time, Avg(Social_Isolation_Feeling) As Avg_Iso_Feeling
    From Media_Habits
    Group By Age_Group
    Order By Age_Group;
    
-- #21
Select User_ID, Sleep_Quality, Screen_Time, Social_Isolation_Feeling
From Media_Habits
Where Sleep_Quality < 5 AND Screen_Time > 8 AND Social_Isolation_Feeling > 6;


