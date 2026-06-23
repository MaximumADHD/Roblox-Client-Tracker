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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 24
        5 JUMPIFNOTLT                      R1 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 DUPTABLE                         R1 K6 [{"width", "height", "mimeType"}]
       10 FASTCALL2K                       BUFFER_READU8 R0 K7 ; [+5]
       12 MOVE                             R7 R0
       13 LOADK                            R8 K7 [16]
       14 GETIMPORT                        R6 K9 [buffer.readu8]
       16 CALL                             R6 2 1
       17 FASTCALL2K                       BIT32_LSHIFT R6 K10 ; [+4]
       19 LOADK                            R7 K10 [24]
       20 GETIMPORT                        R5 K13 [bit32.lshift]
       22 CALL                             R5 2 1
       23 FASTCALL2K                       BUFFER_READU8 R0 K14 ; [+5]
       25 MOVE                             R8 R0
       26 LOADK                            R9 K14 [17]
       27 GETIMPORT                        R7 K9 [buffer.readu8]
       29 CALL                             R7 2 1
       30 FASTCALL2K                       BIT32_LSHIFT R7 K7 ; [+4]
       32 LOADK                            R8 K7 [16]
       33 GETIMPORT                        R6 K13 [bit32.lshift]
       35 CALL                             R6 2 1
       36 ADD                              R4 R5 R6
       37 FASTCALL2K                       BUFFER_READU8 R0 K15 ; [+5]
       39 MOVE                             R7 R0
       40 LOADK                            R8 K15 [18]
       41 GETIMPORT                        R6 K9 [buffer.readu8]
       43 CALL                             R6 2 1
       44 FASTCALL2K                       BIT32_LSHIFT R6 K16 ; [+4]
       46 LOADK                            R7 K16 [8]
       47 GETIMPORT                        R5 K13 [bit32.lshift]
       49 CALL                             R5 2 1
       50 ADD                              R3 R4 R5
       51 FASTCALL2K                       BUFFER_READU8 R0 K17 ; [+5]
       53 MOVE                             R5 R0
       54 LOADK                            R6 K17 [19]
       55 GETIMPORT                        R4 K9 [buffer.readu8]
       57 CALL                             R4 2 1
       58 ADD                              R2 R3 R4
       59 SETTABLEKS                       R2 R1 K3 ["width"]
       61 FASTCALL2K                       BUFFER_READU8 R0 K18 ; [+5]
       63 MOVE                             R7 R0
       64 LOADK                            R8 K18 [20]
       65 GETIMPORT                        R6 K9 [buffer.readu8]
       67 CALL                             R6 2 1
       68 FASTCALL2K                       BIT32_LSHIFT R6 K10 ; [+4]
       70 LOADK                            R7 K10 [24]
       71 GETIMPORT                        R5 K13 [bit32.lshift]
       73 CALL                             R5 2 1
       74 FASTCALL2K                       BUFFER_READU8 R0 K19 ; [+5]
       76 MOVE                             R8 R0
       77 LOADK                            R9 K19 [21]
       78 GETIMPORT                        R7 K9 [buffer.readu8]
       80 CALL                             R7 2 1
       81 FASTCALL2K                       BIT32_LSHIFT R7 K7 ; [+4]
       83 LOADK                            R8 K7 [16]
       84 GETIMPORT                        R6 K13 [bit32.lshift]
       86 CALL                             R6 2 1
       87 ADD                              R4 R5 R6
       88 FASTCALL2K                       BUFFER_READU8 R0 K20 ; [+5]
       90 MOVE                             R7 R0
       91 LOADK                            R8 K20 [22]
       92 GETIMPORT                        R6 K9 [buffer.readu8]
       94 CALL                             R6 2 1
       95 FASTCALL2K                       BIT32_LSHIFT R6 K16 ; [+4]
       97 LOADK                            R7 K16 [8]
       98 GETIMPORT                        R5 K13 [bit32.lshift]
      100 CALL                             R5 2 1
      101 ADD                              R3 R4 R5
      102 FASTCALL2K                       BUFFER_READU8 R0 K21 ; [+5]
      104 MOVE                             R5 R0
      105 LOADK                            R6 K21 [23]
      106 GETIMPORT                        R4 K9 [buffer.readu8]
      108 CALL                             R4 2 1
      109 ADD                              R2 R3 R4
      110 SETTABLEKS                       R2 R1 K4 ["height"]
      112 LOADK                            R2 K22 ["image/png"]
      113 SETTABLEKS                       R2 R1 K5 ["mimeType"]
      115 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R1 K2 [buffer.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 4
        5 JUMPIFNOTLT                      R1 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 LOADN                            R2 2
       10 ADDK                             R3 R2 K3 [3]
       11 JUMPIFNOTLT                      R3 R1 ; [+164]
       13 FASTCALL2                        BUFFER_READU8 R0 R2 ; [+5]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 GETIMPORT                        R3 K5 [buffer.readu8]
       19 CALL                             R3 2 1
       20 JUMPIFEQKN                       R3 K6 [255] ; [+3]
       22 ADDK                             R2 R2 K7 [1]
       23 JUMP                             ; [+151]
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
      120 JUMPIFNOT                        R5 ; [+53]
      121 DUPTABLE                         R5 K17 [{"width", "height", "mimeType"}]
      122 ADDK                             R7 R2 K18 [5]
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
      170 LOADK                            R6 K19 ["image/jpeg"]
      171 SETTABLEKS                       R6 R5 K16 ["mimeType"]
      173 RETURN                           R5 1
      174 ADD                              R2 R2 R4
      175 JUMPBACK                         ; [-166]
      176 LOADNIL                          R3
      177 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [buffer.fromstring]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K3 ["Base64Decode"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_8:
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
       37 GETUPVAL                         R5 1
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K16 ["image/png"] ; [+5]
       42 GETUPVAL                         R6 2
       43 MOVE                             R7 R3
       44 CALL                             R6 1 1
       45 RETURN                           R6 1
       46 JUMPIFNOTEQKS                    R5 K17 ["image/jpeg"] ; [+5]
       48 GETUPVAL                         R6 3
       49 MOVE                             R7 R3
       50 CALL                             R6 1 1
       51 RETURN                           R6 1
       52 LOADNIL                          R6
       53 RETURN                           R6 1

PROTO_9:
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
       70 GETUPVAL                         R8 2
       71 CALL                             R8 0 1
       72 JUMPIFNOT                        R8 ; [+20]
       73 GETUPVAL                         R8 3
       74 MOVE                             R9 R4
       75 CALL                             R8 1 1
       76 JUMPIFNOT                        R8 ; [+16]
       77 JUMPIFEQ                         R8 R7 ; [+15]
       79 GETIMPORT                        R9 K9 [error]
       81 LOADK                            R13 K21 ["File extension \".%*\" indicates %*, but the file contents are actually %*. "]
       82 MOVE                             R15 R6
       83 MOVE                             R16 R7
       84 MOVE                             R17 R8
       85 NAMECALL                         R13 R13 K20 ["format"]
       87 CALL                             R13 4 1
       88 MOVE                             R11 R13
       89 LOADK                            R12 K22 ["Please rename the file to match its real format or convert it to a supported one (jpg, jpeg, png)."]
       90 CONCAT                           R10 R11 R12
       91 LOADN                            R11 0
       92 CALL                             R9 2 0
       93 GETIMPORT                        R8 K24 [pcall]
       95 NEWCLOSURE                       R9 P0
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CALL                             R8 1 2
       99 JUMPIF                           R8 ; [+10]
      100 GETIMPORT                        R10 K9 [error]
      102 LOADK                            R12 K25 ["Failed to encode image to base64, reason: "]
      103 FASTCALL1                        TOSTRING R9 ; [+3]
      104 MOVE                             R14 R9
      105 GETIMPORT                        R13 K27 [tostring]
      107 CALL                             R13 1 1
      108 CONCAT                           R11 R12 R13
      109 CALL                             R10 1 0
      110 JUMPIF                           R9 ; [+4]
      111 GETIMPORT                        R10 K9 [error]
      113 LOADK                            R11 K28 ["Failed to encode image to base64."]
      114 CALL                             R10 1 0
      115 DUPTABLE                         R10 K32 [{"type", "data", "mimeType"}]
      116 LOADK                            R11 K33 ["image"]
      117 SETTABLEKS                       R11 R10 K29 ["type"]
      119 SETTABLEKS                       R9 R10 K30 ["data"]
      121 SETTABLEKS                       R7 R10 K31 ["mimeType"]
      123 RETURN                           R10 1

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
       20 LOADK                            R4 K8 ["Select an image"]
       21 MOVE                             R5 R1
       22 CALL                             R2 3 1
       23 JUMPIFNOTEQKS                    R2 K9 [""] ; [+3]
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 LOADK                            R7 K10 [".*[/\\]()"]
       28 NAMECALL                         R5 R2 K11 ["match"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+12]
       32 LOADN                            R8 1
       33 SUBK                             R9 R5 K12 [2]
       34 NAMECALL                         R6 R2 K13 ["sub"]
       36 CALL                             R6 3 1
       37 MOVE                             R9 R5
       38 NAMECALL                         R7 R2 K13 ["sub"]
       40 CALL                             R7 2 1
       41 MOVE                             R3 R6
       42 MOVE                             R4 R7
       43 JUMP                             ; [+2]
       44 LOADK                            R3 K9 [""]
       45 MOVE                             R4 R2
       46 GETTABLEKS                       R5 R0 K14 ["setUserSettingsAsync"]
       48 LOADK                            R6 K2 ["imageAttachmentInitDirectory"]
       49 MOVE                             R7 R3
       50 CALL                             R5 2 0
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K15 ["loadImageFromPathAsync"]
       54 MOVE                             R6 R2
       55 CALL                             R5 1 -1
       56 RETURN                           R5 -1

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
       22 GETTABLEKS                       R4 R0 K12 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Flags"]
       29 GETTABLEKS                       R5 R5 K14 ["FFlagPrimGenDetectMineTypeFromContent"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 8 0
       34 NEWTABLE                         R6 0 3
       36 LOADK                            R7 K15 ["jpg"]
       37 LOADK                            R8 K16 ["jpeg"]
       38 LOADK                            R9 K17 ["png"]
       39 SETLIST                          R6 R7 3 [1]
       41 DUPTABLE                         R7 K18 [{"jpg", "jpeg", "png"}]
       42 LOADK                            R8 K19 ["image/jpeg"]
       43 SETTABLEKS                       R8 R7 K15 ["jpg"]
       45 LOADK                            R8 K19 ["image/jpeg"]
       46 SETTABLEKS                       R8 R7 K16 ["jpeg"]
       48 LOADK                            R8 K20 ["image/png"]
       49 SETTABLEKS                       R8 R7 K17 ["png"]
       51 DUPCLOSURE                       R8 K21 [PROTO_0]
       52 DUPCLOSURE                       R9 K22 [PROTO_1]
       53 DUPCLOSURE                       R10 K23 [PROTO_2]
       54 DUPCLOSURE                       R11 K24 [PROTO_3]
       55 DUPCLOSURE                       R12 K25 [PROTO_4]
       56 DUPCLOSURE                       R13 K26 [PROTO_5]
       57 DUPCLOSURE                       R14 K27 [PROTO_6]
       58 DUPCLOSURE                       R15 K28 [PROTO_8]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R14
       63 SETTABLEKS                       R15 R5 K29 ["getPngOrJpegDimensionsFromBase64"]
       65 DUPCLOSURE                       R15 K30 [PROTO_9]
       66 DUPCLOSURE                       R16 K31 [PROTO_11]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R16 R5 K32 ["loadImageFromPathAsync"]
       73 DUPCLOSURE                       R16 K33 [PROTO_12]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R16 R5 K34 ["promptAndLoadImageAsync"]
       79 DUPCLOSURE                       R16 K35 [PROTO_13]
       80 SETTABLEKS                       R16 R5 K36 ["addImage"]
       82 DUPCLOSURE                       R16 K37 [PROTO_14]
       83 SETTABLEKS                       R16 R5 K38 ["removeImage"]
       85 RETURN                           R5 1
