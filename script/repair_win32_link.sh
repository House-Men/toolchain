#/bin/bash

repair_link(){
    old_link=$(readlink $1)
    new_link=$(echo $old_link | sed 's/\\/\//g')
    echo file_path = $1
    echo old_link = $old_link
    echo new_link = $new_link
    ln -s -f "$new_link" "$1"
    echo -n -e \\n
    return 0
}

export -f repair_link
find ./ -xtype l -exec bash -c 'repair_link "$0"' {} \;
echo repair all success
exit 0

