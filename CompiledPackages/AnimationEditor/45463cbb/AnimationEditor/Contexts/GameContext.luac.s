PROTO_0:
        0 DUPTABLE                         R0 K1 [{"gameId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["gameId"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GAME_ID"]
        6 LOADN                            R3 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K3 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K4 ["Provider"]
       25 DUPTABLE                         R5 K6 [{"value"}]
       26 SETTABLEKS                       R2 R5 K5 ["value"]
       28 GETTABLEKS                       R6 R0 K7 ["children"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["GAME_ID"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["useMemo"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["createElement"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K7 ["Provider"]
       29 DUPTABLE                         R5 K9 [{"value"}]
       30 SETTABLEKS                       R2 R5 K8 ["value"]
       32 GETTABLEKS                       R6 R0 K10 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

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
       23 DUPTABLE                         R3 K12 [{"GAME_ID"}]
       24 LOADK                            R4 K11 ["GAME_ID"]
       25 SETTABLEKS                       R4 R3 K11 ["GAME_ID"]
       27 DUPTABLE                         R4 K14 [{"gameId"}]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K13 ["gameId"]
       31 GETTABLEKS                       R5 R2 K15 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K16 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R7 K17 [PROTO_3]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K21 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       46 SETTABLEKS                       R5 R8 K18 ["Context"]
       48 SETTABLEKS                       R7 R8 K19 ["EditableDataModelProvider"]
       50 SETTABLEKS                       R6 R8 K20 ["UIDataModelProvider"]
       52 RETURN                           R8 1
