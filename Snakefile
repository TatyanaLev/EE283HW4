rule all:
    input:
        "mtcars.png"

rule r:
    input:
        "cars.R"
    output:
        "mtcars.sqlite3"
    shell:
        "Rscript {input}"    

rule py:	
    input:
        "cars.py"
    output:
        "mtcars.png"
    shell:
        "python3 {input}"
