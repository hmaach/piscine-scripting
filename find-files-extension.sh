find . -type f -iregex '.*\.txt'   | cut -d / -f 2-   | sed 's/\.txt$//'
