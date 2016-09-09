for i in $(ls logs_2016*)
do
  mkdir "mydir_"$i 2> /dev/null
  tar zxvf $i -C "mydir_"$i logs/FIX_Log
done

