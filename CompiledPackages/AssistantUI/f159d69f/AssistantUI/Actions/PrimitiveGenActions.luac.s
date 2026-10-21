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
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["hasLiveGeneration"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K2 ["tag"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R4 R0 K2 ["tag"]
       16 NAMECALL                         R2 R2 K3 ["GetTagged"]
       18 CALL                             R2 2 1
       19 GETTABLEN                        R3 R2 1
       20 JUMPIF                           R3 ; [+11]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K4 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R4 ; [+6]
       25 GETIMPORT                        R4 K6 [warn]
       27 LOADK                            R5 K7 ["[PrimitiveGen] capturePreviewImagesAsync: no instance tagged"]
       28 GETTABLEKS                       R6 R0 K2 ["tag"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R4 3
       33 MOVE                             R5 R1
       34 MOVE                             R6 R3
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["capturePreviewImages"]
       11 DUPCLOSURE                       R8 K2 [PROTO_4]
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K4 ["Add"]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R4 R1 K5 ["Destroying"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R4 R4 K6 ["Once"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

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
       19 GETTABLEKS                       R3 R0 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R3 K12 ["Bin"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K11 [require]
       28 GETTABLEKS                       R6 R3 K13 ["DMNetworking"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K11 [require]
       33 GETTABLEKS                       R7 R0 K14 ["Guest"]
       35 GETTABLEKS                       R7 R7 K15 ["Environment"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K11 [require]
       40 GETTABLEKS                       R8 R0 K16 ["Flags"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K11 [require]
       45 GETTABLEKS                       R9 R0 K17 ["Util"]
       47 GETTABLEKS                       R9 R9 K18 ["InstanceChannel"]
       49 GETTABLEKS                       R9 R9 K18 ["InstanceChannel"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K11 [require]
       54 GETTABLEKS                       R10 R0 K19 ["Bridges"]
       56 GETTABLEKS                       R10 R10 K20 ["createPrimitiveGenBridge"]
       58 GETTABLEKS                       R10 R10 K21 ["PrimitiveGenActionsBridgeTypes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K11 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Util"]
       65 GETTABLEKS                       R11 R11 K22 ["PrimitiveGen"]
       67 GETTABLEKS                       R11 R11 K23 ["PrimitiveGenChannel"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K11 [require]
       72 GETTABLEKS                       R12 R0 K24 ["Remotes"]
       74 GETTABLEKS                       R12 R12 K25 ["PrimitiveGenRemotes"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K11 [require]
       79 GETTABLEKS                       R13 R0 K17 ["Util"]
       81 GETTABLEKS                       R13 R13 K26 ["Gen3dUtils"]
       83 GETTABLEKS                       R13 R13 K27 ["ViewportPreviewUtils"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R10 K28 ["PREVIEW_VIEW_ANGLES"]
       88 GETTABLEKS                       R14 R10 K29 ["PREVIEW_IMAGE_COUNT"]
       90 DUPCLOSURE                       R15 K30 [PROTO_1]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R13
       97 DUPCLOSURE                       R16 K31 [PROTO_2]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R15
      102 DUPTABLE                         R17 K33 [{"capturePreviewImagesAsync"}]
      103 DUPCLOSURE                       R18 K34 [PROTO_3]
      104 CAPTURE                          VAL R16
      105 SETTABLEKS                       R18 R17 K32 ["capturePreviewImagesAsync"]
      107 DUPCLOSURE                       R18 K35 [PROTO_6]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R16
      111 DUPTABLE                         R19 K38 [{"bridge", "connectRemotes"}]
      112 SETTABLEKS                       R17 R19 K36 ["bridge"]
      114 SETTABLEKS                       R18 R19 K37 ["connectRemotes"]
      116 RETURN                           R19 1
