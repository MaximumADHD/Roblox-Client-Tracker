PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K6 [{"imageGeneration", "http", "base64EncodeAsync", "convertImageDataToTempIdAsync", "capabilities"}]
        5 DUPTABLE                         R2 K9 [{"startAsync", "getStatusAsync"}]
        6 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
        8 GETTABLEKS                       R3 R3 K7 ["startAsync"]
       10 SETTABLEKS                       R3 R2 K7 ["startAsync"]
       12 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
       14 GETTABLEKS                       R3 R3 K8 ["getStatusAsync"]
       16 SETTABLEKS                       R3 R2 K8 ["getStatusAsync"]
       18 SETTABLEKS                       R2 R1 K1 ["imageGeneration"]
       20 DUPTABLE                         R2 K11 [{"requestAsync"}]
       21 GETTABLEKS                       R3 R0 K2 ["http"]
       23 GETTABLEKS                       R3 R3 K10 ["requestAsync"]
       25 SETTABLEKS                       R3 R2 K10 ["requestAsync"]
       27 SETTABLEKS                       R2 R1 K2 ["http"]
       29 GETTABLEKS                       R2 R0 K3 ["base64EncodeAsync"]
       31 SETTABLEKS                       R2 R1 K3 ["base64EncodeAsync"]
       33 GETTABLEKS                       R2 R0 K4 ["convertImageDataToTempIdAsync"]
       35 SETTABLEKS                       R2 R1 K4 ["convertImageDataToTempIdAsync"]
       37 DUPTABLE                         R2 K15 [{"allocateSeed", "debugLog", "abortPollOn4xx"}]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K16 ["Flags"]
       41 GETTABLEKS                       R3 R3 K17 ["FFlagAssistantImageGenSeed"]
       43 SETTABLEKS                       R3 R2 K12 ["allocateSeed"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K16 ["Flags"]
       48 GETTABLEKS                       R3 R3 K18 ["FFlagDebugLogAssistantUI"]
       50 SETTABLEKS                       R3 R2 K13 ["debugLog"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K16 ["Flags"]
       55 GETTABLEKS                       R3 R3 K19 ["FFlagAssistantImageGenAbortPollOn4xx"]
       57 SETTABLEKS                       R3 R2 K14 ["abortPollOn4xx"]
       59 SETTABLEKS                       R2 R1 K5 ["capabilities"]
       61 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Guest"]
       23 GETTABLEKS                       R3 R3 K10 ["Environment"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 RETURN                           R4 1
