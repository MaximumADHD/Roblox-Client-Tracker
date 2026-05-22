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
        9 LOADN                            R6 1
       10 LOADN                            R7 244
       11 FASTCALL3                        STRING_SUB R0 R6 R7
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K2 [string.sub]
       16 CALL                             R4 3 1
       17 MOVE                             R2 R4
       18 LOADK                            R3 K3 ["..."]
       19 CONCAT                           R1 R2 R3
       20 RETURN                           R1 1

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
        0 DUPTABLE                         R2 K11 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "args", "assistantMode"}]
        1 GETTABLEKS                       R3 R0 K12 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K13 ["sessionId"]
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
       37 GETTABLEKS                       R3 R0 K9 ["args"]
       39 SETTABLEKS                       R3 R2 K9 ["args"]
       41 GETTABLEKS                       R3 R0 K10 ["assistantMode"]
       43 SETTABLEKS                       R3 R2 K10 ["assistantMode"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K14 ["assign"]
       48 MOVE                             R4 R2
       49 DUPTABLE                         R5 K16 [{"timestampMilliseconds"}]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K17 ["getTimestampMilliseconds"]
       53 CALL                             R6 0 1
       54 SETTABLEKS                       R6 R5 K15 ["timestampMilliseconds"]
       56 CALL                             R3 2 1
       57 MOVE                             R1 R3
       58 GETUPVAL                         R2 2
       59 CALL                             R2 0 1
       60 JUMPIFNOT                        R2 ; [+45]
       61 GETTABLEKS                       R3 R0 K18 ["input"]
       63 JUMPIFNOTEQKNIL                  R3 ; [+3]
       65 LOADNIL                          R2
       66 JUMP                             ; [+10]
       67 GETIMPORT                        R4 K20 [pcall]
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R3
       72 CALL                             R4 1 2
       73 JUMPIF                           R4 ; [+2]
       74 LOADNIL                          R2
       75 JUMP                             ; [+1]
       76 MOVE                             R2 R5
       77 JUMPIFNOTEQKNIL                  R2 ; [+3]
       79 LOADNIL                          R3
       80 JUMP                             ; [+17]
       81 LENGTH                           R4 R2
       82 LOADN                            R5 244
       83 JUMPIFNOTLE                      R4 R5 ; [+3]
       85 MOVE                             R3 R2
       86 JUMP                             ; [+11]
       87 LOADN                            R8 1
       88 LOADN                            R9 244
       89 FASTCALL3                        STRING_SUB R2 R8 R9
       91 MOVE                             R7 R2
       92 GETIMPORT                        R6 K23 [string.sub]
       94 CALL                             R6 3 1
       95 MOVE                             R4 R6
       96 LOADK                            R5 K24 ["..."]
       97 CONCAT                           R3 R4 R5
       98 SETTABLEKS                       R3 R1 K25 ["toolUseInput"]
      100 JUMPIFNOT                        R2 ; [+2]
      101 LENGTH                           R3 R2
      102 JUMP                             ; [+1]
      103 LOADNIL                          R3
      104 SETTABLEKS                       R3 R1 K26 ["toolUseInputCharacters"]
      106 GETUPVAL                         R2 4
      107 GETTABLEKS                       R2 R2 K27 ["logEvent"]
      109 GETUPVAL                         R3 5
      110 DUPTABLE                         R4 K30 [{"customFields", "standardizedFields"}]
      111 SETTABLEKS                       R1 R4 K28 ["customFields"]
      113 NEWTABLE                         R6 0 0
      115 GETUPVAL                         R7 6
      116 GETTABLEKS                       R7 R7 K31 ["StandardizedFields"]
      118 LOADNIL                          R8
      119 LOADNIL                          R9
      120 FORGPREP                         R7
      121 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      123 MOVE                             R13 R6
      124 MOVE                             R14 R11
      125 GETIMPORT                        R12 K34 [table.insert]
      127 CALL                             R12 2 0
      128 FORGLOOP                         R7 2 ; [-8]
      130 MOVE                             R5 R6
      131 SETTABLEKS                       R5 R4 K29 ["standardizedFields"]
      133 CALL                             R2 2 0
      134 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R2 K13 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "args", "assistantMode"}]
        1 GETTABLEKS                       R3 R0 K14 ["messageGuid"]
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
       45 GETTABLEKS                       R3 R0 K11 ["args"]
       47 SETTABLEKS                       R3 R2 K11 ["args"]
       49 GETTABLEKS                       R3 R0 K12 ["assistantMode"]
       51 SETTABLEKS                       R3 R2 K12 ["assistantMode"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K15 ["assign"]
       56 MOVE                             R4 R2
       57 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K18 ["getTimestampMilliseconds"]
       61 CALL                             R6 0 1
       62 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       64 CALL                             R3 2 1
       65 MOVE                             R1 R3
       66 GETUPVAL                         R2 2
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+28]
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R3 R0 K19 ["toolResultContent"]
       72 CALL                             R2 1 1
       73 GETUPVAL                         R3 4
       74 GETTABLEKS                       R4 R0 K19 ["toolResultContent"]
       76 CALL                             R3 1 1
       77 SETTABLEKS                       R2 R1 K19 ["toolResultContent"]
       79 JUMPIFNOT                        R2 ; [+2]
       80 LENGTH                           R4 R2
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R1 K20 ["toolResultSerializedCharacters"]
       85 GETTABLEKS                       R4 R3 K21 ["toolResultTextContentCount"]
       87 SETTABLEKS                       R4 R1 K21 ["toolResultTextContentCount"]
       89 GETTABLEKS                       R4 R3 K22 ["toolResultImages"]
       91 SETTABLEKS                       R4 R1 K22 ["toolResultImages"]
       93 GETTABLEKS                       R4 R3 K23 ["toolResultContentItemCount"]
       95 SETTABLEKS                       R4 R1 K23 ["toolResultContentItemCount"]
       97 GETUPVAL                         R2 5
       98 GETTABLEKS                       R2 R2 K24 ["logEvent"]
      100 GETUPVAL                         R3 6
      101 DUPTABLE                         R4 K27 [{"customFields", "standardizedFields"}]
      102 SETTABLEKS                       R1 R4 K25 ["customFields"]
      104 NEWTABLE                         R6 0 0
      106 GETUPVAL                         R7 7
      107 GETTABLEKS                       R7 R7 K28 ["StandardizedFields"]
      109 LOADNIL                          R8
      110 LOADNIL                          R9
      111 FORGPREP                         R7
      112 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      114 MOVE                             R13 R6
      115 MOVE                             R14 R11
      116 GETIMPORT                        R12 K31 [table.insert]
      118 CALL                             R12 2 0
      119 FORGLOOP                         R7 2 ; [-8]
      121 MOVE                             R5 R6
      122 SETTABLEKS                       R5 R4 K26 ["standardizedFields"]
      124 CALL                             R2 2 0
      125 RETURN                           R0 0

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
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U21
       79 CAPTURE                          UPVAL U8
       80 DUPCLOSURE                       R12 K7 [PROTO_34]
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          UPVAL U19
       84 CAPTURE                          UPVAL U22
       85 CAPTURE                          UPVAL U23
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U24
       88 CAPTURE                          UPVAL U8
       89 DUPCLOSURE                       R13 K8 [PROTO_35]
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U25
       94 CAPTURE                          UPVAL U8
       95 DUPCLOSURE                       R14 K9 [PROTO_36]
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U26
      100 CAPTURE                          UPVAL U8
      101 DUPCLOSURE                       R15 K10 [PROTO_37]
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U27
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U28
      109 CAPTURE                          UPVAL U8
      110 DUPCLOSURE                       R16 K11 [PROTO_38]
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U29
      115 CAPTURE                          UPVAL U8
      116 DUPCLOSURE                       R17 K12 [PROTO_39]
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U30
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U4
      122 DUPCLOSURE                       R18 K13 [PROTO_40]
      123 CAPTURE                          UPVAL U0
      124 CAPTURE                          UPVAL U31
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          UPVAL U32
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          UPVAL U33
      131 CAPTURE                          UPVAL U8
      132 DUPCLOSURE                       R19 K14 [PROTO_41]
      133 CAPTURE                          UPVAL U0
      134 CAPTURE                          UPVAL U34
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          UPVAL U4
      138 CAPTURE                          UPVAL U35
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U36
      141 CAPTURE                          UPVAL U8
      142 DUPCLOSURE                       R20 K15 [PROTO_42]
      143 CAPTURE                          UPVAL U0
      144 CAPTURE                          UPVAL U37
      145 CAPTURE                          UPVAL U2
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          UPVAL U4
      148 CAPTURE                          UPVAL U38
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          UPVAL U39
      151 CAPTURE                          UPVAL U8
      152 DUPCLOSURE                       R21 K16 [PROTO_43]
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          UPVAL U40
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          UPVAL U3
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          UPVAL U41
      160 CAPTURE                          UPVAL U8
      161 DUPCLOSURE                       R22 K17 [PROTO_44]
      162 CAPTURE                          UPVAL U0
      163 CAPTURE                          UPVAL U42
      164 CAPTURE                          UPVAL U2
      165 CAPTURE                          UPVAL U6
      166 CAPTURE                          UPVAL U8
      167 DUPCLOSURE                       R23 K18 [PROTO_45]
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          UPVAL U43
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          UPVAL U8
      173 CAPTURE                          UPVAL U44
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          UPVAL U4
      176 DUPCLOSURE                       R24 K19 [PROTO_46]
      177 CAPTURE                          UPVAL U0
      178 CAPTURE                          UPVAL U45
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          UPVAL U6
      183 CAPTURE                          UPVAL U46
      184 CAPTURE                          UPVAL U8
      185 DUPCLOSURE                       R25 K20 [PROTO_47]
      186 CAPTURE                          UPVAL U0
      187 CAPTURE                          UPVAL U47
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          UPVAL U3
      190 CAPTURE                          UPVAL U4
      191 CAPTURE                          UPVAL U6
      192 CAPTURE                          UPVAL U48
      193 CAPTURE                          UPVAL U8
      194 DUPCLOSURE                       R26 K21 [PROTO_48]
      195 CAPTURE                          UPVAL U0
      196 CAPTURE                          UPVAL U49
      197 DUPCLOSURE                       R27 K22 [PROTO_49]
      198 CAPTURE                          UPVAL U0
      199 CAPTURE                          UPVAL U50
      200 CAPTURE                          UPVAL U2
      201 CAPTURE                          UPVAL U6
      202 CAPTURE                          UPVAL U8
      203 DUPCLOSURE                       R28 K23 [PROTO_50]
      204 CAPTURE                          UPVAL U0
      205 CAPTURE                          UPVAL U51
      206 CAPTURE                          UPVAL U2
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          UPVAL U8
      209 DUPCLOSURE                       R29 K24 [PROTO_51]
      210 CAPTURE                          UPVAL U0
      211 CAPTURE                          UPVAL U52
      212 CAPTURE                          UPVAL U2
      213 CAPTURE                          UPVAL U6
      214 CAPTURE                          UPVAL U8
      215 DUPCLOSURE                       R30 K25 [PROTO_52]
      216 CAPTURE                          UPVAL U0
      217 CAPTURE                          UPVAL U53
      218 CAPTURE                          UPVAL U2
      219 CAPTURE                          UPVAL U6
      220 CAPTURE                          UPVAL U8
      221 DUPCLOSURE                       R31 K26 [PROTO_53]
      222 CAPTURE                          UPVAL U0
      223 CAPTURE                          UPVAL U54
      224 CAPTURE                          UPVAL U2
      225 CAPTURE                          UPVAL U6
      226 CAPTURE                          UPVAL U8
      227 DUPCLOSURE                       R32 K27 [PROTO_54]
      228 CAPTURE                          UPVAL U0
      229 CAPTURE                          UPVAL U55
      230 CAPTURE                          UPVAL U2
      231 CAPTURE                          UPVAL U6
      232 CAPTURE                          UPVAL U8
      233 DUPCLOSURE                       R33 K28 [PROTO_55]
      234 CAPTURE                          UPVAL U0
      235 CAPTURE                          UPVAL U56
      236 CAPTURE                          UPVAL U2
      237 CAPTURE                          UPVAL U6
      238 CAPTURE                          UPVAL U8
      239 DUPCLOSURE                       R34 K29 [PROTO_56]
      240 CAPTURE                          UPVAL U0
      241 CAPTURE                          UPVAL U57
      242 CAPTURE                          UPVAL U2
      243 CAPTURE                          UPVAL U3
      244 CAPTURE                          UPVAL U4
      245 CAPTURE                          UPVAL U58
      246 CAPTURE                          UPVAL U6
      247 CAPTURE                          UPVAL U8
      248 DUPCLOSURE                       R35 K30 [PROTO_57]
      249 CAPTURE                          UPVAL U0
      250 CAPTURE                          UPVAL U59
      251 CAPTURE                          UPVAL U2
      252 CAPTURE                          UPVAL U3
      253 CAPTURE                          UPVAL U4
      254 CAPTURE                          UPVAL U60
      255 CAPTURE                          UPVAL U6
      256 CAPTURE                          UPVAL U8
      257 DUPCLOSURE                       R36 K31 [PROTO_58]
      258 CAPTURE                          UPVAL U0
      259 CAPTURE                          UPVAL U61
      260 CAPTURE                          UPVAL U2
      261 CAPTURE                          UPVAL U3
      262 CAPTURE                          UPVAL U4
      263 CAPTURE                          UPVAL U62
      264 CAPTURE                          UPVAL U63
      265 NEWTABLE                         R37 64 0
      267 SETTABLEKS                       R1 R37 K32 ["logUserMessageSent"]
      269 SETTABLEKS                       R2 R37 K33 ["logAssistantMessageSent"]
      271 SETTABLEKS                       R3 R37 K34 ["logApiKeyAdded"]
      273 SETTABLEKS                       R4 R37 K35 ["logErrorEvent"]
      275 SETTABLEKS                       R16 R37 K36 ["logExternalAPIError"]
      277 SETTABLEKS                       R5 R37 K37 ["logThumbsUp"]
      279 SETTABLEKS                       R6 R37 K38 ["logThumbsDown"]
      281 SETTABLEKS                       R7 R37 K39 ["logInitialResponseLatency"]
      283 SETTABLEKS                       R8 R37 K40 ["logMarkdownError"]
      285 SETTABLEKS                       R9 R37 K41 ["logRetry"]
      287 SETTABLEKS                       R10 R37 K42 ["logStopGeneration"]
      289 SETTABLEKS                       R11 R37 K43 ["logToolStarted"]
      291 SETTABLEKS                       R12 R37 K44 ["logToolEnded"]
      293 SETTABLEKS                       R13 R37 K45 ["logToolConfirmationShown"]
      295 SETTABLEKS                       R14 R37 K46 ["logToolConfirmationResult"]
      297 SETTABLEKS                       R15 R37 K47 ["logRequestJourney"]
      299 SETTABLEKS                       R17 R37 K48 ["logMeshGenActivated"]
      301 SETTABLEKS                       R18 R37 K49 ["logMeshGenCompleted"]
      303 SETTABLEKS                       R19 R37 K50 ["logMeshGenPublishedAssets"]
      305 SETTABLEKS                       R20 R37 K51 ["logMeshGenMeshInserted"]
      307 SETTABLEKS                       R21 R37 K52 ["logPrimitiveGen"]
      309 SETTABLEKS                       R22 R37 K53 ["logIntegrationEvent"]
      311 SETTABLEKS                       R23 R37 K54 ["logExternalServerConnected"]
      313 SETTABLEKS                       R24 R37 K55 ["logQuestionAnswerCompleted"]
      315 SETTABLEKS                       R25 R37 K56 ["logPlanDecision"]
      317 SETTABLEKS                       R32 R37 K57 ["logQuickSetupToggled"]
      319 SETTABLEKS                       R26 R37 K58 ["logMaterialGeneratorSavedMaterial"]
      321 SETTABLEKS                       R34 R37 K59 ["logCompactionSuccess"]
      323 SETTABLEKS                       R35 R37 K60 ["logCompactionFallback"]
      325 GETUPVAL                         R39 5
      326 CALL                             R39 0 1
      327 JUMPIFNOT                        R39 ; [+2]
      328 MOVE                             R38 R27
      329 JUMP                             ; [+1]
      330 LOADNIL                          R38
      331 SETTABLEKS                       R38 R37 K61 ["logThreadCreated"]
      333 GETUPVAL                         R39 5
      334 CALL                             R39 0 1
      335 JUMPIFNOT                        R39 ; [+2]
      336 MOVE                             R38 R28
      337 JUMP                             ; [+1]
      338 LOADNIL                          R38
      339 SETTABLEKS                       R38 R37 K62 ["logThreadRenamed"]
      341 GETUPVAL                         R39 5
      342 CALL                             R39 0 1
      343 JUMPIFNOT                        R39 ; [+2]
      344 MOVE                             R38 R29
      345 JUMP                             ; [+1]
      346 LOADNIL                          R38
      347 SETTABLEKS                       R38 R37 K63 ["logThreadPinnedChanged"]
      349 GETUPVAL                         R39 5
      350 CALL                             R39 0 1
      351 JUMPIFNOT                        R39 ; [+2]
      352 MOVE                             R38 R30
      353 JUMP                             ; [+1]
      354 LOADNIL                          R38
      355 SETTABLEKS                       R38 R37 K64 ["logThreadDeleted"]
      357 GETUPVAL                         R39 5
      358 CALL                             R39 0 1
      359 JUMPIFNOT                        R39 ; [+2]
      360 MOVE                             R38 R31
      361 JUMP                             ; [+1]
      362 LOADNIL                          R38
      363 SETTABLEKS                       R38 R37 K65 ["logThreadDuplicated"]
      365 GETUPVAL                         R39 5
      366 CALL                             R39 0 1
      367 JUMPIFNOT                        R39 ; [+2]
      368 MOVE                             R38 R33
      369 JUMP                             ; [+1]
      370 LOADNIL                          R38
      371 SETTABLEKS                       R38 R37 K66 ["logThreadSwitched"]
      373 GETUPVAL                         R39 5
      374 CALL                             R39 0 1
      375 JUMPIFNOT                        R39 ; [+2]
      376 MOVE                             R38 R36
      377 JUMP                             ; [+1]
      378 LOADNIL                          R38
      379 SETTABLEKS                       R38 R37 K67 ["logPersistenceOperation"]
      381 GETUPVAL                         R38 64
      382 SETTABLEKS                       R38 R37 K68 ["getMessageGuid"]
      384 GETUPVAL                         R38 65
      385 SETTABLEKS                       R38 R37 K69 ["createMessageGuid"]
      387 RETURN                           R37 1

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
       66 DUPCLOSURE                       R10 K22 [PROTO_1]
       67 CAPTURE                          VAL R1
       68 DUPCLOSURE                       R11 K23 [PROTO_2]
       69 DUPCLOSURE                       R12 K24 [PROTO_3]
       70 DUPCLOSURE                       R13 K25 [PROTO_4]
       71 DUPCLOSURE                       R14 K26 [PROTO_5]
       72 DUPCLOSURE                       R15 K27 [PROTO_6]
       73 DUPCLOSURE                       R16 K28 [PROTO_7]
       74 DUPCLOSURE                       R17 K29 [PROTO_8]
       75 DUPCLOSURE                       R18 K30 [PROTO_9]
       76 CAPTURE                          VAL R16
       77 DUPCLOSURE                       R19 K31 [PROTO_11]
       78 CAPTURE                          VAL R18
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R20 K32 [PROTO_12]
       81 DUPCLOSURE                       R21 K33 [PROTO_13]
       82 DUPCLOSURE                       R22 K34 [PROTO_14]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R1
       85 GETIMPORT                        R23 K10 [require]
       87 GETTABLEKS                       R24 R0 K14 ["Src"]
       89 GETTABLEKS                       R24 R24 K35 ["Flags"]
       91 GETTABLEKS                       R24 R24 K36 ["FFlagAssistantToolCallPayloadTelemetry"]
       93 CALL                             R23 1 1
       94 GETIMPORT                        R24 K10 [require]
       96 GETTABLEKS                       R25 R0 K14 ["Src"]
       98 GETTABLEKS                       R25 R25 K35 ["Flags"]
      100 GETTABLEKS                       R25 R25 K37 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      102 CALL                             R24 1 1
      103 GETIMPORT                        R25 K10 [require]
      105 GETTABLEKS                       R26 R0 K14 ["Src"]
      107 GETTABLEKS                       R26 R26 K35 ["Flags"]
      109 GETTABLEKS                       R26 R26 K38 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      111 CALL                             R25 1 1
      112 GETIMPORT                        R26 K10 [require]
      114 GETTABLEKS                       R27 R0 K14 ["Src"]
      116 GETTABLEKS                       R27 R27 K35 ["Flags"]
      118 GETTABLEKS                       R27 R27 K39 ["FStringAssistantGroupNameKey"]
      120 CALL                             R26 1 1
      121 GETIMPORT                        R27 K10 [require]
      123 GETTABLEKS                       R28 R0 K14 ["Src"]
      125 GETTABLEKS                       R28 R28 K35 ["Flags"]
      127 GETTABLEKS                       R28 R28 K40 ["FStringNewAssistantExperimentLayer"]
      129 CALL                             R27 1 1
      130 GETTABLEKS                       R28 R3 K35 ["Flags"]
      132 GETTABLEKS                       R28 R28 K41 ["Shared"]
      134 GETTABLEKS                       R28 R28 K42 ["FFlagAssistantMultipleChatPersistence"]
      136 NEWTABLE                         R29 0 0
      138 DUPCLOSURE                       R30 K43 [PROTO_15]
      139 CAPTURE                          VAL R7
      140 DUPCLOSURE                       R31 K44 [PROTO_16]
      141 DUPCLOSURE                       R32 K45 [PROTO_17]
      142 CAPTURE                          VAL R6
      143 GETIMPORT                        R33 K48 [table.freeze]
      145 NEWTABLE                         R35 0 0
      147 GETTABLEKS                       R38 R6 K49 ["Backends"]
      149 GETTABLEKS                       R38 R38 K50 ["EventIngest"]
      151 FASTCALL2                        TABLE_INSERT R35 R38 ; [+4]
      153 MOVE                             R37 R35
      154 GETIMPORT                        R36 K52 [table.insert]
      156 CALL                             R36 2 0
      157 GETTABLEKS                       R38 R6 K49 ["Backends"]
      159 GETTABLEKS                       R38 R38 K53 ["Points"]
      161 FASTCALL2                        TABLE_INSERT R35 R38 ; [+4]
      163 MOVE                             R37 R35
      164 GETIMPORT                        R36 K52 [table.insert]
      166 CALL                             R36 2 0
      167 MOVE                             R34 R35
      168 CALL                             R33 1 1
      169 GETIMPORT                        R34 K48 [table.freeze]
      171 DUPTABLE                         R35 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      172 LOADK                            R36 K59 ["StudioAssistantUserMessageSent"]
      173 SETTABLEKS                       R36 R35 K54 ["eventName"]
      175 NEWTABLE                         R36 0 1
      177 GETTABLEKS                       R37 R6 K49 ["Backends"]
      179 GETTABLEKS                       R37 R37 K60 ["RobloxTelemetryCounter"]
      181 SETLIST                          R36 R37 1 [1]
      183 SETTABLEKS                       R36 R35 K55 ["backends"]
      185 LOADK                            R36 K61 ["Incrementing count of user messages sent."]
      186 SETTABLEKS                       R36 R35 K56 ["description"]
      188 NEWTABLE                         R36 0 3
      190 LOADN                            R37 25
      191 LOADN                            R38 7
      192 LOADN                            R39 21
      193 SETLIST                          R36 R37 3 [1]
      195 SETTABLEKS                       R36 R35 K57 ["lastUpdated"]
      197 CALL                             R34 1 1
      198 GETIMPORT                        R35 K48 [table.freeze]
      200 DUPTABLE                         R36 K63 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      201 LOADK                            R37 K64 ["CAPMessageSent"]
      202 SETTABLEKS                       R37 R36 K54 ["eventName"]
      204 SETTABLEKS                       R33 R36 K55 ["backends"]
      206 LOADK                            R37 K65 ["User message sent event with request ID."]
      207 SETTABLEKS                       R37 R36 K56 ["description"]
      209 MOVE                             R37 R25
      210 CALL                             R37 0 1
      211 SETTABLEKS                       R37 R36 K62 ["throttlingPercentage"]
      213 NEWTABLE                         R37 0 3
      215 LOADN                            R38 25
      216 LOADN                            R39 7
      217 LOADN                            R40 25
      218 SETLIST                          R37 R38 3 [1]
      220 SETTABLEKS                       R37 R36 K57 ["lastUpdated"]
      222 CALL                             R35 1 1
      223 GETIMPORT                        R36 K48 [table.freeze]
      225 DUPTABLE                         R37 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      226 LOADK                            R38 K66 ["CAPAPIKeyAdded"]
      227 SETTABLEKS                       R38 R37 K54 ["eventName"]
      229 SETTABLEKS                       R33 R37 K55 ["backends"]
      231 LOADK                            R38 K67 ["User added an API key for an LLM provider."]
      232 SETTABLEKS                       R38 R37 K56 ["description"]
      234 NEWTABLE                         R38 0 3
      236 LOADN                            R39 25
      237 LOADN                            R40 11
      238 LOADN                            R41 4
      239 SETLIST                          R38 R39 3 [1]
      241 SETTABLEKS                       R38 R37 K57 ["lastUpdated"]
      243 CALL                             R36 1 1
      244 GETIMPORT                        R37 K48 [table.freeze]
      246 DUPTABLE                         R38 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      247 LOADK                            R39 K68 ["CAPUserFeedbackThumbsUp"]
      248 SETTABLEKS                       R39 R38 K54 ["eventName"]
      250 SETTABLEKS                       R33 R38 K55 ["backends"]
      252 LOADK                            R39 K69 ["User feedback thumbs up event with message context."]
      253 SETTABLEKS                       R39 R38 K56 ["description"]
      255 NEWTABLE                         R39 0 3
      257 LOADN                            R40 25
      258 LOADN                            R41 7
      259 LOADN                            R42 25
      260 SETLIST                          R39 R40 3 [1]
      262 SETTABLEKS                       R39 R38 K57 ["lastUpdated"]
      264 CALL                             R37 1 1
      265 GETIMPORT                        R38 K48 [table.freeze]
      267 DUPTABLE                         R39 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      268 LOADK                            R40 K70 ["CAPUserFeedbackThumbsDown"]
      269 SETTABLEKS                       R40 R39 K54 ["eventName"]
      271 SETTABLEKS                       R33 R39 K55 ["backends"]
      273 LOADK                            R40 K71 ["User feedback thumbs down event with message context."]
      274 SETTABLEKS                       R40 R39 K56 ["description"]
      276 NEWTABLE                         R40 0 3
      278 LOADN                            R41 25
      279 LOADN                            R42 7
      280 LOADN                            R43 25
      281 SETLIST                          R40 R41 3 [1]
      283 SETTABLEKS                       R40 R39 K57 ["lastUpdated"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K48 [table.freeze]
      288 DUPTABLE                         R40 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      289 LOADK                            R41 K72 ["StudioAssistantThumbsUp"]
      290 SETTABLEKS                       R41 R40 K54 ["eventName"]
      292 NEWTABLE                         R41 0 1
      294 GETTABLEKS                       R42 R6 K49 ["Backends"]
      296 GETTABLEKS                       R42 R42 K60 ["RobloxTelemetryCounter"]
      298 SETLIST                          R41 R42 1 [1]
      300 SETTABLEKS                       R41 R40 K55 ["backends"]
      302 LOADK                            R41 K73 ["Incrementing count of thumbs up events."]
      303 SETTABLEKS                       R41 R40 K56 ["description"]
      305 NEWTABLE                         R41 0 3
      307 LOADN                            R42 25
      308 LOADN                            R43 7
      309 LOADN                            R44 21
      310 SETLIST                          R41 R42 3 [1]
      312 SETTABLEKS                       R41 R40 K57 ["lastUpdated"]
      314 CALL                             R39 1 1
      315 GETIMPORT                        R40 K48 [table.freeze]
      317 DUPTABLE                         R41 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      318 LOADK                            R42 K74 ["StudioAssistantThumbsDown"]
      319 SETTABLEKS                       R42 R41 K54 ["eventName"]
      321 NEWTABLE                         R42 0 1
      323 GETTABLEKS                       R43 R6 K49 ["Backends"]
      325 GETTABLEKS                       R43 R43 K60 ["RobloxTelemetryCounter"]
      327 SETLIST                          R42 R43 1 [1]
      329 SETTABLEKS                       R42 R41 K55 ["backends"]
      331 LOADK                            R42 K75 ["Incrementing count of thumbs down events."]
      332 SETTABLEKS                       R42 R41 K56 ["description"]
      334 NEWTABLE                         R42 0 3
      336 LOADN                            R43 25
      337 LOADN                            R44 7
      338 LOADN                            R45 21
      339 SETLIST                          R42 R43 3 [1]
      341 SETTABLEKS                       R42 R41 K57 ["lastUpdated"]
      343 CALL                             R40 1 1
      344 GETIMPORT                        R41 K48 [table.freeze]
      346 DUPTABLE                         R42 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      347 LOADK                            R43 K76 ["StudioAssistantInitialResponseLatency"]
      348 SETTABLEKS                       R43 R42 K54 ["eventName"]
      350 NEWTABLE                         R43 0 1
      352 GETTABLEKS                       R44 R6 K49 ["Backends"]
      354 GETTABLEKS                       R44 R44 K77 ["RobloxTelemetryStat"]
      356 SETLIST                          R43 R44 1 [1]
      358 SETTABLEKS                       R43 R42 K55 ["backends"]
      360 LOADK                            R43 K78 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      361 SETTABLEKS                       R43 R42 K56 ["description"]
      363 NEWTABLE                         R43 0 3
      365 LOADN                            R44 25
      366 LOADN                            R45 7
      367 LOADN                            R46 21
      368 SETLIST                          R43 R44 3 [1]
      370 SETTABLEKS                       R43 R42 K57 ["lastUpdated"]
      372 CALL                             R41 1 1
      373 GETIMPORT                        R42 K48 [table.freeze]
      375 DUPTABLE                         R43 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      376 LOADK                            R44 K79 ["StudioAssistantRequestJourney"]
      377 SETTABLEKS                       R44 R43 K54 ["eventName"]
      379 NEWTABLE                         R44 0 1
      381 GETTABLEKS                       R45 R6 K49 ["Backends"]
      383 GETTABLEKS                       R45 R45 K77 ["RobloxTelemetryStat"]
      385 SETLIST                          R44 R45 1 [1]
      387 SETTABLEKS                       R44 R43 K55 ["backends"]
      389 LOADK                            R44 K80 ["User request journey duration in seconds. Time between sending first message to request ended."]
      390 SETTABLEKS                       R44 R43 K56 ["description"]
      392 NEWTABLE                         R44 0 3
      394 LOADN                            R45 25
      395 LOADN                            R46 10
      396 LOADN                            R47 22
      397 SETLIST                          R44 R45 3 [1]
      399 SETTABLEKS                       R44 R43 K57 ["lastUpdated"]
      401 CALL                             R42 1 1
      402 GETIMPORT                        R43 K48 [table.freeze]
      404 DUPTABLE                         R44 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      405 LOADK                            R45 K81 ["CAPRequestJourney"]
      406 SETTABLEKS                       R45 R44 K54 ["eventName"]
      408 SETTABLEKS                       R33 R44 K55 ["backends"]
      410 LOADK                            R45 K82 ["User request journey detail."]
      411 SETTABLEKS                       R45 R44 K56 ["description"]
      413 NEWTABLE                         R45 0 3
      415 LOADN                            R46 25
      416 LOADN                            R47 11
      417 LOADN                            R48 1
      418 SETLIST                          R45 R46 3 [1]
      420 SETTABLEKS                       R45 R44 K57 ["lastUpdated"]
      422 CALL                             R43 1 1
      423 GETIMPORT                        R44 K48 [table.freeze]
      425 DUPTABLE                         R45 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      426 LOADK                            R46 K83 ["StudioAssistantErrorEvent"]
      427 SETTABLEKS                       R46 R45 K54 ["eventName"]
      429 NEWTABLE                         R46 0 1
      431 GETTABLEKS                       R47 R6 K49 ["Backends"]
      433 GETTABLEKS                       R47 R47 K60 ["RobloxTelemetryCounter"]
      435 SETLIST                          R46 R47 1 [1]
      437 SETTABLEKS                       R46 R45 K55 ["backends"]
      439 LOADK                            R46 K84 ["Incrementing count of error events with error type attached."]
      440 SETTABLEKS                       R46 R45 K56 ["description"]
      442 NEWTABLE                         R46 0 3
      444 LOADN                            R47 25
      445 LOADN                            R48 7
      446 LOADN                            R49 21
      447 SETLIST                          R46 R47 3 [1]
      449 SETTABLEKS                       R46 R45 K57 ["lastUpdated"]
      451 CALL                             R44 1 1
      452 GETIMPORT                        R45 K48 [table.freeze]
      454 DUPTABLE                         R46 K63 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      455 LOADK                            R47 K85 ["StudioAssistantMarkdownError"]
      456 SETTABLEKS                       R47 R46 K54 ["eventName"]
      458 NEWTABLE                         R47 0 1
      460 GETTABLEKS                       R48 R6 K49 ["Backends"]
      462 GETTABLEKS                       R48 R48 K53 ["Points"]
      464 SETLIST                          R47 R48 1 [1]
      466 SETTABLEKS                       R47 R46 K55 ["backends"]
      468 LOADK                            R47 K86 ["Collection of markdown error events, with markdown attached."]
      469 SETTABLEKS                       R47 R46 K56 ["description"]
      471 MOVE                             R47 R24
      472 CALL                             R47 0 1
      473 SETTABLEKS                       R47 R46 K62 ["throttlingPercentage"]
      475 NEWTABLE                         R47 0 3
      477 LOADN                            R48 25
      478 LOADN                            R49 7
      479 LOADN                            R50 21
      480 SETLIST                          R47 R48 3 [1]
      482 SETTABLEKS                       R47 R46 K57 ["lastUpdated"]
      484 CALL                             R45 1 1
      485 GETIMPORT                        R46 K48 [table.freeze]
      487 DUPTABLE                         R47 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      488 LOADK                            R48 K87 ["CAPMessageResubmitted"]
      489 SETTABLEKS                       R48 R47 K54 ["eventName"]
      491 SETTABLEKS                       R33 R47 K55 ["backends"]
      493 LOADK                            R48 K88 ["User message retry/resubmit event with request ID."]
      494 SETTABLEKS                       R48 R47 K56 ["description"]
      496 NEWTABLE                         R48 0 3
      498 LOADN                            R49 25
      499 LOADN                            R50 8
      500 LOADN                            R51 7
      501 SETLIST                          R48 R49 3 [1]
      503 SETTABLEKS                       R48 R47 K57 ["lastUpdated"]
      505 CALL                             R46 1 1
      506 GETIMPORT                        R47 K48 [table.freeze]
      508 DUPTABLE                         R48 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      509 LOADK                            R49 K89 ["CAPStopGeneration"]
      510 SETTABLEKS                       R49 R48 K54 ["eventName"]
      512 SETTABLEKS                       R33 R48 K55 ["backends"]
      514 LOADK                            R49 K90 ["User stop generation event with request ID."]
      515 SETTABLEKS                       R49 R48 K56 ["description"]
      517 NEWTABLE                         R49 0 3
      519 LOADN                            R50 25
      520 LOADN                            R51 8
      521 LOADN                            R52 7
      522 SETLIST                          R49 R50 3 [1]
      524 SETTABLEKS                       R49 R48 K57 ["lastUpdated"]
      526 CALL                             R47 1 1
      527 GETIMPORT                        R48 K48 [table.freeze]
      529 DUPTABLE                         R49 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      530 LOADK                            R50 K91 ["CAPToolEnded"]
      531 SETTABLEKS                       R50 R49 K54 ["eventName"]
      533 SETTABLEKS                       R33 R49 K55 ["backends"]
      535 LOADK                            R50 K92 ["Tool invocation ended event with request ID and tool name"]
      536 SETTABLEKS                       R50 R49 K56 ["description"]
      538 NEWTABLE                         R50 0 3
      540 LOADN                            R51 25
      541 LOADN                            R52 7
      542 LOADN                            R53 21
      543 SETLIST                          R50 R51 3 [1]
      545 SETTABLEKS                       R50 R49 K57 ["lastUpdated"]
      547 CALL                             R48 1 1
      548 GETIMPORT                        R49 K48 [table.freeze]
      550 DUPTABLE                         R50 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      551 LOADK                            R51 K93 ["CAPToolStarted"]
      552 SETTABLEKS                       R51 R50 K54 ["eventName"]
      554 SETTABLEKS                       R33 R50 K55 ["backends"]
      556 LOADK                            R51 K94 ["Tool invocation started event with request ID and tool name."]
      557 SETTABLEKS                       R51 R50 K56 ["description"]
      559 NEWTABLE                         R51 0 3
      561 LOADN                            R52 25
      562 LOADN                            R53 8
      563 LOADN                            R54 7
      564 SETLIST                          R51 R52 3 [1]
      566 SETTABLEKS                       R51 R50 K57 ["lastUpdated"]
      568 CALL                             R49 1 1
      569 GETIMPORT                        R50 K48 [table.freeze]
      571 DUPTABLE                         R51 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      572 LOADK                            R52 K95 ["CAPToolConfirmationShown"]
      573 SETTABLEKS                       R52 R51 K54 ["eventName"]
      575 SETTABLEKS                       R33 R51 K55 ["backends"]
      577 LOADK                            R52 K96 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      578 SETTABLEKS                       R52 R51 K56 ["description"]
      580 NEWTABLE                         R52 0 3
      582 LOADN                            R53 25
      583 LOADN                            R54 9
      584 LOADN                            R55 19
      585 SETLIST                          R52 R53 3 [1]
      587 SETTABLEKS                       R52 R51 K57 ["lastUpdated"]
      589 CALL                             R50 1 1
      590 GETIMPORT                        R51 K48 [table.freeze]
      592 DUPTABLE                         R52 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      593 LOADK                            R53 K97 ["CAPToolConfirmationResult"]
      594 SETTABLEKS                       R53 R52 K54 ["eventName"]
      596 SETTABLEKS                       R33 R52 K55 ["backends"]
      598 LOADK                            R53 K98 ["Tool confirmation dialog result event with request ID and user choice."]
      599 SETTABLEKS                       R53 R52 K56 ["description"]
      601 NEWTABLE                         R53 0 3
      603 LOADN                            R54 25
      604 LOADN                            R55 9
      605 LOADN                            R56 19
      606 SETLIST                          R53 R54 3 [1]
      608 SETTABLEKS                       R53 R52 K57 ["lastUpdated"]
      610 CALL                             R51 1 1
      611 GETIMPORT                        R52 K48 [table.freeze]
      613 DUPTABLE                         R53 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      614 LOADK                            R54 K99 ["CAPExternalAPIError"]
      615 SETTABLEKS                       R54 R53 K54 ["eventName"]
      617 SETTABLEKS                       R33 R53 K55 ["backends"]
      619 LOADK                            R54 K100 ["External LLM API error event with request ID, model, and HTTP status code."]
      620 SETTABLEKS                       R54 R53 K56 ["description"]
      622 NEWTABLE                         R54 0 3
      624 LOADN                            R55 25
      625 LOADN                            R56 12
      626 LOADN                            R57 16
      627 SETLIST                          R54 R55 3 [1]
      629 SETTABLEKS                       R54 R53 K57 ["lastUpdated"]
      631 CALL                             R52 1 1
      632 GETIMPORT                        R53 K48 [table.freeze]
      634 DUPTABLE                         R54 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      635 LOADK                            R55 K101 ["CAPMeshGenActivated"]
      636 SETTABLEKS                       R55 R54 K54 ["eventName"]
      638 NEWTABLE                         R55 0 1
      640 GETTABLEKS                       R56 R6 K49 ["Backends"]
      642 GETTABLEKS                       R56 R56 K60 ["RobloxTelemetryCounter"]
      644 SETLIST                          R55 R56 1 [1]
      646 SETTABLEKS                       R55 R54 K55 ["backends"]
      648 LOADK                            R55 K102 ["Count of MeshGen tool activations."]
      649 SETTABLEKS                       R55 R54 K56 ["description"]
      651 NEWTABLE                         R55 0 3
      653 LOADN                            R56 26
      654 LOADN                            R57 2
      655 LOADN                            R58 6
      656 SETLIST                          R55 R56 3 [1]
      658 SETTABLEKS                       R55 R54 K57 ["lastUpdated"]
      660 CALL                             R53 1 1
      661 GETIMPORT                        R54 K48 [table.freeze]
      663 DUPTABLE                         R55 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      664 LOADK                            R56 K103 ["CAPMeshGenCompletedSuccess"]
      665 SETTABLEKS                       R56 R55 K54 ["eventName"]
      667 NEWTABLE                         R56 0 1
      669 GETTABLEKS                       R57 R6 K49 ["Backends"]
      671 GETTABLEKS                       R57 R57 K60 ["RobloxTelemetryCounter"]
      673 SETLIST                          R56 R57 1 [1]
      675 SETTABLEKS                       R56 R55 K55 ["backends"]
      677 LOADK                            R56 K104 ["Count of successful MeshGen completions."]
      678 SETTABLEKS                       R56 R55 K56 ["description"]
      680 NEWTABLE                         R56 0 3
      682 LOADN                            R57 26
      683 LOADN                            R58 2
      684 LOADN                            R59 6
      685 SETLIST                          R56 R57 3 [1]
      687 SETTABLEKS                       R56 R55 K57 ["lastUpdated"]
      689 CALL                             R54 1 1
      690 GETIMPORT                        R55 K48 [table.freeze]
      692 DUPTABLE                         R56 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      693 LOADK                            R57 K105 ["CAPMeshGenCompletedFailure"]
      694 SETTABLEKS                       R57 R56 K54 ["eventName"]
      696 NEWTABLE                         R57 0 1
      698 GETTABLEKS                       R58 R6 K49 ["Backends"]
      700 GETTABLEKS                       R58 R58 K60 ["RobloxTelemetryCounter"]
      702 SETLIST                          R57 R58 1 [1]
      704 SETTABLEKS                       R57 R56 K55 ["backends"]
      706 LOADK                            R57 K106 ["Count of failed MeshGen completions."]
      707 SETTABLEKS                       R57 R56 K56 ["description"]
      709 NEWTABLE                         R57 0 3
      711 LOADN                            R58 26
      712 LOADN                            R59 2
      713 LOADN                            R60 6
      714 SETLIST                          R57 R58 3 [1]
      716 SETTABLEKS                       R57 R56 K57 ["lastUpdated"]
      718 CALL                             R55 1 1
      719 GETIMPORT                        R56 K48 [table.freeze]
      721 DUPTABLE                         R57 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      722 LOADK                            R58 K107 ["CAPMeshGenCompleted"]
      723 SETTABLEKS                       R58 R57 K54 ["eventName"]
      725 SETTABLEKS                       R33 R57 K55 ["backends"]
      727 LOADK                            R58 K108 ["MeshGen generation completed event with details."]
      728 SETTABLEKS                       R58 R57 K56 ["description"]
      730 NEWTABLE                         R58 0 3
      732 LOADN                            R59 26
      733 LOADN                            R60 2
      734 LOADN                            R61 6
      735 SETLIST                          R58 R59 3 [1]
      737 SETTABLEKS                       R58 R57 K57 ["lastUpdated"]
      739 CALL                             R56 1 1
      740 GETIMPORT                        R57 K48 [table.freeze]
      742 DUPTABLE                         R58 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      743 LOADK                            R59 K109 ["CAPMeshGenPublishedAssetsSuccess"]
      744 SETTABLEKS                       R59 R58 K54 ["eventName"]
      746 NEWTABLE                         R59 0 1
      748 GETTABLEKS                       R60 R6 K49 ["Backends"]
      750 GETTABLEKS                       R60 R60 K60 ["RobloxTelemetryCounter"]
      752 SETLIST                          R59 R60 1 [1]
      754 SETTABLEKS                       R59 R58 K55 ["backends"]
      756 LOADK                            R59 K110 ["Count of successful MeshGen asset publications."]
      757 SETTABLEKS                       R59 R58 K56 ["description"]
      759 NEWTABLE                         R59 0 3
      761 LOADN                            R60 26
      762 LOADN                            R61 2
      763 LOADN                            R62 6
      764 SETLIST                          R59 R60 3 [1]
      766 SETTABLEKS                       R59 R58 K57 ["lastUpdated"]
      768 CALL                             R57 1 1
      769 GETIMPORT                        R58 K48 [table.freeze]
      771 DUPTABLE                         R59 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      772 LOADK                            R60 K111 ["CAPMeshGenPublishedAssetsFailure"]
      773 SETTABLEKS                       R60 R59 K54 ["eventName"]
      775 NEWTABLE                         R60 0 1
      777 GETTABLEKS                       R61 R6 K49 ["Backends"]
      779 GETTABLEKS                       R61 R61 K60 ["RobloxTelemetryCounter"]
      781 SETLIST                          R60 R61 1 [1]
      783 SETTABLEKS                       R60 R59 K55 ["backends"]
      785 LOADK                            R60 K112 ["Count of failed MeshGen asset publications."]
      786 SETTABLEKS                       R60 R59 K56 ["description"]
      788 NEWTABLE                         R60 0 3
      790 LOADN                            R61 26
      791 LOADN                            R62 2
      792 LOADN                            R63 6
      793 SETLIST                          R60 R61 3 [1]
      795 SETTABLEKS                       R60 R59 K57 ["lastUpdated"]
      797 CALL                             R58 1 1
      798 GETIMPORT                        R59 K48 [table.freeze]
      800 DUPTABLE                         R60 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      801 LOADK                            R61 K113 ["CAPMeshGenPublishedAssets"]
      802 SETTABLEKS                       R61 R60 K54 ["eventName"]
      804 SETTABLEKS                       R33 R60 K55 ["backends"]
      806 LOADK                            R61 K114 ["MeshGen assets published event with details."]
      807 SETTABLEKS                       R61 R60 K56 ["description"]
      809 NEWTABLE                         R61 0 3
      811 LOADN                            R62 26
      812 LOADN                            R63 2
      813 LOADN                            R64 6
      814 SETLIST                          R61 R62 3 [1]
      816 SETTABLEKS                       R61 R60 K57 ["lastUpdated"]
      818 CALL                             R59 1 1
      819 GETIMPORT                        R60 K48 [table.freeze]
      821 DUPTABLE                         R61 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      822 LOADK                            R62 K115 ["CAPMeshGenMeshInsertedSuccess"]
      823 SETTABLEKS                       R62 R61 K54 ["eventName"]
      825 NEWTABLE                         R62 0 1
      827 GETTABLEKS                       R63 R6 K49 ["Backends"]
      829 GETTABLEKS                       R63 R63 K60 ["RobloxTelemetryCounter"]
      831 SETLIST                          R62 R63 1 [1]
      833 SETTABLEKS                       R62 R61 K55 ["backends"]
      835 LOADK                            R62 K116 ["Count of successful MeshGen mesh insertions."]
      836 SETTABLEKS                       R62 R61 K56 ["description"]
      838 NEWTABLE                         R62 0 3
      840 LOADN                            R63 26
      841 LOADN                            R64 2
      842 LOADN                            R65 6
      843 SETLIST                          R62 R63 3 [1]
      845 SETTABLEKS                       R62 R61 K57 ["lastUpdated"]
      847 CALL                             R60 1 1
      848 GETIMPORT                        R61 K48 [table.freeze]
      850 DUPTABLE                         R62 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      851 LOADK                            R63 K117 ["CAPMeshGenMeshInsertedFailure"]
      852 SETTABLEKS                       R63 R62 K54 ["eventName"]
      854 NEWTABLE                         R63 0 1
      856 GETTABLEKS                       R64 R6 K49 ["Backends"]
      858 GETTABLEKS                       R64 R64 K60 ["RobloxTelemetryCounter"]
      860 SETLIST                          R63 R64 1 [1]
      862 SETTABLEKS                       R63 R62 K55 ["backends"]
      864 LOADK                            R63 K118 ["Count of failed MeshGen mesh insertions."]
      865 SETTABLEKS                       R63 R62 K56 ["description"]
      867 NEWTABLE                         R63 0 3
      869 LOADN                            R64 26
      870 LOADN                            R65 2
      871 LOADN                            R66 6
      872 SETLIST                          R63 R64 3 [1]
      874 SETTABLEKS                       R63 R62 K57 ["lastUpdated"]
      876 CALL                             R61 1 1
      877 GETIMPORT                        R62 K48 [table.freeze]
      879 DUPTABLE                         R63 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      880 LOADK                            R64 K119 ["CAPMeshGenMeshInserted"]
      881 SETTABLEKS                       R64 R63 K54 ["eventName"]
      883 SETTABLEKS                       R33 R63 K55 ["backends"]
      885 LOADK                            R64 K120 ["MeshGen mesh inserted event with details."]
      886 SETTABLEKS                       R64 R63 K56 ["description"]
      888 NEWTABLE                         R64 0 3
      890 LOADN                            R65 26
      891 LOADN                            R66 2
      892 LOADN                            R67 6
      893 SETLIST                          R64 R65 3 [1]
      895 SETTABLEKS                       R64 R63 K57 ["lastUpdated"]
      897 CALL                             R62 1 1
      898 GETIMPORT                        R63 K48 [table.freeze]
      900 DUPTABLE                         R64 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      901 LOADK                            R65 K121 ["StudioAssistantPrimitiveGenCompletedCount"]
      902 SETTABLEKS                       R65 R64 K54 ["eventName"]
      904 NEWTABLE                         R65 0 1
      906 GETTABLEKS                       R66 R6 K49 ["Backends"]
      908 GETTABLEKS                       R66 R66 K60 ["RobloxTelemetryCounter"]
      910 SETLIST                          R65 R66 1 [1]
      912 SETTABLEKS                       R65 R64 K55 ["backends"]
      914 LOADK                            R65 K122 ["Count of PrimitiveGen completions with success status."]
      915 SETTABLEKS                       R65 R64 K56 ["description"]
      917 NEWTABLE                         R65 0 3
      919 LOADN                            R66 26
      920 LOADN                            R67 3
      921 LOADN                            R68 12
      922 SETLIST                          R65 R66 3 [1]
      924 SETTABLEKS                       R65 R64 K57 ["lastUpdated"]
      926 CALL                             R63 1 1
      927 GETIMPORT                        R64 K48 [table.freeze]
      929 DUPTABLE                         R65 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      930 LOADK                            R66 K123 ["StudioAssistantPrimitiveGenCompleted"]
      931 SETTABLEKS                       R66 R65 K54 ["eventName"]
      933 SETTABLEKS                       R33 R65 K55 ["backends"]
      935 LOADK                            R66 K124 ["PrimitiveGen completion event with generation, prompt, render latency, and dependency details."]
      936 SETTABLEKS                       R66 R65 K56 ["description"]
      938 NEWTABLE                         R66 0 3
      940 LOADN                            R67 26
      941 LOADN                            R68 3
      942 LOADN                            R69 12
      943 SETLIST                          R66 R67 3 [1]
      945 SETTABLEKS                       R66 R65 K57 ["lastUpdated"]
      947 CALL                             R64 1 1
      948 GETIMPORT                        R65 K48 [table.freeze]
      950 DUPTABLE                         R66 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      951 LOADK                            R67 K125 ["StudioAssistantIntegrationAction"]
      952 SETTABLEKS                       R67 R66 K54 ["eventName"]
      954 SETTABLEKS                       R33 R66 K55 ["backends"]
      956 LOADK                            R67 K126 ["Integration event with action, label, and URL."]
      957 SETTABLEKS                       R67 R66 K56 ["description"]
      959 NEWTABLE                         R67 0 3
      961 LOADN                            R68 26
      962 LOADN                            R69 2
      963 LOADN                            R70 3
      964 SETLIST                          R67 R68 3 [1]
      966 SETTABLEKS                       R67 R66 K57 ["lastUpdated"]
      968 CALL                             R65 1 1
      969 GETIMPORT                        R66 K48 [table.freeze]
      971 DUPTABLE                         R67 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      972 LOADK                            R68 K127 ["StudioAssistantExternalServerConnectedEvent"]
      973 SETTABLEKS                       R68 R67 K54 ["eventName"]
      975 SETTABLEKS                       R33 R67 K55 ["backends"]
      977 LOADK                            R68 K128 ["External server connected event with session ID"]
      978 SETTABLEKS                       R68 R67 K56 ["description"]
      980 NEWTABLE                         R68 0 3
      982 LOADN                            R69 26
      983 LOADN                            R70 2
      984 LOADN                            R71 25
      985 SETLIST                          R68 R69 3 [1]
      987 SETTABLEKS                       R68 R67 K57 ["lastUpdated"]
      989 CALL                             R66 1 1
      990 GETIMPORT                        R67 K48 [table.freeze]
      992 DUPTABLE                         R68 K58 [{"eventName", "backends", "description", "lastUpdated"}]
      993 LOADK                            R69 K129 ["StudioAssistantExternalServerConnectedCounter"]
      994 SETTABLEKS                       R69 R68 K54 ["eventName"]
      996 NEWTABLE                         R69 0 1
      998 GETTABLEKS                       R70 R6 K49 ["Backends"]
     1000 GETTABLEKS                       R70 R70 K60 ["RobloxTelemetryCounter"]
     1002 SETLIST                          R69 R70 1 [1]
     1004 SETTABLEKS                       R69 R68 K55 ["backends"]
     1006 LOADK                            R69 K128 ["External server connected event with session ID"]
     1007 SETTABLEKS                       R69 R68 K56 ["description"]
     1009 NEWTABLE                         R69 0 3
     1011 LOADN                            R70 26
     1012 LOADN                            R71 2
     1013 LOADN                            R72 25
     1014 SETLIST                          R69 R70 3 [1]
     1016 SETTABLEKS                       R69 R68 K57 ["lastUpdated"]
     1018 CALL                             R67 1 1
     1019 GETIMPORT                        R68 K48 [table.freeze]
     1021 DUPTABLE                         R69 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1022 LOADK                            R70 K130 ["CAPQuestionAnswerCompleted"]
     1023 SETTABLEKS                       R70 R69 K54 ["eventName"]
     1025 SETTABLEKS                       R33 R69 K55 ["backends"]
     1027 LOADK                            R70 K131 ["Question answer tool completed event with full question/answer context."]
     1028 SETTABLEKS                       R70 R69 K56 ["description"]
     1030 NEWTABLE                         R70 0 3
     1032 LOADN                            R71 26
     1033 LOADN                            R72 4
     1034 LOADN                            R73 1
     1035 SETLIST                          R70 R71 3 [1]
     1037 SETTABLEKS                       R70 R69 K57 ["lastUpdated"]
     1039 CALL                             R68 1 1
     1040 GETIMPORT                        R69 K48 [table.freeze]
     1042 DUPTABLE                         R70 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1043 LOADK                            R71 K132 ["StudioAssistantQuestionAnswerCompleted"]
     1044 SETTABLEKS                       R71 R70 K54 ["eventName"]
     1046 NEWTABLE                         R71 0 1
     1048 GETTABLEKS                       R72 R6 K49 ["Backends"]
     1050 GETTABLEKS                       R72 R72 K60 ["RobloxTelemetryCounter"]
     1052 SETLIST                          R71 R72 1 [1]
     1054 SETTABLEKS                       R71 R70 K55 ["backends"]
     1056 LOADK                            R71 K133 ["Count of question answer tool completions."]
     1057 SETTABLEKS                       R71 R70 K56 ["description"]
     1059 NEWTABLE                         R71 0 3
     1061 LOADN                            R72 26
     1062 LOADN                            R73 4
     1063 LOADN                            R74 1
     1064 SETLIST                          R71 R72 3 [1]
     1066 SETTABLEKS                       R71 R70 K57 ["lastUpdated"]
     1068 CALL                             R69 1 1
     1069 GETIMPORT                        R70 K48 [table.freeze]
     1071 DUPTABLE                         R71 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1072 LOADK                            R72 K134 ["CAPPlanDecision"]
     1073 SETTABLEKS                       R72 R71 K54 ["eventName"]
     1075 SETTABLEKS                       R33 R71 K55 ["backends"]
     1077 LOADK                            R72 K135 ["Plan decision event with full plan context when user accepts or rejects a plan."]
     1078 SETTABLEKS                       R72 R71 K56 ["description"]
     1080 NEWTABLE                         R72 0 3
     1082 LOADN                            R73 26
     1083 LOADN                            R74 4
     1084 LOADN                            R75 1
     1085 SETLIST                          R72 R73 3 [1]
     1087 SETTABLEKS                       R72 R71 K57 ["lastUpdated"]
     1089 CALL                             R70 1 1
     1090 GETIMPORT                        R71 K48 [table.freeze]
     1092 DUPTABLE                         R72 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1093 LOADK                            R73 K136 ["StudioAssistantPlanDecision"]
     1094 SETTABLEKS                       R73 R72 K54 ["eventName"]
     1096 NEWTABLE                         R73 0 1
     1098 GETTABLEKS                       R74 R6 K49 ["Backends"]
     1100 GETTABLEKS                       R74 R74 K60 ["RobloxTelemetryCounter"]
     1102 SETLIST                          R73 R74 1 [1]
     1104 SETTABLEKS                       R73 R72 K55 ["backends"]
     1106 LOADK                            R73 K137 ["Count of plan decisions."]
     1107 SETTABLEKS                       R73 R72 K56 ["description"]
     1109 NEWTABLE                         R73 0 3
     1111 LOADN                            R74 26
     1112 LOADN                            R75 4
     1113 LOADN                            R76 1
     1114 SETLIST                          R73 R74 3 [1]
     1116 SETTABLEKS                       R73 R72 K57 ["lastUpdated"]
     1118 CALL                             R71 1 1
     1119 GETIMPORT                        R72 K48 [table.freeze]
     1121 DUPTABLE                         R73 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1122 LOADK                            R74 K138 ["SBT_MaterialGeneratorSavedMaterial"]
     1123 SETTABLEKS                       R74 R73 K54 ["eventName"]
     1125 NEWTABLE                         R74 0 1
     1127 GETTABLEKS                       R75 R6 K49 ["Backends"]
     1129 GETTABLEKS                       R75 R75 K60 ["RobloxTelemetryCounter"]
     1131 SETLIST                          R74 R75 1 [1]
     1133 SETTABLEKS                       R74 R73 K55 ["backends"]
     1135 LOADK                            R74 K139 ["Counter to track number of saved materials"]
     1136 SETTABLEKS                       R74 R73 K56 ["description"]
     1138 NEWTABLE                         R74 0 3
     1140 LOADN                            R75 24
     1141 LOADN                            R76 10
     1142 LOADN                            R77 15
     1143 SETLIST                          R74 R75 3 [1]
     1145 SETTABLEKS                       R74 R73 K57 ["lastUpdated"]
     1147 CALL                             R72 1 1
     1148 GETIMPORT                        R73 K48 [table.freeze]
     1150 DUPTABLE                         R74 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1151 LOADK                            R75 K140 ["StudioAssistantThreadCreated"]
     1152 SETTABLEKS                       R75 R74 K54 ["eventName"]
     1154 SETTABLEKS                       R33 R74 K55 ["backends"]
     1156 LOADK                            R75 K141 ["Thread created event with details."]
     1157 SETTABLEKS                       R75 R74 K56 ["description"]
     1159 NEWTABLE                         R75 0 3
     1161 LOADN                            R76 26
     1162 LOADN                            R77 3
     1163 LOADN                            R78 10
     1164 SETLIST                          R75 R76 3 [1]
     1166 SETTABLEKS                       R75 R74 K57 ["lastUpdated"]
     1168 CALL                             R73 1 1
     1169 GETIMPORT                        R74 K48 [table.freeze]
     1171 DUPTABLE                         R75 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1172 LOADK                            R76 K142 ["StudioAssistantThreadRenamed"]
     1173 SETTABLEKS                       R76 R75 K54 ["eventName"]
     1175 SETTABLEKS                       R33 R75 K55 ["backends"]
     1177 LOADK                            R76 K143 ["Thread named event with details."]
     1178 SETTABLEKS                       R76 R75 K56 ["description"]
     1180 NEWTABLE                         R76 0 3
     1182 LOADN                            R77 26
     1183 LOADN                            R78 3
     1184 LOADN                            R79 10
     1185 SETLIST                          R76 R77 3 [1]
     1187 SETTABLEKS                       R76 R75 K57 ["lastUpdated"]
     1189 CALL                             R74 1 1
     1190 GETIMPORT                        R75 K48 [table.freeze]
     1192 DUPTABLE                         R76 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1193 LOADK                            R77 K144 ["StudioAssistantThreadPinnedChanged"]
     1194 SETTABLEKS                       R77 R76 K54 ["eventName"]
     1196 SETTABLEKS                       R33 R76 K55 ["backends"]
     1198 LOADK                            R77 K145 ["Thread pinned changed event with details."]
     1199 SETTABLEKS                       R77 R76 K56 ["description"]
     1201 NEWTABLE                         R77 0 3
     1203 LOADN                            R78 26
     1204 LOADN                            R79 3
     1205 LOADN                            R80 10
     1206 SETLIST                          R77 R78 3 [1]
     1208 SETTABLEKS                       R77 R76 K57 ["lastUpdated"]
     1210 CALL                             R75 1 1
     1211 GETIMPORT                        R76 K48 [table.freeze]
     1213 DUPTABLE                         R77 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1214 LOADK                            R78 K146 ["StudioAssistantThreadDeleted"]
     1215 SETTABLEKS                       R78 R77 K54 ["eventName"]
     1217 SETTABLEKS                       R33 R77 K55 ["backends"]
     1219 LOADK                            R78 K147 ["Thread deleted event with details."]
     1220 SETTABLEKS                       R78 R77 K56 ["description"]
     1222 NEWTABLE                         R78 0 3
     1224 LOADN                            R79 26
     1225 LOADN                            R80 3
     1226 LOADN                            R81 10
     1227 SETLIST                          R78 R79 3 [1]
     1229 SETTABLEKS                       R78 R77 K57 ["lastUpdated"]
     1231 CALL                             R76 1 1
     1232 GETIMPORT                        R77 K48 [table.freeze]
     1234 DUPTABLE                         R78 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1235 LOADK                            R79 K148 ["StudioAssistantThreadDuplicated"]
     1236 SETTABLEKS                       R79 R78 K54 ["eventName"]
     1238 SETTABLEKS                       R33 R78 K55 ["backends"]
     1240 LOADK                            R79 K149 ["Thread duplicated event with details."]
     1241 SETTABLEKS                       R79 R78 K56 ["description"]
     1243 NEWTABLE                         R79 0 3
     1245 LOADN                            R80 26
     1246 LOADN                            R81 3
     1247 LOADN                            R82 10
     1248 SETLIST                          R79 R80 3 [1]
     1250 SETTABLEKS                       R79 R78 K57 ["lastUpdated"]
     1252 CALL                             R77 1 1
     1253 GETIMPORT                        R78 K48 [table.freeze]
     1255 DUPTABLE                         R79 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1256 LOADK                            R80 K150 ["StudioAssistantCompactionSuccess"]
     1257 SETTABLEKS                       R80 R79 K54 ["eventName"]
     1259 SETTABLEKS                       R33 R79 K55 ["backends"]
     1261 LOADK                            R80 K151 ["Context compaction summarizer completed successfully."]
     1262 SETTABLEKS                       R80 R79 K56 ["description"]
     1264 NEWTABLE                         R80 0 3
     1266 LOADN                            R81 26
     1267 LOADN                            R82 4
     1268 LOADN                            R83 28
     1269 SETLIST                          R80 R81 3 [1]
     1271 SETTABLEKS                       R80 R79 K57 ["lastUpdated"]
     1273 CALL                             R78 1 1
     1274 GETIMPORT                        R79 K48 [table.freeze]
     1276 DUPTABLE                         R80 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1277 LOADK                            R81 K152 ["StudioAssistantCompactionSuccessCount"]
     1278 SETTABLEKS                       R81 R80 K54 ["eventName"]
     1280 NEWTABLE                         R81 0 1
     1282 GETTABLEKS                       R82 R6 K49 ["Backends"]
     1284 GETTABLEKS                       R82 R82 K60 ["RobloxTelemetryCounter"]
     1286 SETLIST                          R81 R82 1 [1]
     1288 SETTABLEKS                       R81 R80 K55 ["backends"]
     1290 LOADK                            R81 K153 ["Count of successful compaction events."]
     1291 SETTABLEKS                       R81 R80 K56 ["description"]
     1293 NEWTABLE                         R81 0 3
     1295 LOADN                            R82 26
     1296 LOADN                            R83 4
     1297 LOADN                            R84 28
     1298 SETLIST                          R81 R82 3 [1]
     1300 SETTABLEKS                       R81 R80 K57 ["lastUpdated"]
     1302 CALL                             R79 1 1
     1303 GETIMPORT                        R80 K48 [table.freeze]
     1305 DUPTABLE                         R81 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1306 LOADK                            R82 K154 ["StudioAssistantCompactionFallback"]
     1307 SETTABLEKS                       R82 R81 K54 ["eventName"]
     1309 SETTABLEKS                       R33 R81 K55 ["backends"]
     1311 LOADK                            R82 K155 ["Context compaction summarizer failed, fell back to generic summary."]
     1312 SETTABLEKS                       R82 R81 K56 ["description"]
     1314 NEWTABLE                         R82 0 3
     1316 LOADN                            R83 26
     1317 LOADN                            R84 4
     1318 LOADN                            R85 28
     1319 SETLIST                          R82 R83 3 [1]
     1321 SETTABLEKS                       R82 R81 K57 ["lastUpdated"]
     1323 CALL                             R80 1 1
     1324 GETIMPORT                        R81 K48 [table.freeze]
     1326 DUPTABLE                         R82 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1327 LOADK                            R83 K156 ["StudioAssistantCompactionFallbackCount"]
     1328 SETTABLEKS                       R83 R82 K54 ["eventName"]
     1330 NEWTABLE                         R83 0 1
     1332 GETTABLEKS                       R84 R6 K49 ["Backends"]
     1334 GETTABLEKS                       R84 R84 K60 ["RobloxTelemetryCounter"]
     1336 SETLIST                          R83 R84 1 [1]
     1338 SETTABLEKS                       R83 R82 K55 ["backends"]
     1340 LOADK                            R83 K157 ["Count of compaction fallback events."]
     1341 SETTABLEKS                       R83 R82 K56 ["description"]
     1343 NEWTABLE                         R83 0 3
     1345 LOADN                            R84 26
     1346 LOADN                            R85 4
     1347 LOADN                            R86 28
     1348 SETLIST                          R83 R84 3 [1]
     1350 SETTABLEKS                       R83 R82 K57 ["lastUpdated"]
     1352 CALL                             R81 1 1
     1353 GETIMPORT                        R82 K48 [table.freeze]
     1355 DUPTABLE                         R83 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1356 LOADK                            R84 K158 ["StudioAssistantMCPQuickSetup"]
     1357 SETTABLEKS                       R84 R83 K54 ["eventName"]
     1359 SETTABLEKS                       R33 R83 K55 ["backends"]
     1361 LOADK                            R84 K159 ["Quick setup toggled/copied."]
     1362 SETTABLEKS                       R84 R83 K56 ["description"]
     1364 NEWTABLE                         R84 0 3
     1366 LOADN                            R85 26
     1367 LOADN                            R86 4
     1368 LOADN                            R87 15
     1369 SETLIST                          R84 R85 3 [1]
     1371 SETTABLEKS                       R84 R83 K57 ["lastUpdated"]
     1373 CALL                             R82 1 1
     1374 GETIMPORT                        R83 K48 [table.freeze]
     1376 DUPTABLE                         R84 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1377 LOADK                            R85 K160 ["StudioAssistantThreadSwitched"]
     1378 SETTABLEKS                       R85 R84 K54 ["eventName"]
     1380 SETTABLEKS                       R33 R84 K55 ["backends"]
     1382 LOADK                            R85 K161 ["Thread switched event with details."]
     1383 SETTABLEKS                       R85 R84 K56 ["description"]
     1385 NEWTABLE                         R85 0 3
     1387 LOADN                            R86 26
     1388 LOADN                            R87 3
     1389 LOADN                            R88 10
     1390 SETLIST                          R85 R86 3 [1]
     1392 SETTABLEKS                       R85 R84 K57 ["lastUpdated"]
     1394 CALL                             R83 1 1
     1395 GETIMPORT                        R84 K48 [table.freeze]
     1397 DUPTABLE                         R85 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1398 LOADK                            R86 K162 ["StudioAssistantPersistenceSuccess"]
     1399 SETTABLEKS                       R86 R85 K54 ["eventName"]
     1401 NEWTABLE                         R86 0 1
     1403 GETTABLEKS                       R87 R6 K49 ["Backends"]
     1405 GETTABLEKS                       R87 R87 K60 ["RobloxTelemetryCounter"]
     1407 SETLIST                          R86 R87 1 [1]
     1409 SETTABLEKS                       R86 R85 K55 ["backends"]
     1411 LOADK                            R86 K163 ["Count of successful persistence operations."]
     1412 SETTABLEKS                       R86 R85 K56 ["description"]
     1414 NEWTABLE                         R86 0 3
     1416 LOADN                            R87 26
     1417 LOADN                            R88 3
     1418 LOADN                            R89 10
     1419 SETLIST                          R86 R87 3 [1]
     1421 SETTABLEKS                       R86 R85 K57 ["lastUpdated"]
     1423 CALL                             R84 1 1
     1424 GETIMPORT                        R85 K48 [table.freeze]
     1426 DUPTABLE                         R86 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1427 LOADK                            R87 K164 ["StudioAssistantPersistenceFailure"]
     1428 SETTABLEKS                       R87 R86 K54 ["eventName"]
     1430 NEWTABLE                         R87 0 1
     1432 GETTABLEKS                       R88 R6 K49 ["Backends"]
     1434 GETTABLEKS                       R88 R88 K60 ["RobloxTelemetryCounter"]
     1436 SETLIST                          R87 R88 1 [1]
     1438 SETTABLEKS                       R87 R86 K55 ["backends"]
     1440 LOADK                            R87 K165 ["Count of failed persistence operations."]
     1441 SETTABLEKS                       R87 R86 K56 ["description"]
     1443 NEWTABLE                         R87 0 3
     1445 LOADN                            R88 26
     1446 LOADN                            R89 3
     1447 LOADN                            R90 10
     1448 SETLIST                          R87 R88 3 [1]
     1450 SETTABLEKS                       R87 R86 K57 ["lastUpdated"]
     1452 CALL                             R85 1 1
     1453 GETIMPORT                        R86 K48 [table.freeze]
     1455 DUPTABLE                         R87 K58 [{"eventName", "backends", "description", "lastUpdated"}]
     1456 LOADK                            R88 K166 ["StudioAssistantPersistenceLatencyMs"]
     1457 SETTABLEKS                       R88 R87 K54 ["eventName"]
     1459 NEWTABLE                         R88 0 1
     1461 GETTABLEKS                       R89 R6 K49 ["Backends"]
     1463 GETTABLEKS                       R89 R89 K77 ["RobloxTelemetryStat"]
     1465 SETLIST                          R88 R89 1 [1]
     1467 SETTABLEKS                       R88 R87 K55 ["backends"]
     1469 LOADK                            R88 K167 ["Persistence operation latency in milliseconds."]
     1470 SETTABLEKS                       R88 R87 K56 ["description"]
     1472 NEWTABLE                         R88 0 3
     1474 LOADN                            R89 26
     1475 LOADN                            R90 3
     1476 LOADN                            R91 10
     1477 SETLIST                          R88 R89 3 [1]
     1479 SETTABLEKS                       R88 R87 K57 ["lastUpdated"]
     1481 CALL                             R86 1 1
     1482 DUPCLOSURE                       R87 K168 [PROTO_18]
     1483 CAPTURE                          VAL R28
     1484 CAPTURE                          VAL R29
     1485 DUPCLOSURE                       R88 K169 [PROTO_19]
     1486 CAPTURE                          VAL R28
     1487 CAPTURE                          VAL R29
     1488 CAPTURE                          VAL R1
     1489 DUPCLOSURE                       R89 K170 [PROTO_20]
     1490 CAPTURE                          VAL R4
     1491 CAPTURE                          VAL R8
     1492 MOVE                             R90 R26
     1493 CALL                             R90 0 1
     1494 GETTABLEKS                       R91 R5 K171 ["new"]
     1496 MOVE                             R92 R2
     1497 MOVE                             R93 R27
     1498 CALL                             R93 0 -1
     1499 CALL                             R91 -1 1
     1500 DUPCLOSURE                       R92 K172 [PROTO_21]
     1501 CAPTURE                          VAL R91
     1502 CAPTURE                          VAL R90
     1503 DUPCLOSURE                       R93 K173 [PROTO_22]
     1504 CAPTURE                          VAL R4
     1505 CAPTURE                          VAL R91
     1506 CAPTURE                          VAL R90
     1507 DUPCLOSURE                       R94 K174 [PROTO_59]
     1508 CAPTURE                          VAL R6
     1509 CAPTURE                          VAL R34
     1510 CAPTURE                          VAL R4
     1511 CAPTURE                          VAL R91
     1512 CAPTURE                          VAL R90
     1513 CAPTURE                          VAL R28
     1514 CAPTURE                          VAL R8
     1515 CAPTURE                          VAL R35
     1516 CAPTURE                          VAL R7
     1517 CAPTURE                          VAL R36
     1518 CAPTURE                          VAL R44
     1519 CAPTURE                          VAL R39
     1520 CAPTURE                          VAL R37
     1521 CAPTURE                          VAL R40
     1522 CAPTURE                          VAL R38
     1523 CAPTURE                          VAL R41
     1524 CAPTURE                          VAL R45
     1525 CAPTURE                          VAL R46
     1526 CAPTURE                          VAL R47
     1527 CAPTURE                          VAL R23
     1528 CAPTURE                          VAL R1
     1529 CAPTURE                          VAL R49
     1530 CAPTURE                          VAL R19
     1531 CAPTURE                          VAL R22
     1532 CAPTURE                          VAL R48
     1533 CAPTURE                          VAL R50
     1534 CAPTURE                          VAL R51
     1535 CAPTURE                          VAL R42
     1536 CAPTURE                          VAL R43
     1537 CAPTURE                          VAL R52
     1538 CAPTURE                          VAL R53
     1539 CAPTURE                          VAL R54
     1540 CAPTURE                          VAL R55
     1541 CAPTURE                          VAL R56
     1542 CAPTURE                          VAL R57
     1543 CAPTURE                          VAL R58
     1544 CAPTURE                          VAL R59
     1545 CAPTURE                          VAL R60
     1546 CAPTURE                          VAL R61
     1547 CAPTURE                          VAL R62
     1548 CAPTURE                          VAL R63
     1549 CAPTURE                          VAL R64
     1550 CAPTURE                          VAL R65
     1551 CAPTURE                          VAL R66
     1552 CAPTURE                          VAL R67
     1553 CAPTURE                          VAL R69
     1554 CAPTURE                          VAL R68
     1555 CAPTURE                          VAL R71
     1556 CAPTURE                          VAL R70
     1557 CAPTURE                          VAL R72
     1558 CAPTURE                          VAL R73
     1559 CAPTURE                          VAL R74
     1560 CAPTURE                          VAL R75
     1561 CAPTURE                          VAL R76
     1562 CAPTURE                          VAL R77
     1563 CAPTURE                          VAL R82
     1564 CAPTURE                          VAL R83
     1565 CAPTURE                          VAL R79
     1566 CAPTURE                          VAL R78
     1567 CAPTURE                          VAL R81
     1568 CAPTURE                          VAL R80
     1569 CAPTURE                          VAL R86
     1570 CAPTURE                          VAL R84
     1571 CAPTURE                          VAL R85
     1572 CAPTURE                          VAL R87
     1573 CAPTURE                          VAL R88
     1574 DUPCLOSURE                       R95 K175 [PROTO_60]
     1575 CAPTURE                          VAL R94
     1576 CAPTURE                          VAL R28
     1577 DUPTABLE                         R96 K178 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1578 SETTABLEKS                       R94 R96 K176 ["makeStudioTelemetryEvents"]
     1580 SETTABLEKS                       R95 R96 K177 ["createStudioEventLogger"]
     1582 RETURN                           R96 1
