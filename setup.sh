# ===================== VARIABLES =====================

# 1. install packages
DEPENDENCY_PACKAGES_APT="git
  htop
  make
  screen
  vim
  zip
  unzip"

DEPENDENCY_PACKAGES_PIP="ansible"

# 2. clone git repos
GIT_PULL_REPOS="https://github.com/vterpko/vterpko.github.io.git
  "

GIT_PUSH_REPOS=""

GIT_DIRECTORY='~/git/'

# ===================== FUNCTIONS =====================

# 1. install packages
update-apt-packages() {
    apt update -y && apt dist-upgrade -y
}

install-apt-packages() {
    apt install -y ${DEPENDENCY_PACKAGES_APT}
}

bootstrap-pip() {
  python3 -m pip -V ||
    { curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; python3 get-pip.py --user; }
}

install-pip-packages() {
    python3 -m pip install --upgrade --user ${DEPENDENCY_PACKAGES_PIP}
}

install-packages() {
  update-apt-packages
  install-apt-packages
  bootstrap-pip
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