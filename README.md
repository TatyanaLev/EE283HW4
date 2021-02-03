## Week 4 Answers

1. Output from the entire snakemake workflow can be deleted manually with `rm` or writing the same command as a rule in the `Snakefile` and then executing `snakemake clean` or similar. I'm not aware of a built-in way.

2. Deleting the output from a single rule could happen if one wrote a fancy clean step with options I suppose, but otherwise there isn't a way.

3. The citation for `snakemake`is:

Köster, Johannes and Rahmann, Sven. “Snakemake - A scalable bioinformatics workflow engine”. Bioinformatics 2012


```bash
> snakemake

Nothing to be done.
```

```bash
touch cars.py
```

```bash
> snakemake

Provided cores: 1
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	py
	2

rule py:
    input: cars.py
    output: mtcars.png
    jobid: 1

Finished job 1.
1 of 2 steps (50%) done

localrule all:
    input: mtcars.sqlite3, mtcars.png
    jobid: 0

Finished job 0.
2 of 2 steps (100%) done
```
 
 
![mtcars.png](https://github.com/TatyanaLev/EE283HW4/mtcars.png)