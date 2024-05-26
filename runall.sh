#run all .sh scripts in the current directory except this one alphabetically

for f in *.sh
do
    if [ "$f" != "$0" ]
    then
        echo "Running $f"   
        bash "$f"
    fi
done