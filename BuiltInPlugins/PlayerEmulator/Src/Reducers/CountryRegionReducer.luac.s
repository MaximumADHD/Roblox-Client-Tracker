PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["data"]
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K2 [pairs]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 GETTABLEKS                       R10 R9 K3 ["code"]
       13 GETTABLEKS                       R11 R9 K4 ["displayName"]
       15 GETIMPORT                        R12 K7 [string.format]
       17 LOADK                            R13 K8 ["%s (%s)"]
       18 MOVE                             R14 R11
       19 MOVE                             R15 R10
       20 CALL                             R12 3 1
       21 DUPTABLE                         R13 K11 [{"code", "name", "displayText"}]
       22 SETTABLEKS                       R10 R13 K3 ["code"]
       24 SETTABLEKS                       R11 R13 K9 ["name"]
       26 SETTABLEKS                       R12 R13 K10 ["displayText"]
       28 SETTABLE                         R13 R3 R10
       29 DUPTABLE                         R15 K11 [{"code", "name", "displayText"}]
       30 SETTABLEKS                       R10 R15 K3 ["code"]
       32 SETTABLEKS                       R11 R15 K9 ["name"]
       34 SETTABLEKS                       R12 R15 K10 ["displayText"]
       36 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       38 MOVE                             R14 R4
       39 GETIMPORT                        R13 K14 [table.insert]
       41 CALL                             R13 2 0
       42 FORGLOOP                         R5 2 ; [-32]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K15 ["Dictionary"]
       47 GETTABLEKS                       R5 R5 K16 ["join"]
       49 MOVE                             R6 R0
       50 DUPTABLE                         R7 K19 [{"countryRegionTable", "countryRegionList"}]
       51 SETTABLEKS                       R3 R7 K17 ["countryRegionTable"]
       53 SETTABLEKS                       R4 R7 K18 ["countryRegionList"]
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["countryRegionCode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"userCountryRegionCode"}]
        9 SETTABLEKS                       R2 R5 K3 ["userCountryRegionCode"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K13 [{["userCountryRegionCode"] = "", ["countryRegionTable"], ["countryRegionList"]}]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K11 ["countryRegionTable"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K12 ["countryRegionList"]
       34 DUPTABLE                         R5 K16 [{"LoadCountryRegion", "OnEmulatedCountryRegionChanged"}]
       35 DUPCLOSURE                       R6 K17 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R6 R5 K14 ["LoadCountryRegion"]
       39 DUPCLOSURE                       R6 K18 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R6 R5 K15 ["OnEmulatedCountryRegionChanged"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1
