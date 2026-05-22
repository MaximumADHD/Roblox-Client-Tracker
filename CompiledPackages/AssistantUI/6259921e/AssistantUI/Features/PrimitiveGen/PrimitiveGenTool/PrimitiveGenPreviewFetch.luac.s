PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R0 5
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["PREVIEW_IMAGE_COUNT"]
        8 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K4 [{"Url", "Method"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 LOADK                            R2 K5 ["GET"]
       10 SETTABLEKS                       R2 R1 K3 ["Method"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LENGTH                           R4 R0
        5 GETUPVAL                         R6 0
        6 CALL                             R6 0 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADN                            R5 5
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["PREVIEW_IMAGE_COUNT"]
       13 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       15 GETIMPORT                        R3 K4 [math.min]
       17 CALL                             R3 2 1
       18 LOADN                            R6 1
       19 MOVE                             R4 R3
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 GETTABLE                         R7 R0 R6
       23 FASTCALL1                        TYPEOF R7 ; [+3]
       24 MOVE                             R9 R7
       25 GETIMPORT                        R8 K6 [typeof]
       27 CALL                             R8 1 1
       28 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+147]
       30 JUMPIFEQKS                       R7 K8 [""] ; [+145]
       32 LOADK                            R8 K8 [""]
       33 LOADB                            R9 0
       34 GETUPVAL                         R10 2
       35 CALL                             R10 0 1
       36 JUMPIFNOT                        R10 ; [+7]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K9 ["MockBackendPreviewResult"]
       40 GETTABLEKS                       R8 R10 K10 ["base64Data"]
       42 LOADB                            R9 1
       43 JUMP                             ; [+70]
       44 GETIMPORT                        R10 K12 [pcall]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R7
       49 CALL                             R10 1 2
       50 JUMPIFNOT                        R10 ; [+10]
       51 FASTCALL1                        TYPEOF R11 ; [+3]
       52 MOVE                             R13 R11
       53 GETIMPORT                        R12 K6 [typeof]
       55 CALL                             R12 1 1
       56 JUMPIFNOTEQKS                    R12 K13 ["table"] ; [+4]
       58 GETTABLEKS                       R12 R11 K14 ["Success"]
       60 JUMPIF                           R12 ; [+23]
       61 FASTCALL1                        TYPEOF R11 ; [+3]
       62 MOVE                             R14 R11
       63 GETIMPORT                        R13 K6 [typeof]
       65 CALL                             R13 1 1
       66 JUMPIFNOTEQKS                    R13 K13 ["table"] ; [+4]
       68 GETTABLEKS                       R12 R11 K15 ["StatusCode"]
       70 JUMP                             ; [+1]
       71 MOVE                             R12 R11
       72 GETIMPORT                        R13 K17 [warn]
       74 LOADK                            R15 K18 ["[PrimitiveGen] Failed to fetch preview image %*: %*"]
       75 MOVE                             R17 R6
       76 MOVE                             R18 R12
       77 NAMECALL                         R15 R15 K19 ["format"]
       79 CALL                             R15 3 1
       80 MOVE                             R14 R15
       81 CALL                             R13 1 0
       82 CLOSEUPVALS                      R8
       83 JUMP                             ; [+92]
       84 GETTABLEKS                       R12 R11 K20 ["Body"]
       86 FASTCALL1                        TYPEOF R12 ; [+3]
       87 MOVE                             R14 R12
       88 GETIMPORT                        R13 K6 [typeof]
       90 CALL                             R13 1 1
       91 JUMPIFNOTEQKS                    R13 K7 ["string"] ; [+3]
       93 JUMPIFNOTEQKS                    R12 K8 [""] ; [+12]
       95 GETIMPORT                        R13 K17 [warn]
       97 LOADK                            R15 K21 ["[PrimitiveGen] Empty preview image body for index %*"]
       98 MOVE                             R17 R6
       99 NAMECALL                         R15 R15 K19 ["format"]
      101 CALL                             R15 2 1
      102 MOVE                             R14 R15
      103 CALL                             R13 1 0
      104 CLOSEUPVALS                      R8
      105 JUMP                             ; [+70]
      106 GETIMPORT                        R13 K12 [pcall]
      108 NEWCLOSURE                       R14 P1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R12
      111 CALL                             R13 1 2
      112 MOVE                             R9 R13
      113 MOVE                             R8 R14
      114 JUMPIFNOT                        R9 ; [+9]
      115 FASTCALL1                        TYPEOF R8 ; [+3]
      116 MOVE                             R11 R8
      117 GETIMPORT                        R10 K6 [typeof]
      119 CALL                             R10 1 1
      120 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
      122 JUMPIFNOTEQKS                    R8 K8 [""] ; [+13]
      124 GETIMPORT                        R10 K17 [warn]
      126 LOADK                            R12 K22 ["[PrimitiveGen] Failed to base64-encode preview image %*: %*"]
      127 MOVE                             R14 R6
      128 MOVE                             R15 R8
      129 NAMECALL                         R12 R12 K19 ["format"]
      131 CALL                             R12 3 1
      132 MOVE                             R11 R12
      133 CALL                             R10 1 0
      134 CLOSEUPVALS                      R8
      135 JUMP                             ; [+40]
      136 GETIMPORT                        R10 K12 [pcall]
      138 NEWCLOSURE                       R11 P2
      139 CAPTURE                          VAL R2
      140 CAPTURE                          REF R8
      141 CALL                             R10 1 2
      142 JUMPIFNOT                        R10 ; [+22]
      143 FASTCALL1                        TYPEOF R11 ; [+3]
      144 MOVE                             R13 R11
      145 GETIMPORT                        R12 K6 [typeof]
      147 CALL                             R12 1 1
      148 JUMPIFNOTEQKS                    R12 K13 ["table"] ; [+16]
      150 GETTABLEKS                       R13 R11 K23 ["tempId"]
      152 FASTCALL1                        TYPEOF R13 ; [+2]
      153 GETIMPORT                        R12 K6 [typeof]
      155 CALL                             R12 1 1
      156 JUMPIFNOTEQKS                    R12 K7 ["string"] ; [+8]
      158 GETTABLEKS                       R12 R1 K24 ["setPreviewImage"]
      160 MOVE                             R13 R6
      161 GETTABLEKS                       R14 R11 K23 ["tempId"]
      163 CALL                             R12 2 0
      164 JUMP                             ; [+10]
      165 GETIMPORT                        R12 K17 [warn]
      167 LOADK                            R14 K25 ["[PrimitiveGen] Failed to convert preview image %* to temp id: %*"]
      168 MOVE                             R16 R6
      169 MOVE                             R17 R11
      170 NAMECALL                         R14 R14 K19 ["format"]
      172 CALL                             R14 3 1
      173 MOVE                             R13 R14
      174 CALL                             R12 1 0
      175 CLOSEUPVALS                      R8
      176 FORNLOOP                         R4
      177 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["get"]
        6 CALL                             R3 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_7:
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
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Features"]
       18 GETTABLEKS                       R3 R3 K9 ["Gen3dUtils"]
       20 GETTABLEKS                       R3 R3 K10 ["Gen3dConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Features"]
       27 GETTABLEKS                       R4 R4 K11 ["PrimitiveGen"]
       29 GETTABLEKS                       R4 R4 K12 ["PrimitiveGenTool"]
       31 GETTABLEKS                       R4 R4 K13 ["PrimitiveGenMockData"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Flags"]
       38 GETTABLEKS                       R5 R5 K15 ["FFlagDebugMockPrimitiveGenBackend"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Flags"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagDisablePrimGenNewImageFromBackend"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K17 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R7 K18 [PROTO_1]
       52 DUPCLOSURE                       R8 K19 [PROTO_5]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R9 K20 [PROTO_7]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R10 K24 [{"parseScriptPreviewS3Urls", "fetchPreviewImages", "fetchPreviewImagesSync"}]
       61 SETTABLEKS                       R7 R10 K21 ["parseScriptPreviewS3Urls"]
       63 SETTABLEKS                       R9 R10 K22 ["fetchPreviewImages"]
       65 SETTABLEKS                       R8 R10 K23 ["fetchPreviewImagesSync"]
       67 RETURN                           R10 1
