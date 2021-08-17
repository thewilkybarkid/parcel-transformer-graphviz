run-setup() {
  _load
  _install
  _clean
}

_load() {
  load '../node_modules/bats-support/load'
  load '../node_modules/bats-assert/load'
}

_install() {
  if [ ! -d test/project/node_modules ]; then
    npm --prefix test/project ci
  fi
}

_clean() {
  npm --prefix test/project run clean
}
