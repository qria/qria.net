#!/bin/bash

# Get current date, year, and month
DATE=$(date +"%Y-%m-%d")

# Get title from user input
echo "Enter the post title:"
read TITLE

echo "Enter the post slug:"
read SLUG

cat > _posts/$DATE-$SLUG.md <<EOL
---
layout: post
title: "$TITLE"
date: $DATE
---

EOL