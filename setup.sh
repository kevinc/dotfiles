cwd=`pwd`

for file in `ls`
do
  if [ $file != "README.md" ]; then
    ln -sfv $cwd/$file $HOME/.$file
  fi
done

echo "Symlinks created!"
