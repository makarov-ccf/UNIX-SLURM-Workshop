args = commandArgs(trailingOnly=TRUE)

base=args[1]
task_id=as.numeric(args[2])
listfile=args[3]

setwd(base)
lines<-scan(file=listfile, what="character")

n <- 100 * task_id

##### rnorm function is used to generate N random numbers whose distribution is normal. 

y <- rnorm(n)

### Give the chart file a name.
### Make pdf directory 
dir.create('pdf', showWarnings = FALSE, recursive = TRUE, mode = "0755")
fout<-paste('pdf/rnorm_', task_id, '.pdf', sep='')
pdf(file = fout)
# Plot the histogram.
hist(y, main = paste("Normal DIstribution", task_id, lines[task_id] ) )

# Save the file.
dev.off()
