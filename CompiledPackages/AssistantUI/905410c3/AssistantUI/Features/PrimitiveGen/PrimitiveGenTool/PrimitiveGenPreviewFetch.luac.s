PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["scriptPreviewS3Urls"]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 NEWTABLE                         R2 0 0
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 FASTCALL1                        TYPEOF R7 ; [+3]
       27 MOVE                             R9 R7
       28 GETIMPORT                        R8 K1 [typeof]
       30 CALL                             R8 1 1
       31 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+10]
       33 JUMPIFEQKS                       R7 K5 [""] ; [+8]
       35 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       37 MOVE                             R9 R2
       38 MOVE                             R10 R7
       39 GETIMPORT                        R8 K7 [table.insert]
       41 CALL                             R8 2 0
       42 FORGLOOP                         R3 2 ; [-17]
       44 LENGTH                           R3 R2
       45 JUMPIFNOTEQKN                    R3 K8 [0] ; [+3]
       47 LOADNIL                          R3
       48 RETURN                           R3 1
       49 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["http"]
        3 GETTABLEKS                       R0 R1 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K4 [{"Url", "Method"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 LOADK                            R2 K5 ["GET"]
       10 SETTABLEKS                       R2 R1 K3 ["Method"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LENGTH                           R4 R0
        5 GETUPVAL                         R5 0
        6 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
        8 GETIMPORT                        R3 K3 [math.min]
       10 CALL                             R3 2 1
       11 LOADN                            R6 1
       12 MOVE                             R4 R3
       13 LOADN                            R5 1
       14 FORNPREP                         R4
       15 GETTABLE                         R7 R0 R6
       16 FASTCALL1                        TYPEOF R7 ; [+3]
       17 MOVE                             R9 R7
       18 GETIMPORT                        R8 K5 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+129]
       23 JUMPIFEQKS                       R7 K7 [""] ; [+127]
       25 GETIMPORT                        R8 K9 [pcall]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R7
       30 CALL                             R8 1 2
       31 JUMPIFNOT                        R8 ; [+10]
       32 FASTCALL1                        TYPEOF R9 ; [+3]
       33 MOVE                             R11 R9
       34 GETIMPORT                        R10 K5 [typeof]
       36 CALL                             R10 1 1
       37 JUMPIFNOTEQKS                    R10 K10 ["table"] ; [+4]
       39 GETTABLEKS                       R10 R9 K11 ["Success"]
       41 JUMPIF                           R10 ; [+22]
       42 FASTCALL1                        TYPEOF R9 ; [+3]
       43 MOVE                             R12 R9
       44 GETIMPORT                        R11 K5 [typeof]
       46 CALL                             R11 1 1
       47 JUMPIFNOTEQKS                    R11 K10 ["table"] ; [+4]
       49 GETTABLEKS                       R10 R9 K12 ["StatusCode"]
       51 JUMP                             ; [+1]
       52 MOVE                             R10 R9
       53 GETIMPORT                        R11 K14 [warn]
       55 LOADK                            R13 K15 ["[PrimitiveGen] Failed to fetch preview image %*: %*"]
       56 MOVE                             R15 R6
       57 MOVE                             R16 R10
       58 NAMECALL                         R13 R13 K16 ["format"]
       60 CALL                             R13 3 1
       61 MOVE                             R12 R13
       62 CALL                             R11 1 0
       63 JUMP                             ; [+87]
       64 GETTABLEKS                       R10 R9 K17 ["Body"]
       66 FASTCALL1                        TYPEOF R10 ; [+3]
       67 MOVE                             R12 R10
       68 GETIMPORT                        R11 K5 [typeof]
       70 CALL                             R11 1 1
       71 JUMPIFNOTEQKS                    R11 K6 ["string"] ; [+3]
       73 JUMPIFNOTEQKS                    R10 K7 [""] ; [+11]
       75 GETIMPORT                        R11 K14 [warn]
       77 LOADK                            R13 K18 ["[PrimitiveGen] Empty preview image body for index %*"]
       78 MOVE                             R15 R6
       79 NAMECALL                         R13 R13 K16 ["format"]
       81 CALL                             R13 2 1
       82 MOVE                             R12 R13
       83 CALL                             R11 1 0
       84 JUMP                             ; [+66]
       85 GETIMPORT                        R11 K9 [pcall]
       87 NEWCLOSURE                       R12 P1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R10
       90 CALL                             R11 1 2
       91 JUMPIFNOT                        R11 ; [+9]
       92 FASTCALL1                        TYPEOF R12 ; [+3]
       93 MOVE                             R14 R12
       94 GETIMPORT                        R13 K5 [typeof]
       96 CALL                             R13 1 1
       97 JUMPIFNOTEQKS                    R13 K6 ["string"] ; [+3]
       99 JUMPIFNOTEQKS                    R12 K7 [""] ; [+12]
      101 GETIMPORT                        R13 K14 [warn]
      103 LOADK                            R15 K19 ["[PrimitiveGen] Failed to base64-encode preview image %*: %*"]
      104 MOVE                             R17 R6
      105 MOVE                             R18 R12
      106 NAMECALL                         R15 R15 K16 ["format"]
      108 CALL                             R15 3 1
      109 MOVE                             R14 R15
      110 CALL                             R13 1 0
      111 JUMP                             ; [+39]
      112 GETIMPORT                        R13 K9 [pcall]
      114 NEWCLOSURE                       R14 P2
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CALL                             R13 1 2
      118 JUMPIFNOT                        R13 ; [+22]
      119 FASTCALL1                        TYPEOF R14 ; [+3]
      120 MOVE                             R16 R14
      121 GETIMPORT                        R15 K5 [typeof]
      123 CALL                             R15 1 1
      124 JUMPIFNOTEQKS                    R15 K10 ["table"] ; [+16]
      126 GETTABLEKS                       R16 R14 K20 ["tempId"]
      128 FASTCALL1                        TYPEOF R16 ; [+2]
      129 GETIMPORT                        R15 K5 [typeof]
      131 CALL                             R15 1 1
      132 JUMPIFNOTEQKS                    R15 K6 ["string"] ; [+8]
      134 GETTABLEKS                       R15 R1 K21 ["setPreviewImage"]
      136 MOVE                             R16 R6
      137 GETTABLEKS                       R17 R14 K20 ["tempId"]
      139 CALL                             R15 2 0
      140 JUMP                             ; [+10]
      141 GETIMPORT                        R15 K14 [warn]
      143 LOADK                            R17 K22 ["[PrimitiveGen] Failed to convert preview image %* to temp id: %*"]
      144 MOVE                             R19 R6
      145 MOVE                             R20 R14
      146 NAMECALL                         R17 R17 K16 ["format"]
      148 CALL                             R17 3 1
      149 MOVE                             R16 R17
      150 CALL                             R15 1 0
      151 FORNLOOP                         R4
      152 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R3 R4 K0 ["get"]
        6 CALL                             R3 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_6:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K3 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

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
       16 GETTABLEKS                       R5 R0 K8 ["Features"]
       18 GETTABLEKS                       R4 R5 K9 ["Gen3dUtils"]
       20 GETTABLEKS                       R3 R4 K10 ["Gen3dConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["PREVIEW_IMAGE_COUNT"]
       25 DUPCLOSURE                       R4 K12 [PROTO_0]
       26 DUPCLOSURE                       R5 K13 [PROTO_4]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R6 K14 [PROTO_6]
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R1
       31 DUPTABLE                         R7 K18 [{"parseScriptPreviewS3Urls", "fetchPreviewImages", "fetchPreviewImagesSync"}]
       32 SETTABLEKS                       R4 R7 K15 ["parseScriptPreviewS3Urls"]
       34 SETTABLEKS                       R6 R7 K16 ["fetchPreviewImages"]
       36 SETTABLEKS                       R5 R7 K17 ["fetchPreviewImagesSync"]
       38 RETURN                           R7 1
