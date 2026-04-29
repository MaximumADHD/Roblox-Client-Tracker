PROTO_0:
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
       13 CALL                             R3 2 1
       14 RETURN                           R2 2
       15 LOADK                            R2 K4 [""]
       16 MOVE                             R3 R0
       17 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 LOADK                            R6 K1 [".*[/\\]()"]
        5 NAMECALL                         R4 R0 K2 ["match"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+12]
        9 LOADN                            R7 1
       10 SUBK                             R8 R4 K3 [2]
       11 NAMECALL                         R5 R0 K4 ["sub"]
       13 CALL                             R5 3 1
       14 MOVE                             R8 R4
       15 NAMECALL                         R6 R0 K4 ["sub"]
       17 CALL                             R6 2 1
       18 MOVE                             R2 R5
       19 MOVE                             R3 R6
       20 JUMP                             ; [+2]
       21 LOADK                            R2 K5 [""]
       22 MOVE                             R3 R0
       23 GETTABLEKS                       R4 R1 K6 ["importFileBinaryAsync"]
       25 MOVE                             R5 R0
       26 LOADK                            R6 K7 [5242880]
       27 CALL                             R4 2 1
       28 JUMPIFNOTEQKS                    R4 K5 [""] ; [+7]
       30 GETIMPORT                        R5 K9 [error]
       32 LOADK                            R7 K10 ["File is empty or could not be read: "]
       33 MOVE                             R8 R0
       34 CONCAT                           R6 R7 R8
       35 CALL                             R5 1 0
       36 GETIMPORT                        R5 K13 [string.lower]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 MOVE                             R3 R5
       41 GETIMPORT                        R5 K15 [string.find]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K16 ["%.[^.]*$"]
       45 CALL                             R5 2 1
       46 JUMPIFNOT                        R5 ; [+8]
       47 ADDK                             R8 R5 K17 [1]
       48 FASTCALL2                        STRING_SUB R3 R8 ; [+4]
       50 MOVE                             R7 R3
       51 GETIMPORT                        R6 K18 [string.sub]
       53 CALL                             R6 2 1
       54 JUMP                             ; [+1]
       55 LOADK                            R6 K5 [""]
       56 GETUPVAL                         R8 1
       57 GETTABLE                         R7 R8 R6
       58 JUMPIF                           R7 ; [+9]
       59 GETIMPORT                        R7 K9 [error]
       61 LOADK                            R9 K19 ["Unsupported image file extension \".%*\". Supported: jpg, jpeg, png."]
       62 MOVE                             R11 R6
       63 NAMECALL                         R9 R9 K20 ["format"]
       65 CALL                             R9 2 1
       66 MOVE                             R8 R9
       67 CALL                             R7 1 0
       68 GETUPVAL                         R8 1
       69 GETTABLE                         R7 R8 R6
       70 GETIMPORT                        R8 K22 [pcall]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 CALL                             R8 1 2
       76 JUMPIF                           R8 ; [+10]
       77 GETIMPORT                        R10 K9 [error]
       79 LOADK                            R12 K23 ["Failed to encode image to base64, reason: "]
       80 FASTCALL1                        TOSTRING R9 ; [+3]
       81 MOVE                             R14 R9
       82 GETIMPORT                        R13 K25 [tostring]
       84 CALL                             R13 1 1
       85 CONCAT                           R11 R12 R13
       86 CALL                             R10 1 0
       87 JUMPIF                           R9 ; [+4]
       88 GETIMPORT                        R10 K9 [error]
       90 LOADK                            R11 K26 ["Failed to encode image to base64."]
       91 CALL                             R10 1 0
       92 DUPTABLE                         R10 K30 [{"type", "data", "mimeType"}]
       93 LOADK                            R11 K31 ["image"]
       94 SETTABLEKS                       R11 R10 K27 ["type"]
       96 SETTABLEKS                       R9 R10 K28 ["data"]
       98 SETTABLEKS                       R7 R10 K29 ["mimeType"]
      100 RETURN                           R10 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 GETTABLEKS                       R3 R0 K1 ["getUserSettingsAsync"]
        8 LOADK                            R4 K2 ["imageAttachmentInitDirectory"]
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+7]
       11 FASTCALL1                        TYPEOF R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K4 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFEQKS                       R4 K5 ["string"] ; [+2]
       18 LOADK                            R3 K6 ["."]
       19 GETTABLEKS                       R4 R0 K7 ["openFileDialogAsync"]
       21 GETUPVAL                         R5 1
       22 LOADK                            R6 K8 ["Select an image"]
       23 MOVE                             R7 R3
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKS                    R4 K9 [""] ; [+3]
       27 LOADNIL                          R5
       28 RETURN                           R5 1
       29 LOADK                            R9 K10 [".*[/\\]()"]
       30 NAMECALL                         R7 R4 K11 ["match"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+12]
       34 LOADN                            R10 1
       35 SUBK                             R11 R7 K12 [2]
       36 NAMECALL                         R8 R4 K13 ["sub"]
       38 CALL                             R8 3 1
       39 MOVE                             R11 R7
       40 NAMECALL                         R9 R4 K13 ["sub"]
       42 CALL                             R9 2 1
       43 MOVE                             R5 R8
       44 MOVE                             R6 R9
       45 JUMP                             ; [+2]
       46 LOADK                            R5 K9 [""]
       47 MOVE                             R6 R4
       48 MOVE                             R1 R5
       49 MOVE                             R2 R6
       50 GETTABLEKS                       R5 R0 K14 ["setUserSettingsAsync"]
       52 LOADK                            R6 K2 ["imageAttachmentInitDirectory"]
       53 MOVE                             R7 R1
       54 CALL                             R5 2 0
       55 GETUPVAL                         R5 2
       56 CALL                             R5 0 1
       57 JUMPIFNOT                        R5 ; [+6]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R5 R6 K15 ["loadImageFromPathAsync"]
       61 MOVE                             R6 R4
       62 CALL                             R5 1 -1
       63 RETURN                           R5 -1
       64 GETTABLEKS                       R5 R0 K16 ["importFileBinaryAsync"]
       66 MOVE                             R6 R4
       67 LOADK                            R7 K17 [5242880]
       68 CALL                             R5 2 1
       69 JUMPIFNOTEQKS                    R5 K9 [""] ; [+3]
       71 LOADNIL                          R6
       72 RETURN                           R6 1
       73 GETIMPORT                        R6 K19 [string.lower]
       75 MOVE                             R7 R2
       76 CALL                             R6 1 1
       77 MOVE                             R2 R6
       78 GETIMPORT                        R6 K21 [string.find]
       80 MOVE                             R7 R2
       81 LOADK                            R8 K22 ["%.[^.]*$"]
       82 CALL                             R6 2 1
       83 JUMPIFNOT                        R6 ; [+8]
       84 ADDK                             R9 R6 K23 [1]
       85 FASTCALL2                        STRING_SUB R2 R9 ; [+4]
       87 MOVE                             R8 R2
       88 GETIMPORT                        R7 K24 [string.sub]
       90 CALL                             R7 2 1
       91 JUMP                             ; [+1]
       92 LOADK                            R7 K25 ["png"]
       93 GETUPVAL                         R10 4
       94 GETTABLE                         R9 R10 R7
       95 ORK                              R8 R9 K26 ["image/png"]
       96 GETIMPORT                        R9 K28 [pcall]
       98 NEWCLOSURE                       R10 P0
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R5
      101 CALL                             R9 1 2
      102 JUMPIF                           R9 ; [+10]
      103 GETIMPORT                        R11 K30 [error]
      105 LOADK                            R13 K31 ["Failed to encode image to base64, reason: "]
      106 FASTCALL1                        TOSTRING R10 ; [+3]
      107 MOVE                             R15 R10
      108 GETIMPORT                        R14 K33 [tostring]
      110 CALL                             R14 1 1
      111 CONCAT                           R12 R13 R14
      112 CALL                             R11 1 0
      113 JUMPIF                           R10 ; [+4]
      114 GETIMPORT                        R11 K30 [error]
      116 LOADK                            R12 K34 ["Failed to encode image to base64."]
      117 CALL                             R11 1 0
      118 DUPTABLE                         R11 K38 [{"type", "data", "mimeType"}]
      119 LOADK                            R12 K39 ["image"]
      120 SETTABLEKS                       R12 R11 K35 ["type"]
      122 SETTABLEKS                       R10 R11 K36 ["data"]
      124 SETTABLEKS                       R8 R11 K37 ["mimeType"]
      126 RETURN                           R11 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 GETIMPORT                        R3 K4 [table.insert]
       10 CALL                             R3 2 0
       11 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.remove]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FFlagEnableStoreImageTool"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 4 0
       28 NEWTABLE                         R5 0 3
       30 LOADK                            R6 K11 ["jpg"]
       31 LOADK                            R7 K12 ["jpeg"]
       32 LOADK                            R8 K13 ["png"]
       33 SETLIST                          R5 R6 3 [1]
       35 DUPTABLE                         R6 K14 [{"jpg", "jpeg", "png"}]
       36 LOADK                            R7 K15 ["image/jpeg"]
       37 SETTABLEKS                       R7 R6 K11 ["jpg"]
       39 LOADK                            R7 K15 ["image/jpeg"]
       40 SETTABLEKS                       R7 R6 K12 ["jpeg"]
       42 LOADK                            R7 K16 ["image/png"]
       43 SETTABLEKS                       R7 R6 K13 ["png"]
       45 DUPCLOSURE                       R7 K17 [PROTO_0]
       46 DUPCLOSURE                       R8 K18 [PROTO_2]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R8 R4 K19 ["loadImageFromPathAsync"]
       51 DUPCLOSURE                       R8 K20 [PROTO_4]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R8 R4 K21 ["promptAndLoadImageAsync"]
       59 DUPCLOSURE                       R8 K22 [PROTO_5]
       60 SETTABLEKS                       R8 R4 K23 ["addImage"]
       62 DUPCLOSURE                       R8 K24 [PROTO_6]
       63 SETTABLEKS                       R8 R4 K25 ["removeImage"]
       65 RETURN                           R4 1
