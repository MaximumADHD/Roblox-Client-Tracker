PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildServices"]
        3 DUPTABLE                         R2 K2 [{"environment"}]
        4 SETTABLEKS                       R0 R2 K1 ["environment"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

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
       17 LOADNIL                          R5
       18 GETTABLEKS                       R6 R0 K7 ["selectedUniqueId"]
       20 JUMPIFEQKNIL                     R6 ; [+21]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K8 ["FFlagAssistantTextureGenMcpPreviewReference"]
       25 JUMPIFNOT                        R7 ; [+6]
       26 GETTABLEKS                       R8 R0 K9 ["texturePreviewReference"]
       28 JUMPIFNOTEQKNIL                  R8 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 GETTABLEKS                       R8 R0 K10 ["cameraExtrinsic"]
       34 JUMPIFNOTEQKNIL                  R8 ; [+2]
       36 JUMPIFNOT                        R7 ; [+2]
       37 GETUPVAL                         R8 2
       38 GETTABLE                         R5 R8 R6
       39 GETUPVAL                         R8 2
       40 LOADNIL                          R9
       41 SETTABLE                         R9 R8 R6
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K11 ["TextureGenOps"]
       45 GETTABLEKS                       R7 R7 K12 ["generateTextureAsync"]
       47 DUPTABLE                         R8 K23 [{"requestId", "textPrompt", "selectedUniqueId", "hintImage", "hintImageContentType", "model", "telemetryContext", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference", "autoSelectView", "cachedExport", "cachedAssetId", "cachedAssetScale"}]
       48 GETTABLEKS                       R9 R0 K13 ["requestId"]
       50 SETTABLEKS                       R9 R8 K13 ["requestId"]
       52 GETTABLEKS                       R9 R0 K14 ["textPrompt"]
       54 SETTABLEKS                       R9 R8 K14 ["textPrompt"]
       56 GETTABLEKS                       R9 R0 K7 ["selectedUniqueId"]
       58 SETTABLEKS                       R9 R8 K7 ["selectedUniqueId"]
       60 SETTABLEKS                       R3 R8 K0 ["hintImage"]
       62 SETTABLEKS                       R4 R8 K15 ["hintImageContentType"]
       64 GETTABLEKS                       R9 R0 K16 ["model"]
       66 SETTABLEKS                       R9 R8 K16 ["model"]
       68 DUPTABLE                         R9 K27 [{"surface", "isManualRun", "conversationId"}]
       69 GETUPVAL                         R10 3
       70 GETTABLEKS                       R10 R10 K28 ["Gen3dTypes"]
       72 GETTABLEKS                       R10 R10 K29 ["Enums"]
       74 GETTABLEKS                       R10 R10 K30 ["TextureGenSurface"]
       76 GETTABLEKS                       R10 R10 K31 ["Assistant"]
       78 SETTABLEKS                       R10 R9 K24 ["surface"]
       80 GETTABLEKS                       R10 R0 K25 ["isManualRun"]
       82 SETTABLEKS                       R10 R9 K25 ["isManualRun"]
       84 GETTABLEKS                       R10 R0 K26 ["conversationId"]
       86 SETTABLEKS                       R10 R9 K26 ["conversationId"]
       88 SETTABLEKS                       R9 R8 K17 ["telemetryContext"]
       90 GETTABLEKS                       R9 R0 K10 ["cameraExtrinsic"]
       92 SETTABLEKS                       R9 R8 K10 ["cameraExtrinsic"]
       94 GETTABLEKS                       R9 R0 K18 ["cameraIntrinsic"]
       96 SETTABLEKS                       R9 R8 K18 ["cameraIntrinsic"]
       98 GETTABLEKS                       R9 R0 K9 ["texturePreviewReference"]
      100 SETTABLEKS                       R9 R8 K9 ["texturePreviewReference"]
      102 GETTABLEKS                       R9 R0 K19 ["autoSelectView"]
      104 SETTABLEKS                       R9 R8 K19 ["autoSelectView"]
      106 JUMPIFNOT                        R5 ; [+3]
      107 GETTABLEKS                       R9 R5 K20 ["cachedExport"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K20 ["cachedExport"]
      113 JUMPIFNOT                        R5 ; [+3]
      114 GETTABLEKS                       R9 R5 K32 ["assetId"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R9
      118 SETTABLEKS                       R9 R8 K21 ["cachedAssetId"]
      120 JUMPIFNOT                        R5 ; [+3]
      121 GETTABLEKS                       R9 R5 K33 ["assetScale"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R9
      125 SETTABLEKS                       R9 R8 K22 ["cachedAssetScale"]
      127 GETUPVAL                         R9 4
      128 GETTABLEKS                       R9 R9 K34 ["buildServices"]
      130 DUPTABLE                         R10 K36 [{"environment"}]
      131 SETTABLEKS                       R1 R10 K35 ["environment"]
      133 CALL                             R9 1 1
      134 GETUPVAL                         R10 5
      135 DUPTABLE                         R11 K38 [{"setPreviewImage"}]
      136 GETUPVAL                         R12 6
      137 GETTABLEKS                       R13 R0 K13 ["requestId"]
      139 CALL                             R12 1 1
      140 SETTABLEKS                       R12 R11 K37 ["setPreviewImage"]
      142 CALL                             R7 4 -1
      143 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 0
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
       19 SETTABLEKS                       R1 R5 K9 ["environment"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 3
       23 CALL                             R2 3 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K11 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+12]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K0 ["TextureGenOps"]
       32 GETTABLEKS                       R2 R2 K12 ["releaseRevertSnapshot"]
       34 DUPTABLE                         R3 K13 [{"requestId"}]
       35 GETTABLEKS                       R4 R0 K2 ["requestId"]
       37 SETTABLEKS                       R4 R3 K2 ["requestId"]
       39 GETUPVAL                         R4 3
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

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
        4 SETTABLEKS                       R1 R3 K1 ["environment"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K3 ["instances"]
        9 GETTABLEKS                       R3 R3 K4 ["getInstanceFromUniqueId"]
       11 GETTABLEKS                       R4 R0 K5 ["uniqueId"]
       13 CALL                             R3 1 1
       14 LOADB                            R4 0
       15 JUMPIFEQKNIL                     R3 ; [+8]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["Selection"]
       20 GETTABLEKS                       R4 R4 K7 ["isTextureableInstance"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 RETURN                           R4 1

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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildServices"]
        3 DUPTABLE                         R3 K2 [{"environment"}]
        4 SETTABLEKS                       R1 R3 K1 ["environment"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K3 ["instances"]
        9 GETTABLEKS                       R3 R3 K4 ["getInstanceFromUniqueId"]
       11 GETTABLEKS                       R4 R0 K5 ["selectedUniqueId"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+8]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["Selection"]
       18 GETTABLEKS                       R4 R4 K7 ["isTextureableInstance"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 JUMPIF                           R4 ; [+2]
       23 LOADNIL                          R4
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K8 ["TextureGenOps"]
       28 GETTABLEKS                       R4 R4 K9 ["captureSourceInstanceImageAsync"]
       30 DUPTABLE                         R5 K10 [{"selectedUniqueId"}]
       31 GETTABLEKS                       R6 R0 K5 ["selectedUniqueId"]
       33 SETTABLEKS                       R6 R5 K5 ["selectedUniqueId"]
       35 MOVE                             R6 R2
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K11 ["TexturePreviewSourceOps"]
       40 GETTABLEKS                       R5 R5 K12 ["prepareSourceAsync"]
       42 MOVE                             R6 R3
       43 GETTABLEKS                       R7 R2 K13 ["meshGen"]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R7 R0 K5 ["selectedUniqueId"]
       49 SETTABLE                         R5 R6 R7
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K11 ["TexturePreviewSourceOps"]
       55 GETTABLEKS                       R8 R8 K14 ["getStudioCamera"]
       57 CALL                             R8 0 1
       58 JUMPIFEQKNIL                     R8 ; [+11]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K11 ["TexturePreviewSourceOps"]
       63 GETTABLEKS                       R9 R9 K15 ["computeStudioCameraAsync"]
       65 MOVE                             R10 R3
       66 MOVE                             R11 R8
       67 CALL                             R9 2 2
       68 MOVE                             R6 R9
       69 MOVE                             R7 R10
       70 DUPTABLE                         R9 K21 [{"seedImageBase64", "glbBase64", "assetId", "cameraExtrinsic", "cameraIntrinsic"}]
       71 JUMPIFNOT                        R4 ; [+3]
       72 GETTABLEKS                       R10 R4 K22 ["imageBase64"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K16 ["seedImageBase64"]
       78 GETTABLEKS                       R11 R5 K23 ["glb"]
       80 JUMPIFNOT                        R11 ; [+13]
       81 GETIMPORT                        R10 K26 [buffer.tostring]
       83 GETUPVAL                         R11 3
       84 GETIMPORT                        R13 K28 [buffer.fromstring]
       86 GETTABLEKS                       R14 R5 K23 ["glb"]
       88 CALL                             R13 1 -1
       89 NAMECALL                         R11 R11 K29 ["Base64Encode"]
       91 CALL                             R11 -1 -1
       92 CALL                             R10 -1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R10
       95 SETTABLEKS                       R10 R9 K17 ["glbBase64"]
       97 GETTABLEKS                       R10 R5 K18 ["assetId"]
       99 SETTABLEKS                       R10 R9 K18 ["assetId"]
      101 SETTABLEKS                       R6 R9 K19 ["cameraExtrinsic"]
      103 SETTABLEKS                       R7 R9 K20 ["cameraIntrinsic"]
      105 RETURN                           R9 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        3 GETTABLEKS                       R2 R2 K1 ["environment"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["environment"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["buildServices"]
        7 DUPTABLE                         R5 K3 [{"environment"}]
        8 SETTABLEKS                       R3 R5 K1 ["environment"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K4 ["instances"]
       13 GETTABLEKS                       R5 R5 K5 ["getInstanceFromUniqueId"]
       15 GETTABLEKS                       R6 R0 K6 ["uniqueId"]
       17 CALL                             R5 1 1
       18 LOADB                            R2 0
       19 JUMPIFEQKNIL                     R5 ; [+9]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["Selection"]
       24 GETTABLEKS                       R6 R6 K8 ["isTextureableInstance"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 MOVE                             R2 R6
       29 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["run"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["TextureGenOps"]
        4 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cancel"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["buildServices"]
        4 DUPTABLE                         R5 K2 [{"environment"}]
        5 SETTABLEKS                       R3 R5 K1 ["environment"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R5 R4 K3 ["instances"]
       10 GETTABLEKS                       R5 R5 K4 ["getInstanceFromUniqueId"]
       12 GETTABLEKS                       R6 R1 K5 ["uniqueId"]
       14 CALL                             R5 1 1
       15 LOADB                            R2 0
       16 JUMPIFEQKNIL                     R5 ; [+9]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K6 ["Selection"]
       21 GETTABLEKS                       R6 R6 K7 ["isTextureableInstance"]
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 MOVE                             R2 R6
       26 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R7 R2 K1 ["generateTexture"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R7 R7 K2 ["Connect"]
       19 CALL                             R7 2 -1
       20 NAMECALL                         R5 R4 K3 ["Add"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R7 R2 K4 ["cancelGeneration"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 NAMECALL                         R7 R7 K2 ["Connect"]
       31 CALL                             R7 2 -1
       32 NAMECALL                         R5 R4 K3 ["Add"]
       34 CALL                             R5 -1 0
       35 GETTABLEKS                       R7 R2 K5 ["insertTexturedModel"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R7 R7 K2 ["Connect"]
       42 CALL                             R7 2 -1
       43 NAMECALL                         R5 R4 K3 ["Add"]
       45 CALL                             R5 -1 0
       46 GETTABLEKS                       R7 R2 K6 ["getSelectedMeshRef"]
       48 NEWCLOSURE                       R9 P3
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R1
       51 NAMECALL                         R7 R7 K2 ["Connect"]
       53 CALL                             R7 2 -1
       54 NAMECALL                         R5 R4 K3 ["Add"]
       56 CALL                             R5 -1 0
       57 GETTABLEKS                       R7 R2 K7 ["isTextureableInstance"]
       59 NEWCLOSURE                       R9 P4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R7 R7 K2 ["Connect"]
       65 CALL                             R7 2 -1
       66 NAMECALL                         R5 R4 K3 ["Add"]
       68 CALL                             R5 -1 0
       69 GETTABLEKS                       R7 R2 K8 ["captureSourceInstanceImage"]
       71 NEWCLOSURE                       R9 P5
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          VAL R1
       74 NAMECALL                         R7 R7 K2 ["Connect"]
       76 CALL                             R7 2 -1
       77 NAMECALL                         R5 R4 K3 ["Add"]
       79 CALL                             R5 -1 0
       80 GETTABLEKS                       R7 R2 K9 ["prepareTexturePreview"]
       82 NEWCLOSURE                       R9 P6
       83 CAPTURE                          UPVAL U10
       84 CAPTURE                          VAL R1
       85 NAMECALL                         R7 R7 K2 ["Connect"]
       87 CALL                             R7 2 -1
       88 NAMECALL                         R5 R4 K3 ["Add"]
       90 CALL                             R5 -1 0
       91 GETTABLEKS                       R5 R1 K10 ["Destroying"]
       93 NEWCLOSURE                       R7 P7
       94 CAPTURE                          VAL R4
       95 NAMECALL                         R5 R5 K11 ["Once"]
       97 CALL                             R5 2 0
       98 RETURN                           R0 0

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
       19 GETTABLEKS                       R3 R0 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R3 K12 ["Bin"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K11 [require]
       28 GETTABLEKS                       R6 R3 K13 ["DMNetworking"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K11 [require]
       33 GETTABLEKS                       R7 R3 K14 ["Gen3dCore"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K11 [require]
       38 GETTABLEKS                       R8 R0 K15 ["Guest"]
       40 GETTABLEKS                       R8 R8 K16 ["Environment"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K11 [require]
       45 GETTABLEKS                       R9 R0 K17 ["Flags"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K11 [require]
       50 GETTABLEKS                       R10 R0 K18 ["Util"]
       52 GETTABLEKS                       R10 R10 K19 ["Gen3dUtils"]
       54 GETTABLEKS                       R10 R10 K20 ["Gen3dServicesBuilder"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K11 [require]
       59 GETTABLEKS                       R11 R0 K18 ["Util"]
       61 GETTABLEKS                       R11 R11 K21 ["InstanceChannel"]
       63 GETTABLEKS                       R11 R11 K21 ["InstanceChannel"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K11 [require]
       68 GETTABLEKS                       R12 R0 K22 ["Bridges"]
       70 GETTABLEKS                       R12 R12 K23 ["createTextureGenBridge"]
       72 GETTABLEKS                       R12 R12 K24 ["TextureGenBridgeTypes"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K11 [require]
       77 GETTABLEKS                       R13 R0 K18 ["Util"]
       79 GETTABLEKS                       R13 R13 K25 ["TextureGen"]
       81 GETTABLEKS                       R13 R13 K26 ["TextureGenChannel"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K11 [require]
       86 GETTABLEKS                       R14 R0 K27 ["Remotes"]
       88 GETTABLEKS                       R14 R14 K28 ["TextureGenRemotes"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K11 [require]
       93 GETTABLEKS                       R15 R0 K18 ["Util"]
       95 GETTABLEKS                       R15 R15 K25 ["TextureGen"]
       97 GETTABLEKS                       R15 R15 K29 ["TextureGenTypes"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K11 [require]
      102 GETTABLEKS                       R16 R0 K18 ["Util"]
      104 GETTABLEKS                       R16 R16 K30 ["createCancellableHandlers"]
      106 CALL                             R15 1 1
      107 GETTABLEKS                       R16 R6 K31 ["createGenerationSessions"]
      109 CALL                             R16 0 1
      110 NEWTABLE                         R17 0 0
      112 DUPCLOSURE                       R18 K32 [PROTO_0]
      113 CAPTURE                          VAL R9
      114 DUPCLOSURE                       R19 K33 [PROTO_2]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 DUPCLOSURE                       R20 K34 [PROTO_3]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R19
      127 DUPCLOSURE                       R21 K35 [PROTO_4]
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R16
      130 DUPCLOSURE                       R22 K36 [PROTO_5]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R16
      135 DUPCLOSURE                       R23 K37 [PROTO_6]
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R18
      138 DUPCLOSURE                       R24 K38 [PROTO_7]
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R6
      141 DUPCLOSURE                       R25 K39 [PROTO_8]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R18
      144 DUPCLOSURE                       R26 K40 [PROTO_9]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R1
      149 DUPTABLE                         R27 K48 [{"generateTextureAsync", "cancelGenerationAsync", "insertTexturedModelAsync", "getSelectedMeshRef", "isTextureableInstance", "captureSourceInstanceImageAsync", "prepareTexturePreviewAsync"}]
      150 DUPCLOSURE                       R28 K49 [PROTO_10]
      151 CAPTURE                          VAL R20
      152 SETTABLEKS                       R28 R27 K41 ["generateTextureAsync"]
      154 DUPCLOSURE                       R28 K50 [PROTO_11]
      155 CAPTURE                          VAL R21
      156 SETTABLEKS                       R28 R27 K42 ["cancelGenerationAsync"]
      158 DUPCLOSURE                       R28 K51 [PROTO_12]
      159 CAPTURE                          VAL R22
      160 SETTABLEKS                       R28 R27 K43 ["insertTexturedModelAsync"]
      162 DUPCLOSURE                       R28 K52 [PROTO_13]
      163 CAPTURE                          VAL R23
      164 SETTABLEKS                       R28 R27 K44 ["getSelectedMeshRef"]
      166 DUPCLOSURE                       R28 K53 [PROTO_14]
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R6
      169 SETTABLEKS                       R28 R27 K45 ["isTextureableInstance"]
      171 DUPCLOSURE                       R28 K54 [PROTO_15]
      172 CAPTURE                          VAL R25
      173 SETTABLEKS                       R28 R27 K46 ["captureSourceInstanceImageAsync"]
      175 DUPCLOSURE                       R28 K55 [PROTO_16]
      176 CAPTURE                          VAL R26
      177 SETTABLEKS                       R28 R27 K47 ["prepareTexturePreviewAsync"]
      179 DUPCLOSURE                       R28 K56 [PROTO_27]
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R26
      191 DUPTABLE                         R29 K59 [{"bridge", "connectRemotes"}]
      192 SETTABLEKS                       R27 R29 K57 ["bridge"]
      194 SETTABLEKS                       R28 R29 K58 ["connectRemotes"]
      196 RETURN                           R29 1
