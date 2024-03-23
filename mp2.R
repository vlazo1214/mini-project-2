# Vincent Lazo
# STA 4163
# Mini project 2, Dataset 1: Wage

setwd("C:\\Users\\Theco\\OneDrive\\Desktop\\school\\stats\\mini-project-2")

# Auxiliary variables:
Wage = read_excel("Wage.xlsx")
df <- data.frame(Wage)
wage_col <- Wage$wage
health_ins_col <- Wage$health_ins

attach(df)


# Shapiro test for normality
# After running the following line, we see that the p-value < 0.05, therefore
# showing proving the population's normality:
shapiro.test(wage_col)


