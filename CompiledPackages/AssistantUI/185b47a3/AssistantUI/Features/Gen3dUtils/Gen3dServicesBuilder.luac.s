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
        2 DUPTABLE                         R2 K9 [{"selection", "instances", "segmentMesh", "textureGeneration", "meshGen", "preview", "recording", "translator"}]
        3 GETTABLEKS                       R3 R1 K1 ["selection"]
        5 SETTABLEKS                       R3 R2 K1 ["selection"]
        7 DUPTABLE                         R3 K12 [{"getUniqueId", "getInstanceFromUniqueId"}]
        8 GETTABLEKS                       R4 R1 K2 ["instances"]
       10 GETTABLEKS                       R4 R4 K10 ["getUniqueId"]
       12 SETTABLEKS                       R4 R3 K10 ["getUniqueId"]
       14 GETTABLEKS                       R4 R1 K2 ["instances"]
       16 GETTABLEKS                       R4 R4 K11 ["getInstanceFromUniqueId"]
       18 SETTABLEKS                       R4 R3 K11 ["getInstanceFromUniqueId"]
       20 SETTABLEKS                       R3 R2 K2 ["instances"]
       22 DUPTABLE                         R3 K17 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
       23 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       25 GETTABLEKS                       R4 R4 K13 ["startAsync"]
       27 SETTABLEKS                       R4 R3 K13 ["startAsync"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K14 ["getStatusAsync"]
       33 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       35 GETTABLEKS                       R4 R4 K15 ["publishAssetAsync"]
       37 SETTABLEKS                       R4 R3 K15 ["publishAssetAsync"]
       39 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       41 GETTABLEKS                       R4 R4 K16 ["loadAssetAsync"]
       43 SETTABLEKS                       R4 R3 K16 ["loadAssetAsync"]
       45 SETTABLEKS                       R3 R2 K3 ["segmentMesh"]
       47 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       49 JUMPIFNOT                        R4 ; [+24]
       50 DUPTABLE                         R3 K17 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
       51 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       53 GETTABLEKS                       R4 R4 K13 ["startAsync"]
       55 SETTABLEKS                       R4 R3 K13 ["startAsync"]
       57 NEWCLOSURE                       R4 P1
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R4 R3 K14 ["getStatusAsync"]
       61 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       63 GETTABLEKS                       R4 R4 K15 ["publishAssetAsync"]
       65 SETTABLEKS                       R4 R3 K15 ["publishAssetAsync"]
       67 GETTABLEKS                       R4 R1 K4 ["textureGeneration"]
       69 GETTABLEKS                       R4 R4 K16 ["loadAssetAsync"]
       71 SETTABLEKS                       R4 R3 K16 ["loadAssetAsync"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K4 ["textureGeneration"]
       77 DUPTABLE                         R3 K21 [{"exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
       78 GETTABLEKS                       R4 R1 K22 ["tools"]
       80 GETTABLEKS                       R4 R4 K5 ["meshGen"]
       82 GETTABLEKS                       R4 R4 K18 ["exportInstanceToGlbAsync"]
       84 SETTABLEKS                       R4 R3 K18 ["exportInstanceToGlbAsync"]
       86 GETTABLEKS                       R4 R1 K22 ["tools"]
       88 GETTABLEKS                       R4 R4 K5 ["meshGen"]
       90 GETTABLEKS                       R4 R4 K19 ["exportMeshToGlbAsync"]
       92 SETTABLEKS                       R4 R3 K19 ["exportMeshToGlbAsync"]
       94 GETTABLEKS                       R4 R1 K22 ["tools"]
       96 GETTABLEKS                       R4 R4 K5 ["meshGen"]
       98 GETTABLEKS                       R4 R4 K20 ["loadModelFromUrlAsync"]
      100 SETTABLEKS                       R4 R3 K20 ["loadModelFromUrlAsync"]
      102 SETTABLEKS                       R3 R2 K5 ["meshGen"]
      104 DUPTABLE                         R3 K26 [{"captureSinglePreviewImageAsync", "capturePreviewImages", "getImageDataBase64Async"}]
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K23 ["captureSinglePreviewImageAsync"]
      108 SETTABLEKS                       R4 R3 K23 ["captureSinglePreviewImageAsync"]
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K24 ["capturePreviewImages"]
      113 SETTABLEKS                       R4 R3 K24 ["capturePreviewImages"]
      115 NEWCLOSURE                       R4 P2
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R4 R3 K25 ["getImageDataBase64Async"]
      119 SETTABLEKS                       R3 R2 K6 ["preview"]
      121 DUPTABLE                         R3 K29 [{"startRecording", "endRecording"}]
      122 GETTABLEKS                       R4 R1 K27 ["startRecording"]
      124 SETTABLEKS                       R4 R3 K27 ["startRecording"]
      126 GETTABLEKS                       R4 R1 K28 ["endRecording"]
      128 SETTABLEKS                       R4 R3 K28 ["endRecording"]
      130 SETTABLEKS                       R3 R2 K7 ["recording"]
      132 GETUPVAL                         R3 1
      133 SETTABLEKS                       R3 R2 K8 ["translator"]
      135 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Features"]
       34 GETTABLEKS                       R5 R5 K14 ["Gen3dUtils"]
       36 GETTABLEKS                       R5 R5 K15 ["ViewportPreviewUtils"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K16 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 DUPTABLE                         R6 K18 [{"buildServices"}]
       43 SETTABLEKS                       R5 R6 K17 ["buildServices"]
       45 RETURN                           R6 1
