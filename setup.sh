# ===================== VARIABLES =====================

# 1. install packages
PACKAGES_APT="bash
  git
  python3
  python3-pip
  htop
  make
  screen
  vim
  zip
  unzip"

PACKAGES_PIP="ansible
  http"

# 2. clone git repos
GIT_PULL_REPOS=""

GIT_PUSH_REPOS="https://github.com/vterpko/vterpko.github.io.git
  "

GIT_DIRECTORY='~/git/'

# ===================== FUNCTIONS =====================

# 1. install packages
install_apt_packages() {
    sudo apt update -y && sudo apt dist-upgrade -y
    sudo apt install -y ${PACKAGES_APT}
    sudo apt autoremove -y
}

install_pip_packages() {
    pip install ${PACKAGES_PIP}
}

install_packages() {
  install_apt_packages
  install_pip_packages
}

# 2. clone git repos

clone_git_repos() {
    [ -e ${GIT_DIRECTORY} ] || mkdir ${GIT_DIRECTORY}
    cd ${GIT_DIRECTORY} &&
      for REPO in ${GIT_PULL_REPOS} ${GIT_PUSH_REPOS}; do
        git clone ${REPO}
      done
    cd
}

# ===================== MAIN =====================

# 1. install packages
install_packages

# 2. clone git repos
clone_git_repos