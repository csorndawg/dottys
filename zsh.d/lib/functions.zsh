## RSYNC Helpers
## EXAMPLE USEAGE: RSYCING FROM CYGWIN TO ROCKY
#   >> $(rsdd) $RSYNC_LOCAL_SOURCE_DIR/temp csorndawg:$RSYNC_ROCKY_TARG_DIR

## rsync dir - dryrun
rsdd (){
    rsync --dry-run -azvphr $1 $2
}
## rsync dir - execute
rsdx(){
    rsync -azvphr $1 $2
}
## rsync file - dryrun
rsfd (){
    rsync --dry-run -azvph $1 $2
}
## rsync file - execute
rsfx(){
    rsync -azvphr $1 $2
}


