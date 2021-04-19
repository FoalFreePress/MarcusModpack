read -r -p "You are about to delete the data for this world. Are you sure? [Y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    rm -r astralsorcery/ data/ datapacks/ DIM-1/ DIM1/ dimensions/ EnderStorage/ level.dat level.dat_old observerlib/ playerdata/ region/ session.lock
else
    echo "Aborting"
fi
