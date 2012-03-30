#!bash
#this is for ctags


#  UnixNewline       = chr(0x0a)

function createRecursiveTag(){
   
   curDir=`pwd`
   cd "$1"
   echo createtag in "$1"
   ctags * 
   find * -type d -prune -print0 | xargs -0 ctags -aR --file-scope=no -L-
   cd $curDir

}

function createFlatTag(){
  
   curDir=`pwd`
   echo createtag in "$1"
   cd "$1"
   ctags *
   cd $curDir

}

function traverseDir(){
  local curDir
  curDir=`pwd`
  cd "$1" 
  echo traverseDir in `pwd`
  for sub in `ls -m .`; do #with -m , the entries will be seperated by ','
    sub=$(sed -e 's/^[[:space:]]*//' <<< "$sub")
    if [ -d "$sub" ]; then
      traverseDir "$sub"
    fi
  done
  echo cd $curDir
  cd "$curDir"
  createFlatTag "$1" 
}
OldIFS=$IFS
IFS=','
traverseDir "$1"
IFS=$OldIFS
