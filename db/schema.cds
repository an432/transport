namespace transport;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity locations {
    key location_i   : String(10);
        city_state_x : String(100) not null;
        region_c     : String(10);
        milepost_i   : String(10);
        latitude     : String(10);
        longitude    : String(10);
}

entity customers {
    key ID        : UUID
            @Core.Computed;
        cust_name : String(100);
}

entity ETSNG_LIST {
    key ETSNG      : String(10);
        ETSNG_name : String(400);
}

entity car_types {
    key cartype    : String(4);
    name       : String(150);
    short_name : String(10);
}

entity countries {
    UN: String(3);
    key ISO: String(2);
    name: String(100);
    short_name: String (50);
}

entity orders {
    key ID             : UUID
            @Core.Computed;
        order_date     : Date;
        ktz_order_no   : String(20);
        number_of_cars : String(3);
        ETSNG          : Association to one ETSNG_LIST {ETSNG};
        location_from  : Association to one locations {location_i};
        location_to    : Association to one locations {location_i};
        cust_id        : Association to one customers {ID};
        exped_terr     : Association to countries{ISO};
        vid_otpravki   : String(30);
        vid_perevoski  : String(30);
        weight         : String(20);
        car_amount     : String(3);
        car_type       : Association to car_types{cartype};
        description    : String(1000);
        currency       : String(3);


}
