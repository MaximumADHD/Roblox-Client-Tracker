PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s+"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K6 [string.find]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K7 [","]
       10 LOADN                            R5 1
       11 LOADB                            R6 1
       12 CALL                             R2 4 1
       13 JUMPIFNOT                        R2 ; [+8]
       14 ADDK                             R5 R2 K8 [1]
       15 FASTCALL2                        STRING_SUB R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K10 [string.sub]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1
       22 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 LOADN                            R3 8
        3 JUMPIFNOTLE                      R3 R2 ; [+13]
        5 LOADN                            R4 1
        6 LOADN                            R5 8
        7 FASTCALL3                        STRING_SUB R0 R4 R5
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K2 [string.sub]
       12 CALL                             R2 3 1
       13 JUMPIFEQKS                       R2 K3 ["�PNG\r\n\x\n"] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 LOADN                            R3 3
        3 JUMPIFNOTLE                      R3 R2 ; [+32]
        5 LOADB                            R1 0
        6 FASTCALL2K                       STRING_BYTE R0 K0 ; [+5]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K0 [1]
       10 GETIMPORT                        R2 K3 [string.byte]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKN                    R2 K4 [255] ; [+22]
       15 LOADB                            R1 0
       16 FASTCALL2K                       STRING_BYTE R0 K5 ; [+5]
       18 MOVE                             R3 R0
       19 LOADK                            R4 K5 [2]
       20 GETIMPORT                        R2 K3 [string.byte]
       22 CALL                             R2 2 1
       23 JUMPIFNOTEQKN                    R2 K6 [216] ; [+12]
       25 FASTCALL2K                       STRING_BYTE R0 K7 ; [+5]
       27 MOVE                             R3 R0
       28 LOADK                            R4 K7 [3]
       29 GETIMPORT                        R2 K3 [string.byte]
       31 CALL                             R2 2 1
       32 JUMPIFEQKN                       R2 K4 [255] ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 RETURN                           R1 1

PROTO_3:
        0 FASTCALL2                        BUFFER_READU8 R0 R1 ; [+5]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 GETIMPORT                        R4 K2 [buffer.readu8]
        6 CALL                             R4 2 1
        7 FASTCALL2K                       BIT32_LSHIFT R4 K3 ; [+4]
        9 LOADK                            R5 K3 [8]
       10 GETIMPORT                        R3 K6 [bit32.lshift]
       12 CALL                             R3 2 1
       13 ADDK                             R6 R1 K7 [1]
       14 FASTCALL2                        BUFFER_READU8 R0 R6 ; [+4]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K2 [buffer.readu8]
       19 CALL                             R4 2 1
       20 ADD                              R2 R3 R4
       21 RETURN                           R2 1

PROTO_4:
        0 FASTCALL2                        BUFFER_READU8 R0 R1 ; [+5]
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 GETIMPORT                        R6 K2 [buffer.readu8]
        6 CALL                             R6 2 1
        7 FASTCALL2K                       BIT32_LSHIFT R6 K3 ; [+4]
        9 LOADK                            R7 K3 [24]
       10 GETIMPORT                        R5 K6 [bit32.lshift]
       12 CALL                             R5 2 1
       13 ADDK                             R9 R1 K7 [1]
       14 FASTCALL2                        BUFFER_READU8 R0 R9 ; [+4]
       16 MOVE                             R8 R0
       17 GETIMPORT                        R7 K2 [buffer.readu8]
       19 CALL                             R7 2 1
       20 FASTCALL2K                       BIT32_LSHIFT R7 K8 ; [+4]
       22 LOADK                            R8 K8 [16]
       23 GETIMPORT                        R6 K6 [bit32.lshift]
       25 CALL                             R6 2 1
       26 ADD                              R4 R5 R6
       27 ADDK                             R8 R1 K9 [2]
       28 FASTCALL2                        BUFFER_READU8 R0 R8 ; [+4]
       30 MOVE                             R7 R0
       31 GETIMPORT                        R6 K2 [buffer.readu8]
       33 CALL                             R6 2 1
       34 FASTCALL2K                       BIT32_LSHIFT R6 K10 ; [+4]
       36 LOADK                            R7 K10 [8]
       37 GETIMPORT                        R5 K6 [bit32.lshift]
       39 CALL                             R5 2 1
       40 ADD                              R3 R4 R5
       41 ADDK                             R6 R1 K11 [3]
       42 FASTCALL2                        BUFFER_READU8 R0 R6 ; [+4]
       44 MOVE                             R5 R0
       45 GETIMPORT                        R4 K2 [buffer.readu8]
       47 CALL                             R4 2 1
       48 ADD                              R2 R3 R4
       49 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 24
        5 JUMPIFNOTLT                      R1 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 DUPTABLE                         R1 K7 [{["width"], ["height"], ["mimeType"] = "image/png"}]
       10 FASTCALL2K                       BUFFER_READU8 R0 K8 ; [+5]
       12 MOVE                             R7 R0
       13 LOADK                            R8 K8 [16]
       14 GETIMPORT                        R6 K10 [buffer.readu8]
       16 CALL                             R6 2 1
       17 FASTCALL2K                       BIT32_LSHIFT R6 K11 ; [+4]
       19 LOADK                            R7 K11 [24]
       20 GETIMPORT                        R5 K14 [bit32.lshift]
       22 CALL                             R5 2 1
       23 FASTCALL2K                       BUFFER_READU8 R0 K15 ; [+5]
       25 MOVE                             R8 R0
       26 LOADK                            R9 K15 [17]
       27 GETIMPORT                        R7 K10 [buffer.readu8]
       29 CALL                             R7 2 1
       30 FASTCALL2K                       BIT32_LSHIFT R7 K8 ; [+4]
       32 LOADK                            R8 K8 [16]
       33 GETIMPORT                        R6 K14 [bit32.lshift]
       35 CALL                             R6 2 1
       36 ADD                              R4 R5 R6
       37 FASTCALL2K                       BUFFER_READU8 R0 K16 ; [+5]
       39 MOVE                             R7 R0
       40 LOADK                            R8 K16 [18]
       41 GETIMPORT                        R6 K10 [buffer.readu8]
       43 CALL                             R6 2 1
       44 FASTCALL2K                       BIT32_LSHIFT R6 K17 ; [+4]
       46 LOADK                            R7 K17 [8]
       47 GETIMPORT                        R5 K14 [bit32.lshift]
       49 CALL                             R5 2 1
       50 ADD                              R3 R4 R5
       51 FASTCALL2K                       BUFFER_READU8 R0 K18 ; [+5]
       53 MOVE                             R5 R0
       54 LOADK                            R6 K18 [19]
       55 GETIMPORT                        R4 K10 [buffer.readu8]
       57 CALL                             R4 2 1
       58 ADD                              R2 R3 R4
       59 SETTABLEKS                       R2 R1 K3 ["width"]
       61 FASTCALL2K                       BUFFER_READU8 R0 K19 ; [+5]
       63 MOVE                             R7 R0
       64 LOADK                            R8 K19 [20]
       65 GETIMPORT                        R6 K10 [buffer.readu8]
       67 CALL                             R6 2 1
       68 FASTCALL2K                       BIT32_LSHIFT R6 K11 ; [+4]
       70 LOADK                            R7 K11 [24]
       71 GETIMPORT                        R5 K14 [bit32.lshift]
       73 CALL                             R5 2 1
       74 FASTCALL2K                       BUFFER_READU8 R0 K20 ; [+5]
       76 MOVE                             R8 R0
       77 LOADK                            R9 K20 [21]
       78 GETIMPORT                        R7 K10 [buffer.readu8]
       80 CALL                             R7 2 1
       81 FASTCALL2K                       BIT32_LSHIFT R7 K8 ; [+4]
       83 LOADK                            R8 K8 [16]
       84 GETIMPORT                        R6 K14 [bit32.lshift]
       86 CALL                             R6 2 1
       87 ADD                              R4 R5 R6
       88 FASTCALL2K                       BUFFER_READU8 R0 K21 ; [+5]
       90 MOVE                             R7 R0
       91 LOADK                            R8 K21 [22]
       92 GETIMPORT                        R6 K10 [buffer.readu8]
       94 CALL                             R6 2 1
       95 FASTCALL2K                       BIT32_LSHIFT R6 K17 ; [+4]
       97 LOADK                            R7 K17 [8]
       98 GETIMPORT                        R5 K14 [bit32.lshift]
      100 CALL                             R5 2 1
      101 ADD                              R3 R4 R5
      102 FASTCALL2K                       BUFFER_READU8 R0 K22 ; [+5]
      104 MOVE                             R5 R0
      105 LOADK                            R6 K22 [23]
      106 GETIMPORT                        R4 K10 [buffer.readu8]
      108 CALL                             R4 2 1
      109 ADD                              R2 R3 R4
      110 SETTABLEKS                       R2 R1 K4 ["height"]
      112 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R2 192
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADN                            R2 195
        5 JUMPIFLE                         R0 R2 ; [+24]
        7 LOADN                            R2 197
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADN                            R2 199
       12 JUMPIFLE                         R0 R2 ; [+17]
       14 LOADN                            R2 201
       15 JUMPIFNOTLE                      R2 R0 ; [+5]
       17 LOADB                            R1 1
       18 LOADN                            R2 203
       19 JUMPIFLE                         R0 R2 ; [+10]
       21 LOADB                            R1 0
       22 LOADN                            R2 205
       23 JUMPIFNOTLE                      R2 R0 ; [+6]
       25 LOADN                            R2 207
       26 JUMPIFLE                         R0 R2 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 4
        5 JUMPIFNOTLT                      R1 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 LOADN                            R2 2
       10 ADDK                             R3 R2 K3 [3]
       11 JUMPIFNOTLT                      R3 R1 ; [+161]
       13 FASTCALL2                        BUFFER_READU8 R0 R2 ; [+5]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 GETIMPORT                        R3 K5 [buffer.readu8]
       19 CALL                             R3 2 1
       20 JUMPIFEQKN                       R3 K6 [255] ; [+3]
       22 ADDK                             R2 R2 K7 [1]
       23 JUMP                             ; [+148]
       24 JUMPIFNOTLT                      R2 R1 ; [+12]
       26 FASTCALL2                        BUFFER_READU8 R0 R2 ; [+5]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R2
       30 GETIMPORT                        R3 K5 [buffer.readu8]
       32 CALL                             R3 2 1
       33 JUMPIFNOTEQKN                    R3 K6 [255] ; [+3]
       35 ADDK                             R2 R2 K7 [1]
       36 JUMPBACK                         ; [-13]
       37 JUMPIFNOTLE                      R1 R2 ; [+3]
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 FASTCALL2                        BUFFER_READU8 R0 R2 ; [+5]
       43 MOVE                             R4 R0
       44 MOVE                             R5 R2
       45 GETIMPORT                        R3 K5 [buffer.readu8]
       47 CALL                             R3 2 1
       48 ADDK                             R2 R2 K7 [1]
       49 JUMPIFEQKN                       R3 K8 [217] ; [+3]
       51 JUMPIFNOTEQKN                    R3 K9 [218] ; [+3]
       53 LOADNIL                          R4
       54 RETURN                           R4 1
       55 ADDK                             R4 R2 K7 [1]
       56 JUMPIFNOTLE                      R1 R4 ; [+3]
       58 LOADNIL                          R4
       59 RETURN                           R4 1
       60 MOVE                             R5 R2
       61 FASTCALL2                        BUFFER_READU8 R0 R5 ; [+5]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R5
       65 GETIMPORT                        R7 K5 [buffer.readu8]
       67 CALL                             R7 2 1
       68 FASTCALL2K                       BIT32_LSHIFT R7 K10 ; [+4]
       70 LOADK                            R8 K10 [8]
       71 GETIMPORT                        R6 K13 [bit32.lshift]
       73 CALL                             R6 2 1
       74 ADDK                             R9 R5 K7 [1]
       75 FASTCALL2                        BUFFER_READU8 R0 R9 ; [+4]
       77 MOVE                             R8 R0
       78 GETIMPORT                        R7 K5 [buffer.readu8]
       80 CALL                             R7 2 1
       81 ADD                              R4 R6 R7
       82 LOADN                            R5 2
       83 JUMPIFLT                         R4 R5 ; [+4]
       85 ADD                              R5 R2 R4
       86 JUMPIFNOTLT                      R1 R5 ; [+3]
       88 LOADNIL                          R5
       89 RETURN                           R5 1
       90 LOADN                            R6 192
       91 JUMPIFNOTLE                      R6 R3 ; [+5]
       93 LOADB                            R5 1
       94 LOADN                            R6 195
       95 JUMPIFLE                         R3 R6 ; [+24]
       97 LOADN                            R6 197
       98 JUMPIFNOTLE                      R6 R3 ; [+5]
      100 LOADB                            R5 1
      101 LOADN                            R6 199
      102 JUMPIFLE                         R3 R6 ; [+17]
      104 LOADN                            R6 201
      105 JUMPIFNOTLE                      R6 R3 ; [+5]
      107 LOADB                            R5 1
      108 LOADN                            R6 203
      109 JUMPIFLE                         R3 R6 ; [+10]
      111 LOADB                            R5 0
      112 LOADN                            R6 205
      113 JUMPIFNOTLE                      R6 R3 ; [+6]
      115 LOADN                            R6 207
      116 JUMPIFLE                         R3 R6 ; [+2]
      118 LOADB                            R5 0 +1
      119 LOADB                            R5 1
      120 JUMPIFNOT                        R5 ; [+50]
      121 DUPTABLE                         R5 K18 [{["width"], ["height"], ["mimeType"] = "image/jpeg"}]
      122 ADDK                             R7 R2 K19 [5]
      123 FASTCALL2                        BUFFER_READU8 R0 R7 ; [+5]
      125 MOVE                             R10 R0
      126 MOVE                             R11 R7
      127 GETIMPORT                        R9 K5 [buffer.readu8]
      129 CALL                             R9 2 1
      130 FASTCALL2K                       BIT32_LSHIFT R9 K10 ; [+4]
      132 LOADK                            R10 K10 [8]
      133 GETIMPORT                        R8 K13 [bit32.lshift]
      135 CALL                             R8 2 1
      136 ADDK                             R11 R7 K7 [1]
      137 FASTCALL2                        BUFFER_READU8 R0 R11 ; [+4]
      139 MOVE                             R10 R0
      140 GETIMPORT                        R9 K5 [buffer.readu8]
      142 CALL                             R9 2 1
      143 ADD                              R6 R8 R9
      144 SETTABLEKS                       R6 R5 K14 ["width"]
      146 ADDK                             R7 R2 K3 [3]
      147 FASTCALL2                        BUFFER_READU8 R0 R7 ; [+5]
      149 MOVE                             R10 R0
      150 MOVE                             R11 R7
      151 GETIMPORT                        R9 K5 [buffer.readu8]
      153 CALL                             R9 2 1
      154 FASTCALL2K                       BIT32_LSHIFT R9 K10 ; [+4]
      156 LOADK                            R10 K10 [8]
      157 GETIMPORT                        R8 K13 [bit32.lshift]
      159 CALL                             R8 2 1
      160 ADDK                             R11 R7 K7 [1]
      161 FASTCALL2                        BUFFER_READU8 R0 R11 ; [+4]
      163 MOVE                             R10 R0
      164 GETIMPORT                        R9 K5 [buffer.readu8]
      166 CALL                             R9 2 1
      167 ADD                              R6 R8 R9
      168 SETTABLEKS                       R6 R5 K15 ["height"]
      170 RETURN                           R5 1
      171 ADD                              R2 R2 R4
      172 JUMPBACK                         ; [-163]
      173 LOADNIL                          R3
      174 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [buffer.fromstring]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K3 ["Base64Decode"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R2 K2 [string.gsub]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["%s+"]
        4 LOADK                            R5 K4 [""]
        5 CALL                             R2 3 1
        6 GETIMPORT                        R3 K6 [string.find]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K7 [","]
       10 LOADN                            R6 1
       11 LOADB                            R7 1
       12 CALL                             R3 4 1
       13 JUMPIFNOT                        R3 ; [+9]
       14 ADDK                             R6 R3 K8 [1]
       15 FASTCALL2                        STRING_SUB R2 R6 ; [+4]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R4 K10 [string.sub]
       20 CALL                             R4 2 1
       21 MOVE                             R1 R4
       22 JUMP                             ; [+1]
       23 MOVE                             R1 R2
       24 GETIMPORT                        R2 K12 [pcall]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 2
       30 JUMPIF                           R2 ; [+2]
       31 LOADNIL                          R4
       32 RETURN                           R4 1
       33 GETIMPORT                        R4 K15 [buffer.tostring]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 LOADB                            R5 0
       38 LENGTH                           R6 R4
       39 LOADN                            R7 8
       40 JUMPIFNOTLE                      R7 R6 ; [+13]
       42 LOADN                            R8 1
       43 LOADN                            R9 8
       44 FASTCALL3                        STRING_SUB R4 R8 R9
       46 MOVE                             R7 R4
       47 GETIMPORT                        R6 K10 [string.sub]
       49 CALL                             R6 3 1
       50 JUMPIFEQKS                       R6 K16 ["�PNG\r\n\x\n"] ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 JUMPIFNOT                        R5 ; [+4]
       55 GETUPVAL                         R5 1
       56 MOVE                             R6 R3
       57 CALL                             R5 1 1
       58 RETURN                           R5 1
       59 LOADB                            R5 0
       60 LENGTH                           R6 R4
       61 LOADN                            R7 3
       62 JUMPIFNOTLE                      R7 R6 ; [+32]
       64 LOADB                            R5 0
       65 FASTCALL2K                       STRING_BYTE R4 K8 ; [+5]
       67 MOVE                             R7 R4
       68 LOADK                            R8 K8 [1]
       69 GETIMPORT                        R6 K18 [string.byte]
       71 CALL                             R6 2 1
       72 JUMPIFNOTEQKN                    R6 K19 [255] ; [+22]
       74 LOADB                            R5 0
       75 FASTCALL2K                       STRING_BYTE R4 K20 ; [+5]
       77 MOVE                             R7 R4
       78 LOADK                            R8 K20 [2]
       79 GETIMPORT                        R6 K18 [string.byte]
       81 CALL                             R6 2 1
       82 JUMPIFNOTEQKN                    R6 K21 [216] ; [+12]
       84 FASTCALL2K                       STRING_BYTE R4 K22 ; [+5]
       86 MOVE                             R7 R4
       87 LOADK                            R8 K22 [3]
       88 GETIMPORT                        R6 K18 [string.byte]
       90 CALL                             R6 2 1
       91 JUMPIFEQKN                       R6 K19 [255] ; [+2]
       93 LOADB                            R5 0 +1
       94 LOADB                            R5 1
       95 JUMPIFNOT                        R5 ; [+4]
       96 GETUPVAL                         R5 2
       97 MOVE                             R6 R3
       98 CALL                             R5 1 1
       99 RETURN                           R5 1
      100 LOADNIL                          R5
      101 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["ImageAttachmentOps"]
        7 GETTABLEKS                       R2 R2 K2 ["splitPath"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 2
       11 GETTABLEKS                       R4 R1 K3 ["importFileBinaryAsync"]
       13 MOVE                             R5 R0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["ImageAttachmentOps"]
       17 GETTABLEKS                       R6 R6 K4 ["MAX_FILE_SIZE"]
       19 CALL                             R4 2 1
       20 JUMPIFNOTEQKS                    R4 K5 [""] ; [+7]
       22 GETIMPORT                        R5 K7 [error]
       24 LOADK                            R7 K8 ["File is empty or could not be read: "]
       25 MOVE                             R8 R0
       26 CONCAT                           R6 R7 R8
       27 CALL                             R5 1 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K1 ["ImageAttachmentOps"]
       31 GETTABLEKS                       R5 R5 K9 ["resolveMimeType"]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K11 [pcall]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CALL                             R6 1 2
       41 JUMPIF                           R6 ; [+10]
       42 GETIMPORT                        R8 K7 [error]
       44 LOADK                            R10 K12 ["Failed to encode image to base64, reason: "]
       45 FASTCALL1                        TOSTRING R7 ; [+3]
       46 MOVE                             R12 R7
       47 GETIMPORT                        R11 K14 [tostring]
       49 CALL                             R11 1 1
       50 CONCAT                           R9 R10 R11
       51 CALL                             R8 1 0
       52 JUMPIF                           R7 ; [+4]
       53 GETIMPORT                        R8 K7 [error]
       55 LOADK                            R9 K15 ["Failed to encode image to base64."]
       56 CALL                             R8 1 0
       57 DUPTABLE                         R8 K20 [{["type"] = "image", ["data"], ["mimeType"]}]
       58 SETTABLEKS                       R7 R8 K18 ["data"]
       60 SETTABLEKS                       R5 R8 K19 ["mimeType"]
       62 RETURN                           R8 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["getUserSettingsAsync"]
        6 LOADK                            R2 K2 ["imageAttachmentInitDirectory"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFEQKS                       R2 K5 ["string"] ; [+2]
       16 LOADK                            R1 K6 ["."]
       17 GETTABLEKS                       R2 R0 K7 ["openFileDialogAsync"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K8 ["ImageAttachmentOps"]
       22 GETTABLEKS                       R3 R3 K9 ["SUPPORTED_IMAGE_EXTENSIONS"]
       24 LOADK                            R4 K10 ["Select an image"]
       25 MOVE                             R5 R1
       26 CALL                             R2 3 1
       27 JUMPIFNOTEQKS                    R2 K11 [""] ; [+3]
       29 LOADNIL                          R3
       30 RETURN                           R3 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K8 ["ImageAttachmentOps"]
       34 GETTABLEKS                       R3 R3 K12 ["splitPath"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 2
       38 GETTABLEKS                       R5 R0 K13 ["setUserSettingsAsync"]
       40 LOADK                            R6 K2 ["imageAttachmentInitDirectory"]
       41 MOVE                             R7 R3
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K14 ["loadImageFromPathAsync"]
       46 MOVE                             R6 R2
       47 CALL                             R5 1 -1
       48 RETURN                           R5 -1

PROTO_13:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 GETIMPORT                        R3 K4 [table.insert]
       10 CALL                             R3 2 0
       11 RETURN                           R2 1

PROTO_14:
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
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Gen3dCore"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Types"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 8 0
       34 DUPCLOSURE                       R6 K15 [PROTO_0]
       35 DUPCLOSURE                       R7 K16 [PROTO_1]
       36 DUPCLOSURE                       R8 K17 [PROTO_2]
       37 DUPCLOSURE                       R9 K18 [PROTO_3]
       38 DUPCLOSURE                       R10 K19 [PROTO_4]
       39 DUPCLOSURE                       R11 K20 [PROTO_5]
       40 DUPCLOSURE                       R12 K21 [PROTO_6]
       41 DUPCLOSURE                       R13 K22 [PROTO_7]
       42 DUPCLOSURE                       R14 K23 [PROTO_9]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R11
       45 CAPTURE                          VAL R13
       46 SETTABLEKS                       R14 R5 K24 ["getPngOrJpegDimensionsFromBase64"]
       48 DUPCLOSURE                       R14 K25 [PROTO_11]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R14 R5 K26 ["loadImageFromPathAsync"]
       53 DUPCLOSURE                       R14 K27 [PROTO_12]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R14 R5 K28 ["promptAndLoadImageAsync"]
       59 DUPCLOSURE                       R14 K29 [PROTO_13]
       60 SETTABLEKS                       R14 R5 K30 ["addImage"]
       62 DUPCLOSURE                       R14 K31 [PROTO_14]
       63 SETTABLEKS                       R14 R5 K32 ["removeImage"]
       65 RETURN                           R5 1
