PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["allPolicies"]
        2 GETTABLEKS                       R3 R1 K1 ["allPolicySortedKeys"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R5 K3 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K4 [{"allPolicies", "allPolicySortedKeys"}]
       11 SETTABLEKS                       R2 R6 K0 ["allPolicies"]
       13 SETTABLEKS                       R3 R6 K1 ["allPolicySortedKeys"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["policySettingStatus"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 DUPTABLE                         R5 K1 [{"policySettingStatus"}]
        5 SETTABLEKS                       R2 R5 K0 ["policySettingStatus"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["policyListItemsModuleExpanded"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 DUPTABLE                         R5 K1 [{"policyListItemsModuleExpanded"}]
        5 SETTABLEKS                       R2 R5 K0 ["policyListItemsModuleExpanded"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

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
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R7 R0 K5 ["Packages"]
       27 GETTABLEKS                       R6 R7 K8 ["Framework"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R4 R5 K9 ["Util"]
       32 GETTABLEKS                       R3 R4 K10 ["deepJoin"]
       34 GETTABLEKS                       R4 R2 K11 ["createReducer"]
       36 DUPTABLE                         R5 K16 [{"allPolicies", "allPolicySortedKeys", "policySettingStatus", "policyListItemsModuleExpanded"}]
       37 NEWTABLE                         R6 0 0
       39 SETTABLEKS                       R6 R5 K12 ["allPolicies"]
       41 NEWTABLE                         R6 0 0
       43 SETTABLEKS                       R6 R5 K13 ["allPolicySortedKeys"]
       45 NEWTABLE                         R6 0 0
       47 SETTABLEKS                       R6 R5 K14 ["policySettingStatus"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K15 ["policyListItemsModuleExpanded"]
       52 DUPTABLE                         R6 K20 [{"LoadAllPolicyValues", "UpdatePolicySettingStatus", "UpdatePolicySettingListItemsModuleExpanded"}]
       53 DUPCLOSURE                       R7 K21 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R7 R6 K17 ["LoadAllPolicyValues"]
       57 DUPCLOSURE                       R7 K22 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R7 R6 K18 ["UpdatePolicySettingStatus"]
       61 DUPCLOSURE                       R7 K23 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R7 R6 K19 ["UpdatePolicySettingListItemsModuleExpanded"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1
