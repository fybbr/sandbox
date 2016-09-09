for i in mydir_*
do
  d=$(echo $i | cut -d "_" -f 3 | cut -d "." -f 1)
  for f in $(ls $i/logs/FIX_Log/*messages*)
  do
    mv $f $(dirname $f)"/"$d"_"$(basename $f)
  done
done

