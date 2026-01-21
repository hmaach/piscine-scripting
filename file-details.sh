ls -l --time-style='+%Y-%m-%d %H:%M' | sed '1d' | awk '{print $1, $6, $7, $8}' 
