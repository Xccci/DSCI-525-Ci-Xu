library(arrow)
df <- read_parquet("DSCI-525-Ci-Xu/combined_rainfall_models.parquet")

summary(df)
table(df$model)

library(ggplot2)
ggplot(df, aes(x=`rain (mm/day)`)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~model) +
  theme_minimal()
