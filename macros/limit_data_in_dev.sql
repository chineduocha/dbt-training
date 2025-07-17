{% macro limit_data_in_dev() %}
{% if target.name == 'development' %}
where {{column_name}} >= dateadd('day', -30, current_timestamp)
{% endif %}
{% endmacro %}