PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["GuestEnvironmentStore: \"%*\" was called before set() installed a real GuestEnvironment"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R1 R1 K3 ["format"]
        6 CALL                             R1 2 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 LOADN                            R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K9 [{"http", "json", "imageGeneration", "texturePreview", "base64EncodeAsync", "convertImageDataToTempIdAsync", "getUserId", "isRobloxScriptSecurity", "getEngineFeature"}]
        1 DUPTABLE                         R1 K11 [{"requestAsync"}]
        2 LOADK                            R3 K12 ["http.requestAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R3
        5 SETTABLEKS                       R2 R1 K10 ["requestAsync"]
        7 SETTABLEKS                       R1 R0 K0 ["http"]
        9 DUPTABLE                         R1 K15 [{"encodeAsync", "decodeAsync"}]
       10 DUPCLOSURE                       R2 K16 [PROTO_2]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R2 R1 K13 ["encodeAsync"]
       14 DUPCLOSURE                       R2 K17 [PROTO_3]
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R2 R1 K14 ["decodeAsync"]
       18 SETTABLEKS                       R1 R0 K1 ["json"]
       20 DUPTABLE                         R1 K20 [{"startAsync", "getStatusAsync"}]
       21 LOADK                            R3 K21 ["imageGeneration.startAsync"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R2 R1 K18 ["startAsync"]
       26 LOADK                            R3 K22 ["imageGeneration.getStatusAsync"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R2 R1 K19 ["getStatusAsync"]
       31 SETTABLEKS                       R1 R0 K2 ["imageGeneration"]
       33 DUPTABLE                         R1 K20 [{"startAsync", "getStatusAsync"}]
       34 LOADK                            R3 K23 ["texturePreview.startAsync"]
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R2 R1 K18 ["startAsync"]
       39 LOADK                            R3 K24 ["texturePreview.getStatusAsync"]
       40 NEWCLOSURE                       R2 P0
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R2 R1 K19 ["getStatusAsync"]
       44 SETTABLEKS                       R1 R0 K3 ["texturePreview"]
       46 LOADK                            R2 K4 ["base64EncodeAsync"]
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R1 R0 K4 ["base64EncodeAsync"]
       51 LOADK                            R2 K5 ["convertImageDataToTempIdAsync"]
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R1 R0 K5 ["convertImageDataToTempIdAsync"]
       56 DUPCLOSURE                       R1 K25 [PROTO_4]
       57 SETTABLEKS                       R1 R0 K6 ["getUserId"]
       59 DUPCLOSURE                       R1 K26 [PROTO_5]
       60 SETTABLEKS                       R1 R0 K7 ["isRobloxScriptSecurity"]
       62 DUPCLOSURE                       R1 K27 [PROTO_6]
       63 SETTABLEKS                       R1 R0 K8 ["getEngineFeature"]
       65 RETURN                           R0 1

PROTO_8:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Host"]
       26 GETTABLEKS                       R4 R4 K14 ["Services"]
       28 GETTABLEKS                       R4 R4 K15 ["createImageGenerationService"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K16 [PROTO_1]
       32 DUPCLOSURE                       R5 K17 [PROTO_7]
       33 CAPTURE                          VAL R0
       34 MOVE                             R6 R5
       35 CALL                             R6 0 1
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          REF R6
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          REF R6
       40 DUPTABLE                         R9 K20 [{"set", "get"}]
       41 SETTABLEKS                       R7 R9 K18 ["set"]
       43 SETTABLEKS                       R8 R9 K19 ["get"]
       45 CLOSEUPVALS                      R6
       46 RETURN                           R9 1
