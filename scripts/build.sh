SASSC=$PWD/bin/sassc/bin/sassc
IN_DIR="$PWD/patch"
OUT_DIR="$PWD/dist"
STATIC="$PWD/static"

if [ ! -d $OUT_DIR ]; then
    mkdir $OUT_DIR
fi

files=`ls $IN_DIR/*.scss | grep -v '\_.*$'`
for file in $files; do
    basename=$(basename "$file")
    name=${basename%.*}
    $SASSC "$IN_DIR/$name.scss" "$OUT_DIR/$name.css"    
done

cp $STATIC/* $OUT_DIR/