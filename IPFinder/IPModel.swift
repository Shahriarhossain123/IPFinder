//
//  IPModel.swift
//  IPFinder
//
//  Created by apple on 3/23/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

struct IPModel : Codable {
    let ip : String?
    let continent_code : String?
    let continent_name : String?
    let country_code2 : String?
    let country_code3 : String?
    let country_name : String?
    let country_capital : String?
    let state_prov : String?
    let district : String?
    let city : String?
    let zipcode : String?
    let latitude : String?
    let longitude : String?
    let is_eu : Bool?
    let calling_code : String?
    let country_tld : String?
    let languages : String?
    let country_flag : String?
    let geoname_id : String?
    let isp : String?
    let connection_type : String?
    let organization : String?
    let currency : Currency?
    let time_zone : Time_zone?
    
    enum CodingKeys: String, CodingKey {
        
        case ip = "ip"
        case continent_code = "continent_code"
        case continent_name = "continent_name"
        case country_code2 = "country_code2"
        case country_code3 = "country_code3"
        case country_name = "country_name"
        case country_capital = "country_capital"
        case state_prov = "state_prov"
        case district = "district"
        case city = "city"
        case zipcode = "zipcode"
        case latitude = "latitude"
        case longitude = "longitude"
        case is_eu = "is_eu"
        case calling_code = "calling_code"
        case country_tld = "country_tld"
        case languages = "languages"
        case country_flag = "country_flag"
        case geoname_id = "geoname_id"
        case isp = "isp"
        case connection_type = "connection_type"
        case organization = "organization"
        case currency = "currency"
        case time_zone = "time_zone"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ip = try values.decodeIfPresent(String.self, forKey: .ip)
        continent_code = try values.decodeIfPresent(String.self, forKey: .continent_code)
        continent_name = try values.decodeIfPresent(String.self, forKey: .continent_name)
        country_code2 = try values.decodeIfPresent(String.self, forKey: .country_code2)
        country_code3 = try values.decodeIfPresent(String.self, forKey: .country_code3)
        country_name = try values.decodeIfPresent(String.self, forKey: .country_name)
        country_capital = try values.decodeIfPresent(String.self, forKey: .country_capital)
        state_prov = try values.decodeIfPresent(String.self, forKey: .state_prov)
        district = try values.decodeIfPresent(String.self, forKey: .district)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        zipcode = try values.decodeIfPresent(String.self, forKey: .zipcode)
        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
        is_eu = try values.decodeIfPresent(Bool.self, forKey: .is_eu)
        calling_code = try values.decodeIfPresent(String.self, forKey: .calling_code)
        country_tld = try values.decodeIfPresent(String.self, forKey: .country_tld)
        languages = try values.decodeIfPresent(String.self, forKey: .languages)
        country_flag = try values.decodeIfPresent(String.self, forKey: .country_flag)
        geoname_id = try values.decodeIfPresent(String.self, forKey: .geoname_id)
        isp = try values.decodeIfPresent(String.self, forKey: .isp)
        connection_type = try values.decodeIfPresent(String.self, forKey: .connection_type)
        organization = try values.decodeIfPresent(String.self, forKey: .organization)
        currency = try values.decodeIfPresent(Currency.self, forKey: .currency)
        time_zone = try values.decodeIfPresent(Time_zone.self, forKey: .time_zone)
    }
    
}


struct Currency : Codable {
    let code : String?
    let name : String?
    let symbol : String?
    
    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        case name = "name"
        case symbol = "symbol"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
    }
    
}

struct Time_zone : Codable {
    let name : String?
    let offset : Int?
    let current_time : String?
    let current_time_unix : Double?
    let is_dst : Bool?
    let dst_savings : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case offset = "offset"
        case current_time = "current_time"
        case current_time_unix = "current_time_unix"
        case is_dst = "is_dst"
        case dst_savings = "dst_savings"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        offset = try values.decodeIfPresent(Int.self, forKey: .offset)
        current_time = try values.decodeIfPresent(String.self, forKey: .current_time)
        current_time_unix = try values.decodeIfPresent(Double.self, forKey: .current_time_unix)
        is_dst = try values.decodeIfPresent(Bool.self, forKey: .is_dst)
        dst_savings = try values.decodeIfPresent(Int.self, forKey: .dst_savings)
    }
    
}
