#!/usr/bin/env bats

setup () {
    git clean -fdX
    make bundle
}

@test './bundle' {
    run ./bundle
    [ "$output" = "Hello world." ]
    [ "$status" -eq 0 ]
}

@test 'sh bundle' {
    run sh bundle
    [ "$output" = "Hello world." ]
    [ "$status" -eq 0 ]
}

@test 'cat bundle | sh' {
    run sh -c 'cat bundle | sh'
    [ "$output" = "Hello world." ]
    [ "$status" -eq 0 ]
}    
