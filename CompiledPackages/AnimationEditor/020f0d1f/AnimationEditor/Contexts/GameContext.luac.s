PROTO_0:
        0 DUPTABLE                         R0 K1 [{"gameId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["gameId"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["GAME_ID"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R1
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["createElement"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["Provider"]
       23 DUPTABLE                         R5 K6 [{"value"}]
       24 SETTABLEKS                       R2 R5 K5 ["value"]
       26 GETTABLEKS                       R6 R0 K7 ["children"]
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"gameId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["gameId"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GameId"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["useReplicatedState"]
        7 LOADK                            R3 K4 ["GAME_ID"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["useMemo"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R1
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["createElement"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K7 ["Provider"]
       27 DUPTABLE                         R5 K9 [{"value"}]
       28 SETTABLEKS                       R2 R5 K8 ["value"]
       30 GETTABLEKS                       R6 R0 K10 ["children"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{["GAME_ID"] = "GAME_ID"}]
       24 DUPTABLE                         R4 K15 [{["gameId"] = 0}]
       25 GETTABLEKS                       R5 R2 K16 ["createContext"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K17 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R7 K18 [PROTO_3]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 DUPTABLE                         R8 K22 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       38 SETTABLEKS                       R5 R8 K19 ["Context"]
       40 SETTABLEKS                       R7 R8 K20 ["EditableDataModelProvider"]
       42 SETTABLEKS                       R6 R8 K21 ["UIDataModelProvider"]
       44 RETURN                           R8 1
