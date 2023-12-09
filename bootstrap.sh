#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

if [[ ! -e /usr/local/bin/brew ]]; then
    # chcange source && avoid prompt && quiet install
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sed 's/https:\/\/github.com\/Homebrew\/brew/git:\/\/mirrors.ustc.edu.cn\/brew.git/g' | sed 's/https:\/\/github.com\/Homebrew\/homebrew-core/git:\/\/mirrors.ustc.edu.cn\/homebrew-core.git/g' | sed 's/\"fetch\"/\"fetch\" \"-q\"/g' >> run.sh
    chmod a+x run.sh
    ./run.sh
    rm run.sh

    # Change source
    cd "$(brew --repo)"
    git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

    cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" && git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
else
    echo "You have installed brew"
fi

brew install git

git clone --depth=1 -b ${BRANCH} https://github.com/zhangchunsheng-science/macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap
bash install.sh
