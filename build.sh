#!/bin/bash
#author tlanyan<tlanyan@hotmail.com>

sed -i'.b' 's#netlify\.app#github\.io#g' config.toml
rm -rf *.b

sed -i'.b' 's#tlanyan\.netlify\.app/images#github.com/tlanyan/netlify/raw/main/static/images#g' content/posts/*.md
sed -i'.b' 's#tlanyan\.netlify\.app/posts#tlanyan.github.io/posts#g' content/posts/*.md
rm -rf content/posts/*.b

hugo

cp -r public/* ../tlanyan.github.io/

git checkout .