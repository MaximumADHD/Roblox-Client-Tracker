PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["segmentMesh"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K8 [{"ok", "statusCode", "status", "modelGlbUrl", "modelRbxmUrl", "errorMessage"}]
        8 GETTABLEKS                       R3 R1 K2 ["ok"]
       10 SETTABLEKS                       R3 R2 K2 ["ok"]
       12 GETTABLEKS                       R3 R1 K3 ["statusCode"]
       14 SETTABLEKS                       R3 R2 K3 ["statusCode"]
       16 GETTABLEKS                       R3 R1 K4 ["status"]
       18 SETTABLEKS                       R3 R2 K4 ["status"]
       20 GETTABLEKS                       R3 R1 K5 ["modelGlbUrl"]
       22 SETTABLEKS                       R3 R2 K5 ["modelGlbUrl"]
       24 GETTABLEKS                       R3 R1 K6 ["modelRbxmUrl"]
       26 SETTABLEKS                       R3 R2 K6 ["modelRbxmUrl"]
       28 GETTABLEKS                       R3 R1 K7 ["errorMessage"]
       30 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       32 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 DUPTABLE                         R2 K8 [{"selection", "instances", "segmentMesh", "meshGen", "preview", "recording", "translator"}]
        3 GETTABLEKS                       R3 R1 K1 ["selection"]
        5 SETTABLEKS                       R3 R2 K1 ["selection"]
        7 DUPTABLE                         R3 K11 [{"getUniqueId", "getInstanceFromUniqueId"}]
        8 GETTABLEKS                       R4 R1 K2 ["instances"]
       10 GETTABLEKS                       R4 R4 K9 ["getUniqueId"]
       12 SETTABLEKS                       R4 R3 K9 ["getUniqueId"]
       14 GETTABLEKS                       R4 R1 K2 ["instances"]
       16 GETTABLEKS                       R4 R4 K10 ["getInstanceFromUniqueId"]
       18 SETTABLEKS                       R4 R3 K10 ["getInstanceFromUniqueId"]
       20 SETTABLEKS                       R3 R2 K2 ["instances"]
       22 DUPTABLE                         R3 K16 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
       23 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       25 GETTABLEKS                       R4 R4 K12 ["startAsync"]
       27 SETTABLEKS                       R4 R3 K12 ["startAsync"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K13 ["getStatusAsync"]
       33 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       35 GETTABLEKS                       R4 R4 K14 ["publishAssetAsync"]
       37 SETTABLEKS                       R4 R3 K14 ["publishAssetAsync"]
       39 GETTABLEKS                       R4 R1 K3 ["segmentMesh"]
       41 GETTABLEKS                       R4 R4 K15 ["loadAssetAsync"]
       43 SETTABLEKS                       R4 R3 K15 ["loadAssetAsync"]
       45 SETTABLEKS                       R3 R2 K3 ["segmentMesh"]
       47 DUPTABLE                         R3 K20 [{"exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
       48 GETTABLEKS                       R4 R1 K21 ["tools"]
       50 GETTABLEKS                       R4 R4 K4 ["meshGen"]
       52 GETTABLEKS                       R4 R4 K17 ["exportInstanceToGlbAsync"]
       54 SETTABLEKS                       R4 R3 K17 ["exportInstanceToGlbAsync"]
       56 GETTABLEKS                       R4 R1 K21 ["tools"]
       58 GETTABLEKS                       R4 R4 K4 ["meshGen"]
       60 GETTABLEKS                       R4 R4 K18 ["exportMeshToGlbAsync"]
       62 SETTABLEKS                       R4 R3 K18 ["exportMeshToGlbAsync"]
       64 GETTABLEKS                       R4 R1 K21 ["tools"]
       66 GETTABLEKS                       R4 R4 K4 ["meshGen"]
       68 GETTABLEKS                       R4 R4 K19 ["loadModelFromUrlAsync"]
       70 SETTABLEKS                       R4 R3 K19 ["loadModelFromUrlAsync"]
       72 SETTABLEKS                       R3 R2 K4 ["meshGen"]
       74 DUPTABLE                         R3 K24 [{"captureSinglePreviewImageAsync", "capturePreviewImages"}]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K22 ["captureSinglePreviewImageAsync"]
       78 SETTABLEKS                       R4 R3 K22 ["captureSinglePreviewImageAsync"]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K23 ["capturePreviewImages"]
       83 SETTABLEKS                       R4 R3 K23 ["capturePreviewImages"]
       85 SETTABLEKS                       R3 R2 K5 ["preview"]
       87 DUPTABLE                         R3 K27 [{"startRecording", "endRecording"}]
       88 GETTABLEKS                       R4 R1 K25 ["startRecording"]
       90 SETTABLEKS                       R4 R3 K25 ["startRecording"]
       92 GETTABLEKS                       R4 R1 K26 ["endRecording"]
       94 SETTABLEKS                       R4 R3 K26 ["endRecording"]
       96 SETTABLEKS                       R3 R2 K6 ["recording"]
       98 GETUPVAL                         R3 1
       99 SETTABLEKS                       R3 R2 K7 ["translator"]
      101 RETURN                           R2 1

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
       39 DUPCLOSURE                       R5 K16 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 DUPTABLE                         R6 K18 [{"buildServices"}]
       43 SETTABLEKS                       R5 R6 K17 ["buildServices"]
       45 RETURN                           R6 1
