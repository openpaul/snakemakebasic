import os
import pandas as pd
# Snakemake example

configfile: "config/config.yaml"


f = []

f.extende(expand("{data}/test.txt"),
            data = config['data'])

rule all:
    input:
        f

rule test:
    output:
        "{data}/test.txt"
    shell:
        """
        echo "successfull" > {output}
        """
