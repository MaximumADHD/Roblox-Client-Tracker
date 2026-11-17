PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"customPolicySwitchEnabled"}]
        9 SETTABLEKS                       R2 R5 K3 ["customPolicySwitchEnabled"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
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
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
       10 GETTABLEKS                       R4 R4 K3 ["join"]
       12 MOVE                             R5 R0
       13 DUPTABLE                         R6 K5 [{"customPolicySwitchActive"}]
       14 SETTABLEKS                       R3 R6 K4 ["customPolicySwitchActive"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

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
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["PlayerEmulatorService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K12 ["createReducer"]
       31 DUPTABLE                         R5 K17 [{["customPolicySwitchEnabled"] = False, ["customPolicySwitchActive"] = False, ["customPoliciesEnabled"] = False}]
       32 DUPTABLE                         R6 K21 [{"OnCustomPolicySwitchEnabledChanged", "OnCustomPolicyEnabledChanged", "OnEmulatedCountryRegionChanged"}]
       33 DUPCLOSURE                       R7 K22 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R7 R6 K18 ["OnCustomPolicySwitchEnabledChanged"]
       37 DUPCLOSURE                       R7 K23 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R7 R6 K19 ["OnCustomPolicyEnabledChanged"]
       41 DUPCLOSURE                       R7 K24 [PROTO_2]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K20 ["OnEmulatedCountryRegionChanged"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1
