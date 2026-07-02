PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsGuest"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["IsHost"]
        7 CALL                             R3 1 1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 JUMPIFNOT                        R2 ; [+11]
       11 GETIMPORT                        R6 K4 [require]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K5 ["MeshGenTool"]
       16 GETTABLEKS                       R7 R7 K6 ["MeshGenGuest"]
       18 CALL                             R6 1 1
       19 MOVE                             R4 R6
       20 GETTABLEKS                       R5 R4 K7 ["bridge"]
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 JUMPIFNOT                        R3 ; [+11]
       25 GETIMPORT                        R8 K4 [require]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K5 ["MeshGenTool"]
       30 GETTABLEKS                       R9 R9 K8 ["MeshGenHost"]
       32 CALL                             R8 1 1
       33 MOVE                             R6 R8
       34 GETTABLEKS                       R7 R6 K7 ["bridge"]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K9 ["prepareBridges"]
       39 MOVE                             R9 R0
       40 MOVE                             R10 R5
       41 MOVE                             R11 R7
       42 CALL                             R8 3 1
       43 JUMPIF                           R2 ; [+2]
       44 LOADNIL                          R9
       45 RETURN                           R9 1
       46 GETTABLEKS                       R9 R4 K10 ["setupGuest"]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 -1
       50 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R2 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 LOADK                            R4 K8 ["MeshGen"]
       17 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K9 ["MeshGenTool"]
       24 GETTABLEKS                       R4 R4 K10 ["MeshGenBridge"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
