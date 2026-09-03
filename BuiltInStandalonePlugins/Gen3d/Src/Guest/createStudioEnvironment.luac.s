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
       24 SETTABLEKS                       R3 R2 K2 ["StatusMessage"]
       26 GETTABLEKS                       R3 R1 K3 ["Headers"]
       28 SETTABLEKS                       R3 R2 K3 ["Headers"]
       30 GETTABLEKS                       R3 R1 K4 ["Body"]
       32 SETTABLEKS                       R3 R2 K4 ["Body"]
       34 GETUPVAL                         R3 0
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_9:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Guest"]
        3 GETTABLEKS                       R1 R1 K1 ["Environment"]
        5 GETTABLEKS                       R1 R1 K2 ["new"]
        7 CALL                             R1 0 1
        8 LOADNIL                          R2
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 GETTABLEKS                       R4 R1 K3 ["http"]
       14 DUPCLOSURE                       R5 K4 [PROTO_4]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R5 R4 K5 ["requestAsync"]
       19 GETUPVAL                         R4 3
       20 CALL                             R4 0 1
       21 DUPTABLE                         R5 K8 [{"startAsync", "getStatusAsync"}]
       22 GETTABLEKS                       R6 R4 K6 ["startAsync"]
       24 SETTABLEKS                       R6 R5 K6 ["startAsync"]
       26 GETTABLEKS                       R6 R4 K7 ["getStatusAsync"]
       28 SETTABLEKS                       R6 R5 K7 ["getStatusAsync"]
       30 SETTABLEKS                       R5 R1 K9 ["imageGeneration"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          REF R2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U4
       36 SETTABLEKS                       R5 R1 K10 ["base64EncodeAsync"]
       38 NEWCLOSURE                       R5 P3
       39 CAPTURE                          REF R2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R5 R1 K11 ["convertImageDataToTempIdAsync"]
       43 DUPCLOSURE                       R5 K12 [PROTO_8]
       44 CAPTURE                          UPVAL U5
       45 SETTABLEKS                       R5 R1 K13 ["getUserId"]
       47 DUPCLOSURE                       R5 K14 [PROTO_9]
       48 SETTABLEKS                       R5 R1 K15 ["isRobloxScriptSecurity"]
       50 DUPCLOSURE                       R5 K16 [PROTO_10]
       51 SETTABLEKS                       R5 R1 K17 ["getEngineFeature"]
       53 CLOSEUPVALS                      R2
       54 RETURN                           R1 1

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
       29 GETTABLEKS                       R5 R5 K13 ["AssistantUI"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Packages"]
       36 GETTABLEKS                       R6 R6 K14 ["Promise"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Host"]
       45 GETTABLEKS                       R7 R7 K17 ["Services"]
       47 GETTABLEKS                       R7 R7 K18 ["createImageGenerationService"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K19 [PROTO_11]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 RETURN                           R7 1
