# ====================================================
#   Chapter 8 Posterior Inference & Prediction
# ====================================================
# Load packages
library(bayesrules)
library(tidyverse)
library(rstan)
library(bayesplot)
library(broom.mixed)
library(janitor)

# Load data
# Museum of Modern Art (MOMA) in New York City
data("moma_sample")

# Di antara sampel artist, terdapat 14 yang merupakan Gen X atau bahkan 
# lebih muda daripada Gen X
# Definisikan Y = jumlah artist yang merupakan Gen X atau bahkan 
# lebih muda daripada Gen X
moma_sample %>% 
  group_by(genx) %>% 
  tally()

# Gunakan framework Beta-Binomial untuk menghitung model posterior
# phi dengan data yang ada.
# Coba dengan prior --> Beta(4,6) dan y = 14
# Plot Posterior sbb:
plot_beta_binomial(alpha = 4, beta = 6, y=14, n=100)

# Common tasks dalam Posterior Analisis adalah
# 1. Estimation
# 2. Uji Hipotesis
# 3. Prediksi

# 1. Estimation
# ==================
# Berapakah estimasi kita untuk phi?
# Apakah model kita mendukung klaim bahwa kurang dari 20% artist merupakan
# Gen X atau lebih muda?
# Jika kita sampel 20 artist, berapa artist kita prediksi merupakan 
# Gen X atau lebih muda?

# GOALS
# ========
# - Establish the theoretical foundations for the three posterior analysis tasks: 
#     estimation, hypothesis testing, and prediction.
# - Explore how Markov chain simulations can be used to approximate posterior 
#     features, and hence be utilized in posterior analysis.

# 8.1 Posterior Estimation
# ==============================
# What best describes your posterior estimate of phi?
# It’s most likely the case that roughly 16% of museum artists are 
#   Gen X or younger, but that figure could plausibly be anywhere 
#   between 9% and 26%.

# 0.025th & 0.975th quantiles of the Beta(18,92) posterior
qbeta(c(0.025, 0.975), 18, 92)
# [1] 0.1009 0.2379

# 0.25th & 0.75th quantiles of the Beta(18,92) posterior
qbeta(c(0.25, 0.75), 18, 92)
# [1] 0.1388 0.1862



