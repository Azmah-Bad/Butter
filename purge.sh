git filter-branch -f --parent-filter '
    read parent
    if [ "$parent" = "-p 85b2dfab8eb283d7bc08bfbe9116bc6cde62136a" ]
    then
        echo
    else
        echo "$parent"
    fi'
