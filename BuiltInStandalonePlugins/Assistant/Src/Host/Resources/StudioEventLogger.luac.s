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
        5 LOADN                            R2 500
        6 JUMPIFNOTLE                      R1 R2 ; [+2]
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 LOADN                            R3 500
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
      100 DUPTABLE                         R1 K18 [{[1], ["error"] = "Unknown tool result content type"}]
      101 GETTABLEKS                       R3 R0 K0 ["type"]
      103 FASTCALL1                        TOSTRING R3 ; [+2]
      104 GETIMPORT                        R2 K20 [tostring]
      106 CALL                             R2 1 1
      107 SETTABLEKS                       R2 R1 K0 ["type"]
      109 RETURN                           R1 1

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
       11 JUMPIF                           R1 ; [+13]
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R5 K5 [{["error"] = "Failed to encode tool result content", ["detail"]}]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K7 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K4 ["detail"]
       21 NAMECALL                         R3 R3 K8 ["JSONEncode"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1
       25 LENGTH                           R3 R2
       26 LOADN                            R4 500
       27 JUMPIFNOTLT                      R4 R3 ; [+11]
       29 LOADN                            R5 1
       30 LOADN                            R6 500
       31 FASTCALL3                        STRING_SUB R2 R5 R6
       33 MOVE                             R4 R2
       34 GETIMPORT                        R3 K11 [string.sub]
       36 CALL                             R3 3 1
       37 LOADB                            R4 1
       38 RETURN                           R3 2
       39 RETURN                           R2 1

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
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 DUPTABLE                         R1 K4 [{[1] = , ["toolResultImages"] = , ["toolResultContentItemCount"] = }]
        3 RETURN                           R1 1
        4 LOADN                            R1 0
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K5 ["type"]
       13 JUMPIFNOTEQKS                    R8 K6 ["text"] ; [+3]
       15 ADDK                             R1 R1 K7 [1]
       16 JUMP                             ; [+128]
       17 GETTABLEKS                       R8 R7 K5 ["type"]
       19 JUMPIFNOTEQKS                    R8 K8 ["image"] ; [+125]
       21 GETTABLEKS                       R9 R7 K9 ["data"]
       23 JUMPIFNOTEQKNIL                  R9 ; [+3]
       25 LOADNIL                          R8
       26 JUMP                             ; [+14]
       27 GETIMPORT                        R10 K12 [string.gsub]
       29 MOVE                             R11 R9
       30 LOADK                            R12 K13 ["%s+"]
       31 LOADK                            R13 K14 [""]
       32 CALL                             R10 3 1
       33 GETIMPORT                        R11 K16 [string.match]
       35 MOVE                             R12 R10
       36 LOADK                            R13 K17 ["^[^,]+,(.+)$"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R11 ; [+1]
       39 MOVE                             R10 R11
       40 MOVE                             R8 R10
       41 JUMPIFNOT                        R8 ; [+6]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K18 ["getPngOrJpegDimensionsFromBase64"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 DUPTABLE                         R12 K24 [{"width", "height", "mimeType", "base64Characters", "byteSize"}]
       50 JUMPIFNOT                        R9 ; [+3]
       51 GETTABLEKS                       R13 R9 K19 ["width"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R13
       55 SETTABLEKS                       R13 R12 K19 ["width"]
       57 JUMPIFNOT                        R9 ; [+3]
       58 GETTABLEKS                       R13 R9 K20 ["height"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R13
       62 SETTABLEKS                       R13 R12 K20 ["height"]
       64 JUMPIFNOT                        R9 ; [+3]
       65 GETTABLEKS                       R13 R9 K21 ["mimeType"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R13 R7 K21 ["mimeType"]
       70 SETTABLEKS                       R13 R12 K21 ["mimeType"]
       72 JUMPIFNOT                        R8 ; [+2]
       73 LENGTH                           R13 R8
       74 JUMP                             ; [+1]
       75 LOADNIL                          R13
       76 SETTABLEKS                       R13 R12 K22 ["base64Characters"]
       78 JUMPIFNOTEQKNIL                  R8 ; [+3]
       80 LOADNIL                          R14
       81 JUMP                             ; [+14]
       82 GETIMPORT                        R15 K12 [string.gsub]
       84 MOVE                             R16 R8
       85 LOADK                            R17 K13 ["%s+"]
       86 LOADK                            R18 K14 [""]
       87 CALL                             R15 3 1
       88 GETIMPORT                        R16 K16 [string.match]
       90 MOVE                             R17 R15
       91 LOADK                            R18 K17 ["^[^,]+,(.+)$"]
       92 CALL                             R16 2 1
       93 JUMPIFNOT                        R16 ; [+1]
       94 MOVE                             R15 R16
       95 MOVE                             R14 R15
       96 JUMPIFNOTEQKNIL                  R14 ; [+3]
       98 LOADN                            R13 0
       99 JUMP                             ; [+37]
      100 LOADN                            R15 0
      101 FASTCALL2K                       STRING_SUB R14 K25 ; [+5]
      103 MOVE                             R17 R14
      104 LOADK                            R18 K25 [-2]
      105 GETIMPORT                        R16 K27 [string.sub]
      107 CALL                             R16 2 1
      108 JUMPIFNOTEQKS                    R16 K28 ["=="] ; [+3]
      110 LOADN                            R15 2
      111 JUMP                             ; [+10]
      112 FASTCALL2K                       STRING_SUB R14 K29 ; [+5]
      114 MOVE                             R17 R14
      115 LOADK                            R18 K29 [-1]
      116 GETIMPORT                        R16 K27 [string.sub]
      118 CALL                             R16 2 1
      119 JUMPIFNOTEQKS                    R16 K30 ["="] ; [+2]
      121 LOADN                            R15 1
      122 LOADN                            R17 0
      123 LENGTH                           R22 R14
      124 MULK                             R21 R22 K32 [3]
      125 DIVK                             R20 R21 K31 [4]
      126 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      127 GETIMPORT                        R19 K35 [math.floor]
      129 CALL                             R19 1 1
      130 SUB                              R18 R19 R15
      131 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      133 GETIMPORT                        R16 K37 [math.max]
      135 CALL                             R16 2 1
      136 MOVE                             R13 R16
      137 SETTABLEKS                       R13 R12 K23 ["byteSize"]
      139 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      141 MOVE                             R11 R2
      142 GETIMPORT                        R10 K40 [table.insert]
      144 CALL                             R10 2 0
      145 FORGLOOP                         R3 2 ; [-135]
      147 DUPTABLE                         R3 K41 [{"toolResultTextContentCount", "toolResultImages", "toolResultContentItemCount"}]
      148 SETTABLEKS                       R1 R3 K0 ["toolResultTextContentCount"]
      150 JUMPIFNOTEQKNIL                  R2 ; [+3]
      152 LOADNIL                          R4
      153 JUMP                             ; [+10]
      154 GETIMPORT                        R5 K43 [pcall]
      156 NEWCLOSURE                       R6 P0
      157 CAPTURE                          UPVAL U1
      158 CAPTURE                          VAL R2
      159 CALL                             R5 1 2
      160 JUMPIF                           R5 ; [+2]
      161 LOADNIL                          R4
      162 JUMP                             ; [+1]
      163 MOVE                             R4 R6
      164 SETTABLEKS                       R4 R3 K2 ["toolResultImages"]
      166 LENGTH                           R4 R0
      167 SETTABLEKS                       R4 R3 K3 ["toolResultContentItemCount"]
      169 RETURN                           R3 1

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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       44 DUPTABLE                         R1 K18 [{["requestId"], ["conversationId"], ["threadId"], ["message"], ["attachments"], ["assistantMode"], ["role"] = "MCPUser"}]
       45 GETTABLEKS                       R2 R0 K19 ["messageGuid"]
       47 SETTABLEKS                       R2 R1 K10 ["requestId"]
       49 GETTABLEKS                       R2 R0 K20 ["sessionId"]
       51 SETTABLEKS                       R2 R1 K11 ["conversationId"]
       53 GETTABLEKS                       R2 R0 K12 ["threadId"]
       55 SETTABLEKS                       R2 R1 K12 ["threadId"]
       57 GETTABLEKS                       R2 R0 K13 ["message"]
       59 SETTABLEKS                       R2 R1 K13 ["message"]
       61 GETTABLEKS                       R2 R0 K14 ["attachments"]
       63 SETTABLEKS                       R2 R1 K14 ["attachments"]
       65 GETTABLEKS                       R2 R0 K15 ["assistantMode"]
       67 SETTABLEKS                       R2 R1 K15 ["assistantMode"]
       69 GETTABLEKS                       R2 R0 K21 ["model"]
       71 SETTABLEKS                       R2 R1 K21 ["model"]
       73 GETUPVAL                         R2 2
       74 GETTABLEKS                       R2 R2 K22 ["assign"]
       76 MOVE                             R3 R1
       77 DUPTABLE                         R4 K24 [{"timestampMilliseconds"}]
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R5 R5 K25 ["getTimestampMilliseconds"]
       81 CALL                             R5 0 1
       82 SETTABLEKS                       R5 R4 K23 ["timestampMilliseconds"]
       84 CALL                             R2 2 1
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K26 ["logEvent"]
       88 GETUPVAL                         R4 6
       89 DUPTABLE                         R5 K28 [{"customFields", "standardizedFields"}]
       90 SETTABLEKS                       R2 R5 K1 ["customFields"]
       92 NEWTABLE                         R7 0 0
       94 GETUPVAL                         R8 7
       95 GETTABLEKS                       R8 R8 K29 ["StandardizedFields"]
       97 LOADNIL                          R9
       98 LOADNIL                          R10
       99 FORGPREP                         R8
      100 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      102 MOVE                             R14 R7
      103 MOVE                             R15 R12
      104 GETIMPORT                        R13 K32 [table.insert]
      106 CALL                             R13 2 0
      107 FORGLOOP                         R8 2 ; [-8]
      109 MOVE                             R6 R7
      110 SETTABLEKS                       R6 R5 K27 ["standardizedFields"]
      112 CALL                             R3 2 0
      113 GETUPVAL                         R3 8
      114 JUMPIFNOT                        R3 ; [+10]
      115 GETUPVAL                         R3 8
      116 LOADK                            R5 K33 ["user_message_sent"]
      117 DUPTABLE                         R6 K34 [{"requestId"}]
      118 GETTABLEKS                       R7 R0 K19 ["messageGuid"]
      120 SETTABLEKS                       R7 R6 K10 ["requestId"]
      122 NAMECALL                         R3 R3 K35 ["LogEventAsync"]
      124 CALL                             R3 3 0
      125 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R2 K6 [{[1], ["conversationId"], ["threadId"], ["message"], ["role"] = "MCPAssistant"}]
        1 GETTABLEKS                       R3 R0 K7 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K8 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["threadId"]
       11 SETTABLEKS                       R3 R2 K2 ["threadId"]
       13 GETTABLEKS                       R3 R0 K3 ["message"]
       15 SETTABLEKS                       R3 R2 K3 ["message"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K9 ["assign"]
       20 MOVE                             R4 R2
       21 DUPTABLE                         R5 K11 [{"timestampMilliseconds"}]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K12 ["getTimestampMilliseconds"]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R5 K10 ["timestampMilliseconds"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K13 ["logEvent"]
       33 GETUPVAL                         R3 3
       34 DUPTABLE                         R4 K16 [{"customFields", "standardizedFields"}]
       35 SETTABLEKS                       R1 R4 K14 ["customFields"]
       37 NEWTABLE                         R6 0 0
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K17 ["StandardizedFields"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       47 MOVE                             R13 R6
       48 MOVE                             R14 R11
       49 GETIMPORT                        R12 K20 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-8]
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K15 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K4 [{"markdown"}]
        6 SETTABLEKS                       R0 R4 K3 ["markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["customFields"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
       87 LOADN                            R5 500
       88 JUMPIFNOTLE                      R4 R5 ; [+3]
       90 MOVE                             R3 R2
       91 JUMP                             ; [+7]
       92 GETUPVAL                         R4 3
       93 MOVE                             R5 R2
       94 LOADN                            R6 500
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

PROTO_32:
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
       75 GETTABLEKS                       R2 R2 K21 ["FFlagAssistantToolCallPayloadTelemetry"]
       77 JUMPIFNOT                        R2 ; [+28]
       78 GETUPVAL                         R2 3
       79 GETTABLEKS                       R3 R0 K22 ["toolResultContent"]
       81 CALL                             R2 1 1
       82 GETUPVAL                         R3 4
       83 GETTABLEKS                       R4 R0 K22 ["toolResultContent"]
       85 CALL                             R3 1 1
       86 SETTABLEKS                       R2 R1 K22 ["toolResultContent"]
       88 JUMPIFNOT                        R2 ; [+2]
       89 LENGTH                           R4 R2
       90 JUMP                             ; [+1]
       91 LOADNIL                          R4
       92 SETTABLEKS                       R4 R1 K23 ["toolResultSerializedCharacters"]
       94 GETTABLEKS                       R4 R3 K24 ["toolResultTextContentCount"]
       96 SETTABLEKS                       R4 R1 K24 ["toolResultTextContentCount"]
       98 GETTABLEKS                       R4 R3 K25 ["toolResultImages"]
      100 SETTABLEKS                       R4 R1 K25 ["toolResultImages"]
      102 GETTABLEKS                       R4 R3 K26 ["toolResultContentItemCount"]
      104 SETTABLEKS                       R4 R1 K26 ["toolResultContentItemCount"]
      106 GETUPVAL                         R2 5
      107 GETTABLEKS                       R2 R2 K27 ["logEvent"]
      109 GETUPVAL                         R3 6
      110 DUPTABLE                         R4 K30 [{"customFields", "standardizedFields"}]
      111 SETTABLEKS                       R1 R4 K28 ["customFields"]
      113 NEWTABLE                         R6 0 0
      115 GETUPVAL                         R7 7
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DTelemetryV2"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        8 GETUPVAL                         R2 2
        9 LOADN                            R3 1
       10 DUPTABLE                         R4 K3 [{"customFields"}]
       11 DUPTABLE                         R6 K6 [{"modelFlow", "inputFormat"}]
       12 GETTABLEKS                       R7 R0 K4 ["modelFlow"]
       14 SETTABLEKS                       R7 R6 K4 ["modelFlow"]
       16 GETTABLEKS                       R7 R0 K5 ["inputFormat"]
       18 SETTABLEKS                       R7 R6 K5 ["inputFormat"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K7 ["join"]
       23 MOVE                             R8 R6
       24 DUPTABLE                         R9 K9 [{"experimentationGroup"}]
       25 GETUPVAL                         R11 4
       26 NAMECALL                         R11 R11 K10 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 5
       34 GETTABLE                         R12 R11 R13
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 GETTABLEKS                       R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
       39 JUMPIFNOTEQKNIL                  R12 ; [+3]
       41 LOADNIL                          R10
       42 JUMP                             ; [+6]
       43 FASTCALL1                        TOSTRING R12 ; [+3]
       44 MOVE                             R14 R12
       45 GETIMPORT                        R13 K13 [tostring]
       47 CALL                             R13 1 1
       48 MOVE                             R10 R13
       49 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 CALL                             R1 3 0
       56 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DTelemetryV2"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["logEvent"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K4 [{"customFields", "standardizedFields"}]
       10 DUPTABLE                         R5 K9 [{"requestId", "generationId", "modelFlow", "secondsSinceInsertion"}]
       11 GETTABLEKS                       R6 R0 K5 ["requestId"]
       13 SETTABLEKS                       R6 R5 K5 ["requestId"]
       15 GETTABLEKS                       R6 R0 K6 ["generationId"]
       17 SETTABLEKS                       R6 R5 K6 ["generationId"]
       19 GETTABLEKS                       R6 R0 K7 ["modelFlow"]
       21 SETTABLEKS                       R6 R5 K7 ["modelFlow"]
       23 GETTABLEKS                       R6 R0 K8 ["secondsSinceInsertion"]
       25 SETTABLEKS                       R6 R5 K8 ["secondsSinceInsertion"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K10 ["assign"]
       30 MOVE                             R7 R5
       31 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K13 ["getTimestampMilliseconds"]
       35 CALL                             R9 0 1
       36 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       38 CALL                             R6 2 1
       39 MOVE                             R4 R6
       40 SETTABLEKS                       R4 R3 K2 ["customFields"]
       42 NEWTABLE                         R5 0 0
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K14 ["StandardizedFields"]
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 FORGPREP                         R6
       50 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       52 MOVE                             R12 R5
       53 MOVE                             R13 R10
       54 GETIMPORT                        R11 K17 [table.insert]
       56 CALL                             R11 2 0
       57 FORGLOOP                         R6 2 ; [-8]
       59 MOVE                             R4 R5
       60 SETTABLEKS                       R4 R3 K3 ["standardizedFields"]
       62 CALL                             R1 2 0
       63 RETURN                           R0 0

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
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K9 [{"action", "skillName", "skillDescription", "skillBody", "skillBodyLength"}]
        6 GETTABLEKS                       R6 R0 K4 ["action"]
        8 SETTABLEKS                       R6 R5 K4 ["action"]
       10 GETTABLEKS                       R6 R0 K5 ["skillName"]
       12 SETTABLEKS                       R6 R5 K5 ["skillName"]
       14 GETTABLEKS                       R6 R0 K6 ["skillDescription"]
       16 SETTABLEKS                       R6 R5 K6 ["skillDescription"]
       18 GETTABLEKS                       R7 R0 K7 ["skillBody"]
       20 JUMPIFNOTEQKNIL                  R7 ; [+3]
       22 LOADNIL                          R6
       23 JUMP                             ; [+13]
       24 LENGTH                           R8 R7
       25 LOADN                            R9 500
       26 JUMPIFNOTLE                      R8 R9 ; [+3]
       28 MOVE                             R6 R7
       29 JUMP                             ; [+7]
       30 GETUPVAL                         R8 2
       31 MOVE                             R9 R7
       32 LOADN                            R10 500
       33 CALL                             R8 2 1
       34 MOVE                             R9 R8
       35 LOADK                            R10 K10 ["..."]
       36 CONCAT                           R6 R9 R10
       37 SETTABLEKS                       R6 R5 K7 ["skillBody"]
       39 GETTABLEKS                       R7 R0 K7 ["skillBody"]
       41 LENGTH                           R6 R7
       42 SETTABLEKS                       R6 R5 K8 ["skillBodyLength"]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K11 ["assign"]
       47 MOVE                             R7 R5
       48 DUPTABLE                         R8 K13 [{"timestampMilliseconds"}]
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R9 R9 K14 ["getTimestampMilliseconds"]
       52 CALL                             R9 0 1
       53 SETTABLEKS                       R9 R8 K12 ["timestampMilliseconds"]
       55 CALL                             R6 2 1
       56 MOVE                             R4 R6
       57 SETTABLEKS                       R4 R3 K1 ["customFields"]
       59 NEWTABLE                         R5 0 0
       61 GETUPVAL                         R6 5
       62 GETTABLEKS                       R6 R6 K15 ["StandardizedFields"]
       64 LOADNIL                          R7
       65 LOADNIL                          R8
       66 FORGPREP                         R6
       67 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       69 MOVE                             R12 R5
       70 MOVE                             R13 R10
       71 GETIMPORT                        R11 K18 [table.insert]
       73 CALL                             R11 2 0
       74 FORGLOOP                         R6 2 ; [-8]
       76 MOVE                             R4 R5
       77 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       79 CALL                             R1 2 0
       80 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantLogThinkingTokens"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["thinkingText"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["logEvent"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K5 [{"customFields", "standardizedFields"}]
       12 DUPTABLE                         R6 K13 [{"requestId", "conversationId", "thinkingText", "thinkingTextCharacters", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       13 GETTABLEKS                       R7 R0 K14 ["messageGuid"]
       15 SETTABLEKS                       R7 R6 K6 ["requestId"]
       17 GETTABLEKS                       R7 R0 K15 ["sessionId"]
       19 SETTABLEKS                       R7 R6 K7 ["conversationId"]
       21 SETTABLEKS                       R1 R6 K1 ["thinkingText"]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LENGTH                           R7 R1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K8 ["thinkingTextCharacters"]
       29 GETTABLEKS                       R7 R0 K9 ["isSubagent"]
       31 SETTABLEKS                       R7 R6 K9 ["isSubagent"]
       33 GETTABLEKS                       R7 R0 K10 ["currentSubagent"]
       35 SETTABLEKS                       R7 R6 K10 ["currentSubagent"]
       37 GETTABLEKS                       R7 R0 K11 ["parentMessageGuid"]
       39 SETTABLEKS                       R7 R6 K11 ["parentMessageGuid"]
       41 GETTABLEKS                       R7 R0 K12 ["parentToolId"]
       43 SETTABLEKS                       R7 R6 K12 ["parentToolId"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K16 ["assign"]
       48 MOVE                             R8 R6
       49 DUPTABLE                         R9 K18 [{"timestampMilliseconds"}]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K19 ["getTimestampMilliseconds"]
       53 CALL                             R10 0 1
       54 SETTABLEKS                       R10 R9 K17 ["timestampMilliseconds"]
       56 CALL                             R7 2 1
       57 MOVE                             R5 R7
       58 SETTABLEKS                       R5 R4 K3 ["customFields"]
       60 NEWTABLE                         R6 0 0
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R7 R7 K20 ["StandardizedFields"]
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 FORGPREP                         R7
       68 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       70 MOVE                             R13 R6
       71 MOVE                             R14 R11
       72 GETIMPORT                        R12 K23 [table.insert]
       74 CALL                             R12 2 0
       75 FORGLOOP                         R7 2 ; [-8]
       77 MOVE                             R5 R6
       78 SETTABLEKS                       R5 R4 K4 ["standardizedFields"]
       80 CALL                             R2 2 0
       81 RETURN                           R0 0

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
        9 CAPTURE                          VAL R0
       10 DUPCLOSURE                       R2 K0 [PROTO_22]
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 DUPCLOSURE                       R3 K1 [PROTO_23]
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U7
       22 DUPCLOSURE                       R4 K2 [PROTO_24]
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 NEWCLOSURE                       R5 P4
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U11
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R6 P5
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R0
       48 DUPCLOSURE                       R7 K3 [PROTO_27]
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U14
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 DUPCLOSURE                       R8 K4 [PROTO_28]
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U15
       57 NEWCLOSURE                       R9 P8
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U16
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R0
       64 DUPCLOSURE                       R10 K5 [PROTO_30]
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U17
       69 CAPTURE                          UPVAL U7
       70 DUPCLOSURE                       R11 K6 [PROTO_31]
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U18
       74 CAPTURE                          UPVAL U19
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U20
       77 CAPTURE                          UPVAL U7
       78 DUPCLOSURE                       R12 K7 [PROTO_32]
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U21
       82 CAPTURE                          UPVAL U22
       83 CAPTURE                          UPVAL U23
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U24
       86 CAPTURE                          UPVAL U7
       87 DUPCLOSURE                       R13 K8 [PROTO_33]
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U25
       92 CAPTURE                          UPVAL U7
       93 DUPCLOSURE                       R14 K9 [PROTO_34]
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          UPVAL U26
       98 CAPTURE                          UPVAL U7
       99 DUPCLOSURE                       R15 K10 [PROTO_35]
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U27
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          UPVAL U4
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          UPVAL U28
      107 CAPTURE                          UPVAL U7
      108 DUPCLOSURE                       R16 K11 [PROTO_36]
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          UPVAL U0
      112 CAPTURE                          UPVAL U29
      113 CAPTURE                          UPVAL U7
      114 DUPCLOSURE                       R17 K12 [PROTO_37]
      115 CAPTURE                          UPVAL U0
      116 CAPTURE                          UPVAL U30
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          UPVAL U4
      120 DUPCLOSURE                       R18 K13 [PROTO_38]
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          UPVAL U31
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U32
      127 CAPTURE                          UPVAL U18
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          UPVAL U33
      130 CAPTURE                          UPVAL U7
      131 DUPCLOSURE                       R19 K14 [PROTO_39]
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          UPVAL U34
      134 CAPTURE                          UPVAL U2
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U35
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          UPVAL U36
      140 CAPTURE                          UPVAL U7
      141 DUPCLOSURE                       R20 K15 [PROTO_40]
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          UPVAL U37
      144 CAPTURE                          UPVAL U2
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          UPVAL U38
      148 CAPTURE                          UPVAL U5
      149 CAPTURE                          UPVAL U39
      150 CAPTURE                          UPVAL U7
      151 DUPCLOSURE                       R21 K16 [PROTO_41]
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          UPVAL U40
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          UPVAL U4
      157 CAPTURE                          UPVAL U18
      158 CAPTURE                          UPVAL U5
      159 CAPTURE                          UPVAL U41
      160 CAPTURE                          UPVAL U7
      161 DUPCLOSURE                       R22 K17 [PROTO_42]
      162 CAPTURE                          UPVAL U21
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          UPVAL U42
      165 CAPTURE                          UPVAL U2
      166 CAPTURE                          UPVAL U3
      167 CAPTURE                          UPVAL U4
      168 DUPCLOSURE                       R23 K18 [PROTO_43]
      169 CAPTURE                          UPVAL U21
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          UPVAL U43
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U5
      174 CAPTURE                          UPVAL U7
      175 DUPCLOSURE                       R24 K19 [PROTO_44]
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          UPVAL U44
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          UPVAL U7
      181 DUPCLOSURE                       R25 K20 [PROTO_45]
      182 CAPTURE                          UPVAL U0
      183 CAPTURE                          UPVAL U45
      184 CAPTURE                          UPVAL U2
      185 CAPTURE                          UPVAL U5
      186 CAPTURE                          UPVAL U7
      187 CAPTURE                          UPVAL U46
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          UPVAL U4
      190 DUPCLOSURE                       R26 K21 [PROTO_46]
      191 CAPTURE                          UPVAL U0
      192 CAPTURE                          UPVAL U47
      193 CAPTURE                          UPVAL U2
      194 CAPTURE                          UPVAL U3
      195 CAPTURE                          UPVAL U4
      196 CAPTURE                          UPVAL U5
      197 CAPTURE                          UPVAL U48
      198 CAPTURE                          UPVAL U7
      199 DUPCLOSURE                       R27 K22 [PROTO_47]
      200 CAPTURE                          UPVAL U0
      201 CAPTURE                          UPVAL U49
      202 CAPTURE                          UPVAL U2
      203 CAPTURE                          UPVAL U3
      204 CAPTURE                          UPVAL U4
      205 CAPTURE                          UPVAL U5
      206 CAPTURE                          UPVAL U50
      207 CAPTURE                          UPVAL U7
      208 DUPCLOSURE                       R28 K23 [PROTO_48]
      209 CAPTURE                          UPVAL U0
      210 CAPTURE                          UPVAL U51
      211 DUPCLOSURE                       R29 K24 [PROTO_49]
      212 CAPTURE                          UPVAL U0
      213 CAPTURE                          UPVAL U52
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          UPVAL U5
      216 CAPTURE                          UPVAL U7
      217 DUPCLOSURE                       R30 K25 [PROTO_50]
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U53
      220 CAPTURE                          UPVAL U2
      221 CAPTURE                          UPVAL U5
      222 CAPTURE                          UPVAL U7
      223 DUPCLOSURE                       R31 K26 [PROTO_51]
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          UPVAL U54
      226 CAPTURE                          UPVAL U2
      227 CAPTURE                          UPVAL U5
      228 CAPTURE                          UPVAL U7
      229 DUPCLOSURE                       R32 K27 [PROTO_52]
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U55
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U5
      234 CAPTURE                          UPVAL U7
      235 DUPCLOSURE                       R33 K28 [PROTO_53]
      236 CAPTURE                          UPVAL U0
      237 CAPTURE                          UPVAL U56
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          UPVAL U5
      240 CAPTURE                          UPVAL U7
      241 DUPCLOSURE                       R34 K29 [PROTO_54]
      242 CAPTURE                          UPVAL U0
      243 CAPTURE                          UPVAL U57
      244 CAPTURE                          UPVAL U2
      245 CAPTURE                          UPVAL U5
      246 CAPTURE                          UPVAL U7
      247 DUPCLOSURE                       R35 K30 [PROTO_55]
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          UPVAL U58
      250 CAPTURE                          UPVAL U2
      251 CAPTURE                          UPVAL U5
      252 CAPTURE                          UPVAL U7
      253 DUPCLOSURE                       R36 K31 [PROTO_56]
      254 CAPTURE                          UPVAL U0
      255 CAPTURE                          UPVAL U59
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          UPVAL U3
      258 CAPTURE                          UPVAL U4
      259 CAPTURE                          UPVAL U60
      260 CAPTURE                          UPVAL U5
      261 CAPTURE                          UPVAL U7
      262 DUPCLOSURE                       R37 K32 [PROTO_57]
      263 CAPTURE                          UPVAL U0
      264 CAPTURE                          UPVAL U61
      265 CAPTURE                          UPVAL U2
      266 CAPTURE                          UPVAL U3
      267 CAPTURE                          UPVAL U4
      268 CAPTURE                          UPVAL U62
      269 CAPTURE                          UPVAL U5
      270 CAPTURE                          UPVAL U7
      271 DUPCLOSURE                       R38 K33 [PROTO_58]
      272 CAPTURE                          UPVAL U0
      273 CAPTURE                          UPVAL U63
      274 CAPTURE                          UPVAL U19
      275 CAPTURE                          UPVAL U2
      276 CAPTURE                          UPVAL U5
      277 CAPTURE                          UPVAL U7
      278 DUPCLOSURE                       R39 K34 [PROTO_59]
      279 CAPTURE                          UPVAL U21
      280 CAPTURE                          UPVAL U0
      281 CAPTURE                          UPVAL U64
      282 CAPTURE                          UPVAL U2
      283 CAPTURE                          UPVAL U5
      284 CAPTURE                          UPVAL U7
      285 DUPCLOSURE                       R40 K35 [PROTO_60]
      286 CAPTURE                          UPVAL U0
      287 CAPTURE                          UPVAL U65
      288 CAPTURE                          UPVAL U2
      289 CAPTURE                          UPVAL U3
      290 CAPTURE                          UPVAL U4
      291 CAPTURE                          UPVAL U66
      292 CAPTURE                          UPVAL U67
      293 NEWTABLE                         R41 64 0
      295 SETTABLEKS                       R1 R41 K36 ["logUserMessageSent"]
      297 SETTABLEKS                       R2 R41 K37 ["logAssistantMessageSent"]
      299 SETTABLEKS                       R3 R41 K38 ["logApiKeyAdded"]
      301 SETTABLEKS                       R4 R41 K39 ["logErrorEvent"]
      303 SETTABLEKS                       R16 R41 K40 ["logExternalAPIError"]
      305 SETTABLEKS                       R5 R41 K41 ["logThumbsUp"]
      307 SETTABLEKS                       R6 R41 K42 ["logThumbsDown"]
      309 SETTABLEKS                       R7 R41 K43 ["logInitialResponseLatency"]
      311 SETTABLEKS                       R8 R41 K44 ["logMarkdownError"]
      313 SETTABLEKS                       R9 R41 K45 ["logRetry"]
      315 SETTABLEKS                       R10 R41 K46 ["logStopGeneration"]
      317 SETTABLEKS                       R11 R41 K47 ["logToolStarted"]
      319 SETTABLEKS                       R12 R41 K48 ["logToolEnded"]
      321 SETTABLEKS                       R13 R41 K49 ["logToolConfirmationShown"]
      323 SETTABLEKS                       R14 R41 K50 ["logToolConfirmationResult"]
      325 SETTABLEKS                       R15 R41 K51 ["logRequestJourney"]
      327 SETTABLEKS                       R17 R41 K52 ["logMeshGenActivated"]
      329 SETTABLEKS                       R18 R41 K53 ["logMeshGenCompleted"]
      331 SETTABLEKS                       R19 R41 K54 ["logMeshGenPublishedAssets"]
      333 SETTABLEKS                       R20 R41 K55 ["logMeshGenMeshInserted"]
      335 SETTABLEKS                       R21 R41 K56 ["logPrimitiveGen"]
      337 SETTABLEKS                       R22 R41 K57 ["logGen3DSegmentationRefresh"]
      339 SETTABLEKS                       R23 R41 K58 ["logGen3DInstanceDeleted"]
      341 SETTABLEKS                       R24 R41 K59 ["logIntegrationEvent"]
      343 SETTABLEKS                       R25 R41 K60 ["logExternalServerConnected"]
      345 SETTABLEKS                       R26 R41 K61 ["logQuestionAnswerCompleted"]
      347 SETTABLEKS                       R27 R41 K62 ["logPlanDecision"]
      349 SETTABLEKS                       R34 R41 K63 ["logQuickSetupToggled"]
      351 SETTABLEKS                       R28 R41 K64 ["logMaterialGeneratorSavedMaterial"]
      353 SETTABLEKS                       R36 R41 K65 ["logCompactionSuccess"]
      355 SETTABLEKS                       R37 R41 K66 ["logCompactionFallback"]
      357 SETTABLEKS                       R38 R41 K67 ["logUserSkillEvent"]
      359 SETTABLEKS                       R39 R41 K68 ["logThinkingBlock"]
      361 SETTABLEKS                       R29 R41 K69 ["logThreadCreated"]
      363 SETTABLEKS                       R30 R41 K70 ["logThreadRenamed"]
      365 SETTABLEKS                       R31 R41 K71 ["logThreadPinnedChanged"]
      367 SETTABLEKS                       R32 R41 K72 ["logThreadDeleted"]
      369 SETTABLEKS                       R33 R41 K73 ["logThreadDuplicated"]
      371 SETTABLEKS                       R35 R41 K74 ["logThreadSwitched"]
      373 SETTABLEKS                       R40 R41 K75 ["logPersistenceOperation"]
      375 RETURN                           R41 1

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
      129 GETTABLEKS                       R3 R1 K31 ["logUserSkillEvent"]
      131 SETTABLEKS                       R3 R2 K31 ["logUserSkillEvent"]
      133 GETTABLEKS                       R3 R1 K32 ["logThinkingBlock"]
      135 SETTABLEKS                       R3 R2 K32 ["logThinkingBlock"]
      137 GETTABLEKS                       R3 R1 K33 ["logThreadCreated"]
      139 SETTABLEKS                       R3 R2 K33 ["logThreadCreated"]
      141 GETTABLEKS                       R3 R1 K34 ["logThreadRenamed"]
      143 SETTABLEKS                       R3 R2 K34 ["logThreadRenamed"]
      145 GETTABLEKS                       R3 R1 K35 ["logThreadPinnedChanged"]
      147 SETTABLEKS                       R3 R2 K35 ["logThreadPinnedChanged"]
      149 GETTABLEKS                       R3 R1 K36 ["logThreadDeleted"]
      151 SETTABLEKS                       R3 R2 K36 ["logThreadDeleted"]
      153 GETTABLEKS                       R3 R1 K37 ["logThreadDuplicated"]
      155 SETTABLEKS                       R3 R2 K37 ["logThreadDuplicated"]
      157 GETTABLEKS                       R3 R1 K38 ["logThreadSwitched"]
      159 SETTABLEKS                       R3 R2 K38 ["logThreadSwitched"]
      161 GETTABLEKS                       R3 R1 K39 ["logPersistenceOperation"]
      163 SETTABLEKS                       R3 R2 K39 ["logPersistenceOperation"]
      165 RETURN                           R2 1

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
       46 GETTABLEKS                       R7 R7 K17 ["Flags"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Src"]
       53 GETTABLEKS                       R8 R8 K15 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["Telemetry"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Packages"]
       62 GETTABLEKS                       R9 R9 K19 ["TelemetryProtocol"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R3 K20 ["Utils"]
       67 GETTABLEKS                       R9 R9 K21 ["Time"]
       69 GETTABLEKS                       R10 R3 K20 ["Utils"]
       71 GETTABLEKS                       R10 R10 K22 ["ImageAttachmentUtils"]
       73 GETTABLEKS                       R11 R3 K20 ["Utils"]
       75 GETTABLEKS                       R11 R11 K23 ["truncateUtf8Safe"]
       77 DUPCLOSURE                       R12 K24 [PROTO_1]
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R13 K25 [PROTO_2]
       80 CAPTURE                          VAL R11
       81 DUPCLOSURE                       R14 K26 [PROTO_3]
       82 DUPCLOSURE                       R15 K27 [PROTO_4]
       83 DUPCLOSURE                       R16 K28 [PROTO_5]
       84 DUPCLOSURE                       R17 K29 [PROTO_6]
       85 DUPCLOSURE                       R18 K30 [PROTO_7]
       86 DUPCLOSURE                       R19 K31 [PROTO_8]
       87 DUPCLOSURE                       R20 K32 [PROTO_9]
       88 CAPTURE                          VAL R18
       89 DUPCLOSURE                       R21 K33 [PROTO_11]
       90 CAPTURE                          VAL R20
       91 CAPTURE                          VAL R1
       92 DUPCLOSURE                       R22 K34 [PROTO_12]
       93 DUPCLOSURE                       R23 K35 [PROTO_13]
       94 DUPCLOSURE                       R24 K36 [PROTO_14]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R1
       97 DUPCLOSURE                       R25 K37 [PROTO_15]
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R26 K38 [PROTO_16]
      100 DUPCLOSURE                       R27 K39 [PROTO_17]
      101 CAPTURE                          VAL R7
      102 GETIMPORT                        R28 K42 [table.freeze]
      104 NEWTABLE                         R30 0 0
      106 GETTABLEKS                       R33 R7 K43 ["Backends"]
      108 GETTABLEKS                       R33 R33 K44 ["EventIngest"]
      110 FASTCALL2                        TABLE_INSERT R30 R33 ; [+4]
      112 MOVE                             R32 R30
      113 GETIMPORT                        R31 K46 [table.insert]
      115 CALL                             R31 2 0
      116 GETTABLEKS                       R33 R7 K43 ["Backends"]
      118 GETTABLEKS                       R33 R33 K47 ["Points"]
      120 FASTCALL2                        TABLE_INSERT R30 R33 ; [+4]
      122 MOVE                             R32 R30
      123 GETIMPORT                        R31 K46 [table.insert]
      125 CALL                             R31 2 0
      126 MOVE                             R29 R30
      127 CALL                             R28 1 1
      128 GETIMPORT                        R29 K42 [table.freeze]
      130 DUPTABLE                         R30 K53 [{["eventName"], ["backends"], ["description"] = "Incrementing count of user messages sent.", ["lastUpdated"]}]
      131 LOADK                            R31 K54 ["StudioAssistantUserMessageSent"]
      132 SETTABLEKS                       R31 R30 K48 ["eventName"]
      134 NEWTABLE                         R31 0 1
      136 GETTABLEKS                       R32 R7 K43 ["Backends"]
      138 GETTABLEKS                       R32 R32 K55 ["RobloxTelemetryCounter"]
      140 SETLIST                          R31 R32 1 [1]
      142 SETTABLEKS                       R31 R30 K49 ["backends"]
      144 NEWTABLE                         R31 0 3
      146 LOADN                            R32 25
      147 LOADN                            R33 7
      148 LOADN                            R34 21
      149 SETLIST                          R31 R32 3 [1]
      151 SETTABLEKS                       R31 R30 K52 ["lastUpdated"]
      153 CALL                             R29 1 1
      154 GETIMPORT                        R30 K42 [table.freeze]
      156 DUPTABLE                         R31 K59 [{["eventName"] = "CAPMessageSent", ["backends"], ["description"] = "User message sent event with request ID.", ["throttlingPercentage"], ["lastUpdated"]}]
      157 SETTABLEKS                       R28 R31 K49 ["backends"]
      159 GETTABLEKS                       R32 R6 K60 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      161 SETTABLEKS                       R32 R31 K58 ["throttlingPercentage"]
      163 NEWTABLE                         R32 0 3
      165 LOADN                            R33 25
      166 LOADN                            R34 7
      167 LOADN                            R35 25
      168 SETLIST                          R32 R33 3 [1]
      170 SETTABLEKS                       R32 R31 K52 ["lastUpdated"]
      172 CALL                             R30 1 1
      173 GETIMPORT                        R31 K42 [table.freeze]
      175 DUPTABLE                         R32 K63 [{["eventName"] = "CAPAPIKeyAdded", ["backends"], ["description"] = "User added an API key for an LLM provider.", ["lastUpdated"]}]
      176 SETTABLEKS                       R28 R32 K49 ["backends"]
      178 NEWTABLE                         R33 0 3
      180 LOADN                            R34 25
      181 LOADN                            R35 11
      182 LOADN                            R36 4
      183 SETLIST                          R33 R34 3 [1]
      185 SETTABLEKS                       R33 R32 K52 ["lastUpdated"]
      187 CALL                             R31 1 1
      188 GETIMPORT                        R32 K42 [table.freeze]
      190 DUPTABLE                         R33 K66 [{["eventName"] = "CAPUserFeedbackThumbsUp", ["backends"], ["description"] = "User feedback thumbs up event with message context.", ["lastUpdated"]}]
      191 SETTABLEKS                       R28 R33 K49 ["backends"]
      193 NEWTABLE                         R34 0 3
      195 LOADN                            R35 25
      196 LOADN                            R36 7
      197 LOADN                            R37 25
      198 SETLIST                          R34 R35 3 [1]
      200 SETTABLEKS                       R34 R33 K52 ["lastUpdated"]
      202 CALL                             R32 1 1
      203 GETIMPORT                        R33 K42 [table.freeze]
      205 DUPTABLE                         R34 K69 [{["eventName"] = "CAPUserFeedbackThumbsDown", ["backends"], ["description"] = "User feedback thumbs down event with message context.", ["lastUpdated"]}]
      206 SETTABLEKS                       R28 R34 K49 ["backends"]
      208 NEWTABLE                         R35 0 3
      210 LOADN                            R36 25
      211 LOADN                            R37 7
      212 LOADN                            R38 25
      213 SETLIST                          R35 R36 3 [1]
      215 SETTABLEKS                       R35 R34 K52 ["lastUpdated"]
      217 CALL                             R33 1 1
      218 GETIMPORT                        R34 K42 [table.freeze]
      220 DUPTABLE                         R35 K71 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs up events.", ["lastUpdated"]}]
      221 LOADK                            R36 K72 ["StudioAssistantThumbsUp"]
      222 SETTABLEKS                       R36 R35 K48 ["eventName"]
      224 NEWTABLE                         R36 0 1
      226 GETTABLEKS                       R37 R7 K43 ["Backends"]
      228 GETTABLEKS                       R37 R37 K55 ["RobloxTelemetryCounter"]
      230 SETLIST                          R36 R37 1 [1]
      232 SETTABLEKS                       R36 R35 K49 ["backends"]
      234 NEWTABLE                         R36 0 3
      236 LOADN                            R37 25
      237 LOADN                            R38 7
      238 LOADN                            R39 21
      239 SETLIST                          R36 R37 3 [1]
      241 SETTABLEKS                       R36 R35 K52 ["lastUpdated"]
      243 CALL                             R34 1 1
      244 GETIMPORT                        R35 K42 [table.freeze]
      246 DUPTABLE                         R36 K74 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs down events.", ["lastUpdated"]}]
      247 LOADK                            R37 K75 ["StudioAssistantThumbsDown"]
      248 SETTABLEKS                       R37 R36 K48 ["eventName"]
      250 NEWTABLE                         R37 0 1
      252 GETTABLEKS                       R38 R7 K43 ["Backends"]
      254 GETTABLEKS                       R38 R38 K55 ["RobloxTelemetryCounter"]
      256 SETLIST                          R37 R38 1 [1]
      258 SETTABLEKS                       R37 R36 K49 ["backends"]
      260 NEWTABLE                         R37 0 3
      262 LOADN                            R38 25
      263 LOADN                            R39 7
      264 LOADN                            R40 21
      265 SETLIST                          R37 R38 3 [1]
      267 SETTABLEKS                       R37 R36 K52 ["lastUpdated"]
      269 CALL                             R35 1 1
      270 GETIMPORT                        R36 K42 [table.freeze]
      272 DUPTABLE                         R37 K77 [{["eventName"], ["backends"], ["description"] = "Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message.", ["lastUpdated"]}]
      273 LOADK                            R38 K78 ["StudioAssistantInitialResponseLatency"]
      274 SETTABLEKS                       R38 R37 K48 ["eventName"]
      276 NEWTABLE                         R38 0 1
      278 GETTABLEKS                       R39 R7 K43 ["Backends"]
      280 GETTABLEKS                       R39 R39 K79 ["RobloxTelemetryStat"]
      282 SETLIST                          R38 R39 1 [1]
      284 SETTABLEKS                       R38 R37 K49 ["backends"]
      286 NEWTABLE                         R38 0 3
      288 LOADN                            R39 25
      289 LOADN                            R40 7
      290 LOADN                            R41 21
      291 SETLIST                          R38 R39 3 [1]
      293 SETTABLEKS                       R38 R37 K52 ["lastUpdated"]
      295 CALL                             R36 1 1
      296 GETIMPORT                        R37 K42 [table.freeze]
      298 DUPTABLE                         R38 K81 [{["eventName"], ["backends"], ["description"] = "User request journey duration in seconds. Time between sending first message to request ended.", ["lastUpdated"]}]
      299 LOADK                            R39 K82 ["StudioAssistantRequestJourney"]
      300 SETTABLEKS                       R39 R38 K48 ["eventName"]
      302 NEWTABLE                         R39 0 1
      304 GETTABLEKS                       R40 R7 K43 ["Backends"]
      306 GETTABLEKS                       R40 R40 K79 ["RobloxTelemetryStat"]
      308 SETLIST                          R39 R40 1 [1]
      310 SETTABLEKS                       R39 R38 K49 ["backends"]
      312 NEWTABLE                         R39 0 3
      314 LOADN                            R40 25
      315 LOADN                            R41 10
      316 LOADN                            R42 22
      317 SETLIST                          R39 R40 3 [1]
      319 SETTABLEKS                       R39 R38 K52 ["lastUpdated"]
      321 CALL                             R37 1 1
      322 GETIMPORT                        R38 K42 [table.freeze]
      324 DUPTABLE                         R39 K85 [{["eventName"] = "CAPRequestJourney", ["backends"], ["description"] = "User request journey detail.", ["lastUpdated"]}]
      325 SETTABLEKS                       R28 R39 K49 ["backends"]
      327 NEWTABLE                         R40 0 3
      329 LOADN                            R41 25
      330 LOADN                            R42 11
      331 LOADN                            R43 1
      332 SETLIST                          R40 R41 3 [1]
      334 SETTABLEKS                       R40 R39 K52 ["lastUpdated"]
      336 CALL                             R38 1 1
      337 GETIMPORT                        R39 K42 [table.freeze]
      339 DUPTABLE                         R40 K87 [{["eventName"], ["backends"], ["description"] = "Incrementing count of error events with error type attached.", ["lastUpdated"]}]
      340 LOADK                            R41 K88 ["StudioAssistantErrorEvent"]
      341 SETTABLEKS                       R41 R40 K48 ["eventName"]
      343 NEWTABLE                         R41 0 1
      345 GETTABLEKS                       R42 R7 K43 ["Backends"]
      347 GETTABLEKS                       R42 R42 K55 ["RobloxTelemetryCounter"]
      349 SETLIST                          R41 R42 1 [1]
      351 SETTABLEKS                       R41 R40 K49 ["backends"]
      353 NEWTABLE                         R41 0 3
      355 LOADN                            R42 25
      356 LOADN                            R43 7
      357 LOADN                            R44 21
      358 SETLIST                          R41 R42 3 [1]
      360 SETTABLEKS                       R41 R40 K52 ["lastUpdated"]
      362 CALL                             R39 1 1
      363 GETIMPORT                        R40 K42 [table.freeze]
      365 DUPTABLE                         R41 K90 [{["eventName"], ["backends"], ["description"] = "Collection of markdown error events, with markdown attached.", ["throttlingPercentage"], ["lastUpdated"]}]
      366 LOADK                            R42 K91 ["StudioAssistantMarkdownError"]
      367 SETTABLEKS                       R42 R41 K48 ["eventName"]
      369 NEWTABLE                         R42 0 1
      371 GETTABLEKS                       R43 R7 K43 ["Backends"]
      373 GETTABLEKS                       R43 R43 K47 ["Points"]
      375 SETLIST                          R42 R43 1 [1]
      377 SETTABLEKS                       R42 R41 K49 ["backends"]
      379 GETTABLEKS                       R42 R6 K92 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      381 SETTABLEKS                       R42 R41 K58 ["throttlingPercentage"]
      383 NEWTABLE                         R42 0 3
      385 LOADN                            R43 25
      386 LOADN                            R44 7
      387 LOADN                            R45 21
      388 SETLIST                          R42 R43 3 [1]
      390 SETTABLEKS                       R42 R41 K52 ["lastUpdated"]
      392 CALL                             R40 1 1
      393 GETIMPORT                        R41 K42 [table.freeze]
      395 DUPTABLE                         R42 K95 [{["eventName"] = "CAPMessageResubmitted", ["backends"], ["description"] = "User message retry/resubmit event with request ID.", ["lastUpdated"]}]
      396 SETTABLEKS                       R28 R42 K49 ["backends"]
      398 NEWTABLE                         R43 0 3
      400 LOADN                            R44 25
      401 LOADN                            R45 8
      402 LOADN                            R46 7
      403 SETLIST                          R43 R44 3 [1]
      405 SETTABLEKS                       R43 R42 K52 ["lastUpdated"]
      407 CALL                             R41 1 1
      408 GETIMPORT                        R42 K42 [table.freeze]
      410 DUPTABLE                         R43 K98 [{["eventName"] = "CAPStopGeneration", ["backends"], ["description"] = "User stop generation event with request ID.", ["lastUpdated"]}]
      411 SETTABLEKS                       R28 R43 K49 ["backends"]
      413 NEWTABLE                         R44 0 3
      415 LOADN                            R45 25
      416 LOADN                            R46 8
      417 LOADN                            R47 7
      418 SETLIST                          R44 R45 3 [1]
      420 SETTABLEKS                       R44 R43 K52 ["lastUpdated"]
      422 CALL                             R42 1 1
      423 GETIMPORT                        R43 K42 [table.freeze]
      425 DUPTABLE                         R44 K101 [{["eventName"] = "CAPToolEnded", ["backends"], ["description"] = "Tool invocation ended event with request ID and tool name", ["lastUpdated"]}]
      426 SETTABLEKS                       R28 R44 K49 ["backends"]
      428 NEWTABLE                         R45 0 3
      430 LOADN                            R46 25
      431 LOADN                            R47 7
      432 LOADN                            R48 21
      433 SETLIST                          R45 R46 3 [1]
      435 SETTABLEKS                       R45 R44 K52 ["lastUpdated"]
      437 CALL                             R43 1 1
      438 GETIMPORT                        R44 K42 [table.freeze]
      440 DUPTABLE                         R45 K104 [{["eventName"] = "CAPToolStarted", ["backends"], ["description"] = "Tool invocation started event with request ID and tool name.", ["lastUpdated"]}]
      441 SETTABLEKS                       R28 R45 K49 ["backends"]
      443 NEWTABLE                         R46 0 3
      445 LOADN                            R47 25
      446 LOADN                            R48 8
      447 LOADN                            R49 7
      448 SETLIST                          R46 R47 3 [1]
      450 SETTABLEKS                       R46 R45 K52 ["lastUpdated"]
      452 CALL                             R44 1 1
      453 GETIMPORT                        R45 K42 [table.freeze]
      455 DUPTABLE                         R46 K107 [{["eventName"] = "CAPToolConfirmationShown", ["backends"], ["description"] = "Tool confirmation dialog shown event with request ID, tool name, and warning message.", ["lastUpdated"]}]
      456 SETTABLEKS                       R28 R46 K49 ["backends"]
      458 NEWTABLE                         R47 0 3
      460 LOADN                            R48 25
      461 LOADN                            R49 9
      462 LOADN                            R50 19
      463 SETLIST                          R47 R48 3 [1]
      465 SETTABLEKS                       R47 R46 K52 ["lastUpdated"]
      467 CALL                             R45 1 1
      468 GETIMPORT                        R46 K42 [table.freeze]
      470 DUPTABLE                         R47 K110 [{["eventName"] = "CAPToolConfirmationResult", ["backends"], ["description"] = "Tool confirmation dialog result event with request ID and user choice.", ["lastUpdated"]}]
      471 SETTABLEKS                       R28 R47 K49 ["backends"]
      473 NEWTABLE                         R48 0 3
      475 LOADN                            R49 25
      476 LOADN                            R50 9
      477 LOADN                            R51 19
      478 SETLIST                          R48 R49 3 [1]
      480 SETTABLEKS                       R48 R47 K52 ["lastUpdated"]
      482 CALL                             R46 1 1
      483 GETIMPORT                        R47 K42 [table.freeze]
      485 DUPTABLE                         R48 K113 [{["eventName"] = "CAPExternalAPIError", ["backends"], ["description"] = "External LLM API error event with request ID, model, and HTTP status code.", ["lastUpdated"]}]
      486 SETTABLEKS                       R28 R48 K49 ["backends"]
      488 NEWTABLE                         R49 0 3
      490 LOADN                            R50 25
      491 LOADN                            R51 12
      492 LOADN                            R52 16
      493 SETLIST                          R49 R50 3 [1]
      495 SETTABLEKS                       R49 R48 K52 ["lastUpdated"]
      497 CALL                             R47 1 1
      498 GETIMPORT                        R48 K42 [table.freeze]
      500 DUPTABLE                         R49 K116 [{["eventName"] = "CAPMeshGenActivated", ["backends"], ["description"] = "Count of MeshGen tool activations.", ["lastUpdated"]}]
      501 NEWTABLE                         R50 0 1
      503 GETTABLEKS                       R51 R7 K43 ["Backends"]
      505 GETTABLEKS                       R51 R51 K55 ["RobloxTelemetryCounter"]
      507 SETLIST                          R50 R51 1 [1]
      509 SETTABLEKS                       R50 R49 K49 ["backends"]
      511 NEWTABLE                         R50 0 3
      513 LOADN                            R51 26
      514 LOADN                            R52 2
      515 LOADN                            R53 6
      516 SETLIST                          R50 R51 3 [1]
      518 SETTABLEKS                       R50 R49 K52 ["lastUpdated"]
      520 CALL                             R48 1 1
      521 GETIMPORT                        R49 K42 [table.freeze]
      523 DUPTABLE                         R50 K119 [{["eventName"] = "CAPMeshGenCompletedSuccess", ["backends"], ["description"] = "Count of successful MeshGen completions.", ["lastUpdated"]}]
      524 NEWTABLE                         R51 0 1
      526 GETTABLEKS                       R52 R7 K43 ["Backends"]
      528 GETTABLEKS                       R52 R52 K55 ["RobloxTelemetryCounter"]
      530 SETLIST                          R51 R52 1 [1]
      532 SETTABLEKS                       R51 R50 K49 ["backends"]
      534 NEWTABLE                         R51 0 3
      536 LOADN                            R52 26
      537 LOADN                            R53 2
      538 LOADN                            R54 6
      539 SETLIST                          R51 R52 3 [1]
      541 SETTABLEKS                       R51 R50 K52 ["lastUpdated"]
      543 CALL                             R49 1 1
      544 GETIMPORT                        R50 K42 [table.freeze]
      546 DUPTABLE                         R51 K122 [{["eventName"] = "CAPMeshGenCompletedFailure", ["backends"], ["description"] = "Count of failed MeshGen completions.", ["lastUpdated"]}]
      547 NEWTABLE                         R52 0 1
      549 GETTABLEKS                       R53 R7 K43 ["Backends"]
      551 GETTABLEKS                       R53 R53 K55 ["RobloxTelemetryCounter"]
      553 SETLIST                          R52 R53 1 [1]
      555 SETTABLEKS                       R52 R51 K49 ["backends"]
      557 NEWTABLE                         R52 0 3
      559 LOADN                            R53 26
      560 LOADN                            R54 2
      561 LOADN                            R55 6
      562 SETLIST                          R52 R53 3 [1]
      564 SETTABLEKS                       R52 R51 K52 ["lastUpdated"]
      566 CALL                             R50 1 1
      567 GETIMPORT                        R51 K42 [table.freeze]
      569 DUPTABLE                         R52 K125 [{["eventName"] = "CAPMeshGenCompleted", ["backends"], ["description"] = "MeshGen generation completed event with details.", ["lastUpdated"]}]
      570 SETTABLEKS                       R28 R52 K49 ["backends"]
      572 NEWTABLE                         R53 0 3
      574 LOADN                            R54 26
      575 LOADN                            R55 2
      576 LOADN                            R56 6
      577 SETLIST                          R53 R54 3 [1]
      579 SETTABLEKS                       R53 R52 K52 ["lastUpdated"]
      581 CALL                             R51 1 1
      582 GETIMPORT                        R52 K42 [table.freeze]
      584 DUPTABLE                         R53 K128 [{["eventName"] = "CAPMeshGenPublishedAssetsSuccess", ["backends"], ["description"] = "Count of successful MeshGen asset publications.", ["lastUpdated"]}]
      585 NEWTABLE                         R54 0 1
      587 GETTABLEKS                       R55 R7 K43 ["Backends"]
      589 GETTABLEKS                       R55 R55 K55 ["RobloxTelemetryCounter"]
      591 SETLIST                          R54 R55 1 [1]
      593 SETTABLEKS                       R54 R53 K49 ["backends"]
      595 NEWTABLE                         R54 0 3
      597 LOADN                            R55 26
      598 LOADN                            R56 2
      599 LOADN                            R57 6
      600 SETLIST                          R54 R55 3 [1]
      602 SETTABLEKS                       R54 R53 K52 ["lastUpdated"]
      604 CALL                             R52 1 1
      605 GETIMPORT                        R53 K42 [table.freeze]
      607 DUPTABLE                         R54 K131 [{["eventName"] = "CAPMeshGenPublishedAssetsFailure", ["backends"], ["description"] = "Count of failed MeshGen asset publications.", ["lastUpdated"]}]
      608 NEWTABLE                         R55 0 1
      610 GETTABLEKS                       R56 R7 K43 ["Backends"]
      612 GETTABLEKS                       R56 R56 K55 ["RobloxTelemetryCounter"]
      614 SETLIST                          R55 R56 1 [1]
      616 SETTABLEKS                       R55 R54 K49 ["backends"]
      618 NEWTABLE                         R55 0 3
      620 LOADN                            R56 26
      621 LOADN                            R57 2
      622 LOADN                            R58 6
      623 SETLIST                          R55 R56 3 [1]
      625 SETTABLEKS                       R55 R54 K52 ["lastUpdated"]
      627 CALL                             R53 1 1
      628 GETIMPORT                        R54 K42 [table.freeze]
      630 DUPTABLE                         R55 K134 [{["eventName"] = "CAPMeshGenPublishedAssets", ["backends"], ["description"] = "MeshGen assets published event with details.", ["lastUpdated"]}]
      631 SETTABLEKS                       R28 R55 K49 ["backends"]
      633 NEWTABLE                         R56 0 3
      635 LOADN                            R57 26
      636 LOADN                            R58 2
      637 LOADN                            R59 6
      638 SETLIST                          R56 R57 3 [1]
      640 SETTABLEKS                       R56 R55 K52 ["lastUpdated"]
      642 CALL                             R54 1 1
      643 GETIMPORT                        R55 K42 [table.freeze]
      645 DUPTABLE                         R56 K137 [{["eventName"] = "CAPMeshGenMeshInsertedSuccess", ["backends"], ["description"] = "Count of successful MeshGen mesh insertions.", ["lastUpdated"]}]
      646 NEWTABLE                         R57 0 1
      648 GETTABLEKS                       R58 R7 K43 ["Backends"]
      650 GETTABLEKS                       R58 R58 K55 ["RobloxTelemetryCounter"]
      652 SETLIST                          R57 R58 1 [1]
      654 SETTABLEKS                       R57 R56 K49 ["backends"]
      656 NEWTABLE                         R57 0 3
      658 LOADN                            R58 26
      659 LOADN                            R59 2
      660 LOADN                            R60 6
      661 SETLIST                          R57 R58 3 [1]
      663 SETTABLEKS                       R57 R56 K52 ["lastUpdated"]
      665 CALL                             R55 1 1
      666 GETIMPORT                        R56 K42 [table.freeze]
      668 DUPTABLE                         R57 K140 [{["eventName"] = "CAPMeshGenMeshInsertedFailure", ["backends"], ["description"] = "Count of failed MeshGen mesh insertions.", ["lastUpdated"]}]
      669 NEWTABLE                         R58 0 1
      671 GETTABLEKS                       R59 R7 K43 ["Backends"]
      673 GETTABLEKS                       R59 R59 K55 ["RobloxTelemetryCounter"]
      675 SETLIST                          R58 R59 1 [1]
      677 SETTABLEKS                       R58 R57 K49 ["backends"]
      679 NEWTABLE                         R58 0 3
      681 LOADN                            R59 26
      682 LOADN                            R60 2
      683 LOADN                            R61 6
      684 SETLIST                          R58 R59 3 [1]
      686 SETTABLEKS                       R58 R57 K52 ["lastUpdated"]
      688 CALL                             R56 1 1
      689 GETIMPORT                        R57 K42 [table.freeze]
      691 DUPTABLE                         R58 K143 [{["eventName"] = "CAPMeshGenMeshInserted", ["backends"], ["description"] = "MeshGen mesh inserted event with details.", ["lastUpdated"]}]
      692 SETTABLEKS                       R28 R58 K49 ["backends"]
      694 NEWTABLE                         R59 0 3
      696 LOADN                            R60 26
      697 LOADN                            R61 2
      698 LOADN                            R62 6
      699 SETLIST                          R59 R60 3 [1]
      701 SETTABLEKS                       R59 R58 K52 ["lastUpdated"]
      703 CALL                             R57 1 1
      704 GETIMPORT                        R58 K42 [table.freeze]
      706 DUPTABLE                         R59 K145 [{["eventName"], ["backends"], ["description"] = "Count of PrimitiveGen completions with success status.", ["lastUpdated"]}]
      707 LOADK                            R60 K146 ["StudioAssistantPrimitiveGenCompletedCount"]
      708 SETTABLEKS                       R60 R59 K48 ["eventName"]
      710 NEWTABLE                         R60 0 1
      712 GETTABLEKS                       R61 R7 K43 ["Backends"]
      714 GETTABLEKS                       R61 R61 K55 ["RobloxTelemetryCounter"]
      716 SETLIST                          R60 R61 1 [1]
      718 SETTABLEKS                       R60 R59 K49 ["backends"]
      720 NEWTABLE                         R60 0 3
      722 LOADN                            R61 26
      723 LOADN                            R62 3
      724 LOADN                            R63 12
      725 SETLIST                          R60 R61 3 [1]
      727 SETTABLEKS                       R60 R59 K52 ["lastUpdated"]
      729 CALL                             R58 1 1
      730 GETIMPORT                        R59 K42 [table.freeze]
      732 DUPTABLE                         R60 K148 [{["eventName"], ["backends"], ["description"] = "PrimitiveGen completion event with generation, prompt, render latency, and dependency details.", ["lastUpdated"]}]
      733 LOADK                            R61 K149 ["StudioAssistantPrimitiveGenCompleted"]
      734 SETTABLEKS                       R61 R60 K48 ["eventName"]
      736 SETTABLEKS                       R28 R60 K49 ["backends"]
      738 NEWTABLE                         R61 0 3
      740 LOADN                            R62 26
      741 LOADN                            R63 3
      742 LOADN                            R64 12
      743 SETLIST                          R61 R62 3 [1]
      745 SETTABLEKS                       R61 R60 K52 ["lastUpdated"]
      747 CALL                             R59 1 1
      748 GETIMPORT                        R60 K42 [table.freeze]
      750 DUPTABLE                         R61 K151 [{["eventName"], ["backends"], ["description"] = "Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat.", ["lastUpdated"]}]
      751 LOADK                            R62 K152 ["StudioAssistantGen3DSegmentationRefresh"]
      752 SETTABLEKS                       R62 R61 K48 ["eventName"]
      754 NEWTABLE                         R62 0 1
      756 GETTABLEKS                       R63 R7 K43 ["Backends"]
      758 GETTABLEKS                       R63 R63 K55 ["RobloxTelemetryCounter"]
      760 SETLIST                          R62 R63 1 [1]
      762 SETTABLEKS                       R62 R61 K49 ["backends"]
      764 NEWTABLE                         R62 0 3
      766 LOADN                            R63 26
      767 LOADN                            R64 6
      768 LOADN                            R65 9
      769 SETLIST                          R62 R63 3 [1]
      771 SETTABLEKS                       R62 R61 K52 ["lastUpdated"]
      773 CALL                             R60 1 1
      774 GETIMPORT                        R61 K42 [table.freeze]
      776 DUPTABLE                         R62 K154 [{["eventName"], ["backends"], ["description"] = "Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session.", ["lastUpdated"]}]
      777 LOADK                            R63 K155 ["StudioAssistantGen3DInstanceDeleted"]
      778 SETTABLEKS                       R63 R62 K48 ["eventName"]
      780 SETTABLEKS                       R28 R62 K49 ["backends"]
      782 NEWTABLE                         R63 0 3
      784 LOADN                            R64 26
      785 LOADN                            R65 6
      786 LOADN                            R66 9
      787 SETLIST                          R63 R64 3 [1]
      789 SETTABLEKS                       R63 R62 K52 ["lastUpdated"]
      791 CALL                             R61 1 1
      792 GETIMPORT                        R62 K42 [table.freeze]
      794 DUPTABLE                         R63 K157 [{["eventName"], ["backends"], ["description"] = "Integration event with action, label, and URL.", ["lastUpdated"]}]
      795 LOADK                            R64 K158 ["StudioAssistantIntegrationAction"]
      796 SETTABLEKS                       R64 R63 K48 ["eventName"]
      798 SETTABLEKS                       R28 R63 K49 ["backends"]
      800 NEWTABLE                         R64 0 3
      802 LOADN                            R65 26
      803 LOADN                            R66 2
      804 LOADN                            R67 3
      805 SETLIST                          R64 R65 3 [1]
      807 SETTABLEKS                       R64 R63 K52 ["lastUpdated"]
      809 CALL                             R62 1 1
      810 GETIMPORT                        R63 K42 [table.freeze]
      812 DUPTABLE                         R64 K160 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
      813 LOADK                            R65 K161 ["StudioAssistantExternalServerConnectedEvent"]
      814 SETTABLEKS                       R65 R64 K48 ["eventName"]
      816 SETTABLEKS                       R28 R64 K49 ["backends"]
      818 NEWTABLE                         R65 0 3
      820 LOADN                            R66 26
      821 LOADN                            R67 2
      822 LOADN                            R68 25
      823 SETLIST                          R65 R66 3 [1]
      825 SETTABLEKS                       R65 R64 K52 ["lastUpdated"]
      827 CALL                             R63 1 1
      828 GETIMPORT                        R64 K42 [table.freeze]
      830 DUPTABLE                         R65 K160 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
      831 LOADK                            R66 K162 ["StudioAssistantExternalServerConnectedCounter"]
      832 SETTABLEKS                       R66 R65 K48 ["eventName"]
      834 NEWTABLE                         R66 0 1
      836 GETTABLEKS                       R67 R7 K43 ["Backends"]
      838 GETTABLEKS                       R67 R67 K55 ["RobloxTelemetryCounter"]
      840 SETLIST                          R66 R67 1 [1]
      842 SETTABLEKS                       R66 R65 K49 ["backends"]
      844 NEWTABLE                         R66 0 3
      846 LOADN                            R67 26
      847 LOADN                            R68 2
      848 LOADN                            R69 25
      849 SETLIST                          R66 R67 3 [1]
      851 SETTABLEKS                       R66 R65 K52 ["lastUpdated"]
      853 CALL                             R64 1 1
      854 GETIMPORT                        R65 K42 [table.freeze]
      856 DUPTABLE                         R66 K165 [{["eventName"] = "CAPQuestionAnswerCompleted", ["backends"], ["description"] = "Question answer tool completed event with full question/answer context.", ["lastUpdated"]}]
      857 SETTABLEKS                       R28 R66 K49 ["backends"]
      859 NEWTABLE                         R67 0 3
      861 LOADN                            R68 26
      862 LOADN                            R69 4
      863 LOADN                            R70 1
      864 SETLIST                          R67 R68 3 [1]
      866 SETTABLEKS                       R67 R66 K52 ["lastUpdated"]
      868 CALL                             R65 1 1
      869 GETIMPORT                        R66 K42 [table.freeze]
      871 DUPTABLE                         R67 K167 [{["eventName"], ["backends"], ["description"] = "Count of question answer tool completions.", ["lastUpdated"]}]
      872 LOADK                            R68 K168 ["StudioAssistantQuestionAnswerCompleted"]
      873 SETTABLEKS                       R68 R67 K48 ["eventName"]
      875 NEWTABLE                         R68 0 1
      877 GETTABLEKS                       R69 R7 K43 ["Backends"]
      879 GETTABLEKS                       R69 R69 K55 ["RobloxTelemetryCounter"]
      881 SETLIST                          R68 R69 1 [1]
      883 SETTABLEKS                       R68 R67 K49 ["backends"]
      885 NEWTABLE                         R68 0 3
      887 LOADN                            R69 26
      888 LOADN                            R70 4
      889 LOADN                            R71 1
      890 SETLIST                          R68 R69 3 [1]
      892 SETTABLEKS                       R68 R67 K52 ["lastUpdated"]
      894 CALL                             R66 1 1
      895 GETIMPORT                        R67 K42 [table.freeze]
      897 DUPTABLE                         R68 K171 [{["eventName"] = "CAPPlanDecision", ["backends"], ["description"] = "Plan decision event with full plan context when user accepts or rejects a plan.", ["lastUpdated"]}]
      898 SETTABLEKS                       R28 R68 K49 ["backends"]
      900 NEWTABLE                         R69 0 3
      902 LOADN                            R70 26
      903 LOADN                            R71 4
      904 LOADN                            R72 1
      905 SETLIST                          R69 R70 3 [1]
      907 SETTABLEKS                       R69 R68 K52 ["lastUpdated"]
      909 CALL                             R67 1 1
      910 GETIMPORT                        R68 K42 [table.freeze]
      912 DUPTABLE                         R69 K173 [{["eventName"], ["backends"], ["description"] = "Count of plan decisions.", ["lastUpdated"]}]
      913 LOADK                            R70 K174 ["StudioAssistantPlanDecision"]
      914 SETTABLEKS                       R70 R69 K48 ["eventName"]
      916 NEWTABLE                         R70 0 1
      918 GETTABLEKS                       R71 R7 K43 ["Backends"]
      920 GETTABLEKS                       R71 R71 K55 ["RobloxTelemetryCounter"]
      922 SETLIST                          R70 R71 1 [1]
      924 SETTABLEKS                       R70 R69 K49 ["backends"]
      926 NEWTABLE                         R70 0 3
      928 LOADN                            R71 26
      929 LOADN                            R72 4
      930 LOADN                            R73 1
      931 SETLIST                          R70 R71 3 [1]
      933 SETTABLEKS                       R70 R69 K52 ["lastUpdated"]
      935 CALL                             R68 1 1
      936 GETIMPORT                        R69 K42 [table.freeze]
      938 DUPTABLE                         R70 K177 [{["eventName"] = "SBT_MaterialGeneratorSavedMaterial", ["backends"], ["description"] = "Counter to track number of saved materials", ["lastUpdated"]}]
      939 NEWTABLE                         R71 0 1
      941 GETTABLEKS                       R72 R7 K43 ["Backends"]
      943 GETTABLEKS                       R72 R72 K55 ["RobloxTelemetryCounter"]
      945 SETLIST                          R71 R72 1 [1]
      947 SETTABLEKS                       R71 R70 K49 ["backends"]
      949 NEWTABLE                         R71 0 3
      951 LOADN                            R72 24
      952 LOADN                            R73 10
      953 LOADN                            R74 15
      954 SETLIST                          R71 R72 3 [1]
      956 SETTABLEKS                       R71 R70 K52 ["lastUpdated"]
      958 CALL                             R69 1 1
      959 GETIMPORT                        R70 K42 [table.freeze]
      961 DUPTABLE                         R71 K179 [{["eventName"], ["backends"], ["description"] = "Thread created event with details.", ["lastUpdated"]}]
      962 LOADK                            R72 K180 ["StudioAssistantThreadCreated"]
      963 SETTABLEKS                       R72 R71 K48 ["eventName"]
      965 SETTABLEKS                       R28 R71 K49 ["backends"]
      967 NEWTABLE                         R72 0 3
      969 LOADN                            R73 26
      970 LOADN                            R74 3
      971 LOADN                            R75 10
      972 SETLIST                          R72 R73 3 [1]
      974 SETTABLEKS                       R72 R71 K52 ["lastUpdated"]
      976 CALL                             R70 1 1
      977 GETIMPORT                        R71 K42 [table.freeze]
      979 DUPTABLE                         R72 K182 [{["eventName"], ["backends"], ["description"] = "Thread named event with details.", ["lastUpdated"]}]
      980 LOADK                            R73 K183 ["StudioAssistantThreadRenamed"]
      981 SETTABLEKS                       R73 R72 K48 ["eventName"]
      983 SETTABLEKS                       R28 R72 K49 ["backends"]
      985 NEWTABLE                         R73 0 3
      987 LOADN                            R74 26
      988 LOADN                            R75 3
      989 LOADN                            R76 10
      990 SETLIST                          R73 R74 3 [1]
      992 SETTABLEKS                       R73 R72 K52 ["lastUpdated"]
      994 CALL                             R71 1 1
      995 GETIMPORT                        R72 K42 [table.freeze]
      997 DUPTABLE                         R73 K185 [{["eventName"], ["backends"], ["description"] = "Thread pinned changed event with details.", ["lastUpdated"]}]
      998 LOADK                            R74 K186 ["StudioAssistantThreadPinnedChanged"]
      999 SETTABLEKS                       R74 R73 K48 ["eventName"]
     1001 SETTABLEKS                       R28 R73 K49 ["backends"]
     1003 NEWTABLE                         R74 0 3
     1005 LOADN                            R75 26
     1006 LOADN                            R76 3
     1007 LOADN                            R77 10
     1008 SETLIST                          R74 R75 3 [1]
     1010 SETTABLEKS                       R74 R73 K52 ["lastUpdated"]
     1012 CALL                             R72 1 1
     1013 GETIMPORT                        R73 K42 [table.freeze]
     1015 DUPTABLE                         R74 K188 [{["eventName"], ["backends"], ["description"] = "Thread deleted event with details.", ["lastUpdated"]}]
     1016 LOADK                            R75 K189 ["StudioAssistantThreadDeleted"]
     1017 SETTABLEKS                       R75 R74 K48 ["eventName"]
     1019 SETTABLEKS                       R28 R74 K49 ["backends"]
     1021 NEWTABLE                         R75 0 3
     1023 LOADN                            R76 26
     1024 LOADN                            R77 3
     1025 LOADN                            R78 10
     1026 SETLIST                          R75 R76 3 [1]
     1028 SETTABLEKS                       R75 R74 K52 ["lastUpdated"]
     1030 CALL                             R73 1 1
     1031 GETIMPORT                        R74 K42 [table.freeze]
     1033 DUPTABLE                         R75 K191 [{["eventName"], ["backends"], ["description"] = "Thread duplicated event with details.", ["lastUpdated"]}]
     1034 LOADK                            R76 K192 ["StudioAssistantThreadDuplicated"]
     1035 SETTABLEKS                       R76 R75 K48 ["eventName"]
     1037 SETTABLEKS                       R28 R75 K49 ["backends"]
     1039 NEWTABLE                         R76 0 3
     1041 LOADN                            R77 26
     1042 LOADN                            R78 3
     1043 LOADN                            R79 10
     1044 SETLIST                          R76 R77 3 [1]
     1046 SETTABLEKS                       R76 R75 K52 ["lastUpdated"]
     1048 CALL                             R74 1 1
     1049 GETIMPORT                        R75 K42 [table.freeze]
     1051 DUPTABLE                         R76 K194 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer completed successfully.", ["lastUpdated"]}]
     1052 LOADK                            R77 K195 ["StudioAssistantCompactionSuccess"]
     1053 SETTABLEKS                       R77 R76 K48 ["eventName"]
     1055 SETTABLEKS                       R28 R76 K49 ["backends"]
     1057 NEWTABLE                         R77 0 3
     1059 LOADN                            R78 26
     1060 LOADN                            R79 4
     1061 LOADN                            R80 28
     1062 SETLIST                          R77 R78 3 [1]
     1064 SETTABLEKS                       R77 R76 K52 ["lastUpdated"]
     1066 CALL                             R75 1 1
     1067 GETIMPORT                        R76 K42 [table.freeze]
     1069 DUPTABLE                         R77 K197 [{["eventName"], ["backends"], ["description"] = "Count of successful compaction events.", ["lastUpdated"]}]
     1070 LOADK                            R78 K198 ["StudioAssistantCompactionSuccessCount"]
     1071 SETTABLEKS                       R78 R77 K48 ["eventName"]
     1073 NEWTABLE                         R78 0 1
     1075 GETTABLEKS                       R79 R7 K43 ["Backends"]
     1077 GETTABLEKS                       R79 R79 K55 ["RobloxTelemetryCounter"]
     1079 SETLIST                          R78 R79 1 [1]
     1081 SETTABLEKS                       R78 R77 K49 ["backends"]
     1083 NEWTABLE                         R78 0 3
     1085 LOADN                            R79 26
     1086 LOADN                            R80 4
     1087 LOADN                            R81 28
     1088 SETLIST                          R78 R79 3 [1]
     1090 SETTABLEKS                       R78 R77 K52 ["lastUpdated"]
     1092 CALL                             R76 1 1
     1093 GETIMPORT                        R77 K42 [table.freeze]
     1095 DUPTABLE                         R78 K200 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer failed, fell back to generic summary.", ["lastUpdated"]}]
     1096 LOADK                            R79 K201 ["StudioAssistantCompactionFallback"]
     1097 SETTABLEKS                       R79 R78 K48 ["eventName"]
     1099 SETTABLEKS                       R28 R78 K49 ["backends"]
     1101 NEWTABLE                         R79 0 3
     1103 LOADN                            R80 26
     1104 LOADN                            R81 4
     1105 LOADN                            R82 28
     1106 SETLIST                          R79 R80 3 [1]
     1108 SETTABLEKS                       R79 R78 K52 ["lastUpdated"]
     1110 CALL                             R77 1 1
     1111 GETIMPORT                        R78 K42 [table.freeze]
     1113 DUPTABLE                         R79 K203 [{["eventName"], ["backends"], ["description"] = "Count of compaction fallback events.", ["lastUpdated"]}]
     1114 LOADK                            R80 K204 ["StudioAssistantCompactionFallbackCount"]
     1115 SETTABLEKS                       R80 R79 K48 ["eventName"]
     1117 NEWTABLE                         R80 0 1
     1119 GETTABLEKS                       R81 R7 K43 ["Backends"]
     1121 GETTABLEKS                       R81 R81 K55 ["RobloxTelemetryCounter"]
     1123 SETLIST                          R80 R81 1 [1]
     1125 SETTABLEKS                       R80 R79 K49 ["backends"]
     1127 NEWTABLE                         R80 0 3
     1129 LOADN                            R81 26
     1130 LOADN                            R82 4
     1131 LOADN                            R83 28
     1132 SETLIST                          R80 R81 3 [1]
     1134 SETTABLEKS                       R80 R79 K52 ["lastUpdated"]
     1136 CALL                             R78 1 1
     1137 GETIMPORT                        R79 K42 [table.freeze]
     1139 DUPTABLE                         R80 K206 [{["eventName"], ["backends"], ["description"] = "Quick setup toggled/copied.", ["lastUpdated"]}]
     1140 LOADK                            R81 K207 ["StudioAssistantMCPQuickSetup"]
     1141 SETTABLEKS                       R81 R80 K48 ["eventName"]
     1143 SETTABLEKS                       R28 R80 K49 ["backends"]
     1145 NEWTABLE                         R81 0 3
     1147 LOADN                            R82 26
     1148 LOADN                            R83 4
     1149 LOADN                            R84 15
     1150 SETLIST                          R81 R82 3 [1]
     1152 SETTABLEKS                       R81 R80 K52 ["lastUpdated"]
     1154 CALL                             R79 1 1
     1155 GETIMPORT                        R80 K42 [table.freeze]
     1157 DUPTABLE                         R81 K209 [{["eventName"], ["backends"], ["description"] = "Thread switched event with details.", ["lastUpdated"]}]
     1158 LOADK                            R82 K210 ["StudioAssistantThreadSwitched"]
     1159 SETTABLEKS                       R82 R81 K48 ["eventName"]
     1161 SETTABLEKS                       R28 R81 K49 ["backends"]
     1163 NEWTABLE                         R82 0 3
     1165 LOADN                            R83 26
     1166 LOADN                            R84 3
     1167 LOADN                            R85 10
     1168 SETLIST                          R82 R83 3 [1]
     1170 SETTABLEKS                       R82 R81 K52 ["lastUpdated"]
     1172 CALL                             R80 1 1
     1173 GETIMPORT                        R81 K42 [table.freeze]
     1175 DUPTABLE                         R82 K213 [{["eventName"] = "CAPUserSkillEvent", ["backends"], ["description"] = "User skill created or updated event with skill name and action.", ["lastUpdated"]}]
     1176 SETTABLEKS                       R28 R82 K49 ["backends"]
     1178 NEWTABLE                         R83 0 3
     1180 LOADN                            R84 26
     1181 LOADN                            R85 6
     1182 LOADN                            R86 24
     1183 SETLIST                          R83 R84 3 [1]
     1185 SETTABLEKS                       R83 R82 K52 ["lastUpdated"]
     1187 CALL                             R81 1 1
     1188 GETIMPORT                        R82 K42 [table.freeze]
     1190 DUPTABLE                         R83 K216 [{["eventName"] = "CAPThinkingBlock", ["backends"], ["description"] = "Thinking block completed event with thinking text, subagent attribution.", ["lastUpdated"]}]
     1191 SETTABLEKS                       R28 R83 K49 ["backends"]
     1193 NEWTABLE                         R84 0 3
     1195 LOADN                            R85 26
     1196 LOADN                            R86 7
     1197 LOADN                            R87 22
     1198 SETLIST                          R84 R85 3 [1]
     1200 SETTABLEKS                       R84 R83 K52 ["lastUpdated"]
     1202 CALL                             R82 1 1
     1203 GETIMPORT                        R83 K42 [table.freeze]
     1205 DUPTABLE                         R84 K218 [{["eventName"], ["backends"], ["description"] = "Count of successful persistence operations.", ["lastUpdated"]}]
     1206 LOADK                            R85 K219 ["StudioAssistantPersistenceSuccess"]
     1207 SETTABLEKS                       R85 R84 K48 ["eventName"]
     1209 NEWTABLE                         R85 0 1
     1211 GETTABLEKS                       R86 R7 K43 ["Backends"]
     1213 GETTABLEKS                       R86 R86 K55 ["RobloxTelemetryCounter"]
     1215 SETLIST                          R85 R86 1 [1]
     1217 SETTABLEKS                       R85 R84 K49 ["backends"]
     1219 NEWTABLE                         R85 0 3
     1221 LOADN                            R86 26
     1222 LOADN                            R87 3
     1223 LOADN                            R88 10
     1224 SETLIST                          R85 R86 3 [1]
     1226 SETTABLEKS                       R85 R84 K52 ["lastUpdated"]
     1228 CALL                             R83 1 1
     1229 GETIMPORT                        R84 K42 [table.freeze]
     1231 DUPTABLE                         R85 K221 [{["eventName"], ["backends"], ["description"] = "Count of failed persistence operations.", ["lastUpdated"]}]
     1232 LOADK                            R86 K222 ["StudioAssistantPersistenceFailure"]
     1233 SETTABLEKS                       R86 R85 K48 ["eventName"]
     1235 NEWTABLE                         R86 0 1
     1237 GETTABLEKS                       R87 R7 K43 ["Backends"]
     1239 GETTABLEKS                       R87 R87 K55 ["RobloxTelemetryCounter"]
     1241 SETLIST                          R86 R87 1 [1]
     1243 SETTABLEKS                       R86 R85 K49 ["backends"]
     1245 NEWTABLE                         R86 0 3
     1247 LOADN                            R87 26
     1248 LOADN                            R88 3
     1249 LOADN                            R89 10
     1250 SETLIST                          R86 R87 3 [1]
     1252 SETTABLEKS                       R86 R85 K52 ["lastUpdated"]
     1254 CALL                             R84 1 1
     1255 GETIMPORT                        R85 K42 [table.freeze]
     1257 DUPTABLE                         R86 K224 [{["eventName"], ["backends"], ["description"] = "Persistence operation latency in milliseconds.", ["lastUpdated"]}]
     1258 LOADK                            R87 K225 ["StudioAssistantPersistenceLatencyMs"]
     1259 SETTABLEKS                       R87 R86 K48 ["eventName"]
     1261 NEWTABLE                         R87 0 1
     1263 GETTABLEKS                       R88 R7 K43 ["Backends"]
     1265 GETTABLEKS                       R88 R88 K79 ["RobloxTelemetryStat"]
     1267 SETLIST                          R87 R88 1 [1]
     1269 SETTABLEKS                       R87 R86 K49 ["backends"]
     1271 NEWTABLE                         R87 0 3
     1273 LOADN                            R88 26
     1274 LOADN                            R89 3
     1275 LOADN                            R90 10
     1276 SETLIST                          R87 R88 3 [1]
     1278 SETTABLEKS                       R87 R86 K52 ["lastUpdated"]
     1280 CALL                             R85 1 1
     1281 DUPCLOSURE                       R86 K226 [PROTO_18]
     1282 CAPTURE                          VAL R4
     1283 CAPTURE                          VAL R9
     1284 GETTABLEKS                       R87 R6 K227 ["FStringAssistantGroupNameKey"]
     1286 GETTABLEKS                       R88 R5 K228 ["new"]
     1288 MOVE                             R89 R2
     1289 GETTABLEKS                       R90 R6 K229 ["FStringNewAssistantExperimentLayer"]
     1291 CALL                             R88 2 1
     1292 DUPCLOSURE                       R89 K230 [PROTO_19]
     1293 CAPTURE                          VAL R88
     1294 CAPTURE                          VAL R87
     1295 DUPCLOSURE                       R90 K231 [PROTO_20]
     1296 CAPTURE                          VAL R4
     1297 CAPTURE                          VAL R88
     1298 CAPTURE                          VAL R87
     1299 DUPCLOSURE                       R91 K232 [PROTO_61]
     1300 CAPTURE                          VAL R7
     1301 CAPTURE                          VAL R29
     1302 CAPTURE                          VAL R4
     1303 CAPTURE                          VAL R88
     1304 CAPTURE                          VAL R87
     1305 CAPTURE                          VAL R9
     1306 CAPTURE                          VAL R30
     1307 CAPTURE                          VAL R8
     1308 CAPTURE                          VAL R31
     1309 CAPTURE                          VAL R39
     1310 CAPTURE                          VAL R34
     1311 CAPTURE                          VAL R32
     1312 CAPTURE                          VAL R35
     1313 CAPTURE                          VAL R33
     1314 CAPTURE                          VAL R36
     1315 CAPTURE                          VAL R40
     1316 CAPTURE                          VAL R41
     1317 CAPTURE                          VAL R42
     1318 CAPTURE                          VAL R1
     1319 CAPTURE                          VAL R11
     1320 CAPTURE                          VAL R44
     1321 CAPTURE                          VAL R6
     1322 CAPTURE                          VAL R21
     1323 CAPTURE                          VAL R24
     1324 CAPTURE                          VAL R43
     1325 CAPTURE                          VAL R45
     1326 CAPTURE                          VAL R46
     1327 CAPTURE                          VAL R37
     1328 CAPTURE                          VAL R38
     1329 CAPTURE                          VAL R47
     1330 CAPTURE                          VAL R48
     1331 CAPTURE                          VAL R49
     1332 CAPTURE                          VAL R50
     1333 CAPTURE                          VAL R51
     1334 CAPTURE                          VAL R52
     1335 CAPTURE                          VAL R53
     1336 CAPTURE                          VAL R54
     1337 CAPTURE                          VAL R55
     1338 CAPTURE                          VAL R56
     1339 CAPTURE                          VAL R57
     1340 CAPTURE                          VAL R58
     1341 CAPTURE                          VAL R59
     1342 CAPTURE                          VAL R60
     1343 CAPTURE                          VAL R61
     1344 CAPTURE                          VAL R62
     1345 CAPTURE                          VAL R63
     1346 CAPTURE                          VAL R64
     1347 CAPTURE                          VAL R66
     1348 CAPTURE                          VAL R65
     1349 CAPTURE                          VAL R68
     1350 CAPTURE                          VAL R67
     1351 CAPTURE                          VAL R69
     1352 CAPTURE                          VAL R70
     1353 CAPTURE                          VAL R71
     1354 CAPTURE                          VAL R72
     1355 CAPTURE                          VAL R73
     1356 CAPTURE                          VAL R74
     1357 CAPTURE                          VAL R79
     1358 CAPTURE                          VAL R80
     1359 CAPTURE                          VAL R76
     1360 CAPTURE                          VAL R75
     1361 CAPTURE                          VAL R78
     1362 CAPTURE                          VAL R77
     1363 CAPTURE                          VAL R81
     1364 CAPTURE                          VAL R82
     1365 CAPTURE                          VAL R85
     1366 CAPTURE                          VAL R83
     1367 CAPTURE                          VAL R84
     1368 DUPCLOSURE                       R92 K233 [PROTO_62]
     1369 CAPTURE                          VAL R91
     1370 DUPTABLE                         R93 K236 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1371 SETTABLEKS                       R91 R93 K234 ["makeStudioTelemetryEvents"]
     1373 SETTABLEKS                       R92 R93 K235 ["createStudioEventLogger"]
     1375 RETURN                           R93 1
