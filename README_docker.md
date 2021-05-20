
Using the dockerized version

## Startup:

For the first time: 

* `docker-compose up --build; docker-compose down;`

After the image has been built:

* `docker-compose up; docker-compose down;`


## Analyze multiple files:

* Place files to /app/_audio
* Run `tsv_analyze.py --folder _audio --lat 60.188 --lon 24.700 --week 17`

This will output one result file for each audio file to the _audio folder.
