PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.1]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K4 ["StartPlaySolo"]
        7 CALL                             R0 1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["HMR: Hard Reloading"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K3 ["StopPlaySolo"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K6 [task.spawn]
       10 DUPCLOSURE                       R1 K7 [PROTO_1]
       11 CAPTURE                          UPVAL U0
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETIMPORT                        R0 K9 [task.delay]
       16 LOADN                            R1 10
       17 GETUPVAL                         R2 2
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["HotModuleReplacement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableHotModuleReplacement"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [game]
       23 LOADK                            R4 K12 ["PlacesService"]
       24 NAMECALL                         R2 R2 K13 ["GetService"]
       26 CALL                             R2 2 1
       27 LOADNIL                          R3
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          REF R3
       30 GETIMPORT                        R5 K15 [plugin]
       32 LOADK                            R7 K16 ["HardReload"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          REF R3
       36 CAPTURE                          VAL R4
       37 NAMECALL                         R5 R5 K17 ["OnInvoke"]
       39 CALL                             R5 3 0
       40 GETIMPORT                        R5 K15 [plugin]
       42 LOADK                            R7 K18 ["PlayStarted"]
       43 MOVE                             R8 R4
       44 NAMECALL                         R5 R5 K17 ["OnInvoke"]
       46 CALL                             R5 3 0
       47 CLOSEUPVALS                      R3
       48 RETURN                           R0 0
