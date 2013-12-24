# Get a Facebook Graph API Explorer Access Token
# Go to 'https://developers.facebook.com/tools/explorer', 
# login and click "Get access token"
# Your ID is located first in the output of the Graph Explorer,it's all numbers
# Store your access token here:

me <- "PasteYourFacebookIDHere"
access.token <- "PasteYourAccessTokenHere"

# Step 1: Create functions used by the demo
# This creates the 'facebook' function as described at
# http://romainfrancois.blog.free.fr/index.php?post/2012/01/15/Crawling-facebook-with-R
# and other functions to create initials, etc.
cat("Step 1: Create functions used by the demo","\n")
source("Functions.R")

# Step 2: Run the requirements script
# This installs (if required) and loads the mandatory libaries
cat("Step 2: Run the requirements script","\n")
source("Requirements.R")
# Create a "photos" directory (Warnings ignored so if it 
# already exists it will safely continue)

# Create a "photos" directory or call it as you like it
dir.create( "photos", showWarnings = FALSE )

# Create a directory for the individual's photos
dir.create( paste("photos",individual.id, sep="/"), showWarnings = FALSE )

# Download each of the individuals photos
for (i in 1:length(individual.photos.url)) {
download.file(individual.photos.url[i], individual.photos.file[i])
}
