#!/bin/bash

# Define the packages URL
SqlRender_url="https://github.com/OHDSI/SqlRender/archive/refs/tags/v1.16.1.tar.gz"
DatabaseConnector_url="https://github.com/OHDSI/DatabaseConnector/archive/refs/tags/v6.3.2.tar.gz"
Eunomia_url="https://github.com/OHDSI/Eunomia/archive/refs/tags/v1.0.2.tar.gz"


# Download the package
wget $Eunomia_url -O Eunomia.tar.gz
wget $DatabaseConnector_url -O DatabaseConnector.tar.gz
wget $SqlRender_url -O SqlRender.tar.gz

# Install the dependencies
R -e "install.packages(c('Eunomia', 'DatabaseConnector', 'SqlRender'), repos = NULL, type='source')"

# Install the packages
R -e "install.packages(c('Eunomia.tar.gz', 'SqlRender.tar.gz', 'DatabaseConnector.tar.gz'), repos = NULL, type='source')"

# Clean up
rm SqlRender.tar.gz DatabaseConnector.tar.gz Eunomia.tar.gz