if [[ -z $DOTFILES_BRANCH ]]; then
  echo "Using dotfiles branch: $DOTFILES_BRANCH"
  git checkout $DOTFILES_BRANCH
fi

sh ./install-dependencies.sh

cwd=`pwd`

for file in `ls`
do
  if [ $file != "README.md" ]; then
    ln -sfv $cwd/$file $HOME/.$file
  fi
done

echo "Symlinks created!"
