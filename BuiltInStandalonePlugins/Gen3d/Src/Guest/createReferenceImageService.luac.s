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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 NAMECALL                         R0 R0 K1 ["GetUserSettingsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+10]
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+4]
       13 JUMPIFEQKS                       R2 K5 [""] ; [+2]
       15 RETURN                           R2 1
       16 LOADK                            R3 K6 ["."]
       17 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetUserSettingsAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Base64EncodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+10]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+4]
       14 JUMPIFEQKS                       R3 K5 [""] ; [+2]
       16 RETURN                           R3 1
       17 GETIMPORT                        R4 K8 [buffer.tostring]
       19 GETUPVAL                         R5 0
       20 GETIMPORT                        R7 K10 [buffer.fromstring]
       22 MOVE                             R8 R1
       23 CALL                             R7 1 -1
       24 NAMECALL                         R5 R5 K11 ["Base64Encode"]
       26 CALL                             R5 -1 -1
       27 CALL                             R4 -1 -1
       28 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CALL                             R3 1 2
        6 JUMPIFNOT                        R3 ; [+11]
        7 FASTCALL1                        TYPEOF R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K3 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+5]
       14 JUMPIFEQKS                       R4 K5 [""] ; [+3]
       16 MOVE                             R1 R4
       17 RETURN                           R1 1
       18 LOADK                            R1 K6 ["."]
       19 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 1
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R6 R3
        9 GETIMPORT                        R5 K2 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+3]
       14 MOVE                             R4 R3
       15 RETURN                           R4 1
       16 LOADK                            R4 K4 [""]
       17 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 1
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R5 R2
        8 GETIMPORT                        R4 K2 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+3]
       13 MOVE                             R3 R2
       14 RETURN                           R3 1
       15 LOADK                            R3 K4 [""]
       16 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 DUPTABLE                         R1 K5 [{"getInitialDirectory", "setInitialDirectory", "openFileDialogAsync", "importFileBinaryAsync", "base64EncodeAsync"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["getInitialDirectory"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R1 K1 ["setInitialDirectory"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K2 ["openFileDialogAsync"]
       13 NEWCLOSURE                       R2 P3
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K3 ["importFileBinaryAsync"]
       17 NEWCLOSURE                       R2 P4
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K4 ["base64EncodeAsync"]
       22 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R0 0
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["AssistantApplication"]
        7 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        9 CALL                             R1 2 1
       10 SETUPVAL                         R1 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["ImageAttachmentOps"]
       15 GETTABLEKS                       R1 R1 K3 ["pickAndLoadImageAsync"]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 DUPTABLE                         R3 K7 [{["settingsKey"] = "Gen3dReferenceImageInitDirectory", ["dialogTitle"]}]
       21 GETUPVAL                         R4 4
       22 LOADK                            R6 K8 ["SceneGen"]
       23 LOADK                            R7 K9 ["SelectImage"]
       24 NAMECALL                         R4 R4 K10 ["getText"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K6 ["dialogTitle"]
       29 CALL                             R1 2 1
       30 JUMPIFNOTEQKNIL                  R1 ; [+3]
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 DUPTABLE                         R2 K13 [{"data", "mimeType"}]
       35 GETTABLEKS                       R3 R1 K11 ["data"]
       37 SETTABLEKS                       R3 R2 K11 ["data"]
       39 GETTABLEKS                       R3 R1 K12 ["mimeType"]
       41 SETTABLEKS                       R3 R2 K12 ["mimeType"]
       43 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
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
       12 GETIMPORT                        R2 K3 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+19]
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R5 R3
       21 GETIMPORT                        R4 K5 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+13]
       26 GETTABLEKS                       R5 R3 K7 ["tempId"]
       28 FASTCALL1                        TYPEOF R5 ; [+2]
       29 GETIMPORT                        R4 K5 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+5]
       34 GETTABLEKS                       R4 R3 K7 ["tempId"]
       36 JUMPIFNOTEQKS                    R4 K9 [""] ; [+15]
       38 GETIMPORT                        R4 K11 [warn]
       40 LOADK                            R5 K12 ["[Gen3d] ConvertImageDataToTempIdAsync failed for the reference image: %*"]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R7 K14 [tostring]
       45 CALL                             R7 1 1
       46 NAMECALL                         R5 R5 K15 ["format"]
       48 CALL                             R5 2 1
       49 CALL                             R4 1 0
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETTABLEKS                       R4 R3 K7 ["tempId"]
       54 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
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
       12 GETIMPORT                        R2 K3 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          VAL R0
        6 DUPCLOSURE                       R4 K0 [PROTO_2]
        7 DUPCLOSURE                       R5 K1 [PROTO_4]
        8 DUPCLOSURE                       R6 K2 [PROTO_6]
        9 CAPTURE                          UPVAL U1
       10 DUPCLOSURE                       R7 K3 [PROTO_12]
       11 CAPTURE                          VAL R6
       12 DUPTABLE                         R8 K7 [{"pickAsync", "toTempIdAsync", "releaseTempId"}]
       13 NEWCLOSURE                       R9 P5
       14 CAPTURE                          REF R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R7
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R9 R8 K4 ["pickAsync"]
       21 NEWCLOSURE                       R9 P6
       22 CAPTURE                          REF R2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R9 R8 K5 ["toTempIdAsync"]
       26 NEWCLOSURE                       R9 P7
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R9 R8 K6 ["releaseTempId"]
       31 CLOSEUPVALS                      R2
       32 RETURN                           R8 1

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["createLocalization"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K16 [PROTO_18]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
