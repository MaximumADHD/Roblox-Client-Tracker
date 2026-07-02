PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsGuest"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["IsHost"]
        7 CALL                             R3 1 1
        8 LOADNIL                          R4
        9 JUMPIFNOT                        R2 ; [+2]
       10 NEWTABLE                         R4 0 0
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETIMPORT                        R7 K4 [require]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K5 ["Actions"]
       20 GETTABLEKS                       R8 R8 K6 ["ReadFileActions"]
       22 CALL                             R7 1 1
       23 MOVE                             R5 R7
       24 GETTABLEKS                       R6 R5 K7 ["bridge"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K8 ["prepareBridges"]
       29 MOVE                             R8 R0
       30 MOVE                             R9 R4
       31 MOVE                             R10 R6
       32 CALL                             R7 3 1
       33 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["BridgeMetaTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["ReadFileBridge"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
