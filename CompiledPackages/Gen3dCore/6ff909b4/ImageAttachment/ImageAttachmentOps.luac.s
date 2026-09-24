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

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 3
        5 LOADK                            R2 K0 ["jpg"]
        6 LOADK                            R3 K1 ["jpeg"]
        7 LOADK                            R4 K2 ["png"]
        8 SETLIST                          R1 R2 3 [1]
       10 SETTABLEKS                       R1 R0 K3 ["SUPPORTED_IMAGE_EXTENSIONS"]
       12 LOADK                            R1 K4 [5242880]
       13 SETTABLEKS                       R1 R0 K5 ["MAX_FILE_SIZE"]
       15 DUPTABLE                         R1 K8 [{[1] = "image/jpeg", ["jpeg"] = "image/jpeg", ["png"] = "image/png"}]
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 SETTABLEKS                       R2 R0 K10 ["splitPath"]
       19 DUPCLOSURE                       R2 K11 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R0 K12 ["resolveMimeType"]
       23 RETURN                           R0 1
