using transport from '../db/schema';

service transportService
{
    entity locations as
        projection on transport.locations
        {
            location_i,
            city_state_x,
            region_c,
            milepost_i,
            latitude,
            longitude
        };

    entity customers as
        projection on transport.customers
        {
            ID,
            cust_name
        };

    entity ETSNG_LIST as
        projection on transport.ETSNG_LIST
        {
            ETSNG,
            ETSNG_name
        };

    entity car_types as
        projection on transport.car_types
        {
            cartype,
            name,
            short_name
        };

    entity countries as
        projection on transport.countries
        {
            ISO,
            name,
            short_name
        };

    entity orders as
        projection on transport.orders
        {
            ID,
            order_date,
            ktz_order_no,
            number_of_cars,
            ETSNG,
            ETSNG.ETSNG_name,
            location_from,
            location_from.city_state_x as location_from_name,
            location_to,
            location_to.city_state_x as location_to_name,
            cust_id,
            cust_id.cust_name,
            car_type,
            exped_terr,
            exped_terr.name
        };
}
