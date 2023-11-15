# ===================== VARIABLES =====================

# 1. install packages
PACKAGES_APT="git
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
install-apt-packages() {
    apt update -y && apt dist-upgrade -y
    apt install -y ${PACKAGES_APT}
}

install-pip-packages() {
    pip install ${PACKAGES_PIP}
}

install-packages() {
  install-apt-packages
  install-pip-packages
}

# 2. clone git repos

clone-git-repos() {
    [[ -e ${GIT_DIRECTORY} ]] || mkdir ${GIT_DIRECTORY}
    cd ${GIT_DIRECTORY} &&
      for REPO in ${GIT_PULL_REPOS} ${GIT_PUSH_REPOS}; do
        git clone ${REPO}
      done
    cd
}

# ===================== MAIN =====================

# 1. install packages
install-packages

# 2. clone git repos
clone-git-repos