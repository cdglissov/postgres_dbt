{% macro drop_model() %}

{% set query %}
    DROP TABLE IF EXISTS public.my_first_dbt_model
{% endset %}

{% set query %}
    DROP TABLE IF EXISTS public.my_second_dbt_model
{% endset %}

{{log(query, info=true)}}
{% do run_query(query) %}

{% endmacro %}
