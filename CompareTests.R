#We want to run a test comparing different professors to rank them by who would be the best
#to take courses with. 
install.packages("xlsx")
install.packages('dplyr')
library("xlsx")
library("dplyr")


?xlsx
read.xlsx()
Rahn <- read.xlsx(file = "CompareProfessors.xlsx", sheetName = "Sheet2", startRow = 1 )
Milani <- read.xlsx(file = "CompareProfessors.xlsx", sheetName = "Sheet3", startRow = 1, colIndex = 32:39 )
Rahn
Milani

x1<-Rahn%>%filter(Question == "Facilitation")
x2 <- Milani%>%filter(Description.of.course.objectives.and.assignments == "Facilitation of learning")
t.test()
x1
x2
prop.test(Milani$x4.004,49)

qqline(Milani$X4.004, Rahn$E)

#Ranks Significantly Higher on Excelence

t.test(Milani$X4.004, Rahn$E)
t.test(Milani$X3,Rahn$V)
t.test(Milani$X2,Rahn$G)
t.test(Rahn$F, Milani$X1)



t.test(Milani$X1.1, Rahn$P)
chisq.test(x1$(E:P), x2[x0:x1.1])
