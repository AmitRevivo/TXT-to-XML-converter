$Directory = Read-Host "Please enter your directory path" #ask user to input path
cd $Directory #Change directory to the user input

Dir -Recurse *.txt | rename-item -newname { [io.path]::ChangeExtension($_.name, "xml") } #Convert every TXT file in the folder to XML file
