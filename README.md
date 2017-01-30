Nutrient data from Openfood.ch provided as a [Simple Data Format Data Package](http://dataprotocols.readthedocs.io/en/latest/simple-data-format.html).

This dataset was compiled at a [School of Data](http://schoolofdata.ch) workshop in preparation for the [Open Food Hackdays](http://food.opendata.ch).

## Data

Data comes from the Openfood.ch API. We thought it would make it easier for participants to discover the data at the upcoming hackdays if it were available in multiple formats, and reduce load on the servers by caching the data.

## Preparation

The `curl` and Python `in2csv` tools were used to convert data from the JSON API into a CSV table.

This command fetches the current data and creates a JSON and CSV file in the *data* subfolder.
```
make build
```

## License

This material is licensed by its maintainers under the Public Domain Dedication
and License.

Nevertheless, it should be noted that this material is currently sourced from
several third-parties whose data publishign rights and licensing policies are somewhat
unclear.

If you intended to use these data in a public or commercial product, please
check the original sources for any specific restrictions.
