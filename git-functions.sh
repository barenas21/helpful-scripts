git_create_branch() {
   default_branch=$(git remote show origin | grep 'HEAD branch' | cut -d':' -f2 | sed -e 's/^[[:space:]]*//')
   git checkout $default_branch
   git pull
   echo -n "Enter your branch name and press [ENTER]: "
   read name
   git checkout -b $name
}