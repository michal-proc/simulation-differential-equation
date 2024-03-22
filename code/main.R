source("solution.R")
source("arg_validator.R")

n <- validate_n()

u_x = solution(n)
plot(seq(0, 2, 1/n), 
    mapply(u_x, seq(0, 2, 1/n)),
    main = 'Solution of the heat transport equation',
    xlab='x',
    ylab='u(x)',
    type='l', 
    xlim=c(0, 2),  
    ylim=c(0, 50),  
    col='blue',    
    lwd=2
)
