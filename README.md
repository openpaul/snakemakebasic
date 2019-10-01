# Basic snakemake
A basic snakemake to use to create new pipelines.

This is just so I dont have to type boilerplate code.


## Run on lsf
```
snakemake --use-conda -k --jobs 80   --cluster-config config/cluster.yaml --cluster "bsub  -q research-rh74 -n {cluster.nCPU} -M {cluster.mem}  -e {cluster.error} -R {cluster.resources}  -o {cluster.output} -J {cluster.name}"
```
