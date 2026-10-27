PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["AssistantApplication"]
        7 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K5 [{"Success", "StatusCode", "StatusMessage", "Headers", "Body"}]
        1 MOVE                             R3 R0
        2 JUMPIFNOT                        R3 ; [+13]
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
        6 LOADN                            R5 200
        7 JUMPIFNOTLE                      R5 R4 ; [+8]
        9 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
       11 LOADN                            R5 300
       12 JUMPIFLT                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K0 ["Success"]
       18 GETTABLEKS                       R3 R1 K1 ["StatusCode"]
       20 SETTABLEKS                       R3 R2 K1 ["StatusCode"]
       22 GETTABLEKS                       R3 R1 K2 ["StatusMessage"]
       24 JUMPIF                           R3 ; [+2]
       25 GETTABLEKS                       R3 R1 K6 ["HttpError"]
       27 SETTABLEKS                       R3 R2 K2 ["StatusMessage"]
       29 GETTABLEKS                       R3 R1 K3 ["Headers"]
       31 SETTABLEKS                       R3 R2 K3 ["Headers"]
       33 GETTABLEKS                       R3 R1 K4 ["Body"]
       35 SETTABLEKS                       R3 R2 K4 ["Body"]
       37 GETUPVAL                         R3 0
       38 MOVE                             R4 R2
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestInternal"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 1
       11 NAMECALL                         R2 R2 K2 ["await"]
       13 CALL                             R2 1 2
       14 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K0 ["AssistantApplication"]
        7 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["Base64EncodeAsync"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K0 ["AssistantApplication"]
        7 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R1 K2 ["ConvertImageDataToTempIdAsync"]
       15 CALL                             R2 2 1
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+13]
       23 GETTABLEKS                       R4 R2 K6 ["tempId"]
       25 FASTCALL1                        TYPEOF R4 ; [+2]
       26 GETIMPORT                        R3 K4 [typeof]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+5]
       31 GETTABLEKS                       R3 R2 K6 ["tempId"]
       33 JUMPIFNOTEQKS                    R3 K8 [""] ; [+20]
       35 GETIMPORT                        R3 K10 [warn]
       37 LOADK                            R5 K11 ["[Gen3d] AssistantApplication:ConvertImageDataToTempIdAsync returned unexpected result: "]
       38 FASTCALL1                        TOSTRING R2 ; [+3]
       39 MOVE                             R11 R2
       40 GETIMPORT                        R10 K13 [tostring]
       42 CALL                             R10 1 1
       43 MOVE                             R6 R10
       44 LOADK                            R7 K14 [" (base64 len="]
       45 LENGTH                           R11 R0
       46 FASTCALL1                        TOSTRING R11 ; [+2]
       47 GETIMPORT                        R10 K13 [tostring]
       49 CALL                             R10 1 1
       50 MOVE                             R8 R10
       51 LOADK                            R9 K15 [")"]
       52 CONCAT                           R4 R5 R9
       53 CALL                             R3 1 0
       54 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_10:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["patchCubeGenerationGatewayHost"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
        7 CALL                             R3 0 -1
        8 CALL                             R1 -1 0
        9 LOADNIL                          R1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          REF R1
       12 CAPTURE                          VAL R0
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 DUPTABLE                         R4 K11 [{"http", "json", "imageGeneration", "texturePreview", "base64EncodeAsync", "convertImageDataToTempIdAsync", "getUserId", "isRobloxScriptSecurity", "getEngineFeature"}]
       16 DUPTABLE                         R5 K13 [{"requestAsync"}]
       17 DUPCLOSURE                       R6 K14 [PROTO_3]
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 SETTABLEKS                       R6 R5 K12 ["requestAsync"]
       22 SETTABLEKS                       R5 R4 K2 ["http"]
       24 DUPTABLE                         R5 K17 [{"encodeAsync", "decodeAsync"}]
       25 DUPCLOSURE                       R6 K18 [PROTO_4]
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R6 R5 K15 ["encodeAsync"]
       29 DUPCLOSURE                       R6 K19 [PROTO_5]
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R6 R5 K16 ["decodeAsync"]
       33 SETTABLEKS                       R5 R4 K3 ["json"]
       35 DUPTABLE                         R5 K22 [{"startAsync", "getStatusAsync"}]
       36 GETTABLEKS                       R6 R3 K20 ["startAsync"]
       38 SETTABLEKS                       R6 R5 K20 ["startAsync"]
       40 GETTABLEKS                       R6 R3 K21 ["getStatusAsync"]
       42 SETTABLEKS                       R6 R5 K21 ["getStatusAsync"]
       44 SETTABLEKS                       R5 R4 K4 ["imageGeneration"]
       46 GETUPVAL                         R5 6
       47 CALL                             R5 0 1
       48 SETTABLEKS                       R5 R4 K5 ["texturePreview"]
       50 NEWCLOSURE                       R5 P4
       51 CAPTURE                          REF R1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R5 R4 K6 ["base64EncodeAsync"]
       55 NEWCLOSURE                       R5 P5
       56 CAPTURE                          REF R1
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R5 R4 K7 ["convertImageDataToTempIdAsync"]
       60 DUPCLOSURE                       R5 K23 [PROTO_9]
       61 CAPTURE                          UPVAL U7
       62 SETTABLEKS                       R5 R4 K8 ["getUserId"]
       64 DUPCLOSURE                       R5 K24 [PROTO_10]
       65 SETTABLEKS                       R5 R4 K9 ["isRobloxScriptSecurity"]
       67 DUPCLOSURE                       R5 K25 [PROTO_11]
       68 SETTABLEKS                       R5 R4 K10 ["getEngineFeature"]
       70 CLOSEUPVALS                      R1
       71 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StudioService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Gen3dCore"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Guest"]
       32 GETTABLEKS                       R5 R5 K15 ["GuestEnvironmentStore"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Packages"]
       39 GETTABLEKS                       R6 R6 K16 ["HttpWrapper"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Packages"]
       46 GETTABLEKS                       R7 R7 K17 ["Promise"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K18 ["Host"]
       55 GETTABLEKS                       R8 R8 K19 ["Services"]
       57 GETTABLEKS                       R8 R8 K20 ["createImageGenerationService"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Src"]
       64 GETTABLEKS                       R9 R9 K18 ["Host"]
       66 GETTABLEKS                       R9 R9 K19 ["Services"]
       68 GETTABLEKS                       R9 R9 K21 ["createTexturePreviewService"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R0 K22 ["Bin"]
       75 GETTABLEKS                       R10 R10 K23 ["Common"]
       77 GETTABLEKS                       R10 R10 K24 ["defineLuaFlags"]
       79 CALL                             R9 1 1
       80 DUPCLOSURE                       R10 K25 [PROTO_12]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 RETURN                           R10 1
