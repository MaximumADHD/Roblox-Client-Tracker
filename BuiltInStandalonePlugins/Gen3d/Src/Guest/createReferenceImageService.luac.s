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
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 SETUPVAL                         R1 0
       15 GETUPVAL                         R2 0
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R0 0
        4 JUMP                             ; [+11]
        5 GETIMPORT                        R1 K1 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 1 2
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R0
       13 JUMP                             ; [+2]
       14 SETUPVAL                         R2 0
       15 GETUPVAL                         R0 0
       16 JUMPIFNOTEQKNIL                  R0 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       22 LOADK                            R3 K2 ["[Gen3d] AssistantApplication plugin component unavailable"]
       23 GETIMPORT                        R1 K4 [assert]
       25 CALL                             R1 2 0
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 NAMECALL                         R0 R0 K1 ["GetUserSettingsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetUserSettingsAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Base64EncodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+11]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+2]
       12 LOADNIL                          R1
       13 JUMP                             ; [+2]
       14 SETUPVAL                         R3 0
       15 GETUPVAL                         R1 0
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       22 LOADK                            R4 K2 ["[Gen3d] AssistantApplication plugin component unavailable"]
       23 GETIMPORT                        R2 K4 [assert]
       25 CALL                             R2 2 0
       26 MOVE                             R0 R1
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K5 ["ImageAttachmentOps"]
       30 GETTABLEKS                       R1 R1 K6 ["pickAndLoadImageAsync"]
       32 GETUPVAL                         R2 3
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 DUPTABLE                         R3 K11 [{["settingsKey"] = "Gen3dReferenceImageInitDirectory", ["dialogTitle"] = "Select an image"}]
       36 CALL                             R1 2 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+3]
       39 LOADNIL                          R2
       40 RETURN                           R2 1
       41 DUPTABLE                         R2 K14 [{"data", "mimeType"}]
       42 GETTABLEKS                       R3 R1 K12 ["data"]
       44 SETTABLEKS                       R3 R2 K12 ["data"]
       46 GETTABLEKS                       R3 R1 K13 ["mimeType"]
       48 SETTABLEKS                       R3 R2 K13 ["mimeType"]
       50 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+11]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+2]
       12 LOADNIL                          R1
       13 JUMP                             ; [+2]
       14 SETUPVAL                         R3 0
       15 GETUPVAL                         R1 0
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K1 [pcall]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CALL                             R2 1 2
       26 JUMPIFNOT                        R2 ; [+19]
       27 FASTCALL1                        TYPEOF R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K3 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+13]
       34 GETTABLEKS                       R5 R3 K5 ["tempId"]
       36 FASTCALL1                        TYPEOF R5 ; [+2]
       37 GETIMPORT                        R4 K3 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+5]
       42 GETTABLEKS                       R4 R3 K5 ["tempId"]
       44 JUMPIFNOTEQKS                    R4 K7 [""] ; [+15]
       46 GETIMPORT                        R4 K9 [warn]
       48 LOADK                            R5 K10 ["[Gen3d] ConvertImageDataToTempIdAsync failed for the reference image: %*"]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R8 R3
       51 GETIMPORT                        R7 K12 [tostring]
       53 CALL                             R7 1 1
       54 NAMECALL                         R5 R5 K13 ["format"]
       56 CALL                             R5 2 1
       57 CALL                             R4 1 0
       58 LOADNIL                          R4
       59 RETURN                           R4 1
       60 GETTABLEKS                       R4 R3 K5 ["tempId"]
       62 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+11]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+2]
       12 LOADNIL                          R1
       13 JUMP                             ; [+2]
       14 SETUPVAL                         R3 0
       15 GETUPVAL                         R1 0
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K1 [pcall]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R4 K0 [PROTO_4]
        8 DUPCLOSURE                       R5 K1 [PROTO_6]
        9 DUPCLOSURE                       R6 K2 [PROTO_8]
       10 CAPTURE                          UPVAL U0
       11 DUPCLOSURE                       R7 K3 [PROTO_14]
       12 CAPTURE                          VAL R6
       13 DUPTABLE                         R8 K7 [{"pickAsync", "toTempIdAsync", "releaseTempId"}]
       14 NEWCLOSURE                       R9 P6
       15 CAPTURE                          REF R1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R7
       19 SETTABLEKS                       R9 R8 K4 ["pickAsync"]
       21 NEWCLOSURE                       R9 P7
       22 CAPTURE                          REF R1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R9 R8 K5 ["toTempIdAsync"]
       26 NEWCLOSURE                       R9 P8
       27 CAPTURE                          REF R1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R9 R8 K6 ["releaseTempId"]
       31 CLOSEUPVALS                      R1
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
       27 DUPCLOSURE                       R4 K14 [PROTO_20]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
