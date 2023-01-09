git filter-branch --parent-filter '
    read parent
    if [ "$parent" = "-p e03de281b38a0aed2f0f219308d47afc9c7174c4" ]
    then
        echo
    else
        echo "$parent"
    fi'
