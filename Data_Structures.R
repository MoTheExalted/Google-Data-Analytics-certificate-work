ymd("2021-01-20") #year-month-date, from the lubridate package

mdy("jan 20th, 2021") #lubridate takes any string values and sets it to yyyy-mm-dd

dmy("20 jan, 2021")

# to add time to the date object which would make a date-time object, just add _hms
# or add _hm to ymd or mdy to add the time

mdy_hm("01/20/2021 08:01")

# to convert a date-time object to just a date, 
# use the function as_date which takes date-times as args

# to make a data frame manually, you just make a frame object and pass vectors with a col name
# this is a 2 col table with cols x and y
z <- data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
z[2,1] # returns 2

# Matrices 
# to create a 2x3 (two rows by three columns) matrix containing the values 3-8, 
# enter a vector containing that series of numbers: c(3:8)
# I can specify with nrow or ncol arg to the function so the matrix will be as flexible as I make it

matrix(c(3:8), nrow = 2) #I specified 6 values to be placed in a matrix with at least 2 rows
