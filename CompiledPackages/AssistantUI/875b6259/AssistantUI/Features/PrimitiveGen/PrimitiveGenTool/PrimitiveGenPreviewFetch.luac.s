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
        5 DUPTABLE                         R1 K4 [{"Url", "Method"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 LOADK                            R2 K5 ["GET"]
       10 SETTABLEKS                       R2 R1 K3 ["Method"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

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
       21 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+147]
       23 JUMPIFEQKS                       R7 K8 [""] ; [+145]
       25 LOADK                            R8 K8 [""]
       26 LOADB                            R9 0
       27 GETUPVAL                         R10 0
       28 CALL                             R10 0 1
       29 JUMPIFNOT                        R10 ; [+7]
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K9 ["MockBackendPreviewResult"]
       33 GETTABLEKS                       R8 R10 K10 ["base64Data"]
       35 LOADB                            R9 1
       36 JUMP                             ; [+70]
       37 GETIMPORT                        R10 K12 [pcall]
       39 NEWCLOSURE                       R11 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R7
       42 CALL                             R10 1 2
       43 JUMPIFNOT                        R10 ; [+10]
       44 FASTCALL1                        TYPEOF R11 ; [+3]
       45 MOVE                             R13 R11
       46 GETIMPORT                        R12 K6 [typeof]
       48 CALL                             R12 1 1
       49 JUMPIFNOTEQKS                    R12 K13 ["table"] ; [+4]
       51 GETTABLEKS                       R12 R11 K14 ["Success"]
       53 JUMPIF                           R12 ; [+23]
       54 FASTCALL1                        TYPEOF R11 ; [+3]
       55 MOVE                             R14 R11
       56 GETIMPORT                        R13 K6 [typeof]
       58 CALL                             R13 1 1
       59 JUMPIFNOTEQKS                    R13 K13 ["table"] ; [+4]
       61 GETTABLEKS                       R12 R11 K15 ["StatusCode"]
       63 JUMP                             ; [+1]
       64 MOVE                             R12 R11
       65 GETIMPORT                        R13 K17 [warn]
       67 LOADK                            R15 K18 ["[PrimitiveGen] Failed to fetch preview image %*: %*"]
       68 MOVE                             R17 R6
       69 MOVE                             R18 R12
       70 NAMECALL                         R15 R15 K19 ["format"]
       72 CALL                             R15 3 1
       73 MOVE                             R14 R15
       74 CALL                             R13 1 0
       75 CLOSEUPVALS                      R8
       76 JUMP                             ; [+92]
       77 GETTABLEKS                       R12 R11 K20 ["Body"]
       79 FASTCALL1                        TYPEOF R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K6 [typeof]
       83 CALL                             R13 1 1
       84 JUMPIFNOTEQKS                    R13 K7 ["string"] ; [+3]
       86 JUMPIFNOTEQKS                    R12 K8 [""] ; [+12]
       88 GETIMPORT                        R13 K17 [warn]
       90 LOADK                            R15 K21 ["[PrimitiveGen] Empty preview image body for index %*"]
       91 MOVE                             R17 R6
       92 NAMECALL                         R15 R15 K19 ["format"]
       94 CALL                             R15 2 1
       95 MOVE                             R14 R15
       96 CALL                             R13 1 0
       97 CLOSEUPVALS                      R8
       98 JUMP                             ; [+70]
       99 GETIMPORT                        R13 K12 [pcall]
      101 NEWCLOSURE                       R14 P1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R12
      104 CALL                             R13 1 2
      105 MOVE                             R9 R13
      106 MOVE                             R8 R14
      107 JUMPIFNOT                        R9 ; [+9]
      108 FASTCALL1                        TYPEOF R8 ; [+3]
      109 MOVE                             R11 R8
      110 GETIMPORT                        R10 K6 [typeof]
      112 CALL                             R10 1 1
      113 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
      115 JUMPIFNOTEQKS                    R8 K8 [""] ; [+13]
      117 GETIMPORT                        R10 K17 [warn]
      119 LOADK                            R12 K22 ["[PrimitiveGen] Failed to base64-encode preview image %*: %*"]
      120 MOVE                             R14 R6
      121 MOVE                             R15 R8
      122 NAMECALL                         R12 R12 K19 ["format"]
      124 CALL                             R12 3 1
      125 MOVE                             R11 R12
      126 CALL                             R10 1 0
      127 CLOSEUPVALS                      R8
      128 JUMP                             ; [+40]
      129 GETIMPORT                        R10 K12 [pcall]
      131 NEWCLOSURE                       R11 P2
      132 CAPTURE                          VAL R2
      133 CAPTURE                          REF R8
      134 CALL                             R10 1 2
      135 JUMPIFNOT                        R10 ; [+22]
      136 FASTCALL1                        TYPEOF R11 ; [+3]
      137 MOVE                             R13 R11
      138 GETIMPORT                        R12 K6 [typeof]
      140 CALL                             R12 1 1
      141 JUMPIFNOTEQKS                    R12 K13 ["table"] ; [+16]
      143 GETTABLEKS                       R13 R11 K23 ["tempId"]
      145 FASTCALL1                        TYPEOF R13 ; [+2]
      146 GETIMPORT                        R12 K6 [typeof]
      148 CALL                             R12 1 1
      149 JUMPIFNOTEQKS                    R12 K7 ["string"] ; [+8]
      151 GETTABLEKS                       R12 R1 K24 ["setPreviewImage"]
      153 MOVE                             R13 R6
      154 GETTABLEKS                       R14 R11 K23 ["tempId"]
      156 CALL                             R12 2 0
      157 JUMP                             ; [+10]
      158 GETIMPORT                        R12 K17 [warn]
      160 LOADK                            R14 K25 ["[PrimitiveGen] Failed to convert preview image %* to temp id: %*"]
      161 MOVE                             R16 R6
      162 MOVE                             R17 R11
      163 NAMECALL                         R14 R14 K19 ["format"]
      165 CALL                             R14 3 1
      166 MOVE                             R13 R14
      167 CALL                             R12 1 0
      168 CLOSEUPVALS                      R8
      169 FORNLOOP                         R4
      170 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Features"]
       18 GETTABLEKS                       R3 R3 K9 ["PrimitiveGen"]
       20 GETTABLEKS                       R3 R3 K10 ["PrimitiveGenTool"]
       22 GETTABLEKS                       R3 R3 K11 ["PrimitiveGenMockData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Flags"]
       29 GETTABLEKS                       R4 R4 K13 ["FFlagDebugMockPrimitiveGenBackend"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K14 [PROTO_0]
       33 DUPCLOSURE                       R5 K15 [PROTO_4]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R6 K16 [PROTO_6]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 DUPTABLE                         R7 K20 [{"parseScriptPreviewS3Urls", "fetchPreviewImages", "fetchPreviewImagesSync"}]
       40 SETTABLEKS                       R4 R7 K17 ["parseScriptPreviewS3Urls"]
       42 SETTABLEKS                       R6 R7 K18 ["fetchPreviewImages"]
       44 SETTABLEKS                       R5 R7 K19 ["fetchPreviewImagesSync"]
       46 RETURN                           R7 1
