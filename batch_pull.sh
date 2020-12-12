# git pull all repos
#
#cd ~/repos
#for dir in $(ls)
#do
#    echo "===$dir==="
#    if [[ "$skip_repos" =~ "$dir" ]]
#    then
#        echo "------skip---"
#        continue
#    fi
#    cd ~/repos
#    echo "------pulling---"
#    cd $dir && git pull && cd ..
#done

# 使用 gitup 批量更新
gitup
