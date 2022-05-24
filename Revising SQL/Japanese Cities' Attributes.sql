/* (SQL Basic)
Problem Statement:
Japanese Cities' Attributes

https://hackerrank-challenge-pdfs.s3.amazonaws.com/8337-japanese-cities-attributes-English?
AWSAccessKeyId=AKIAR6O7GJNX5DNFO3PV&Expires=1651102429&Signature=ZHzku620qL%2BpVMKOgVnttf7M%2BM8%3D&
response-content-disposition=inline%3B%20filename%3Djapanese-cities-attributes-English.pdf&response-content-type=application%2Fpdf
*/

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'

/*
Your Output (stdout)
1613 Neyagawa JPN Osaka 257315
1630 Ageo JPN Saitama 209442
1661 Sayama JPN Saitama 162472
1681 Omuta JPN Fukuoka 142889
1739 Tokuyama JPN Yamaguchi 107078
*/