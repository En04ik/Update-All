#!/bin/bash

cd $HOME/Update-All
chmod +x 'update-all'
cp update-all $PREFIX/bin || error "Failed to create command!"
