PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getRobloxPluginGuiService"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 LOADN                            R3 10
        6 NAMECALL                         R0 R0 K1 ["WaitForChild"]
        8 CALL                             R0 3 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R3 K3 [{"rootInstance"}]
       12 SETTABLEKS                       R0 R3 K2 ["rootInstance"]
       14 NAMECALL                         R1 R1 K4 ["setGuiOptions"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["getStudioService"]
        6 CALL                             R4 0 -1
        7 CALL                             R3 -1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["new"]
       11 LOADK                            R5 K2 ["Plugin"]
       12 MOVE                             R6 R0
       13 NEWTABLE                         R7 0 1
       15 MOVE                             R8 R3
       16 SETLIST                          R7 R8 1 [1]
       18 CALL                             R4 3 1
       19 JUMPIFNOT                        R2 ; [+7]
       20 DUPTABLE                         R7 K4 [{"rootInstance"}]
       21 SETTABLEKS                       R2 R7 K3 ["rootInstance"]
       23 NAMECALL                         R5 R4 K5 ["setGuiOptions"]
       25 CALL                             R5 2 0
       26 RETURN                           R4 1
       27 GETIMPORT                        R5 K7 [spawn]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CALL                             R5 1 0
       34 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Classes"]
       11 GETTABLEKS                       R2 R2 K6 ["BindableEventBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Classes"]
       18 GETTABLEKS                       R3 R3 K7 ["DebugInterface"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Services"]
       25 CALL                             R3 1 1
       26 LOADK                            R6 K9 ["PluginDebugInterface"]
       27 DUPCLOSURE                       R7 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R4 R2 K11 ["extend"]
       33 CALL                             R4 3 1
       34 RETURN                           R4 1
