library(kohonen)
data("wines")
set.seed(7)
plot(wines)
class(wines)
head(wines)
som_map = som(scale(wines), grid=somgrid(2, 2, "hexagonal"))
groups = 3
som.he = cutree(hclust(dist(som_map$codes[[1]])), groups)
print (som.he)
plot(som_map, type = "codes", bgcol = rainbow(groups)[som.he])