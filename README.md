# Flight Analysis in Pig
---

## Overview
This assignment introduced me to using the language Pig to quickly filter and format a large dataset on the Penn State Hadoop fileserver.
The data was in the following format:

Destination Country | Origin Country | count
------------ | -------------- | -----
Canada | United States | 2
Mexico | United States | 5

The goal of this assignment was to:
1. Count the number of destination countries for each origin. Store the result in 'destcount'
1. Count the total number of outgoing flights for each origin. Store the result in 'outcount'
1. List the origins that have at least 3 different destinations for which they have at least 100 flights (for example, "United States" is one such origin because it has 477 flights to Costa Rica, 390 flights to Italy, and 118 flights to Iceland ).


