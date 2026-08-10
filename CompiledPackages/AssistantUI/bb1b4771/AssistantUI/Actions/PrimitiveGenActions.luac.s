PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["Field"]
        6 GETTABLEKS                       R4 R4 K1 ["Images"]
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R7 0
       10 NAMECALL                         R5 R5 K2 ["JSONEncode"]
       12 CALL                             R5 2 -1
       13 NAMECALL                         R2 R2 K3 ["Set"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getOrCreate"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K4 [table.create]
       10 GETUPVAL                         R4 2
       11 LOADK                            R5 K5 [""]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K6 ["Field"]
       16 GETTABLEKS                       R6 R6 K7 ["Images"]
       18 GETUPVAL                         R7 3
       19 MOVE                             R9 R3
       20 NAMECALL                         R7 R7 K8 ["JSONEncode"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R4 R2 K9 ["Set"]
       25 CALL                             R4 -1 0
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K10 ["capturePreviewImages"]
       29 MOVE                             R5 R1
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U3
       35 GETUPVAL                         R7 5
       36 CALL                             R4 3 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["hasLiveGeneration"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["tag"]
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R5 R0 K2 ["tag"]
       16 NAMECALL                         R3 R3 K3 ["GetTagged"]
       18 CALL                             R3 2 1
       19 GETTABLEN                        R4 R3 1
       20 JUMPIF                           R4 ; [+11]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETIMPORT                        R5 K6 [warn]
       27 LOADK                            R6 K7 ["[PrimitiveGen] capturePreviewImagesAsync: no instance tagged"]
       28 GETTABLEKS                       R7 R0 K2 ["tag"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 3
       33 MOVE                             R6 R2
       34 MOVE                             R7 R4
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Flags"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Util"]
       28 GETTABLEKS                       R5 R5 K13 ["InstanceChannel"]
       30 GETTABLEKS                       R5 R5 K13 ["InstanceChannel"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Bridges"]
       37 GETTABLEKS                       R6 R6 K15 ["createPrimitiveGenBridge"]
       39 GETTABLEKS                       R6 R6 K16 ["PrimitiveGenActionsBridgeTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["PrimitiveGen"]
       48 GETTABLEKS                       R7 R7 K18 ["PrimitiveGenChannel"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R0 K19 ["Features"]
       55 GETTABLEKS                       R8 R8 K20 ["Gen3dUtils"]
       57 GETTABLEKS                       R8 R8 K21 ["ViewportPreviewUtils"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R6 K22 ["PREVIEW_VIEW_ANGLES"]
       62 GETTABLEKS                       R9 R6 K23 ["PREVIEW_IMAGE_COUNT"]
       64 DUPCLOSURE                       R10 K24 [PROTO_1]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 DUPCLOSURE                       R11 K25 [PROTO_2]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 DUPTABLE                         R12 K27 [{"capturePreviewImagesAsync"}]
       77 SETTABLEKS                       R11 R12 K26 ["capturePreviewImagesAsync"]
       79 DUPTABLE                         R13 K29 [{"bridge"}]
       80 SETTABLEKS                       R12 R13 K28 ["bridge"]
       82 RETURN                           R13 1
