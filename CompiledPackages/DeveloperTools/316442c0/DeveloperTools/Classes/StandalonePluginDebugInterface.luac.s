PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["new"]
        8 LOADK                            R5 K1 ["StandalonePlugin"]
        9 MOVE                             R6 R0
       10 NEWTABLE                         R7 0 1
       12 MOVE                             R8 R3
       13 SETLIST                          R7 R8 1 [1]
       15 CALL                             R4 3 1
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R4 K2 ["setGuiOptions"]
       19 CALL                             R5 2 0
       20 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Classes"]
       11 GETTABLEKS                       R2 R2 K6 ["PluginEventBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Classes"]
       18 GETTABLEKS                       R3 R3 K7 ["DebugInterface"]
       20 CALL                             R2 1 1
       21 LOADK                            R5 K8 ["StandalonePluginDebugInterface"]
       22 DUPCLOSURE                       R6 K9 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R3 R2 K10 ["extend"]
       27 CALL                             R3 3 1
       28 RETURN                           R3 1
