PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"AllLanguages", "LocalesToLanguages"}]
        7 GETTABLEKS                       R5 R1 K5 ["allLanguages"]
        9 SETTABLEKS                       R5 R4 K2 ["AllLanguages"]
       11 GETTABLEKS                       R5 R1 K6 ["localesToLanguages"]
       13 SETTABLEKS                       R5 R4 K3 ["LocalesToLanguages"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CanManageTranslation"}]
        7 GETTABLEKS                       R5 R1 K4 ["canManageTranslation"]
        9 SETTABLEKS                       R5 R4 K2 ["CanManageTranslation"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CloudTableId"}]
        7 GETTABLEKS                       R5 R1 K4 ["cloudTableId"]
        9 SETTABLEKS                       R5 R4 K2 ["CloudTableId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K13 [{"AllLanguages", "LocalesToLanguages", "CanManageTranslation", "CloudTableId"}]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K9 ["AllLanguages"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K10 ["LocalesToLanguages"]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K11 ["CanManageTranslation"]
       37 LOADK                            R5 K14 [""]
       38 SETTABLEKS                       R5 R4 K12 ["CloudTableId"]
       40 DUPTABLE                         R5 K18 [{"LoadLanguagesAndLocalesInfo", "LoadManageTranslationPermission", "SetCloudTableId"}]
       41 DUPCLOSURE                       R6 K19 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K15 ["LoadLanguagesAndLocalesInfo"]
       45 DUPCLOSURE                       R6 K20 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K16 ["LoadManageTranslationPermission"]
       49 DUPCLOSURE                       R6 K21 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R6 R5 K17 ["SetCloudTableId"]
       53 CALL                             R3 2 -1
       54 RETURN                           R3 -1
