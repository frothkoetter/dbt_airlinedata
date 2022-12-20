# dbt_airlinedata

## Prerequisits

Python >= 3.8
dbt-core >= 1.3.0
git

## Install

Start by cloning this repo

git clone https://github.com/frothkoetter/dbt_airlinedata

Next install the requirements

pip install dbt-core==1.3.0

pip install dbt-hive==1.3.1

### Configure connection to cdw

create a file setenv.sh

% cat setenv.sh

export DBT_HIVE_SCHEMA=dbt_airlinedata
export DBT_HIVE_USER=frothkoetter
export DBT_HIVE_PASSWORD='XXXXXXXXX'
export DBT_HIVE_HOST=hs2-cdw-vhol.dw-cdw1-aw-env.a465-9q4k.cloudera.site
export DBT_HIVE_PORT=443
export DBT_HIVE_HTTP_PATH=jdbc:hive2://hs2-cdw-vhol.dw-cdw1-aw-env.a465-9q4k.cloudera.site/default;transportMode=http;httpPath=cliservice;socketTimeout=60;ssl=true;auth=browser;

chmod 700 setenv.sh
source setenv.sh


### check installation

% dbt debug

17:20:35  Running with dbt=1.3.0
dbt version: 1.3.0
python version: 3.9.12
python path: /opt/homebrew/opt/python@3.9/bin/python3.9
os info: macOS-12.4-arm64-arm-64bit
Using profiles.yml file at /Users/frothkoetter/se-tools/github/dbt-hive-example/dbt_airlinedata/profiles.yml
Using dbt_project.yml file at /Users/frothkoetter/se-tools/github/dbt-hive-example/dbt_airlinedata/dbt_project.yml

Configuration:
  profiles.yml file [OK found and valid]
  dbt_project.yml file [OK found and valid]

Required dependencies:
 - git [OK found]

Connection:
  host: hs2-cdw-vhol.dw-cdw1-aw-env.a465-9q4k.cloudera.site
  schema: dbt_airlinedata
  user: frothkoetter
  Connection test: [OK connection ok]

All checks passed!


### run a single model

% dbt run -s airport_departing_airlines_pivot
