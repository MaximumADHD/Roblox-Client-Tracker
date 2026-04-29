PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETIMPORT                        R3 K2 [require]
        6 GETIMPORT                        R5 K4 [script]
        8 GETTABLEKS                       R4 R5 K5 ["PrimitiveGenHost"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R2 R3 K6 ["bridge"]
       13 LOADNIL                          R3
       14 GETTABLEKS                       R4 R1 K7 ["guest"]
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETIMPORT                        R4 K2 [require]
       19 GETIMPORT                        R6 K4 [script]
       21 GETTABLEKS                       R5 R6 K8 ["PrimitiveGenGuest"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R3 R4 K6 ["bridge"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K9 ["prepareBridges"]
       29 MOVE                             R5 R0
       30 MOVE                             R6 R2
       31 MOVE                             R7 R3
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

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
       16 JUMPIFNOT                        R7 ; [+9]
       17 GETIMPORT                        R7 K7 [require]
       19 GETIMPORT                        R9 K9 [script]
       21 GETTABLEKS                       R8 R9 K10 ["PrimitiveGenHost"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R6 R7 K11 ["bridge"]
       26 LOADNIL                          R7
       27 GETTABLEKS                       R8 R5 K4 ["guest"]
       29 JUMPIFNOT                        R8 ; [+9]
       30 GETIMPORT                        R8 K7 [require]
       32 GETIMPORT                        R10 K9 [script]
       34 GETTABLEKS                       R9 R10 K12 ["PrimitiveGenGuest"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R7 R8 K11 ["bridge"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R8 R9 K13 ["prepareBridges"]
       42 MOVE                             R9 R0
       43 MOVE                             R10 R6
       44 MOVE                             R11 R7
       45 CALL                             R8 3 1
       46 MOVE                             R4 R8
       47 JUMPIF                           R3 ; [+2]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETIMPORT                        R5 K7 [require]
       52 GETIMPORT                        R7 K9 [script]
       54 GETTABLEKS                       R6 R7 K12 ["PrimitiveGenGuest"]
       56 CALL                             R5 1 1
       57 GETTABLEKS                       R6 R5 K14 ["setupGuest"]
       59 MOVE                             R7 R0
       60 MOVE                             R8 R4
       61 CALL                             R6 2 -1
       62 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K8 ["PrimitiveGenBridge"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["PrimitiveGenBridgeTypes"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 RETURN                           R5 1
