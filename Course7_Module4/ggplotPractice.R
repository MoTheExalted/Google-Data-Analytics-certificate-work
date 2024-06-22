library("ggplot2")
library("palmerpenguins")

#in the ggplot function, you pass the dataset and specify the data you want plotted
#The geom function at the end of the next line determines the graph
ggplot(penguins, aes(x=flipper_length_mm, y=body_mass_g)) + 
  geom_point()

#common geom functions are point, bar, and line
#ggplot allows to stack more than one geom on a plot
ggplot(penguins, aes(x=flipper_length_mm, y=body_mass_g)) + 
  geom_smooth()+
  geom_point()

#when using bar, R autos to counting the rows that a value appears when a Y is not
# explicitly mentioned
#the labs function allows to relabel anything. The syntax is very simple.
#The annotate function allows any annotations on the plot where ever specified
# fill on the bar fills the bars to whatever variable you want
ggplot(diamonds, aes(x=cut, fill=clarity)) +
  labs(title="Count of Diamond Cut and Clarity", x="Cut", y="Count") +
  annotate("text",x='Good',y=20000, label="reminder:diamonds are not important")+
  geom_bar()

#the facet wrap function breaks a ggplot into smaller graphs based on the
#variable passed to it. Use tilde ~ when passing in the variable
ggplot(penguins, aes(x=flipper_length_mm,y=body_mass_g, color=species)) +
  geom_point() +
  facet_wrap(~species)

ggplot(diamonds, aes(x=color, fill=cut)) +
  labs(title="Count of Diamond Cuts", x="Cut", y="Count") +
  geom_bar() +
  facet_wrap(~cut)

# can group a graph based off two variables instead of just one using 
# facet grid. the variable on the left will be the vertical
# the variable on the right will be the horizontal
ggplot(penguins, aes(x=flipper_length_mm,y=body_mass_g, color=species)) +
  geom_point() +
  facet_grid(sex~species)

#geom_jitter is another function of ggplot2 that slightly changes points so that
#they are more readable. You can customize it how you want
