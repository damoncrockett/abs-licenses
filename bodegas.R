d = read.csv('osg.csv')

library(ggmap)
location = c(-117.4,32.5,-116.8,33.3)
sd = get_map(location = location, source = "osm")
sdMap = ggmap(sd)
sdMap + geom_point(data = d, aes(x = lon, y = lat), size = 3)

#sdMap + geom_text(data = d, aes(label = business, x = lon+.001, y = lat), hjust = 0)








