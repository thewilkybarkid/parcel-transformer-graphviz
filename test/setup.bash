run-setup() {
  _load
  _clean
}

_load() {
  load '../node_modules/bats-support/load'
  load '../node_modules/bats-assert/load'
}

_clean() {
  npm --workspace test/project run clean
}
