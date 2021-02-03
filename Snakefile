rule all:
    input:
	    "mtcars.sqlite3", "mtcars.png"

rule r:
    input:
        "cars.R"
    output:
        "mtcars.sqlite3"
    shell:
        "Rscript {input}"    

rule py:	
    input:
        py="cars.py",
		"mtcars.sqlite3"
    output:
        "mtcars.png"
    shell:
        "python3 {input.py}"
		
rule clean:
    shell:
        "rm -r mtcars*"