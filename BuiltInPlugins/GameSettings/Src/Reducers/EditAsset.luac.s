PROTO_0:
        0 GETUPVAL                         R2 0
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"editPlaceId"}]
        7 GETTABLEKS                       R5 R1 K2 ["editPlaceId"]
        9 SETTABLEKS                       R5 R4 K2 ["editPlaceId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"editDevProductId"}]
        7 GETTABLEKS                       R6 R1 K2 ["editDevProductId"]
        9 JUMPIFEQKNIL                     R6 ; [+4]
       11 GETTABLEKS                       R5 R1 K2 ["editDevProductId"]
       13 JUMPIF                           R5 ; [+3]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["None"]
       17 SETTABLEKS                       R5 R4 K2 ["editDevProductId"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["editSecretId"]
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["editSecretId"]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["None"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Dictionary"]
       13 GETTABLEKS                       R3 R4 K3 ["join"]
       15 MOVE                             R4 R0
       16 DUPTABLE                         R5 K4 [{"editSecretId"}]
       17 SETTABLEKS                       R2 R5 K0 ["editSecretId"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["value"]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["None"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Dictionary"]
       13 GETTABLEKS                       R3 R4 K3 ["join"]
       15 MOVE                             R4 R0
       16 NEWTABLE                         R5 1 0
       18 GETTABLEKS                       R6 R1 K4 ["field"]
       20 SETTABLE                         R2 R5 R6
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

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
       23 DUPTABLE                         R3 K14 [{"editPlaceId", "editDevProductId", "editSecretId", "editSecretFormName", "editSecretFormValue", "editSecretFormDomain"}]
       24 LOADN                            R4 0
       25 SETTABLEKS                       R4 R3 K8 ["editPlaceId"]
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K9 ["editDevProductId"]
       30 LOADNIL                          R4
       31 SETTABLEKS                       R4 R3 K10 ["editSecretId"]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K11 ["editSecretFormName"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K12 ["editSecretFormValue"]
       39 LOADNIL                          R4
       40 SETTABLEKS                       R4 R3 K13 ["editSecretFormDomain"]
       42 GETTABLEKS                       R4 R2 K15 ["createReducer"]
       44 MOVE                             R5 R3
       45 DUPTABLE                         R6 K21 [{"ResetStore", "SetEditPlaceId", "SetEditDevProductId", "SetEditSecretId", "SetEditSecretFormField"}]
       46 DUPCLOSURE                       R7 K22 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R6 K16 ["ResetStore"]
       50 DUPCLOSURE                       R7 K23 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R7 R6 K17 ["SetEditPlaceId"]
       54 DUPCLOSURE                       R7 K24 [PROTO_2]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R6 K18 ["SetEditDevProductId"]
       58 DUPCLOSURE                       R7 K25 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R7 R6 K19 ["SetEditSecretId"]
       62 DUPCLOSURE                       R7 K26 [PROTO_4]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R7 R6 K20 ["SetEditSecretFormField"]
       66 CALL                             R4 2 -1
       67 RETURN                           R4 -1
