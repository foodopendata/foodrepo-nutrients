Nutrient data from [OpenFood.ch](http://openfood.ch) provided as a [Simple Data Format Data Package](http://dataprotocols.readthedocs.io/en/latest/simple-data-format.html).

This dataset was compiled at a [School of Data](http://schoolofdata.ch) workshop in preparation for the [Open Food Hackdays](http://food.opendata.ch).The goal of this data package is to  make it easier for participants to discover the dataset at the upcoming hackdays, to make it available in a mirror and in multiple formats.

## Data

A snapshot of data from the [OpenFood API](https://www.openfood.ch/api-docs/swaggers/v2) is provided here, collected and updated using a Makefile script.

## Preparation

The `curl` and Python `in2csv` tools were used to convert data from the JSON API into a CSV table.

This command fetches the current data and creates a JSON and CSV file in the *data* subfolder.
```
make build
```

## License

This Data Package is licensed by its maintainers under the Public Domain Dedication and License.

The original terms of the data republished follow:

> All Content (other than computer software) made available by OpenFood on the websites, apps or services is licensed under the Creative [Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/), unless marked otherwise. Please note that images may contain copyrighted data (such as brand logos).

> This license specifies that you can copy and redistribute the material in any medium or format and also remix, transform, or build upon the material for any purpose, even commercially.

> If you use OpenFood data, you must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests that OpenFood endorses you or your use.

> OpenFood does not guarantee the topicality, accuracy or completeness of the information and data present on the site and in the database.
