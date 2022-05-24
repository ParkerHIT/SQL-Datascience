/* (SQL Basic)
PROBLEM STATEMENT

https://hackerrank-challenge-pdfs.s3.amazonaws.com/12467-revising-the-select-query-2-English?
AWSAccessKeyId=AKIAR6O7GJNX5DNFO3PV&Expires=1651101448&Signature=fVlWGwRhLD8zNEtEbr9I1LFvrT4%3D&
response-content-disposition=inline%3B%20filename%3Drevising-the-select-query-2-English.pdf&response-content-type=application%2Fpdf
*/

SOLUTION

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000
/*
Your Output (stdout)
Scottsdale
Corona
Concord
Cedar Rapids
*/