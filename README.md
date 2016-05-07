
To generate certificates do the following:

  1. Make sure you installed *Economica* font on your system. It can be downloaded from <http://www.fontsquirrel.com/fonts/economica>.
  2. Prepare **SVG** template and put it into the `templates` directory. Inside the **SVG** file, make sure that the element with participant name has `id="cert-name"`, and the element with URL has `id="cert-url"`.
  3. Prepare **CSV** data file with 2 columns: `Name` and `CertId`. The `CertId` column values can be generated using <https://www.random.org/strings/>. Final file should look like this:

        Name;CertId
        Janis Lapsa;ESDFNJECM7
        John Fox;YR9XZC4AG0
        ...

     To generate random strings that can be used as certificate identifiers, you can use the `random.groovy` script.

     Please, note, that *Economica* font supports only the Western character set. The *CSV* file should be encoded in *UTF-8* for special letters (e.g. ü) to appear correctly. Not all of the special letters will be rendered though due to font limitations. 

  4. Run the following command to generate *JPEG* files with certificates:

        gradlew clean build 
                -PdataFile=</path/to/data/file.csv> 
                -PcertificateTemplate=<template_file_name.svg>

     For example:

        gradlew clean build 
                -PdataFile=data_dm.csv 
                -PcertificateTemplate=certificate_dm_blue.svg 
