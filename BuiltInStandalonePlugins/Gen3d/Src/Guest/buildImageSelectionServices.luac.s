PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K7 [{"imageGeneration", "texturePreview", "http", "base64EncodeAsync", "convertImageDataToTempIdAsync", "capabilities"}]
        5 DUPTABLE                         R2 K10 [{"startAsync", "getStatusAsync"}]
        6 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
        8 GETTABLEKS                       R3 R3 K8 ["startAsync"]
       10 SETTABLEKS                       R3 R2 K8 ["startAsync"]
       12 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
       14 GETTABLEKS                       R3 R3 K9 ["getStatusAsync"]
       16 SETTABLEKS                       R3 R2 K9 ["getStatusAsync"]
       18 SETTABLEKS                       R2 R1 K1 ["imageGeneration"]
       20 GETTABLEKS                       R2 R0 K2 ["texturePreview"]
       22 SETTABLEKS                       R2 R1 K2 ["texturePreview"]
       24 DUPTABLE                         R2 K12 [{"requestAsync"}]
       25 GETTABLEKS                       R3 R0 K3 ["http"]
       27 GETTABLEKS                       R3 R3 K11 ["requestAsync"]
       29 SETTABLEKS                       R3 R2 K11 ["requestAsync"]
       31 SETTABLEKS                       R2 R1 K3 ["http"]
       33 GETTABLEKS                       R2 R0 K4 ["base64EncodeAsync"]
       35 SETTABLEKS                       R2 R1 K4 ["base64EncodeAsync"]
       37 GETTABLEKS                       R2 R0 K5 ["convertImageDataToTempIdAsync"]
       39 SETTABLEKS                       R2 R1 K5 ["convertImageDataToTempIdAsync"]
       41 DUPTABLE                         R2 K18 [{"allocateSeed", "debugLog", "abortPollOn4xx", "batchedPreview", "texturePreviewReferences"}]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K19 ["getFFlagAssistantImageGenSeed"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K13 ["allocateSeed"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K20 ["getFFlagDebugLogAssistantUI"]
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K14 ["debugLog"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K21 ["getFFlagAssistantImageGenAbortPollOn4xx"]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K15 ["abortPollOn4xx"]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K22 ["getFFlagGen3dTextureGenBatchedPreview"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K16 ["batchedPreview"]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K23 ["getFFlagGen3dTexturePreviewReferences"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K17 ["texturePreviewReferences"]
       72 SETTABLEKS                       R2 R1 K6 ["capabilities"]
       74 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["GuestEnvironmentStore"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Bin"]
       27 GETTABLEKS                       R4 R4 K12 ["Common"]
       29 GETTABLEKS                       R4 R4 K13 ["defineLuaFlags"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K14 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
