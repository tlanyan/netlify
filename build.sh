#!/bin/bash
#author tlanyan<tlanyan@hotmail.com>

sed -i'.b' 's#netlify\.app#github\.io#g' config.toml
rm -rf *.b

sed -i'.b' 's#tlanyan\.netlify\.app#github.com/tlanyan/netlify/raw/main/static#g' content/posts/*.md
rm -rf content/posts/*.b

hugo

cp -r public/* ../tlanyan.github.io/

git checkout .