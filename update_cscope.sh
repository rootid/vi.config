#!/bin/sh

 find . -name *.cpp > cscope.files
 cscope -RUbq

