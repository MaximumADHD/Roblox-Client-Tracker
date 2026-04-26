PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GAME_ID"]
        6 LOADN                            R3 0
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K3 [{"gameId"}]
        9 SETTABLEKS                       R1 R2 K2 ["gameId"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["createElement"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K5 ["Provider"]
       17 DUPTABLE                         R5 K7 [{"value"}]
       18 SETTABLEKS                       R2 R5 K6 ["value"]
       20 GETTABLEKS                       R6 R0 K8 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["GameId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["useReplicatedState"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K4 ["GAME_ID"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 DUPTABLE                         R2 K6 [{"gameId"}]
       13 SETTABLEKS                       R1 R2 K5 ["gameId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K7 ["createElement"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K8 ["Provider"]
       21 DUPTABLE                         R5 K10 [{"value"}]
       22 SETTABLEKS                       R2 R5 K9 ["value"]
       24 GETTABLEKS                       R6 R0 K11 ["children"]
       26 CALL                             R3 3 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Networking"]
       13 GETTABLEKS                       R2 R3 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
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
       35 DUPCLOSURE                       R6 K16 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R7 K17 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K21 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       46 SETTABLEKS                       R5 R8 K18 ["Context"]
       48 SETTABLEKS                       R7 R8 K19 ["EditableDataModelProvider"]
       50 SETTABLEKS                       R6 R8 K20 ["UIDataModelProvider"]
       52 RETURN                           R8 1
