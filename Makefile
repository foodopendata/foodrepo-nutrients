# Project : OpenFood.ch Data Package
# -----------------------------------------------------------------------------
# Author : Oleg Lavrovsky <oleg@opendata.ch>
# -----------------------------------------------------------------------------
# License : GNU General Public License
# -----------------------------------------------------------------------------
# This Data Package is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# The Data Package is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with the Data Package. If not, see <http://www.gnu.org/licenses/>.

API_URL = https://www.openfood.ch/api/v1
DATA_N1 = openfood-ch-nutrients

all: build

build: fetch-nutrients conv-nutrients

fetch-nutrients:
	curl -L $(API_URL)/nutrients > data/$(DATA_N1).json

conv-nutrients:
	. `pwd`/.env/bin/activate; cd data && in2csv -k data $(DATA_N1).json > $(DATA_N1).csv

install:
	virtualenv .env --no-site-packages --distribute
	. `pwd`/.env/bin/activate; pip install -r requirements.txt
