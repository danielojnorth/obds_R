#Add data frame to work with called gene data (path to data frame given in slides)
gene_data <- read.delim("/project/shared/r/1_r_data_science/1-base/coding_gene_region.bed")

# Visualise the data
View(gene_data)

# Return dimensions of the data frame, return the type of data in each column
dim(gene_data)
str(gene_data)

# Define column names for gene_data
colnames (gene_data) <- c("chr", "start", "end", "name", "score", "strand")

# Check column names for gene_data
colnames (gene_data)

# Display the value at row 30, col 3
gene_data[30,3]

# Define a new object 'start_position' which is the column 'start' from the gene_data df
start_position <- gene_data[,"start", drop = FALSE]
#Visualise start_position
View(start_position)

#Make a new column, which represents the length of each gene
gene_data$length <- gene_data$end - gene_data$start

# Check and see if the new column actually exists
View(gene_data)

#Define a new df with all rows from gene_data where gene length is between 100 and 200kb
filtered_gene_data <- gene_data[gene_data$length > 1*10^5 & gene_data$length < 2*10^5,]
View(filtered_gene_data)

#Export  filtered_gene_data as a tsv file, with column names but not row names
write.table(filtered_gene_data, file = "filtered_gene_regions.tsv", sep = "\t", col.names = TRUE, row.names = FALSE)


