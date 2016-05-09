dir=~/dotfiles
olddir=~/dotfiles_old
files=".minttyrc .gitconfig .tmux.conf .vimrc .zshrc"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

echo "Moving the existing .config folder to $olddir"
mv ~/.config $olddir
echo "...done"
echo "Moving the new .config folder to ~"
mv $dir/.config ~
echo "...done"

for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$file $olddir
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/$file
done
