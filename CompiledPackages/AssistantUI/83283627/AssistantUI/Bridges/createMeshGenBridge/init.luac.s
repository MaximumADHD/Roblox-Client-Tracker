PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R1 K1 ["IsGuest"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 LOADNIL                          R3
       10 NAMECALL                         R4 R1 K2 ["IsHost"]
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETIMPORT                        R4 K4 [require]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["Actions"]
       19 GETTABLEKS                       R5 R5 K6 ["MeshGenActions"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R3 R4 K7 ["bridge"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["BridgeMetaTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Generated"]
       18 GETTABLEKS                       R3 R3 K6 ["Bridges"]
       20 GETTABLEKS                       R3 R3 K9 ["MeshGenBridge"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
