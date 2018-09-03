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

API_URL = https://www.foodrepo.org/api/v2
DATA_N1 = foodrepo-nutrients

all: build

build: fetch-nutrients conv-nutrients

# See https://www.foodrepo.org/api-docs/swaggers/v3
# fetch-products:
# 	curl -L $(API_URL)/products?size%5D=200 > data/products-$(DATA_N1).json

fetch-nutrients:
	curl -X GET --header "Accept: application/json" --header "Authorization: Token token=${FOODREPO}" -L $(API_URL)/nutrients > data/$(DATA_N1).json

conv-nutrients:
	. `pwd`/.env/bin/activate; cd data && in2csv -k data $(DATA_N1).json > $(DATA_N1).csv

install:
	virtualenv .env --no-site-packages --distribute
	. `pwd`/.env/bin/activate; pip install -r requirements.txt
