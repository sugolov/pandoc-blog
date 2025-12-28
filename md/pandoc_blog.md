---
title: Making a blog with Pandoc
author: anton
date: 2024-01-01
---

A blog is only good if it has posts. I've been looking for a way to make posting easy, and in a way so that creating them isn't a total drag. 

## Converting files

We can simply run the following command

```bash
pandoc ~/Documents/obsidian/blog/new.md  -s --mathjax --css=../../../styles.css -B template/nav.html -o blog/posts/new/index.html
```

### math 
```bash
pandoc ~/msc/2024f/mat1850/project/mat1850.tex -s --mathjax -B template/mathjax-config.html --css=../../../styles.css -o blog/posts/latex/index.html
```