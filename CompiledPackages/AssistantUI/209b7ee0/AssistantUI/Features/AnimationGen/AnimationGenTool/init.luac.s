PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETIMPORT                        R3 K2 [require]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["AnimationGenTool"]
        9 GETTABLEKS                       R4 R5 K4 ["AnimationGenHost"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K5 ["bridge"]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R1 K6 ["guest"]
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETIMPORT                        R4 K2 [require]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["AnimationGenTool"]
       23 GETTABLEKS                       R5 R6 K7 ["AnimationGenGuest"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R3 R4 K5 ["bridge"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K8 ["prepareBridges"]
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
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K8 ["AnimationGenTool"]
       22 GETTABLEKS                       R8 R9 K9 ["AnimationGenHost"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R6 R7 K10 ["bridge"]
       27 LOADNIL                          R7
       28 GETTABLEKS                       R8 R5 K4 ["guest"]
       30 JUMPIFNOT                        R8 ; [+10]
       31 GETIMPORT                        R8 K7 [require]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K8 ["AnimationGenTool"]
       36 GETTABLEKS                       R9 R10 K11 ["AnimationGenGuest"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R7 R8 K10 ["bridge"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K12 ["prepareBridges"]
       44 MOVE                             R9 R0
       45 MOVE                             R10 R6
       46 MOVE                             R11 R7
       47 CALL                             R8 3 1
       48 MOVE                             R4 R8
       49 JUMPIF                           R3 ; [+2]
       50 LOADNIL                          R5
       51 RETURN                           R5 1
       52 GETIMPORT                        R5 K7 [require]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K8 ["AnimationGenTool"]
       57 GETTABLEKS                       R6 R7 K11 ["AnimationGenGuest"]
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
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R1 K7 ["AnimationGenTool"]
       17 GETTABLEKS                       R3 R4 K8 ["AnimationGenBridge"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R5 R1 K7 ["AnimationGenTool"]
       24 GETTABLEKS                       R4 R5 K9 ["AnimationGenBridgeTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Tools"]
       31 GETTABLEKS                       R5 R6 K11 ["ToolTypes"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R6 K13 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R6 1
