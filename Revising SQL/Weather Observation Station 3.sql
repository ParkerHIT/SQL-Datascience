/*
(SQL Basic)

Problem Statement:
https://hackerrank-challenge-pdfs.s3.amazonaws.com/9338-weather-observation-station-3-English?
AWSAccessKeyId=AKIAR6O7GJNX5DNFO3PV&Expires=1651170394&Signature=QpZkRbkK7H46wBntxsCgiRqeFtg%3D&
response-content-disposition=inline%3B%20filename%3Dweather-observation-station-3-English.pdf&response-content-type=application%2Fpdf
*/

SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0
/*
Your Output (stdout)
Aguanga
Alba
Albany
Amo
Andersonville

(235 rows)
*/