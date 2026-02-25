PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"customPolicySwitchEnabled"}]
        9 SETTABLEKS                       R2 R5 K3 ["customPolicySwitchEnabled"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"customPoliciesEnabled"}]
        9 SETTABLEKS                       R2 R5 K3 ["customPoliciesEnabled"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["countryRegionCode"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R3 K1 ["regionCodeWillHaveAutomaticNonCustomPolicies"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
       10 GETTABLEKS                       R4 R5 K3 ["join"]
       12 MOVE                             R5 R0
       13 DUPTABLE                         R6 K5 [{"customPolicySwitchActive"}]
       14 SETTABLEKS                       R3 R6 K4 ["customPolicySwitchActive"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["PlayerEmulatorService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K12 ["createReducer"]
       31 DUPTABLE                         R5 K16 [{"customPolicySwitchEnabled", "customPolicySwitchActive", "customPoliciesEnabled"}]
       32 LOADB                            R6 0
       33 SETTABLEKS                       R6 R5 K13 ["customPolicySwitchEnabled"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K14 ["customPolicySwitchActive"]
       38 LOADB                            R6 0
       39 SETTABLEKS                       R6 R5 K15 ["customPoliciesEnabled"]
       41 DUPTABLE                         R6 K20 [{"OnCustomPolicySwitchEnabledChanged", "OnCustomPolicyEnabledChanged", "OnEmulatedCountryRegionChanged"}]
       42 DUPCLOSURE                       R7 K21 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K17 ["OnCustomPolicySwitchEnabledChanged"]
       46 DUPCLOSURE                       R7 K22 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R7 R6 K18 ["OnCustomPolicyEnabledChanged"]
       50 DUPCLOSURE                       R7 K23 [PROTO_2]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R7 R6 K19 ["OnEmulatedCountryRegionChanged"]
       55 CALL                             R4 2 -1
       56 RETURN                           R4 -1
