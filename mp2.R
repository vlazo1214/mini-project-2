# Vincent Lazo
# STA 4163
# Mini project 2, Dataset 1: Wage

library("readxl")

# Auxiliary variables:
Wage = read_excel("Wage.xlsx")
df <- data.frame(Wage)
wage_col <- Wage$wage
edu_col <- Wage$education

attach(df)


# Shapiro test for normality
# After running the following line, we see that the p-value < 0.05, therefore
# showing proving the population's normality:
shapiro.test(wage_col)

# Kruskal-Wallis H-test
# kruskal.test(len~factor(dose),data=df)
