PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 12
        2 JUMPIFNOTLT                      R1 R2 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 LOADN                            R3 1
        7 LOADN                            R4 8
        8 FASTCALL3                        STRING_SUB R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K2 [string.sub]
       13 CALL                             R1 3 1
       14 JUMPIFNOTEQKS                    R1 K3 ["�PNG\r\n\x\n"] ; [+3]
       16 LOADK                            R1 K4 ["image/png"]
       17 RETURN                           R1 1
       18 FASTCALL2K                       STRING_BYTE R0 K5 ; [+5]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K5 [1]
       22 GETIMPORT                        R1 K7 [string.byte]
       24 CALL                             R1 2 1
       25 JUMPIFNOTEQKN                    R1 K8 [255] ; [+21]
       27 FASTCALL2K                       STRING_BYTE R0 K9 ; [+5]
       29 MOVE                             R2 R0
       30 LOADK                            R3 K9 [2]
       31 GETIMPORT                        R1 K7 [string.byte]
       33 CALL                             R1 2 1
       34 JUMPIFNOTEQKN                    R1 K10 [216] ; [+12]
       36 FASTCALL2K                       STRING_BYTE R0 K11 ; [+5]
       38 MOVE                             R2 R0
       39 LOADK                            R3 K11 [3]
       40 GETIMPORT                        R1 K7 [string.byte]
       42 CALL                             R1 2 1
       43 JUMPIFNOTEQKN                    R1 K8 [255] ; [+3]
       45 LOADK                            R1 K12 ["image/jpeg"]
       46 RETURN                           R1 1
       47 LOADN                            R3 1
       48 LOADN                            R4 4
       49 FASTCALL3                        STRING_SUB R0 R3 R4
       51 MOVE                             R2 R0
       52 GETIMPORT                        R1 K2 [string.sub]
       54 CALL                             R1 3 1
       55 JUMPIFNOTEQKS                    R1 K13 ["RIFF"] ; [+13]
       57 LOADN                            R3 9
       58 LOADN                            R4 12
       59 FASTCALL3                        STRING_SUB R0 R3 R4
       61 MOVE                             R2 R0
       62 GETIMPORT                        R1 K2 [string.sub]
       64 CALL                             R1 3 1
       65 JUMPIFNOTEQKS                    R1 K14 ["WEBP"] ; [+3]
       67 LOADK                            R1 K15 ["image/webp"]
       68 RETURN                           R1 1
       69 LOADN                            R3 1
       70 LOADN                            R4 6
       71 FASTCALL3                        STRING_SUB R0 R3 R4
       73 MOVE                             R2 R0
       74 GETIMPORT                        R1 K2 [string.sub]
       76 CALL                             R1 3 1
       77 JUMPIFEQKS                       R1 K16 ["GIF87a"] ; [+3]
       79 JUMPIFNOTEQKS                    R1 K17 ["GIF89a"] ; [+3]
       81 LOADK                            R2 K18 ["image/gif"]
       82 RETURN                           R2 1
       83 LOADN                            R4 1
       84 LOADN                            R5 2
       85 FASTCALL3                        STRING_SUB R0 R4 R5
       87 MOVE                             R3 R0
       88 GETIMPORT                        R2 K2 [string.sub]
       90 CALL                             R2 3 1
       91 JUMPIFNOTEQKS                    R2 K19 ["BM"] ; [+3]
       93 LOADK                            R2 K20 ["image/bmp"]
       94 RETURN                           R2 1
       95 LOADNIL                          R2
       96 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 [".*[/\\]()"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 LOADN                            R4 1
        6 SUBK                             R5 R1 K2 [2]
        7 NAMECALL                         R2 R0 K3 ["sub"]
        9 CALL                             R2 3 1
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R0 K3 ["sub"]
       13 CALL                             R3 2 -1
       14 RETURN                           R2 -1
       15 LOADK                            R2 K4 [""]
       16 MOVE                             R3 R0
       17 RETURN                           R2 2

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [string.find]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K5 ["%.[^.]*$"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 ADDK                             R6 R3 K6 [1]
       11 FASTCALL2                        STRING_SUB R2 R6 ; [+4]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K8 [string.sub]
       16 CALL                             R4 2 1
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K9 [""]
       19 GETUPVAL                         R6 0
       20 GETTABLE                         R5 R6 R4
       21 JUMPIFNOTEQKNIL                  R5 ; [+11]
       23 GETIMPORT                        R6 K11 [error]
       25 LOADK                            R8 K12 ["Unsupported image file extension \".%*\". Supported: jpg, jpeg, png."]
       26 MOVE                             R10 R4
       27 NAMECALL                         R8 R8 K13 ["format"]
       29 CALL                             R8 2 1
       30 MOVE                             R7 R8
       31 LOADN                            R8 0
       32 CALL                             R6 2 0
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R1
       35 CALL                             R6 1 1
       36 JUMPIFEQKNIL                     R6 ; [+17]
       38 JUMPIFEQ                         R6 R5 ; [+15]
       40 GETIMPORT                        R7 K11 [error]
       42 LOADK                            R11 K14 ["File extension \".%*\" indicates %*, but the file contents are actually %*. "]
       43 MOVE                             R13 R4
       44 MOVE                             R14 R5
       45 MOVE                             R15 R6
       46 NAMECALL                         R11 R11 K13 ["format"]
       48 CALL                             R11 4 1
       49 MOVE                             R9 R11
       50 LOADK                            R10 K15 ["Please rename the file to match its real format or convert it to a supported one (jpg, jpeg, png)."]
       51 CONCAT                           R8 R9 R10
       52 LOADN                            R9 0
       53 CALL                             R7 2 0
       54 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 NAMECALL                         R0 R0 K1 ["GetUserSettingsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Gen3dReferenceImageInitDirectory"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetUserSettingsAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Base64EncodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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
       27 GETUPVAL                         R3 2
       28 LOADK                            R4 K5 ["Select an image"]
       29 GETIMPORT                        R6 K1 [pcall]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R0
       33 CALL                             R6 1 2
       34 JUMPIFNOT                        R6 ; [+11]
       35 FASTCALL1                        TYPEOF R7 ; [+3]
       36 MOVE                             R9 R7
       37 GETIMPORT                        R8 K7 [typeof]
       39 CALL                             R8 1 1
       40 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+5]
       42 JUMPIFEQKS                       R7 K9 [""] ; [+3]
       44 MOVE                             R5 R7
       45 JUMP                             ; [+1]
       46 LOADK                            R5 K10 ["."]
       47 NAMECALL                         R1 R0 K11 ["OpenFileDialogAsync"]
       49 CALL                             R1 4 1
       50 FASTCALL1                        TYPEOF R1 ; [+3]
       51 MOVE                             R3 R1
       52 GETIMPORT                        R2 K7 [typeof]
       54 CALL                             R2 1 1
       55 JUMPIFNOTEQKS                    R2 K8 ["string"] ; [+3]
       57 JUMPIFNOTEQKS                    R1 K9 [""] ; [+3]
       59 LOADNIL                          R2
       60 RETURN                           R2 1
       61 LOADK                            R6 K12 [".*[/\\]()"]
       62 NAMECALL                         R4 R1 K13 ["match"]
       64 CALL                             R4 2 1
       65 JUMPIFNOT                        R4 ; [+12]
       66 LOADN                            R7 1
       67 SUBK                             R8 R4 K14 [2]
       68 NAMECALL                         R5 R1 K15 ["sub"]
       70 CALL                             R5 3 1
       71 MOVE                             R2 R5
       72 MOVE                             R7 R4
       73 NAMECALL                         R5 R1 K15 ["sub"]
       75 CALL                             R5 2 1
       76 MOVE                             R3 R5
       77 JUMP                             ; [+2]
       78 LOADK                            R2 K9 [""]
       79 MOVE                             R3 R1
       80 GETIMPORT                        R4 K1 [pcall]
       82 NEWCLOSURE                       R5 P2
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R2
       85 CALL                             R4 1 0
       86 MOVE                             R6 R1
       87 LOADK                            R7 K16 [5242880]
       88 NAMECALL                         R4 R0 K17 ["ImportFileBinaryAsync"]
       90 CALL                             R4 3 1
       91 FASTCALL1                        TYPEOF R4 ; [+3]
       92 MOVE                             R6 R4
       93 GETIMPORT                        R5 K7 [typeof]
       95 CALL                             R5 1 1
       96 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       98 JUMPIFNOTEQKS                    R4 K9 [""] ; [+11]
      100 GETIMPORT                        R5 K19 [error]
      102 LOADK                            R7 K20 ["File is empty or could not be read: %*"]
      103 MOVE                             R9 R1
      104 NAMECALL                         R7 R7 K21 ["format"]
      106 CALL                             R7 2 1
      107 MOVE                             R6 R7
      108 LOADN                            R7 0
      109 CALL                             R5 2 0
      110 GETUPVAL                         R5 3
      111 MOVE                             R6 R3
      112 MOVE                             R7 R4
      113 CALL                             R5 2 1
      114 DUPTABLE                         R6 K24 [{"data", "mimeType"}]
      115 GETUPVAL                         R7 4
      116 MOVE                             R8 R0
      117 MOVE                             R9 R4
      118 CALL                             R7 2 1
      119 SETTABLEKS                       R7 R6 K22 ["data"]
      121 SETTABLEKS                       R5 R6 K23 ["mimeType"]
      123 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
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
       44 JUMPIFNOTEQKS                    R4 K7 [""] ; [+16]
       46 GETIMPORT                        R4 K9 [warn]
       48 LOADK                            R6 K10 ["[Gen3d] ConvertImageDataToTempIdAsync failed for the reference image: %*"]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R9 R3
       51 GETIMPORT                        R8 K12 [tostring]
       53 CALL                             R8 1 1
       54 NAMECALL                         R6 R6 K13 ["format"]
       56 CALL                             R6 2 1
       57 MOVE                             R5 R6
       58 CALL                             R4 1 0
       59 LOADNIL                          R4
       60 RETURN                           R4 1
       61 GETTABLEKS                       R4 R3 K5 ["tempId"]
       63 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R4 K0 [PROTO_7]
        8 DUPCLOSURE                       R5 K1 [PROTO_9]
        9 DUPCLOSURE                       R6 K2 [PROTO_11]
       10 CAPTURE                          UPVAL U0
       11 DUPTABLE                         R7 K6 [{"pickAsync", "toTempIdAsync", "releaseTempId"}]
       12 NEWCLOSURE                       R8 P5
       13 CAPTURE                          REF R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R6
       18 SETTABLEKS                       R8 R7 K3 ["pickAsync"]
       20 NEWCLOSURE                       R8 P6
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R8 R7 K4 ["toTempIdAsync"]
       25 NEWCLOSURE                       R8 P7
       26 CAPTURE                          REF R1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R8 R7 K5 ["releaseTempId"]
       30 CLOSEUPVALS                      R1
       31 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 0 3
       22 LOADK                            R4 K12 ["jpg"]
       23 LOADK                            R5 K13 ["jpeg"]
       24 LOADK                            R6 K14 ["png"]
       25 SETLIST                          R3 R4 3 [1]
       27 DUPTABLE                         R4 K17 [{["jpg"] = "image/jpeg", ["jpeg"] = "image/jpeg", ["png"] = "image/png"}]
       28 DUPCLOSURE                       R5 K18 [PROTO_0]
       29 DUPCLOSURE                       R6 K19 [PROTO_1]
       30 DUPCLOSURE                       R7 K20 [PROTO_2]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R8 K21 [PROTO_17]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R7
       37 RETURN                           R8 1
