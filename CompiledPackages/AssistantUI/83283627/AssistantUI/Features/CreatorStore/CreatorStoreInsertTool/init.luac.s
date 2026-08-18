PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsGuest"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["IsHost"]
        7 CALL                             R3 1 1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETIMPORT                        R6 K4 [require]
       13 GETIMPORT                        R7 K6 [script]
       15 GETTABLEKS                       R7 R7 K7 ["DEPRECATED_CreatorStoreInsertGuest"]
       17 CALL                             R6 1 1
       18 MOVE                             R4 R6
       19 GETTABLEKS                       R5 R4 K8 ["bridge"]
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 JUMPIFNOT                        R3 ; [+10]
       24 GETIMPORT                        R8 K4 [require]
       26 GETIMPORT                        R9 K6 [script]
       28 GETTABLEKS                       R9 R9 K9 ["DEPRECATED_CreatorStoreInsertHost"]
       30 CALL                             R8 1 1
       31 MOVE                             R6 R8
       32 GETTABLEKS                       R7 R6 K8 ["bridge"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K10 ["prepareBridges"]
       37 MOVE                             R9 R0
       38 MOVE                             R10 R5
       39 MOVE                             R11 R7
       40 CALL                             R8 3 1
       41 JUMPIF                           R2 ; [+2]
       42 LOADNIL                          R9
       43 RETURN                           R9 1
       44 GETTABLEKS                       R9 R4 K11 ["setupGuest"]
       46 MOVE                             R10 R8
       47 CALL                             R9 1 -1
       48 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Generated"]
       11 GETTABLEKS                       R2 R2 K7 ["Bridges"]
       13 GETTABLEKS                       R2 R2 K8 ["CreatorStoreInsertBridge"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Tools"]
       20 GETTABLEKS                       R3 R3 K10 ["ToolTypes"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
