import os
import pandas as pd
# Snakemake example

configfile: "config/config.yaml"


f = []

f.extend(expand("{data}/test.txt",
            data = config['data']))

rule all:
    input:
        f

rule test:
    output:
        "{data}/test.txt"
    shell:
        """
        echo "successful" > {output}
        """
