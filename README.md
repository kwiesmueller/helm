# Helm Repository

## About
This repositoriy is meant as a nice and easy way to collect and apply 
our apps, tools and charts onto multiple/different kubernetes clusters.
Therefor some abstraction is required.

## Structure
There are three Folders:
* charts - Which contains a collection of all charts
* values - The parent folder containing cluster specific files
    * cluster-1 - Could be your cluster name
        * chart-name
            * values.yaml - Containing the cluster specific values for chart-name
* volumes - A folder which offers structure to collect real kubernetes manifest files for persistent volume creation
    * cluster-1
        * persistenVolume-1.yaml

## Use
To use this repo, create your cluster folder in both values and volumes.
Then start creating configs for the charts you need.

After you are done, you should create a file called 'set-cluster.sh'
```
#!/usr/bin/env bash

set -e 
HELM_CURRENT_CLUSTER=your-cluster-name
```
The variable should be exactly the same as your folders are named.

Then is easy to use the shortcut scripts for installing and applying:

` ./install.sh service-name chart-name `

and 

` ./update.sh service-name chart-name `


### Please note that all this is just a draft and highly work in progress. Feel happy to contribute and make suggestions.