library(PeriodicTable)
data(periodicTable)
table1 <- data.frame(liczba_atomowa=c(periodicTable$numb),
                     symbol_pierwiastka=c(periodicTable$symb),
                     nazwa_pierwiastka=c(periodicTable$name),
                     izotopy=c(periodicTable$isotopes))
table1<-na.omit(table1)
x<-table1[order(table1$izotopy),]
write.table(x,file="tabela1.txt", sep = " ",
            row.names = TRUE, col.names = TRUE)

table2 <- data.frame(liczba_atomowa=c(periodicTable$numb),
                     nazwa_pierwiastka=c(periodicTable$name),
                     symbol_pierwiastka=c(periodicTable$symb),
                     typ=c(periodicTable$type),
                     gestosc=c(periodicTable$density))
table2<-na.omit(table2)
y<-table2[order(-table2$gestosc),]
write.table(y,file="tabela2.txt", sep = " ",
            row.names = TRUE, col.names = TRUE)

