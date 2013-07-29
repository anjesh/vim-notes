vim-notes
===========

A simple vim plugin that helps to write notes in your predefined folder and later you can retrieve it via vim interface itself. It should help you to organize your articles/notes in one place using your vim editor. This plugin is inspired from https://github.com/dwcook/Vim-Journal which i use to write my daily journals. With vim-notes, you can now write articles in your favorite editor (assuming it's vim :) and then later retrieve it using auto-completion feature of vim plugin.

Installation
============

Copy `notes.vim` into your vim plugins directory. By default, your notes will be stored in `~/.notes` directory. You may override it in your `.vimrc` by adding the line

    let g:NOTES_DIR = "desired_directory"

Usage
=====

Run `Note` command followed by title of your article. You may use spaces in your title as well, `notes.vim` will replace space with dash `(-)` and create the file in your notes folder. And later you may just use tab to browse through the list of created files in your notes folder and select the one you want to work with. 

Happy writing. 
