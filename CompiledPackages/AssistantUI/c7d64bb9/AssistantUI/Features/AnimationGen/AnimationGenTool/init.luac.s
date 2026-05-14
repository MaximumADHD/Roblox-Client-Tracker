PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+19]
        4 GETIMPORT                        R3 K2 [require]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["AnimationGenTool"]
        9 GETTABLEKS                       R4 R4 K4 ["AnimationGenHost"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K5 ["bridge"]
       14 GETTABLEKS                       R4 R0 K6 ["networking"]
       16 GETTABLEKS                       R4 R4 K7 ["Destroying"]
       18 GETTABLEKS                       R6 R3 K8 ["destroy"]
       20 NAMECALL                         R4 R4 K9 ["Once"]
       22 CALL                             R4 2 0
       23 LOADNIL                          R3
       24 GETTABLEKS                       R4 R1 K10 ["guest"]
       26 JUMPIFNOT                        R4 ; [+10]
       27 GETIMPORT                        R4 K2 [require]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K3 ["AnimationGenTool"]
       32 GETTABLEKS                       R5 R5 K11 ["AnimationGenGuest"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R3 R4 K5 ["bridge"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K12 ["prepareBridges"]
       40 MOVE                             R5 R0
       41 MOVE                             R6 R2
       42 MOVE                             R7 R3
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 NAMECALL                         R2 R1 K1 ["IsHost"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["IsGuest"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K5 [{"host", "guest"}]
       11 SETTABLEKS                       R2 R6 K3 ["host"]
       13 SETTABLEKS                       R3 R6 K4 ["guest"]
       15 CALL                             R4 2 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R5
       18 RETURN                           R5 1
       19 GETIMPORT                        R5 K7 [require]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K8 ["AnimationGenTool"]
       24 GETTABLEKS                       R6 R6 K9 ["AnimationGenGuest"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K10 ["setupGuest"]
       29 MOVE                             R7 R0
       30 MOVE                             R8 R4
       31 CALL                             R6 2 -1
       32 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AnimationGenTool"]
       17 GETTABLEKS                       R3 R3 K8 ["AnimationGenBridge"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K7 ["AnimationGenTool"]
       24 GETTABLEKS                       R4 R4 K9 ["AnimationGenBridgeTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Tools"]
       31 GETTABLEKS                       R5 R5 K11 ["ToolTypes"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R6 K13 [PROTO_1]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 RETURN                           R6 1
