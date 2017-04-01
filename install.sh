dir=~/dotfiles
files=".bash_profile"

cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."		    
    ln -s $dir/$file ~/$file		
done

source ~/.bash_profile
