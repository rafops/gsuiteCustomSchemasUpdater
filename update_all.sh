#!/bin/bash

if ! [ -f "config.json" ] ; then
  echo "config.json not found. Please check README.md"
  exit 1
fi

if ! [ -f "credentials.json" ] ; then
  cat <<EOS

1. Open the following web page and click “Enable the Directory API”:

   https://developers.google.com/admin-sdk/directory/v1/quickstart/python

2. Login as G Suite administrator

3. Click DOWNLOAD CLIENT CONFIGURATION

4. Copy credentials.json to this folder

5. Create and configure `config.json' from `config.json.example`

6. Run ./update_all.sh

EOS
  exit 1
fi

python3 update_all.py
