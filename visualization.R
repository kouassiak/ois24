# visualization.R
library(ggplot2)
data(mpg, package='ggplot2')
ggplot(mpg, aes(x=displ, y=hwy, color=class)) +
  geom_point() +
  geom_smooth(method='lm') +
  labs(title='Highway Mileage vs Displacement',
       x='Displacement (L)',
       y='Highway Mileage (mpg)',
       color='Car Class')
ggsave('visualization.png')

