# secure-coding
Some samples based on secure-coding practices
Source: 2021 ASP.NET Core 5 Secure Coding Cookbook

-->
broken-authentication

cover:
fixing the incorrect restrictions of excessive auth. attempts
fixing insufficiently protected credentials
fixing user enumeration
fixing weak password requirements
fixing insufficient session expiration

-->
sensitive data exposure

cover:

fixing insufficient protection of data in transit
fix missing HSTS headers
fixing weak protocols
fixing hardcoded cryptographic keys
disabling caching for critical web pages

-->
XML external entities

cover:

enabling XML validation 
fixing XXE injection with XmlDocument
fixing XXE injection with XmlTextReader
fixing XXE injection with LINQ to XML

-->
Broken Access Control

fixing improper authorization
fixing missing-access-control
fixing open redirect vulnerabilities
	

--------
Steps for sonarqube:

1) Sonarqube token:
sqp_b5b30df9e96d5f32cb5b77947f9878a7857f430e

2) install tool:
dotnet tool install --global dotnet-sonarscanner

3) command executed at the root if the solution:
dotnet sonarscanner begin /k:"secure-coding-samples" /d:sonar.host.url="http://127.0.0.1:9000"  /d:sonar.token="sqp_b5b30df9e96d5f32cb5b77947f9878a7857f430e"

4) 
dotnet build

5)
dotnet sonarscanner end /d:sonar.token="sqp_b5b30df9e96d5f32cb5b77947f9878a7857f430e"
-----------
--> 
security-misconfiguration


debug-enabled


