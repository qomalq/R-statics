setosa = iris[iris$Species == 'setosa',]
setosa[2]
qs = quantile(setosa$Sepal.Width)
iqr = IQR(setosa$Sepal.Width)
iqr
ul = qs[4] + 1.5*iqr
ll = qs[2] - 1.5*iqr
setosa$Sepal.Width[setosa$Sepal.Width > ul | setosa$Sepal.Width < ll]


for (feature_name in colnames(iris)[1:4]) {
    features = setosa[,feature_name]
    qs = quantile(setosa[,feature_name])
    iqr = qs[4] - qs[2]
    ul = qs[4] + 1.5*iqr
    ll = qs[2] - 1.5*iqr
    outliers = features[features>ul|features<ll]
    print(paste('Setosa 품종의', feature_name, '피처의 이상치는',length(outliers),'개 입니다.'))
}

for (species in c('setosa','versicolor','virginica')) {
    for (feature_name in colnames(iris)[1:4]) {
        features = iris[iris$Species ==species,feature_name]
        qs = quantile(setosa[,feature_name])
        iqr = qs[4] - qs[2]
        ul = qs[4] + 1.5*iqr
        ll = qs[2] - 1.5*iqr
        outliers = features[features>ul|features<ll]
        print(paste(species,'품종의', feature_name, '피처의 이상치는',length(outliers),'개 입니다.'))
    }
    
}
boxplot(iris[iris$Species == 'setosa', 'Sepal.Width'])
boxplot(iris[iris$Species == 'setosa', 'Petal.Length'])
boxplot(iris[iris$Species == 'setosa', 'Petal.Width'])

boxplot(iris[iris$Species == 'versicolor', 'Sepal.Width'])
boxplot(iris[iris$Species == 'versicolor', 'Petal.Length'])
boxplot(iris[iris$Species == 'versicolor', 'Petal.Width'])

boxplot(iris[iris$Species == 'virginica', 'Sepal.Width'])
boxplot(iris[iris$Species == 'virginica', 'Petal.Length'])
boxplot(iris[iris$Species == 'virginica', 'Petal.Width'])

