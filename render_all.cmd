@call gradlew clean
@set CERT_HOME=E:/Work/AESTAS/WEBSITES/certs.devchampions.com
@call gradlew build -S -PdataFile=%CERT_HOME%/data_eh_2016.03.10.csv -PcertificateTemplate=certificate_eh_blue_2016.03.10.svg 
@call gradlew build -S -PdataFile=%CERT_HOME%/data_sk_2016.03.15.csv -PcertificateTemplate=certificate_sk_blue_2016.03.15.svg 
@call gradlew build -S -PdataFile=%CERT_HOME%/data_cd_2016.04.21.csv -PcertificateTemplate=certificate_cd_blue_2016.04.21.svg 
@call gradlew build -S -PdataFile=%CERT_HOME%/data_dm_2016.05.09.csv -PcertificateTemplate=certificate_dm_blue_2016.05.09.svg 
@call gradlew build -S -PdataFile=%CERT_HOME%/data_d1_2016.08.22.csv -PcertificateTemplate=certificate_d1_blue_2016.08.22.svg 
@call gradlew build -S -PdataFile=%CERT_HOME%/data_j8_2016.09.14.csv -PcertificateTemplate=certificate_j8_blue_2016.09.14.svg 