# Pewlett-Hackard-Analysis
## Project Overview
After updating their employee CSV files into a new SQL database, upper management at Pewlett-Hackard has realized that a significant part of their work force is set to retire.  Based solely on employees birth dates and expected retirement age, management needs to know how many employees could potentially retire within the next 1 - 3 years, calling this a potential "silver tsunami."  

In addition to this information, Pewlett-Hackard is strongly considering a Mentorship Program with current experienced employees who are not yet at retirement age and can potentially mentor newly hired employees.  Management is wanting a list of current employees that are 10 years from retirement age so they will know to how many to pitch this idea.

Management has requested answers to these 2 questions:
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

## Results

- A list has been created that details the titles of current employees born between the years 1952 - 1955.
![retirement_titles_output](https://user-images.githubusercontent.com/106561880/180626199-7bed7f14-fb19-4667-b29e-130332cb2b1b.png)
- This list was then modified to remove employees' previous titles and only show their most recent title.  
![unique_titles_output](https://user-images.githubusercontent.com/106561880/180626207-048805c9-bf39-4c68-ba4f-c9ac8ecb16f7.png)
- A summation of this data shows a considerable number of employees that are currently within retirement age.
![retiring_titles_output](https://user-images.githubusercontent.com/106561880/180626219-1ed1aa48-1c96-42ee-9e35-a878dd347df5.png)
- A list has been created that shows the employees eligible for the Mentorship Program who were born in the year 1965.
![mentorship_eligibility_output](https://user-images.githubusercontent.com/106561880/180626223-d74b852e-0641-4030-9022-60b50a27652f.png)


## Summary and Recommendations
After analysis of the results, the below are responses to management's questions:
1. There is a total of 72,458 employees born between the years of 1952 and 1955 that are set to retire.  These roles will ultimately need to be back-filled by current employees.

![sum_retirement_titles](https://user-images.githubusercontent.com/106561880/180626229-768245a3-ff0f-4392-b039-a0de75aeb5b9.png)

2. There seems to be significantly less employees born in 1965 that are eligible to mentor employees, compared to the outgoing retirees.  This is also concerning since not all of eligible mentors may want to participate in the program.

![mentorship_title_count](https://user-images.githubusercontent.com/106561880/180626232-170a8419-97aa-4a33-95c5-dc13355c735b.png)

However, this is an incomplete picture.  Additional tables could be created showing a broader range of employees who are within mentoring age and their titles.  This formula could easily be manipulated to include multiple birth years.  Also, a scope of current, younger employees and a count of their titles could also be created to compare the ratio between mentoring employees possible mentorees.  This could also pair mentors with higher titles with mentorees with lower titles.  

*Note: Challenge data files are located in folder "Challenge_Data."*
