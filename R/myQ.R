`myQ` <-
function (w = 4, h = 4, mr = c(5, 4, 0.5, 1.5)) 
{
    quartz(width = w, height = h)
    par(mar = mr)
}
