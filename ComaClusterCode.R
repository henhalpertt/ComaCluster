library(rgl)

x <- runif(10000, -200, 200)
y <- runif(10000, -200, 200)
z <- runif(10000, -200, 200)
v <- rnorm(10000, 4.64, 0.6 )
n_lim <- 9.0
data_matrix1 <- matrix(c(seq(10,200, by = 10)), nrow = 20, ncol = 2 ) # 20 by 2 matrix. col1: radius of shell;
# col2: number of stars in each shell.
data_matrix1[,2 ] <- 0                                              # set number of stars to zero. 
rad = 0
radii <- c()

s <- c(seq(10,200,10))
for (i in 1:10000){
  
  rad = 0
  rad <- sqrt(x[i]^2 + y[i]^2 + z[i]^2)
  
  radii <- c(radii, rad)
  
  rad = 0
}

length(radii)
my_color <- ifelse(radii<101 & v<4  ,"red", "lightgray") 
the_size <- ifelse(radii<101 & v<4 ,5, 2) 


### Storing the sample stars:
k=0
samstars <- c()
stars_under100pc <- c()

for (k in 1:1e4){
  
  
  if(radii[k] < 101.0 & v[k]<4.0){
    
    samstars <- c(samstars, v[k])
    
  }
  if(radii[k] < 101.0){
    stars_under100pc <- c(stars_under100pc, v[k])
  }
}

stars_under100pc

length(stars_under100pc)

################### Finding number of stars in each annulus:
magshell10 <- c()
magshell1020<- c()
magshell2030<- c()
magshell3040<- c()
magshell4050<- c()
magshell5060<- c()
magshell6070<- c()
magshell7080<- c()
magshell8090<- c()
magshell90100<- c()
magshell100110<- c()
magshell110120<- c()
magshell120130<- c()
magshell130140<- c()
magshell140150<- c()
magshell150160<- c()
magshell160170<- c()
magshell170180<- c()
magshell180190<- c()
magshell190200<- c()

for (item in 1:10000){
  if (radii[item] <= 10){
    
    data_matrix1[1,2] <- data_matrix1[1,2] + 1
    if(v[item] < 4.0){
      magshell10 <- c(magshell10, v[item])
    }
    
    
  }
  
  if (radii[item] < 20 & radii[item] > 10){
    
    data_matrix1[2,2] <- data_matrix1[2,2] + 1
    if(v[item] < 4.0){
      magshell1020 <- c(magshell1020, v[item])
    }
    
  }
  
  if (radii[item] < 30 & radii[item] > 20){
    
    
    data_matrix1[3,2] <- data_matrix1[3,2] + 1
    if(v[item] < 4.0){
      magshell2030 <- c(magshell2030, v[item])
    }
  }
  
  if (radii[item] < 40 & radii[item] > 30){
    
    data_matrix1[4,2] <- data_matrix1[4,2] + 1
    if(v[item] < 4.0){
      magshell3040 <- c(magshell3040, v[item])
    }
    
  }
  
  if (radii[item] < 50 & radii[item] > 40){
    
    data_matrix1[5,2] <- data_matrix1[5,2] + 1
    if(v[item] < 4.0){
      magshell4050 <- c(magshell4050, v[item])
    }
  }
  
  if (radii[item] < 60 & radii[item] > 50){
    
    data_matrix1[6,2] <- data_matrix1[6,2] + 1
    if(v[item] < 4.0){
      magshell5060 <- c(magshell5060, v[item])
    }
  }
  
  if (radii[item] < 70 & radii[item] > 60){
    
    data_matrix1[7,2] <- data_matrix1[7,2] + 1
    if(v[item] < 4.0){
      magshell6070 <- c(magshell6070, v[item])
    }
  }
  
  if (radii[item] < 80 & radii[item] > 70){
    
    data_matrix1[8,2] <- data_matrix1[8,2] + 1
    if(v[item] < 4.0){
      magshell7080 <- c(magshell7080, v[item])
    }
  }
  
  if (radii[item] < 90 & radii[item] > 80){
    
    data_matrix1[9,2] <- data_matrix1[9,2] + 1
    if(v[item] < 4.0){
      magshell8090 <- c(magshell8090, v[item])
    }
  }
  
  if (radii[item] < 100 & radii[item] > 90){
    
    data_matrix1[10,2] <- data_matrix1[10,2] + 1
    if(v[item] < 4.0){
      magshell90100 <- c(magshell90100, v[item])
    }
  }
  
  if (radii[item] < 110 & radii[item] > 100){
    
    data_matrix1[11,2] <- data_matrix1[11,2] + 1
    if(v[item] < 4.0){
      magshell100110 <- c(magshell100110, v[item])
    }
  }
  
  if (radii[item] < 120 & radii[item] > 110){
    
    data_matrix1[12,2] <- data_matrix1[12,2] + 1
    if(v[item] < 4.0){
      
      magshell110120 <- c(magshell110120, v[item])
    }
  }
  
  if (radii[item] < 130 & radii[item] > 120){
    
    data_matrix1[13,2] <- data_matrix1[13,2] + 1
    if(v[item] < 4.0){
      magshell120130 <- c(magshell120130, v[item])
    }
  }
  
  if (radii[item] < 140 & radii[item] > 130){
    
    data_matrix1[14,2] <- data_matrix1[14,2] + 1
    if(v[item] < 4.0){
      magshell130140 <- c(magshell130140, v[item])
    }
  }
  
  if (radii[item] < 150 & radii[item] > 140){
    
    data_matrix1[15,2] <- data_matrix1[15,2] + 1
    if(v[item] < 4.0){
      magshell140150 <- c(magshell140150, v[item])
    }
  }
  
  if (radii[item] < 160 & radii[item] > 150){
    
    data_matrix1[16,2] <- data_matrix1[16,2] + 1
    if(v[item] < 4.0){
      magshell150160 <- c(magshell150160, v[item])
    }
  }
  
  if (radii[item] < 170 & radii[item] > 160){
    
    data_matrix1[17,2] <- data_matrix1[17,2] + 1
    if(v[item] < 4.0){
      magshell160170 <- c(magshell160170, v[item])
    }
  }
  
  if (radii[item] < 180 & radii[item] > 170){
    
    data_matrix1[18,2] <- data_matrix1[18,2] + 1
    if(v[item] < 4.0){
      magshell170180 <- c(magshell170180, v[item])
    }
  }
  
  if (radii[item] < 190 & radii[item] > 180){
    
    data_matrix1[19,2] <- data_matrix1[19,2] + 1
    if(v[item] < 4.0){
      magshell180190 <- c(magshell180190, v[item])
    }
  }
  
  if (radii[item] < 200 & radii[item] > 190){
    
    data_matrix1[20,2] <- data_matrix1[20,2] + 1
    if(v[item] < 4.0){
      magshell190200 <- c(magshell190200, v[item])
    }
  }
}

Volum <- c()
for (k in 0:18){
  
  vol_shell <- (4/3)*pi * (data_matrix1[20-k,1]^2 - data_matrix1[19-k,1]^2)
  Volum <- c(Volum, vol_shell)
  
}
v_first_shell <- (4/3)*pi * (10^2)
Volum <- c(Volum, v_first_shell)
Volum
k = 0 
Volum <- sort(Volum)

n <- c()
k = 0
for (k in 1:20){
  
  n_ea_shell <- data_matrix1[k,2] / Volum[k]
  n <- c(n, n_ea_shell)
  
}
k = 0 
Density_each_shell <- c()
for (k in 1:20){
  
  den_ea_shell <- n[k] * data_matrix1[k,2] * 1.989e30
  Density_each_shell <- c(Density_each_shell, den_ea_shell)
  
}
min(log10(s))
############ plot Density_each_shell vs distance(a):

par(mfrow=c(1,1))
par(bg = 'gray36')
plot(log10(Density_each_shell) ~ log10(s), pch = 19, col = 'white', type = 'p',
     ylab = 'log(Density of each shell)', xlab = 'log(Distance)', main = 'Log(Density of Annulus) vs Log(Distance)' )


###################### PART C
h <- hist(v, col = 'darkgray', prob = 1, main = "prob. density vs absolute magnitude: 10,000 stars", xlab = 'Abs. magnitude')
xfit <- seq(min(v), max(v), length=100)
yfit <-dnorm(xfit, mean=4.64, sd = 0.6 )

lines(xfit, yfit, col="blue", lwd=2)

########################## PART D : gaussian of only sample stars:
par(mfrow=c(1,1))
hist(samstars, prob = 1, col = 'darkgray' ,main = "probability density vs magnitude of observational sample - 120 stars", xlab = "Abs. Mag")
xfitstarsunder100 <- seq(min(samstars), max(samstars), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

length(samstars)

hist(stars_under100pc, prob = 1, col = 'darkgray')
xfitstarsunder100 <- seq(min(stars_under100pc), max(stars_under100pc), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

## For each Shell: Oh god...

par(mfrow=c(4,5))
par(bg = 'gray98')


hist(magshell10, prob = 1, , xlab = 'magnitude-rad<10pc', ylab = 'probability',main = " prob. vs mag")


hist(magshell1020, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus1', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell1020-2), max(magshell1020+2), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell2030, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus2', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell2030-2), max(magshell2030+2), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell3040, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus3', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell3040-2), max(magshell3040+2), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell4050, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus4', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell4050-2), max(magshell4050+2), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell5060, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus5', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell5060), max(magshell5060), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell6070, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus6', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell6070), max(magshell6070), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell7080, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus7', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell7080), max(magshell7080), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell8090, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus8', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell8090), max(magshell8090), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell90100, prob = 1, col = 'darkgray', xlab = 'magnitude-Shell9', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell90100), max(magshell90100), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell100110, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus10', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell100110), max(magshell100110), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell110120, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus11', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell110120), max(magshell110120), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell120130, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus12', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell120130), max(magshell120130), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell130140, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus13', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell130140), max(magshell130140), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell140150, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus14', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell140150), max(magshell140150), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell150160, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus15', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell150160), max(magshell150160), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell160170, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus16', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell160170), max(magshell160170), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell170180, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus17', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell170180), max(magshell170180), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell180190, prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus18', ylab = 'probability',main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell180190), max(magshell180190), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

hist(magshell190200,prob = 1, col = 'darkgray', xlab = 'magnitude-Annulus19', ylab = 'probability', main = " prob. vs mag")
xfitstarsunder100 <- seq(min(magshell190200), max(magshell190200), length=100)
yfitstarsunder100 <-dnorm(xfitstarsunder100, mean=4.64, sd = 0.6 )
lines(xfitstarsunder100, yfitstarsunder100, col="red", lwd=2)

#bg3d("grey15")
rgl.open()

rgl.open()
#rgl.bg(color = "gray44")
plot3d(
  x, y, z, 
  type = 's', 
  radius = the_size,
  xlab="x", ylab="y", zlab="z",
  grid = 'true', box = F, col = my_color )
rgl.bbox(xlen = 1 , ylen = 1, zlen = 1, color = c('grey4')) # change box color/ axes
#text3d(x = xvar, y = yvar, z = zvar, text = brands, adj = c(2.5,2.5), cex = 0.7) # add text to pts
title3d(main = 'TEST', )
points3d(0,0,0, col = 'yellow', size = 15 )

Like <- function(alpha,beta){
  L <-  matrix(0, nrow=length(alpha), ncol=length(beta))
  for (i in 1:length(alpha)){
    for(j in 1:length(beta)){
      L[i,j] <- (alpha[i]^76) * (1-alpha[i])^24 * (beta[j])^74 * (1-beta[j])^26
    }
  }
  return(L)
}


