PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["segmentMesh"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{"status", "modelGlbUrl", "modelRbxmUrl"}]
        8 GETTABLEKS                       R3 R1 K2 ["status"]
       10 SETTABLEKS                       R3 R2 K2 ["status"]
       12 GETTABLEKS                       R3 R1 K3 ["modelGlbUrl"]
       14 SETTABLEKS                       R3 R2 K3 ["modelGlbUrl"]
       16 GETTABLEKS                       R3 R1 K4 ["modelRbxmUrl"]
       18 SETTABLEKS                       R3 R2 K4 ["modelRbxmUrl"]
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["textureGeneration"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{"status", "modelGlbUrl", "modelRbxmUrl"}]
        8 GETTABLEKS                       R3 R1 K2 ["status"]
       10 SETTABLEKS                       R3 R2 K2 ["status"]
       12 GETTABLEKS                       R3 R1 K3 ["modelGlbUrl"]
       14 SETTABLEKS                       R3 R2 K3 ["modelGlbUrl"]
       16 GETTABLEKS                       R3 R1 K4 ["modelRbxmUrl"]
       18 SETTABLEKS                       R3 R2 K4 ["modelRbxmUrl"]
       20 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tools"]
        3 GETTABLEKS                       R2 R2 K1 ["screenCapture"]
        5 GETTABLEKS                       R2 R2 K2 ["getImageDataBase64Async"]
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K4 [{"format"}]
        9 GETTABLEKS                       R5 R1 K3 ["format"]
       11 SETTABLEKS                       R5 R4 K3 ["format"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 DUPTABLE                         R2 K10 [{"selection", "instances", "segmentMesh", "textureGeneration", "meshGen", "preview", "recording", "translator", "eventLogger"}]
        3 GETTABLEKS                       R3 R1 K1 ["selection"]
        5 SETTABLEKS                       R3 R2 K1 ["selection"]
        7 DUPTABLE                         R3 K13 [{"getUniqueId", "getInstanceFromUniqueId"}]
        8 GETTABLEKS                       R4 R1 K2 ["instances"]
       10 GETTABLEKS                       R4 R4 K11 ["getUniqueId"]
       12 SETTABLEKS                       R4 R3 K11 ["getUniqueId"]
       14 GETTABLEKS                       R4 R1 K2 ["instances"]
       16 GETTABLEKS                       R4 R4 K12 ["getInstanceFromUniqueId"]
       18 SETTABLEKS                       R4 R3 K12 ["getInstanceFromUniqueId"]
       20 SETTABLEKS                       R3 R2 K2 ["instances"]
       22 DUPTABLE                         R3 K18 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
       23 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       25 GETTABLEKS                       R4 R4 K14 ["startAsync"]
       27 SETTABLEKS                       R4 R3 K14 ["startAsync"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K15 ["getStatusAsync"]
       33 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       35 GETTABLEKS                       R4 R4 K16 ["publishAssetAsync"]
       37 SETTABLEKS                       R4 R3 K16 ["publishAssetAsync"]
       39 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       41 GETTABLEKS                       R4 R4 K17 ["loadAssetAsync"]
       43 SETTABLEKS                       R4 R3 K17 ["loadAssetAsync"]
       45 SETTABLEKS                       R3 R2 K3 ["segmentMesh"]
       47 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       49 JUMPIFNOT                        R4 ; [+32]
       50 DUPTABLE                         R3 K20 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync", "capabilities"}]
       51 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       53 GETTABLEKS                       R4 R4 K14 ["startAsync"]
       55 SETTABLEKS                       R4 R3 K14 ["startAsync"]
       57 NEWCLOSURE                       R4 P1
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R4 R3 K15 ["getStatusAsync"]
       61 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       63 GETTABLEKS                       R4 R4 K16 ["publishAssetAsync"]
       65 SETTABLEKS                       R4 R3 K16 ["publishAssetAsync"]
       67 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       69 GETTABLEKS                       R4 R4 K17 ["loadAssetAsync"]
       71 SETTABLEKS                       R4 R3 K17 ["loadAssetAsync"]
       73 DUPTABLE                         R4 K22 [{"debugLog"}]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K23 ["FFlagDebugLogAssistantUI"]
       77 SETTABLEKS                       R5 R4 K21 ["debugLog"]
       79 SETTABLEKS                       R4 R3 K19 ["capabilities"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R3
       83 SETTABLEKS                       R3 R2 K4 ["textureGeneration"]
       85 DUPTABLE                         R3 K28 [{"exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync", "publishInstanceAsAssetAsync"}]
       86 GETTABLEKS                       R4 R1 K29 ["tools"]
       88 GETTABLEKS                       R4 R4 K5 ["meshGen"]
       90 GETTABLEKS                       R4 R4 K24 ["exportInstanceToGlbAsync"]
       92 SETTABLEKS                       R4 R3 K24 ["exportInstanceToGlbAsync"]
       94 GETTABLEKS                       R4 R1 K29 ["tools"]
       96 GETTABLEKS                       R4 R4 K5 ["meshGen"]
       98 GETTABLEKS                       R4 R4 K25 ["exportMeshToGlbAsync"]
      100 SETTABLEKS                       R4 R3 K25 ["exportMeshToGlbAsync"]
      102 GETTABLEKS                       R4 R1 K29 ["tools"]
      104 GETTABLEKS                       R4 R4 K5 ["meshGen"]
      106 GETTABLEKS                       R4 R4 K26 ["loadModelFromUrlAsync"]
      108 SETTABLEKS                       R4 R3 K26 ["loadModelFromUrlAsync"]
      110 GETUPVAL                         R5 1
      111 GETTABLEKS                       R5 R5 K30 ["getFFlagGen3dTextureGenAssetIdUpload"]
      113 CALL                             R5 0 1
      114 JUMPIF                           R5 ; [+5]
      115 GETUPVAL                         R5 1
      116 GETTABLEKS                       R5 R5 K31 ["getFFlagGen3dSegmentMeshAssetIdUpload"]
      118 CALL                             R5 0 1
      119 JUMPIFNOT                        R5 ; [+7]
      120 GETTABLEKS                       R4 R1 K29 ["tools"]
      122 GETTABLEKS                       R4 R4 K5 ["meshGen"]
      124 GETTABLEKS                       R4 R4 K27 ["publishInstanceAsAssetAsync"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R4
      128 SETTABLEKS                       R4 R3 K27 ["publishInstanceAsAssetAsync"]
      130 SETTABLEKS                       R3 R2 K5 ["meshGen"]
      132 DUPTABLE                         R3 K35 [{"captureSinglePreviewImageAsync", "capturePreviewImages", "getImageDataBase64Async"}]
      133 GETUPVAL                         R4 2
      134 GETTABLEKS                       R4 R4 K32 ["captureSinglePreviewImageAsync"]
      136 SETTABLEKS                       R4 R3 K32 ["captureSinglePreviewImageAsync"]
      138 GETUPVAL                         R4 2
      139 GETTABLEKS                       R4 R4 K33 ["capturePreviewImages"]
      141 SETTABLEKS                       R4 R3 K33 ["capturePreviewImages"]
      143 NEWCLOSURE                       R4 P2
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R4 R3 K34 ["getImageDataBase64Async"]
      147 SETTABLEKS                       R3 R2 K6 ["preview"]
      149 DUPTABLE                         R3 K38 [{"startRecording", "endRecording"}]
      150 GETTABLEKS                       R4 R1 K36 ["startRecording"]
      152 SETTABLEKS                       R4 R3 K36 ["startRecording"]
      154 GETTABLEKS                       R4 R1 K37 ["endRecording"]
      156 SETTABLEKS                       R4 R3 K37 ["endRecording"]
      158 SETTABLEKS                       R3 R2 K7 ["recording"]
      160 GETUPVAL                         R3 3
      161 SETTABLEKS                       R3 R2 K8 ["translator"]
      163 DUPTABLE                         R3 K40 [{"logTextureGenCompleted"}]
      164 GETTABLEKS                       R4 R1 K41 ["EventLogger"]
      166 GETTABLEKS                       R4 R4 K39 ["logTextureGenCompleted"]
      168 SETTABLEKS                       R4 R3 K39 ["logTextureGenCompleted"]
      170 SETTABLEKS                       R3 R2 K9 ["eventLogger"]
      172 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 DUPTABLE                         R2 K7 [{"imageGeneration", "texturePreview", "http", "base64EncodeAsync", "convertImageDataToTempIdAsync", "capabilities"}]
        3 DUPTABLE                         R3 K10 [{"startAsync", "getStatusAsync"}]
        4 GETTABLEKS                       R4 R1 K1 ["imageGeneration"]
        6 GETTABLEKS                       R4 R4 K8 ["startAsync"]
        8 SETTABLEKS                       R4 R3 K8 ["startAsync"]
       10 GETTABLEKS                       R4 R1 K1 ["imageGeneration"]
       12 GETTABLEKS                       R4 R4 K9 ["getStatusAsync"]
       14 SETTABLEKS                       R4 R3 K9 ["getStatusAsync"]
       16 SETTABLEKS                       R3 R2 K1 ["imageGeneration"]
       18 GETTABLEKS                       R3 R1 K2 ["texturePreview"]
       20 SETTABLEKS                       R3 R2 K2 ["texturePreview"]
       22 DUPTABLE                         R3 K12 [{"requestAsync"}]
       23 GETTABLEKS                       R4 R1 K3 ["http"]
       25 GETTABLEKS                       R4 R4 K11 ["requestAsync"]
       27 SETTABLEKS                       R4 R3 K11 ["requestAsync"]
       29 SETTABLEKS                       R3 R2 K3 ["http"]
       31 GETTABLEKS                       R3 R1 K4 ["base64EncodeAsync"]
       33 SETTABLEKS                       R3 R2 K4 ["base64EncodeAsync"]
       35 GETTABLEKS                       R3 R1 K5 ["convertImageDataToTempIdAsync"]
       37 SETTABLEKS                       R3 R2 K5 ["convertImageDataToTempIdAsync"]
       39 DUPTABLE                         R3 K17 [{"debugLog", "abortPollOn4xx", "batchedPreview", "texturePreviewReferences"}]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K18 ["FFlagDebugLogAssistantUI"]
       43 SETTABLEKS                       R4 R3 K13 ["debugLog"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K19 ["FFlagAssistantImageGenAbortPollOn4xx"]
       48 SETTABLEKS                       R4 R3 K14 ["abortPollOn4xx"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K20 ["getFFlagGen3dTextureGenBatchedPreview"]
       53 CALL                             R4 0 1
       54 SETTABLEKS                       R4 R3 K15 ["batchedPreview"]
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K21 ["getFFlagGen3dTexturePreviewReferences"]
       59 CALL                             R4 0 1
       60 SETTABLEKS                       R4 R3 K16 ["texturePreviewReferences"]
       62 SETTABLEKS                       R3 R2 K6 ["capabilities"]
       64 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Gen3dCore"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Resources"]
       30 GETTABLEKS                       R5 R5 K12 ["Localization"]
       32 GETTABLEKS                       R5 R5 K13 ["Translator"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["Gen3dUtils"]
       41 GETTABLEKS                       R6 R6 K16 ["ViewportPreviewUtils"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K17 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 DUPCLOSURE                       R7 K18 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 DUPTABLE                         R8 K21 [{"buildServices", "buildImageSelectionServices"}]
       53 SETTABLEKS                       R6 R8 K19 ["buildServices"]
       55 SETTABLEKS                       R7 R8 K20 ["buildImageSelectionServices"]
       57 RETURN                           R8 1
