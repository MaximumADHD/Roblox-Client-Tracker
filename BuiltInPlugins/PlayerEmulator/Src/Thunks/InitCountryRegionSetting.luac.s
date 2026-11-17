PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["CountryRegion"]
        5 GETTABLEKS                       R2 R2 K2 ["countryRegionTable"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K3 ["COUNTRY_REGION_SETTING_KEY"]
       11 NAMECALL                         R3 R3 K4 ["GetSetting"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETTABLE                         R4 R2 R3
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R3 R4 K5 ["EmulatedCountryCode"]
       20 RETURN                           R0 0
       21 GETUPVAL                         R6 3
       22 GETUPVAL                         R7 4
       23 CALL                             R6 1 -1
       24 NAMECALL                         R4 R0 K6 ["dispatch"]
       26 CALL                             R4 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Util"]
       21 GETTABLEKS                       R3 R3 K11 ["Constants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Src"]
       28 GETTABLEKS                       R4 R4 K12 ["Networking"]
       30 GETTABLEKS                       R4 R4 K13 ["Requests"]
       32 GETTABLEKS                       R4 R4 K14 ["GetUserCountryRegionCode"]
       34 CALL                             R3 1 1
       35 DUPCLOSURE                       R4 K15 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 RETURN                           R4 1
