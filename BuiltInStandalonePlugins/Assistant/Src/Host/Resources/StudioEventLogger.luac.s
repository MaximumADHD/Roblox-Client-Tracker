PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+2]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 244
        6 JUMPIFNOTLE                      R1 R2 ; [+2]
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 1
       13 MOVE                             R2 R0
       14 LOADN                            R3 244
       15 CALL                             R1 2 1
       16 MOVE                             R3 R1
       17 LOADK                            R4 K0 ["..."]
       18 CONCAT                           R2 R3 R4
       19 RETURN                           R2 1
       20 LOADN                            R6 1
       21 LOADN                            R7 244
       22 FASTCALL3                        STRING_SUB R0 R6 R7
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K3 [string.sub]
       27 CALL                             R4 3 1
       28 MOVE                             R2 R4
       29 LOADK                            R3 K0 ["..."]
       30 CONCAT                           R1 R2 R3
       31 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 DUPTABLE                         R1 K1 [{"size"}]
        5 LENGTH                           R2 R0
        6 SETTABLEKS                       R2 R1 K0 ["size"]
        8 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"type", "text"}]
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 GETTABLEKS                       R2 R0 K1 ["text"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"type", "mimeType", "data"}]
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 GETTABLEKS                       R2 R0 K1 ["mimeType"]
        7 SETTABLEKS                       R2 R1 K1 ["mimeType"]
        9 GETTABLEKS                       R3 R0 K2 ["data"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+3]
       13 LOADNIL                          R2
       14 JUMP                             ; [+4]
       15 DUPTABLE                         R2 K5 [{"size"}]
       16 LENGTH                           R4 R3
       17 SETTABLEKS                       R4 R2 K4 ["size"]
       19 SETTABLEKS                       R2 R1 K2 ["data"]
       21 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K3 [{"type", "mimeType", "data"}]
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 GETTABLEKS                       R2 R0 K1 ["mimeType"]
        7 SETTABLEKS                       R2 R1 K1 ["mimeType"]
        9 GETTABLEKS                       R3 R0 K2 ["data"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+3]
       13 LOADNIL                          R2
       14 JUMP                             ; [+4]
       15 DUPTABLE                         R2 K5 [{"size"}]
       16 LENGTH                           R4 R3
       17 SETTABLEKS                       R4 R2 K4 ["size"]
       19 SETTABLEKS                       R2 R1 K2 ["data"]
       21 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"type", "resource"}]
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 DUPTABLE                         R2 K7 [{"uri", "mimeType", "text", "blob"}]
        6 GETTABLEKS                       R3 R0 K1 ["resource"]
        8 GETTABLEKS                       R3 R3 K3 ["uri"]
       10 SETTABLEKS                       R3 R2 K3 ["uri"]
       12 GETTABLEKS                       R3 R0 K1 ["resource"]
       14 GETTABLEKS                       R3 R3 K4 ["mimeType"]
       16 SETTABLEKS                       R3 R2 K4 ["mimeType"]
       18 GETTABLEKS                       R3 R0 K1 ["resource"]
       20 GETTABLEKS                       R3 R3 K5 ["text"]
       22 SETTABLEKS                       R3 R2 K5 ["text"]
       24 GETTABLEKS                       R4 R0 K1 ["resource"]
       26 GETTABLEKS                       R4 R4 K6 ["blob"]
       28 JUMPIFNOTEQKNIL                  R4 ; [+3]
       30 LOADNIL                          R3
       31 JUMP                             ; [+4]
       32 DUPTABLE                         R3 K9 [{"size"}]
       33 LENGTH                           R5 R4
       34 SETTABLEKS                       R5 R3 K8 ["size"]
       36 SETTABLEKS                       R3 R2 K6 ["blob"]
       38 SETTABLEKS                       R2 R1 K1 ["resource"]
       40 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"type", "uri", "name", "description", "mimeType"}]
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 GETTABLEKS                       R2 R0 K1 ["uri"]
        7 SETTABLEKS                       R2 R1 K1 ["uri"]
        9 GETTABLEKS                       R2 R0 K2 ["name"]
       11 SETTABLEKS                       R2 R1 K2 ["name"]
       13 GETTABLEKS                       R2 R0 K3 ["description"]
       15 SETTABLEKS                       R2 R1 K3 ["description"]
       17 GETTABLEKS                       R2 R0 K4 ["mimeType"]
       19 SETTABLEKS                       R2 R1 K4 ["mimeType"]
       21 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+11]
        4 DUPTABLE                         R1 K2 [{"type", "text"}]
        5 GETTABLEKS                       R2 R0 K0 ["type"]
        7 SETTABLEKS                       R2 R1 K0 ["type"]
        9 GETTABLEKS                       R2 R0 K1 ["text"]
       11 SETTABLEKS                       R2 R1 K1 ["text"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K0 ["type"]
       16 JUMPIFNOTEQKS                    R1 K3 ["image"] ; [+23]
       18 DUPTABLE                         R1 K6 [{"type", "mimeType", "data"}]
       19 GETTABLEKS                       R2 R0 K0 ["type"]
       21 SETTABLEKS                       R2 R1 K0 ["type"]
       23 GETTABLEKS                       R2 R0 K4 ["mimeType"]
       25 SETTABLEKS                       R2 R1 K4 ["mimeType"]
       27 GETTABLEKS                       R3 R0 K5 ["data"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+3]
       31 LOADNIL                          R2
       32 JUMP                             ; [+4]
       33 DUPTABLE                         R2 K8 [{"size"}]
       34 LENGTH                           R4 R3
       35 SETTABLEKS                       R4 R2 K7 ["size"]
       37 SETTABLEKS                       R2 R1 K5 ["data"]
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K0 ["type"]
       42 JUMPIFNOTEQKS                    R1 K9 ["audio"] ; [+23]
       44 DUPTABLE                         R1 K6 [{"type", "mimeType", "data"}]
       45 GETTABLEKS                       R2 R0 K0 ["type"]
       47 SETTABLEKS                       R2 R1 K0 ["type"]
       49 GETTABLEKS                       R2 R0 K4 ["mimeType"]
       51 SETTABLEKS                       R2 R1 K4 ["mimeType"]
       53 GETTABLEKS                       R3 R0 K5 ["data"]
       55 JUMPIFNOTEQKNIL                  R3 ; [+3]
       57 LOADNIL                          R2
       58 JUMP                             ; [+4]
       59 DUPTABLE                         R2 K8 [{"size"}]
       60 LENGTH                           R4 R3
       61 SETTABLEKS                       R4 R2 K7 ["size"]
       63 SETTABLEKS                       R2 R1 K5 ["data"]
       65 RETURN                           R1 1
       66 GETTABLEKS                       R1 R0 K0 ["type"]
       68 JUMPIFNOTEQKS                    R1 K10 ["resource"] ; [+5]
       70 GETUPVAL                         R1 0
       71 MOVE                             R2 R0
       72 CALL                             R1 1 1
       73 RETURN                           R1 1
       74 GETTABLEKS                       R1 R0 K0 ["type"]
       76 JUMPIFNOTEQKS                    R1 K11 ["resource_link"] ; [+23]
       78 DUPTABLE                         R1 K15 [{"type", "uri", "name", "description", "mimeType"}]
       79 GETTABLEKS                       R2 R0 K0 ["type"]
       81 SETTABLEKS                       R2 R1 K0 ["type"]
       83 GETTABLEKS                       R2 R0 K12 ["uri"]
       85 SETTABLEKS                       R2 R1 K12 ["uri"]
       87 GETTABLEKS                       R2 R0 K13 ["name"]
       89 SETTABLEKS                       R2 R1 K13 ["name"]
       91 GETTABLEKS                       R2 R0 K14 ["description"]
       93 SETTABLEKS                       R2 R1 K14 ["description"]
       95 GETTABLEKS                       R2 R0 K4 ["mimeType"]
       97 SETTABLEKS                       R2 R1 K4 ["mimeType"]
       99 RETURN                           R1 1
      100 DUPTABLE                         R1 K17 [{"type", "error"}]
      101 GETTABLEKS                       R3 R0 K0 ["type"]
      103 FASTCALL1                        TOSTRING R3 ; [+2]
      104 GETIMPORT                        R2 K19 [tostring]
      106 CALL                             R2 1 1
      107 SETTABLEKS                       R2 R1 K0 ["type"]
      109 LOADK                            R2 K20 ["Unknown tool result content type"]
      110 SETTABLEKS                       R2 R1 K16 ["error"]
      112 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R8 1
        7 MOVE                             R9 R5
        8 CALL                             R8 1 1
        9 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K2 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-10]
       17 GETUPVAL                         R1 2
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_11:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+16]
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R5 K4 [{"error", "detail"}]
       14 LOADK                            R6 K5 ["Failed to encode tool result content"]
       15 SETTABLEKS                       R6 R5 K2 ["error"]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R7 R2
       19 GETIMPORT                        R6 K7 [tostring]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K3 ["detail"]
       24 NAMECALL                         R3 R3 K8 ["JSONEncode"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1
       28 LENGTH                           R3 R2
       29 LOADN                            R4 244
       30 JUMPIFNOTLT                      R4 R3 ; [+11]
       32 LOADN                            R5 1
       33 LOADN                            R6 244
       34 FASTCALL3                        STRING_SUB R2 R5 R6
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K11 [string.sub]
       39 CALL                             R3 3 1
       40 LOADB                            R4 1
       41 RETURN                           R3 2
       42 RETURN                           R2 1

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K2 [string.gsub]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K3 ["%s+"]
        8 LOADK                            R4 K4 [""]
        9 CALL                             R1 3 1
       10 GETIMPORT                        R2 K6 [string.match]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K7 ["^[^,]+,(.+)$"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 JUMP                             ; [+14]
        4 GETIMPORT                        R2 K2 [string.gsub]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K3 ["%s+"]
        8 LOADK                            R5 K4 [""]
        9 CALL                             R2 3 1
       10 GETIMPORT                        R3 K6 [string.match]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K7 ["^[^,]+,(.+)$"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+1]
       16 MOVE                             R2 R3
       17 MOVE                             R1 R2
       18 JUMPIFNOTEQKNIL                  R1 ; [+3]
       20 LOADN                            R2 0
       21 RETURN                           R2 1
       22 LOADN                            R2 0
       23 FASTCALL2K                       STRING_SUB R1 K8 ; [+5]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K8 [-2]
       27 GETIMPORT                        R3 K10 [string.sub]
       29 CALL                             R3 2 1
       30 JUMPIFNOTEQKS                    R3 K11 ["=="] ; [+3]
       32 LOADN                            R2 2
       33 JUMP                             ; [+10]
       34 FASTCALL2K                       STRING_SUB R1 K12 ; [+5]
       36 MOVE                             R4 R1
       37 LOADK                            R5 K12 [-1]
       38 GETIMPORT                        R3 K10 [string.sub]
       40 CALL                             R3 2 1
       41 JUMPIFNOTEQKS                    R3 K13 ["="] ; [+2]
       43 LOADN                            R2 1
       44 LOADN                            R4 0
       45 LENGTH                           R9 R1
       46 MULK                             R8 R9 K15 [3]
       47 DIVK                             R7 R8 K14 [4]
       48 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       49 GETIMPORT                        R6 K18 [math.floor]
       51 CALL                             R6 1 1
       52 SUB                              R5 R6 R2
       53 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       55 GETIMPORT                        R3 K20 [math.max]
       57 CALL                             R3 2 1
       58 RETURN                           R3 1

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R0 ; [+12]
        2 DUPTABLE                         R1 K3 [{"toolResultTextContentCount", "toolResultImages", "toolResultContentItemCount"}]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K0 ["toolResultTextContentCount"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K1 ["toolResultImages"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K2 ["toolResultContentItemCount"]
       12 RETURN                           R1 1
       13 LOADN                            R1 0
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R7 K4 ["type"]
       22 JUMPIFNOTEQKS                    R8 K5 ["text"] ; [+3]
       24 ADDK                             R1 R1 K6 [1]
       25 JUMP                             ; [+128]
       26 GETTABLEKS                       R8 R7 K4 ["type"]
       28 JUMPIFNOTEQKS                    R8 K7 ["image"] ; [+125]
       30 GETTABLEKS                       R9 R7 K8 ["data"]
       32 JUMPIFNOTEQKNIL                  R9 ; [+3]
       34 LOADNIL                          R8
       35 JUMP                             ; [+14]
       36 GETIMPORT                        R10 K11 [string.gsub]
       38 MOVE                             R11 R9
       39 LOADK                            R12 K12 ["%s+"]
       40 LOADK                            R13 K13 [""]
       41 CALL                             R10 3 1
       42 GETIMPORT                        R11 K15 [string.match]
       44 MOVE                             R12 R10
       45 LOADK                            R13 K16 ["^[^,]+,(.+)$"]
       46 CALL                             R11 2 1
       47 JUMPIFNOT                        R11 ; [+1]
       48 MOVE                             R10 R11
       49 MOVE                             R8 R10
       50 JUMPIFNOT                        R8 ; [+6]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K17 ["getPngOrJpegDimensionsFromBase64"]
       54 MOVE                             R10 R8
       55 CALL                             R9 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R9
       58 DUPTABLE                         R12 K23 [{"width", "height", "mimeType", "base64Characters", "byteSize"}]
       59 JUMPIFNOT                        R9 ; [+3]
       60 GETTABLEKS                       R13 R9 K18 ["width"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R13
       64 SETTABLEKS                       R13 R12 K18 ["width"]
       66 JUMPIFNOT                        R9 ; [+3]
       67 GETTABLEKS                       R13 R9 K19 ["height"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R13
       71 SETTABLEKS                       R13 R12 K19 ["height"]
       73 JUMPIFNOT                        R9 ; [+3]
       74 GETTABLEKS                       R13 R9 K20 ["mimeType"]
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R13 R7 K20 ["mimeType"]
       79 SETTABLEKS                       R13 R12 K20 ["mimeType"]
       81 JUMPIFNOT                        R8 ; [+2]
       82 LENGTH                           R13 R8
       83 JUMP                             ; [+1]
       84 LOADNIL                          R13
       85 SETTABLEKS                       R13 R12 K21 ["base64Characters"]
       87 JUMPIFNOTEQKNIL                  R8 ; [+3]
       89 LOADNIL                          R14
       90 JUMP                             ; [+14]
       91 GETIMPORT                        R15 K11 [string.gsub]
       93 MOVE                             R16 R8
       94 LOADK                            R17 K12 ["%s+"]
       95 LOADK                            R18 K13 [""]
       96 CALL                             R15 3 1
       97 GETIMPORT                        R16 K15 [string.match]
       99 MOVE                             R17 R15
      100 LOADK                            R18 K16 ["^[^,]+,(.+)$"]
      101 CALL                             R16 2 1
      102 JUMPIFNOT                        R16 ; [+1]
      103 MOVE                             R15 R16
      104 MOVE                             R14 R15
      105 JUMPIFNOTEQKNIL                  R14 ; [+3]
      107 LOADN                            R13 0
      108 JUMP                             ; [+37]
      109 LOADN                            R15 0
      110 FASTCALL2K                       STRING_SUB R14 K24 ; [+5]
      112 MOVE                             R17 R14
      113 LOADK                            R18 K24 [-2]
      114 GETIMPORT                        R16 K26 [string.sub]
      116 CALL                             R16 2 1
      117 JUMPIFNOTEQKS                    R16 K27 ["=="] ; [+3]
      119 LOADN                            R15 2
      120 JUMP                             ; [+10]
      121 FASTCALL2K                       STRING_SUB R14 K28 ; [+5]
      123 MOVE                             R17 R14
      124 LOADK                            R18 K28 [-1]
      125 GETIMPORT                        R16 K26 [string.sub]
      127 CALL                             R16 2 1
      128 JUMPIFNOTEQKS                    R16 K29 ["="] ; [+2]
      130 LOADN                            R15 1
      131 LOADN                            R17 0
      132 LENGTH                           R22 R14
      133 MULK                             R21 R22 K31 [3]
      134 DIVK                             R20 R21 K30 [4]
      135 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      136 GETIMPORT                        R19 K34 [math.floor]
      138 CALL                             R19 1 1
      139 SUB                              R18 R19 R15
      140 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      142 GETIMPORT                        R16 K36 [math.max]
      144 CALL                             R16 2 1
      145 MOVE                             R13 R16
      146 SETTABLEKS                       R13 R12 K22 ["byteSize"]
      148 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      150 MOVE                             R11 R2
      151 GETIMPORT                        R10 K39 [table.insert]
      153 CALL                             R10 2 0
      154 FORGLOOP                         R3 2 ; [-135]
      156 DUPTABLE                         R3 K3 [{"toolResultTextContentCount", "toolResultImages", "toolResultContentItemCount"}]
      157 SETTABLEKS                       R1 R3 K0 ["toolResultTextContentCount"]
      159 JUMPIFNOTEQKNIL                  R2 ; [+3]
      161 LOADNIL                          R4
      162 JUMP                             ; [+10]
      163 GETIMPORT                        R5 K41 [pcall]
      165 NEWCLOSURE                       R6 P0
      166 CAPTURE                          UPVAL U1
      167 CAPTURE                          VAL R2
      168 CALL                             R5 1 2
      169 JUMPIF                           R5 ; [+2]
      170 LOADNIL                          R4
      171 JUMP                             ; [+1]
      172 MOVE                             R4 R6
      173 SETTABLEKS                       R4 R3 K1 ["toolResultImages"]
      175 LENGTH                           R4 R0
      176 SETTABLEKS                       R4 R3 K2 ["toolResultContentItemCount"]
      178 RETURN                           R3 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["StandardizedFields"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R5
       12 GETIMPORT                        R6 K3 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-8]
       17 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R2 K0 ["StudioAssistant%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Backends"]
        5 GETTABLEKS                       R3 R3 K1 ["EventIngest"]
        7 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["Backends"]
       16 GETTABLEKS                       R3 R3 K5 ["Points"]
       18 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K4 [table.insert]
       23 CALL                             R1 2 0
       24 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       13 LOADK                            R3 K3 ["Message ID not found in map"]
       14 GETIMPORT                        R1 K2 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R2 1
       18 GETTABLE                         R1 R2 R0
       19 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["createMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R0
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       14 LOADK                            R3 K3 ["Message ID already exists in map"]
       15 GETIMPORT                        R1 K2 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 2
       19 LOADB                            R3 0
       20 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 1
       24 SETTABLE                         R1 R2 R0
       25 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"timestampMilliseconds"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["getTimestampMilliseconds"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K1 ["timestampMilliseconds"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R0 R2
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 GETTABLEKS                       R1 R0 K1 ["generatedExperimentVariantDistributionVariable"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+3]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K3 [tostring]
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"experimentationGroup"}]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R5 R5 K3 ["get"]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADNIL                          R4
       12 JUMP                             ; [+16]
       13 GETUPVAL                         R7 2
       14 GETTABLE                         R6 R5 R7
       15 JUMPIFNOTEQKNIL                  R6 ; [+3]
       17 GETTABLEKS                       R6 R5 K4 ["generatedExperimentVariantDistributionVariable"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+3]
       21 LOADNIL                          R4
       22 JUMP                             ; [+6]
       23 FASTCALL1                        TOSTRING R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K6 [tostring]
       27 CALL                             R7 1 1
       28 MOVE                             R4 R7
       29 SETTABLEKS                       R4 R3 K1 ["experimentationGroup"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R1 K17 [{"requestId", "conversationId", "threadId", "message", "attachments", "assistantMode", "role"}]
       45 GETTABLEKS                       R2 R0 K18 ["messageGuid"]
       47 SETTABLEKS                       R2 R1 K10 ["requestId"]
       49 GETTABLEKS                       R2 R0 K19 ["sessionId"]
       51 SETTABLEKS                       R2 R1 K11 ["conversationId"]
       53 GETUPVAL                         R3 5
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+3]
       56 GETTABLEKS                       R2 R0 K12 ["threadId"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R2
       60 SETTABLEKS                       R2 R1 K12 ["threadId"]
       62 GETTABLEKS                       R2 R0 K13 ["message"]
       64 SETTABLEKS                       R2 R1 K13 ["message"]
       66 GETTABLEKS                       R2 R0 K14 ["attachments"]
       68 SETTABLEKS                       R2 R1 K14 ["attachments"]
       70 GETTABLEKS                       R2 R0 K15 ["assistantMode"]
       72 SETTABLEKS                       R2 R1 K15 ["assistantMode"]
       74 LOADK                            R2 K20 ["MCPUser"]
       75 SETTABLEKS                       R2 R1 K16 ["role"]
       77 GETTABLEKS                       R2 R0 K21 ["model"]
       79 SETTABLEKS                       R2 R1 K21 ["model"]
       81 GETUPVAL                         R2 2
       82 GETTABLEKS                       R2 R2 K22 ["assign"]
       84 MOVE                             R3 R1
       85 DUPTABLE                         R4 K24 [{"timestampMilliseconds"}]
       86 GETUPVAL                         R5 6
       87 GETTABLEKS                       R5 R5 K25 ["getTimestampMilliseconds"]
       89 CALL                             R5 0 1
       90 SETTABLEKS                       R5 R4 K23 ["timestampMilliseconds"]
       92 CALL                             R2 2 1
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K26 ["logEvent"]
       96 GETUPVAL                         R4 7
       97 DUPTABLE                         R5 K28 [{"customFields", "standardizedFields"}]
       98 SETTABLEKS                       R2 R5 K1 ["customFields"]
      100 NEWTABLE                         R7 0 0
      102 GETUPVAL                         R8 8
      103 GETTABLEKS                       R8 R8 K29 ["StandardizedFields"]
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      110 MOVE                             R14 R7
      111 MOVE                             R15 R12
      112 GETIMPORT                        R13 K32 [table.insert]
      114 CALL                             R13 2 0
      115 FORGLOOP                         R8 2 ; [-8]
      117 MOVE                             R6 R7
      118 SETTABLEKS                       R6 R5 K27 ["standardizedFields"]
      120 CALL                             R3 2 0
      121 GETUPVAL                         R3 9
      122 JUMPIFNOT                        R3 ; [+10]
      123 GETUPVAL                         R3 9
      124 LOADK                            R5 K33 ["user_message_sent"]
      125 DUPTABLE                         R6 K34 [{"requestId"}]
      126 GETTABLEKS                       R7 R0 K18 ["messageGuid"]
      128 SETTABLEKS                       R7 R6 K10 ["requestId"]
      130 NAMECALL                         R3 R3 K35 ["LogEventAsync"]
      132 CALL                             R3 3 0
      133 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R2 K5 [{"requestId", "conversationId", "threadId", "message", "role"}]
        1 GETTABLEKS                       R3 R0 K6 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K7 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R3 R0 K2 ["threadId"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K2 ["threadId"]
       18 GETTABLEKS                       R3 R0 K3 ["message"]
       20 SETTABLEKS                       R3 R2 K3 ["message"]
       22 LOADK                            R3 K8 ["MCPAssistant"]
       23 SETTABLEKS                       R3 R2 K4 ["role"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K9 ["assign"]
       28 MOVE                             R4 R2
       29 DUPTABLE                         R5 K11 [{"timestampMilliseconds"}]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K12 ["getTimestampMilliseconds"]
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K10 ["timestampMilliseconds"]
       36 CALL                             R3 2 1
       37 MOVE                             R1 R3
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K13 ["logEvent"]
       41 GETUPVAL                         R3 4
       42 DUPTABLE                         R4 K16 [{"customFields", "standardizedFields"}]
       43 SETTABLEKS                       R1 R4 K14 ["customFields"]
       45 NEWTABLE                         R6 0 0
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K17 ["StandardizedFields"]
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 FORGPREP                         R7
       53 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       55 MOVE                             R13 R6
       56 MOVE                             R14 R11
       57 GETIMPORT                        R12 K20 [table.insert]
       59 CALL                             R12 2 0
       60 FORGLOOP                         R7 2 ; [-8]
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K15 ["standardizedFields"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R2 K1 [{"provider"}]
        1 SETTABLEKS                       R0 R2 K0 ["provider"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["assign"]
        6 MOVE                             R4 R2
        7 DUPTABLE                         R5 K4 [{"timestampMilliseconds"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K5 ["getTimestampMilliseconds"]
       11 CALL                             R6 0 1
       12 SETTABLEKS                       R6 R5 K3 ["timestampMilliseconds"]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K6 ["logEvent"]
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K9 [{"customFields", "standardizedFields"}]
       21 SETTABLEKS                       R1 R4 K7 ["customFields"]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K10 ["StandardizedFields"]
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       33 MOVE                             R13 R6
       34 MOVE                             R14 R11
       35 GETIMPORT                        R12 K13 [table.insert]
       37 CALL                             R12 2 0
       38 FORGLOOP                         R7 2 ; [-8]
       40 MOVE                             R5 R6
       41 SETTABLEKS                       R5 R4 K8 ["standardizedFields"]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"errorType"}]
        7 SETTABLEKS                       R0 R6 K3 ["errorType"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K5 ["join"]
       12 MOVE                             R8 R6
       13 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       14 GETUPVAL                         R11 3
       15 NAMECALL                         R11 R11 K8 ["get"]
       17 CALL                             R11 1 1
       18 JUMPIFNOTEQKNIL                  R11 ; [+3]
       20 LOADNIL                          R10
       21 JUMP                             ; [+16]
       22 GETUPVAL                         R13 4
       23 GETTABLE                         R12 R11 R13
       24 JUMPIFNOTEQKNIL                  R12 ; [+3]
       26 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       28 JUMPIFNOTEQKNIL                  R12 ; [+3]
       30 LOADNIL                          R10
       31 JUMP                             ; [+6]
       32 FASTCALL1                        TOSTRING R12 ; [+3]
       33 MOVE                             R14 R12
       34 GETIMPORT                        R13 K11 [tostring]
       36 CALL                             R13 1 1
       37 MOVE                             R10 R13
       38 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       40 CALL                             R7 2 1
       41 MOVE                             R5 R7
       42 SETTABLEKS                       R5 R4 K1 ["customFields"]
       44 CALL                             R1 3 0
       45 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R2 K14 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       45 GETTABLEKS                       R3 R0 K15 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K16 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETTABLEKS                       R3 R0 K12 ["feedbackCategory"]
       55 SETTABLEKS                       R3 R2 K12 ["feedbackCategory"]
       57 GETTABLEKS                       R3 R0 K13 ["feedbackMessage"]
       59 SETTABLEKS                       R3 R2 K13 ["feedbackMessage"]
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K17 ["assign"]
       64 MOVE                             R4 R2
       65 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K20 ["getTimestampMilliseconds"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
       72 CALL                             R3 2 1
       73 MOVE                             R1 R3
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K21 ["logEvent"]
       77 GETUPVAL                         R3 6
       78 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
       79 SETTABLEKS                       R1 R4 K1 ["customFields"]
       81 NEWTABLE                         R6 0 0
       83 GETUPVAL                         R7 7
       84 GETTABLEKS                       R7 R7 K24 ["StandardizedFields"]
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       91 MOVE                             R13 R6
       92 MOVE                             R14 R11
       93 GETIMPORT                        R12 K27 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-8]
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 8
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 8
      105 LOADK                            R4 K28 ["thumbs_up"]
      106 DUPTABLE                         R5 K29 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K15 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K30 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R2 K14 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       45 GETTABLEKS                       R3 R0 K15 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K16 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETTABLEKS                       R3 R0 K12 ["feedbackCategory"]
       55 SETTABLEKS                       R3 R2 K12 ["feedbackCategory"]
       57 GETTABLEKS                       R3 R0 K13 ["feedbackMessage"]
       59 SETTABLEKS                       R3 R2 K13 ["feedbackMessage"]
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K17 ["assign"]
       64 MOVE                             R4 R2
       65 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K20 ["getTimestampMilliseconds"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
       72 CALL                             R3 2 1
       73 MOVE                             R1 R3
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K21 ["logEvent"]
       77 GETUPVAL                         R3 6
       78 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
       79 SETTABLEKS                       R1 R4 K1 ["customFields"]
       81 NEWTABLE                         R6 0 0
       83 GETUPVAL                         R7 7
       84 GETTABLEKS                       R7 R7 K24 ["StandardizedFields"]
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       91 MOVE                             R13 R6
       92 MOVE                             R14 R11
       93 GETIMPORT                        R12 K27 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-8]
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 8
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 8
      105 LOADK                            R4 K28 ["thumbs_down"]
      106 DUPTABLE                         R5 K29 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K15 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K30 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K4 [{"markdown"}]
        6 SETTABLEKS                       R0 R4 K3 ["markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["customFields"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R2 K2 [{"requestId", "conversationId"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K4 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K8 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K9 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K10 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R7 R7 K13 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K16 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 GETUPVAL                         R2 5
       51 JUMPIFNOT                        R2 ; [+10]
       52 GETUPVAL                         R2 5
       53 LOADK                            R4 K17 ["retry"]
       54 DUPTABLE                         R5 K18 [{"requestId"}]
       55 GETTABLEKS                       R6 R0 K3 ["messageGuid"]
       57 SETTABLEKS                       R6 R5 K0 ["requestId"]
       59 NAMECALL                         R2 R2 K19 ["LogEventAsync"]
       61 CALL                             R2 3 0
       62 RETURN                           R0 0

PROTO_32:
        0 DUPTABLE                         R2 K2 [{"requestId", "conversationId"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K4 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K8 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K9 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K10 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R7 R7 K13 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K16 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_33:
        0 DUPTABLE                         R2 K13 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId"}]
        1 GETTABLEKS                       R3 R0 K14 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K15 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["toolId"]
       11 SETTABLEKS                       R3 R2 K2 ["toolId"]
       13 GETTABLEKS                       R3 R0 K3 ["toolName"]
       15 SETTABLEKS                       R3 R2 K3 ["toolName"]
       17 GETTABLEKS                       R3 R0 K3 ["toolName"]
       19 SETTABLEKS                       R3 R2 K4 ["toolType"]
       21 GETTABLEKS                       R3 R0 K5 ["serverName"]
       23 SETTABLEKS                       R3 R2 K5 ["serverName"]
       25 GETTABLEKS                       R3 R0 K6 ["clientName"]
       27 SETTABLEKS                       R3 R2 K6 ["clientName"]
       29 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
       31 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
       33 GETTABLEKS                       R3 R0 K8 ["isSlashCommand"]
       35 SETTABLEKS                       R3 R2 K8 ["isSlashCommand"]
       37 GETTABLEKS                       R3 R0 K9 ["assistantMode"]
       39 SETTABLEKS                       R3 R2 K9 ["assistantMode"]
       41 GETTABLEKS                       R3 R0 K10 ["currentSubagent"]
       43 SETTABLEKS                       R3 R2 K10 ["currentSubagent"]
       45 GETTABLEKS                       R3 R0 K11 ["parentMessageGuid"]
       47 SETTABLEKS                       R3 R2 K11 ["parentMessageGuid"]
       49 GETTABLEKS                       R3 R0 K12 ["parentToolId"]
       51 SETTABLEKS                       R3 R2 K12 ["parentToolId"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K16 ["assign"]
       56 MOVE                             R4 R2
       57 DUPTABLE                         R5 K18 [{"timestampMilliseconds"}]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K19 ["getTimestampMilliseconds"]
       61 CALL                             R6 0 1
       62 SETTABLEKS                       R6 R5 K17 ["timestampMilliseconds"]
       64 CALL                             R3 2 1
       65 MOVE                             R1 R3
       66 GETUPVAL                         R2 2
       67 CALL                             R2 0 1
       68 JUMPIF                           R2 ; [+3]
       69 GETUPVAL                         R2 3
       70 CALL                             R2 0 1
       71 JUMPIFNOT                        R2 ; [+56]
       72 GETTABLEKS                       R3 R0 K20 ["input"]
       74 JUMPIFNOTEQKNIL                  R3 ; [+3]
       76 LOADNIL                          R2
       77 JUMP                             ; [+10]
       78 GETIMPORT                        R4 K22 [pcall]
       80 NEWCLOSURE                       R5 P0
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R3
       83 CALL                             R4 1 2
       84 JUMPIF                           R4 ; [+2]
       85 LOADNIL                          R2
       86 JUMP                             ; [+1]
       87 MOVE                             R2 R5
       88 JUMPIFNOTEQKNIL                  R2 ; [+3]
       90 LOADNIL                          R3
       91 JUMP                             ; [+28]
       92 LENGTH                           R4 R2
       93 LOADN                            R5 244
       94 JUMPIFNOTLE                      R4 R5 ; [+3]
       96 MOVE                             R3 R2
       97 JUMP                             ; [+22]
       98 GETUPVAL                         R4 3
       99 CALL                             R4 0 1
      100 JUMPIFNOT                        R4 ; [+8]
      101 GETUPVAL                         R4 5
      102 MOVE                             R5 R2
      103 LOADN                            R6 244
      104 CALL                             R4 2 1
      105 MOVE                             R5 R4
      106 LOADK                            R6 K23 ["..."]
      107 CONCAT                           R3 R5 R6
      108 JUMP                             ; [+11]
      109 LOADN                            R8 1
      110 LOADN                            R9 244
      111 FASTCALL3                        STRING_SUB R2 R8 R9
      113 MOVE                             R7 R2
      114 GETIMPORT                        R6 K26 [string.sub]
      116 CALL                             R6 3 1
      117 MOVE                             R4 R6
      118 LOADK                            R5 K23 ["..."]
      119 CONCAT                           R3 R4 R5
      120 SETTABLEKS                       R3 R1 K27 ["toolUseInput"]
      122 JUMPIFNOT                        R2 ; [+2]
      123 LENGTH                           R3 R2
      124 JUMP                             ; [+1]
      125 LOADNIL                          R3
      126 SETTABLEKS                       R3 R1 K28 ["toolUseInputCharacters"]
      128 GETUPVAL                         R2 6
      129 GETTABLEKS                       R2 R2 K29 ["logEvent"]
      131 GETUPVAL                         R3 7
      132 DUPTABLE                         R4 K32 [{"customFields", "standardizedFields"}]
      133 SETTABLEKS                       R1 R4 K30 ["customFields"]
      135 NEWTABLE                         R6 0 0
      137 GETUPVAL                         R7 8
      138 GETTABLEKS                       R7 R7 K33 ["StandardizedFields"]
      140 LOADNIL                          R8
      141 LOADNIL                          R9
      142 FORGPREP                         R7
      143 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      145 MOVE                             R13 R6
      146 MOVE                             R14 R11
      147 GETIMPORT                        R12 K36 [table.insert]
      149 CALL                             R12 2 0
      150 FORGLOOP                         R7 2 ; [-8]
      152 MOVE                             R5 R6
      153 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      155 CALL                             R2 2 0
      156 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R2 K15 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId"}]
        1 GETTABLEKS                       R3 R0 K16 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["toolId"]
        7 SETTABLEKS                       R3 R2 K1 ["toolId"]
        9 GETTABLEKS                       R3 R0 K2 ["toolName"]
       11 SETTABLEKS                       R3 R2 K2 ["toolName"]
       13 GETTABLEKS                       R3 R0 K2 ["toolName"]
       15 SETTABLEKS                       R3 R2 K3 ["toolType"]
       17 GETTABLEKS                       R3 R0 K4 ["isError"]
       19 SETTABLEKS                       R3 R2 K4 ["isError"]
       21 GETTABLEKS                       R3 R0 K5 ["startTime"]
       23 SETTABLEKS                       R3 R2 K5 ["startTime"]
       25 GETTABLEKS                       R3 R0 K6 ["startTimeAfterConfirmation"]
       27 SETTABLEKS                       R3 R2 K6 ["startTimeAfterConfirmation"]
       29 GETTABLEKS                       R3 R0 K7 ["endTime"]
       31 SETTABLEKS                       R3 R2 K7 ["endTime"]
       33 GETTABLEKS                       R3 R0 K8 ["serverName"]
       35 SETTABLEKS                       R3 R2 K8 ["serverName"]
       37 GETTABLEKS                       R3 R0 K9 ["clientName"]
       39 SETTABLEKS                       R3 R2 K9 ["clientName"]
       41 GETTABLEKS                       R3 R0 K10 ["isThirdPartyRequest"]
       43 SETTABLEKS                       R3 R2 K10 ["isThirdPartyRequest"]
       45 GETTABLEKS                       R3 R0 K11 ["assistantMode"]
       47 SETTABLEKS                       R3 R2 K11 ["assistantMode"]
       49 GETTABLEKS                       R3 R0 K12 ["currentSubagent"]
       51 SETTABLEKS                       R3 R2 K12 ["currentSubagent"]
       53 GETTABLEKS                       R3 R0 K13 ["parentMessageGuid"]
       55 SETTABLEKS                       R3 R2 K13 ["parentMessageGuid"]
       57 GETTABLEKS                       R3 R0 K14 ["parentToolId"]
       59 SETTABLEKS                       R3 R2 K14 ["parentToolId"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K17 ["assign"]
       64 MOVE                             R4 R2
       65 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K20 ["getTimestampMilliseconds"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
       72 CALL                             R3 2 1
       73 MOVE                             R1 R3
       74 GETUPVAL                         R2 2
       75 CALL                             R2 0 1
       76 JUMPIFNOT                        R2 ; [+28]
       77 GETUPVAL                         R2 3
       78 GETTABLEKS                       R3 R0 K21 ["toolResultContent"]
       80 CALL                             R2 1 1
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R4 R0 K21 ["toolResultContent"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R2 R1 K21 ["toolResultContent"]
       87 JUMPIFNOT                        R2 ; [+2]
       88 LENGTH                           R4 R2
       89 JUMP                             ; [+1]
       90 LOADNIL                          R4
       91 SETTABLEKS                       R4 R1 K22 ["toolResultSerializedCharacters"]
       93 GETTABLEKS                       R4 R3 K23 ["toolResultTextContentCount"]
       95 SETTABLEKS                       R4 R1 K23 ["toolResultTextContentCount"]
       97 GETTABLEKS                       R4 R3 K24 ["toolResultImages"]
       99 SETTABLEKS                       R4 R1 K24 ["toolResultImages"]
      101 GETTABLEKS                       R4 R3 K25 ["toolResultContentItemCount"]
      103 SETTABLEKS                       R4 R1 K25 ["toolResultContentItemCount"]
      105 GETUPVAL                         R2 5
      106 GETTABLEKS                       R2 R2 K26 ["logEvent"]
      108 GETUPVAL                         R3 6
      109 DUPTABLE                         R4 K29 [{"customFields", "standardizedFields"}]
      110 SETTABLEKS                       R1 R4 K27 ["customFields"]
      112 NEWTABLE                         R6 0 0
      114 GETUPVAL                         R7 7
      115 GETTABLEKS                       R7 R7 K30 ["StandardizedFields"]
      117 LOADNIL                          R8
      118 LOADNIL                          R9
      119 FORGPREP                         R7
      120 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      122 MOVE                             R13 R6
      123 MOVE                             R14 R11
      124 GETIMPORT                        R12 K33 [table.insert]
      126 CALL                             R12 2 0
      127 FORGLOOP                         R7 2 ; [-8]
      129 MOVE                             R5 R6
      130 SETTABLEKS                       R5 R4 K28 ["standardizedFields"]
      132 CALL                             R2 2 0
      133 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R2 K4 [{"requestId", "toolName", "warningMessage", "serverName"}]
        1 GETTABLEKS                       R3 R0 K5 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["toolName"]
        7 SETTABLEKS                       R3 R2 K1 ["toolName"]
        9 GETTABLEKS                       R3 R0 K2 ["warningMessage"]
       11 SETTABLEKS                       R3 R2 K2 ["warningMessage"]
       13 GETTABLEKS                       R3 R0 K3 ["serverName"]
       15 SETTABLEKS                       R3 R2 K3 ["serverName"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K6 ["assign"]
       20 MOVE                             R4 R2
       21 DUPTABLE                         R5 K8 [{"timestampMilliseconds"}]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K9 ["getTimestampMilliseconds"]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R5 K7 ["timestampMilliseconds"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K10 ["logEvent"]
       33 GETUPVAL                         R3 3
       34 DUPTABLE                         R4 K13 [{"customFields", "standardizedFields"}]
       35 SETTABLEKS                       R1 R4 K11 ["customFields"]
       37 NEWTABLE                         R6 0 0
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K14 ["StandardizedFields"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       47 MOVE                             R13 R6
       48 MOVE                             R14 R11
       49 GETIMPORT                        R12 K17 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-8]
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K12 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R2 K2 [{"requestId", "result"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["result"]
        7 SETTABLEKS                       R3 R2 K1 ["result"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K6 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K7 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K5 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K8 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K11 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K9 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R7 R7 K12 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K15 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K10 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
        6 DUPTABLE                         R4 K3 [{"customFields"}]
        7 DUPTABLE                         R6 K5 [{"requestId"}]
        8 GETTABLEKS                       R7 R0 K6 ["requestEndReason"]
       10 SETTABLEKS                       R7 R6 K4 ["requestId"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K7 ["join"]
       15 MOVE                             R8 R6
       16 DUPTABLE                         R9 K9 [{"experimentationGroup"}]
       17 GETUPVAL                         R11 3
       18 NAMECALL                         R11 R11 K10 ["get"]
       20 CALL                             R11 1 1
       21 JUMPIFNOTEQKNIL                  R11 ; [+3]
       23 LOADNIL                          R10
       24 JUMP                             ; [+16]
       25 GETUPVAL                         R13 4
       26 GETTABLE                         R12 R11 R13
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 GETTABLEKS                       R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+3]
       33 LOADNIL                          R10
       34 JUMP                             ; [+6]
       35 FASTCALL1                        TOSTRING R12 ; [+3]
       36 MOVE                             R14 R12
       37 GETIMPORT                        R13 K13 [tostring]
       39 CALL                             R13 1 1
       40 MOVE                             R10 R13
       41 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       43 CALL                             R7 2 1
       44 MOVE                             R5 R7
       45 SETTABLEKS                       R5 R4 K2 ["customFields"]
       47 CALL                             R1 3 0
       48 DUPTABLE                         R2 K16 [{"requestId", "conversationId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
       49 GETTABLEKS                       R3 R0 K17 ["messageGuid"]
       51 SETTABLEKS                       R3 R2 K4 ["requestId"]
       53 GETTABLEKS                       R3 R0 K18 ["sessionId"]
       55 SETTABLEKS                       R3 R2 K14 ["conversationId"]
       57 GETTABLEKS                       R3 R0 K6 ["requestEndReason"]
       59 SETTABLEKS                       R3 R2 K6 ["requestEndReason"]
       61 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
       63 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       65 GETTABLEKS                       R3 R0 K15 ["message"]
       67 SETTABLEKS                       R3 R2 K15 ["message"]
       69 GETUPVAL                         R4 3
       70 NAMECALL                         R4 R4 K10 ["get"]
       72 CALL                             R4 1 1
       73 JUMPIFNOTEQKNIL                  R4 ; [+3]
       75 LOADNIL                          R3
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R6 4
       78 GETTABLE                         R5 R4 R6
       79 JUMPIFNOTEQKNIL                  R5 ; [+3]
       81 GETTABLEKS                       R5 R4 K11 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R5 ; [+3]
       85 LOADNIL                          R3
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R5 ; [+3]
       88 MOVE                             R7 R5
       89 GETIMPORT                        R6 K13 [tostring]
       91 CALL                             R6 1 1
       92 MOVE                             R3 R6
       93 SETTABLEKS                       R3 R2 K8 ["experimentationGroup"]
       95 GETUPVAL                         R3 2
       96 GETTABLEKS                       R3 R3 K19 ["assign"]
       98 MOVE                             R4 R2
       99 DUPTABLE                         R5 K21 [{"timestampMilliseconds"}]
      100 GETUPVAL                         R6 5
      101 GETTABLEKS                       R6 R6 K22 ["getTimestampMilliseconds"]
      103 CALL                             R6 0 1
      104 SETTABLEKS                       R6 R5 K20 ["timestampMilliseconds"]
      106 CALL                             R3 2 1
      107 MOVE                             R1 R3
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K23 ["logEvent"]
      111 GETUPVAL                         R3 6
      112 DUPTABLE                         R4 K25 [{"customFields", "standardizedFields"}]
      113 SETTABLEKS                       R1 R4 K2 ["customFields"]
      115 NEWTABLE                         R6 0 0
      117 GETUPVAL                         R7 7
      118 GETTABLEKS                       R7 R7 K26 ["StandardizedFields"]
      120 LOADNIL                          R8
      121 LOADNIL                          R9
      122 FORGPREP                         R7
      123 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      125 MOVE                             R13 R6
      126 MOVE                             R14 R11
      127 GETIMPORT                        R12 K29 [table.insert]
      129 CALL                             R12 2 0
      130 FORGLOOP                         R7 2 ; [-8]
      132 MOVE                             R5 R6
      133 SETTABLEKS                       R5 R4 K24 ["standardizedFields"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

PROTO_38:
        0 DUPTABLE                         R2 K3 [{"requestId", "model", "statusCode"}]
        1 GETTABLEKS                       R3 R0 K4 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["model"]
        7 SETTABLEKS                       R3 R2 K1 ["model"]
        9 GETTABLEKS                       R3 R0 K2 ["statusCode"]
       11 SETTABLEKS                       R3 R2 K2 ["statusCode"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["assign"]
       16 MOVE                             R4 R2
       17 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K8 ["getTimestampMilliseconds"]
       21 CALL                             R6 0 1
       22 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       24 CALL                             R3 2 1
       25 MOVE                             R1 R3
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K9 ["logEvent"]
       29 GETUPVAL                         R3 3
       30 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       31 SETTABLEKS                       R1 R4 K10 ["customFields"]
       33 NEWTABLE                         R6 0 0
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K13 ["StandardizedFields"]
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       43 MOVE                             R13 R6
       44 MOVE                             R14 R11
       45 GETIMPORT                        R12 K16 [table.insert]
       47 CALL                             R12 2 0
       48 FORGLOOP                         R7 2 ; [-8]
       50 MOVE                             R5 R6
       51 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 DUPTABLE                         R3 K2 [{"customFields"}]
        6 NEWTABLE                         R5 0 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["join"]
       11 MOVE                             R7 R5
       12 DUPTABLE                         R8 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R10 3
       14 NAMECALL                         R10 R10 K6 ["get"]
       16 CALL                             R10 1 1
       17 JUMPIFNOTEQKNIL                  R10 ; [+3]
       19 LOADNIL                          R9
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R12 4
       22 GETTABLE                         R11 R10 R12
       23 JUMPIFNOTEQKNIL                  R11 ; [+3]
       25 GETTABLEKS                       R11 R10 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R11 ; [+3]
       29 LOADNIL                          R9
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R11 ; [+3]
       32 MOVE                             R13 R11
       33 GETIMPORT                        R12 K9 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R9 R12
       37 SETTABLEKS                       R9 R8 K4 ["experimentationGroup"]
       39 CALL                             R6 2 1
       40 MOVE                             R4 R6
       41 SETTABLEKS                       R4 R3 K1 ["customFields"]
       43 CALL                             R0 3 0
       44 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K15 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETTABLEKS                       R3 R0 K14 ["prompt"]
      111 SETTABLEKS                       R3 R2 K14 ["prompt"]
      113 GETUPVAL                         R3 2
      114 GETTABLEKS                       R3 R3 K16 ["assign"]
      116 MOVE                             R4 R2
      117 DUPTABLE                         R5 K18 [{"timestampMilliseconds"}]
      118 GETUPVAL                         R6 6
      119 GETTABLEKS                       R6 R6 K19 ["getTimestampMilliseconds"]
      121 CALL                             R6 0 1
      122 SETTABLEKS                       R6 R5 K17 ["timestampMilliseconds"]
      124 CALL                             R3 2 1
      125 MOVE                             R1 R3
      126 GETUPVAL                         R2 0
      127 GETTABLEKS                       R2 R2 K20 ["logEvent"]
      129 GETUPVAL                         R3 7
      130 DUPTABLE                         R4 K22 [{"customFields", "standardizedFields"}]
      131 SETTABLEKS                       R1 R4 K2 ["customFields"]
      133 NEWTABLE                         R6 0 0
      135 GETUPVAL                         R7 8
      136 GETTABLEKS                       R7 R7 K23 ["StandardizedFields"]
      138 LOADNIL                          R8
      139 LOADNIL                          R9
      140 FORGPREP                         R7
      141 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      143 MOVE                             R13 R6
      144 MOVE                             R14 R11
      145 GETIMPORT                        R12 K26 [table.insert]
      147 CALL                             R12 2 0
      148 FORGLOOP                         R7 2 ; [-8]
      150 MOVE                             R5 R6
      151 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
      153 CALL                             R2 2 0
      154 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K16 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETTABLEKS                       R3 R0 K14 ["meshId"]
      111 SETTABLEKS                       R3 R2 K14 ["meshId"]
      113 GETTABLEKS                       R3 R0 K15 ["imageId"]
      115 SETTABLEKS                       R3 R2 K15 ["imageId"]
      117 GETUPVAL                         R3 2
      118 GETTABLEKS                       R3 R3 K17 ["assign"]
      120 MOVE                             R4 R2
      121 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
      122 GETUPVAL                         R6 6
      123 GETTABLEKS                       R6 R6 K20 ["getTimestampMilliseconds"]
      125 CALL                             R6 0 1
      126 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
      128 CALL                             R3 2 1
      129 MOVE                             R1 R3
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R2 R2 K21 ["logEvent"]
      133 GETUPVAL                         R3 7
      134 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
      135 SETTABLEKS                       R1 R4 K2 ["customFields"]
      137 NEWTABLE                         R6 0 0
      139 GETUPVAL                         R7 8
      140 GETTABLEKS                       R7 R7 K24 ["StandardizedFields"]
      142 LOADNIL                          R8
      143 LOADNIL                          R9
      144 FORGPREP                         R7
      145 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      147 MOVE                             R13 R6
      148 MOVE                             R14 R11
      149 GETIMPORT                        R12 K27 [table.insert]
      151 CALL                             R12 2 0
      152 FORGLOOP                         R7 2 ; [-8]
      154 MOVE                             R5 R6
      155 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      157 CALL                             R2 2 0
      158 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K14 [{"requestId", "generationId", "success", "errorMessage"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETUPVAL                         R3 2
      110 GETTABLEKS                       R3 R3 K15 ["assign"]
      112 MOVE                             R4 R2
      113 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
      114 GETUPVAL                         R6 6
      115 GETTABLEKS                       R6 R6 K18 ["getTimestampMilliseconds"]
      117 CALL                             R6 0 1
      118 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
      120 CALL                             R3 2 1
      121 MOVE                             R1 R3
      122 GETUPVAL                         R2 0
      123 GETTABLEKS                       R2 R2 K19 ["logEvent"]
      125 GETUPVAL                         R3 7
      126 DUPTABLE                         R4 K21 [{"customFields", "standardizedFields"}]
      127 SETTABLEKS                       R1 R4 K2 ["customFields"]
      129 NEWTABLE                         R6 0 0
      131 GETUPVAL                         R7 8
      132 GETTABLEKS                       R7 R7 K22 ["StandardizedFields"]
      134 LOADNIL                          R8
      135 LOADNIL                          R9
      136 FORGPREP                         R7
      137 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      139 MOVE                             R13 R6
      140 MOVE                             R14 R11
      141 GETIMPORT                        R12 K25 [table.insert]
      143 CALL                             R12 2 0
      144 FORGLOOP                         R7 2 ; [-8]
      146 MOVE                             R5 R6
      147 SETTABLEKS                       R5 R4 K20 ["standardizedFields"]
      149 CALL                             R2 2 0
      150 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"success"}]
        7 GETTABLEKS                       R7 R0 K3 ["success"]
        9 SETTABLEKS                       R7 R6 K3 ["success"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K5 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K8 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K11 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K1 ["customFields"]
       46 CALL                             R1 3 0
       47 DUPTABLE                         R2 K19 [{"requestId", "generationId", "success", "errorMessage", "prompt", "hasImage", "timeToFirstRender", "dependencyVersion"}]
       48 GETTABLEKS                       R3 R0 K12 ["requestId"]
       50 SETTABLEKS                       R3 R2 K12 ["requestId"]
       52 GETTABLEKS                       R3 R0 K13 ["generationId"]
       54 SETTABLEKS                       R3 R2 K13 ["generationId"]
       56 GETTABLEKS                       R3 R0 K3 ["success"]
       58 SETTABLEKS                       R3 R2 K3 ["success"]
       60 GETTABLEKS                       R3 R0 K14 ["errorMessage"]
       62 SETTABLEKS                       R3 R2 K14 ["errorMessage"]
       64 GETTABLEKS                       R3 R0 K15 ["prompt"]
       66 SETTABLEKS                       R3 R2 K15 ["prompt"]
       68 GETTABLEKS                       R3 R0 K16 ["hasImage"]
       70 SETTABLEKS                       R3 R2 K16 ["hasImage"]
       72 GETTABLEKS                       R3 R0 K17 ["timeToFirstRender"]
       74 SETTABLEKS                       R3 R2 K17 ["timeToFirstRender"]
       76 GETTABLEKS                       R3 R0 K18 ["dependencyVersion"]
       78 SETTABLEKS                       R3 R2 K18 ["dependencyVersion"]
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R3 R3 K20 ["assign"]
       83 MOVE                             R4 R2
       84 DUPTABLE                         R5 K22 [{"timestampMilliseconds"}]
       85 GETUPVAL                         R6 5
       86 GETTABLEKS                       R6 R6 K23 ["getTimestampMilliseconds"]
       88 CALL                             R6 0 1
       89 SETTABLEKS                       R6 R5 K21 ["timestampMilliseconds"]
       91 CALL                             R3 2 1
       92 MOVE                             R1 R3
       93 GETUPVAL                         R2 0
       94 GETTABLEKS                       R2 R2 K24 ["logEvent"]
       96 GETUPVAL                         R3 6
       97 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
       98 SETTABLEKS                       R1 R4 K1 ["customFields"]
      100 NEWTABLE                         R6 0 0
      102 GETUPVAL                         R7 7
      103 GETTABLEKS                       R7 R7 K27 ["StandardizedFields"]
      105 LOADNIL                          R8
      106 LOADNIL                          R9
      107 FORGPREP                         R7
      108 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      110 MOVE                             R13 R6
      111 MOVE                             R14 R11
      112 GETIMPORT                        R12 K30 [table.insert]
      114 CALL                             R12 2 0
      115 FORGLOOP                         R7 2 ; [-8]
      117 MOVE                             R5 R6
      118 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      120 CALL                             R2 2 0
      121 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K7 ["getTimestampMilliseconds"]
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["customFields"]
       19 NEWTABLE                         R5 0 0
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K8 ["StandardizedFields"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K11 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-8]
       36 MOVE                             R4 R5
       37 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K7 ["getTimestampMilliseconds"]
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["customFields"]
       19 NEWTABLE                         R5 0 0
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K8 ["StandardizedFields"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K11 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-8]
       36 MOVE                             R4 R5
       37 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K12 ["logCounter"]
       43 GETUPVAL                         R2 5
       44 LOADN                            R3 1
       45 DUPTABLE                         R4 K13 [{"customFields"}]
       46 NEWTABLE                         R6 0 0
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K14 ["join"]
       51 MOVE                             R8 R6
       52 DUPTABLE                         R9 K16 [{"experimentationGroup"}]
       53 GETUPVAL                         R11 6
       54 NAMECALL                         R11 R11 K17 ["get"]
       56 CALL                             R11 1 1
       57 JUMPIFNOTEQKNIL                  R11 ; [+3]
       59 LOADNIL                          R10
       60 JUMP                             ; [+16]
       61 GETUPVAL                         R13 7
       62 GETTABLE                         R12 R11 R13
       63 JUMPIFNOTEQKNIL                  R12 ; [+3]
       65 GETTABLEKS                       R12 R11 K18 ["generatedExperimentVariantDistributionVariable"]
       67 JUMPIFNOTEQKNIL                  R12 ; [+3]
       69 LOADNIL                          R10
       70 JUMP                             ; [+6]
       71 FASTCALL1                        TOSTRING R12 ; [+3]
       72 MOVE                             R14 R12
       73 GETIMPORT                        R13 K20 [tostring]
       75 CALL                             R13 1 1
       76 MOVE                             R10 R13
       77 SETTABLEKS                       R10 R9 K15 ["experimentationGroup"]
       79 CALL                             R7 2 1
       80 MOVE                             R5 R7
       81 SETTABLEKS                       R5 R4 K1 ["customFields"]
       83 CALL                             R1 3 0
       84 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"dismissed"}]
        7 GETTABLEKS                       R7 R0 K3 ["dismissed"]
        9 SETTABLEKS                       R7 R6 K3 ["dismissed"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K5 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K8 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K11 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K1 ["customFields"]
       46 CALL                             R1 3 0
       47 DUPTABLE                         R2 K21 [{"requestId", "conversationId", "threadId", "assistantMode", "dismissed", "questionCount", "questionsJson", "answersJson", "customAnswerCount", "predefinedAnswerCount"}]
       48 GETTABLEKS                       R3 R0 K22 ["messageGuid"]
       50 SETTABLEKS                       R3 R2 K12 ["requestId"]
       52 GETTABLEKS                       R3 R0 K23 ["sessionId"]
       54 SETTABLEKS                       R3 R2 K13 ["conversationId"]
       56 GETTABLEKS                       R3 R0 K14 ["threadId"]
       58 SETTABLEKS                       R3 R2 K14 ["threadId"]
       60 GETTABLEKS                       R3 R0 K15 ["assistantMode"]
       62 SETTABLEKS                       R3 R2 K15 ["assistantMode"]
       64 GETTABLEKS                       R3 R0 K3 ["dismissed"]
       66 SETTABLEKS                       R3 R2 K3 ["dismissed"]
       68 GETTABLEKS                       R3 R0 K16 ["questionCount"]
       70 SETTABLEKS                       R3 R2 K16 ["questionCount"]
       72 GETTABLEKS                       R3 R0 K17 ["questionsJson"]
       74 SETTABLEKS                       R3 R2 K17 ["questionsJson"]
       76 GETTABLEKS                       R3 R0 K18 ["answersJson"]
       78 SETTABLEKS                       R3 R2 K18 ["answersJson"]
       80 GETTABLEKS                       R3 R0 K19 ["customAnswerCount"]
       82 SETTABLEKS                       R3 R2 K19 ["customAnswerCount"]
       84 GETTABLEKS                       R3 R0 K20 ["predefinedAnswerCount"]
       86 SETTABLEKS                       R3 R2 K20 ["predefinedAnswerCount"]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K24 ["assign"]
       91 MOVE                             R4 R2
       92 DUPTABLE                         R5 K26 [{"timestampMilliseconds"}]
       93 GETUPVAL                         R6 5
       94 GETTABLEKS                       R6 R6 K27 ["getTimestampMilliseconds"]
       96 CALL                             R6 0 1
       97 SETTABLEKS                       R6 R5 K25 ["timestampMilliseconds"]
       99 CALL                             R3 2 1
      100 MOVE                             R1 R3
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R2 R2 K28 ["logEvent"]
      104 GETUPVAL                         R3 6
      105 DUPTABLE                         R4 K30 [{"customFields", "standardizedFields"}]
      106 SETTABLEKS                       R1 R4 K1 ["customFields"]
      108 NEWTABLE                         R6 0 0
      110 GETUPVAL                         R7 7
      111 GETTABLEKS                       R7 R7 K31 ["StandardizedFields"]
      113 LOADNIL                          R8
      114 LOADNIL                          R9
      115 FORGPREP                         R7
      116 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      118 MOVE                             R13 R6
      119 MOVE                             R14 R11
      120 GETIMPORT                        R12 K34 [table.insert]
      122 CALL                             R12 2 0
      123 FORGLOOP                         R7 2 ; [-8]
      125 MOVE                             R5 R6
      126 SETTABLEKS                       R5 R4 K29 ["standardizedFields"]
      128 CALL                             R2 2 0
      129 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"decision"}]
        7 GETTABLEKS                       R7 R0 K3 ["decision"]
        9 SETTABLEKS                       R7 R6 K3 ["decision"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K5 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K8 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K11 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K1 ["customFields"]
       46 CALL                             R1 3 0
       47 DUPTABLE                         R2 K20 [{"requestId", "conversationId", "threadId", "assistantMode", "decision", "planTitle", "planSummary", "todoCount", "todosJson"}]
       48 GETTABLEKS                       R3 R0 K21 ["messageGuid"]
       50 SETTABLEKS                       R3 R2 K12 ["requestId"]
       52 GETTABLEKS                       R3 R0 K22 ["sessionId"]
       54 SETTABLEKS                       R3 R2 K13 ["conversationId"]
       56 GETTABLEKS                       R3 R0 K14 ["threadId"]
       58 SETTABLEKS                       R3 R2 K14 ["threadId"]
       60 GETTABLEKS                       R3 R0 K15 ["assistantMode"]
       62 SETTABLEKS                       R3 R2 K15 ["assistantMode"]
       64 GETTABLEKS                       R3 R0 K3 ["decision"]
       66 SETTABLEKS                       R3 R2 K3 ["decision"]
       68 GETTABLEKS                       R3 R0 K16 ["planTitle"]
       70 SETTABLEKS                       R3 R2 K16 ["planTitle"]
       72 GETTABLEKS                       R3 R0 K17 ["planSummary"]
       74 SETTABLEKS                       R3 R2 K17 ["planSummary"]
       76 GETTABLEKS                       R3 R0 K18 ["todoCount"]
       78 SETTABLEKS                       R3 R2 K18 ["todoCount"]
       80 GETTABLEKS                       R3 R0 K19 ["todosJson"]
       82 SETTABLEKS                       R3 R2 K19 ["todosJson"]
       84 GETUPVAL                         R3 2
       85 GETTABLEKS                       R3 R3 K23 ["assign"]
       87 MOVE                             R4 R2
       88 DUPTABLE                         R5 K25 [{"timestampMilliseconds"}]
       89 GETUPVAL                         R6 5
       90 GETTABLEKS                       R6 R6 K26 ["getTimestampMilliseconds"]
       92 CALL                             R6 0 1
       93 SETTABLEKS                       R6 R5 K24 ["timestampMilliseconds"]
       95 CALL                             R3 2 1
       96 MOVE                             R1 R3
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K27 ["logEvent"]
      100 GETUPVAL                         R3 6
      101 DUPTABLE                         R4 K29 [{"customFields", "standardizedFields"}]
      102 SETTABLEKS                       R1 R4 K1 ["customFields"]
      104 NEWTABLE                         R6 0 0
      106 GETUPVAL                         R7 7
      107 GETTABLEKS                       R7 R7 K30 ["StandardizedFields"]
      109 LOADNIL                          R8
      110 LOADNIL                          R9
      111 FORGPREP                         R7
      112 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      114 MOVE                             R13 R6
      115 MOVE                             R14 R11
      116 GETIMPORT                        R12 K33 [table.insert]
      118 CALL                             R12 2 0
      119 FORGLOOP                         R7 2 ; [-8]
      121 MOVE                             R5 R6
      122 SETTABLEKS                       R5 R4 K28 ["standardizedFields"]
      124 CALL                             R2 2 0
      125 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K11 [{"conversationId", "threadId", "creationReason", "sourceThreadId", "rootThreadId", "titleAtCreate", "namingSource"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["creationReason"]
       16 SETTABLEKS                       R6 R5 K6 ["creationReason"]
       18 GETTABLEKS                       R6 R0 K7 ["sourceThreadId"]
       20 SETTABLEKS                       R6 R5 K7 ["sourceThreadId"]
       22 GETTABLEKS                       R6 R0 K8 ["rootThreadId"]
       24 SETTABLEKS                       R6 R5 K8 ["rootThreadId"]
       26 GETTABLEKS                       R6 R0 K9 ["titleAtCreate"]
       28 SETTABLEKS                       R6 R5 K9 ["titleAtCreate"]
       30 GETTABLEKS                       R6 R0 K10 ["namingSource"]
       32 SETTABLEKS                       R6 R5 K10 ["namingSource"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K12 ["assign"]
       37 MOVE                             R7 R5
       38 DUPTABLE                         R8 K14 [{"timestampMilliseconds"}]
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R9 R9 K15 ["getTimestampMilliseconds"]
       42 CALL                             R9 0 1
       43 SETTABLEKS                       R9 R8 K13 ["timestampMilliseconds"]
       45 CALL                             R6 2 1
       46 MOVE                             R4 R6
       47 SETTABLEKS                       R4 R3 K1 ["customFields"]
       49 NEWTABLE                         R5 0 0
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K16 ["StandardizedFields"]
       54 LOADNIL                          R7
       55 LOADNIL                          R8
       56 FORGPREP                         R6
       57 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       59 MOVE                             R12 R5
       60 MOVE                             R13 R10
       61 GETIMPORT                        R11 K19 [table.insert]
       63 CALL                             R11 2 0
       64 FORGLOOP                         R6 2 ; [-8]
       66 MOVE                             R4 R5
       67 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       69 CALL                             R1 2 0
       70 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K9 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["oldTitle"]
       16 SETTABLEKS                       R6 R5 K6 ["oldTitle"]
       18 GETTABLEKS                       R6 R0 K7 ["newTitle"]
       20 SETTABLEKS                       R6 R5 K7 ["newTitle"]
       22 GETTABLEKS                       R6 R0 K8 ["namingSource"]
       24 SETTABLEKS                       R6 R5 K8 ["namingSource"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K10 ["assign"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K13 ["getTimestampMilliseconds"]
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 SETTABLEKS                       R4 R3 K1 ["customFields"]
       41 NEWTABLE                         R5 0 0
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K14 ["StandardizedFields"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       51 MOVE                             R12 R5
       52 MOVE                             R13 R10
       53 GETIMPORT                        R11 K17 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-8]
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K7 [{"conversationId", "threadId", "isPinned"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["isPinned"]
       16 SETTABLEKS                       R6 R5 K6 ["isPinned"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K8 ["assign"]
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K10 [{"timestampMilliseconds"}]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K11 ["getTimestampMilliseconds"]
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K9 ["timestampMilliseconds"]
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K1 ["customFields"]
       33 NEWTABLE                         R5 0 0
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K12 ["StandardizedFields"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       43 MOVE                             R12 R5
       44 MOVE                             R13 R10
       45 GETIMPORT                        R11 K15 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-8]
       50 MOVE                             R4 R5
       51 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K7 [{"conversationId", "threadId", "deleteReason"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["deleteReason"]
       16 SETTABLEKS                       R6 R5 K6 ["deleteReason"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K8 ["assign"]
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K10 [{"timestampMilliseconds"}]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K11 ["getTimestampMilliseconds"]
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K9 ["timestampMilliseconds"]
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K1 ["customFields"]
       33 NEWTABLE                         R5 0 0
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K12 ["StandardizedFields"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       43 MOVE                             R12 R5
       44 MOVE                             R13 R10
       45 GETIMPORT                        R11 K15 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-8]
       50 MOVE                             R4 R5
       51 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K9 [{"conversationId", "newThreadId", "sourceThreadId", "titleAtDuplicate", "upToMessageId"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["newThreadId"]
       12 SETTABLEKS                       R6 R5 K5 ["newThreadId"]
       14 GETTABLEKS                       R6 R0 K6 ["sourceThreadId"]
       16 SETTABLEKS                       R6 R5 K6 ["sourceThreadId"]
       18 GETTABLEKS                       R6 R0 K7 ["titleAtDuplicate"]
       20 SETTABLEKS                       R6 R5 K7 ["titleAtDuplicate"]
       22 GETTABLEKS                       R6 R0 K8 ["upToMessageId"]
       24 SETTABLEKS                       R6 R5 K8 ["upToMessageId"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K10 ["assign"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K13 ["getTimestampMilliseconds"]
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 SETTABLEKS                       R4 R3 K1 ["customFields"]
       41 NEWTABLE                         R5 0 0
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K14 ["StandardizedFields"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       51 MOVE                             R12 R5
       52 MOVE                             R13 R10
       53 GETIMPORT                        R11 K17 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-8]
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K6 [{"integrationId", "action"}]
        6 GETTABLEKS                       R6 R0 K4 ["integrationId"]
        8 SETTABLEKS                       R6 R5 K4 ["integrationId"]
       10 GETTABLEKS                       R6 R0 K5 ["action"]
       12 SETTABLEKS                       R6 R5 K5 ["action"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K7 ["assign"]
       17 MOVE                             R7 R5
       18 DUPTABLE                         R8 K9 [{"timestampMilliseconds"}]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K10 ["getTimestampMilliseconds"]
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K8 ["timestampMilliseconds"]
       25 CALL                             R6 2 1
       26 MOVE                             R4 R6
       27 SETTABLEKS                       R4 R3 K1 ["customFields"]
       29 NEWTABLE                         R5 0 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K11 ["StandardizedFields"]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       39 MOVE                             R12 R5
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K14 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-8]
       46 MOVE                             R4 R5
       47 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K8 [{"conversationId", "previousThreadId", "nextThreadId", "source"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["previousThreadId"]
       12 SETTABLEKS                       R6 R5 K5 ["previousThreadId"]
       14 GETTABLEKS                       R6 R0 K6 ["nextThreadId"]
       16 SETTABLEKS                       R6 R5 K6 ["nextThreadId"]
       18 GETTABLEKS                       R6 R0 K7 ["source"]
       20 SETTABLEKS                       R6 R5 K7 ["source"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K9 ["assign"]
       25 MOVE                             R7 R5
       26 DUPTABLE                         R8 K11 [{"timestampMilliseconds"}]
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K12 ["getTimestampMilliseconds"]
       30 CALL                             R9 0 1
       31 SETTABLEKS                       R9 R8 K10 ["timestampMilliseconds"]
       33 CALL                             R6 2 1
       34 MOVE                             R4 R6
       35 SETTABLEKS                       R4 R3 K1 ["customFields"]
       37 NEWTABLE                         R5 0 0
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K13 ["StandardizedFields"]
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       47 MOVE                             R12 R5
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K16 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R6 2 ; [-8]
       54 MOVE                             R4 R5
       55 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K10 ["logEvent"]
       47 GETUPVAL                         R2 5
       48 DUPTABLE                         R3 K12 [{"customFields", "standardizedFields"}]
       49 DUPTABLE                         R5 K15 [{"threadId", "messageCount"}]
       50 GETTABLEKS                       R6 R0 K13 ["threadId"]
       52 SETTABLEKS                       R6 R5 K13 ["threadId"]
       54 GETTABLEKS                       R6 R0 K14 ["messageCount"]
       56 SETTABLEKS                       R6 R5 K14 ["messageCount"]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K16 ["assign"]
       61 MOVE                             R7 R5
       62 DUPTABLE                         R8 K18 [{"timestampMilliseconds"}]
       63 GETUPVAL                         R9 6
       64 GETTABLEKS                       R9 R9 K19 ["getTimestampMilliseconds"]
       66 CALL                             R9 0 1
       67 SETTABLEKS                       R9 R8 K17 ["timestampMilliseconds"]
       69 CALL                             R6 2 1
       70 MOVE                             R4 R6
       71 SETTABLEKS                       R4 R3 K1 ["customFields"]
       73 NEWTABLE                         R5 0 0
       75 GETUPVAL                         R6 7
       76 GETTABLEKS                       R6 R6 K20 ["StandardizedFields"]
       78 LOADNIL                          R7
       79 LOADNIL                          R8
       80 FORGPREP                         R6
       81 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       83 MOVE                             R12 R5
       84 MOVE                             R13 R10
       85 GETIMPORT                        R11 K23 [table.insert]
       87 CALL                             R11 2 0
       88 FORGLOOP                         R6 2 ; [-8]
       90 MOVE                             R4 R5
       91 SETTABLEKS                       R4 R3 K11 ["standardizedFields"]
       93 CALL                             R1 2 0
       94 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K10 ["logEvent"]
       47 GETUPVAL                         R2 5
       48 DUPTABLE                         R3 K12 [{"customFields", "standardizedFields"}]
       49 DUPTABLE                         R5 K16 [{"threadId", "errorMessage", "messageCount"}]
       50 GETTABLEKS                       R6 R0 K13 ["threadId"]
       52 SETTABLEKS                       R6 R5 K13 ["threadId"]
       54 GETTABLEKS                       R6 R0 K14 ["errorMessage"]
       56 SETTABLEKS                       R6 R5 K14 ["errorMessage"]
       58 GETTABLEKS                       R6 R0 K15 ["messageCount"]
       60 SETTABLEKS                       R6 R5 K15 ["messageCount"]
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K17 ["assign"]
       65 MOVE                             R7 R5
       66 DUPTABLE                         R8 K19 [{"timestampMilliseconds"}]
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R9 R9 K20 ["getTimestampMilliseconds"]
       70 CALL                             R9 0 1
       71 SETTABLEKS                       R9 R8 K18 ["timestampMilliseconds"]
       73 CALL                             R6 2 1
       74 MOVE                             R4 R6
       75 SETTABLEKS                       R4 R3 K1 ["customFields"]
       77 NEWTABLE                         R5 0 0
       79 GETUPVAL                         R6 7
       80 GETTABLEKS                       R6 R6 K21 ["StandardizedFields"]
       82 LOADNIL                          R7
       83 LOADNIL                          R8
       84 FORGPREP                         R6
       85 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       87 MOVE                             R12 R5
       88 MOVE                             R13 R10
       89 GETIMPORT                        R11 K24 [table.insert]
       91 CALL                             R11 2 0
       92 FORGLOOP                         R6 2 ; [-8]
       94 MOVE                             R4 R5
       95 SETTABLEKS                       R4 R3 K11 ["standardizedFields"]
       97 CALL                             R1 2 0
       98 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["latencyMs"]
        6 DUPTABLE                         R4 K3 [{"customFields"}]
        7 DUPTABLE                         R6 K7 [{"operation", "scope", "success"}]
        8 GETTABLEKS                       R7 R0 K4 ["operation"]
       10 SETTABLEKS                       R7 R6 K4 ["operation"]
       12 GETTABLEKS                       R7 R0 K5 ["scope"]
       14 SETTABLEKS                       R7 R6 K5 ["scope"]
       16 GETTABLEKS                       R7 R0 K6 ["success"]
       18 SETTABLEKS                       R7 R6 K6 ["success"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K8 ["join"]
       23 MOVE                             R8 R6
       24 DUPTABLE                         R9 K10 [{"experimentationGroup"}]
       25 GETUPVAL                         R11 3
       26 NAMECALL                         R11 R11 K11 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 4
       34 GETTABLE                         R12 R11 R13
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 GETTABLEKS                       R12 R11 K12 ["generatedExperimentVariantDistributionVariable"]
       39 JUMPIFNOTEQKNIL                  R12 ; [+3]
       41 LOADNIL                          R10
       42 JUMP                             ; [+6]
       43 FASTCALL1                        TOSTRING R12 ; [+3]
       44 MOVE                             R14 R12
       45 GETIMPORT                        R13 K14 [tostring]
       47 CALL                             R13 1 1
       48 MOVE                             R10 R13
       49 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 CALL                             R1 3 0
       56 GETTABLEKS                       R2 R0 K6 ["success"]
       58 JUMPIFNOT                        R2 ; [+2]
       59 GETUPVAL                         R1 5
       60 JUMP                             ; [+1]
       61 GETUPVAL                         R1 6
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K15 ["logCounter"]
       65 MOVE                             R3 R1
       66 LOADN                            R4 1
       67 DUPTABLE                         R5 K3 [{"customFields"}]
       68 DUPTABLE                         R7 K16 [{"operation", "scope"}]
       69 GETTABLEKS                       R8 R0 K4 ["operation"]
       71 SETTABLEKS                       R8 R7 K4 ["operation"]
       73 GETTABLEKS                       R8 R0 K5 ["scope"]
       75 SETTABLEKS                       R8 R7 K5 ["scope"]
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K8 ["join"]
       80 MOVE                             R9 R7
       81 DUPTABLE                         R10 K10 [{"experimentationGroup"}]
       82 GETUPVAL                         R12 3
       83 NAMECALL                         R12 R12 K11 ["get"]
       85 CALL                             R12 1 1
       86 JUMPIFNOTEQKNIL                  R12 ; [+3]
       88 LOADNIL                          R11
       89 JUMP                             ; [+16]
       90 GETUPVAL                         R14 4
       91 GETTABLE                         R13 R12 R14
       92 JUMPIFNOTEQKNIL                  R13 ; [+3]
       94 GETTABLEKS                       R13 R12 K12 ["generatedExperimentVariantDistributionVariable"]
       96 JUMPIFNOTEQKNIL                  R13 ; [+3]
       98 LOADNIL                          R11
       99 JUMP                             ; [+6]
      100 FASTCALL1                        TOSTRING R13 ; [+3]
      101 MOVE                             R15 R13
      102 GETIMPORT                        R14 K14 [tostring]
      104 CALL                             R14 1 1
      105 MOVE                             R11 R14
      106 SETTABLEKS                       R11 R10 K9 ["experimentationGroup"]
      108 CALL                             R8 2 1
      109 MOVE                             R6 R8
      110 SETTABLEKS                       R6 R5 K2 ["customFields"]
      112 CALL                             R2 3 0
      113 RETURN                           R0 0

PROTO_59:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R2 K0 [PROTO_24]
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 DUPCLOSURE                       R3 K1 [PROTO_25]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U8
       24 DUPCLOSURE                       R4 K2 [PROTO_26]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 NEWCLOSURE                       R5 P4
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          VAL R0
       40 NEWCLOSURE                       R6 P5
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R0
       50 DUPCLOSURE                       R7 K3 [PROTO_29]
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U15
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 DUPCLOSURE                       R8 K4 [PROTO_30]
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U16
       59 NEWCLOSURE                       R9 P8
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U17
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          VAL R0
       66 DUPCLOSURE                       R10 K5 [PROTO_32]
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U18
       71 CAPTURE                          UPVAL U8
       72 DUPCLOSURE                       R11 K6 [PROTO_33]
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U19
       76 CAPTURE                          UPVAL U20
       77 CAPTURE                          UPVAL U21
       78 CAPTURE                          UPVAL U22
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U23
       81 CAPTURE                          UPVAL U8
       82 DUPCLOSURE                       R12 K7 [PROTO_34]
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U19
       86 CAPTURE                          UPVAL U24
       87 CAPTURE                          UPVAL U25
       88 CAPTURE                          UPVAL U0
       89 CAPTURE                          UPVAL U26
       90 CAPTURE                          UPVAL U8
       91 DUPCLOSURE                       R13 K8 [PROTO_35]
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U27
       96 CAPTURE                          UPVAL U8
       97 DUPCLOSURE                       R14 K9 [PROTO_36]
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U28
      102 CAPTURE                          UPVAL U8
      103 DUPCLOSURE                       R15 K10 [PROTO_37]
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          UPVAL U29
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          UPVAL U30
      111 CAPTURE                          UPVAL U8
      112 DUPCLOSURE                       R16 K11 [PROTO_38]
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          UPVAL U0
      116 CAPTURE                          UPVAL U31
      117 CAPTURE                          UPVAL U8
      118 DUPCLOSURE                       R17 K12 [PROTO_39]
      119 CAPTURE                          UPVAL U0
      120 CAPTURE                          UPVAL U32
      121 CAPTURE                          UPVAL U2
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          UPVAL U4
      124 DUPCLOSURE                       R18 K13 [PROTO_40]
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U33
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          UPVAL U34
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          UPVAL U35
      133 CAPTURE                          UPVAL U8
      134 DUPCLOSURE                       R19 K14 [PROTO_41]
      135 CAPTURE                          UPVAL U0
      136 CAPTURE                          UPVAL U36
      137 CAPTURE                          UPVAL U2
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          UPVAL U37
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          UPVAL U38
      143 CAPTURE                          UPVAL U8
      144 DUPCLOSURE                       R20 K15 [PROTO_42]
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U39
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          UPVAL U40
      151 CAPTURE                          UPVAL U6
      152 CAPTURE                          UPVAL U41
      153 CAPTURE                          UPVAL U8
      154 DUPCLOSURE                       R21 K16 [PROTO_43]
      155 CAPTURE                          UPVAL U0
      156 CAPTURE                          UPVAL U42
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          UPVAL U43
      162 CAPTURE                          UPVAL U8
      163 DUPCLOSURE                       R22 K17 [PROTO_44]
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          UPVAL U44
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          UPVAL U8
      169 DUPCLOSURE                       R23 K18 [PROTO_45]
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          UPVAL U45
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          UPVAL U46
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          UPVAL U4
      178 DUPCLOSURE                       R24 K19 [PROTO_46]
      179 CAPTURE                          UPVAL U0
      180 CAPTURE                          UPVAL U47
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          UPVAL U3
      183 CAPTURE                          UPVAL U4
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          UPVAL U48
      186 CAPTURE                          UPVAL U8
      187 DUPCLOSURE                       R25 K20 [PROTO_47]
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          UPVAL U49
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          UPVAL U3
      192 CAPTURE                          UPVAL U4
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          UPVAL U50
      195 CAPTURE                          UPVAL U8
      196 DUPCLOSURE                       R26 K21 [PROTO_48]
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          UPVAL U51
      199 DUPCLOSURE                       R27 K22 [PROTO_49]
      200 CAPTURE                          UPVAL U0
      201 CAPTURE                          UPVAL U52
      202 CAPTURE                          UPVAL U2
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          UPVAL U8
      205 DUPCLOSURE                       R28 K23 [PROTO_50]
      206 CAPTURE                          UPVAL U0
      207 CAPTURE                          UPVAL U53
      208 CAPTURE                          UPVAL U2
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          UPVAL U8
      211 DUPCLOSURE                       R29 K24 [PROTO_51]
      212 CAPTURE                          UPVAL U0
      213 CAPTURE                          UPVAL U54
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          UPVAL U6
      216 CAPTURE                          UPVAL U8
      217 DUPCLOSURE                       R30 K25 [PROTO_52]
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U55
      220 CAPTURE                          UPVAL U2
      221 CAPTURE                          UPVAL U6
      222 CAPTURE                          UPVAL U8
      223 DUPCLOSURE                       R31 K26 [PROTO_53]
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          UPVAL U56
      226 CAPTURE                          UPVAL U2
      227 CAPTURE                          UPVAL U6
      228 CAPTURE                          UPVAL U8
      229 DUPCLOSURE                       R32 K27 [PROTO_54]
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U57
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U6
      234 CAPTURE                          UPVAL U8
      235 DUPCLOSURE                       R33 K28 [PROTO_55]
      236 CAPTURE                          UPVAL U0
      237 CAPTURE                          UPVAL U58
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          UPVAL U6
      240 CAPTURE                          UPVAL U8
      241 DUPCLOSURE                       R34 K29 [PROTO_56]
      242 CAPTURE                          UPVAL U0
      243 CAPTURE                          UPVAL U59
      244 CAPTURE                          UPVAL U2
      245 CAPTURE                          UPVAL U3
      246 CAPTURE                          UPVAL U4
      247 CAPTURE                          UPVAL U60
      248 CAPTURE                          UPVAL U6
      249 CAPTURE                          UPVAL U8
      250 DUPCLOSURE                       R35 K30 [PROTO_57]
      251 CAPTURE                          UPVAL U0
      252 CAPTURE                          UPVAL U61
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          UPVAL U4
      256 CAPTURE                          UPVAL U62
      257 CAPTURE                          UPVAL U6
      258 CAPTURE                          UPVAL U8
      259 DUPCLOSURE                       R36 K31 [PROTO_58]
      260 CAPTURE                          UPVAL U0
      261 CAPTURE                          UPVAL U63
      262 CAPTURE                          UPVAL U2
      263 CAPTURE                          UPVAL U3
      264 CAPTURE                          UPVAL U4
      265 CAPTURE                          UPVAL U64
      266 CAPTURE                          UPVAL U65
      267 NEWTABLE                         R37 64 0
      269 SETTABLEKS                       R1 R37 K32 ["logUserMessageSent"]
      271 SETTABLEKS                       R2 R37 K33 ["logAssistantMessageSent"]
      273 SETTABLEKS                       R3 R37 K34 ["logApiKeyAdded"]
      275 SETTABLEKS                       R4 R37 K35 ["logErrorEvent"]
      277 SETTABLEKS                       R16 R37 K36 ["logExternalAPIError"]
      279 SETTABLEKS                       R5 R37 K37 ["logThumbsUp"]
      281 SETTABLEKS                       R6 R37 K38 ["logThumbsDown"]
      283 SETTABLEKS                       R7 R37 K39 ["logInitialResponseLatency"]
      285 SETTABLEKS                       R8 R37 K40 ["logMarkdownError"]
      287 SETTABLEKS                       R9 R37 K41 ["logRetry"]
      289 SETTABLEKS                       R10 R37 K42 ["logStopGeneration"]
      291 SETTABLEKS                       R11 R37 K43 ["logToolStarted"]
      293 SETTABLEKS                       R12 R37 K44 ["logToolEnded"]
      295 SETTABLEKS                       R13 R37 K45 ["logToolConfirmationShown"]
      297 SETTABLEKS                       R14 R37 K46 ["logToolConfirmationResult"]
      299 SETTABLEKS                       R15 R37 K47 ["logRequestJourney"]
      301 SETTABLEKS                       R17 R37 K48 ["logMeshGenActivated"]
      303 SETTABLEKS                       R18 R37 K49 ["logMeshGenCompleted"]
      305 SETTABLEKS                       R19 R37 K50 ["logMeshGenPublishedAssets"]
      307 SETTABLEKS                       R20 R37 K51 ["logMeshGenMeshInserted"]
      309 SETTABLEKS                       R21 R37 K52 ["logPrimitiveGen"]
      311 SETTABLEKS                       R22 R37 K53 ["logIntegrationEvent"]
      313 SETTABLEKS                       R23 R37 K54 ["logExternalServerConnected"]
      315 SETTABLEKS                       R24 R37 K55 ["logQuestionAnswerCompleted"]
      317 SETTABLEKS                       R25 R37 K56 ["logPlanDecision"]
      319 SETTABLEKS                       R32 R37 K57 ["logQuickSetupToggled"]
      321 SETTABLEKS                       R26 R37 K58 ["logMaterialGeneratorSavedMaterial"]
      323 SETTABLEKS                       R34 R37 K59 ["logCompactionSuccess"]
      325 SETTABLEKS                       R35 R37 K60 ["logCompactionFallback"]
      327 GETUPVAL                         R39 5
      328 CALL                             R39 0 1
      329 JUMPIFNOT                        R39 ; [+2]
      330 MOVE                             R38 R27
      331 JUMP                             ; [+1]
      332 LOADNIL                          R38
      333 SETTABLEKS                       R38 R37 K61 ["logThreadCreated"]
      335 GETUPVAL                         R39 5
      336 CALL                             R39 0 1
      337 JUMPIFNOT                        R39 ; [+2]
      338 MOVE                             R38 R28
      339 JUMP                             ; [+1]
      340 LOADNIL                          R38
      341 SETTABLEKS                       R38 R37 K62 ["logThreadRenamed"]
      343 GETUPVAL                         R39 5
      344 CALL                             R39 0 1
      345 JUMPIFNOT                        R39 ; [+2]
      346 MOVE                             R38 R29
      347 JUMP                             ; [+1]
      348 LOADNIL                          R38
      349 SETTABLEKS                       R38 R37 K63 ["logThreadPinnedChanged"]
      351 GETUPVAL                         R39 5
      352 CALL                             R39 0 1
      353 JUMPIFNOT                        R39 ; [+2]
      354 MOVE                             R38 R30
      355 JUMP                             ; [+1]
      356 LOADNIL                          R38
      357 SETTABLEKS                       R38 R37 K64 ["logThreadDeleted"]
      359 GETUPVAL                         R39 5
      360 CALL                             R39 0 1
      361 JUMPIFNOT                        R39 ; [+2]
      362 MOVE                             R38 R31
      363 JUMP                             ; [+1]
      364 LOADNIL                          R38
      365 SETTABLEKS                       R38 R37 K65 ["logThreadDuplicated"]
      367 GETUPVAL                         R39 5
      368 CALL                             R39 0 1
      369 JUMPIFNOT                        R39 ; [+2]
      370 MOVE                             R38 R33
      371 JUMP                             ; [+1]
      372 LOADNIL                          R38
      373 SETTABLEKS                       R38 R37 K66 ["logThreadSwitched"]
      375 GETUPVAL                         R39 5
      376 CALL                             R39 0 1
      377 JUMPIFNOT                        R39 ; [+2]
      378 MOVE                             R38 R36
      379 JUMP                             ; [+1]
      380 LOADNIL                          R38
      381 SETTABLEKS                       R38 R37 K67 ["logPersistenceOperation"]
      383 GETUPVAL                         R38 66
      384 SETTABLEKS                       R38 R37 K68 ["getMessageGuid"]
      386 GETUPVAL                         R38 67
      387 SETTABLEKS                       R38 R37 K69 ["createMessageGuid"]
      389 RETURN                           R37 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 64 0
        5 GETTABLEKS                       R3 R1 K0 ["logUserMessageSent"]
        7 SETTABLEKS                       R3 R2 K0 ["logUserMessageSent"]
        9 GETTABLEKS                       R3 R1 K1 ["logAssistantMessageSent"]
       11 SETTABLEKS                       R3 R2 K1 ["logAssistantMessageSent"]
       13 GETTABLEKS                       R3 R1 K2 ["logApiKeyAdded"]
       15 SETTABLEKS                       R3 R2 K2 ["logApiKeyAdded"]
       17 GETTABLEKS                       R3 R1 K3 ["logErrorEvent"]
       19 SETTABLEKS                       R3 R2 K3 ["logErrorEvent"]
       21 GETTABLEKS                       R3 R1 K4 ["logExternalAPIError"]
       23 SETTABLEKS                       R3 R2 K4 ["logExternalAPIError"]
       25 GETTABLEKS                       R3 R1 K5 ["logThumbsUp"]
       27 SETTABLEKS                       R3 R2 K5 ["logThumbsUp"]
       29 GETTABLEKS                       R3 R1 K6 ["logThumbsDown"]
       31 SETTABLEKS                       R3 R2 K6 ["logThumbsDown"]
       33 GETTABLEKS                       R3 R1 K7 ["logInitialResponseLatency"]
       35 SETTABLEKS                       R3 R2 K7 ["logInitialResponseLatency"]
       37 GETTABLEKS                       R3 R1 K8 ["logMarkdownError"]
       39 SETTABLEKS                       R3 R2 K8 ["logMarkdownError"]
       41 GETTABLEKS                       R3 R1 K9 ["logRetry"]
       43 SETTABLEKS                       R3 R2 K9 ["logRetry"]
       45 GETTABLEKS                       R3 R1 K10 ["logStopGeneration"]
       47 SETTABLEKS                       R3 R2 K10 ["logStopGeneration"]
       49 GETTABLEKS                       R3 R1 K11 ["logToolStarted"]
       51 SETTABLEKS                       R3 R2 K11 ["logToolStarted"]
       53 GETTABLEKS                       R3 R1 K12 ["logToolEnded"]
       55 SETTABLEKS                       R3 R2 K12 ["logToolEnded"]
       57 GETTABLEKS                       R3 R1 K13 ["logToolConfirmationShown"]
       59 SETTABLEKS                       R3 R2 K13 ["logToolConfirmationShown"]
       61 GETTABLEKS                       R3 R1 K14 ["logToolConfirmationResult"]
       63 SETTABLEKS                       R3 R2 K14 ["logToolConfirmationResult"]
       65 GETTABLEKS                       R3 R1 K15 ["logRequestJourney"]
       67 SETTABLEKS                       R3 R2 K15 ["logRequestJourney"]
       69 GETTABLEKS                       R3 R1 K16 ["logMeshGenActivated"]
       71 SETTABLEKS                       R3 R2 K16 ["logMeshGenActivated"]
       73 GETTABLEKS                       R3 R1 K17 ["logMeshGenCompleted"]
       75 SETTABLEKS                       R3 R2 K17 ["logMeshGenCompleted"]
       77 GETTABLEKS                       R3 R1 K18 ["logMeshGenPublishedAssets"]
       79 SETTABLEKS                       R3 R2 K18 ["logMeshGenPublishedAssets"]
       81 GETTABLEKS                       R3 R1 K19 ["logMeshGenMeshInserted"]
       83 SETTABLEKS                       R3 R2 K19 ["logMeshGenMeshInserted"]
       85 GETTABLEKS                       R3 R1 K20 ["logPrimitiveGen"]
       87 SETTABLEKS                       R3 R2 K20 ["logPrimitiveGen"]
       89 GETTABLEKS                       R3 R1 K21 ["logIntegrationEvent"]
       91 SETTABLEKS                       R3 R2 K21 ["logIntegrationEvent"]
       93 GETTABLEKS                       R3 R1 K22 ["logExternalServerConnected"]
       95 SETTABLEKS                       R3 R2 K22 ["logExternalServerConnected"]
       97 GETTABLEKS                       R3 R1 K23 ["logQuestionAnswerCompleted"]
       99 SETTABLEKS                       R3 R2 K23 ["logQuestionAnswerCompleted"]
      101 GETTABLEKS                       R3 R1 K24 ["logPlanDecision"]
      103 SETTABLEKS                       R3 R2 K24 ["logPlanDecision"]
      105 GETTABLEKS                       R3 R1 K25 ["logQuickSetupToggled"]
      107 SETTABLEKS                       R3 R2 K25 ["logQuickSetupToggled"]
      109 GETTABLEKS                       R3 R1 K26 ["logMaterialGeneratorSavedMaterial"]
      111 SETTABLEKS                       R3 R2 K26 ["logMaterialGeneratorSavedMaterial"]
      113 GETTABLEKS                       R3 R1 K27 ["logCompactionSuccess"]
      115 SETTABLEKS                       R3 R2 K27 ["logCompactionSuccess"]
      117 GETTABLEKS                       R3 R1 K28 ["logCompactionFallback"]
      119 SETTABLEKS                       R3 R2 K28 ["logCompactionFallback"]
      121 GETUPVAL                         R4 1
      122 CALL                             R4 0 1
      123 JUMPIFNOT                        R4 ; [+3]
      124 GETTABLEKS                       R3 R1 K29 ["logThreadCreated"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R3
      128 SETTABLEKS                       R3 R2 K29 ["logThreadCreated"]
      130 GETUPVAL                         R4 1
      131 CALL                             R4 0 1
      132 JUMPIFNOT                        R4 ; [+3]
      133 GETTABLEKS                       R3 R1 K30 ["logThreadRenamed"]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R3
      137 SETTABLEKS                       R3 R2 K30 ["logThreadRenamed"]
      139 GETUPVAL                         R4 1
      140 CALL                             R4 0 1
      141 JUMPIFNOT                        R4 ; [+3]
      142 GETTABLEKS                       R3 R1 K31 ["logThreadPinnedChanged"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R3
      146 SETTABLEKS                       R3 R2 K31 ["logThreadPinnedChanged"]
      148 GETUPVAL                         R4 1
      149 CALL                             R4 0 1
      150 JUMPIFNOT                        R4 ; [+3]
      151 GETTABLEKS                       R3 R1 K32 ["logThreadDeleted"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R3
      155 SETTABLEKS                       R3 R2 K32 ["logThreadDeleted"]
      157 GETUPVAL                         R4 1
      158 CALL                             R4 0 1
      159 JUMPIFNOT                        R4 ; [+3]
      160 GETTABLEKS                       R3 R1 K33 ["logThreadDuplicated"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R3
      164 SETTABLEKS                       R3 R2 K33 ["logThreadDuplicated"]
      166 GETUPVAL                         R4 1
      167 CALL                             R4 0 1
      168 JUMPIFNOT                        R4 ; [+3]
      169 GETTABLEKS                       R3 R1 K34 ["logThreadSwitched"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R3
      173 SETTABLEKS                       R3 R2 K34 ["logThreadSwitched"]
      175 GETUPVAL                         R4 1
      176 CALL                             R4 0 1
      177 JUMPIFNOT                        R4 ; [+3]
      178 GETTABLEKS                       R3 R1 K35 ["logPersistenceOperation"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R3
      182 SETTABLEKS                       R3 R2 K35 ["logPersistenceOperation"]
      184 GETTABLEKS                       R3 R1 K36 ["getMessageGuid"]
      186 SETTABLEKS                       R3 R2 K36 ["getMessageGuid"]
      188 GETTABLEKS                       R3 R1 K37 ["createMessageGuid"]
      190 SETTABLEKS                       R3 R2 K37 ["createMessageGuid"]
      192 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["IXPService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["AssistantUI"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Util"]
       39 GETTABLEKS                       R6 R6 K16 ["ExperimentCache"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["Telemetry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Packages"]
       55 GETTABLEKS                       R8 R8 K18 ["TelemetryProtocol"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R3 K19 ["Utils"]
       60 GETTABLEKS                       R8 R8 K20 ["Time"]
       62 GETTABLEKS                       R9 R3 K19 ["Utils"]
       64 GETTABLEKS                       R9 R9 K21 ["ImageAttachmentUtils"]
       66 GETTABLEKS                       R10 R3 K19 ["Utils"]
       68 GETTABLEKS                       R10 R10 K22 ["truncateUtf8Safe"]
       70 GETTABLEKS                       R11 R3 K23 ["Flags"]
       72 GETTABLEKS                       R11 R11 K24 ["Shared"]
       74 GETTABLEKS                       R11 R11 K25 ["FFlagEnhanceSubagentSkillTelemetry"]
       76 DUPCLOSURE                       R12 K26 [PROTO_1]
       77 CAPTURE                          VAL R1
       78 DUPCLOSURE                       R13 K27 [PROTO_2]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R14 K28 [PROTO_3]
       82 DUPCLOSURE                       R15 K29 [PROTO_4]
       83 DUPCLOSURE                       R16 K30 [PROTO_5]
       84 DUPCLOSURE                       R17 K31 [PROTO_6]
       85 DUPCLOSURE                       R18 K32 [PROTO_7]
       86 DUPCLOSURE                       R19 K33 [PROTO_8]
       87 DUPCLOSURE                       R20 K34 [PROTO_9]
       88 CAPTURE                          VAL R18
       89 DUPCLOSURE                       R21 K35 [PROTO_11]
       90 CAPTURE                          VAL R20
       91 CAPTURE                          VAL R1
       92 DUPCLOSURE                       R22 K36 [PROTO_12]
       93 DUPCLOSURE                       R23 K37 [PROTO_13]
       94 DUPCLOSURE                       R24 K38 [PROTO_14]
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R1
       97 GETIMPORT                        R25 K10 [require]
       99 GETTABLEKS                       R26 R0 K14 ["Src"]
      101 GETTABLEKS                       R26 R26 K23 ["Flags"]
      103 GETTABLEKS                       R26 R26 K39 ["FFlagAssistantToolCallPayloadTelemetry"]
      105 CALL                             R25 1 1
      106 GETIMPORT                        R26 K10 [require]
      108 GETTABLEKS                       R27 R0 K14 ["Src"]
      110 GETTABLEKS                       R27 R27 K23 ["Flags"]
      112 GETTABLEKS                       R27 R27 K40 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      114 CALL                             R26 1 1
      115 GETIMPORT                        R27 K10 [require]
      117 GETTABLEKS                       R28 R0 K14 ["Src"]
      119 GETTABLEKS                       R28 R28 K23 ["Flags"]
      121 GETTABLEKS                       R28 R28 K41 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K10 [require]
      126 GETTABLEKS                       R29 R0 K14 ["Src"]
      128 GETTABLEKS                       R29 R29 K23 ["Flags"]
      130 GETTABLEKS                       R29 R29 K42 ["FStringAssistantGroupNameKey"]
      132 CALL                             R28 1 1
      133 GETIMPORT                        R29 K10 [require]
      135 GETTABLEKS                       R30 R0 K14 ["Src"]
      137 GETTABLEKS                       R30 R30 K23 ["Flags"]
      139 GETTABLEKS                       R30 R30 K43 ["FStringNewAssistantExperimentLayer"]
      141 CALL                             R29 1 1
      142 GETTABLEKS                       R30 R3 K23 ["Flags"]
      144 GETTABLEKS                       R30 R30 K24 ["Shared"]
      146 GETTABLEKS                       R30 R30 K44 ["FFlagAssistantMultipleChatPersistence"]
      148 NEWTABLE                         R31 0 0
      150 DUPCLOSURE                       R32 K45 [PROTO_15]
      151 CAPTURE                          VAL R7
      152 DUPCLOSURE                       R33 K46 [PROTO_16]
      153 DUPCLOSURE                       R34 K47 [PROTO_17]
      154 CAPTURE                          VAL R6
      155 GETIMPORT                        R35 K50 [table.freeze]
      157 NEWTABLE                         R37 0 0
      159 GETTABLEKS                       R40 R6 K51 ["Backends"]
      161 GETTABLEKS                       R40 R40 K52 ["EventIngest"]
      163 FASTCALL2                        TABLE_INSERT R37 R40 ; [+4]
      165 MOVE                             R39 R37
      166 GETIMPORT                        R38 K54 [table.insert]
      168 CALL                             R38 2 0
      169 GETTABLEKS                       R40 R6 K51 ["Backends"]
      171 GETTABLEKS                       R40 R40 K55 ["Points"]
      173 FASTCALL2                        TABLE_INSERT R37 R40 ; [+4]
      175 MOVE                             R39 R37
      176 GETIMPORT                        R38 K54 [table.insert]
      178 CALL                             R38 2 0
      179 MOVE                             R36 R37
      180 CALL                             R35 1 1
      181 GETIMPORT                        R36 K50 [table.freeze]
      183 DUPTABLE                         R37 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      184 LOADK                            R38 K61 ["StudioAssistantUserMessageSent"]
      185 SETTABLEKS                       R38 R37 K56 ["eventName"]
      187 NEWTABLE                         R38 0 1
      189 GETTABLEKS                       R39 R6 K51 ["Backends"]
      191 GETTABLEKS                       R39 R39 K62 ["RobloxTelemetryCounter"]
      193 SETLIST                          R38 R39 1 [1]
      195 SETTABLEKS                       R38 R37 K57 ["backends"]
      197 LOADK                            R38 K63 ["Incrementing count of user messages sent."]
      198 SETTABLEKS                       R38 R37 K58 ["description"]
      200 NEWTABLE                         R38 0 3
      202 LOADN                            R39 25
      203 LOADN                            R40 7
      204 LOADN                            R41 21
      205 SETLIST                          R38 R39 3 [1]
      207 SETTABLEKS                       R38 R37 K59 ["lastUpdated"]
      209 CALL                             R36 1 1
      210 GETIMPORT                        R37 K50 [table.freeze]
      212 DUPTABLE                         R38 K65 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      213 LOADK                            R39 K66 ["CAPMessageSent"]
      214 SETTABLEKS                       R39 R38 K56 ["eventName"]
      216 SETTABLEKS                       R35 R38 K57 ["backends"]
      218 LOADK                            R39 K67 ["User message sent event with request ID."]
      219 SETTABLEKS                       R39 R38 K58 ["description"]
      221 MOVE                             R39 R27
      222 CALL                             R39 0 1
      223 SETTABLEKS                       R39 R38 K64 ["throttlingPercentage"]
      225 NEWTABLE                         R39 0 3
      227 LOADN                            R40 25
      228 LOADN                            R41 7
      229 LOADN                            R42 25
      230 SETLIST                          R39 R40 3 [1]
      232 SETTABLEKS                       R39 R38 K59 ["lastUpdated"]
      234 CALL                             R37 1 1
      235 GETIMPORT                        R38 K50 [table.freeze]
      237 DUPTABLE                         R39 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      238 LOADK                            R40 K68 ["CAPAPIKeyAdded"]
      239 SETTABLEKS                       R40 R39 K56 ["eventName"]
      241 SETTABLEKS                       R35 R39 K57 ["backends"]
      243 LOADK                            R40 K69 ["User added an API key for an LLM provider."]
      244 SETTABLEKS                       R40 R39 K58 ["description"]
      246 NEWTABLE                         R40 0 3
      248 LOADN                            R41 25
      249 LOADN                            R42 11
      250 LOADN                            R43 4
      251 SETLIST                          R40 R41 3 [1]
      253 SETTABLEKS                       R40 R39 K59 ["lastUpdated"]
      255 CALL                             R38 1 1
      256 GETIMPORT                        R39 K50 [table.freeze]
      258 DUPTABLE                         R40 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      259 LOADK                            R41 K70 ["CAPUserFeedbackThumbsUp"]
      260 SETTABLEKS                       R41 R40 K56 ["eventName"]
      262 SETTABLEKS                       R35 R40 K57 ["backends"]
      264 LOADK                            R41 K71 ["User feedback thumbs up event with message context."]
      265 SETTABLEKS                       R41 R40 K58 ["description"]
      267 NEWTABLE                         R41 0 3
      269 LOADN                            R42 25
      270 LOADN                            R43 7
      271 LOADN                            R44 25
      272 SETLIST                          R41 R42 3 [1]
      274 SETTABLEKS                       R41 R40 K59 ["lastUpdated"]
      276 CALL                             R39 1 1
      277 GETIMPORT                        R40 K50 [table.freeze]
      279 DUPTABLE                         R41 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      280 LOADK                            R42 K72 ["CAPUserFeedbackThumbsDown"]
      281 SETTABLEKS                       R42 R41 K56 ["eventName"]
      283 SETTABLEKS                       R35 R41 K57 ["backends"]
      285 LOADK                            R42 K73 ["User feedback thumbs down event with message context."]
      286 SETTABLEKS                       R42 R41 K58 ["description"]
      288 NEWTABLE                         R42 0 3
      290 LOADN                            R43 25
      291 LOADN                            R44 7
      292 LOADN                            R45 25
      293 SETLIST                          R42 R43 3 [1]
      295 SETTABLEKS                       R42 R41 K59 ["lastUpdated"]
      297 CALL                             R40 1 1
      298 GETIMPORT                        R41 K50 [table.freeze]
      300 DUPTABLE                         R42 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      301 LOADK                            R43 K74 ["StudioAssistantThumbsUp"]
      302 SETTABLEKS                       R43 R42 K56 ["eventName"]
      304 NEWTABLE                         R43 0 1
      306 GETTABLEKS                       R44 R6 K51 ["Backends"]
      308 GETTABLEKS                       R44 R44 K62 ["RobloxTelemetryCounter"]
      310 SETLIST                          R43 R44 1 [1]
      312 SETTABLEKS                       R43 R42 K57 ["backends"]
      314 LOADK                            R43 K75 ["Incrementing count of thumbs up events."]
      315 SETTABLEKS                       R43 R42 K58 ["description"]
      317 NEWTABLE                         R43 0 3
      319 LOADN                            R44 25
      320 LOADN                            R45 7
      321 LOADN                            R46 21
      322 SETLIST                          R43 R44 3 [1]
      324 SETTABLEKS                       R43 R42 K59 ["lastUpdated"]
      326 CALL                             R41 1 1
      327 GETIMPORT                        R42 K50 [table.freeze]
      329 DUPTABLE                         R43 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      330 LOADK                            R44 K76 ["StudioAssistantThumbsDown"]
      331 SETTABLEKS                       R44 R43 K56 ["eventName"]
      333 NEWTABLE                         R44 0 1
      335 GETTABLEKS                       R45 R6 K51 ["Backends"]
      337 GETTABLEKS                       R45 R45 K62 ["RobloxTelemetryCounter"]
      339 SETLIST                          R44 R45 1 [1]
      341 SETTABLEKS                       R44 R43 K57 ["backends"]
      343 LOADK                            R44 K77 ["Incrementing count of thumbs down events."]
      344 SETTABLEKS                       R44 R43 K58 ["description"]
      346 NEWTABLE                         R44 0 3
      348 LOADN                            R45 25
      349 LOADN                            R46 7
      350 LOADN                            R47 21
      351 SETLIST                          R44 R45 3 [1]
      353 SETTABLEKS                       R44 R43 K59 ["lastUpdated"]
      355 CALL                             R42 1 1
      356 GETIMPORT                        R43 K50 [table.freeze]
      358 DUPTABLE                         R44 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      359 LOADK                            R45 K78 ["StudioAssistantInitialResponseLatency"]
      360 SETTABLEKS                       R45 R44 K56 ["eventName"]
      362 NEWTABLE                         R45 0 1
      364 GETTABLEKS                       R46 R6 K51 ["Backends"]
      366 GETTABLEKS                       R46 R46 K79 ["RobloxTelemetryStat"]
      368 SETLIST                          R45 R46 1 [1]
      370 SETTABLEKS                       R45 R44 K57 ["backends"]
      372 LOADK                            R45 K80 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      373 SETTABLEKS                       R45 R44 K58 ["description"]
      375 NEWTABLE                         R45 0 3
      377 LOADN                            R46 25
      378 LOADN                            R47 7
      379 LOADN                            R48 21
      380 SETLIST                          R45 R46 3 [1]
      382 SETTABLEKS                       R45 R44 K59 ["lastUpdated"]
      384 CALL                             R43 1 1
      385 GETIMPORT                        R44 K50 [table.freeze]
      387 DUPTABLE                         R45 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      388 LOADK                            R46 K81 ["StudioAssistantRequestJourney"]
      389 SETTABLEKS                       R46 R45 K56 ["eventName"]
      391 NEWTABLE                         R46 0 1
      393 GETTABLEKS                       R47 R6 K51 ["Backends"]
      395 GETTABLEKS                       R47 R47 K79 ["RobloxTelemetryStat"]
      397 SETLIST                          R46 R47 1 [1]
      399 SETTABLEKS                       R46 R45 K57 ["backends"]
      401 LOADK                            R46 K82 ["User request journey duration in seconds. Time between sending first message to request ended."]
      402 SETTABLEKS                       R46 R45 K58 ["description"]
      404 NEWTABLE                         R46 0 3
      406 LOADN                            R47 25
      407 LOADN                            R48 10
      408 LOADN                            R49 22
      409 SETLIST                          R46 R47 3 [1]
      411 SETTABLEKS                       R46 R45 K59 ["lastUpdated"]
      413 CALL                             R44 1 1
      414 GETIMPORT                        R45 K50 [table.freeze]
      416 DUPTABLE                         R46 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      417 LOADK                            R47 K83 ["CAPRequestJourney"]
      418 SETTABLEKS                       R47 R46 K56 ["eventName"]
      420 SETTABLEKS                       R35 R46 K57 ["backends"]
      422 LOADK                            R47 K84 ["User request journey detail."]
      423 SETTABLEKS                       R47 R46 K58 ["description"]
      425 NEWTABLE                         R47 0 3
      427 LOADN                            R48 25
      428 LOADN                            R49 11
      429 LOADN                            R50 1
      430 SETLIST                          R47 R48 3 [1]
      432 SETTABLEKS                       R47 R46 K59 ["lastUpdated"]
      434 CALL                             R45 1 1
      435 GETIMPORT                        R46 K50 [table.freeze]
      437 DUPTABLE                         R47 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      438 LOADK                            R48 K85 ["StudioAssistantErrorEvent"]
      439 SETTABLEKS                       R48 R47 K56 ["eventName"]
      441 NEWTABLE                         R48 0 1
      443 GETTABLEKS                       R49 R6 K51 ["Backends"]
      445 GETTABLEKS                       R49 R49 K62 ["RobloxTelemetryCounter"]
      447 SETLIST                          R48 R49 1 [1]
      449 SETTABLEKS                       R48 R47 K57 ["backends"]
      451 LOADK                            R48 K86 ["Incrementing count of error events with error type attached."]
      452 SETTABLEKS                       R48 R47 K58 ["description"]
      454 NEWTABLE                         R48 0 3
      456 LOADN                            R49 25
      457 LOADN                            R50 7
      458 LOADN                            R51 21
      459 SETLIST                          R48 R49 3 [1]
      461 SETTABLEKS                       R48 R47 K59 ["lastUpdated"]
      463 CALL                             R46 1 1
      464 GETIMPORT                        R47 K50 [table.freeze]
      466 DUPTABLE                         R48 K65 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      467 LOADK                            R49 K87 ["StudioAssistantMarkdownError"]
      468 SETTABLEKS                       R49 R48 K56 ["eventName"]
      470 NEWTABLE                         R49 0 1
      472 GETTABLEKS                       R50 R6 K51 ["Backends"]
      474 GETTABLEKS                       R50 R50 K55 ["Points"]
      476 SETLIST                          R49 R50 1 [1]
      478 SETTABLEKS                       R49 R48 K57 ["backends"]
      480 LOADK                            R49 K88 ["Collection of markdown error events, with markdown attached."]
      481 SETTABLEKS                       R49 R48 K58 ["description"]
      483 MOVE                             R49 R26
      484 CALL                             R49 0 1
      485 SETTABLEKS                       R49 R48 K64 ["throttlingPercentage"]
      487 NEWTABLE                         R49 0 3
      489 LOADN                            R50 25
      490 LOADN                            R51 7
      491 LOADN                            R52 21
      492 SETLIST                          R49 R50 3 [1]
      494 SETTABLEKS                       R49 R48 K59 ["lastUpdated"]
      496 CALL                             R47 1 1
      497 GETIMPORT                        R48 K50 [table.freeze]
      499 DUPTABLE                         R49 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      500 LOADK                            R50 K89 ["CAPMessageResubmitted"]
      501 SETTABLEKS                       R50 R49 K56 ["eventName"]
      503 SETTABLEKS                       R35 R49 K57 ["backends"]
      505 LOADK                            R50 K90 ["User message retry/resubmit event with request ID."]
      506 SETTABLEKS                       R50 R49 K58 ["description"]
      508 NEWTABLE                         R50 0 3
      510 LOADN                            R51 25
      511 LOADN                            R52 8
      512 LOADN                            R53 7
      513 SETLIST                          R50 R51 3 [1]
      515 SETTABLEKS                       R50 R49 K59 ["lastUpdated"]
      517 CALL                             R48 1 1
      518 GETIMPORT                        R49 K50 [table.freeze]
      520 DUPTABLE                         R50 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      521 LOADK                            R51 K91 ["CAPStopGeneration"]
      522 SETTABLEKS                       R51 R50 K56 ["eventName"]
      524 SETTABLEKS                       R35 R50 K57 ["backends"]
      526 LOADK                            R51 K92 ["User stop generation event with request ID."]
      527 SETTABLEKS                       R51 R50 K58 ["description"]
      529 NEWTABLE                         R51 0 3
      531 LOADN                            R52 25
      532 LOADN                            R53 8
      533 LOADN                            R54 7
      534 SETLIST                          R51 R52 3 [1]
      536 SETTABLEKS                       R51 R50 K59 ["lastUpdated"]
      538 CALL                             R49 1 1
      539 GETIMPORT                        R50 K50 [table.freeze]
      541 DUPTABLE                         R51 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      542 LOADK                            R52 K93 ["CAPToolEnded"]
      543 SETTABLEKS                       R52 R51 K56 ["eventName"]
      545 SETTABLEKS                       R35 R51 K57 ["backends"]
      547 LOADK                            R52 K94 ["Tool invocation ended event with request ID and tool name"]
      548 SETTABLEKS                       R52 R51 K58 ["description"]
      550 NEWTABLE                         R52 0 3
      552 LOADN                            R53 25
      553 LOADN                            R54 7
      554 LOADN                            R55 21
      555 SETLIST                          R52 R53 3 [1]
      557 SETTABLEKS                       R52 R51 K59 ["lastUpdated"]
      559 CALL                             R50 1 1
      560 GETIMPORT                        R51 K50 [table.freeze]
      562 DUPTABLE                         R52 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      563 LOADK                            R53 K95 ["CAPToolStarted"]
      564 SETTABLEKS                       R53 R52 K56 ["eventName"]
      566 SETTABLEKS                       R35 R52 K57 ["backends"]
      568 LOADK                            R53 K96 ["Tool invocation started event with request ID and tool name."]
      569 SETTABLEKS                       R53 R52 K58 ["description"]
      571 NEWTABLE                         R53 0 3
      573 LOADN                            R54 25
      574 LOADN                            R55 8
      575 LOADN                            R56 7
      576 SETLIST                          R53 R54 3 [1]
      578 SETTABLEKS                       R53 R52 K59 ["lastUpdated"]
      580 CALL                             R51 1 1
      581 GETIMPORT                        R52 K50 [table.freeze]
      583 DUPTABLE                         R53 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      584 LOADK                            R54 K97 ["CAPToolConfirmationShown"]
      585 SETTABLEKS                       R54 R53 K56 ["eventName"]
      587 SETTABLEKS                       R35 R53 K57 ["backends"]
      589 LOADK                            R54 K98 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      590 SETTABLEKS                       R54 R53 K58 ["description"]
      592 NEWTABLE                         R54 0 3
      594 LOADN                            R55 25
      595 LOADN                            R56 9
      596 LOADN                            R57 19
      597 SETLIST                          R54 R55 3 [1]
      599 SETTABLEKS                       R54 R53 K59 ["lastUpdated"]
      601 CALL                             R52 1 1
      602 GETIMPORT                        R53 K50 [table.freeze]
      604 DUPTABLE                         R54 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      605 LOADK                            R55 K99 ["CAPToolConfirmationResult"]
      606 SETTABLEKS                       R55 R54 K56 ["eventName"]
      608 SETTABLEKS                       R35 R54 K57 ["backends"]
      610 LOADK                            R55 K100 ["Tool confirmation dialog result event with request ID and user choice."]
      611 SETTABLEKS                       R55 R54 K58 ["description"]
      613 NEWTABLE                         R55 0 3
      615 LOADN                            R56 25
      616 LOADN                            R57 9
      617 LOADN                            R58 19
      618 SETLIST                          R55 R56 3 [1]
      620 SETTABLEKS                       R55 R54 K59 ["lastUpdated"]
      622 CALL                             R53 1 1
      623 GETIMPORT                        R54 K50 [table.freeze]
      625 DUPTABLE                         R55 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      626 LOADK                            R56 K101 ["CAPExternalAPIError"]
      627 SETTABLEKS                       R56 R55 K56 ["eventName"]
      629 SETTABLEKS                       R35 R55 K57 ["backends"]
      631 LOADK                            R56 K102 ["External LLM API error event with request ID, model, and HTTP status code."]
      632 SETTABLEKS                       R56 R55 K58 ["description"]
      634 NEWTABLE                         R56 0 3
      636 LOADN                            R57 25
      637 LOADN                            R58 12
      638 LOADN                            R59 16
      639 SETLIST                          R56 R57 3 [1]
      641 SETTABLEKS                       R56 R55 K59 ["lastUpdated"]
      643 CALL                             R54 1 1
      644 GETIMPORT                        R55 K50 [table.freeze]
      646 DUPTABLE                         R56 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      647 LOADK                            R57 K103 ["CAPMeshGenActivated"]
      648 SETTABLEKS                       R57 R56 K56 ["eventName"]
      650 NEWTABLE                         R57 0 1
      652 GETTABLEKS                       R58 R6 K51 ["Backends"]
      654 GETTABLEKS                       R58 R58 K62 ["RobloxTelemetryCounter"]
      656 SETLIST                          R57 R58 1 [1]
      658 SETTABLEKS                       R57 R56 K57 ["backends"]
      660 LOADK                            R57 K104 ["Count of MeshGen tool activations."]
      661 SETTABLEKS                       R57 R56 K58 ["description"]
      663 NEWTABLE                         R57 0 3
      665 LOADN                            R58 26
      666 LOADN                            R59 2
      667 LOADN                            R60 6
      668 SETLIST                          R57 R58 3 [1]
      670 SETTABLEKS                       R57 R56 K59 ["lastUpdated"]
      672 CALL                             R55 1 1
      673 GETIMPORT                        R56 K50 [table.freeze]
      675 DUPTABLE                         R57 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      676 LOADK                            R58 K105 ["CAPMeshGenCompletedSuccess"]
      677 SETTABLEKS                       R58 R57 K56 ["eventName"]
      679 NEWTABLE                         R58 0 1
      681 GETTABLEKS                       R59 R6 K51 ["Backends"]
      683 GETTABLEKS                       R59 R59 K62 ["RobloxTelemetryCounter"]
      685 SETLIST                          R58 R59 1 [1]
      687 SETTABLEKS                       R58 R57 K57 ["backends"]
      689 LOADK                            R58 K106 ["Count of successful MeshGen completions."]
      690 SETTABLEKS                       R58 R57 K58 ["description"]
      692 NEWTABLE                         R58 0 3
      694 LOADN                            R59 26
      695 LOADN                            R60 2
      696 LOADN                            R61 6
      697 SETLIST                          R58 R59 3 [1]
      699 SETTABLEKS                       R58 R57 K59 ["lastUpdated"]
      701 CALL                             R56 1 1
      702 GETIMPORT                        R57 K50 [table.freeze]
      704 DUPTABLE                         R58 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      705 LOADK                            R59 K107 ["CAPMeshGenCompletedFailure"]
      706 SETTABLEKS                       R59 R58 K56 ["eventName"]
      708 NEWTABLE                         R59 0 1
      710 GETTABLEKS                       R60 R6 K51 ["Backends"]
      712 GETTABLEKS                       R60 R60 K62 ["RobloxTelemetryCounter"]
      714 SETLIST                          R59 R60 1 [1]
      716 SETTABLEKS                       R59 R58 K57 ["backends"]
      718 LOADK                            R59 K108 ["Count of failed MeshGen completions."]
      719 SETTABLEKS                       R59 R58 K58 ["description"]
      721 NEWTABLE                         R59 0 3
      723 LOADN                            R60 26
      724 LOADN                            R61 2
      725 LOADN                            R62 6
      726 SETLIST                          R59 R60 3 [1]
      728 SETTABLEKS                       R59 R58 K59 ["lastUpdated"]
      730 CALL                             R57 1 1
      731 GETIMPORT                        R58 K50 [table.freeze]
      733 DUPTABLE                         R59 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      734 LOADK                            R60 K109 ["CAPMeshGenCompleted"]
      735 SETTABLEKS                       R60 R59 K56 ["eventName"]
      737 SETTABLEKS                       R35 R59 K57 ["backends"]
      739 LOADK                            R60 K110 ["MeshGen generation completed event with details."]
      740 SETTABLEKS                       R60 R59 K58 ["description"]
      742 NEWTABLE                         R60 0 3
      744 LOADN                            R61 26
      745 LOADN                            R62 2
      746 LOADN                            R63 6
      747 SETLIST                          R60 R61 3 [1]
      749 SETTABLEKS                       R60 R59 K59 ["lastUpdated"]
      751 CALL                             R58 1 1
      752 GETIMPORT                        R59 K50 [table.freeze]
      754 DUPTABLE                         R60 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      755 LOADK                            R61 K111 ["CAPMeshGenPublishedAssetsSuccess"]
      756 SETTABLEKS                       R61 R60 K56 ["eventName"]
      758 NEWTABLE                         R61 0 1
      760 GETTABLEKS                       R62 R6 K51 ["Backends"]
      762 GETTABLEKS                       R62 R62 K62 ["RobloxTelemetryCounter"]
      764 SETLIST                          R61 R62 1 [1]
      766 SETTABLEKS                       R61 R60 K57 ["backends"]
      768 LOADK                            R61 K112 ["Count of successful MeshGen asset publications."]
      769 SETTABLEKS                       R61 R60 K58 ["description"]
      771 NEWTABLE                         R61 0 3
      773 LOADN                            R62 26
      774 LOADN                            R63 2
      775 LOADN                            R64 6
      776 SETLIST                          R61 R62 3 [1]
      778 SETTABLEKS                       R61 R60 K59 ["lastUpdated"]
      780 CALL                             R59 1 1
      781 GETIMPORT                        R60 K50 [table.freeze]
      783 DUPTABLE                         R61 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      784 LOADK                            R62 K113 ["CAPMeshGenPublishedAssetsFailure"]
      785 SETTABLEKS                       R62 R61 K56 ["eventName"]
      787 NEWTABLE                         R62 0 1
      789 GETTABLEKS                       R63 R6 K51 ["Backends"]
      791 GETTABLEKS                       R63 R63 K62 ["RobloxTelemetryCounter"]
      793 SETLIST                          R62 R63 1 [1]
      795 SETTABLEKS                       R62 R61 K57 ["backends"]
      797 LOADK                            R62 K114 ["Count of failed MeshGen asset publications."]
      798 SETTABLEKS                       R62 R61 K58 ["description"]
      800 NEWTABLE                         R62 0 3
      802 LOADN                            R63 26
      803 LOADN                            R64 2
      804 LOADN                            R65 6
      805 SETLIST                          R62 R63 3 [1]
      807 SETTABLEKS                       R62 R61 K59 ["lastUpdated"]
      809 CALL                             R60 1 1
      810 GETIMPORT                        R61 K50 [table.freeze]
      812 DUPTABLE                         R62 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      813 LOADK                            R63 K115 ["CAPMeshGenPublishedAssets"]
      814 SETTABLEKS                       R63 R62 K56 ["eventName"]
      816 SETTABLEKS                       R35 R62 K57 ["backends"]
      818 LOADK                            R63 K116 ["MeshGen assets published event with details."]
      819 SETTABLEKS                       R63 R62 K58 ["description"]
      821 NEWTABLE                         R63 0 3
      823 LOADN                            R64 26
      824 LOADN                            R65 2
      825 LOADN                            R66 6
      826 SETLIST                          R63 R64 3 [1]
      828 SETTABLEKS                       R63 R62 K59 ["lastUpdated"]
      830 CALL                             R61 1 1
      831 GETIMPORT                        R62 K50 [table.freeze]
      833 DUPTABLE                         R63 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      834 LOADK                            R64 K117 ["CAPMeshGenMeshInsertedSuccess"]
      835 SETTABLEKS                       R64 R63 K56 ["eventName"]
      837 NEWTABLE                         R64 0 1
      839 GETTABLEKS                       R65 R6 K51 ["Backends"]
      841 GETTABLEKS                       R65 R65 K62 ["RobloxTelemetryCounter"]
      843 SETLIST                          R64 R65 1 [1]
      845 SETTABLEKS                       R64 R63 K57 ["backends"]
      847 LOADK                            R64 K118 ["Count of successful MeshGen mesh insertions."]
      848 SETTABLEKS                       R64 R63 K58 ["description"]
      850 NEWTABLE                         R64 0 3
      852 LOADN                            R65 26
      853 LOADN                            R66 2
      854 LOADN                            R67 6
      855 SETLIST                          R64 R65 3 [1]
      857 SETTABLEKS                       R64 R63 K59 ["lastUpdated"]
      859 CALL                             R62 1 1
      860 GETIMPORT                        R63 K50 [table.freeze]
      862 DUPTABLE                         R64 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      863 LOADK                            R65 K119 ["CAPMeshGenMeshInsertedFailure"]
      864 SETTABLEKS                       R65 R64 K56 ["eventName"]
      866 NEWTABLE                         R65 0 1
      868 GETTABLEKS                       R66 R6 K51 ["Backends"]
      870 GETTABLEKS                       R66 R66 K62 ["RobloxTelemetryCounter"]
      872 SETLIST                          R65 R66 1 [1]
      874 SETTABLEKS                       R65 R64 K57 ["backends"]
      876 LOADK                            R65 K120 ["Count of failed MeshGen mesh insertions."]
      877 SETTABLEKS                       R65 R64 K58 ["description"]
      879 NEWTABLE                         R65 0 3
      881 LOADN                            R66 26
      882 LOADN                            R67 2
      883 LOADN                            R68 6
      884 SETLIST                          R65 R66 3 [1]
      886 SETTABLEKS                       R65 R64 K59 ["lastUpdated"]
      888 CALL                             R63 1 1
      889 GETIMPORT                        R64 K50 [table.freeze]
      891 DUPTABLE                         R65 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      892 LOADK                            R66 K121 ["CAPMeshGenMeshInserted"]
      893 SETTABLEKS                       R66 R65 K56 ["eventName"]
      895 SETTABLEKS                       R35 R65 K57 ["backends"]
      897 LOADK                            R66 K122 ["MeshGen mesh inserted event with details."]
      898 SETTABLEKS                       R66 R65 K58 ["description"]
      900 NEWTABLE                         R66 0 3
      902 LOADN                            R67 26
      903 LOADN                            R68 2
      904 LOADN                            R69 6
      905 SETLIST                          R66 R67 3 [1]
      907 SETTABLEKS                       R66 R65 K59 ["lastUpdated"]
      909 CALL                             R64 1 1
      910 GETIMPORT                        R65 K50 [table.freeze]
      912 DUPTABLE                         R66 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      913 LOADK                            R67 K123 ["StudioAssistantPrimitiveGenCompletedCount"]
      914 SETTABLEKS                       R67 R66 K56 ["eventName"]
      916 NEWTABLE                         R67 0 1
      918 GETTABLEKS                       R68 R6 K51 ["Backends"]
      920 GETTABLEKS                       R68 R68 K62 ["RobloxTelemetryCounter"]
      922 SETLIST                          R67 R68 1 [1]
      924 SETTABLEKS                       R67 R66 K57 ["backends"]
      926 LOADK                            R67 K124 ["Count of PrimitiveGen completions with success status."]
      927 SETTABLEKS                       R67 R66 K58 ["description"]
      929 NEWTABLE                         R67 0 3
      931 LOADN                            R68 26
      932 LOADN                            R69 3
      933 LOADN                            R70 12
      934 SETLIST                          R67 R68 3 [1]
      936 SETTABLEKS                       R67 R66 K59 ["lastUpdated"]
      938 CALL                             R65 1 1
      939 GETIMPORT                        R66 K50 [table.freeze]
      941 DUPTABLE                         R67 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      942 LOADK                            R68 K125 ["StudioAssistantPrimitiveGenCompleted"]
      943 SETTABLEKS                       R68 R67 K56 ["eventName"]
      945 SETTABLEKS                       R35 R67 K57 ["backends"]
      947 LOADK                            R68 K126 ["PrimitiveGen completion event with generation, prompt, render latency, and dependency details."]
      948 SETTABLEKS                       R68 R67 K58 ["description"]
      950 NEWTABLE                         R68 0 3
      952 LOADN                            R69 26
      953 LOADN                            R70 3
      954 LOADN                            R71 12
      955 SETLIST                          R68 R69 3 [1]
      957 SETTABLEKS                       R68 R67 K59 ["lastUpdated"]
      959 CALL                             R66 1 1
      960 GETIMPORT                        R67 K50 [table.freeze]
      962 DUPTABLE                         R68 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      963 LOADK                            R69 K127 ["StudioAssistantIntegrationAction"]
      964 SETTABLEKS                       R69 R68 K56 ["eventName"]
      966 SETTABLEKS                       R35 R68 K57 ["backends"]
      968 LOADK                            R69 K128 ["Integration event with action, label, and URL."]
      969 SETTABLEKS                       R69 R68 K58 ["description"]
      971 NEWTABLE                         R69 0 3
      973 LOADN                            R70 26
      974 LOADN                            R71 2
      975 LOADN                            R72 3
      976 SETLIST                          R69 R70 3 [1]
      978 SETTABLEKS                       R69 R68 K59 ["lastUpdated"]
      980 CALL                             R67 1 1
      981 GETIMPORT                        R68 K50 [table.freeze]
      983 DUPTABLE                         R69 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      984 LOADK                            R70 K129 ["StudioAssistantExternalServerConnectedEvent"]
      985 SETTABLEKS                       R70 R69 K56 ["eventName"]
      987 SETTABLEKS                       R35 R69 K57 ["backends"]
      989 LOADK                            R70 K130 ["External server connected event with session ID"]
      990 SETTABLEKS                       R70 R69 K58 ["description"]
      992 NEWTABLE                         R70 0 3
      994 LOADN                            R71 26
      995 LOADN                            R72 2
      996 LOADN                            R73 25
      997 SETLIST                          R70 R71 3 [1]
      999 SETTABLEKS                       R70 R69 K59 ["lastUpdated"]
     1001 CALL                             R68 1 1
     1002 GETIMPORT                        R69 K50 [table.freeze]
     1004 DUPTABLE                         R70 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1005 LOADK                            R71 K131 ["StudioAssistantExternalServerConnectedCounter"]
     1006 SETTABLEKS                       R71 R70 K56 ["eventName"]
     1008 NEWTABLE                         R71 0 1
     1010 GETTABLEKS                       R72 R6 K51 ["Backends"]
     1012 GETTABLEKS                       R72 R72 K62 ["RobloxTelemetryCounter"]
     1014 SETLIST                          R71 R72 1 [1]
     1016 SETTABLEKS                       R71 R70 K57 ["backends"]
     1018 LOADK                            R71 K130 ["External server connected event with session ID"]
     1019 SETTABLEKS                       R71 R70 K58 ["description"]
     1021 NEWTABLE                         R71 0 3
     1023 LOADN                            R72 26
     1024 LOADN                            R73 2
     1025 LOADN                            R74 25
     1026 SETLIST                          R71 R72 3 [1]
     1028 SETTABLEKS                       R71 R70 K59 ["lastUpdated"]
     1030 CALL                             R69 1 1
     1031 GETIMPORT                        R70 K50 [table.freeze]
     1033 DUPTABLE                         R71 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1034 LOADK                            R72 K132 ["CAPQuestionAnswerCompleted"]
     1035 SETTABLEKS                       R72 R71 K56 ["eventName"]
     1037 SETTABLEKS                       R35 R71 K57 ["backends"]
     1039 LOADK                            R72 K133 ["Question answer tool completed event with full question/answer context."]
     1040 SETTABLEKS                       R72 R71 K58 ["description"]
     1042 NEWTABLE                         R72 0 3
     1044 LOADN                            R73 26
     1045 LOADN                            R74 4
     1046 LOADN                            R75 1
     1047 SETLIST                          R72 R73 3 [1]
     1049 SETTABLEKS                       R72 R71 K59 ["lastUpdated"]
     1051 CALL                             R70 1 1
     1052 GETIMPORT                        R71 K50 [table.freeze]
     1054 DUPTABLE                         R72 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1055 LOADK                            R73 K134 ["StudioAssistantQuestionAnswerCompleted"]
     1056 SETTABLEKS                       R73 R72 K56 ["eventName"]
     1058 NEWTABLE                         R73 0 1
     1060 GETTABLEKS                       R74 R6 K51 ["Backends"]
     1062 GETTABLEKS                       R74 R74 K62 ["RobloxTelemetryCounter"]
     1064 SETLIST                          R73 R74 1 [1]
     1066 SETTABLEKS                       R73 R72 K57 ["backends"]
     1068 LOADK                            R73 K135 ["Count of question answer tool completions."]
     1069 SETTABLEKS                       R73 R72 K58 ["description"]
     1071 NEWTABLE                         R73 0 3
     1073 LOADN                            R74 26
     1074 LOADN                            R75 4
     1075 LOADN                            R76 1
     1076 SETLIST                          R73 R74 3 [1]
     1078 SETTABLEKS                       R73 R72 K59 ["lastUpdated"]
     1080 CALL                             R71 1 1
     1081 GETIMPORT                        R72 K50 [table.freeze]
     1083 DUPTABLE                         R73 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1084 LOADK                            R74 K136 ["CAPPlanDecision"]
     1085 SETTABLEKS                       R74 R73 K56 ["eventName"]
     1087 SETTABLEKS                       R35 R73 K57 ["backends"]
     1089 LOADK                            R74 K137 ["Plan decision event with full plan context when user accepts or rejects a plan."]
     1090 SETTABLEKS                       R74 R73 K58 ["description"]
     1092 NEWTABLE                         R74 0 3
     1094 LOADN                            R75 26
     1095 LOADN                            R76 4
     1096 LOADN                            R77 1
     1097 SETLIST                          R74 R75 3 [1]
     1099 SETTABLEKS                       R74 R73 K59 ["lastUpdated"]
     1101 CALL                             R72 1 1
     1102 GETIMPORT                        R73 K50 [table.freeze]
     1104 DUPTABLE                         R74 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1105 LOADK                            R75 K138 ["StudioAssistantPlanDecision"]
     1106 SETTABLEKS                       R75 R74 K56 ["eventName"]
     1108 NEWTABLE                         R75 0 1
     1110 GETTABLEKS                       R76 R6 K51 ["Backends"]
     1112 GETTABLEKS                       R76 R76 K62 ["RobloxTelemetryCounter"]
     1114 SETLIST                          R75 R76 1 [1]
     1116 SETTABLEKS                       R75 R74 K57 ["backends"]
     1118 LOADK                            R75 K139 ["Count of plan decisions."]
     1119 SETTABLEKS                       R75 R74 K58 ["description"]
     1121 NEWTABLE                         R75 0 3
     1123 LOADN                            R76 26
     1124 LOADN                            R77 4
     1125 LOADN                            R78 1
     1126 SETLIST                          R75 R76 3 [1]
     1128 SETTABLEKS                       R75 R74 K59 ["lastUpdated"]
     1130 CALL                             R73 1 1
     1131 GETIMPORT                        R74 K50 [table.freeze]
     1133 DUPTABLE                         R75 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1134 LOADK                            R76 K140 ["SBT_MaterialGeneratorSavedMaterial"]
     1135 SETTABLEKS                       R76 R75 K56 ["eventName"]
     1137 NEWTABLE                         R76 0 1
     1139 GETTABLEKS                       R77 R6 K51 ["Backends"]
     1141 GETTABLEKS                       R77 R77 K62 ["RobloxTelemetryCounter"]
     1143 SETLIST                          R76 R77 1 [1]
     1145 SETTABLEKS                       R76 R75 K57 ["backends"]
     1147 LOADK                            R76 K141 ["Counter to track number of saved materials"]
     1148 SETTABLEKS                       R76 R75 K58 ["description"]
     1150 NEWTABLE                         R76 0 3
     1152 LOADN                            R77 24
     1153 LOADN                            R78 10
     1154 LOADN                            R79 15
     1155 SETLIST                          R76 R77 3 [1]
     1157 SETTABLEKS                       R76 R75 K59 ["lastUpdated"]
     1159 CALL                             R74 1 1
     1160 GETIMPORT                        R75 K50 [table.freeze]
     1162 DUPTABLE                         R76 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1163 LOADK                            R77 K142 ["StudioAssistantThreadCreated"]
     1164 SETTABLEKS                       R77 R76 K56 ["eventName"]
     1166 SETTABLEKS                       R35 R76 K57 ["backends"]
     1168 LOADK                            R77 K143 ["Thread created event with details."]
     1169 SETTABLEKS                       R77 R76 K58 ["description"]
     1171 NEWTABLE                         R77 0 3
     1173 LOADN                            R78 26
     1174 LOADN                            R79 3
     1175 LOADN                            R80 10
     1176 SETLIST                          R77 R78 3 [1]
     1178 SETTABLEKS                       R77 R76 K59 ["lastUpdated"]
     1180 CALL                             R75 1 1
     1181 GETIMPORT                        R76 K50 [table.freeze]
     1183 DUPTABLE                         R77 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1184 LOADK                            R78 K144 ["StudioAssistantThreadRenamed"]
     1185 SETTABLEKS                       R78 R77 K56 ["eventName"]
     1187 SETTABLEKS                       R35 R77 K57 ["backends"]
     1189 LOADK                            R78 K145 ["Thread named event with details."]
     1190 SETTABLEKS                       R78 R77 K58 ["description"]
     1192 NEWTABLE                         R78 0 3
     1194 LOADN                            R79 26
     1195 LOADN                            R80 3
     1196 LOADN                            R81 10
     1197 SETLIST                          R78 R79 3 [1]
     1199 SETTABLEKS                       R78 R77 K59 ["lastUpdated"]
     1201 CALL                             R76 1 1
     1202 GETIMPORT                        R77 K50 [table.freeze]
     1204 DUPTABLE                         R78 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1205 LOADK                            R79 K146 ["StudioAssistantThreadPinnedChanged"]
     1206 SETTABLEKS                       R79 R78 K56 ["eventName"]
     1208 SETTABLEKS                       R35 R78 K57 ["backends"]
     1210 LOADK                            R79 K147 ["Thread pinned changed event with details."]
     1211 SETTABLEKS                       R79 R78 K58 ["description"]
     1213 NEWTABLE                         R79 0 3
     1215 LOADN                            R80 26
     1216 LOADN                            R81 3
     1217 LOADN                            R82 10
     1218 SETLIST                          R79 R80 3 [1]
     1220 SETTABLEKS                       R79 R78 K59 ["lastUpdated"]
     1222 CALL                             R77 1 1
     1223 GETIMPORT                        R78 K50 [table.freeze]
     1225 DUPTABLE                         R79 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1226 LOADK                            R80 K148 ["StudioAssistantThreadDeleted"]
     1227 SETTABLEKS                       R80 R79 K56 ["eventName"]
     1229 SETTABLEKS                       R35 R79 K57 ["backends"]
     1231 LOADK                            R80 K149 ["Thread deleted event with details."]
     1232 SETTABLEKS                       R80 R79 K58 ["description"]
     1234 NEWTABLE                         R80 0 3
     1236 LOADN                            R81 26
     1237 LOADN                            R82 3
     1238 LOADN                            R83 10
     1239 SETLIST                          R80 R81 3 [1]
     1241 SETTABLEKS                       R80 R79 K59 ["lastUpdated"]
     1243 CALL                             R78 1 1
     1244 GETIMPORT                        R79 K50 [table.freeze]
     1246 DUPTABLE                         R80 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1247 LOADK                            R81 K150 ["StudioAssistantThreadDuplicated"]
     1248 SETTABLEKS                       R81 R80 K56 ["eventName"]
     1250 SETTABLEKS                       R35 R80 K57 ["backends"]
     1252 LOADK                            R81 K151 ["Thread duplicated event with details."]
     1253 SETTABLEKS                       R81 R80 K58 ["description"]
     1255 NEWTABLE                         R81 0 3
     1257 LOADN                            R82 26
     1258 LOADN                            R83 3
     1259 LOADN                            R84 10
     1260 SETLIST                          R81 R82 3 [1]
     1262 SETTABLEKS                       R81 R80 K59 ["lastUpdated"]
     1264 CALL                             R79 1 1
     1265 GETIMPORT                        R80 K50 [table.freeze]
     1267 DUPTABLE                         R81 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1268 LOADK                            R82 K152 ["StudioAssistantCompactionSuccess"]
     1269 SETTABLEKS                       R82 R81 K56 ["eventName"]
     1271 SETTABLEKS                       R35 R81 K57 ["backends"]
     1273 LOADK                            R82 K153 ["Context compaction summarizer completed successfully."]
     1274 SETTABLEKS                       R82 R81 K58 ["description"]
     1276 NEWTABLE                         R82 0 3
     1278 LOADN                            R83 26
     1279 LOADN                            R84 4
     1280 LOADN                            R85 28
     1281 SETLIST                          R82 R83 3 [1]
     1283 SETTABLEKS                       R82 R81 K59 ["lastUpdated"]
     1285 CALL                             R80 1 1
     1286 GETIMPORT                        R81 K50 [table.freeze]
     1288 DUPTABLE                         R82 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1289 LOADK                            R83 K154 ["StudioAssistantCompactionSuccessCount"]
     1290 SETTABLEKS                       R83 R82 K56 ["eventName"]
     1292 NEWTABLE                         R83 0 1
     1294 GETTABLEKS                       R84 R6 K51 ["Backends"]
     1296 GETTABLEKS                       R84 R84 K62 ["RobloxTelemetryCounter"]
     1298 SETLIST                          R83 R84 1 [1]
     1300 SETTABLEKS                       R83 R82 K57 ["backends"]
     1302 LOADK                            R83 K155 ["Count of successful compaction events."]
     1303 SETTABLEKS                       R83 R82 K58 ["description"]
     1305 NEWTABLE                         R83 0 3
     1307 LOADN                            R84 26
     1308 LOADN                            R85 4
     1309 LOADN                            R86 28
     1310 SETLIST                          R83 R84 3 [1]
     1312 SETTABLEKS                       R83 R82 K59 ["lastUpdated"]
     1314 CALL                             R81 1 1
     1315 GETIMPORT                        R82 K50 [table.freeze]
     1317 DUPTABLE                         R83 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1318 LOADK                            R84 K156 ["StudioAssistantCompactionFallback"]
     1319 SETTABLEKS                       R84 R83 K56 ["eventName"]
     1321 SETTABLEKS                       R35 R83 K57 ["backends"]
     1323 LOADK                            R84 K157 ["Context compaction summarizer failed, fell back to generic summary."]
     1324 SETTABLEKS                       R84 R83 K58 ["description"]
     1326 NEWTABLE                         R84 0 3
     1328 LOADN                            R85 26
     1329 LOADN                            R86 4
     1330 LOADN                            R87 28
     1331 SETLIST                          R84 R85 3 [1]
     1333 SETTABLEKS                       R84 R83 K59 ["lastUpdated"]
     1335 CALL                             R82 1 1
     1336 GETIMPORT                        R83 K50 [table.freeze]
     1338 DUPTABLE                         R84 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1339 LOADK                            R85 K158 ["StudioAssistantCompactionFallbackCount"]
     1340 SETTABLEKS                       R85 R84 K56 ["eventName"]
     1342 NEWTABLE                         R85 0 1
     1344 GETTABLEKS                       R86 R6 K51 ["Backends"]
     1346 GETTABLEKS                       R86 R86 K62 ["RobloxTelemetryCounter"]
     1348 SETLIST                          R85 R86 1 [1]
     1350 SETTABLEKS                       R85 R84 K57 ["backends"]
     1352 LOADK                            R85 K159 ["Count of compaction fallback events."]
     1353 SETTABLEKS                       R85 R84 K58 ["description"]
     1355 NEWTABLE                         R85 0 3
     1357 LOADN                            R86 26
     1358 LOADN                            R87 4
     1359 LOADN                            R88 28
     1360 SETLIST                          R85 R86 3 [1]
     1362 SETTABLEKS                       R85 R84 K59 ["lastUpdated"]
     1364 CALL                             R83 1 1
     1365 GETIMPORT                        R84 K50 [table.freeze]
     1367 DUPTABLE                         R85 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1368 LOADK                            R86 K160 ["StudioAssistantMCPQuickSetup"]
     1369 SETTABLEKS                       R86 R85 K56 ["eventName"]
     1371 SETTABLEKS                       R35 R85 K57 ["backends"]
     1373 LOADK                            R86 K161 ["Quick setup toggled/copied."]
     1374 SETTABLEKS                       R86 R85 K58 ["description"]
     1376 NEWTABLE                         R86 0 3
     1378 LOADN                            R87 26
     1379 LOADN                            R88 4
     1380 LOADN                            R89 15
     1381 SETLIST                          R86 R87 3 [1]
     1383 SETTABLEKS                       R86 R85 K59 ["lastUpdated"]
     1385 CALL                             R84 1 1
     1386 GETIMPORT                        R85 K50 [table.freeze]
     1388 DUPTABLE                         R86 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1389 LOADK                            R87 K162 ["StudioAssistantThreadSwitched"]
     1390 SETTABLEKS                       R87 R86 K56 ["eventName"]
     1392 SETTABLEKS                       R35 R86 K57 ["backends"]
     1394 LOADK                            R87 K163 ["Thread switched event with details."]
     1395 SETTABLEKS                       R87 R86 K58 ["description"]
     1397 NEWTABLE                         R87 0 3
     1399 LOADN                            R88 26
     1400 LOADN                            R89 3
     1401 LOADN                            R90 10
     1402 SETLIST                          R87 R88 3 [1]
     1404 SETTABLEKS                       R87 R86 K59 ["lastUpdated"]
     1406 CALL                             R85 1 1
     1407 GETIMPORT                        R86 K50 [table.freeze]
     1409 DUPTABLE                         R87 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1410 LOADK                            R88 K164 ["StudioAssistantPersistenceSuccess"]
     1411 SETTABLEKS                       R88 R87 K56 ["eventName"]
     1413 NEWTABLE                         R88 0 1
     1415 GETTABLEKS                       R89 R6 K51 ["Backends"]
     1417 GETTABLEKS                       R89 R89 K62 ["RobloxTelemetryCounter"]
     1419 SETLIST                          R88 R89 1 [1]
     1421 SETTABLEKS                       R88 R87 K57 ["backends"]
     1423 LOADK                            R88 K165 ["Count of successful persistence operations."]
     1424 SETTABLEKS                       R88 R87 K58 ["description"]
     1426 NEWTABLE                         R88 0 3
     1428 LOADN                            R89 26
     1429 LOADN                            R90 3
     1430 LOADN                            R91 10
     1431 SETLIST                          R88 R89 3 [1]
     1433 SETTABLEKS                       R88 R87 K59 ["lastUpdated"]
     1435 CALL                             R86 1 1
     1436 GETIMPORT                        R87 K50 [table.freeze]
     1438 DUPTABLE                         R88 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1439 LOADK                            R89 K166 ["StudioAssistantPersistenceFailure"]
     1440 SETTABLEKS                       R89 R88 K56 ["eventName"]
     1442 NEWTABLE                         R89 0 1
     1444 GETTABLEKS                       R90 R6 K51 ["Backends"]
     1446 GETTABLEKS                       R90 R90 K62 ["RobloxTelemetryCounter"]
     1448 SETLIST                          R89 R90 1 [1]
     1450 SETTABLEKS                       R89 R88 K57 ["backends"]
     1452 LOADK                            R89 K167 ["Count of failed persistence operations."]
     1453 SETTABLEKS                       R89 R88 K58 ["description"]
     1455 NEWTABLE                         R89 0 3
     1457 LOADN                            R90 26
     1458 LOADN                            R91 3
     1459 LOADN                            R92 10
     1460 SETLIST                          R89 R90 3 [1]
     1462 SETTABLEKS                       R89 R88 K59 ["lastUpdated"]
     1464 CALL                             R87 1 1
     1465 GETIMPORT                        R88 K50 [table.freeze]
     1467 DUPTABLE                         R89 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1468 LOADK                            R90 K168 ["StudioAssistantPersistenceLatencyMs"]
     1469 SETTABLEKS                       R90 R89 K56 ["eventName"]
     1471 NEWTABLE                         R90 0 1
     1473 GETTABLEKS                       R91 R6 K51 ["Backends"]
     1475 GETTABLEKS                       R91 R91 K79 ["RobloxTelemetryStat"]
     1477 SETLIST                          R90 R91 1 [1]
     1479 SETTABLEKS                       R90 R89 K57 ["backends"]
     1481 LOADK                            R90 K169 ["Persistence operation latency in milliseconds."]
     1482 SETTABLEKS                       R90 R89 K58 ["description"]
     1484 NEWTABLE                         R90 0 3
     1486 LOADN                            R91 26
     1487 LOADN                            R92 3
     1488 LOADN                            R93 10
     1489 SETLIST                          R90 R91 3 [1]
     1491 SETTABLEKS                       R90 R89 K59 ["lastUpdated"]
     1493 CALL                             R88 1 1
     1494 DUPCLOSURE                       R89 K170 [PROTO_18]
     1495 CAPTURE                          VAL R30
     1496 CAPTURE                          VAL R31
     1497 DUPCLOSURE                       R90 K171 [PROTO_19]
     1498 CAPTURE                          VAL R30
     1499 CAPTURE                          VAL R31
     1500 CAPTURE                          VAL R1
     1501 DUPCLOSURE                       R91 K172 [PROTO_20]
     1502 CAPTURE                          VAL R4
     1503 CAPTURE                          VAL R8
     1504 MOVE                             R92 R28
     1505 CALL                             R92 0 1
     1506 GETTABLEKS                       R93 R5 K173 ["new"]
     1508 MOVE                             R94 R2
     1509 MOVE                             R95 R29
     1510 CALL                             R95 0 -1
     1511 CALL                             R93 -1 1
     1512 DUPCLOSURE                       R94 K174 [PROTO_21]
     1513 CAPTURE                          VAL R93
     1514 CAPTURE                          VAL R92
     1515 DUPCLOSURE                       R95 K175 [PROTO_22]
     1516 CAPTURE                          VAL R4
     1517 CAPTURE                          VAL R93
     1518 CAPTURE                          VAL R92
     1519 DUPCLOSURE                       R96 K176 [PROTO_59]
     1520 CAPTURE                          VAL R6
     1521 CAPTURE                          VAL R36
     1522 CAPTURE                          VAL R4
     1523 CAPTURE                          VAL R93
     1524 CAPTURE                          VAL R92
     1525 CAPTURE                          VAL R30
     1526 CAPTURE                          VAL R8
     1527 CAPTURE                          VAL R37
     1528 CAPTURE                          VAL R7
     1529 CAPTURE                          VAL R38
     1530 CAPTURE                          VAL R46
     1531 CAPTURE                          VAL R41
     1532 CAPTURE                          VAL R39
     1533 CAPTURE                          VAL R42
     1534 CAPTURE                          VAL R40
     1535 CAPTURE                          VAL R43
     1536 CAPTURE                          VAL R47
     1537 CAPTURE                          VAL R48
     1538 CAPTURE                          VAL R49
     1539 CAPTURE                          VAL R25
     1540 CAPTURE                          VAL R11
     1541 CAPTURE                          VAL R1
     1542 CAPTURE                          VAL R10
     1543 CAPTURE                          VAL R51
     1544 CAPTURE                          VAL R21
     1545 CAPTURE                          VAL R24
     1546 CAPTURE                          VAL R50
     1547 CAPTURE                          VAL R52
     1548 CAPTURE                          VAL R53
     1549 CAPTURE                          VAL R44
     1550 CAPTURE                          VAL R45
     1551 CAPTURE                          VAL R54
     1552 CAPTURE                          VAL R55
     1553 CAPTURE                          VAL R56
     1554 CAPTURE                          VAL R57
     1555 CAPTURE                          VAL R58
     1556 CAPTURE                          VAL R59
     1557 CAPTURE                          VAL R60
     1558 CAPTURE                          VAL R61
     1559 CAPTURE                          VAL R62
     1560 CAPTURE                          VAL R63
     1561 CAPTURE                          VAL R64
     1562 CAPTURE                          VAL R65
     1563 CAPTURE                          VAL R66
     1564 CAPTURE                          VAL R67
     1565 CAPTURE                          VAL R68
     1566 CAPTURE                          VAL R69
     1567 CAPTURE                          VAL R71
     1568 CAPTURE                          VAL R70
     1569 CAPTURE                          VAL R73
     1570 CAPTURE                          VAL R72
     1571 CAPTURE                          VAL R74
     1572 CAPTURE                          VAL R75
     1573 CAPTURE                          VAL R76
     1574 CAPTURE                          VAL R77
     1575 CAPTURE                          VAL R78
     1576 CAPTURE                          VAL R79
     1577 CAPTURE                          VAL R84
     1578 CAPTURE                          VAL R85
     1579 CAPTURE                          VAL R81
     1580 CAPTURE                          VAL R80
     1581 CAPTURE                          VAL R83
     1582 CAPTURE                          VAL R82
     1583 CAPTURE                          VAL R88
     1584 CAPTURE                          VAL R86
     1585 CAPTURE                          VAL R87
     1586 CAPTURE                          VAL R89
     1587 CAPTURE                          VAL R90
     1588 DUPCLOSURE                       R97 K177 [PROTO_60]
     1589 CAPTURE                          VAL R96
     1590 CAPTURE                          VAL R30
     1591 DUPTABLE                         R98 K180 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1592 SETTABLEKS                       R96 R98 K178 ["makeStudioTelemetryEvents"]
     1594 SETTABLEKS                       R97 R98 K179 ["createStudioEventLogger"]
     1596 RETURN                           R98 1
