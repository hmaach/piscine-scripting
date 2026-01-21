find . -type f -iregex '.*\.txt'   | cut -d / -f 3-   | sed 's/\.txt$//'
