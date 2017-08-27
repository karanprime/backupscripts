# Back up script for mac
# Author: Karan Shah
# August 2017
# Pass destination directory as argument
# Directory naming: BackupMonthYear (eg BackupAug17)

echo Timestamp
date -u
date -u > $1/timestamp.txt

echo Backing up to $1

brew list > $1/brewlist.txt
echo Brew list copied

pip list > $1/piplist.txt
echo Pip list copied

ls /Applications > $1/applist.txt
echo App list copied


echo If this takes too long, manually go through the folders and delete useless things
echo Backing up Documents
#cp ~/Documents $1/
echo Documents complete!

echo Backing up Desktop
#cp ~/Desktop $1/
echo Desktop complete!

echo Backing up Downloads
cp -R ~/Downloads $1/
echo Downloads complete!

echo You should check other folders \(Pictures, Videos etc\) for things that you might have missed
echo This also does not copy cloud folders
