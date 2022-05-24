/* (SQL Basic)
Problem Statement:

https://hackerrank-challenge-pdfs.s3.amazonaws.com/12466-revising-the-select-query-English?
AWSAccessKeyId=AKIAR6O7GJNX5DNFO3PV&Expires=1651101256&Signature=rCTnMeNqGPlPDjuNokEK8lmbe9o%3D&
response-content-disposition=inline%3B%20filename%3Drevising-the-select-query-English.pdf&response-content-type=application%2Fpdf

*/

SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION >100000
/*
Your Output (stdout)
3878 Scottsdale USA Arizona 202705
3965 Corona USA California 124966
3973 Concord USA California 121780
3977 Cedar Rapids USA Iowa 120758
3982 Coral Springs USA Florida 117549
*/