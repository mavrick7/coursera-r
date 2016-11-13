pollutantmean <- function(directory, pollutant,id = 1:332){
    all_files<- list.files(path= directory,pattern=".csv",full.names = T)
    values <- numeric()
    for (i in id){
        data <- read.csv(all_files[i])
        values <- c(values,data[[pollutant]])
        
    }
    mean(values, na.rm = T)
}



pollutantmean("C:/Users/Mavrick/Desktop/project/specdata","sulfate")
