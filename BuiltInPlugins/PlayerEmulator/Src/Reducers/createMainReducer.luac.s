PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["combineReducers"]
        3 DUPTABLE                         R1 K6 [{"MainSwitch", "Languages", "CountryRegion", "CustomPolicySwitch", "Policies"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["MainSwitch"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["Languages"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["CountryRegion"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K4 ["CustomPolicySwitch"]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K5 ["Policies"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R3 K9 ["MainSwitchReducer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K10 ["CustomPolicySwitchReducer"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Reducers"]
       40 GETTABLEKS                       R5 R5 K11 ["LanguagesReducer"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K8 ["Reducers"]
       49 GETTABLEKS                       R6 R6 K12 ["CountryRegionReducer"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K8 ["Reducers"]
       58 GETTABLEKS                       R7 R7 K13 ["PoliciesReducer"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K14 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 RETURN                           R7 1
