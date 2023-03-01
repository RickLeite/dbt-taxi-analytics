{#
    Esse macro retorna uma descrição dos tipos de pagamento (payment_type)
#}

{% macro get_payment_type_description(tipo_pagamento) -%}

    case {{ tipo_pagamento }}
        when 1 then 'Credit card'
        when 2 then 'Cash'
        when 3 then 'No charge'
        when 4 then 'Dispute'
        when 5 then 'Unknown'
        when 6 then 'Voided trip'
    end

{%- endmacro %}