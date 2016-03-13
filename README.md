
To generate certificates do the following:

  1. Make sure you installed *Economica* font on your system. It can be downloaded from <http://www.fontsquirrel.com/fonts/economica>.
  2. Prepare **SVG** template and put it into the `templates` directory. Inside the **SVG** file, make sure that the element with participant name has `id="cert-name"`, and the element with URL has `id="cert-url"`.
  3. Prepare **CSV** data file with 2 columns: `Name` and `CertId`. The `CertId` column values can be generated using <https://www.random.org/strings/>. Final file should look like this:

        Name;CertId
        Janis Lapsa;ESDFNJECM7
        John Fox;YR9XZC4AG0
        ...

  4. Run the following command to generate JPEG files with certificates:

        gradlew clean build \
                -PdataFile=</path/to/data/file.csv> \
                -PcertificateTemplate=<template_file_name.svg>