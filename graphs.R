xvalues <- c(8.3,9.1,9.9,10.6,11,11.7)
yvalues <- c(0.0021621,0.0023782,0.0025967,0.0027898,0.0029011,0.0030971)
pdf("wykres1.pdf")
plot(xvalues,yvalues,xlab = "Nat�enie pr�du[A]", ylab = "Indukcja magnetyczna[T]")
model <- nls(yvalues ~ b1*xvalues+b2,start = list(b1 = 1,b2 = 3))
new.data <- data.frame(xvalues = seq(min(xvalues),max(xvalues),len = 100))
lines(new.data$xvalues,predict(model,newdata = new.data))
dev.off()

# wykres zale�no�ci indukcji magnetycznej od nat�enia pr�du przy sta�ym napi�ciu 130V.
# Dane z do�wiadczenia przeprowadzonego na zaj�ciach fizyki do�wiadczalnej. 


xvalues <- c(0.03, 0.07, 0.10, 0.14,0.17, 0.20, 0.24,0.28)
yvalues <- c(0.1494,0.2988,0.4482,0.5976,0.747,0.8964,1.0458,1.1952)
pdf("wykres2.pdf")
plot(xvalues,yvalues,xlab = "masa obci��enia[g]", ylab = "wychylenie belki[m]")
model <- nls(yvalues ~ b1*xvalues+b2,start = list(b1 = 1,b2 = 3))
new.data <- data.frame(xvalues = seq(min(xvalues),max(xvalues),len = 100))
lines(new.data$xvalues,predict(model,newdata = new.data))
dev.off()

# wykres zale�no�ci obci��enia od wychylenia belki 
#dane z doswiadczenia przeprowadzonego na zajeciach fizyki do�wiadczalnej.


library("COVID19")
w<-covid19(
  country = "Poland",
  level = 1,
  start = "2020-02-15",
  end = "2020-04-01",
  raw = FALSE,
  vintage = FALSE,
  verbose = TRUE,
  cache = TRUE,
  wb = NULL,
  gmr = NULL,
  amr = NULL
)
yy<-w$confirmed
xx<-seq(1,47)
pdf("wykres3.pdf")
plot(x = xx, y = yy,xlab = "data", ylab = "confirmed", col = "red")
model <- nls(yy ~ 2^(xx*b1),start = list(b1 = 1))
new.data <- data.frame(xvalues = seq(min(xx),max(xx),len = 47))
lines(xx ,predict(model,newdata = new.data))
dev.off() 

# wykres potwierdzonych zara�e� koronawirusem od czasu korzystaj�c z pakietu COVID19
# Nie wiem jak zmieni� o� X, poniewa� je�li na osi X jest data to nie mo�na wyliczy� dopasowania krzywej.

