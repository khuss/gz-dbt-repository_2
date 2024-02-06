with 

source as (

    select * from {{ source('raw_data_circle', 'raw_cc_stock') }}

),

renamed as (

    select 
        concat(model,"_", color, "_", size) as product_id,
        model_name,
        color_name,
        stock,
        price,
        forecast_stock
        
    from source

)

select * from renamed
