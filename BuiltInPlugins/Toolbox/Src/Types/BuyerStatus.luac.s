MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Allowed", "CountryRestricted", "Invalid"}]
        2 LOADK                            R1 K4 ["PURCHASER_STATUS_ALLOWED"]
        3 SETTABLEKS                       R1 R0 K0 ["Allowed"]
        5 LOADK                            R1 K5 ["PURCHASER_STATUS_COUNTRY_RESTRICTED"]
        6 SETTABLEKS                       R1 R0 K1 ["CountryRestricted"]
        8 LOADK                            R1 K6 ["PURCHASER_STATUS_INVALID"]
        9 SETTABLEKS                       R1 R0 K2 ["Invalid"]
       11 RETURN                           R0 1
