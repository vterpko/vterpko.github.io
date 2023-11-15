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

# ===================== MAIN =====================

# 1. install packages
update-apt-packages
install-apt-packages
bootstrap-pip
install-pip-packages
