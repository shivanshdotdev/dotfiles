#!/usr/bin/env bash

# Use rofi to get the search query instantly over your screen
query=$(rofi -dmenu -p "Java 21 Docs Search:")

# If the user didn't type anything, just exit safely
[[ -z "$query" ]] && exit 0

# Encode spaces if there are any
encoded_query=$(echo "$query" | sed 's/ /+/g')

# Launch brave straight to the search results page of the Oracle Docs
# brave "https://www.google.com/search?q=site:docs.oracle.com/en/java/javase/21/+${encoded_query}"

brave --app="https://docs.oracle.com/en/java/javase/21/docs/api/search.html?q=${encoded_query}"

