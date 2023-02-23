# Load the "ape" package for phylogenetic analysis
library(ape)

# Read in the distance matrix (replace "dist_matrix.csv" with the name of your file)
dist_matrix <- read.csv("dist_matrix.csv", row.names = 1)

# Construct the neighbor-joining tree
nj_tree <- nj(dist_matrix)

# Plot the tree
plot(nj_tree)
