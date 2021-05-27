### Leap Years

##### Requirements:

A simple tool that will tell you whether a year is a leap year, according to the following rules:

• All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)  
• All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)  
• All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)  
• All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)  

Acceptance Criteria
2.4.1 :001 > require './lib/leap_years.rb'  
 => true  
2.4.1 :002 > leap_year?(2000)  
 => true  
2.4.1 :003 > leap_year?(1970)  
 => false  
2.4.1 :004 > leap_year?(1900)  
 => false  
2.4.1 :005 > leap_year?(1988)  
 => true  
2.4.1 :006 > leap_year?(1500)  
 => false  
 ---
Extension Options  
• Write a program that takes a start year and an end year and returns an array of all the leap years between.  

• Write a program that when given a year, will return the closest leap year (this could be before or after the given year)  

---

#### Planning:

```
Leap Years:
• divisible by 400, 4
• not divisible by 100
e.g. 2000, 2004, 2008 and 2012

Not Leap Years:
• divisible by 100
• not divisible by 400
e.g. 1700, 1800, 1900

• not divisible by 4
e.g. 2009, 2010 and 2011
```

##### TDD

tested? |    input      |    output    
--------|---------------|-------------
  y     |   2000        |    true     
  y     |   1700        |    false   
  y     |   2008        |    true     
  y     |   2009        |    false
  y     |   2000, 2010  |    [2000, 2004, 2008]     
  n     |   2000, 2020  |    [2000, 2004, 2008, 2012, 2016, 2020]    
  n     |   1950, 2000  |    [1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980, 1984, 1988, 1992, 1996, 2000, 2004, 2008, 2012, 2016, 2020]    
