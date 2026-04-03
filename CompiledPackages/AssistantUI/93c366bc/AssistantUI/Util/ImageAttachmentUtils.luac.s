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
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["imageAttachmentInitDirectory"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K3 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFEQKS                       R1 K4 ["string"] ; [+2]
       13 LOADK                            R0 K5 ["."]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K6 ["openFileDialogAsync"]
       17 GETUPVAL                         R2 1
       18 LOADK                            R3 K7 ["Select an image"]
       19 MOVE                             R4 R0
       20 CALL                             R1 3 1
       21 JUMPIFNOTEQKS                    R1 K8 [""] ; [+3]
       23 LOADK                            R2 K8 [""]
       24 RETURN                           R2 1
       25 LOADK                            R6 K9 [".*[/\\]()"]
       26 NAMECALL                         R4 R1 K10 ["match"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+12]
       30 LOADN                            R7 1
       31 SUBK                             R8 R4 K11 [2]
       32 NAMECALL                         R5 R1 K12 ["sub"]
       34 CALL                             R5 3 1
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R1 K12 ["sub"]
       38 CALL                             R6 2 1
       39 MOVE                             R2 R5
       40 MOVE                             R3 R6
       41 JUMP                             ; [+2]
       42 LOADK                            R2 K8 [""]
       43 MOVE                             R3 R1
       44 SETUPVAL                         R2 2
       45 SETUPVAL                         R3 3
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K13 ["setUserSettingsAsync"]
       49 LOADK                            R3 K1 ["imageAttachmentInitDirectory"]
       50 GETUPVAL                         R4 2
       51 CALL                             R2 2 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R2 R3 K14 ["importFileBinaryAsync"]
       55 MOVE                             R3 R1
       56 LOADK                            R4 K15 [5242880]
       57 CALL                             R2 2 1
       58 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 GETIMPORT                        R3 K2 [pcall]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          REF R1
       12 CAPTURE                          REF R2
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+13]
       15 GETIMPORT                        R5 K4 [warn]
       17 LOADK                            R7 K5 ["Failed to import file: "]
       18 FASTCALL1                        TOSTRING R4 ; [+3]
       19 MOVE                             R9 R4
       20 GETIMPORT                        R8 K7 [tostring]
       22 CALL                             R8 1 1
       23 CONCAT                           R6 R7 R8
       24 CALL                             R5 1 0
       25 LOADNIL                          R5
       26 CLOSEUPVALS                      R1
       27 RETURN                           R5 1
       28 JUMPIFNOTEQKS                    R4 K8 [""] ; [+4]
       30 LOADNIL                          R5
       31 CLOSEUPVALS                      R1
       32 RETURN                           R5 1
       33 GETIMPORT                        R5 K11 [string.lower]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 1
       37 MOVE                             R2 R5
       38 GETIMPORT                        R5 K13 [string.find]
       40 MOVE                             R6 R2
       41 LOADK                            R7 K14 ["%.[^.]*$"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+8]
       44 ADDK                             R8 R5 K15 [1]
       45 FASTCALL2                        STRING_SUB R2 R8 ; [+4]
       47 MOVE                             R7 R2
       48 GETIMPORT                        R6 K17 [string.sub]
       50 CALL                             R6 2 1
       51 JUMP                             ; [+1]
       52 LOADK                            R6 K18 ["png"]
       53 GETUPVAL                         R9 2
       54 GETTABLE                         R8 R9 R6
       55 ORK                              R7 R8 K19 ["image/png"]
       56 GETIMPORT                        R8 K2 [pcall]
       58 NEWCLOSURE                       R9 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R4
       61 CALL                             R8 1 2
       62 JUMPIFNOT                        R8 ; [+1]
       63 JUMPIF                           R9 ; [+7]
       64 GETIMPORT                        R10 K4 [warn]
       66 LOADK                            R11 K20 ["Failed to encode image to base64"]
       67 CALL                             R10 1 0
       68 LOADNIL                          R10
       69 CLOSEUPVALS                      R1
       70 RETURN                           R10 1
       71 DUPTABLE                         R10 K24 [{"type", "data", "mimeType"}]
       72 LOADK                            R11 K25 ["image"]
       73 SETTABLEKS                       R11 R10 K21 ["type"]
       75 SETTABLEKS                       R9 R10 K22 ["data"]
       77 SETTABLEKS                       R7 R10 K23 ["mimeType"]
       79 CLOSEUPVALS                      R1
       80 RETURN                           R10 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 GETIMPORT                        R3 K4 [table.insert]
       10 CALL                             R3 2 0
       11 RETURN                           R2 1

PROTO_5:
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
       19 NEWTABLE                         R3 4 0
       21 NEWTABLE                         R4 0 3
       23 LOADK                            R5 K9 ["jpg"]
       24 LOADK                            R6 K10 ["jpeg"]
       25 LOADK                            R7 K11 ["png"]
       26 SETLIST                          R4 R5 3 [1]
       28 DUPTABLE                         R5 K12 [{"jpg", "jpeg", "png"}]
       29 LOADK                            R6 K13 ["image/jpeg"]
       30 SETTABLEKS                       R6 R5 K9 ["jpg"]
       32 LOADK                            R6 K13 ["image/jpeg"]
       33 SETTABLEKS                       R6 R5 K10 ["jpeg"]
       35 LOADK                            R6 K14 ["image/png"]
       36 SETTABLEKS                       R6 R5 K11 ["png"]
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 DUPCLOSURE                       R7 K16 [PROTO_3]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R7 R3 K17 ["promptAndLoadImageAsync"]
       45 DUPCLOSURE                       R7 K18 [PROTO_4]
       46 SETTABLEKS                       R7 R3 K19 ["addImage"]
       48 DUPCLOSURE                       R7 K20 [PROTO_5]
       49 SETTABLEKS                       R7 R3 K21 ["removeImage"]
       51 RETURN                           R3 1
