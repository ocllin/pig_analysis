A = LOAD '/ds410/flightdata/2010-summary.csv' USING PigStorage(',')
AS (dest:chararray, src:chararray, numOfTrips:int);
flight_data = FILTER A BY dest != 'DEST_COUNTRY_NAME';
DESCRIBE flight_data;


/* Part 1 */
B = FOREACH flight_data GENERATE dest as dest, src as src;
C = DISTINCT B;
D = GROUP C by $1;
destcount = FOREACH D GENERATE group, COUNT(C.dest);

/* Part 2 */ 
B = FOREACH flight_data GENERATE src as src, numOfTrips as numOfTrips;
C = DISTINCT B;
D = GROUP C by src;
outcount = FOREACH D GENERATE group, SUM(C.numOfTrips);

/* Part 3 */
B = FILTER flight_data BY numOfTrips >= 100;
C = FOREACH B GENERATE dest as dest, src as src;
D = DISTINCT C;
E = GROUP D by $1;
F = FOREACH E GENERATE group, COUNT(D.dest);
G = FILTER F BY $1 >= 3;
