{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    cast(-1 * {{ extended_price }} * {{ discount_percentage }} as decimal(16, {{ scale }}))
{% endmacro %}
