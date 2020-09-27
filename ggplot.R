#  Objectif :
#   Créez des graphiques en utilisant ggplot2. Ne vous inquiétez pas si vos
# graphiques ne correspondent pas exactement à ce qui est présenté cidessous.
# 1. Pour les premiers graphes, utilisez le jeu de données mpg

library(ggplot2)
library(ggthemes)
head(mpg)


# 2. Histogramme des valeurs hwy mpg:
ggplot(mpg,aes(x=hwy)) + geom_histogram(bins=20,fill='red',alpha=0.5)

# 3. Diagramme à barres du nombre de voitures par fabricant avec un remplissage de couleur défini par le nombre de cylindres

ggplot(mpg, aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl))) + theme_gdocs()


# 4. Basculez maintenant pour utiliser le jeu de données txhousing fourni avec ggplot2

head(txhousing)

# 5. Créez un diagramme de dispersion du volume par rapport aux ventes. Ensuite, jouez avec les arguments alpha et color pour clarifier les informations. 

pl <- ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(color='blue',alpha=0.5) 

print(pl)

# 6. Ajoutez une ligne de lissage au nuage de points par le haut. Astuce: Vous devrez peut-être chercher geom_smooth () 

pl + geom_smooth(color='red')