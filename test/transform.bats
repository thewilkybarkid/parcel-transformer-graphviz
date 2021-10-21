#!/usr/bin/env bats

setup() {
  load 'setup'
  run-setup
}

transform-dot-to-svg() { # @test
  run npm --workspace test/project run build

  assert_output --partial 'dist/test.svg'

  run bash -c 'image-size "test/project/dist/test.svg" | strip-ansi'

  assert_output --partial '179x251'
}
