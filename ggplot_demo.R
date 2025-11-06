library(tidyverse)
ggplot(data=mpg) 
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, color=class))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, color=class, size=displ))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, shape=class, size=displ))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, color=class, size=displ))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, color=class, size=displ)) + facet_wrap(~ class , nrow = 2)
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y= hwy, color=class, size=displ)) + facet_grid(drv ~  cyl)
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y=hwy, color=class)) + geom_smooth(mapping= aes(x=displ, y=hwy))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y=hwy, color=class)) + geom_smooth(mapping= aes(x=displ, y=hwy, linetype=drv))
ggplot(data=mpg) + geom_point(mapping= aes(x=displ, y=hwy, color=class)) + geom_smooth(mapping= aes(x=displ, y=hwy))
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) + geom_point(mapping= aes(color=class)) + geom_smooth(data=filter(mpg, class=="compact"), se = FALSE )
#Laboratorio
ggplot(data=mpg) + geom_bar(mapping=aes(x=class,fill=class))

ggplot(data=mpg, mapping=aes(x=class)) + geom_bar(mapping=aes(fill=class))
dia<-diamonds
ggplot(data = dia) + geom_bar(mapping = aes(x = cut))
#ovvero
ggplot(data = diamonds) + stat_count(mapping = aes(x = cut))

ggplot(data=dia) + geom_point(mapping=aes(x=color, y=carat))
ggplot(data=dia) + geom_point(mapping=aes(x=carat, y=color,color=color))
ggplot(data=dia) + geom_point(mapping=aes(x=carat, y=color,color=color, size=carat))
ggplot(data=dia) + geom_point(mapping=aes(x=cut, y=color,color=color, size=carat))
ggplot(data=dia) + geom_point(mapping=aes(x=carat, y=color,color=color, size=carat))

ggplot(data=dia) + geom_point(mapping=aes(x=color, y=carat,color=color, size=carat)) + facet_wrap(~ cut , nrow=2 )                            
