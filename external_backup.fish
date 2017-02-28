#!/usr/local/bin/fish
if test -d "/Volumes/Seagate Backup Plus Drive"
    echo "Backing up external drive to file server..."
    rsync -Cavze ssh --info=progress2 --exclude=".*" --delete "/Volumes/Seagate Backup Plus Drive" matt@tardis.local:/mnt/raid/MacExternalDriveBackup
else
    echo "Could not find Seagate Backup Plus Drive"
end
