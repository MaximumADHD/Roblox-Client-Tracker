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
       10 MOVE                             R2 R0
       11 LOADN                            R3 244
       12 CALL                             R1 2 1
       13 MOVE                             R3 R1
       14 LOADK                            R4 K0 ["..."]
       15 CONCAT                           R2 R3 R4
       16 RETURN                           R2 1

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
       66 GETTABLEKS                       R3 R0 K20 ["input"]
       68 JUMPIFNOTEQKNIL                  R3 ; [+3]
       70 LOADNIL                          R2
       71 JUMP                             ; [+10]
       72 GETIMPORT                        R4 K22 [pcall]
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R3
       77 CALL                             R4 1 2
       78 JUMPIF                           R4 ; [+2]
       79 LOADNIL                          R2
       80 JUMP                             ; [+1]
       81 MOVE                             R2 R5
       82 JUMPIFNOTEQKNIL                  R2 ; [+3]
       84 LOADNIL                          R3
       85 JUMP                             ; [+13]
       86 LENGTH                           R4 R2
       87 LOADN                            R5 244
       88 JUMPIFNOTLE                      R4 R5 ; [+3]
       90 MOVE                             R3 R2
       91 JUMP                             ; [+7]
       92 GETUPVAL                         R4 3
       93 MOVE                             R5 R2
       94 LOADN                            R6 244
       95 CALL                             R4 2 1
       96 MOVE                             R5 R4
       97 LOADK                            R6 K23 ["..."]
       98 CONCAT                           R3 R5 R6
       99 SETTABLEKS                       R3 R1 K24 ["toolUseInput"]
      101 JUMPIFNOT                        R2 ; [+2]
      102 LENGTH                           R3 R2
      103 JUMP                             ; [+1]
      104 LOADNIL                          R3
      105 SETTABLEKS                       R3 R1 K25 ["toolUseInputCharacters"]
      107 GETUPVAL                         R3 4
      108 GETTABLEKS                       R3 R3 K26 ["logEvent"]
      110 GETUPVAL                         R4 5
      111 DUPTABLE                         R5 K29 [{"customFields", "standardizedFields"}]
      112 SETTABLEKS                       R1 R5 K27 ["customFields"]
      114 NEWTABLE                         R7 0 0
      116 GETUPVAL                         R8 6
      117 GETTABLEKS                       R8 R8 K30 ["StandardizedFields"]
      119 LOADNIL                          R9
      120 LOADNIL                          R10
      121 FORGPREP                         R8
      122 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      124 MOVE                             R14 R7
      125 MOVE                             R15 R12
      126 GETIMPORT                        R13 K33 [table.insert]
      128 CALL                             R13 2 0
      129 FORGLOOP                         R8 2 ; [-8]
      131 MOVE                             R6 R7
      132 SETTABLEKS                       R6 R5 K28 ["standardizedFields"]
      134 CALL                             R3 2 0
      135 RETURN                           R0 0

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
       92 DUPTABLE                         R2 K20 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "suggestedParts", "finalParts"}]
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
      113 GETTABLEKS                       R3 R0 K15 ["modelFlow"]
      115 SETTABLEKS                       R3 R2 K15 ["modelFlow"]
      117 GETTABLEKS                       R3 R0 K16 ["inputFormat"]
      119 SETTABLEKS                       R3 R2 K16 ["inputFormat"]
      121 GETTABLEKS                       R3 R0 K17 ["segmentationEnabled"]
      123 SETTABLEKS                       R3 R2 K17 ["segmentationEnabled"]
      125 GETTABLEKS                       R4 R0 K18 ["suggestedParts"]
      127 JUMPIFNOTEQKNIL                  R4 ; [+3]
      129 LOADNIL                          R3
      130 JUMP                             ; [+10]
      131 GETIMPORT                        R5 K22 [pcall]
      133 NEWCLOSURE                       R6 P0
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          VAL R4
      136 CALL                             R5 1 2
      137 JUMPIF                           R5 ; [+2]
      138 LOADNIL                          R3
      139 JUMP                             ; [+1]
      140 MOVE                             R3 R6
      141 SETTABLEKS                       R3 R2 K18 ["suggestedParts"]
      143 GETTABLEKS                       R4 R0 K19 ["finalParts"]
      145 JUMPIFNOTEQKNIL                  R4 ; [+3]
      147 LOADNIL                          R3
      148 JUMP                             ; [+10]
      149 GETIMPORT                        R5 K22 [pcall]
      151 NEWCLOSURE                       R6 P0
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          VAL R4
      154 CALL                             R5 1 2
      155 JUMPIF                           R5 ; [+2]
      156 LOADNIL                          R3
      157 JUMP                             ; [+1]
      158 MOVE                             R3 R6
      159 SETTABLEKS                       R3 R2 K19 ["finalParts"]
      161 GETUPVAL                         R3 2
      162 GETTABLEKS                       R3 R3 K23 ["assign"]
      164 MOVE                             R4 R2
      165 DUPTABLE                         R5 K25 [{"timestampMilliseconds"}]
      166 GETUPVAL                         R6 7
      167 GETTABLEKS                       R6 R6 K26 ["getTimestampMilliseconds"]
      169 CALL                             R6 0 1
      170 SETTABLEKS                       R6 R5 K24 ["timestampMilliseconds"]
      172 CALL                             R3 2 1
      173 MOVE                             R1 R3
      174 GETUPVAL                         R2 0
      175 GETTABLEKS                       R2 R2 K27 ["logEvent"]
      177 GETUPVAL                         R3 8
      178 DUPTABLE                         R4 K29 [{"customFields", "standardizedFields"}]
      179 SETTABLEKS                       R1 R4 K2 ["customFields"]
      181 NEWTABLE                         R6 0 0
      183 GETUPVAL                         R7 9
      184 GETTABLEKS                       R7 R7 K30 ["StandardizedFields"]
      186 LOADNIL                          R8
      187 LOADNIL                          R9
      188 FORGPREP                         R7
      189 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      191 MOVE                             R13 R6
      192 MOVE                             R14 R11
      193 GETIMPORT                        R12 K33 [table.insert]
      195 CALL                             R12 2 0
      196 FORGLOOP                         R7 2 ; [-8]
      198 MOVE                             R5 R6
      199 SETTABLEKS                       R5 R4 K28 ["standardizedFields"]
      201 CALL                             R2 2 0
      202 RETURN                           R0 0

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
       92 DUPTABLE                         R2 K16 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETTABLEKS                       R3 R0 K14 ["modelFlow"]
      111 SETTABLEKS                       R3 R2 K14 ["modelFlow"]
      113 GETTABLEKS                       R3 R0 K15 ["inputFormat"]
      115 SETTABLEKS                       R3 R2 K15 ["inputFormat"]
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K5 [{"success", "errorCode"}]
        7 GETTABLEKS                       R7 R0 K3 ["success"]
        9 SETTABLEKS                       R7 R6 K3 ["success"]
       11 GETTABLEKS                       R7 R0 K4 ["errorCode"]
       13 SETTABLEKS                       R7 R6 K4 ["errorCode"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K6 ["join"]
       18 MOVE                             R8 R6
       19 DUPTABLE                         R9 K8 [{"experimentationGroup"}]
       20 GETUPVAL                         R11 3
       21 NAMECALL                         R11 R11 K9 ["get"]
       23 CALL                             R11 1 1
       24 JUMPIFNOTEQKNIL                  R11 ; [+3]
       26 LOADNIL                          R10
       27 JUMP                             ; [+16]
       28 GETUPVAL                         R13 4
       29 GETTABLE                         R12 R11 R13
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 GETTABLEKS                       R12 R11 K10 ["generatedExperimentVariantDistributionVariable"]
       34 JUMPIFNOTEQKNIL                  R12 ; [+3]
       36 LOADNIL                          R10
       37 JUMP                             ; [+6]
       38 FASTCALL1                        TOSTRING R12 ; [+3]
       39 MOVE                             R14 R12
       40 GETIMPORT                        R13 K12 [tostring]
       42 CALL                             R13 1 1
       43 MOVE                             R10 R13
       44 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       46 CALL                             R7 2 1
       47 MOVE                             R5 R7
       48 SETTABLEKS                       R5 R4 K1 ["customFields"]
       50 CALL                             R1 3 0
       51 DUPTABLE                         R2 K26 [{"requestId", "generationId", "toolId", "success", "errorMessage", "errorCode", "prompt", "hasImage", "timeToFirstRender", "dependencyVersion", "modelFlow", "inputFormat", "segmentationEnabled", "suggestedParts", "finalParts"}]
       52 GETTABLEKS                       R3 R0 K13 ["requestId"]
       54 SETTABLEKS                       R3 R2 K13 ["requestId"]
       56 GETTABLEKS                       R3 R0 K14 ["generationId"]
       58 SETTABLEKS                       R3 R2 K14 ["generationId"]
       60 GETTABLEKS                       R3 R0 K15 ["toolId"]
       62 SETTABLEKS                       R3 R2 K15 ["toolId"]
       64 GETTABLEKS                       R3 R0 K3 ["success"]
       66 SETTABLEKS                       R3 R2 K3 ["success"]
       68 GETTABLEKS                       R3 R0 K16 ["errorMessage"]
       70 SETTABLEKS                       R3 R2 K16 ["errorMessage"]
       72 GETTABLEKS                       R3 R0 K4 ["errorCode"]
       74 SETTABLEKS                       R3 R2 K4 ["errorCode"]
       76 GETTABLEKS                       R3 R0 K17 ["prompt"]
       78 SETTABLEKS                       R3 R2 K17 ["prompt"]
       80 GETTABLEKS                       R3 R0 K18 ["hasImage"]
       82 SETTABLEKS                       R3 R2 K18 ["hasImage"]
       84 GETTABLEKS                       R3 R0 K19 ["timeToFirstRender"]
       86 SETTABLEKS                       R3 R2 K19 ["timeToFirstRender"]
       88 GETTABLEKS                       R3 R0 K20 ["dependencyVersion"]
       90 SETTABLEKS                       R3 R2 K20 ["dependencyVersion"]
       92 GETTABLEKS                       R3 R0 K21 ["modelFlow"]
       94 SETTABLEKS                       R3 R2 K21 ["modelFlow"]
       96 GETTABLEKS                       R3 R0 K22 ["inputFormat"]
       98 SETTABLEKS                       R3 R2 K22 ["inputFormat"]
      100 GETTABLEKS                       R3 R0 K23 ["segmentationEnabled"]
      102 SETTABLEKS                       R3 R2 K23 ["segmentationEnabled"]
      104 GETTABLEKS                       R4 R0 K24 ["suggestedParts"]
      106 JUMPIFNOTEQKNIL                  R4 ; [+3]
      108 LOADNIL                          R3
      109 JUMP                             ; [+10]
      110 GETIMPORT                        R5 K28 [pcall]
      112 NEWCLOSURE                       R6 P0
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R4
      115 CALL                             R5 1 2
      116 JUMPIF                           R5 ; [+2]
      117 LOADNIL                          R3
      118 JUMP                             ; [+1]
      119 MOVE                             R3 R6
      120 SETTABLEKS                       R3 R2 K24 ["suggestedParts"]
      122 GETTABLEKS                       R4 R0 K25 ["finalParts"]
      124 JUMPIFNOTEQKNIL                  R4 ; [+3]
      126 LOADNIL                          R3
      127 JUMP                             ; [+10]
      128 GETIMPORT                        R5 K28 [pcall]
      130 NEWCLOSURE                       R6 P0
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          VAL R4
      133 CALL                             R5 1 2
      134 JUMPIF                           R5 ; [+2]
      135 LOADNIL                          R3
      136 JUMP                             ; [+1]
      137 MOVE                             R3 R6
      138 SETTABLEKS                       R3 R2 K25 ["finalParts"]
      140 GETUPVAL                         R3 2
      141 GETTABLEKS                       R3 R3 K29 ["assign"]
      143 MOVE                             R4 R2
      144 DUPTABLE                         R5 K31 [{"timestampMilliseconds"}]
      145 GETUPVAL                         R6 6
      146 GETTABLEKS                       R6 R6 K32 ["getTimestampMilliseconds"]
      148 CALL                             R6 0 1
      149 SETTABLEKS                       R6 R5 K30 ["timestampMilliseconds"]
      151 CALL                             R3 2 1
      152 MOVE                             R1 R3
      153 GETUPVAL                         R2 0
      154 GETTABLEKS                       R2 R2 K33 ["logEvent"]
      156 GETUPVAL                         R3 7
      157 DUPTABLE                         R4 K35 [{"customFields", "standardizedFields"}]
      158 SETTABLEKS                       R1 R4 K1 ["customFields"]
      160 NEWTABLE                         R6 0 0
      162 GETUPVAL                         R7 8
      163 GETTABLEKS                       R7 R7 K36 ["StandardizedFields"]
      165 LOADNIL                          R8
      166 LOADNIL                          R9
      167 FORGPREP                         R7
      168 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      170 MOVE                             R13 R6
      171 MOVE                             R14 R11
      172 GETIMPORT                        R12 K39 [table.insert]
      174 CALL                             R12 2 0
      175 FORGLOOP                         R7 2 ; [-8]
      177 MOVE                             R5 R6
      178 SETTABLEKS                       R5 R4 K34 ["standardizedFields"]
      180 CALL                             R2 2 0
      181 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        7 GETUPVAL                         R2 2
        8 LOADN                            R3 1
        9 DUPTABLE                         R4 K2 [{"customFields"}]
       10 DUPTABLE                         R6 K5 [{"modelFlow", "inputFormat"}]
       11 GETTABLEKS                       R7 R0 K3 ["modelFlow"]
       13 SETTABLEKS                       R7 R6 K3 ["modelFlow"]
       15 GETTABLEKS                       R7 R0 K4 ["inputFormat"]
       17 SETTABLEKS                       R7 R6 K4 ["inputFormat"]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K6 ["join"]
       22 MOVE                             R8 R6
       23 DUPTABLE                         R9 K8 [{"experimentationGroup"}]
       24 GETUPVAL                         R11 4
       25 NAMECALL                         R11 R11 K9 ["get"]
       27 CALL                             R11 1 1
       28 JUMPIFNOTEQKNIL                  R11 ; [+3]
       30 LOADNIL                          R10
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R13 5
       33 GETTABLE                         R12 R11 R13
       34 JUMPIFNOTEQKNIL                  R12 ; [+3]
       36 GETTABLEKS                       R12 R11 K10 ["generatedExperimentVariantDistributionVariable"]
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 LOADNIL                          R10
       41 JUMP                             ; [+6]
       42 FASTCALL1                        TOSTRING R12 ; [+3]
       43 MOVE                             R14 R12
       44 GETIMPORT                        R13 K12 [tostring]
       46 CALL                             R13 1 1
       47 MOVE                             R10 R13
       48 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K1 ["customFields"]
       54 CALL                             R1 3 0
       55 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        9 DUPTABLE                         R5 K8 [{"requestId", "generationId", "modelFlow", "secondsSinceInsertion"}]
       10 GETTABLEKS                       R6 R0 K4 ["requestId"]
       12 SETTABLEKS                       R6 R5 K4 ["requestId"]
       14 GETTABLEKS                       R6 R0 K5 ["generationId"]
       16 SETTABLEKS                       R6 R5 K5 ["generationId"]
       18 GETTABLEKS                       R6 R0 K6 ["modelFlow"]
       20 SETTABLEKS                       R6 R5 K6 ["modelFlow"]
       22 GETTABLEKS                       R6 R0 K7 ["secondsSinceInsertion"]
       24 SETTABLEKS                       R6 R5 K7 ["secondsSinceInsertion"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K9 ["assign"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K11 [{"timestampMilliseconds"}]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K12 ["getTimestampMilliseconds"]
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K10 ["timestampMilliseconds"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 SETTABLEKS                       R4 R3 K1 ["customFields"]
       41 NEWTABLE                         R5 0 0
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K13 ["StandardizedFields"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       51 MOVE                             R12 R5
       52 MOVE                             R13 R10
       53 GETIMPORT                        R11 K16 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-8]
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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
       83 CAPTURE                          UPVAL U22
       84 CAPTURE                          UPVAL U23
       85 CAPTURE                          UPVAL U24
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U25
       88 CAPTURE                          UPVAL U8
       89 DUPCLOSURE                       R13 K8 [PROTO_35]
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U26
       94 CAPTURE                          UPVAL U8
       95 DUPCLOSURE                       R14 K9 [PROTO_36]
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U27
      100 CAPTURE                          UPVAL U8
      101 DUPCLOSURE                       R15 K10 [PROTO_37]
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U28
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U29
      109 CAPTURE                          UPVAL U8
      110 DUPCLOSURE                       R16 K11 [PROTO_38]
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U30
      115 CAPTURE                          UPVAL U8
      116 DUPCLOSURE                       R17 K12 [PROTO_39]
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U31
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U4
      122 DUPCLOSURE                       R18 K13 [PROTO_40]
      123 CAPTURE                          UPVAL U0
      124 CAPTURE                          UPVAL U32
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          UPVAL U33
      129 CAPTURE                          UPVAL U19
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          UPVAL U34
      132 CAPTURE                          UPVAL U8
      133 DUPCLOSURE                       R19 K14 [PROTO_41]
      134 CAPTURE                          UPVAL U0
      135 CAPTURE                          UPVAL U35
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          UPVAL U36
      140 CAPTURE                          UPVAL U6
      141 CAPTURE                          UPVAL U37
      142 CAPTURE                          UPVAL U8
      143 DUPCLOSURE                       R20 K15 [PROTO_42]
      144 CAPTURE                          UPVAL U0
      145 CAPTURE                          UPVAL U38
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U39
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U40
      152 CAPTURE                          UPVAL U8
      153 DUPCLOSURE                       R21 K16 [PROTO_43]
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          UPVAL U41
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          UPVAL U3
      158 CAPTURE                          UPVAL U4
      159 CAPTURE                          UPVAL U19
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          UPVAL U42
      162 CAPTURE                          UPVAL U8
      163 DUPCLOSURE                       R22 K17 [PROTO_44]
      164 CAPTURE                          UPVAL U43
      165 CAPTURE                          UPVAL U0
      166 CAPTURE                          UPVAL U44
      167 CAPTURE                          UPVAL U2
      168 CAPTURE                          UPVAL U3
      169 CAPTURE                          UPVAL U4
      170 DUPCLOSURE                       R23 K18 [PROTO_45]
      171 CAPTURE                          UPVAL U43
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          UPVAL U45
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          UPVAL U6
      176 CAPTURE                          UPVAL U8
      177 DUPCLOSURE                       R24 K19 [PROTO_46]
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          UPVAL U46
      180 CAPTURE                          UPVAL U2
      181 CAPTURE                          UPVAL U6
      182 CAPTURE                          UPVAL U8
      183 DUPCLOSURE                       R25 K20 [PROTO_47]
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          UPVAL U47
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          UPVAL U48
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          UPVAL U4
      192 DUPCLOSURE                       R26 K21 [PROTO_48]
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U49
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          UPVAL U6
      199 CAPTURE                          UPVAL U50
      200 CAPTURE                          UPVAL U8
      201 DUPCLOSURE                       R27 K22 [PROTO_49]
      202 CAPTURE                          UPVAL U0
      203 CAPTURE                          UPVAL U51
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          UPVAL U3
      206 CAPTURE                          UPVAL U4
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          UPVAL U52
      209 CAPTURE                          UPVAL U8
      210 DUPCLOSURE                       R28 K23 [PROTO_50]
      211 CAPTURE                          UPVAL U0
      212 CAPTURE                          UPVAL U53
      213 DUPCLOSURE                       R29 K24 [PROTO_51]
      214 CAPTURE                          UPVAL U0
      215 CAPTURE                          UPVAL U54
      216 CAPTURE                          UPVAL U2
      217 CAPTURE                          UPVAL U6
      218 CAPTURE                          UPVAL U8
      219 DUPCLOSURE                       R30 K25 [PROTO_52]
      220 CAPTURE                          UPVAL U0
      221 CAPTURE                          UPVAL U55
      222 CAPTURE                          UPVAL U2
      223 CAPTURE                          UPVAL U6
      224 CAPTURE                          UPVAL U8
      225 DUPCLOSURE                       R31 K26 [PROTO_53]
      226 CAPTURE                          UPVAL U0
      227 CAPTURE                          UPVAL U56
      228 CAPTURE                          UPVAL U2
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          UPVAL U8
      231 DUPCLOSURE                       R32 K27 [PROTO_54]
      232 CAPTURE                          UPVAL U0
      233 CAPTURE                          UPVAL U57
      234 CAPTURE                          UPVAL U2
      235 CAPTURE                          UPVAL U6
      236 CAPTURE                          UPVAL U8
      237 DUPCLOSURE                       R33 K28 [PROTO_55]
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          UPVAL U58
      240 CAPTURE                          UPVAL U2
      241 CAPTURE                          UPVAL U6
      242 CAPTURE                          UPVAL U8
      243 DUPCLOSURE                       R34 K29 [PROTO_56]
      244 CAPTURE                          UPVAL U0
      245 CAPTURE                          UPVAL U59
      246 CAPTURE                          UPVAL U2
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          UPVAL U8
      249 DUPCLOSURE                       R35 K30 [PROTO_57]
      250 CAPTURE                          UPVAL U0
      251 CAPTURE                          UPVAL U60
      252 CAPTURE                          UPVAL U2
      253 CAPTURE                          UPVAL U6
      254 CAPTURE                          UPVAL U8
      255 DUPCLOSURE                       R36 K31 [PROTO_58]
      256 CAPTURE                          UPVAL U0
      257 CAPTURE                          UPVAL U61
      258 CAPTURE                          UPVAL U2
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          UPVAL U4
      261 CAPTURE                          UPVAL U62
      262 CAPTURE                          UPVAL U6
      263 CAPTURE                          UPVAL U8
      264 DUPCLOSURE                       R37 K32 [PROTO_59]
      265 CAPTURE                          UPVAL U0
      266 CAPTURE                          UPVAL U63
      267 CAPTURE                          UPVAL U2
      268 CAPTURE                          UPVAL U3
      269 CAPTURE                          UPVAL U4
      270 CAPTURE                          UPVAL U64
      271 CAPTURE                          UPVAL U6
      272 CAPTURE                          UPVAL U8
      273 DUPCLOSURE                       R38 K33 [PROTO_60]
      274 CAPTURE                          UPVAL U0
      275 CAPTURE                          UPVAL U65
      276 CAPTURE                          UPVAL U2
      277 CAPTURE                          UPVAL U3
      278 CAPTURE                          UPVAL U4
      279 CAPTURE                          UPVAL U66
      280 CAPTURE                          UPVAL U67
      281 NEWTABLE                         R39 64 0
      283 SETTABLEKS                       R1 R39 K34 ["logUserMessageSent"]
      285 SETTABLEKS                       R2 R39 K35 ["logAssistantMessageSent"]
      287 SETTABLEKS                       R3 R39 K36 ["logApiKeyAdded"]
      289 SETTABLEKS                       R4 R39 K37 ["logErrorEvent"]
      291 SETTABLEKS                       R16 R39 K38 ["logExternalAPIError"]
      293 SETTABLEKS                       R5 R39 K39 ["logThumbsUp"]
      295 SETTABLEKS                       R6 R39 K40 ["logThumbsDown"]
      297 SETTABLEKS                       R7 R39 K41 ["logInitialResponseLatency"]
      299 SETTABLEKS                       R8 R39 K42 ["logMarkdownError"]
      301 SETTABLEKS                       R9 R39 K43 ["logRetry"]
      303 SETTABLEKS                       R10 R39 K44 ["logStopGeneration"]
      305 SETTABLEKS                       R11 R39 K45 ["logToolStarted"]
      307 SETTABLEKS                       R12 R39 K46 ["logToolEnded"]
      309 SETTABLEKS                       R13 R39 K47 ["logToolConfirmationShown"]
      311 SETTABLEKS                       R14 R39 K48 ["logToolConfirmationResult"]
      313 SETTABLEKS                       R15 R39 K49 ["logRequestJourney"]
      315 SETTABLEKS                       R17 R39 K50 ["logMeshGenActivated"]
      317 SETTABLEKS                       R18 R39 K51 ["logMeshGenCompleted"]
      319 SETTABLEKS                       R19 R39 K52 ["logMeshGenPublishedAssets"]
      321 SETTABLEKS                       R20 R39 K53 ["logMeshGenMeshInserted"]
      323 SETTABLEKS                       R21 R39 K54 ["logPrimitiveGen"]
      325 SETTABLEKS                       R22 R39 K55 ["logGen3DSegmentationRefresh"]
      327 SETTABLEKS                       R23 R39 K56 ["logGen3DInstanceDeleted"]
      329 SETTABLEKS                       R24 R39 K57 ["logIntegrationEvent"]
      331 SETTABLEKS                       R25 R39 K58 ["logExternalServerConnected"]
      333 SETTABLEKS                       R26 R39 K59 ["logQuestionAnswerCompleted"]
      335 SETTABLEKS                       R27 R39 K60 ["logPlanDecision"]
      337 SETTABLEKS                       R34 R39 K61 ["logQuickSetupToggled"]
      339 SETTABLEKS                       R28 R39 K62 ["logMaterialGeneratorSavedMaterial"]
      341 SETTABLEKS                       R36 R39 K63 ["logCompactionSuccess"]
      343 SETTABLEKS                       R37 R39 K64 ["logCompactionFallback"]
      345 GETUPVAL                         R41 5
      346 CALL                             R41 0 1
      347 JUMPIFNOT                        R41 ; [+2]
      348 MOVE                             R40 R29
      349 JUMP                             ; [+1]
      350 LOADNIL                          R40
      351 SETTABLEKS                       R40 R39 K65 ["logThreadCreated"]
      353 GETUPVAL                         R41 5
      354 CALL                             R41 0 1
      355 JUMPIFNOT                        R41 ; [+2]
      356 MOVE                             R40 R30
      357 JUMP                             ; [+1]
      358 LOADNIL                          R40
      359 SETTABLEKS                       R40 R39 K66 ["logThreadRenamed"]
      361 GETUPVAL                         R41 5
      362 CALL                             R41 0 1
      363 JUMPIFNOT                        R41 ; [+2]
      364 MOVE                             R40 R31
      365 JUMP                             ; [+1]
      366 LOADNIL                          R40
      367 SETTABLEKS                       R40 R39 K67 ["logThreadPinnedChanged"]
      369 GETUPVAL                         R41 5
      370 CALL                             R41 0 1
      371 JUMPIFNOT                        R41 ; [+2]
      372 MOVE                             R40 R32
      373 JUMP                             ; [+1]
      374 LOADNIL                          R40
      375 SETTABLEKS                       R40 R39 K68 ["logThreadDeleted"]
      377 GETUPVAL                         R41 5
      378 CALL                             R41 0 1
      379 JUMPIFNOT                        R41 ; [+2]
      380 MOVE                             R40 R33
      381 JUMP                             ; [+1]
      382 LOADNIL                          R40
      383 SETTABLEKS                       R40 R39 K69 ["logThreadDuplicated"]
      385 GETUPVAL                         R41 5
      386 CALL                             R41 0 1
      387 JUMPIFNOT                        R41 ; [+2]
      388 MOVE                             R40 R35
      389 JUMP                             ; [+1]
      390 LOADNIL                          R40
      391 SETTABLEKS                       R40 R39 K70 ["logThreadSwitched"]
      393 GETUPVAL                         R41 5
      394 CALL                             R41 0 1
      395 JUMPIFNOT                        R41 ; [+2]
      396 MOVE                             R40 R38
      397 JUMP                             ; [+1]
      398 LOADNIL                          R40
      399 SETTABLEKS                       R40 R39 K71 ["logPersistenceOperation"]
      401 GETUPVAL                         R40 68
      402 SETTABLEKS                       R40 R39 K72 ["getMessageGuid"]
      404 GETUPVAL                         R40 69
      405 SETTABLEKS                       R40 R39 K73 ["createMessageGuid"]
      407 RETURN                           R39 1

PROTO_62:
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
       89 GETTABLEKS                       R3 R1 K21 ["logGen3DSegmentationRefresh"]
       91 SETTABLEKS                       R3 R2 K21 ["logGen3DSegmentationRefresh"]
       93 GETTABLEKS                       R3 R1 K22 ["logGen3DInstanceDeleted"]
       95 SETTABLEKS                       R3 R2 K22 ["logGen3DInstanceDeleted"]
       97 GETTABLEKS                       R3 R1 K23 ["logIntegrationEvent"]
       99 SETTABLEKS                       R3 R2 K23 ["logIntegrationEvent"]
      101 GETTABLEKS                       R3 R1 K24 ["logExternalServerConnected"]
      103 SETTABLEKS                       R3 R2 K24 ["logExternalServerConnected"]
      105 GETTABLEKS                       R3 R1 K25 ["logQuestionAnswerCompleted"]
      107 SETTABLEKS                       R3 R2 K25 ["logQuestionAnswerCompleted"]
      109 GETTABLEKS                       R3 R1 K26 ["logPlanDecision"]
      111 SETTABLEKS                       R3 R2 K26 ["logPlanDecision"]
      113 GETTABLEKS                       R3 R1 K27 ["logQuickSetupToggled"]
      115 SETTABLEKS                       R3 R2 K27 ["logQuickSetupToggled"]
      117 GETTABLEKS                       R3 R1 K28 ["logMaterialGeneratorSavedMaterial"]
      119 SETTABLEKS                       R3 R2 K28 ["logMaterialGeneratorSavedMaterial"]
      121 GETTABLEKS                       R3 R1 K29 ["logCompactionSuccess"]
      123 SETTABLEKS                       R3 R2 K29 ["logCompactionSuccess"]
      125 GETTABLEKS                       R3 R1 K30 ["logCompactionFallback"]
      127 SETTABLEKS                       R3 R2 K30 ["logCompactionFallback"]
      129 GETUPVAL                         R4 1
      130 CALL                             R4 0 1
      131 JUMPIFNOT                        R4 ; [+3]
      132 GETTABLEKS                       R3 R1 K31 ["logThreadCreated"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R3
      136 SETTABLEKS                       R3 R2 K31 ["logThreadCreated"]
      138 GETUPVAL                         R4 1
      139 CALL                             R4 0 1
      140 JUMPIFNOT                        R4 ; [+3]
      141 GETTABLEKS                       R3 R1 K32 ["logThreadRenamed"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R3
      145 SETTABLEKS                       R3 R2 K32 ["logThreadRenamed"]
      147 GETUPVAL                         R4 1
      148 CALL                             R4 0 1
      149 JUMPIFNOT                        R4 ; [+3]
      150 GETTABLEKS                       R3 R1 K33 ["logThreadPinnedChanged"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R3
      154 SETTABLEKS                       R3 R2 K33 ["logThreadPinnedChanged"]
      156 GETUPVAL                         R4 1
      157 CALL                             R4 0 1
      158 JUMPIFNOT                        R4 ; [+3]
      159 GETTABLEKS                       R3 R1 K34 ["logThreadDeleted"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R3
      163 SETTABLEKS                       R3 R2 K34 ["logThreadDeleted"]
      165 GETUPVAL                         R4 1
      166 CALL                             R4 0 1
      167 JUMPIFNOT                        R4 ; [+3]
      168 GETTABLEKS                       R3 R1 K35 ["logThreadDuplicated"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R3
      172 SETTABLEKS                       R3 R2 K35 ["logThreadDuplicated"]
      174 GETUPVAL                         R4 1
      175 CALL                             R4 0 1
      176 JUMPIFNOT                        R4 ; [+3]
      177 GETTABLEKS                       R3 R1 K36 ["logThreadSwitched"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R3
      181 SETTABLEKS                       R3 R2 K36 ["logThreadSwitched"]
      183 GETUPVAL                         R4 1
      184 CALL                             R4 0 1
      185 JUMPIFNOT                        R4 ; [+3]
      186 GETTABLEKS                       R3 R1 K37 ["logPersistenceOperation"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R3
      190 SETTABLEKS                       R3 R2 K37 ["logPersistenceOperation"]
      192 GETTABLEKS                       R3 R1 K38 ["getMessageGuid"]
      194 SETTABLEKS                       R3 R2 K38 ["getMessageGuid"]
      196 GETTABLEKS                       R3 R1 K39 ["createMessageGuid"]
      198 SETTABLEKS                       R3 R2 K39 ["createMessageGuid"]
      200 RETURN                           R2 1

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
       74 GETTABLEKS                       R11 R11 K25 ["FFlagAssistantGen3DTelemetryV2"]
       76 DUPCLOSURE                       R12 K26 [PROTO_1]
       77 CAPTURE                          VAL R1
       78 DUPCLOSURE                       R13 K27 [PROTO_2]
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R14 K28 [PROTO_3]
       81 DUPCLOSURE                       R15 K29 [PROTO_4]
       82 DUPCLOSURE                       R16 K30 [PROTO_5]
       83 DUPCLOSURE                       R17 K31 [PROTO_6]
       84 DUPCLOSURE                       R18 K32 [PROTO_7]
       85 DUPCLOSURE                       R19 K33 [PROTO_8]
       86 DUPCLOSURE                       R20 K34 [PROTO_9]
       87 CAPTURE                          VAL R18
       88 DUPCLOSURE                       R21 K35 [PROTO_11]
       89 CAPTURE                          VAL R20
       90 CAPTURE                          VAL R1
       91 DUPCLOSURE                       R22 K36 [PROTO_12]
       92 DUPCLOSURE                       R23 K37 [PROTO_13]
       93 DUPCLOSURE                       R24 K38 [PROTO_14]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R1
       96 GETIMPORT                        R25 K10 [require]
       98 GETTABLEKS                       R26 R0 K14 ["Src"]
      100 GETTABLEKS                       R26 R26 K23 ["Flags"]
      102 GETTABLEKS                       R26 R26 K39 ["FFlagAssistantToolCallPayloadTelemetry"]
      104 CALL                             R25 1 1
      105 GETIMPORT                        R26 K10 [require]
      107 GETTABLEKS                       R27 R0 K14 ["Src"]
      109 GETTABLEKS                       R27 R27 K23 ["Flags"]
      111 GETTABLEKS                       R27 R27 K40 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      113 CALL                             R26 1 1
      114 GETIMPORT                        R27 K10 [require]
      116 GETTABLEKS                       R28 R0 K14 ["Src"]
      118 GETTABLEKS                       R28 R28 K23 ["Flags"]
      120 GETTABLEKS                       R28 R28 K41 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      122 CALL                             R27 1 1
      123 GETIMPORT                        R28 K10 [require]
      125 GETTABLEKS                       R29 R0 K14 ["Src"]
      127 GETTABLEKS                       R29 R29 K23 ["Flags"]
      129 GETTABLEKS                       R29 R29 K42 ["FStringAssistantGroupNameKey"]
      131 CALL                             R28 1 1
      132 GETIMPORT                        R29 K10 [require]
      134 GETTABLEKS                       R30 R0 K14 ["Src"]
      136 GETTABLEKS                       R30 R30 K23 ["Flags"]
      138 GETTABLEKS                       R30 R30 K43 ["FStringNewAssistantExperimentLayer"]
      140 CALL                             R29 1 1
      141 GETTABLEKS                       R30 R3 K23 ["Flags"]
      143 GETTABLEKS                       R30 R30 K24 ["Shared"]
      145 GETTABLEKS                       R30 R30 K44 ["FFlagAssistantMultipleChatPersistence"]
      147 NEWTABLE                         R31 0 0
      149 DUPCLOSURE                       R32 K45 [PROTO_15]
      150 CAPTURE                          VAL R7
      151 DUPCLOSURE                       R33 K46 [PROTO_16]
      152 DUPCLOSURE                       R34 K47 [PROTO_17]
      153 CAPTURE                          VAL R6
      154 GETIMPORT                        R35 K50 [table.freeze]
      156 NEWTABLE                         R37 0 0
      158 GETTABLEKS                       R40 R6 K51 ["Backends"]
      160 GETTABLEKS                       R40 R40 K52 ["EventIngest"]
      162 FASTCALL2                        TABLE_INSERT R37 R40 ; [+4]
      164 MOVE                             R39 R37
      165 GETIMPORT                        R38 K54 [table.insert]
      167 CALL                             R38 2 0
      168 GETTABLEKS                       R40 R6 K51 ["Backends"]
      170 GETTABLEKS                       R40 R40 K55 ["Points"]
      172 FASTCALL2                        TABLE_INSERT R37 R40 ; [+4]
      174 MOVE                             R39 R37
      175 GETIMPORT                        R38 K54 [table.insert]
      177 CALL                             R38 2 0
      178 MOVE                             R36 R37
      179 CALL                             R35 1 1
      180 GETIMPORT                        R36 K50 [table.freeze]
      182 DUPTABLE                         R37 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      183 LOADK                            R38 K61 ["StudioAssistantUserMessageSent"]
      184 SETTABLEKS                       R38 R37 K56 ["eventName"]
      186 NEWTABLE                         R38 0 1
      188 GETTABLEKS                       R39 R6 K51 ["Backends"]
      190 GETTABLEKS                       R39 R39 K62 ["RobloxTelemetryCounter"]
      192 SETLIST                          R38 R39 1 [1]
      194 SETTABLEKS                       R38 R37 K57 ["backends"]
      196 LOADK                            R38 K63 ["Incrementing count of user messages sent."]
      197 SETTABLEKS                       R38 R37 K58 ["description"]
      199 NEWTABLE                         R38 0 3
      201 LOADN                            R39 25
      202 LOADN                            R40 7
      203 LOADN                            R41 21
      204 SETLIST                          R38 R39 3 [1]
      206 SETTABLEKS                       R38 R37 K59 ["lastUpdated"]
      208 CALL                             R36 1 1
      209 GETIMPORT                        R37 K50 [table.freeze]
      211 DUPTABLE                         R38 K65 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      212 LOADK                            R39 K66 ["CAPMessageSent"]
      213 SETTABLEKS                       R39 R38 K56 ["eventName"]
      215 SETTABLEKS                       R35 R38 K57 ["backends"]
      217 LOADK                            R39 K67 ["User message sent event with request ID."]
      218 SETTABLEKS                       R39 R38 K58 ["description"]
      220 MOVE                             R39 R27
      221 CALL                             R39 0 1
      222 SETTABLEKS                       R39 R38 K64 ["throttlingPercentage"]
      224 NEWTABLE                         R39 0 3
      226 LOADN                            R40 25
      227 LOADN                            R41 7
      228 LOADN                            R42 25
      229 SETLIST                          R39 R40 3 [1]
      231 SETTABLEKS                       R39 R38 K59 ["lastUpdated"]
      233 CALL                             R37 1 1
      234 GETIMPORT                        R38 K50 [table.freeze]
      236 DUPTABLE                         R39 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      237 LOADK                            R40 K68 ["CAPAPIKeyAdded"]
      238 SETTABLEKS                       R40 R39 K56 ["eventName"]
      240 SETTABLEKS                       R35 R39 K57 ["backends"]
      242 LOADK                            R40 K69 ["User added an API key for an LLM provider."]
      243 SETTABLEKS                       R40 R39 K58 ["description"]
      245 NEWTABLE                         R40 0 3
      247 LOADN                            R41 25
      248 LOADN                            R42 11
      249 LOADN                            R43 4
      250 SETLIST                          R40 R41 3 [1]
      252 SETTABLEKS                       R40 R39 K59 ["lastUpdated"]
      254 CALL                             R38 1 1
      255 GETIMPORT                        R39 K50 [table.freeze]
      257 DUPTABLE                         R40 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      258 LOADK                            R41 K70 ["CAPUserFeedbackThumbsUp"]
      259 SETTABLEKS                       R41 R40 K56 ["eventName"]
      261 SETTABLEKS                       R35 R40 K57 ["backends"]
      263 LOADK                            R41 K71 ["User feedback thumbs up event with message context."]
      264 SETTABLEKS                       R41 R40 K58 ["description"]
      266 NEWTABLE                         R41 0 3
      268 LOADN                            R42 25
      269 LOADN                            R43 7
      270 LOADN                            R44 25
      271 SETLIST                          R41 R42 3 [1]
      273 SETTABLEKS                       R41 R40 K59 ["lastUpdated"]
      275 CALL                             R39 1 1
      276 GETIMPORT                        R40 K50 [table.freeze]
      278 DUPTABLE                         R41 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      279 LOADK                            R42 K72 ["CAPUserFeedbackThumbsDown"]
      280 SETTABLEKS                       R42 R41 K56 ["eventName"]
      282 SETTABLEKS                       R35 R41 K57 ["backends"]
      284 LOADK                            R42 K73 ["User feedback thumbs down event with message context."]
      285 SETTABLEKS                       R42 R41 K58 ["description"]
      287 NEWTABLE                         R42 0 3
      289 LOADN                            R43 25
      290 LOADN                            R44 7
      291 LOADN                            R45 25
      292 SETLIST                          R42 R43 3 [1]
      294 SETTABLEKS                       R42 R41 K59 ["lastUpdated"]
      296 CALL                             R40 1 1
      297 GETIMPORT                        R41 K50 [table.freeze]
      299 DUPTABLE                         R42 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      300 LOADK                            R43 K74 ["StudioAssistantThumbsUp"]
      301 SETTABLEKS                       R43 R42 K56 ["eventName"]
      303 NEWTABLE                         R43 0 1
      305 GETTABLEKS                       R44 R6 K51 ["Backends"]
      307 GETTABLEKS                       R44 R44 K62 ["RobloxTelemetryCounter"]
      309 SETLIST                          R43 R44 1 [1]
      311 SETTABLEKS                       R43 R42 K57 ["backends"]
      313 LOADK                            R43 K75 ["Incrementing count of thumbs up events."]
      314 SETTABLEKS                       R43 R42 K58 ["description"]
      316 NEWTABLE                         R43 0 3
      318 LOADN                            R44 25
      319 LOADN                            R45 7
      320 LOADN                            R46 21
      321 SETLIST                          R43 R44 3 [1]
      323 SETTABLEKS                       R43 R42 K59 ["lastUpdated"]
      325 CALL                             R41 1 1
      326 GETIMPORT                        R42 K50 [table.freeze]
      328 DUPTABLE                         R43 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      329 LOADK                            R44 K76 ["StudioAssistantThumbsDown"]
      330 SETTABLEKS                       R44 R43 K56 ["eventName"]
      332 NEWTABLE                         R44 0 1
      334 GETTABLEKS                       R45 R6 K51 ["Backends"]
      336 GETTABLEKS                       R45 R45 K62 ["RobloxTelemetryCounter"]
      338 SETLIST                          R44 R45 1 [1]
      340 SETTABLEKS                       R44 R43 K57 ["backends"]
      342 LOADK                            R44 K77 ["Incrementing count of thumbs down events."]
      343 SETTABLEKS                       R44 R43 K58 ["description"]
      345 NEWTABLE                         R44 0 3
      347 LOADN                            R45 25
      348 LOADN                            R46 7
      349 LOADN                            R47 21
      350 SETLIST                          R44 R45 3 [1]
      352 SETTABLEKS                       R44 R43 K59 ["lastUpdated"]
      354 CALL                             R42 1 1
      355 GETIMPORT                        R43 K50 [table.freeze]
      357 DUPTABLE                         R44 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      358 LOADK                            R45 K78 ["StudioAssistantInitialResponseLatency"]
      359 SETTABLEKS                       R45 R44 K56 ["eventName"]
      361 NEWTABLE                         R45 0 1
      363 GETTABLEKS                       R46 R6 K51 ["Backends"]
      365 GETTABLEKS                       R46 R46 K79 ["RobloxTelemetryStat"]
      367 SETLIST                          R45 R46 1 [1]
      369 SETTABLEKS                       R45 R44 K57 ["backends"]
      371 LOADK                            R45 K80 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      372 SETTABLEKS                       R45 R44 K58 ["description"]
      374 NEWTABLE                         R45 0 3
      376 LOADN                            R46 25
      377 LOADN                            R47 7
      378 LOADN                            R48 21
      379 SETLIST                          R45 R46 3 [1]
      381 SETTABLEKS                       R45 R44 K59 ["lastUpdated"]
      383 CALL                             R43 1 1
      384 GETIMPORT                        R44 K50 [table.freeze]
      386 DUPTABLE                         R45 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      387 LOADK                            R46 K81 ["StudioAssistantRequestJourney"]
      388 SETTABLEKS                       R46 R45 K56 ["eventName"]
      390 NEWTABLE                         R46 0 1
      392 GETTABLEKS                       R47 R6 K51 ["Backends"]
      394 GETTABLEKS                       R47 R47 K79 ["RobloxTelemetryStat"]
      396 SETLIST                          R46 R47 1 [1]
      398 SETTABLEKS                       R46 R45 K57 ["backends"]
      400 LOADK                            R46 K82 ["User request journey duration in seconds. Time between sending first message to request ended."]
      401 SETTABLEKS                       R46 R45 K58 ["description"]
      403 NEWTABLE                         R46 0 3
      405 LOADN                            R47 25
      406 LOADN                            R48 10
      407 LOADN                            R49 22
      408 SETLIST                          R46 R47 3 [1]
      410 SETTABLEKS                       R46 R45 K59 ["lastUpdated"]
      412 CALL                             R44 1 1
      413 GETIMPORT                        R45 K50 [table.freeze]
      415 DUPTABLE                         R46 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      416 LOADK                            R47 K83 ["CAPRequestJourney"]
      417 SETTABLEKS                       R47 R46 K56 ["eventName"]
      419 SETTABLEKS                       R35 R46 K57 ["backends"]
      421 LOADK                            R47 K84 ["User request journey detail."]
      422 SETTABLEKS                       R47 R46 K58 ["description"]
      424 NEWTABLE                         R47 0 3
      426 LOADN                            R48 25
      427 LOADN                            R49 11
      428 LOADN                            R50 1
      429 SETLIST                          R47 R48 3 [1]
      431 SETTABLEKS                       R47 R46 K59 ["lastUpdated"]
      433 CALL                             R45 1 1
      434 GETIMPORT                        R46 K50 [table.freeze]
      436 DUPTABLE                         R47 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      437 LOADK                            R48 K85 ["StudioAssistantErrorEvent"]
      438 SETTABLEKS                       R48 R47 K56 ["eventName"]
      440 NEWTABLE                         R48 0 1
      442 GETTABLEKS                       R49 R6 K51 ["Backends"]
      444 GETTABLEKS                       R49 R49 K62 ["RobloxTelemetryCounter"]
      446 SETLIST                          R48 R49 1 [1]
      448 SETTABLEKS                       R48 R47 K57 ["backends"]
      450 LOADK                            R48 K86 ["Incrementing count of error events with error type attached."]
      451 SETTABLEKS                       R48 R47 K58 ["description"]
      453 NEWTABLE                         R48 0 3
      455 LOADN                            R49 25
      456 LOADN                            R50 7
      457 LOADN                            R51 21
      458 SETLIST                          R48 R49 3 [1]
      460 SETTABLEKS                       R48 R47 K59 ["lastUpdated"]
      462 CALL                             R46 1 1
      463 GETIMPORT                        R47 K50 [table.freeze]
      465 DUPTABLE                         R48 K65 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      466 LOADK                            R49 K87 ["StudioAssistantMarkdownError"]
      467 SETTABLEKS                       R49 R48 K56 ["eventName"]
      469 NEWTABLE                         R49 0 1
      471 GETTABLEKS                       R50 R6 K51 ["Backends"]
      473 GETTABLEKS                       R50 R50 K55 ["Points"]
      475 SETLIST                          R49 R50 1 [1]
      477 SETTABLEKS                       R49 R48 K57 ["backends"]
      479 LOADK                            R49 K88 ["Collection of markdown error events, with markdown attached."]
      480 SETTABLEKS                       R49 R48 K58 ["description"]
      482 MOVE                             R49 R26
      483 CALL                             R49 0 1
      484 SETTABLEKS                       R49 R48 K64 ["throttlingPercentage"]
      486 NEWTABLE                         R49 0 3
      488 LOADN                            R50 25
      489 LOADN                            R51 7
      490 LOADN                            R52 21
      491 SETLIST                          R49 R50 3 [1]
      493 SETTABLEKS                       R49 R48 K59 ["lastUpdated"]
      495 CALL                             R47 1 1
      496 GETIMPORT                        R48 K50 [table.freeze]
      498 DUPTABLE                         R49 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      499 LOADK                            R50 K89 ["CAPMessageResubmitted"]
      500 SETTABLEKS                       R50 R49 K56 ["eventName"]
      502 SETTABLEKS                       R35 R49 K57 ["backends"]
      504 LOADK                            R50 K90 ["User message retry/resubmit event with request ID."]
      505 SETTABLEKS                       R50 R49 K58 ["description"]
      507 NEWTABLE                         R50 0 3
      509 LOADN                            R51 25
      510 LOADN                            R52 8
      511 LOADN                            R53 7
      512 SETLIST                          R50 R51 3 [1]
      514 SETTABLEKS                       R50 R49 K59 ["lastUpdated"]
      516 CALL                             R48 1 1
      517 GETIMPORT                        R49 K50 [table.freeze]
      519 DUPTABLE                         R50 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      520 LOADK                            R51 K91 ["CAPStopGeneration"]
      521 SETTABLEKS                       R51 R50 K56 ["eventName"]
      523 SETTABLEKS                       R35 R50 K57 ["backends"]
      525 LOADK                            R51 K92 ["User stop generation event with request ID."]
      526 SETTABLEKS                       R51 R50 K58 ["description"]
      528 NEWTABLE                         R51 0 3
      530 LOADN                            R52 25
      531 LOADN                            R53 8
      532 LOADN                            R54 7
      533 SETLIST                          R51 R52 3 [1]
      535 SETTABLEKS                       R51 R50 K59 ["lastUpdated"]
      537 CALL                             R49 1 1
      538 GETIMPORT                        R50 K50 [table.freeze]
      540 DUPTABLE                         R51 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      541 LOADK                            R52 K93 ["CAPToolEnded"]
      542 SETTABLEKS                       R52 R51 K56 ["eventName"]
      544 SETTABLEKS                       R35 R51 K57 ["backends"]
      546 LOADK                            R52 K94 ["Tool invocation ended event with request ID and tool name"]
      547 SETTABLEKS                       R52 R51 K58 ["description"]
      549 NEWTABLE                         R52 0 3
      551 LOADN                            R53 25
      552 LOADN                            R54 7
      553 LOADN                            R55 21
      554 SETLIST                          R52 R53 3 [1]
      556 SETTABLEKS                       R52 R51 K59 ["lastUpdated"]
      558 CALL                             R50 1 1
      559 GETIMPORT                        R51 K50 [table.freeze]
      561 DUPTABLE                         R52 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      562 LOADK                            R53 K95 ["CAPToolStarted"]
      563 SETTABLEKS                       R53 R52 K56 ["eventName"]
      565 SETTABLEKS                       R35 R52 K57 ["backends"]
      567 LOADK                            R53 K96 ["Tool invocation started event with request ID and tool name."]
      568 SETTABLEKS                       R53 R52 K58 ["description"]
      570 NEWTABLE                         R53 0 3
      572 LOADN                            R54 25
      573 LOADN                            R55 8
      574 LOADN                            R56 7
      575 SETLIST                          R53 R54 3 [1]
      577 SETTABLEKS                       R53 R52 K59 ["lastUpdated"]
      579 CALL                             R51 1 1
      580 GETIMPORT                        R52 K50 [table.freeze]
      582 DUPTABLE                         R53 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      583 LOADK                            R54 K97 ["CAPToolConfirmationShown"]
      584 SETTABLEKS                       R54 R53 K56 ["eventName"]
      586 SETTABLEKS                       R35 R53 K57 ["backends"]
      588 LOADK                            R54 K98 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      589 SETTABLEKS                       R54 R53 K58 ["description"]
      591 NEWTABLE                         R54 0 3
      593 LOADN                            R55 25
      594 LOADN                            R56 9
      595 LOADN                            R57 19
      596 SETLIST                          R54 R55 3 [1]
      598 SETTABLEKS                       R54 R53 K59 ["lastUpdated"]
      600 CALL                             R52 1 1
      601 GETIMPORT                        R53 K50 [table.freeze]
      603 DUPTABLE                         R54 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      604 LOADK                            R55 K99 ["CAPToolConfirmationResult"]
      605 SETTABLEKS                       R55 R54 K56 ["eventName"]
      607 SETTABLEKS                       R35 R54 K57 ["backends"]
      609 LOADK                            R55 K100 ["Tool confirmation dialog result event with request ID and user choice."]
      610 SETTABLEKS                       R55 R54 K58 ["description"]
      612 NEWTABLE                         R55 0 3
      614 LOADN                            R56 25
      615 LOADN                            R57 9
      616 LOADN                            R58 19
      617 SETLIST                          R55 R56 3 [1]
      619 SETTABLEKS                       R55 R54 K59 ["lastUpdated"]
      621 CALL                             R53 1 1
      622 GETIMPORT                        R54 K50 [table.freeze]
      624 DUPTABLE                         R55 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      625 LOADK                            R56 K101 ["CAPExternalAPIError"]
      626 SETTABLEKS                       R56 R55 K56 ["eventName"]
      628 SETTABLEKS                       R35 R55 K57 ["backends"]
      630 LOADK                            R56 K102 ["External LLM API error event with request ID, model, and HTTP status code."]
      631 SETTABLEKS                       R56 R55 K58 ["description"]
      633 NEWTABLE                         R56 0 3
      635 LOADN                            R57 25
      636 LOADN                            R58 12
      637 LOADN                            R59 16
      638 SETLIST                          R56 R57 3 [1]
      640 SETTABLEKS                       R56 R55 K59 ["lastUpdated"]
      642 CALL                             R54 1 1
      643 GETIMPORT                        R55 K50 [table.freeze]
      645 DUPTABLE                         R56 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      646 LOADK                            R57 K103 ["CAPMeshGenActivated"]
      647 SETTABLEKS                       R57 R56 K56 ["eventName"]
      649 NEWTABLE                         R57 0 1
      651 GETTABLEKS                       R58 R6 K51 ["Backends"]
      653 GETTABLEKS                       R58 R58 K62 ["RobloxTelemetryCounter"]
      655 SETLIST                          R57 R58 1 [1]
      657 SETTABLEKS                       R57 R56 K57 ["backends"]
      659 LOADK                            R57 K104 ["Count of MeshGen tool activations."]
      660 SETTABLEKS                       R57 R56 K58 ["description"]
      662 NEWTABLE                         R57 0 3
      664 LOADN                            R58 26
      665 LOADN                            R59 2
      666 LOADN                            R60 6
      667 SETLIST                          R57 R58 3 [1]
      669 SETTABLEKS                       R57 R56 K59 ["lastUpdated"]
      671 CALL                             R55 1 1
      672 GETIMPORT                        R56 K50 [table.freeze]
      674 DUPTABLE                         R57 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      675 LOADK                            R58 K105 ["CAPMeshGenCompletedSuccess"]
      676 SETTABLEKS                       R58 R57 K56 ["eventName"]
      678 NEWTABLE                         R58 0 1
      680 GETTABLEKS                       R59 R6 K51 ["Backends"]
      682 GETTABLEKS                       R59 R59 K62 ["RobloxTelemetryCounter"]
      684 SETLIST                          R58 R59 1 [1]
      686 SETTABLEKS                       R58 R57 K57 ["backends"]
      688 LOADK                            R58 K106 ["Count of successful MeshGen completions."]
      689 SETTABLEKS                       R58 R57 K58 ["description"]
      691 NEWTABLE                         R58 0 3
      693 LOADN                            R59 26
      694 LOADN                            R60 2
      695 LOADN                            R61 6
      696 SETLIST                          R58 R59 3 [1]
      698 SETTABLEKS                       R58 R57 K59 ["lastUpdated"]
      700 CALL                             R56 1 1
      701 GETIMPORT                        R57 K50 [table.freeze]
      703 DUPTABLE                         R58 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      704 LOADK                            R59 K107 ["CAPMeshGenCompletedFailure"]
      705 SETTABLEKS                       R59 R58 K56 ["eventName"]
      707 NEWTABLE                         R59 0 1
      709 GETTABLEKS                       R60 R6 K51 ["Backends"]
      711 GETTABLEKS                       R60 R60 K62 ["RobloxTelemetryCounter"]
      713 SETLIST                          R59 R60 1 [1]
      715 SETTABLEKS                       R59 R58 K57 ["backends"]
      717 LOADK                            R59 K108 ["Count of failed MeshGen completions."]
      718 SETTABLEKS                       R59 R58 K58 ["description"]
      720 NEWTABLE                         R59 0 3
      722 LOADN                            R60 26
      723 LOADN                            R61 2
      724 LOADN                            R62 6
      725 SETLIST                          R59 R60 3 [1]
      727 SETTABLEKS                       R59 R58 K59 ["lastUpdated"]
      729 CALL                             R57 1 1
      730 GETIMPORT                        R58 K50 [table.freeze]
      732 DUPTABLE                         R59 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      733 LOADK                            R60 K109 ["CAPMeshGenCompleted"]
      734 SETTABLEKS                       R60 R59 K56 ["eventName"]
      736 SETTABLEKS                       R35 R59 K57 ["backends"]
      738 LOADK                            R60 K110 ["MeshGen generation completed event with details."]
      739 SETTABLEKS                       R60 R59 K58 ["description"]
      741 NEWTABLE                         R60 0 3
      743 LOADN                            R61 26
      744 LOADN                            R62 2
      745 LOADN                            R63 6
      746 SETLIST                          R60 R61 3 [1]
      748 SETTABLEKS                       R60 R59 K59 ["lastUpdated"]
      750 CALL                             R58 1 1
      751 GETIMPORT                        R59 K50 [table.freeze]
      753 DUPTABLE                         R60 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      754 LOADK                            R61 K111 ["CAPMeshGenPublishedAssetsSuccess"]
      755 SETTABLEKS                       R61 R60 K56 ["eventName"]
      757 NEWTABLE                         R61 0 1
      759 GETTABLEKS                       R62 R6 K51 ["Backends"]
      761 GETTABLEKS                       R62 R62 K62 ["RobloxTelemetryCounter"]
      763 SETLIST                          R61 R62 1 [1]
      765 SETTABLEKS                       R61 R60 K57 ["backends"]
      767 LOADK                            R61 K112 ["Count of successful MeshGen asset publications."]
      768 SETTABLEKS                       R61 R60 K58 ["description"]
      770 NEWTABLE                         R61 0 3
      772 LOADN                            R62 26
      773 LOADN                            R63 2
      774 LOADN                            R64 6
      775 SETLIST                          R61 R62 3 [1]
      777 SETTABLEKS                       R61 R60 K59 ["lastUpdated"]
      779 CALL                             R59 1 1
      780 GETIMPORT                        R60 K50 [table.freeze]
      782 DUPTABLE                         R61 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      783 LOADK                            R62 K113 ["CAPMeshGenPublishedAssetsFailure"]
      784 SETTABLEKS                       R62 R61 K56 ["eventName"]
      786 NEWTABLE                         R62 0 1
      788 GETTABLEKS                       R63 R6 K51 ["Backends"]
      790 GETTABLEKS                       R63 R63 K62 ["RobloxTelemetryCounter"]
      792 SETLIST                          R62 R63 1 [1]
      794 SETTABLEKS                       R62 R61 K57 ["backends"]
      796 LOADK                            R62 K114 ["Count of failed MeshGen asset publications."]
      797 SETTABLEKS                       R62 R61 K58 ["description"]
      799 NEWTABLE                         R62 0 3
      801 LOADN                            R63 26
      802 LOADN                            R64 2
      803 LOADN                            R65 6
      804 SETLIST                          R62 R63 3 [1]
      806 SETTABLEKS                       R62 R61 K59 ["lastUpdated"]
      808 CALL                             R60 1 1
      809 GETIMPORT                        R61 K50 [table.freeze]
      811 DUPTABLE                         R62 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      812 LOADK                            R63 K115 ["CAPMeshGenPublishedAssets"]
      813 SETTABLEKS                       R63 R62 K56 ["eventName"]
      815 SETTABLEKS                       R35 R62 K57 ["backends"]
      817 LOADK                            R63 K116 ["MeshGen assets published event with details."]
      818 SETTABLEKS                       R63 R62 K58 ["description"]
      820 NEWTABLE                         R63 0 3
      822 LOADN                            R64 26
      823 LOADN                            R65 2
      824 LOADN                            R66 6
      825 SETLIST                          R63 R64 3 [1]
      827 SETTABLEKS                       R63 R62 K59 ["lastUpdated"]
      829 CALL                             R61 1 1
      830 GETIMPORT                        R62 K50 [table.freeze]
      832 DUPTABLE                         R63 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      833 LOADK                            R64 K117 ["CAPMeshGenMeshInsertedSuccess"]
      834 SETTABLEKS                       R64 R63 K56 ["eventName"]
      836 NEWTABLE                         R64 0 1
      838 GETTABLEKS                       R65 R6 K51 ["Backends"]
      840 GETTABLEKS                       R65 R65 K62 ["RobloxTelemetryCounter"]
      842 SETLIST                          R64 R65 1 [1]
      844 SETTABLEKS                       R64 R63 K57 ["backends"]
      846 LOADK                            R64 K118 ["Count of successful MeshGen mesh insertions."]
      847 SETTABLEKS                       R64 R63 K58 ["description"]
      849 NEWTABLE                         R64 0 3
      851 LOADN                            R65 26
      852 LOADN                            R66 2
      853 LOADN                            R67 6
      854 SETLIST                          R64 R65 3 [1]
      856 SETTABLEKS                       R64 R63 K59 ["lastUpdated"]
      858 CALL                             R62 1 1
      859 GETIMPORT                        R63 K50 [table.freeze]
      861 DUPTABLE                         R64 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      862 LOADK                            R65 K119 ["CAPMeshGenMeshInsertedFailure"]
      863 SETTABLEKS                       R65 R64 K56 ["eventName"]
      865 NEWTABLE                         R65 0 1
      867 GETTABLEKS                       R66 R6 K51 ["Backends"]
      869 GETTABLEKS                       R66 R66 K62 ["RobloxTelemetryCounter"]
      871 SETLIST                          R65 R66 1 [1]
      873 SETTABLEKS                       R65 R64 K57 ["backends"]
      875 LOADK                            R65 K120 ["Count of failed MeshGen mesh insertions."]
      876 SETTABLEKS                       R65 R64 K58 ["description"]
      878 NEWTABLE                         R65 0 3
      880 LOADN                            R66 26
      881 LOADN                            R67 2
      882 LOADN                            R68 6
      883 SETLIST                          R65 R66 3 [1]
      885 SETTABLEKS                       R65 R64 K59 ["lastUpdated"]
      887 CALL                             R63 1 1
      888 GETIMPORT                        R64 K50 [table.freeze]
      890 DUPTABLE                         R65 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      891 LOADK                            R66 K121 ["CAPMeshGenMeshInserted"]
      892 SETTABLEKS                       R66 R65 K56 ["eventName"]
      894 SETTABLEKS                       R35 R65 K57 ["backends"]
      896 LOADK                            R66 K122 ["MeshGen mesh inserted event with details."]
      897 SETTABLEKS                       R66 R65 K58 ["description"]
      899 NEWTABLE                         R66 0 3
      901 LOADN                            R67 26
      902 LOADN                            R68 2
      903 LOADN                            R69 6
      904 SETLIST                          R66 R67 3 [1]
      906 SETTABLEKS                       R66 R65 K59 ["lastUpdated"]
      908 CALL                             R64 1 1
      909 GETIMPORT                        R65 K50 [table.freeze]
      911 DUPTABLE                         R66 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      912 LOADK                            R67 K123 ["StudioAssistantPrimitiveGenCompletedCount"]
      913 SETTABLEKS                       R67 R66 K56 ["eventName"]
      915 NEWTABLE                         R67 0 1
      917 GETTABLEKS                       R68 R6 K51 ["Backends"]
      919 GETTABLEKS                       R68 R68 K62 ["RobloxTelemetryCounter"]
      921 SETLIST                          R67 R68 1 [1]
      923 SETTABLEKS                       R67 R66 K57 ["backends"]
      925 LOADK                            R67 K124 ["Count of PrimitiveGen completions with success status."]
      926 SETTABLEKS                       R67 R66 K58 ["description"]
      928 NEWTABLE                         R67 0 3
      930 LOADN                            R68 26
      931 LOADN                            R69 3
      932 LOADN                            R70 12
      933 SETLIST                          R67 R68 3 [1]
      935 SETTABLEKS                       R67 R66 K59 ["lastUpdated"]
      937 CALL                             R65 1 1
      938 GETIMPORT                        R66 K50 [table.freeze]
      940 DUPTABLE                         R67 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      941 LOADK                            R68 K125 ["StudioAssistantPrimitiveGenCompleted"]
      942 SETTABLEKS                       R68 R67 K56 ["eventName"]
      944 SETTABLEKS                       R35 R67 K57 ["backends"]
      946 LOADK                            R68 K126 ["PrimitiveGen completion event with generation, prompt, render latency, and dependency details."]
      947 SETTABLEKS                       R68 R67 K58 ["description"]
      949 NEWTABLE                         R68 0 3
      951 LOADN                            R69 26
      952 LOADN                            R70 3
      953 LOADN                            R71 12
      954 SETLIST                          R68 R69 3 [1]
      956 SETTABLEKS                       R68 R67 K59 ["lastUpdated"]
      958 CALL                             R66 1 1
      959 GETIMPORT                        R67 K50 [table.freeze]
      961 DUPTABLE                         R68 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      962 LOADK                            R69 K127 ["StudioAssistantGen3DSegmentationRefresh"]
      963 SETTABLEKS                       R69 R68 K56 ["eventName"]
      965 NEWTABLE                         R69 0 1
      967 GETTABLEKS                       R70 R6 K51 ["Backends"]
      969 GETTABLEKS                       R70 R70 K62 ["RobloxTelemetryCounter"]
      971 SETLIST                          R69 R70 1 [1]
      973 SETTABLEKS                       R69 R68 K57 ["backends"]
      975 LOADK                            R69 K128 ["Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat."]
      976 SETTABLEKS                       R69 R68 K58 ["description"]
      978 NEWTABLE                         R69 0 3
      980 LOADN                            R70 26
      981 LOADN                            R71 6
      982 LOADN                            R72 9
      983 SETLIST                          R69 R70 3 [1]
      985 SETTABLEKS                       R69 R68 K59 ["lastUpdated"]
      987 CALL                             R67 1 1
      988 GETIMPORT                        R68 K50 [table.freeze]
      990 DUPTABLE                         R69 K60 [{"eventName", "backends", "description", "lastUpdated"}]
      991 LOADK                            R70 K129 ["StudioAssistantGen3DInstanceDeleted"]
      992 SETTABLEKS                       R70 R69 K56 ["eventName"]
      994 SETTABLEKS                       R35 R69 K57 ["backends"]
      996 LOADK                            R70 K130 ["Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session."]
      997 SETTABLEKS                       R70 R69 K58 ["description"]
      999 NEWTABLE                         R70 0 3
     1001 LOADN                            R71 26
     1002 LOADN                            R72 6
     1003 LOADN                            R73 9
     1004 SETLIST                          R70 R71 3 [1]
     1006 SETTABLEKS                       R70 R69 K59 ["lastUpdated"]
     1008 CALL                             R68 1 1
     1009 GETIMPORT                        R69 K50 [table.freeze]
     1011 DUPTABLE                         R70 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1012 LOADK                            R71 K131 ["StudioAssistantIntegrationAction"]
     1013 SETTABLEKS                       R71 R70 K56 ["eventName"]
     1015 SETTABLEKS                       R35 R70 K57 ["backends"]
     1017 LOADK                            R71 K132 ["Integration event with action, label, and URL."]
     1018 SETTABLEKS                       R71 R70 K58 ["description"]
     1020 NEWTABLE                         R71 0 3
     1022 LOADN                            R72 26
     1023 LOADN                            R73 2
     1024 LOADN                            R74 3
     1025 SETLIST                          R71 R72 3 [1]
     1027 SETTABLEKS                       R71 R70 K59 ["lastUpdated"]
     1029 CALL                             R69 1 1
     1030 GETIMPORT                        R70 K50 [table.freeze]
     1032 DUPTABLE                         R71 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1033 LOADK                            R72 K133 ["StudioAssistantExternalServerConnectedEvent"]
     1034 SETTABLEKS                       R72 R71 K56 ["eventName"]
     1036 SETTABLEKS                       R35 R71 K57 ["backends"]
     1038 LOADK                            R72 K134 ["External server connected event with session ID"]
     1039 SETTABLEKS                       R72 R71 K58 ["description"]
     1041 NEWTABLE                         R72 0 3
     1043 LOADN                            R73 26
     1044 LOADN                            R74 2
     1045 LOADN                            R75 25
     1046 SETLIST                          R72 R73 3 [1]
     1048 SETTABLEKS                       R72 R71 K59 ["lastUpdated"]
     1050 CALL                             R70 1 1
     1051 GETIMPORT                        R71 K50 [table.freeze]
     1053 DUPTABLE                         R72 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1054 LOADK                            R73 K135 ["StudioAssistantExternalServerConnectedCounter"]
     1055 SETTABLEKS                       R73 R72 K56 ["eventName"]
     1057 NEWTABLE                         R73 0 1
     1059 GETTABLEKS                       R74 R6 K51 ["Backends"]
     1061 GETTABLEKS                       R74 R74 K62 ["RobloxTelemetryCounter"]
     1063 SETLIST                          R73 R74 1 [1]
     1065 SETTABLEKS                       R73 R72 K57 ["backends"]
     1067 LOADK                            R73 K134 ["External server connected event with session ID"]
     1068 SETTABLEKS                       R73 R72 K58 ["description"]
     1070 NEWTABLE                         R73 0 3
     1072 LOADN                            R74 26
     1073 LOADN                            R75 2
     1074 LOADN                            R76 25
     1075 SETLIST                          R73 R74 3 [1]
     1077 SETTABLEKS                       R73 R72 K59 ["lastUpdated"]
     1079 CALL                             R71 1 1
     1080 GETIMPORT                        R72 K50 [table.freeze]
     1082 DUPTABLE                         R73 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1083 LOADK                            R74 K136 ["CAPQuestionAnswerCompleted"]
     1084 SETTABLEKS                       R74 R73 K56 ["eventName"]
     1086 SETTABLEKS                       R35 R73 K57 ["backends"]
     1088 LOADK                            R74 K137 ["Question answer tool completed event with full question/answer context."]
     1089 SETTABLEKS                       R74 R73 K58 ["description"]
     1091 NEWTABLE                         R74 0 3
     1093 LOADN                            R75 26
     1094 LOADN                            R76 4
     1095 LOADN                            R77 1
     1096 SETLIST                          R74 R75 3 [1]
     1098 SETTABLEKS                       R74 R73 K59 ["lastUpdated"]
     1100 CALL                             R72 1 1
     1101 GETIMPORT                        R73 K50 [table.freeze]
     1103 DUPTABLE                         R74 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1104 LOADK                            R75 K138 ["StudioAssistantQuestionAnswerCompleted"]
     1105 SETTABLEKS                       R75 R74 K56 ["eventName"]
     1107 NEWTABLE                         R75 0 1
     1109 GETTABLEKS                       R76 R6 K51 ["Backends"]
     1111 GETTABLEKS                       R76 R76 K62 ["RobloxTelemetryCounter"]
     1113 SETLIST                          R75 R76 1 [1]
     1115 SETTABLEKS                       R75 R74 K57 ["backends"]
     1117 LOADK                            R75 K139 ["Count of question answer tool completions."]
     1118 SETTABLEKS                       R75 R74 K58 ["description"]
     1120 NEWTABLE                         R75 0 3
     1122 LOADN                            R76 26
     1123 LOADN                            R77 4
     1124 LOADN                            R78 1
     1125 SETLIST                          R75 R76 3 [1]
     1127 SETTABLEKS                       R75 R74 K59 ["lastUpdated"]
     1129 CALL                             R73 1 1
     1130 GETIMPORT                        R74 K50 [table.freeze]
     1132 DUPTABLE                         R75 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1133 LOADK                            R76 K140 ["CAPPlanDecision"]
     1134 SETTABLEKS                       R76 R75 K56 ["eventName"]
     1136 SETTABLEKS                       R35 R75 K57 ["backends"]
     1138 LOADK                            R76 K141 ["Plan decision event with full plan context when user accepts or rejects a plan."]
     1139 SETTABLEKS                       R76 R75 K58 ["description"]
     1141 NEWTABLE                         R76 0 3
     1143 LOADN                            R77 26
     1144 LOADN                            R78 4
     1145 LOADN                            R79 1
     1146 SETLIST                          R76 R77 3 [1]
     1148 SETTABLEKS                       R76 R75 K59 ["lastUpdated"]
     1150 CALL                             R74 1 1
     1151 GETIMPORT                        R75 K50 [table.freeze]
     1153 DUPTABLE                         R76 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1154 LOADK                            R77 K142 ["StudioAssistantPlanDecision"]
     1155 SETTABLEKS                       R77 R76 K56 ["eventName"]
     1157 NEWTABLE                         R77 0 1
     1159 GETTABLEKS                       R78 R6 K51 ["Backends"]
     1161 GETTABLEKS                       R78 R78 K62 ["RobloxTelemetryCounter"]
     1163 SETLIST                          R77 R78 1 [1]
     1165 SETTABLEKS                       R77 R76 K57 ["backends"]
     1167 LOADK                            R77 K143 ["Count of plan decisions."]
     1168 SETTABLEKS                       R77 R76 K58 ["description"]
     1170 NEWTABLE                         R77 0 3
     1172 LOADN                            R78 26
     1173 LOADN                            R79 4
     1174 LOADN                            R80 1
     1175 SETLIST                          R77 R78 3 [1]
     1177 SETTABLEKS                       R77 R76 K59 ["lastUpdated"]
     1179 CALL                             R75 1 1
     1180 GETIMPORT                        R76 K50 [table.freeze]
     1182 DUPTABLE                         R77 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1183 LOADK                            R78 K144 ["SBT_MaterialGeneratorSavedMaterial"]
     1184 SETTABLEKS                       R78 R77 K56 ["eventName"]
     1186 NEWTABLE                         R78 0 1
     1188 GETTABLEKS                       R79 R6 K51 ["Backends"]
     1190 GETTABLEKS                       R79 R79 K62 ["RobloxTelemetryCounter"]
     1192 SETLIST                          R78 R79 1 [1]
     1194 SETTABLEKS                       R78 R77 K57 ["backends"]
     1196 LOADK                            R78 K145 ["Counter to track number of saved materials"]
     1197 SETTABLEKS                       R78 R77 K58 ["description"]
     1199 NEWTABLE                         R78 0 3
     1201 LOADN                            R79 24
     1202 LOADN                            R80 10
     1203 LOADN                            R81 15
     1204 SETLIST                          R78 R79 3 [1]
     1206 SETTABLEKS                       R78 R77 K59 ["lastUpdated"]
     1208 CALL                             R76 1 1
     1209 GETIMPORT                        R77 K50 [table.freeze]
     1211 DUPTABLE                         R78 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1212 LOADK                            R79 K146 ["StudioAssistantThreadCreated"]
     1213 SETTABLEKS                       R79 R78 K56 ["eventName"]
     1215 SETTABLEKS                       R35 R78 K57 ["backends"]
     1217 LOADK                            R79 K147 ["Thread created event with details."]
     1218 SETTABLEKS                       R79 R78 K58 ["description"]
     1220 NEWTABLE                         R79 0 3
     1222 LOADN                            R80 26
     1223 LOADN                            R81 3
     1224 LOADN                            R82 10
     1225 SETLIST                          R79 R80 3 [1]
     1227 SETTABLEKS                       R79 R78 K59 ["lastUpdated"]
     1229 CALL                             R77 1 1
     1230 GETIMPORT                        R78 K50 [table.freeze]
     1232 DUPTABLE                         R79 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1233 LOADK                            R80 K148 ["StudioAssistantThreadRenamed"]
     1234 SETTABLEKS                       R80 R79 K56 ["eventName"]
     1236 SETTABLEKS                       R35 R79 K57 ["backends"]
     1238 LOADK                            R80 K149 ["Thread named event with details."]
     1239 SETTABLEKS                       R80 R79 K58 ["description"]
     1241 NEWTABLE                         R80 0 3
     1243 LOADN                            R81 26
     1244 LOADN                            R82 3
     1245 LOADN                            R83 10
     1246 SETLIST                          R80 R81 3 [1]
     1248 SETTABLEKS                       R80 R79 K59 ["lastUpdated"]
     1250 CALL                             R78 1 1
     1251 GETIMPORT                        R79 K50 [table.freeze]
     1253 DUPTABLE                         R80 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1254 LOADK                            R81 K150 ["StudioAssistantThreadPinnedChanged"]
     1255 SETTABLEKS                       R81 R80 K56 ["eventName"]
     1257 SETTABLEKS                       R35 R80 K57 ["backends"]
     1259 LOADK                            R81 K151 ["Thread pinned changed event with details."]
     1260 SETTABLEKS                       R81 R80 K58 ["description"]
     1262 NEWTABLE                         R81 0 3
     1264 LOADN                            R82 26
     1265 LOADN                            R83 3
     1266 LOADN                            R84 10
     1267 SETLIST                          R81 R82 3 [1]
     1269 SETTABLEKS                       R81 R80 K59 ["lastUpdated"]
     1271 CALL                             R79 1 1
     1272 GETIMPORT                        R80 K50 [table.freeze]
     1274 DUPTABLE                         R81 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1275 LOADK                            R82 K152 ["StudioAssistantThreadDeleted"]
     1276 SETTABLEKS                       R82 R81 K56 ["eventName"]
     1278 SETTABLEKS                       R35 R81 K57 ["backends"]
     1280 LOADK                            R82 K153 ["Thread deleted event with details."]
     1281 SETTABLEKS                       R82 R81 K58 ["description"]
     1283 NEWTABLE                         R82 0 3
     1285 LOADN                            R83 26
     1286 LOADN                            R84 3
     1287 LOADN                            R85 10
     1288 SETLIST                          R82 R83 3 [1]
     1290 SETTABLEKS                       R82 R81 K59 ["lastUpdated"]
     1292 CALL                             R80 1 1
     1293 GETIMPORT                        R81 K50 [table.freeze]
     1295 DUPTABLE                         R82 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1296 LOADK                            R83 K154 ["StudioAssistantThreadDuplicated"]
     1297 SETTABLEKS                       R83 R82 K56 ["eventName"]
     1299 SETTABLEKS                       R35 R82 K57 ["backends"]
     1301 LOADK                            R83 K155 ["Thread duplicated event with details."]
     1302 SETTABLEKS                       R83 R82 K58 ["description"]
     1304 NEWTABLE                         R83 0 3
     1306 LOADN                            R84 26
     1307 LOADN                            R85 3
     1308 LOADN                            R86 10
     1309 SETLIST                          R83 R84 3 [1]
     1311 SETTABLEKS                       R83 R82 K59 ["lastUpdated"]
     1313 CALL                             R81 1 1
     1314 GETIMPORT                        R82 K50 [table.freeze]
     1316 DUPTABLE                         R83 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1317 LOADK                            R84 K156 ["StudioAssistantCompactionSuccess"]
     1318 SETTABLEKS                       R84 R83 K56 ["eventName"]
     1320 SETTABLEKS                       R35 R83 K57 ["backends"]
     1322 LOADK                            R84 K157 ["Context compaction summarizer completed successfully."]
     1323 SETTABLEKS                       R84 R83 K58 ["description"]
     1325 NEWTABLE                         R84 0 3
     1327 LOADN                            R85 26
     1328 LOADN                            R86 4
     1329 LOADN                            R87 28
     1330 SETLIST                          R84 R85 3 [1]
     1332 SETTABLEKS                       R84 R83 K59 ["lastUpdated"]
     1334 CALL                             R82 1 1
     1335 GETIMPORT                        R83 K50 [table.freeze]
     1337 DUPTABLE                         R84 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1338 LOADK                            R85 K158 ["StudioAssistantCompactionSuccessCount"]
     1339 SETTABLEKS                       R85 R84 K56 ["eventName"]
     1341 NEWTABLE                         R85 0 1
     1343 GETTABLEKS                       R86 R6 K51 ["Backends"]
     1345 GETTABLEKS                       R86 R86 K62 ["RobloxTelemetryCounter"]
     1347 SETLIST                          R85 R86 1 [1]
     1349 SETTABLEKS                       R85 R84 K57 ["backends"]
     1351 LOADK                            R85 K159 ["Count of successful compaction events."]
     1352 SETTABLEKS                       R85 R84 K58 ["description"]
     1354 NEWTABLE                         R85 0 3
     1356 LOADN                            R86 26
     1357 LOADN                            R87 4
     1358 LOADN                            R88 28
     1359 SETLIST                          R85 R86 3 [1]
     1361 SETTABLEKS                       R85 R84 K59 ["lastUpdated"]
     1363 CALL                             R83 1 1
     1364 GETIMPORT                        R84 K50 [table.freeze]
     1366 DUPTABLE                         R85 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1367 LOADK                            R86 K160 ["StudioAssistantCompactionFallback"]
     1368 SETTABLEKS                       R86 R85 K56 ["eventName"]
     1370 SETTABLEKS                       R35 R85 K57 ["backends"]
     1372 LOADK                            R86 K161 ["Context compaction summarizer failed, fell back to generic summary."]
     1373 SETTABLEKS                       R86 R85 K58 ["description"]
     1375 NEWTABLE                         R86 0 3
     1377 LOADN                            R87 26
     1378 LOADN                            R88 4
     1379 LOADN                            R89 28
     1380 SETLIST                          R86 R87 3 [1]
     1382 SETTABLEKS                       R86 R85 K59 ["lastUpdated"]
     1384 CALL                             R84 1 1
     1385 GETIMPORT                        R85 K50 [table.freeze]
     1387 DUPTABLE                         R86 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1388 LOADK                            R87 K162 ["StudioAssistantCompactionFallbackCount"]
     1389 SETTABLEKS                       R87 R86 K56 ["eventName"]
     1391 NEWTABLE                         R87 0 1
     1393 GETTABLEKS                       R88 R6 K51 ["Backends"]
     1395 GETTABLEKS                       R88 R88 K62 ["RobloxTelemetryCounter"]
     1397 SETLIST                          R87 R88 1 [1]
     1399 SETTABLEKS                       R87 R86 K57 ["backends"]
     1401 LOADK                            R87 K163 ["Count of compaction fallback events."]
     1402 SETTABLEKS                       R87 R86 K58 ["description"]
     1404 NEWTABLE                         R87 0 3
     1406 LOADN                            R88 26
     1407 LOADN                            R89 4
     1408 LOADN                            R90 28
     1409 SETLIST                          R87 R88 3 [1]
     1411 SETTABLEKS                       R87 R86 K59 ["lastUpdated"]
     1413 CALL                             R85 1 1
     1414 GETIMPORT                        R86 K50 [table.freeze]
     1416 DUPTABLE                         R87 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1417 LOADK                            R88 K164 ["StudioAssistantMCPQuickSetup"]
     1418 SETTABLEKS                       R88 R87 K56 ["eventName"]
     1420 SETTABLEKS                       R35 R87 K57 ["backends"]
     1422 LOADK                            R88 K165 ["Quick setup toggled/copied."]
     1423 SETTABLEKS                       R88 R87 K58 ["description"]
     1425 NEWTABLE                         R88 0 3
     1427 LOADN                            R89 26
     1428 LOADN                            R90 4
     1429 LOADN                            R91 15
     1430 SETLIST                          R88 R89 3 [1]
     1432 SETTABLEKS                       R88 R87 K59 ["lastUpdated"]
     1434 CALL                             R86 1 1
     1435 GETIMPORT                        R87 K50 [table.freeze]
     1437 DUPTABLE                         R88 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1438 LOADK                            R89 K166 ["StudioAssistantThreadSwitched"]
     1439 SETTABLEKS                       R89 R88 K56 ["eventName"]
     1441 SETTABLEKS                       R35 R88 K57 ["backends"]
     1443 LOADK                            R89 K167 ["Thread switched event with details."]
     1444 SETTABLEKS                       R89 R88 K58 ["description"]
     1446 NEWTABLE                         R89 0 3
     1448 LOADN                            R90 26
     1449 LOADN                            R91 3
     1450 LOADN                            R92 10
     1451 SETLIST                          R89 R90 3 [1]
     1453 SETTABLEKS                       R89 R88 K59 ["lastUpdated"]
     1455 CALL                             R87 1 1
     1456 GETIMPORT                        R88 K50 [table.freeze]
     1458 DUPTABLE                         R89 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1459 LOADK                            R90 K168 ["StudioAssistantPersistenceSuccess"]
     1460 SETTABLEKS                       R90 R89 K56 ["eventName"]
     1462 NEWTABLE                         R90 0 1
     1464 GETTABLEKS                       R91 R6 K51 ["Backends"]
     1466 GETTABLEKS                       R91 R91 K62 ["RobloxTelemetryCounter"]
     1468 SETLIST                          R90 R91 1 [1]
     1470 SETTABLEKS                       R90 R89 K57 ["backends"]
     1472 LOADK                            R90 K169 ["Count of successful persistence operations."]
     1473 SETTABLEKS                       R90 R89 K58 ["description"]
     1475 NEWTABLE                         R90 0 3
     1477 LOADN                            R91 26
     1478 LOADN                            R92 3
     1479 LOADN                            R93 10
     1480 SETLIST                          R90 R91 3 [1]
     1482 SETTABLEKS                       R90 R89 K59 ["lastUpdated"]
     1484 CALL                             R88 1 1
     1485 GETIMPORT                        R89 K50 [table.freeze]
     1487 DUPTABLE                         R90 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1488 LOADK                            R91 K170 ["StudioAssistantPersistenceFailure"]
     1489 SETTABLEKS                       R91 R90 K56 ["eventName"]
     1491 NEWTABLE                         R91 0 1
     1493 GETTABLEKS                       R92 R6 K51 ["Backends"]
     1495 GETTABLEKS                       R92 R92 K62 ["RobloxTelemetryCounter"]
     1497 SETLIST                          R91 R92 1 [1]
     1499 SETTABLEKS                       R91 R90 K57 ["backends"]
     1501 LOADK                            R91 K171 ["Count of failed persistence operations."]
     1502 SETTABLEKS                       R91 R90 K58 ["description"]
     1504 NEWTABLE                         R91 0 3
     1506 LOADN                            R92 26
     1507 LOADN                            R93 3
     1508 LOADN                            R94 10
     1509 SETLIST                          R91 R92 3 [1]
     1511 SETTABLEKS                       R91 R90 K59 ["lastUpdated"]
     1513 CALL                             R89 1 1
     1514 GETIMPORT                        R90 K50 [table.freeze]
     1516 DUPTABLE                         R91 K60 [{"eventName", "backends", "description", "lastUpdated"}]
     1517 LOADK                            R92 K172 ["StudioAssistantPersistenceLatencyMs"]
     1518 SETTABLEKS                       R92 R91 K56 ["eventName"]
     1520 NEWTABLE                         R92 0 1
     1522 GETTABLEKS                       R93 R6 K51 ["Backends"]
     1524 GETTABLEKS                       R93 R93 K79 ["RobloxTelemetryStat"]
     1526 SETLIST                          R92 R93 1 [1]
     1528 SETTABLEKS                       R92 R91 K57 ["backends"]
     1530 LOADK                            R92 K173 ["Persistence operation latency in milliseconds."]
     1531 SETTABLEKS                       R92 R91 K58 ["description"]
     1533 NEWTABLE                         R92 0 3
     1535 LOADN                            R93 26
     1536 LOADN                            R94 3
     1537 LOADN                            R95 10
     1538 SETLIST                          R92 R93 3 [1]
     1540 SETTABLEKS                       R92 R91 K59 ["lastUpdated"]
     1542 CALL                             R90 1 1
     1543 DUPCLOSURE                       R91 K174 [PROTO_18]
     1544 CAPTURE                          VAL R30
     1545 CAPTURE                          VAL R31
     1546 DUPCLOSURE                       R92 K175 [PROTO_19]
     1547 CAPTURE                          VAL R30
     1548 CAPTURE                          VAL R31
     1549 CAPTURE                          VAL R1
     1550 DUPCLOSURE                       R93 K176 [PROTO_20]
     1551 CAPTURE                          VAL R4
     1552 CAPTURE                          VAL R8
     1553 MOVE                             R94 R28
     1554 CALL                             R94 0 1
     1555 GETTABLEKS                       R95 R5 K177 ["new"]
     1557 MOVE                             R96 R2
     1558 MOVE                             R97 R29
     1559 CALL                             R97 0 -1
     1560 CALL                             R95 -1 1
     1561 DUPCLOSURE                       R96 K178 [PROTO_21]
     1562 CAPTURE                          VAL R95
     1563 CAPTURE                          VAL R94
     1564 DUPCLOSURE                       R97 K179 [PROTO_22]
     1565 CAPTURE                          VAL R4
     1566 CAPTURE                          VAL R95
     1567 CAPTURE                          VAL R94
     1568 DUPCLOSURE                       R98 K180 [PROTO_61]
     1569 CAPTURE                          VAL R6
     1570 CAPTURE                          VAL R36
     1571 CAPTURE                          VAL R4
     1572 CAPTURE                          VAL R95
     1573 CAPTURE                          VAL R94
     1574 CAPTURE                          VAL R30
     1575 CAPTURE                          VAL R8
     1576 CAPTURE                          VAL R37
     1577 CAPTURE                          VAL R7
     1578 CAPTURE                          VAL R38
     1579 CAPTURE                          VAL R46
     1580 CAPTURE                          VAL R41
     1581 CAPTURE                          VAL R39
     1582 CAPTURE                          VAL R42
     1583 CAPTURE                          VAL R40
     1584 CAPTURE                          VAL R43
     1585 CAPTURE                          VAL R47
     1586 CAPTURE                          VAL R48
     1587 CAPTURE                          VAL R49
     1588 CAPTURE                          VAL R1
     1589 CAPTURE                          VAL R10
     1590 CAPTURE                          VAL R51
     1591 CAPTURE                          VAL R25
     1592 CAPTURE                          VAL R21
     1593 CAPTURE                          VAL R24
     1594 CAPTURE                          VAL R50
     1595 CAPTURE                          VAL R52
     1596 CAPTURE                          VAL R53
     1597 CAPTURE                          VAL R44
     1598 CAPTURE                          VAL R45
     1599 CAPTURE                          VAL R54
     1600 CAPTURE                          VAL R55
     1601 CAPTURE                          VAL R56
     1602 CAPTURE                          VAL R57
     1603 CAPTURE                          VAL R58
     1604 CAPTURE                          VAL R59
     1605 CAPTURE                          VAL R60
     1606 CAPTURE                          VAL R61
     1607 CAPTURE                          VAL R62
     1608 CAPTURE                          VAL R63
     1609 CAPTURE                          VAL R64
     1610 CAPTURE                          VAL R65
     1611 CAPTURE                          VAL R66
     1612 CAPTURE                          VAL R11
     1613 CAPTURE                          VAL R67
     1614 CAPTURE                          VAL R68
     1615 CAPTURE                          VAL R69
     1616 CAPTURE                          VAL R70
     1617 CAPTURE                          VAL R71
     1618 CAPTURE                          VAL R73
     1619 CAPTURE                          VAL R72
     1620 CAPTURE                          VAL R75
     1621 CAPTURE                          VAL R74
     1622 CAPTURE                          VAL R76
     1623 CAPTURE                          VAL R77
     1624 CAPTURE                          VAL R78
     1625 CAPTURE                          VAL R79
     1626 CAPTURE                          VAL R80
     1627 CAPTURE                          VAL R81
     1628 CAPTURE                          VAL R86
     1629 CAPTURE                          VAL R87
     1630 CAPTURE                          VAL R83
     1631 CAPTURE                          VAL R82
     1632 CAPTURE                          VAL R85
     1633 CAPTURE                          VAL R84
     1634 CAPTURE                          VAL R90
     1635 CAPTURE                          VAL R88
     1636 CAPTURE                          VAL R89
     1637 CAPTURE                          VAL R91
     1638 CAPTURE                          VAL R92
     1639 DUPCLOSURE                       R99 K181 [PROTO_62]
     1640 CAPTURE                          VAL R98
     1641 CAPTURE                          VAL R30
     1642 DUPTABLE                         R100 K184 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1643 SETTABLEKS                       R98 R100 K182 ["makeStudioTelemetryEvents"]
     1645 SETTABLEKS                       R99 R100 K183 ["createStudioEventLogger"]
     1647 RETURN                           R100 1
