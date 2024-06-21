# ids
id <- c(1:10) 

#names for associated ids
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

#titles for associated names
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)

#name is originally one column, this makes two columns out of the name. 
employee <- separate(employee, name, into = c('first_name','last_name'), sep=' ')

employee

#recombine the newly created columns
employee <- unite(employee, 'name', first_name,last_name, sep=' ')

employee

# The body mass is in g, Lets convert to kgs
# Lets also convert the flipper length to m instead of mm
penguins <- penguins %>% 
  mutate(body_mass_g=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)

view(penguins)
