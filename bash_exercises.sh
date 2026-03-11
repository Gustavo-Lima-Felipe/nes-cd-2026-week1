#!/bin/bash

# Exercício 1
count_files() {
    dir="$1"
    ls -1 "$dir" | wc -l
}

# Exercício 2
largest_file() {
    dir="$1"
    ls -S "$dir" | head -n 1
}

# Exercício 3
count_lines() {
    file="$1"
    wc -l < "$file"
}

# Exercício 4
search_word() {
    file="$1"
    word="$2"
    grep -o "$word" "$file" | wc -l
}

# Exercício 5
line_ranking() {
    dir="$1"

    for file in "$dir"/*; do
        if [ -f "$file" ]; then
            lines=$(wc -l < "$file")
            echo "$lines $file"
        fi
    done | sort -nr
}