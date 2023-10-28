# Setting up docker and postgres

Follow:

https://medium.com/@jewelski/quickly-set-up-a-local-postgres-database-using-docker-5098052a4726
https://medium.com/@jewelski/configure-my-dbt-core-side-project-using-my-local-postgres-database-f31c998ab6f3

Can now be accessed at http://localhost:5050/browser/. 

Install poetry packages to run dbt. Run project within dbt folder. Project inspired by:
https://courses.getdbt.com/courses/fundamentals

# dbt cheatsheet

This will run a single model:
dbt run --select MODEL

The following will materialize all downstream models
dbt run --select MODEL+

The --full-refresh flag will force dbt to drop cascade the existing table before rebuilding it:

dbt run --full-refresh

Clean targets:
dbt clean

Materialize seeds:
dbt seeds

testing:
dbt test

run macro:
dbt run-operation MACRO_FUNCTION

new dbt project:
dbt init

Debug:
dbt debug

Docs: 
dbt docs generate -> dbt docs serve

# Notes:

Default materialization is views. Configuration files takes presedence over dbt_project.yml. Subdirectories allow is to make configuration files for each folder. The dbt tests: unique, not null, accepted values, relationships.


