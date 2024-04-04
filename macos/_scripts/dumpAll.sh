# Loop through all .sh files in the current directory
for file in *.sh; do
    # Check if the file starts with "dump" and is not "dumpAll"
    if [[ $file == dump* && $file != "dumpAll.sh" ]]; then
        # Execute the script
        bash "$file"
    fi
done

echo "All automatically generated dumps have been created."
echo "Dumps that need to be manually created:"
echo "- Vimium C"