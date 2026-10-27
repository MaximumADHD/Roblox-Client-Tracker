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
        0 GETIMPORT                        R1 K2 [string.lower]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [string.find]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K5 ["%.[^.]*$"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+8]
       10 ADDK                             R5 R2 K6 [1]
       11 FASTCALL2                        STRING_SUB R1 R5 ; [+4]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K8 [string.sub]
       16 CALL                             R3 2 1
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K9 [""]
       19 GETUPVAL                         R5 0
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOTEQKNIL                  R4 ; [+10]
       23 GETIMPORT                        R5 K11 [error]
       25 LOADK                            R6 K12 ["Unsupported image file extension \".%*\". Supported: jpg, jpeg, png."]
       26 MOVE                             R8 R3
       27 NAMECALL                         R6 R6 K13 ["format"]
       29 CALL                             R6 2 1
       30 LOADN                            R7 0
       31 CALL                             R5 2 0
       32 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["splitPath"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 2
        5 GETTABLEKS                       R4 R0 K1 ["importFileBinaryAsync"]
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K2 ["MAX_FILE_SIZE"]
       11 CALL                             R4 2 1
       12 JUMPIFNOTEQKS                    R4 K3 [""] ; [+10]
       14 GETIMPORT                        R5 K5 [error]
       16 LOADK                            R6 K6 ["File is empty or could not be read: %*"]
       17 MOVE                             R8 R1
       18 NAMECALL                         R6 R6 K7 ["format"]
       20 CALL                             R6 2 1
       21 LOADN                            R7 0
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K8 ["resolveMimeType"]
       26 MOVE                             R6 R3
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R0 K9 ["base64EncodeAsync"]
       30 MOVE                             R7 R4
       31 CALL                             R6 1 1
       32 DUPTABLE                         R7 K12 [{"data", "mimeType"}]
       33 SETTABLEKS                       R6 R7 K10 ["data"]
       35 SETTABLEKS                       R5 R7 K11 ["mimeType"]
       37 RETURN                           R7 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["getInitialDirectory"]
        2 GETTABLEKS                       R3 R1 K1 ["settingsKey"]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K3 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+3]
       12 MOVE                             R3 R2
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K5 ["."]
       15 GETTABLEKS                       R4 R0 K6 ["openFileDialogAsync"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K7 ["SUPPORTED_IMAGE_EXTENSIONS"]
       20 GETTABLEKS                       R7 R1 K9 ["dialogTitle"]
       22 ORK                              R6 R7 K8 ["Select an image"]
       23 MOVE                             R7 R3
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKS                    R4 K10 [""] ; [+3]
       27 LOADNIL                          R5
       28 RETURN                           R5 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K11 ["splitPath"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R0 K12 ["setInitialDirectory"]
       36 GETTABLEKS                       R7 R1 K1 ["settingsKey"]
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K13 ["loadImageAsync"]
       43 MOVE                             R7 R0
       44 MOVE                             R8 R4
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["HostSurface"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 8 0
       14 NEWTABLE                         R2 0 3
       16 LOADK                            R3 K6 ["jpg"]
       17 LOADK                            R4 K7 ["jpeg"]
       18 LOADK                            R5 K8 ["png"]
       19 SETLIST                          R2 R3 3 [1]
       21 SETTABLEKS                       R2 R1 K9 ["SUPPORTED_IMAGE_EXTENSIONS"]
       23 LOADK                            R2 K10 [5242880]
       24 SETTABLEKS                       R2 R1 K11 ["MAX_FILE_SIZE"]
       26 DUPTABLE                         R2 K14 [{["jpg"] = "image/jpeg", ["jpeg"] = "image/jpeg", ["png"] = "image/png"}]
       27 DUPCLOSURE                       R3 K15 [PROTO_0]
       28 SETTABLEKS                       R3 R1 K16 ["splitPath"]
       30 DUPCLOSURE                       R3 K17 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R3 R1 K18 ["resolveMimeType"]
       34 DUPCLOSURE                       R3 K19 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R1 K20 ["loadImageAsync"]
       38 DUPCLOSURE                       R3 K21 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R1 K22 ["pickAndLoadImageAsync"]
       42 RETURN                           R1 1
