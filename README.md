
![logo](pic/logo.png)

# 联信案件评分模型

宁新，王谦谦，DataXujing

## 安装

`devtools::install_github('DataXujing/ICSC')`

## 使用说明

提供了联信案件评分模型的整套流程，包含了相关核心函数，使用样例

```r
library(tidyverse)
library(ICSC)

data <- read_csv('../fenc.csv')
  
data <- data[,c( 'x1','x2','x3','x4', 'x5', 'x6', 'x7','x8','x9','x10','x11','y')]

cutdatx <- CutX(X=data,CutDat=CutDat)

traindat(cutdatx,totalgood,totalbad)


totalgood = as.numeric(table(data$y))[1]
totalbad = as.numeric(table(data$y))[2]

trainWOE <- traindat(cutdatx,totalgood,totalbad)

ScoreCard(cutdatx,trainWOE,p=20/log(2),q=600-20*log(15)/log(2))


```


## 附：Java传入json数据及R传出json数据

JSON(JavaScript Object Notation)需要注意的是R本事不可以直接使用JSON格式的数据，但R中的列表与Python的字典非常相似，可以完成所有类似python字典的操作。

Java灌入json数据后，R通过rjson:fromJSON()转化成R对象
eg. fromJSON('{"a":true,"b":false,"c":null}');toJSON把R对象转化为json.

此外，rlist包也有对json数据的转化，list.parse()函数，list.stack（）函数把list.parse对象转化为数据框；
list.save,list.load把一个list保存成JSON,YMAL,RData,RDas.
如果需要可以通过以上方式交互JSON与R处理对象

