PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 2
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+6]
       12 GETIMPORT                        R2 K3 [warn]
       14 LOADK                            R3 K4 ["[Gen3d] AssistantApplication plugin component unavailable; image previews will not render"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 SETUPVAL                         R1 0
       19 GETUPVAL                         R2 0
       20 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+6]
       12 GETIMPORT                        R4 K3 [warn]
       14 LOADK                            R5 K4 ["[Gen3d] AssistantApplication plugin component unavailable; image previews will not render"]
       15 CALL                             R4 1 0
       16 LOADNIL                          R1
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R3 0
       19 GETUPVAL                         R1 0
       20 JUMPIFEQKNIL                     R1 ; [+6]
       22 MOVE                             R4 R0
       23 NAMECALL                         R2 R1 K5 ["Base64EncodeAsync"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K8 [buffer.tostring]
       29 GETUPVAL                         R3 2
       30 GETIMPORT                        R5 K10 [buffer.fromstring]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 -1
       34 NAMECALL                         R3 R3 K11 ["Base64Encode"]
       36 CALL                             R3 -1 -1
       37 CALL                             R2 -1 -1
       38 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+6]
       12 GETIMPORT                        R4 K3 [warn]
       14 LOADK                            R5 K4 ["[Gen3d] AssistantApplication plugin component unavailable; image previews will not render"]
       15 CALL                             R4 1 0
       16 LOADNIL                          R1
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R3 0
       19 GETUPVAL                         R1 0
       20 JUMPIFNOTEQKNIL                  R1 ; [+15]
       22 GETIMPORT                        R2 K3 [warn]
       24 LOADK                            R4 K5 ["[Gen3d] convertImageDataToTempIdAsync called with no AssistantApplication; returning empty tempId (base64 len="]
       25 LENGTH                           R8 R0
       26 FASTCALL1                        TOSTRING R8 ; [+2]
       27 GETIMPORT                        R7 K7 [tostring]
       29 CALL                             R7 1 1
       30 MOVE                             R5 R7
       31 LOADK                            R6 K8 [")"]
       32 CONCAT                           R3 R4 R6
       33 CALL                             R2 1 0
       34 DUPTABLE                         R2 K14 [{["tempId"] = "", ["width"] = 0, ["height"] = 0}]
       35 RETURN                           R2 1
       36 MOVE                             R4 R0
       37 NAMECALL                         R2 R1 K15 ["ConvertImageDataToTempIdAsync"]
       39 CALL                             R2 2 1
       40 FASTCALL1                        TYPEOF R2 ; [+3]
       41 MOVE                             R4 R2
       42 GETIMPORT                        R3 K17 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K18 ["table"] ; [+13]
       47 GETTABLEKS                       R4 R2 K9 ["tempId"]
       49 FASTCALL1                        TYPEOF R4 ; [+2]
       50 GETIMPORT                        R3 K17 [typeof]
       52 CALL                             R3 1 1
       53 JUMPIFNOTEQKS                    R3 K19 ["string"] ; [+5]
       55 GETTABLEKS                       R3 R2 K9 ["tempId"]
       57 JUMPIFNOTEQKS                    R3 K10 [""] ; [+20]
       59 GETIMPORT                        R3 K3 [warn]
       61 LOADK                            R5 K20 ["[Gen3d] AssistantApplication:ConvertImageDataToTempIdAsync returned unexpected result: "]
       62 FASTCALL1                        TOSTRING R2 ; [+3]
       63 MOVE                             R11 R2
       64 GETIMPORT                        R10 K7 [tostring]
       66 CALL                             R10 1 1
       67 MOVE                             R6 R10
       68 LOADK                            R7 K21 [" (base64 len="]
       69 LENGTH                           R11 R0
       70 FASTCALL1                        TOSTRING R11 ; [+2]
       71 GETIMPORT                        R10 K7 [tostring]
       73 CALL                             R10 1 1
       74 MOVE                             R8 R10
       75 LOADK                            R9 K8 [")"]
       76 CONCAT                           R4 R5 R9
       77 CALL                             R3 1 0
       78 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_10:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_11:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_13:
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
       17 DUPCLOSURE                       R6 K14 [PROTO_4]
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 SETTABLEKS                       R6 R5 K12 ["requestAsync"]
       22 SETTABLEKS                       R5 R4 K2 ["http"]
       24 DUPTABLE                         R5 K17 [{"encodeAsync", "decodeAsync"}]
       25 DUPCLOSURE                       R6 K18 [PROTO_5]
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R6 R5 K15 ["encodeAsync"]
       29 DUPCLOSURE                       R6 K19 [PROTO_6]
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
       53 CAPTURE                          UPVAL U7
       54 SETTABLEKS                       R5 R4 K6 ["base64EncodeAsync"]
       56 NEWCLOSURE                       R5 P5
       57 CAPTURE                          REF R1
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R5 R4 K7 ["convertImageDataToTempIdAsync"]
       61 DUPCLOSURE                       R5 K23 [PROTO_10]
       62 CAPTURE                          UPVAL U8
       63 SETTABLEKS                       R5 R4 K8 ["getUserId"]
       65 DUPCLOSURE                       R5 K24 [PROTO_11]
       66 SETTABLEKS                       R5 R4 K9 ["isRobloxScriptSecurity"]
       68 DUPCLOSURE                       R5 K25 [PROTO_12]
       69 SETTABLEKS                       R5 R4 K10 ["getEngineFeature"]
       71 CLOSEUPVALS                      R1
       72 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
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
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["StudioService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Src"]
       36 GETTABLEKS                       R6 R6 K15 ["Guest"]
       38 GETTABLEKS                       R6 R6 K16 ["GuestEnvironmentStore"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Packages"]
       45 GETTABLEKS                       R7 R7 K17 ["HttpWrapper"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K12 ["Packages"]
       52 GETTABLEKS                       R8 R8 K18 ["Promise"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K14 ["Src"]
       59 GETTABLEKS                       R9 R9 K19 ["Host"]
       61 GETTABLEKS                       R9 R9 K20 ["Services"]
       63 GETTABLEKS                       R9 R9 K21 ["createImageGenerationService"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R10 R0 K14 ["Src"]
       70 GETTABLEKS                       R10 R10 K19 ["Host"]
       72 GETTABLEKS                       R10 R10 K20 ["Services"]
       74 GETTABLEKS                       R10 R10 K22 ["createTexturePreviewService"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K11 [require]
       79 GETTABLEKS                       R11 R0 K23 ["Bin"]
       81 GETTABLEKS                       R11 R11 K24 ["Common"]
       83 GETTABLEKS                       R11 R11 K25 ["defineLuaFlags"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K26 [PROTO_13]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R3
       96 RETURN                           R11 1
