read -r -p "You are about to delete the data for this world. Are you sure? [Y/n] " response
if [[ "$response" =~ ^([Y])$ ]]
then
    cd /home/minecraft/servers/MarcusModpack/world
    rm -rv advancements/ astralsorcery/ data/ datapacks/ deaths/ DIM-1/ DIM1/ dimensions/ EnderStorage/ level.dat level.dat_old minecolonies/ observerlib/ playerdata/ poi/ region/ session.lock stats/ structurize/ touchfile
else
    echo "Aborting"
fi
