#!/usr/bin/env python3

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import sqlite3

con = sqlite3.connect("mtcars.sqlite3")
df = pd.read_sql_query("SELECT * from mtcars", con)

g = sns.FacetGrid(df, col="cyl")
g.map(sns.scatterplot,"wt","mpg");
plt.savefig('mtcars.png')

con.close()
