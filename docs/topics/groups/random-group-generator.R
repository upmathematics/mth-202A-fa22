## This script creates randomly generated student groups
## MTH202A - Calculus II - Fall 2022 

# load packages
library(tidyverse)

# student list
students <- c("Nikaela R.",
              "Ryan O.",
              "Nico C.",
              "Evan Y.",
              "Ronnie DS.",
              "Jarod T.",
              "Jonathan N.",
              "Kian C.",
              "Taylor W.",
              "Nathan PF.",
              "Emma P.",
              "Malory M.",
              "Evan Y.")

## groups for week 2 (2022-09-05 to 2022-09-09)

# randomly generated groups with no constraints
set.seed(20220905) # set seed
students_permuted <- sample(students, length(students), replace=FALSE) # randomly permute students
g1 <- paste(students_permuted[1:3], collapse = ", ") # group 1
g2 <- paste(students_permuted[4:6], collapse = ", ") # group 2
g3 <- paste(students_permuted[7:9], collapse = ", ") # group 3
g4 <- paste(students_permuted[10:13], collapse = ", ") # group 3
groups <- tibble(group = c("group 1", "group 2", "group 3","group 4"),
                 members = c(g1,g2,g3,g4))
write_csv(groups,"groups-week2.csv")




