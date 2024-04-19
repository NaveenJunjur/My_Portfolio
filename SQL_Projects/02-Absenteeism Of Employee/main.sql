-- Creating a join table
use work
go

select * from [dbo].[Absenteeism_at_work]

select * from Absenteeism_at_work a 
left join [dbo].[compensation] b          --Ignore errors
on a.ID = b.ID                            --Ignore errors
left join [dbo].[Reasons] r               --Ignore errors
on a.Reason_for_absence = r.Number;       --Ignore errors

-- Find the healthiest employees for the bonus
select * from Absenteeism_at_work
where Social_drinker = 0 
  and Social_smoker = 0
  and Body_mass_index < 25
  and Absenteeism_time_in_hours < (select avg(Absenteeism_time_in_hours) from Absenteeism_at_work)

-- Compensation rate increase for non-smokers --> budget $983,221 so for 686 employees increase rate is by 0.68 per hour
select count(*) as nonsmokers from Absenteeism_at_work
where Social_smoker = 0

-- Optimize Query
select 
	a.ID,																	-- here to
	r.Reason,																 
	Month_of_absence,														 
	Body_mass_index,														
	case																	 
		when Body_mass_index < 18.5 then 'Under Weight'						 
		when Body_mass_index between 18.5 and 25 then 'Healthy'				 
		when Body_mass_index between 25 and 30 then 'Over Weight'			 
		when Body_mass_index > 30 then 'Obess'								 
		else 'Unknown'														
	end as BMI_Category,
	case
		when Month_of_absence in (12,1,2) then 'winter'
		when Month_of_absence in (3,4,5) then 'Spring'
		when Month_of_absence in (6,7,8) then 'Summer'
		when Month_of_absence in (9,10,11) then 'Fall'
		else 'Unknown'
	end as Season_Names,
	Month_of_absence,
	Day_of_the_week,
	Transportation_expense,
	Education,
	Son,
	Social_drinker,
	Social_smoker,
	Pet,
	Disciplinary_failure,
	Age,
	Work_load_Average_day,
	Absenteeism_time_in_hours									-- here these all are columns to display
from Absenteeism_at_work a 
left join [dbo].[compensation] b          -- Ignore errors
on a.ID = b.ID                            -- Ignore errors
left join [dbo].[Reasons] r               -- Ignore errors
on a.Reason_for_absence = r.Number;
