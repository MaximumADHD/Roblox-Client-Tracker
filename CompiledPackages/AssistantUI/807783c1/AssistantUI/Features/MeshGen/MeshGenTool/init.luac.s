PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETIMPORT                        R3 K2 [require]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["MeshGenTool"]
        9 GETTABLEKS                       R4 R4 K4 ["MeshGenHost"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K5 ["bridge"]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R1 K6 ["guest"]
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETIMPORT                        R4 K2 [require]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["MeshGenTool"]
       23 GETTABLEKS                       R5 R5 K7 ["MeshGenGuest"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R3 R4 K5 ["bridge"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["prepareBridges"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 MOVE                             R7 R3
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsHost"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["IsGuest"]
        7 CALL                             R3 1 1
        8 DUPTABLE                         R5 K5 [{"host", "guest"}]
        9 SETTABLEKS                       R2 R5 K3 ["host"]
       11 SETTABLEKS                       R3 R5 K4 ["guest"]
       13 LOADNIL                          R6
       14 GETTABLEKS                       R7 R5 K3 ["host"]
       16 JUMPIFNOT                        R7 ; [+10]
       17 GETIMPORT                        R7 K7 [require]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K8 ["MeshGenTool"]
       22 GETTABLEKS                       R8 R8 K9 ["MeshGenHost"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R6 R7 K10 ["bridge"]
       27 LOADNIL                          R7
       28 GETTABLEKS                       R8 R5 K4 ["guest"]
       30 JUMPIFNOT                        R8 ; [+10]
       31 GETIMPORT                        R8 K7 [require]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K8 ["MeshGenTool"]
       36 GETTABLEKS                       R9 R9 K11 ["MeshGenGuest"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R7 R8 K10 ["bridge"]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K12 ["prepareBridges"]
       44 MOVE                             R9 R0
       45 MOVE                             R10 R6
       46 MOVE                             R11 R7
       47 CALL                             R8 3 1
       48 MOVE                             R4 R8
       49 JUMPIF                           R3 ; [+2]
       50 LOADNIL                          R5
       51 RETURN                           R5 1
       52 GETIMPORT                        R5 K7 [require]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K8 ["MeshGenTool"]
       57 GETTABLEKS                       R6 R6 K11 ["MeshGenGuest"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R6 R5 K13 ["setupGuest"]
       62 MOVE                             R7 R0
       63 MOVE                             R8 R4
       64 CALL                             R6 2 -1
       65 RETURN                           R6 -1

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
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R2 K9 ["MeshGenTool"]
       31 GETTABLEKS                       R5 R5 K11 ["MeshGenBridgeTypes"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 DUPCLOSURE                       R6 K13 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
