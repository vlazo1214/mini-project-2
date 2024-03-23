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
shapiro.test(wage_col)

# Kruskal-Wallis H-test
kruskal.test(wage_col~factor(edu_col),data=df)

# Chi-square Goodness-of-Fit test
counts <- c(17, 16, 67)
probs <- c(.246, .216, .538)

results <- chisq.test(counts, p = probs)
print(results)

# Chi-square test for Independence
status <- matrix(c(77, 19634, 833, 18903), nrow = 2, byrow=TRUE)

dimnames(status) <- list(c("Infection","No Infection"), 
                        c("Vaccine", "Placebo"))

results <- chisq.test(status)
print(results)
