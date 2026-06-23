PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R1 K1 ["IsHost"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETIMPORT                        R3 K3 [require]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["Actions"]
       12 GETTABLEKS                       R4 R4 K5 ["ReadFileActions"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R2 R3 K6 ["bridge"]
       17 LOADNIL                          R3
       18 NAMECALL                         R4 R1 K7 ["IsGuest"]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 NEWTABLE                         R3 0 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K8 ["prepareBridges"]
       27 MOVE                             R5 R0
       28 MOVE                             R6 R2
       29 MOVE                             R7 R3
       30 CALL                             R4 3 -1
       31 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["ReadFileBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["ReadFileBridgeTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 DUPTABLE                         R4 K10 [{"createBridge"}]
       25 SETTABLEKS                       R3 R4 K9 ["createBridge"]
       27 RETURN                           R4 1
