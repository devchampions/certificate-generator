
To generate certificates do the following:

  - Prepare SVG template and put it into the `templates` directory. Inside SVG, make sure that the element with participant name has `id="cert-name"` and the element with URL has `id="cert-url"`.
  - Prepare CSV data file with 2 columns: `Name` and `CertId`. CertId can be generated using <https://www.random.org/strings/>. Final file should look like this:

        Name;CertId
        Janis Lapsa;ESDFNJECM7
        John Fox;YR9XZC4AG0
        ...

  - Run the following command to generate JPEG files with certificates:

        gradlew clean build \
                -PdataFile=</path/to/data/file.csv> \
                -PcertificateTemplate=<template_file_name.svg>