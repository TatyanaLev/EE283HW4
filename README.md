## Week 2 Answers

1. Output from the entire snakemake workflow can be deleted manually with `rm` or writing the same command as a rule in the `Snakefile` and then executing `snakemake clean` or similar. I'm not aware of a built-in way.

2. Deleting the output from a single rule could happen if one wrote a fancy clean step with options I suppose, but otherwise there isn't a way.

3. The citation for `snakemake`is:

Köster, Johannes and Rahmann, Sven. “Snakemake - A scalable bioinformatics workflow engine”. Bioinformatics 2012 