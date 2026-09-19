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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LENGTH                           R4 R0
        5 FASTCALL2K                       MATH_MIN R4 K1 ; [+4]
        7 LOADK                            R5 K1 [5]
        8 GETIMPORT                        R3 K4 [math.min]
       10 CALL                             R3 2 1
       11 LOADN                            R6 1
       12 MOVE                             R4 R3
       13 LOADN                            R5 1
       14 FORNPREP                         R4
       15 GETTABLE                         R7 R0 R6
       16 FASTCALL1                        TYPEOF R7 ; [+3]
       17 MOVE                             R9 R7
       18 GETIMPORT                        R8 K6 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+144]
       23 JUMPIFEQKS                       R7 K8 [""] ; [+142]
       25 LOADK                            R8 K8 [""]
       26 LOADB                            R9 0
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K9 ["FFlagDebugMockPrimitiveGenBackend"]
       30 JUMPIFNOT                        R10 ; [+7]
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R10 R10 K10 ["MockBackendPreviewResult"]
       34 GETTABLEKS                       R8 R10 K11 ["base64Data"]
       36 LOADB                            R9 1
       37 JUMP                             ; [+68]
       38 GETIMPORT                        R10 K13 [pcall]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R7
       43 CALL                             R10 1 2
       44 JUMPIFNOT                        R10 ; [+10]
       45 FASTCALL1                        TYPEOF R11 ; [+3]
       46 MOVE                             R13 R11
       47 GETIMPORT                        R12 K6 [typeof]
       49 CALL                             R12 1 1
       50 JUMPIFNOTEQKS                    R12 K14 ["table"] ; [+4]
       52 GETTABLEKS                       R12 R11 K15 ["Success"]
       54 JUMPIF                           R12 ; [+22]
       55 FASTCALL1                        TYPEOF R11 ; [+3]
       56 MOVE                             R14 R11
       57 GETIMPORT                        R13 K6 [typeof]
       59 CALL                             R13 1 1
       60 JUMPIFNOTEQKS                    R13 K14 ["table"] ; [+4]
       62 GETTABLEKS                       R12 R11 K16 ["StatusCode"]
       64 JUMP                             ; [+1]
       65 MOVE                             R12 R11
       66 GETIMPORT                        R13 K18 [warn]
       68 LOADK                            R14 K19 ["[PrimitiveGen] Failed to fetch preview image %*: %*"]
       69 MOVE                             R16 R6
       70 MOVE                             R17 R12
       71 NAMECALL                         R14 R14 K20 ["format"]
       73 CALL                             R14 3 1
       74 CALL                             R13 1 0
       75 CLOSEUPVALS                      R8
       76 JUMP                             ; [+89]
       77 GETTABLEKS                       R12 R11 K21 ["Body"]
       79 FASTCALL1                        TYPEOF R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K6 [typeof]
       83 CALL                             R13 1 1
       84 JUMPIFNOTEQKS                    R13 K7 ["string"] ; [+3]
       86 JUMPIFNOTEQKS                    R12 K8 [""] ; [+11]
       88 GETIMPORT                        R13 K18 [warn]
       90 LOADK                            R14 K22 ["[PrimitiveGen] Empty preview image body for index %*"]
       91 MOVE                             R16 R6
       92 NAMECALL                         R14 R14 K20 ["format"]
       94 CALL                             R14 2 1
       95 CALL                             R13 1 0
       96 CLOSEUPVALS                      R8
       97 JUMP                             ; [+68]
       98 GETIMPORT                        R13 K13 [pcall]
      100 NEWCLOSURE                       R14 P1
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R12
      103 CALL                             R13 1 2
      104 MOVE                             R9 R13
      105 MOVE                             R8 R14
      106 JUMPIFNOT                        R9 ; [+9]
      107 FASTCALL1                        TYPEOF R8 ; [+3]
      108 MOVE                             R11 R8
      109 GETIMPORT                        R10 K6 [typeof]
      111 CALL                             R10 1 1
      112 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
      114 JUMPIFNOTEQKS                    R8 K8 [""] ; [+12]
      116 GETIMPORT                        R10 K18 [warn]
      118 LOADK                            R11 K23 ["[PrimitiveGen] Failed to base64-encode preview image %*: %*"]
      119 MOVE                             R13 R6
      120 MOVE                             R14 R8
      121 NAMECALL                         R11 R11 K20 ["format"]
      123 CALL                             R11 3 1
      124 CALL                             R10 1 0
      125 CLOSEUPVALS                      R8
      126 JUMP                             ; [+39]
      127 GETIMPORT                        R10 K13 [pcall]
      129 NEWCLOSURE                       R11 P2
      130 CAPTURE                          VAL R2
      131 CAPTURE                          REF R8
      132 CALL                             R10 1 2
      133 JUMPIFNOT                        R10 ; [+22]
      134 FASTCALL1                        TYPEOF R11 ; [+3]
      135 MOVE                             R13 R11
      136 GETIMPORT                        R12 K6 [typeof]
      138 CALL                             R12 1 1
      139 JUMPIFNOTEQKS                    R12 K14 ["table"] ; [+16]
      141 GETTABLEKS                       R13 R11 K24 ["tempId"]
      143 FASTCALL1                        TYPEOF R13 ; [+2]
      144 GETIMPORT                        R12 K6 [typeof]
      146 CALL                             R12 1 1
      147 JUMPIFNOTEQKS                    R12 K7 ["string"] ; [+8]
      149 GETTABLEKS                       R12 R1 K25 ["setPreviewImage"]
      151 MOVE                             R13 R6
      152 GETTABLEKS                       R14 R11 K24 ["tempId"]
      154 CALL                             R12 2 0
      155 JUMP                             ; [+9]
      156 GETIMPORT                        R12 K18 [warn]
      158 LOADK                            R13 K26 ["[PrimitiveGen] Failed to convert preview image %* to temp id: %*"]
      159 MOVE                             R15 R6
      160 MOVE                             R16 R11
      161 NAMECALL                         R13 R13 K20 ["format"]
      163 CALL                             R13 3 1
      164 CALL                             R12 1 0
      165 CLOSEUPVALS                      R8
      166 FORNLOOP                         R4
      167 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["get"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["PrimitiveGen"]
       25 GETTABLEKS                       R4 R4 K11 ["PrimitiveGenMockData"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 DUPCLOSURE                       R5 K13 [PROTO_4]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R6 K14 [PROTO_6]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 DUPTABLE                         R7 K18 [{"parseScriptPreviewS3Urls", "fetchPreviewImages", "fetchPreviewImagesSync"}]
       36 SETTABLEKS                       R4 R7 K15 ["parseScriptPreviewS3Urls"]
       38 SETTABLEKS                       R6 R7 K16 ["fetchPreviewImages"]
       40 SETTABLEKS                       R5 R7 K17 ["fetchPreviewImagesSync"]
       42 RETURN                           R7 1
