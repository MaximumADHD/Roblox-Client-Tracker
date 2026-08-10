PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R1 R1 K1 ["gameId"]
        5 JUMPIFEQKNIL                     R1 ; [+5]
        7 GETTABLEKS                       R2 R0 K1 ["gameId"]
        9 JUMPIFEQ                         R1 R2 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 DUPTABLE                         R2 K4 [{"scopeMap", "universeCreatorInfo"}]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["current"]
       17 GETTABLEKS                       R3 R3 K2 ["scopeMap"]
       19 SETTABLEKS                       R3 R2 K2 ["scopeMap"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["current"]
       24 GETTABLEKS                       R3 R3 K3 ["universeCreatorInfo"]
       26 SETTABLEKS                       R3 R2 K3 ["universeCreatorInfo"]
       28 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"gameId", "scopeMap", "universeCreatorInfo"}]
        2 GETTABLEKS                       R3 R0 K0 ["gameId"]
        4 SETTABLEKS                       R3 R2 K0 ["gameId"]
        6 GETTABLEKS                       R3 R0 K1 ["scopeMap"]
        8 SETTABLEKS                       R3 R2 K1 ["scopeMap"]
       10 GETTABLEKS                       R3 R0 K2 ["universeCreatorInfo"]
       12 SETTABLEKS                       R3 R2 K2 ["universeCreatorInfo"]
       14 SETTABLEKS                       R2 R1 K4 ["current"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 DUPTABLE                         R2 K5 [{["gameId"] = , ["scopeMap"] = , ["universeCreatorInfo"] = }]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K6 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["useCallback"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 1
       21 DUPTABLE                         R4 K9 [{"getScopes", "setScopes"}]
       22 SETTABLEKS                       R2 R4 K7 ["getScopes"]
       24 SETTABLEKS                       R3 R4 K8 ["setScopes"]
       26 GETUPVAL                         R5 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K10 ["Provider"]
       30 DUPTABLE                         R7 K12 [{"value"}]
       31 SETTABLEKS                       R4 R7 K11 ["value"]
       33 GETTABLEKS                       R8 R0 K13 ["children"]
       35 CALL                             R5 3 -1
       36 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K10 ["createElement"]
       27 DUPTABLE                         R6 K13 [{"getScopes", "setScopes"}]
       28 DUPCLOSURE                       R7 K14 [PROTO_0]
       29 SETTABLEKS                       R7 R6 K11 ["getScopes"]
       31 DUPCLOSURE                       R7 K15 [PROTO_1]
       32 SETTABLEKS                       R7 R6 K12 ["setScopes"]
       34 GETTABLEKS                       R7 R3 K16 ["createContext"]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 DUPCLOSURE                       R8 K17 [PROTO_4]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R7
       42 DUPTABLE                         R9 K20 [{"Context", "Provider"}]
       43 SETTABLEKS                       R7 R9 K18 ["Context"]
       45 SETTABLEKS                       R8 R9 K19 ["Provider"]
       47 RETURN                           R9 1
