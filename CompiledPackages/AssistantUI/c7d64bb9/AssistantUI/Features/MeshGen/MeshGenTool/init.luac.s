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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantUseNewMeshGenTool must be enabled to use the new MeshGen tool"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["networking"]
       10 NAMECALL                         R2 R1 K4 ["IsHost"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R3 R1 K5 ["IsGuest"]
       15 CALL                             R3 1 1
       16 DUPTABLE                         R5 K8 [{"host", "guest"}]
       17 SETTABLEKS                       R2 R5 K6 ["host"]
       19 SETTABLEKS                       R3 R5 K7 ["guest"]
       21 LOADNIL                          R6
       22 GETTABLEKS                       R7 R5 K6 ["host"]
       24 JUMPIFNOT                        R7 ; [+10]
       25 GETIMPORT                        R7 K10 [require]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K11 ["MeshGenTool"]
       30 GETTABLEKS                       R8 R8 K12 ["MeshGenHost"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R6 R7 K13 ["bridge"]
       35 LOADNIL                          R7
       36 GETTABLEKS                       R8 R5 K7 ["guest"]
       38 JUMPIFNOT                        R8 ; [+10]
       39 GETIMPORT                        R8 K10 [require]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K11 ["MeshGenTool"]
       44 GETTABLEKS                       R9 R9 K14 ["MeshGenGuest"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R7 R8 K13 ["bridge"]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K15 ["prepareBridges"]
       52 MOVE                             R9 R0
       53 MOVE                             R10 R6
       54 MOVE                             R11 R7
       55 CALL                             R8 3 1
       56 MOVE                             R4 R8
       57 JUMPIF                           R3 ; [+2]
       58 LOADNIL                          R5
       59 RETURN                           R5 1
       60 GETIMPORT                        R5 K10 [require]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K11 ["MeshGenTool"]
       65 GETTABLEKS                       R6 R6 K14 ["MeshGenGuest"]
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R5 K16 ["setupGuest"]
       70 MOVE                             R7 R0
       71 MOVE                             R8 R4
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

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
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Flags"]
       38 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantUseNewMeshGenTool"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K14 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 DUPCLOSURE                       R7 K15 [PROTO_1]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 RETURN                           R7 1
