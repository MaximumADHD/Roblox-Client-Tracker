PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"groupsArray"}]
        7 GETTABLEKS                       R5 R1 K2 ["groupsArray"]
        9 SETTABLEKS                       R5 R4 K2 ["groupsArray"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetGroupData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetGroupData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetGroupData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SetMyGroups"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["SetAssetGroupData"]
       34 CALL                             R6 1 1
       35 DUPTABLE                         R7 K14 [{"assetGroupData", "groupsArray"}]
       36 NEWTABLE                         R8 0 0
       38 SETTABLEKS                       R8 R7 K12 ["assetGroupData"]
       40 NEWTABLE                         R8 0 0
       42 SETTABLEKS                       R8 R7 K13 ["groupsArray"]
       44 GETTABLEKS                       R8 R3 K15 ["createReducer"]
       46 MOVE                             R9 R7
       47 NEWTABLE                         R10 2 0
       49 GETTABLEKS                       R11 R5 K16 ["name"]
       51 DUPCLOSURE                       R12 K17 [PROTO_0]
       52 CAPTURE                          VAL R2
       53 SETTABLE                         R12 R10 R11
       54 GETTABLEKS                       R11 R6 K16 ["name"]
       56 DUPCLOSURE                       R12 K18 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 SETTABLE                         R12 R10 R11
       59 CALL                             R8 2 -1
       60 RETURN                           R8 -1
