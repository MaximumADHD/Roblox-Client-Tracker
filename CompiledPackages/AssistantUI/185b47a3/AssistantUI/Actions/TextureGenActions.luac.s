PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildServices"]
        3 DUPTABLE                         R2 K2 [{"environment"}]
        4 GETTABLEKS                       R3 R0 K3 ["initArgs"]
        6 GETTABLEKS                       R3 R3 K1 ["environment"]
        8 SETTABLEKS                       R3 R2 K1 ["environment"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOrCreate"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Scope"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K4 [table.create]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K5 ["PreviewCarousel"]
       13 GETTABLEKS                       R3 R3 K6 ["IMAGE_COUNT"]
       15 LOADK                            R4 K7 [""]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K8 ["Field"]
       20 GETTABLEKS                       R5 R5 K9 ["Images"]
       22 GETUPVAL                         R6 3
       23 MOVE                             R8 R2
       24 NAMECALL                         R6 R6 K10 ["JSONEncode"]
       26 CALL                             R6 2 -1
       27 NAMECALL                         R3 R1 K11 ["Set"]
       29 CALL                             R3 -1 0
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U3
       35 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["hintImage"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R5 0
        6 GETIMPORT                        R7 K3 [buffer.fromstring]
        8 GETTABLEKS                       R8 R2 K4 ["data"]
       10 CALL                             R7 1 -1
       11 NAMECALL                         R5 R5 K5 ["Base64Decode"]
       13 CALL                             R5 -1 1
       14 MOVE                             R3 R5
       15 GETTABLEKS                       R4 R2 K6 ["mimeType"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["TextureGenOps"]
       20 GETTABLEKS                       R5 R5 K8 ["generateTextureAsync"]
       22 DUPTABLE                         R6 K13 [{"requestId", "textPrompt", "selectedUniqueId", "hintImage", "hintImageContentType"}]
       23 GETTABLEKS                       R7 R0 K9 ["requestId"]
       25 SETTABLEKS                       R7 R6 K9 ["requestId"]
       27 GETTABLEKS                       R7 R0 K10 ["textPrompt"]
       29 SETTABLEKS                       R7 R6 K10 ["textPrompt"]
       31 GETTABLEKS                       R7 R0 K11 ["selectedUniqueId"]
       33 SETTABLEKS                       R7 R6 K11 ["selectedUniqueId"]
       35 SETTABLEKS                       R3 R6 K0 ["hintImage"]
       37 SETTABLEKS                       R4 R6 K12 ["hintImageContentType"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K14 ["buildServices"]
       42 DUPTABLE                         R8 K16 [{"environment"}]
       43 GETTABLEKS                       R9 R1 K17 ["initArgs"]
       45 GETTABLEKS                       R9 R9 K15 ["environment"]
       47 SETTABLEKS                       R9 R8 K15 ["environment"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 3
       51 DUPTABLE                         R9 K19 [{"setPreviewImage"}]
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R11 R0 K9 ["requestId"]
       55 CALL                             R10 1 1
       56 SETTABLEKS                       R10 R9 K18 ["setPreviewImage"]
       58 CALL                             R5 4 -1
       59 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["cancelGenerationAsync"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["insertTexturedModelAsync"]
        5 DUPTABLE                         R3 K6 [{["requestId"], ["replaceInPlace"] = True, ["useSourceMeshCFrameForPivot"]}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantTextureGenUseSourceMeshCFrame"]
       13 SETTABLEKS                       R4 R3 K5 ["useSourceMeshCFrameForPivot"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K8 ["buildServices"]
       18 DUPTABLE                         R5 K10 [{"environment"}]
       19 GETTABLEKS                       R6 R1 K11 ["initArgs"]
       21 GETTABLEKS                       R6 R6 K9 ["environment"]
       23 SETTABLEKS                       R6 R5 K9 ["environment"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 3
       27 CALL                             R2 3 0
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Selection"]
        3 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildServices"]
        3 DUPTABLE                         R3 K2 [{"environment"}]
        4 GETTABLEKS                       R4 R1 K3 ["initArgs"]
        6 GETTABLEKS                       R4 R4 K1 ["environment"]
        8 SETTABLEKS                       R4 R3 K1 ["environment"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K4 ["instances"]
       13 GETTABLEKS                       R3 R3 K5 ["getInstanceFromUniqueId"]
       15 GETTABLEKS                       R4 R0 K6 ["uniqueId"]
       17 CALL                             R3 1 1
       18 LOADB                            R4 0
       19 JUMPIFEQKNIL                     R3 ; [+8]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["Selection"]
       24 GETTABLEKS                       R4 R4 K8 ["isTextureableInstance"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R2 R2 K1 ["captureSourceInstanceImageAsync"]
        5 DUPTABLE                         R3 K3 [{"selectedUniqueId"}]
        6 GETTABLEKS                       R4 R0 K2 ["selectedUniqueId"]
        8 SETTABLEKS                       R4 R3 K2 ["selectedUniqueId"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R1
       12 CALL                             R4 1 -1
       13 CALL                             R2 -1 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
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
       26 GETTABLEKS                       R5 R0 K12 ["Parent"]
       28 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R0 K14 ["Features"]
       35 GETTABLEKS                       R6 R6 K15 ["Gen3dUtils"]
       37 GETTABLEKS                       R6 R6 K16 ["Gen3dServicesBuilder"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K17 ["Util"]
       44 GETTABLEKS                       R7 R7 K18 ["InstanceChannel"]
       46 GETTABLEKS                       R7 R7 K18 ["InstanceChannel"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K19 ["Bridges"]
       53 GETTABLEKS                       R8 R8 K20 ["createTextureGenBridge"]
       55 GETTABLEKS                       R8 R8 K21 ["TextureGenBridgeTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K22 ["TextureGen"]
       64 GETTABLEKS                       R9 R9 K23 ["TextureGenChannel"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Util"]
       71 GETTABLEKS                       R10 R10 K22 ["TextureGen"]
       73 GETTABLEKS                       R10 R10 K24 ["TextureGenTypes"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R4 K25 ["createGenerationSessions"]
       78 CALL                             R10 0 1
       79 DUPCLOSURE                       R11 K26 [PROTO_0]
       80 CAPTURE                          VAL R5
       81 DUPCLOSURE                       R12 K27 [PROTO_2]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R13 K28 [PROTO_3]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R12
       92 DUPCLOSURE                       R14 K29 [PROTO_4]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 DUPCLOSURE                       R15 K30 [PROTO_5]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R10
      100 DUPCLOSURE                       R16 K31 [PROTO_6]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R11
      103 DUPCLOSURE                       R17 K32 [PROTO_7]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 DUPCLOSURE                       R18 K33 [PROTO_8]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R11
      109 DUPTABLE                         R19 K40 [{"generateTextureAsync", "cancelGenerationAsync", "insertTexturedModelAsync", "getSelectedMeshRef", "isTextureableInstance", "captureSourceInstanceImageAsync"}]
      110 SETTABLEKS                       R13 R19 K34 ["generateTextureAsync"]
      112 SETTABLEKS                       R14 R19 K35 ["cancelGenerationAsync"]
      114 SETTABLEKS                       R15 R19 K36 ["insertTexturedModelAsync"]
      116 SETTABLEKS                       R16 R19 K37 ["getSelectedMeshRef"]
      118 SETTABLEKS                       R17 R19 K38 ["isTextureableInstance"]
      120 SETTABLEKS                       R18 R19 K39 ["captureSourceInstanceImageAsync"]
      122 DUPTABLE                         R20 K42 [{"bridge"}]
      123 SETTABLEKS                       R19 R20 K41 ["bridge"]
      125 RETURN                           R20 1
