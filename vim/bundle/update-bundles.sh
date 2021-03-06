dir=`pwd`
for f in `find $dir -d 1 -type d -not -name '.*'`
do
  echo "Updating $f"
  cd $f
  git checkout master && git fetch && git pull origin master
  cd $dir
done
