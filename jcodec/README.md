# JCodec
## Description
This repository has been created to access jcodec jcodec-javase via module-info.
## Setup
At the following to pom.xml
```xml
<repositories>        
	<repository>                             
		<id>mvn-repo-jcodec</id>                                                                
		<url>https://github.com/Terge3141/mvn-repo/raw/master/jcodec/</url>
		<snapshots>     
			<enabled>true</enabled>
			<updatePolicy>always</updatePolicy>
		</snapshots>  
	</repository>
</repositories> 
```
and (under dependencies):
```xml
<dependency>
	<groupId>jar</groupId>
	<artifactId>jcodecmerged</artifactId>
	<version>0.2.5</version>
</dependency>
```

At the following line module-info.java
```java
requires jcodecmerged;
```
