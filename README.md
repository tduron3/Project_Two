# Project_Two #

## UTSA Data Analytics Bootcamp

For this project, we have selected to use fatal police shootings in the US data obtained from https://www.kaggle.com/kwullum/fatal-police-shootings-in-the-us?select=PoliceKillingsUS.csv 

### We will begin with the following two files: ###

1. PoliceKillingsUS Fields / Columns: 
		[+]ID
		[+]name
		[+]date
		[+]manner_of_death
		[+]armed
		[+]age
		[+]gender
		[+]race
		[+]city
		[+]state
		[+]signs_of_mental_illness
		[+]threat_level
		[+]flee
		[+]body_camera

2. ShareRaceByCity Fields / Columns: 
		[+]Geographic area: State Abbreviated
		[+]City: City with annotation of CDP, city or town
		[+]Sharewhite: The percentage of the city's population that is white 
		[+]Shareblack: Percentage of the city's population that is black
		[+]Sharenativeamerican: Percentage of the city's population that is native american
		[+]Shareasian: Percentage of the city's population that is asian
		[+]Sharehispanic: Percentage of the city's population that is hispanic


Conducted a read of the police csv file and a read of the race csv file


We then transformed the police data, filtering down only down to the following columns: 
[+]name
[+]manner_of_death
[+]gender
[+]race
[+]city
[+]state

And then renamed columns to: 
[+]Name
[+]Manner_of_Death
[+]Gender
[+]Race
[+]City
[+]State 

We then transformed the race data by filtering down to only the following columns: 

[+]Geographic area
[+]City
[+]share_white
[+]share_black
[+]share_native_american
[+]share_asian
[+]share_hispanic

And renaming the columns to:

[+]’Geographic area':'State'
[+]'share_white':'Percent_White' 
[+]'share_black':'Percent_Black' 
[+]'share_native_american':'Percent_Nat_Amer'
[+]'share_asian':'Percent_Asian'
[+]'share_hispanic':'Percent_Hispanic'

In race data, we dropped the rows with no data (e.g AK, Flat CDP, (X), (X), (X), (X), (X)), resulting in the removal of 20 rows.

Create the database connection and set the engine.

Confirmed the tables appearing in the engine match our dataframes

And load into CSV.

If we had more time, we would have further cleansed our city data to remove text at the suffix which further described the locations as a city, CDP or town. We attempted the following but were unsuccessful: 
[+]df.drop(df.index[df[City] == CDP], inplace = True)
[+]data['Cityt'] = data['Cityt'].map(lambda x: x.lstrip('CDP')










