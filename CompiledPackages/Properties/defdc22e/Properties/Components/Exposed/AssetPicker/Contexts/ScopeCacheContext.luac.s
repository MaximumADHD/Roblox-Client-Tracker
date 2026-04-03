PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLEKS                       R1 R2 K1 ["gameId"]
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 JUMPIFEQ                         R1 R0 ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["current"]
       14 GETTABLEKS                       R2 R3 K2 ["scopeMap"]
       16 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLEKS                       R3 R2 K1 ["gameId"]
        5 JUMPIFEQ                         R3 R0 ; [+3]
        7 SETTABLEKS                       R0 R2 K1 ["gameId"]
        9 SETTABLEKS                       R1 R2 K2 ["scopeMap"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 DUPTABLE                         R2 K3 [{"gameId", "scopeMap"}]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K1 ["gameId"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["scopeMap"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["useCallback"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 DUPTABLE                         R4 K7 [{"getScopeMap", "setScopeMap"}]
       28 SETTABLEKS                       R2 R4 K5 ["getScopeMap"]
       30 SETTABLEKS                       R3 R4 K6 ["setScopeMap"]
       32 GETUPVAL                         R5 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K8 ["Provider"]
       36 DUPTABLE                         R7 K10 [{"value"}]
       37 SETTABLEKS                       R4 R7 K9 ["value"]
       39 GETTABLEKS                       R8 R0 K11 ["children"]
       41 CALL                             R5 3 -1
       42 RETURN                           R5 -1

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
       27 DUPTABLE                         R6 K13 [{"getScopeMap", "setScopeMap"}]
       28 DUPCLOSURE                       R7 K14 [PROTO_0]
       29 SETTABLEKS                       R7 R6 K11 ["getScopeMap"]
       31 DUPCLOSURE                       R7 K15 [PROTO_1]
       32 SETTABLEKS                       R7 R6 K12 ["setScopeMap"]
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
