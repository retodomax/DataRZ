###########################################################################
## Project:  DataRZ
## Content:  data sets written out
## Date:     2019-02-12 19:22:13
## Author:   Reto Zihlmann <retozihlmann@outlook.com>
###########################################################################



# Data sets of ANOVA (HS 18) ----------------------------------------------

## meat
meat <- data.frame(steak.id = c(1, 6, 7, 12, 5, 3, 10, 9, 2, 8, 4, 11),
                   treatment = rep(c("Commercial", "Vacuum", "Mixed",
                                     "CO2"), each = 3),
                   y = c(7.66, 6.98, 7.80, 5.26, 5.44, 5.80,
                         7.41, 7.33, 7.04, 3.51, 2.91, 3.66))

## snails
snails <- data.frame(density = factor(rep(rep(c(6, 12, 24), each = 3),2)),
                     season = factor(rep(c("Spring", "Summer"), each = 9)),
                     y = c(1.17, 0.50, 1.67, 1.50, 0.83, 1.00, 0.67, 0.67, 0.75,
                           4.00, 3.83, 3.83, 3.33, 2.58, 2.75, 2.54, 1.83, 1.63))

## pine
combinations <- expand.grid(location = c("Taglieda", "Pfyn", "Rheinau"),
                            exposure = c("short", "long", "permanent"))
pine <- data.frame(rbind(combinations, combinations),
                   y = c(25, 45, 50, 42, 62, 52, 62, 80, 88,
                         25, 42, 50, 38, 58,62, 55, 75, 95))



## cheddar
cheddar <- data.frame(R50 = rep(c("no", "yes", "no", "yes"), each = 3),
                      R21 = rep(c("no", "no", "yes", "yes"), each = 3),
                      acids = c(1.697, 1.601, 1.830,
                                2.032, 2.017, 2.409,
                                2.211, 1.673, 1.973,
                                2.091, 2.255, 2.987))

## grasses
grasses <- read.table("http://users.stat.umn.edu/~gary/book/fcdae.data/pr8.6",
                      header = TRUE)
grasses[, "ht"] <- factor(grasses[, "ht"], labels = c("1", "3", "6"))
grasses[, "fert"] <- factor(grasses[, "fert"], labels = c("0", "8", "16", "32"))
grasses[, "int"] <- factor(grasses[, "int"], labels = c("1", "3", "6", "9"))


## animals
animals <- data.frame(weight = c(61, 100, 56, 113, 99, 103, 75, 62,
                                 75, 102, 95, 103, 98, 115, 98, 94,
                                 58, 60, 60, 57, 57, 59, 54, 100,
                                 57, 56, 67, 59, 58, 121, 101, 101,
                                 59, 46, 120, 115, 115, 93, 105, 75),
                      sire = factor(rep(1:5, each = 8)))

## trigly
trigly <- data.frame(y = c(142.3, 144.0, 148.6, 146.9, 142.9, 147.4,
                           133.8, 133.2, 134.9, 146.3, 145.2, 146.3,
                           125.9, 127.6, 108.9, 107.5, 148.6, 156.5,
                           148.6, 153.1, 135.5, 138.9, 132.1, 149.7,
                           152.0, 151.4, 149.7, 152.0, 142.9, 142.3,
                           141.7, 141.2),
                     day = factor(rep(1:4, each = 8)),
                     machine = factor(rep(rep(1:4, each = 2), 2)))

## cheese.data
cheese.data <- read.table("http://stat.ethz.ch/~meier/teaching/data/cheese.dat",
                          header = TRUE)
cheese.data[, "rater"] <- factor(cheese.data[, "rater"])

## dish
dish <- read.table("http://users.stat.umn.edu/~gary/book/fcdae.data/exmpl14.2",
                   skip = 14, header = TRUE,
                   colClasses = c(rep("factor", 2), "numeric"))
dish$session <- factor(dish$session, levels = 1:12) ## change order of levels


## ergoStool
data("ergoStool", package = "nlme")
ergoStool$Subject <- factor(ergoStool$Subject, ordered = FALSE)

## Machines
data("Machines", package = "nlme")
Machines$Worker <- factor(Machines$Worker, ordered = FALSE)

## Unchanged from other packages
data("PlantGrowth")
data("Pastes", package = "lme4")
data("oats", package = "MASS")


# Data sets of Regression (HS18) ------------------------------------------


load("C:/Users/Reto/OneDrive - ETHZ/Dokumente/ETH/Applied Statistical Regression/Ap_Reg/data/unique2010.rda")
apm <- read.delim("https://raw.githubusercontent.com/retodomax/data_archive/master/apm")
baby <- read.csv("C:/Users/Reto/OneDrive - ETHZ/Dokumente/ETH/Applied Statistical Regression/Ap_Reg/data/baby.csv")

## Unchanged from other packages
data("Prestige")
data("Leinhardt")
data("gala", package = "faraway")



# save data sets as files -------------------------------------------------


# save(animals, file="data/animals.RData")
# save(apm, file="data/apm.RData")
# save(baby, file="data/baby.RData")
# save(cheddar, file="data/cheddar.RData")
# save(cheese.data, file="data/cheese.data.RData")
# save(dish, file = "data/dish.RData")
# save(ergoStool, file="data/ergoStool.RData")
# save(grasses, file="data/grasses.RData")
# save(Machines, file="data/Machines.RData")
# save(meat, file="data/meat.RData")
# save(pine, file="data/pine.RData")
# save(snails, file="data/snails.RData")
# save(trigly, file="data/trigly.RData")
# save(unique2010, file="data/unique2010.RData")

### From other packages
# save(Pastes, file="data/Pastes.RData")
# save(oats, file="data/oats.RData")
# save(Prestige, file="data/Prestige.RData")
# save(Leinhardt, file="data/Leinhardt.RData")
# save(gala, file="data/gala.RData")
