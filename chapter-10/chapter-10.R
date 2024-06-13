# ============================================
#   Chapter 10 Evaluating Regression Models
# ============================================
# Goals:
# -------
# 1. How fair is the model?
# 2. How wrong is the model?
# 3. How accurate are the posterior predictive models?

library(bayesrules)
library(tidyverse)
library(bayesplot)
library(rstanarm)

ggplot(bikes, aes(y=rides, x=temp_feel)) + geom_point(size=0.2) +
  geom_smooth(method = "lm", se=FALSE)

first_set <- head(bike_model_df,1)
first_set
