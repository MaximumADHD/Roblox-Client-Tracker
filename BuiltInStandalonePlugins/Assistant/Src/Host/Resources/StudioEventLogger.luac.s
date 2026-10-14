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
        0 LOADK                            R1 K0 ["StudioAssistant%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R0 K0 ["Remote"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["Local"]
        6 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"experimentationGroup", "featureTag"}]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R5 R5 K4 ["get"]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADNIL                          R4
       12 JUMP                             ; [+16]
       13 GETUPVAL                         R7 2
       14 GETTABLE                         R6 R5 R7
       15 JUMPIFNOTEQKNIL                  R6 ; [+3]
       17 GETTABLEKS                       R6 R5 K5 ["generatedExperimentVariantDistributionVariable"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+3]
       21 LOADNIL                          R4
       22 JUMP                             ; [+6]
       23 FASTCALL1                        TOSTRING R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K7 [tostring]
       27 CALL                             R7 1 1
       28 MOVE                             R4 R7
       29 SETTABLEKS                       R4 R3 K1 ["experimentationGroup"]
       31 GETUPVAL                         R5 3
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+2]
       34 LOADK                            R4 K8 ["Remote"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K9 ["Local"]
       37 SETTABLEKS                       R4 R3 K2 ["featureTag"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_22:
        0 NEWTABLE                         R1 2 0
        2 DUPTABLE                         R2 K9 [{[1], ["conversationId"], ["threadId"], ["acpSessionId"], ["message"], ["attachments"], ["assistantMode"], ["role"] = "MCPUser"}]
        3 GETTABLEKS                       R3 R0 K10 ["messageGuid"]
        5 SETTABLEKS                       R3 R2 K0 ["requestId"]
        7 GETTABLEKS                       R3 R0 K11 ["sessionId"]
        9 SETTABLEKS                       R3 R2 K1 ["conversationId"]
       11 GETTABLEKS                       R3 R0 K2 ["threadId"]
       13 SETTABLEKS                       R3 R2 K2 ["threadId"]
       15 GETTABLEKS                       R3 R0 K3 ["acpSessionId"]
       17 SETTABLEKS                       R3 R2 K3 ["acpSessionId"]
       19 GETTABLEKS                       R3 R0 K4 ["message"]
       21 SETTABLEKS                       R3 R2 K4 ["message"]
       23 GETTABLEKS                       R3 R0 K5 ["attachments"]
       25 SETTABLEKS                       R3 R2 K5 ["attachments"]
       27 GETTABLEKS                       R3 R0 K6 ["assistantMode"]
       29 SETTABLEKS                       R3 R2 K6 ["assistantMode"]
       31 GETTABLEKS                       R3 R0 K12 ["model"]
       33 SETTABLEKS                       R3 R2 K12 ["model"]
       35 GETUPVAL                         R4 0
       36 NAMECALL                         R4 R4 K13 ["get"]
       38 CALL                             R4 1 1
       39 JUMPIFNOTEQKNIL                  R4 ; [+3]
       41 LOADNIL                          R3
       42 JUMP                             ; [+16]
       43 GETUPVAL                         R6 1
       44 GETTABLE                         R5 R4 R6
       45 JUMPIFNOTEQKNIL                  R5 ; [+3]
       47 GETTABLEKS                       R5 R4 K14 ["generatedExperimentVariantDistributionVariable"]
       49 JUMPIFNOTEQKNIL                  R5 ; [+3]
       51 LOADNIL                          R3
       52 JUMP                             ; [+6]
       53 FASTCALL1                        TOSTRING R5 ; [+3]
       54 MOVE                             R7 R5
       55 GETIMPORT                        R6 K16 [tostring]
       57 CALL                             R6 1 1
       58 MOVE                             R3 R6
       59 SETTABLEKS                       R3 R2 K17 ["experimentGroup"]
       61 GETUPVAL                         R3 2
       62 CALL                             R3 0 1
       63 JUMPIFNOT                        R3 ; [+20]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K18 ["FFlagAssistantCreditMeteringTelemetry"]
       67 JUMPIFNOT                        R3 ; [+16]
       68 GETTABLEKS                       R3 R0 K19 ["additionalUsageEnabled"]
       70 SETTABLEKS                       R3 R1 K19 ["additionalUsageEnabled"]
       72 GETTABLEKS                       R3 R0 K20 ["dailyLimitSet"]
       74 SETTABLEKS                       R3 R1 K20 ["dailyLimitSet"]
       76 GETTABLEKS                       R3 R0 K19 ["additionalUsageEnabled"]
       78 SETTABLEKS                       R3 R2 K19 ["additionalUsageEnabled"]
       80 GETTABLEKS                       R3 R0 K20 ["dailyLimitSet"]
       82 SETTABLEKS                       R3 R2 K20 ["dailyLimitSet"]
       84 GETUPVAL                         R3 4
       85 GETTABLEKS                       R3 R3 K21 ["logCounter"]
       87 GETUPVAL                         R4 5
       88 LOADN                            R5 1
       89 DUPTABLE                         R6 K23 [{"customFields"}]
       90 GETUPVAL                         R7 6
       91 GETTABLEKS                       R7 R7 K24 ["join"]
       93 MOVE                             R8 R1
       94 DUPTABLE                         R9 K27 [{"experimentationGroup", "featureTag"}]
       95 GETUPVAL                         R11 0
       96 NAMECALL                         R11 R11 K13 ["get"]
       98 CALL                             R11 1 1
       99 JUMPIFNOTEQKNIL                  R11 ; [+3]
      101 LOADNIL                          R10
      102 JUMP                             ; [+16]
      103 GETUPVAL                         R13 1
      104 GETTABLE                         R12 R11 R13
      105 JUMPIFNOTEQKNIL                  R12 ; [+3]
      107 GETTABLEKS                       R12 R11 K14 ["generatedExperimentVariantDistributionVariable"]
      109 JUMPIFNOTEQKNIL                  R12 ; [+3]
      111 LOADNIL                          R10
      112 JUMP                             ; [+6]
      113 FASTCALL1                        TOSTRING R12 ; [+3]
      114 MOVE                             R14 R12
      115 GETIMPORT                        R13 K16 [tostring]
      117 CALL                             R13 1 1
      118 MOVE                             R10 R13
      119 SETTABLEKS                       R10 R9 K25 ["experimentationGroup"]
      121 GETUPVAL                         R11 7
      122 CALL                             R11 0 1
      123 JUMPIFNOT                        R11 ; [+2]
      124 LOADK                            R10 K28 ["Remote"]
      125 JUMP                             ; [+1]
      126 LOADK                            R10 K29 ["Local"]
      127 SETTABLEKS                       R10 R9 K26 ["featureTag"]
      129 CALL                             R7 2 1
      130 SETTABLEKS                       R7 R6 K22 ["customFields"]
      132 CALL                             R3 3 0
      133 GETUPVAL                         R3 6
      134 GETTABLEKS                       R3 R3 K30 ["assign"]
      136 MOVE                             R4 R2
      137 DUPTABLE                         R5 K32 [{"timestampMilliseconds"}]
      138 GETUPVAL                         R6 8
      139 GETTABLEKS                       R6 R6 K33 ["getTimestampMilliseconds"]
      141 CALL                             R6 0 1
      142 SETTABLEKS                       R6 R5 K31 ["timestampMilliseconds"]
      144 CALL                             R3 2 1
      145 GETUPVAL                         R4 4
      146 GETTABLEKS                       R4 R4 K34 ["logEvent"]
      148 GETUPVAL                         R5 9
      149 DUPTABLE                         R6 K36 [{"customFields", "standardizedFields"}]
      150 SETTABLEKS                       R3 R6 K22 ["customFields"]
      152 NEWTABLE                         R8 0 0
      154 GETUPVAL                         R9 10
      155 GETTABLEKS                       R9 R9 K37 ["StandardizedFields"]
      157 LOADNIL                          R10
      158 LOADNIL                          R11
      159 FORGPREP                         R9
      160 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      162 MOVE                             R15 R8
      163 MOVE                             R16 R13
      164 GETIMPORT                        R14 K40 [table.insert]
      166 CALL                             R14 2 0
      167 FORGLOOP                         R9 2 ; [-8]
      169 MOVE                             R7 R8
      170 SETTABLEKS                       R7 R6 K35 ["standardizedFields"]
      172 CALL                             R4 2 0
      173 GETUPVAL                         R4 11
      174 JUMPIFNOT                        R4 ; [+10]
      175 GETUPVAL                         R4 11
      176 LOADK                            R6 K41 ["user_message_sent"]
      177 DUPTABLE                         R7 K42 [{"requestId"}]
      178 GETTABLEKS                       R8 R0 K10 ["messageGuid"]
      180 SETTABLEKS                       R8 R7 K0 ["requestId"]
      182 NAMECALL                         R4 R4 K43 ["LogEventAsync"]
      184 CALL                             R4 3 0
      185 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R2 K8 [{[1], ["conversationId"], ["threadId"], ["acpSessionId"], ["message"], ["role"] = "MCPAssistant", ["experimentGroup"]}]
        1 GETTABLEKS                       R3 R0 K9 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K10 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["threadId"]
       11 SETTABLEKS                       R3 R2 K2 ["threadId"]
       13 GETTABLEKS                       R3 R0 K3 ["acpSessionId"]
       15 SETTABLEKS                       R3 R2 K3 ["acpSessionId"]
       17 GETTABLEKS                       R3 R0 K4 ["message"]
       19 SETTABLEKS                       R3 R2 K4 ["message"]
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K11 ["get"]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKNIL                  R4 ; [+3]
       27 LOADNIL                          R3
       28 JUMP                             ; [+16]
       29 GETUPVAL                         R6 1
       30 GETTABLE                         R5 R4 R6
       31 JUMPIFNOTEQKNIL                  R5 ; [+3]
       33 GETTABLEKS                       R5 R4 K12 ["generatedExperimentVariantDistributionVariable"]
       35 JUMPIFNOTEQKNIL                  R5 ; [+3]
       37 LOADNIL                          R3
       38 JUMP                             ; [+6]
       39 FASTCALL1                        TOSTRING R5 ; [+3]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K14 [tostring]
       43 CALL                             R6 1 1
       44 MOVE                             R3 R6
       45 SETTABLEKS                       R3 R2 K7 ["experimentGroup"]
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R3 R3 K15 ["assign"]
       50 MOVE                             R4 R2
       51 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K18 ["getTimestampMilliseconds"]
       55 CALL                             R6 0 1
       56 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       58 CALL                             R3 2 1
       59 MOVE                             R1 R3
       60 GETUPVAL                         R2 4
       61 GETTABLEKS                       R2 R2 K19 ["logEvent"]
       63 GETUPVAL                         R3 5
       64 DUPTABLE                         R4 K22 [{"customFields", "standardizedFields"}]
       65 SETTABLEKS                       R1 R4 K20 ["customFields"]
       67 NEWTABLE                         R6 0 0
       69 GETUPVAL                         R7 6
       70 GETTABLEKS                       R7 R7 K23 ["StandardizedFields"]
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       77 MOVE                             R13 R6
       78 MOVE                             R14 R11
       79 GETIMPORT                        R12 K26 [table.insert]
       81 CALL                             R12 2 0
       82 FORGLOOP                         R7 2 ; [-8]
       84 MOVE                             R5 R6
       85 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
       87 CALL                             R2 2 0
       88 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["logCounter"]
        3 GETUPVAL                         R3 1
        4 LOADN                            R4 1
        5 DUPTABLE                         R5 K2 [{"customFields"}]
        6 DUPTABLE                         R7 K4 [{"errorType"}]
        7 SETTABLEKS                       R0 R7 K3 ["errorType"]
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K5 ["join"]
       12 MOVE                             R9 R7
       13 DUPTABLE                         R10 K8 [{"experimentationGroup", "featureTag"}]
       14 GETUPVAL                         R12 3
       15 NAMECALL                         R12 R12 K9 ["get"]
       17 CALL                             R12 1 1
       18 JUMPIFNOTEQKNIL                  R12 ; [+3]
       20 LOADNIL                          R11
       21 JUMP                             ; [+16]
       22 GETUPVAL                         R14 4
       23 GETTABLE                         R13 R12 R14
       24 JUMPIFNOTEQKNIL                  R13 ; [+3]
       26 GETTABLEKS                       R13 R12 K10 ["generatedExperimentVariantDistributionVariable"]
       28 JUMPIFNOTEQKNIL                  R13 ; [+3]
       30 LOADNIL                          R11
       31 JUMP                             ; [+6]
       32 FASTCALL1                        TOSTRING R13 ; [+3]
       33 MOVE                             R15 R13
       34 GETIMPORT                        R14 K12 [tostring]
       36 CALL                             R14 1 1
       37 MOVE                             R11 R14
       38 SETTABLEKS                       R11 R10 K6 ["experimentationGroup"]
       40 GETUPVAL                         R12 5
       41 CALL                             R12 0 1
       42 JUMPIFNOT                        R12 ; [+2]
       43 LOADK                            R11 K13 ["Remote"]
       44 JUMP                             ; [+1]
       45 LOADK                            R11 K14 ["Local"]
       46 SETTABLEKS                       R11 R10 K7 ["featureTag"]
       48 CALL                             R8 2 1
       49 MOVE                             R6 R8
       50 SETTABLEKS                       R6 R5 K1 ["customFields"]
       52 CALL                             R2 3 0
       53 DUPTABLE                         R3 K19 [{"requestId", "conversationId", "threadId", "acpSessionId", "errorType"}]
       54 MOVE                             R4 R1
       55 JUMPIFNOT                        R4 ; [+2]
       56 GETTABLEKS                       R4 R1 K15 ["requestId"]
       58 SETTABLEKS                       R4 R3 K15 ["requestId"]
       60 MOVE                             R4 R1
       61 JUMPIFNOT                        R4 ; [+2]
       62 GETTABLEKS                       R4 R1 K16 ["conversationId"]
       64 SETTABLEKS                       R4 R3 K16 ["conversationId"]
       66 MOVE                             R4 R1
       67 JUMPIFNOT                        R4 ; [+2]
       68 GETTABLEKS                       R4 R1 K17 ["threadId"]
       70 SETTABLEKS                       R4 R3 K17 ["threadId"]
       72 MOVE                             R4 R1
       73 JUMPIFNOT                        R4 ; [+2]
       74 GETTABLEKS                       R4 R1 K18 ["acpSessionId"]
       76 SETTABLEKS                       R4 R3 K18 ["acpSessionId"]
       78 SETTABLEKS                       R0 R3 K3 ["errorType"]
       80 GETUPVAL                         R4 2
       81 GETTABLEKS                       R4 R4 K20 ["assign"]
       83 MOVE                             R5 R3
       84 DUPTABLE                         R6 K22 [{"timestampMilliseconds"}]
       85 GETUPVAL                         R7 6
       86 GETTABLEKS                       R7 R7 K23 ["getTimestampMilliseconds"]
       88 CALL                             R7 0 1
       89 SETTABLEKS                       R7 R6 K21 ["timestampMilliseconds"]
       91 CALL                             R4 2 1
       92 MOVE                             R2 R4
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K24 ["logEvent"]
       96 GETUPVAL                         R4 7
       97 DUPTABLE                         R5 K26 [{"customFields", "standardizedFields"}]
       98 SETTABLEKS                       R2 R5 K1 ["customFields"]
      100 NEWTABLE                         R7 0 0
      102 GETUPVAL                         R8 8
      103 GETTABLEKS                       R8 R8 K27 ["StandardizedFields"]
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      110 MOVE                             R14 R7
      111 MOVE                             R15 R12
      112 GETIMPORT                        R13 K30 [table.insert]
      114 CALL                             R13 2 0
      115 FORGLOOP                         R8 2 ; [-8]
      117 MOVE                             R6 R7
      118 SETTABLEKS                       R6 R5 K25 ["standardizedFields"]
      120 CALL                             R3 2 0
      121 RETURN                           R0 0

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
       12 DUPTABLE                         R9 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K7 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K10 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 GETUPVAL                         R11 5
       40 CALL                             R11 0 1
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K12 ["Local"]
       45 SETTABLEKS                       R10 R9 K5 ["featureTag"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K1 ["customFields"]
       51 CALL                             R1 3 0
       52 DUPTABLE                         R2 K17 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       53 GETTABLEKS                       R3 R0 K18 ["messageGuid"]
       55 SETTABLEKS                       R3 R2 K13 ["requestId"]
       57 GETTABLEKS                       R3 R0 K19 ["sessionId"]
       59 SETTABLEKS                       R3 R2 K14 ["conversationId"]
       61 GETTABLEKS                       R3 R0 K15 ["feedbackCategory"]
       63 SETTABLEKS                       R3 R2 K15 ["feedbackCategory"]
       65 GETTABLEKS                       R3 R0 K16 ["feedbackMessage"]
       67 SETTABLEKS                       R3 R2 K16 ["feedbackMessage"]
       69 GETUPVAL                         R3 2
       70 GETTABLEKS                       R3 R3 K20 ["assign"]
       72 MOVE                             R4 R2
       73 DUPTABLE                         R5 K22 [{"timestampMilliseconds"}]
       74 GETUPVAL                         R6 6
       75 GETTABLEKS                       R6 R6 K23 ["getTimestampMilliseconds"]
       77 CALL                             R6 0 1
       78 SETTABLEKS                       R6 R5 K21 ["timestampMilliseconds"]
       80 CALL                             R3 2 1
       81 MOVE                             R1 R3
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K24 ["logEvent"]
       85 GETUPVAL                         R3 7
       86 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
       87 SETTABLEKS                       R1 R4 K1 ["customFields"]
       89 NEWTABLE                         R6 0 0
       91 GETUPVAL                         R7 8
       92 GETTABLEKS                       R7 R7 K27 ["StandardizedFields"]
       94 LOADNIL                          R8
       95 LOADNIL                          R9
       96 FORGPREP                         R7
       97 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       99 MOVE                             R13 R6
      100 MOVE                             R14 R11
      101 GETIMPORT                        R12 K30 [table.insert]
      103 CALL                             R12 2 0
      104 FORGLOOP                         R7 2 ; [-8]
      106 MOVE                             R5 R6
      107 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      109 CALL                             R2 2 0
      110 GETUPVAL                         R2 9
      111 JUMPIFNOT                        R2 ; [+10]
      112 GETUPVAL                         R2 9
      113 LOADK                            R4 K31 ["thumbs_up"]
      114 DUPTABLE                         R5 K32 [{"requestId"}]
      115 GETTABLEKS                       R6 R0 K18 ["messageGuid"]
      117 SETTABLEKS                       R6 R5 K13 ["requestId"]
      119 NAMECALL                         R2 R2 K33 ["LogEventAsync"]
      121 CALL                             R2 3 0
      122 RETURN                           R0 0

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
       12 DUPTABLE                         R9 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K7 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K10 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 GETUPVAL                         R11 5
       40 CALL                             R11 0 1
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K12 ["Local"]
       45 SETTABLEKS                       R10 R9 K5 ["featureTag"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K1 ["customFields"]
       51 CALL                             R1 3 0
       52 DUPTABLE                         R2 K17 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       53 GETTABLEKS                       R3 R0 K18 ["messageGuid"]
       55 SETTABLEKS                       R3 R2 K13 ["requestId"]
       57 GETTABLEKS                       R3 R0 K19 ["sessionId"]
       59 SETTABLEKS                       R3 R2 K14 ["conversationId"]
       61 GETTABLEKS                       R3 R0 K15 ["feedbackCategory"]
       63 SETTABLEKS                       R3 R2 K15 ["feedbackCategory"]
       65 GETTABLEKS                       R3 R0 K16 ["feedbackMessage"]
       67 SETTABLEKS                       R3 R2 K16 ["feedbackMessage"]
       69 GETUPVAL                         R3 2
       70 GETTABLEKS                       R3 R3 K20 ["assign"]
       72 MOVE                             R4 R2
       73 DUPTABLE                         R5 K22 [{"timestampMilliseconds"}]
       74 GETUPVAL                         R6 6
       75 GETTABLEKS                       R6 R6 K23 ["getTimestampMilliseconds"]
       77 CALL                             R6 0 1
       78 SETTABLEKS                       R6 R5 K21 ["timestampMilliseconds"]
       80 CALL                             R3 2 1
       81 MOVE                             R1 R3
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K24 ["logEvent"]
       85 GETUPVAL                         R3 7
       86 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
       87 SETTABLEKS                       R1 R4 K1 ["customFields"]
       89 NEWTABLE                         R6 0 0
       91 GETUPVAL                         R7 8
       92 GETTABLEKS                       R7 R7 K27 ["StandardizedFields"]
       94 LOADNIL                          R8
       95 LOADNIL                          R9
       96 FORGPREP                         R7
       97 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       99 MOVE                             R13 R6
      100 MOVE                             R14 R11
      101 GETIMPORT                        R12 K30 [table.insert]
      103 CALL                             R12 2 0
      104 FORGLOOP                         R7 2 ; [-8]
      106 MOVE                             R5 R6
      107 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      109 CALL                             R2 2 0
      110 GETUPVAL                         R2 9
      111 JUMPIFNOT                        R2 ; [+10]
      112 GETUPVAL                         R2 9
      113 LOADK                            R4 K31 ["thumbs_down"]
      114 DUPTABLE                         R5 K32 [{"requestId"}]
      115 GETTABLEKS                       R6 R0 K18 ["messageGuid"]
      117 SETTABLEKS                       R6 R5 K13 ["requestId"]
      119 NAMECALL                         R2 R2 K33 ["LogEventAsync"]
      121 CALL                             R2 3 0
      122 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K7 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K10 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 GETUPVAL                         R11 5
       40 CALL                             R11 0 1
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K12 ["Local"]
       45 SETTABLEKS                       R10 R9 K5 ["featureTag"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K1 ["customFields"]
       51 CALL                             R1 3 0
       52 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 DUPTABLE                         R3 K2 [{"customFields"}]
        6 NEWTABLE                         R5 0 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["join"]
       11 MOVE                             R7 R5
       12 DUPTABLE                         R8 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R10 3
       14 NAMECALL                         R10 R10 K7 ["get"]
       16 CALL                             R10 1 1
       17 JUMPIFNOTEQKNIL                  R10 ; [+3]
       19 LOADNIL                          R9
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R12 4
       22 GETTABLE                         R11 R10 R12
       23 JUMPIFNOTEQKNIL                  R11 ; [+3]
       25 GETTABLEKS                       R11 R10 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R11 ; [+3]
       29 LOADNIL                          R9
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R11 ; [+3]
       32 MOVE                             R13 R11
       33 GETIMPORT                        R12 K10 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R9 R12
       37 SETTABLEKS                       R9 R8 K4 ["experimentationGroup"]
       39 GETUPVAL                         R10 5
       40 CALL                             R10 0 1
       41 JUMPIFNOT                        R10 ; [+2]
       42 LOADK                            R9 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R9 K12 ["Local"]
       45 SETTABLEKS                       R9 R8 K5 ["featureTag"]
       47 CALL                             R6 2 1
       48 MOVE                             R4 R6
       49 SETTABLEKS                       R4 R3 K1 ["customFields"]
       51 CALL                             R0 3 0
       52 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K11 [{"toolName", "isStudioTool", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent"}]
        7 GETTABLEKS                       R7 R0 K3 ["toolName"]
        9 SETTABLEKS                       R7 R6 K3 ["toolName"]
       11 GETTABLEKS                       R7 R0 K4 ["isStudioTool"]
       13 SETTABLEKS                       R7 R6 K4 ["isStudioTool"]
       15 GETTABLEKS                       R7 R0 K5 ["serverName"]
       17 SETTABLEKS                       R7 R6 K5 ["serverName"]
       19 GETTABLEKS                       R7 R0 K6 ["clientName"]
       21 SETTABLEKS                       R7 R6 K6 ["clientName"]
       23 GETTABLEKS                       R7 R0 K7 ["isThirdPartyRequest"]
       25 SETTABLEKS                       R7 R6 K7 ["isThirdPartyRequest"]
       27 GETTABLEKS                       R7 R0 K8 ["isSlashCommand"]
       29 SETTABLEKS                       R7 R6 K8 ["isSlashCommand"]
       31 GETTABLEKS                       R7 R0 K9 ["assistantMode"]
       33 SETTABLEKS                       R7 R6 K9 ["assistantMode"]
       35 GETTABLEKS                       R7 R0 K10 ["currentSubagent"]
       37 SETTABLEKS                       R7 R6 K10 ["currentSubagent"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K12 ["join"]
       42 MOVE                             R8 R6
       43 DUPTABLE                         R9 K15 [{"experimentationGroup", "featureTag"}]
       44 GETUPVAL                         R11 3
       45 NAMECALL                         R11 R11 K16 ["get"]
       47 CALL                             R11 1 1
       48 JUMPIFNOTEQKNIL                  R11 ; [+3]
       50 LOADNIL                          R10
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R13 4
       53 GETTABLE                         R12 R11 R13
       54 JUMPIFNOTEQKNIL                  R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K17 ["generatedExperimentVariantDistributionVariable"]
       58 JUMPIFNOTEQKNIL                  R12 ; [+3]
       60 LOADNIL                          R10
       61 JUMP                             ; [+6]
       62 FASTCALL1                        TOSTRING R12 ; [+3]
       63 MOVE                             R14 R12
       64 GETIMPORT                        R13 K19 [tostring]
       66 CALL                             R13 1 1
       67 MOVE                             R10 R13
       68 SETTABLEKS                       R10 R9 K13 ["experimentationGroup"]
       70 GETUPVAL                         R11 5
       71 CALL                             R11 0 1
       72 JUMPIFNOT                        R11 ; [+2]
       73 LOADK                            R10 K20 ["Remote"]
       74 JUMP                             ; [+1]
       75 LOADK                            R10 K21 ["Local"]
       76 SETTABLEKS                       R10 R9 K14 ["featureTag"]
       78 CALL                             R7 2 1
       79 MOVE                             R5 R7
       80 SETTABLEKS                       R5 R4 K1 ["customFields"]
       82 CALL                             R1 3 0
       83 DUPTABLE                         R2 K29 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId", "experimentGroup"}]
       84 GETTABLEKS                       R3 R0 K30 ["messageGuid"]
       86 SETTABLEKS                       R3 R2 K22 ["requestId"]
       88 GETTABLEKS                       R3 R0 K31 ["sessionId"]
       90 SETTABLEKS                       R3 R2 K23 ["conversationId"]
       92 GETTABLEKS                       R3 R0 K24 ["toolId"]
       94 SETTABLEKS                       R3 R2 K24 ["toolId"]
       96 GETTABLEKS                       R3 R0 K3 ["toolName"]
       98 SETTABLEKS                       R3 R2 K3 ["toolName"]
      100 GETTABLEKS                       R3 R0 K3 ["toolName"]
      102 SETTABLEKS                       R3 R2 K25 ["toolType"]
      104 GETTABLEKS                       R3 R0 K4 ["isStudioTool"]
      106 SETTABLEKS                       R3 R2 K4 ["isStudioTool"]
      108 GETTABLEKS                       R3 R0 K5 ["serverName"]
      110 SETTABLEKS                       R3 R2 K5 ["serverName"]
      112 GETTABLEKS                       R3 R0 K6 ["clientName"]
      114 SETTABLEKS                       R3 R2 K6 ["clientName"]
      116 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
      118 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
      120 GETTABLEKS                       R3 R0 K8 ["isSlashCommand"]
      122 SETTABLEKS                       R3 R2 K8 ["isSlashCommand"]
      124 GETTABLEKS                       R3 R0 K9 ["assistantMode"]
      126 SETTABLEKS                       R3 R2 K9 ["assistantMode"]
      128 GETTABLEKS                       R3 R0 K10 ["currentSubagent"]
      130 SETTABLEKS                       R3 R2 K10 ["currentSubagent"]
      132 GETTABLEKS                       R3 R0 K26 ["parentMessageGuid"]
      134 SETTABLEKS                       R3 R2 K26 ["parentMessageGuid"]
      136 GETTABLEKS                       R3 R0 K27 ["parentToolId"]
      138 SETTABLEKS                       R3 R2 K27 ["parentToolId"]
      140 GETUPVAL                         R4 3
      141 NAMECALL                         R4 R4 K16 ["get"]
      143 CALL                             R4 1 1
      144 JUMPIFNOTEQKNIL                  R4 ; [+3]
      146 LOADNIL                          R3
      147 JUMP                             ; [+16]
      148 GETUPVAL                         R6 4
      149 GETTABLE                         R5 R4 R6
      150 JUMPIFNOTEQKNIL                  R5 ; [+3]
      152 GETTABLEKS                       R5 R4 K17 ["generatedExperimentVariantDistributionVariable"]
      154 JUMPIFNOTEQKNIL                  R5 ; [+3]
      156 LOADNIL                          R3
      157 JUMP                             ; [+6]
      158 FASTCALL1                        TOSTRING R5 ; [+3]
      159 MOVE                             R7 R5
      160 GETIMPORT                        R6 K19 [tostring]
      162 CALL                             R6 1 1
      163 MOVE                             R3 R6
      164 SETTABLEKS                       R3 R2 K28 ["experimentGroup"]
      166 GETUPVAL                         R3 2
      167 GETTABLEKS                       R3 R3 K32 ["assign"]
      169 MOVE                             R4 R2
      170 DUPTABLE                         R5 K34 [{"timestampMilliseconds"}]
      171 GETUPVAL                         R6 6
      172 GETTABLEKS                       R6 R6 K35 ["getTimestampMilliseconds"]
      174 CALL                             R6 0 1
      175 SETTABLEKS                       R6 R5 K33 ["timestampMilliseconds"]
      177 CALL                             R3 2 1
      178 MOVE                             R1 R3
      179 GETTABLEKS                       R3 R0 K36 ["input"]
      181 JUMPIFNOTEQKNIL                  R3 ; [+3]
      183 LOADNIL                          R2
      184 JUMP                             ; [+10]
      185 GETIMPORT                        R4 K38 [pcall]
      187 NEWCLOSURE                       R5 P0
      188 CAPTURE                          UPVAL U7
      189 CAPTURE                          VAL R3
      190 CALL                             R4 1 2
      191 JUMPIF                           R4 ; [+2]
      192 LOADNIL                          R2
      193 JUMP                             ; [+1]
      194 MOVE                             R2 R5
      195 JUMPIFNOTEQKNIL                  R2 ; [+3]
      197 LOADNIL                          R3
      198 JUMP                             ; [+13]
      199 LENGTH                           R4 R2
      200 LOADN                            R5 500
      201 JUMPIFNOTLE                      R4 R5 ; [+3]
      203 MOVE                             R3 R2
      204 JUMP                             ; [+7]
      205 GETUPVAL                         R4 8
      206 MOVE                             R5 R2
      207 LOADN                            R6 500
      208 CALL                             R4 2 1
      209 MOVE                             R5 R4
      210 LOADK                            R6 K39 ["..."]
      211 CONCAT                           R3 R5 R6
      212 SETTABLEKS                       R3 R1 K40 ["toolUseInput"]
      214 JUMPIFNOT                        R2 ; [+2]
      215 LENGTH                           R3 R2
      216 JUMP                             ; [+1]
      217 LOADNIL                          R3
      218 SETTABLEKS                       R3 R1 K41 ["toolUseInputCharacters"]
      220 GETUPVAL                         R3 0
      221 GETTABLEKS                       R3 R3 K42 ["logEvent"]
      223 GETUPVAL                         R4 9
      224 DUPTABLE                         R5 K44 [{"customFields", "standardizedFields"}]
      225 SETTABLEKS                       R1 R5 K1 ["customFields"]
      227 NEWTABLE                         R7 0 0
      229 GETUPVAL                         R8 10
      230 GETTABLEKS                       R8 R8 K45 ["StandardizedFields"]
      232 LOADNIL                          R9
      233 LOADNIL                          R10
      234 FORGPREP                         R8
      235 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      237 MOVE                             R14 R7
      238 MOVE                             R15 R12
      239 GETIMPORT                        R13 K48 [table.insert]
      241 CALL                             R13 2 0
      242 FORGLOOP                         R8 2 ; [-8]
      244 MOVE                             R6 R7
      245 SETTABLEKS                       R6 R5 K43 ["standardizedFields"]
      247 CALL                             R3 2 0
      248 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K12 [{"toolName", "isStudioTool", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "isError", "assistantMode", "currentSubagent"}]
        7 GETTABLEKS                       R7 R0 K3 ["toolName"]
        9 SETTABLEKS                       R7 R6 K3 ["toolName"]
       11 GETTABLEKS                       R7 R0 K4 ["isStudioTool"]
       13 SETTABLEKS                       R7 R6 K4 ["isStudioTool"]
       15 GETTABLEKS                       R7 R0 K5 ["serverName"]
       17 SETTABLEKS                       R7 R6 K5 ["serverName"]
       19 GETTABLEKS                       R7 R0 K6 ["clientName"]
       21 SETTABLEKS                       R7 R6 K6 ["clientName"]
       23 GETTABLEKS                       R7 R0 K7 ["isThirdPartyRequest"]
       25 SETTABLEKS                       R7 R6 K7 ["isThirdPartyRequest"]
       27 GETTABLEKS                       R7 R0 K8 ["isSlashCommand"]
       29 SETTABLEKS                       R7 R6 K8 ["isSlashCommand"]
       31 GETTABLEKS                       R7 R0 K9 ["isError"]
       33 SETTABLEKS                       R7 R6 K9 ["isError"]
       35 GETTABLEKS                       R7 R0 K10 ["assistantMode"]
       37 SETTABLEKS                       R7 R6 K10 ["assistantMode"]
       39 GETTABLEKS                       R7 R0 K11 ["currentSubagent"]
       41 SETTABLEKS                       R7 R6 K11 ["currentSubagent"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K13 ["join"]
       46 MOVE                             R8 R6
       47 DUPTABLE                         R9 K16 [{"experimentationGroup", "featureTag"}]
       48 GETUPVAL                         R11 3
       49 NAMECALL                         R11 R11 K17 ["get"]
       51 CALL                             R11 1 1
       52 JUMPIFNOTEQKNIL                  R11 ; [+3]
       54 LOADNIL                          R10
       55 JUMP                             ; [+16]
       56 GETUPVAL                         R13 4
       57 GETTABLE                         R12 R11 R13
       58 JUMPIFNOTEQKNIL                  R12 ; [+3]
       60 GETTABLEKS                       R12 R11 K18 ["generatedExperimentVariantDistributionVariable"]
       62 JUMPIFNOTEQKNIL                  R12 ; [+3]
       64 LOADNIL                          R10
       65 JUMP                             ; [+6]
       66 FASTCALL1                        TOSTRING R12 ; [+3]
       67 MOVE                             R14 R12
       68 GETIMPORT                        R13 K20 [tostring]
       70 CALL                             R13 1 1
       71 MOVE                             R10 R13
       72 SETTABLEKS                       R10 R9 K14 ["experimentationGroup"]
       74 GETUPVAL                         R11 5
       75 CALL                             R11 0 1
       76 JUMPIFNOT                        R11 ; [+2]
       77 LOADK                            R10 K21 ["Remote"]
       78 JUMP                             ; [+1]
       79 LOADK                            R10 K22 ["Local"]
       80 SETTABLEKS                       R10 R9 K15 ["featureTag"]
       82 CALL                             R7 2 1
       83 MOVE                             R5 R7
       84 SETTABLEKS                       R5 R4 K1 ["customFields"]
       86 CALL                             R1 3 0
       87 DUPTABLE                         R2 K32 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       88 GETTABLEKS                       R3 R0 K33 ["messageGuid"]
       90 SETTABLEKS                       R3 R2 K23 ["requestId"]
       92 GETTABLEKS                       R3 R0 K34 ["sessionId"]
       94 SETTABLEKS                       R3 R2 K24 ["conversationId"]
       96 GETTABLEKS                       R3 R0 K25 ["toolId"]
       98 SETTABLEKS                       R3 R2 K25 ["toolId"]
      100 GETTABLEKS                       R3 R0 K3 ["toolName"]
      102 SETTABLEKS                       R3 R2 K3 ["toolName"]
      104 GETTABLEKS                       R3 R0 K3 ["toolName"]
      106 SETTABLEKS                       R3 R2 K26 ["toolType"]
      108 GETTABLEKS                       R3 R0 K4 ["isStudioTool"]
      110 SETTABLEKS                       R3 R2 K4 ["isStudioTool"]
      112 GETTABLEKS                       R3 R0 K9 ["isError"]
      114 SETTABLEKS                       R3 R2 K9 ["isError"]
      116 GETTABLEKS                       R3 R0 K27 ["startTime"]
      118 SETTABLEKS                       R3 R2 K27 ["startTime"]
      120 GETTABLEKS                       R3 R0 K28 ["startTimeAfterConfirmation"]
      122 SETTABLEKS                       R3 R2 K28 ["startTimeAfterConfirmation"]
      124 GETTABLEKS                       R3 R0 K29 ["endTime"]
      126 SETTABLEKS                       R3 R2 K29 ["endTime"]
      128 GETTABLEKS                       R3 R0 K5 ["serverName"]
      130 SETTABLEKS                       R3 R2 K5 ["serverName"]
      132 GETTABLEKS                       R3 R0 K6 ["clientName"]
      134 SETTABLEKS                       R3 R2 K6 ["clientName"]
      136 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
      138 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
      140 GETTABLEKS                       R3 R0 K8 ["isSlashCommand"]
      142 SETTABLEKS                       R3 R2 K8 ["isSlashCommand"]
      144 GETTABLEKS                       R3 R0 K10 ["assistantMode"]
      146 SETTABLEKS                       R3 R2 K10 ["assistantMode"]
      148 GETTABLEKS                       R3 R0 K11 ["currentSubagent"]
      150 SETTABLEKS                       R3 R2 K11 ["currentSubagent"]
      152 GETTABLEKS                       R3 R0 K30 ["parentMessageGuid"]
      154 SETTABLEKS                       R3 R2 K30 ["parentMessageGuid"]
      156 GETTABLEKS                       R3 R0 K31 ["parentToolId"]
      158 SETTABLEKS                       R3 R2 K31 ["parentToolId"]
      160 GETUPVAL                         R3 2
      161 GETTABLEKS                       R3 R3 K35 ["assign"]
      163 MOVE                             R4 R2
      164 DUPTABLE                         R5 K37 [{"timestampMilliseconds"}]
      165 GETUPVAL                         R6 6
      166 GETTABLEKS                       R6 R6 K38 ["getTimestampMilliseconds"]
      168 CALL                             R6 0 1
      169 SETTABLEKS                       R6 R5 K36 ["timestampMilliseconds"]
      171 CALL                             R3 2 1
      172 MOVE                             R1 R3
      173 GETUPVAL                         R2 7
      174 GETTABLEKS                       R3 R0 K39 ["toolResultContent"]
      176 CALL                             R2 1 1
      177 GETUPVAL                         R3 8
      178 GETTABLEKS                       R4 R0 K39 ["toolResultContent"]
      180 CALL                             R3 1 1
      181 SETTABLEKS                       R2 R1 K39 ["toolResultContent"]
      183 JUMPIFNOT                        R2 ; [+2]
      184 LENGTH                           R4 R2
      185 JUMP                             ; [+1]
      186 LOADNIL                          R4
      187 SETTABLEKS                       R4 R1 K40 ["toolResultSerializedCharacters"]
      189 GETTABLEKS                       R4 R3 K41 ["toolResultTextContentCount"]
      191 SETTABLEKS                       R4 R1 K41 ["toolResultTextContentCount"]
      193 GETTABLEKS                       R4 R3 K42 ["toolResultImages"]
      195 SETTABLEKS                       R4 R1 K42 ["toolResultImages"]
      197 GETTABLEKS                       R4 R3 K43 ["toolResultContentItemCount"]
      199 SETTABLEKS                       R4 R1 K43 ["toolResultContentItemCount"]
      201 GETUPVAL                         R4 0
      202 GETTABLEKS                       R4 R4 K44 ["logEvent"]
      204 GETUPVAL                         R5 9
      205 DUPTABLE                         R6 K46 [{"customFields", "standardizedFields"}]
      206 SETTABLEKS                       R1 R6 K1 ["customFields"]
      208 NEWTABLE                         R8 0 0
      210 GETUPVAL                         R9 10
      211 GETTABLEKS                       R9 R9 K47 ["StandardizedFields"]
      213 LOADNIL                          R10
      214 LOADNIL                          R11
      215 FORGPREP                         R9
      216 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      218 MOVE                             R15 R8
      219 MOVE                             R16 R13
      220 GETIMPORT                        R14 K50 [table.insert]
      222 CALL                             R14 2 0
      223 FORGLOOP                         R9 2 ; [-8]
      225 MOVE                             R7 R8
      226 SETTABLEKS                       R7 R6 K45 ["standardizedFields"]
      228 CALL                             R4 2 0
      229 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K7 [{"toolName", "isStudioTool", "failureReason", "assistantMode"}]
        7 GETTABLEKS                       R7 R0 K3 ["toolName"]
        9 SETTABLEKS                       R7 R6 K3 ["toolName"]
       11 GETTABLEKS                       R7 R0 K4 ["isStudioTool"]
       13 SETTABLEKS                       R7 R6 K4 ["isStudioTool"]
       15 GETTABLEKS                       R7 R0 K5 ["failureReason"]
       17 SETTABLEKS                       R7 R6 K5 ["failureReason"]
       19 GETTABLEKS                       R7 R0 K6 ["assistantMode"]
       21 SETTABLEKS                       R7 R6 K6 ["assistantMode"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K8 ["join"]
       26 MOVE                             R8 R6
       27 DUPTABLE                         R9 K11 [{"experimentationGroup", "featureTag"}]
       28 GETUPVAL                         R11 3
       29 NAMECALL                         R11 R11 K12 ["get"]
       31 CALL                             R11 1 1
       32 JUMPIFNOTEQKNIL                  R11 ; [+3]
       34 LOADNIL                          R10
       35 JUMP                             ; [+16]
       36 GETUPVAL                         R13 4
       37 GETTABLE                         R12 R11 R13
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 GETTABLEKS                       R12 R11 K13 ["generatedExperimentVariantDistributionVariable"]
       42 JUMPIFNOTEQKNIL                  R12 ; [+3]
       44 LOADNIL                          R10
       45 JUMP                             ; [+6]
       46 FASTCALL1                        TOSTRING R12 ; [+3]
       47 MOVE                             R14 R12
       48 GETIMPORT                        R13 K15 [tostring]
       50 CALL                             R13 1 1
       51 MOVE                             R10 R13
       52 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       54 GETUPVAL                         R11 5
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+2]
       57 LOADK                            R10 K16 ["Remote"]
       58 JUMP                             ; [+1]
       59 LOADK                            R10 K17 ["Local"]
       60 SETTABLEKS                       R10 R9 K10 ["featureTag"]
       62 CALL                             R7 2 1
       63 MOVE                             R5 R7
       64 SETTABLEKS                       R5 R4 K1 ["customFields"]
       66 CALL                             R1 3 0
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K18 ["logEvent"]
       70 GETUPVAL                         R2 6
       71 DUPTABLE                         R3 K20 [{"customFields", "standardizedFields"}]
       72 DUPTABLE                         R5 K26 [{"requestId", "conversationId", "toolId", "toolName", "isStudioTool", "startTime", "endTime", "failureReason", "assistantMode"}]
       73 GETTABLEKS                       R6 R0 K27 ["messageGuid"]
       75 SETTABLEKS                       R6 R5 K21 ["requestId"]
       77 GETTABLEKS                       R6 R0 K28 ["sessionId"]
       79 SETTABLEKS                       R6 R5 K22 ["conversationId"]
       81 GETTABLEKS                       R6 R0 K23 ["toolId"]
       83 SETTABLEKS                       R6 R5 K23 ["toolId"]
       85 GETTABLEKS                       R6 R0 K3 ["toolName"]
       87 SETTABLEKS                       R6 R5 K3 ["toolName"]
       89 GETTABLEKS                       R6 R0 K4 ["isStudioTool"]
       91 SETTABLEKS                       R6 R5 K4 ["isStudioTool"]
       93 GETTABLEKS                       R6 R0 K24 ["startTime"]
       95 SETTABLEKS                       R6 R5 K24 ["startTime"]
       97 GETTABLEKS                       R6 R0 K25 ["endTime"]
       99 SETTABLEKS                       R6 R5 K25 ["endTime"]
      101 GETTABLEKS                       R6 R0 K5 ["failureReason"]
      103 SETTABLEKS                       R6 R5 K5 ["failureReason"]
      105 GETTABLEKS                       R6 R0 K6 ["assistantMode"]
      107 SETTABLEKS                       R6 R5 K6 ["assistantMode"]
      109 GETUPVAL                         R6 2
      110 GETTABLEKS                       R6 R6 K29 ["assign"]
      112 MOVE                             R7 R5
      113 DUPTABLE                         R8 K31 [{"timestampMilliseconds"}]
      114 GETUPVAL                         R9 7
      115 GETTABLEKS                       R9 R9 K32 ["getTimestampMilliseconds"]
      117 CALL                             R9 0 1
      118 SETTABLEKS                       R9 R8 K30 ["timestampMilliseconds"]
      120 CALL                             R6 2 1
      121 MOVE                             R4 R6
      122 SETTABLEKS                       R4 R3 K1 ["customFields"]
      124 NEWTABLE                         R5 0 0
      126 GETUPVAL                         R6 8
      127 GETTABLEKS                       R6 R6 K33 ["StandardizedFields"]
      129 LOADNIL                          R7
      130 LOADNIL                          R8
      131 FORGPREP                         R6
      132 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      134 MOVE                             R12 R5
      135 MOVE                             R13 R10
      136 GETIMPORT                        R11 K36 [table.insert]
      138 CALL                             R11 2 0
      139 FORGLOOP                         R6 2 ; [-8]
      141 MOVE                             R4 R5
      142 SETTABLEKS                       R4 R3 K19 ["standardizedFields"]
      144 CALL                             R1 2 0
      145 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
        6 DUPTABLE                         R4 K3 [{"customFields"}]
        7 DUPTABLE                         R6 K5 [{"requestEndReason"}]
        8 GETTABLEKS                       R7 R0 K4 ["requestEndReason"]
       10 SETTABLEKS                       R7 R6 K4 ["requestEndReason"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K6 ["join"]
       15 MOVE                             R8 R6
       16 DUPTABLE                         R9 K9 [{"experimentationGroup", "featureTag"}]
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
       41 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       43 GETUPVAL                         R11 5
       44 CALL                             R11 0 1
       45 JUMPIFNOT                        R11 ; [+2]
       46 LOADK                            R10 K14 ["Remote"]
       47 JUMP                             ; [+1]
       48 LOADK                            R10 K15 ["Local"]
       49 SETTABLEKS                       R10 R9 K8 ["featureTag"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 CALL                             R1 3 0
       56 DUPTABLE                         R2 K21 [{"requestId", "conversationId", "threadId", "acpSessionId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
       57 GETTABLEKS                       R3 R0 K22 ["messageGuid"]
       59 SETTABLEKS                       R3 R2 K16 ["requestId"]
       61 GETTABLEKS                       R3 R0 K23 ["sessionId"]
       63 SETTABLEKS                       R3 R2 K17 ["conversationId"]
       65 GETTABLEKS                       R3 R0 K18 ["threadId"]
       67 SETTABLEKS                       R3 R2 K18 ["threadId"]
       69 GETTABLEKS                       R3 R0 K19 ["acpSessionId"]
       71 SETTABLEKS                       R3 R2 K19 ["acpSessionId"]
       73 GETTABLEKS                       R3 R0 K4 ["requestEndReason"]
       75 SETTABLEKS                       R3 R2 K4 ["requestEndReason"]
       77 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
       79 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       81 GETTABLEKS                       R3 R0 K20 ["message"]
       83 SETTABLEKS                       R3 R2 K20 ["message"]
       85 GETUPVAL                         R4 3
       86 NAMECALL                         R4 R4 K10 ["get"]
       88 CALL                             R4 1 1
       89 JUMPIFNOTEQKNIL                  R4 ; [+3]
       91 LOADNIL                          R3
       92 JUMP                             ; [+16]
       93 GETUPVAL                         R6 4
       94 GETTABLE                         R5 R4 R6
       95 JUMPIFNOTEQKNIL                  R5 ; [+3]
       97 GETTABLEKS                       R5 R4 K11 ["generatedExperimentVariantDistributionVariable"]
       99 JUMPIFNOTEQKNIL                  R5 ; [+3]
      101 LOADNIL                          R3
      102 JUMP                             ; [+6]
      103 FASTCALL1                        TOSTRING R5 ; [+3]
      104 MOVE                             R7 R5
      105 GETIMPORT                        R6 K13 [tostring]
      107 CALL                             R6 1 1
      108 MOVE                             R3 R6
      109 SETTABLEKS                       R3 R2 K7 ["experimentationGroup"]
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R3 R3 K24 ["assign"]
      114 MOVE                             R4 R2
      115 DUPTABLE                         R5 K26 [{"timestampMilliseconds"}]
      116 GETUPVAL                         R6 6
      117 GETTABLEKS                       R6 R6 K27 ["getTimestampMilliseconds"]
      119 CALL                             R6 0 1
      120 SETTABLEKS                       R6 R5 K25 ["timestampMilliseconds"]
      122 CALL                             R3 2 1
      123 MOVE                             R1 R3
      124 GETUPVAL                         R2 7
      125 CALL                             R2 0 1
      126 JUMPIFNOT                        R2 ; [+8]
      127 GETUPVAL                         R2 8
      128 GETTABLEKS                       R2 R2 K28 ["FFlagAssistantCreditMeteringTelemetry"]
      130 JUMPIFNOT                        R2 ; [+4]
      131 GETTABLEKS                       R2 R0 K29 ["nextTurnBlockReason"]
      133 SETTABLEKS                       R2 R1 K29 ["nextTurnBlockReason"]
      135 GETUPVAL                         R2 0
      136 GETTABLEKS                       R2 R2 K30 ["logEvent"]
      138 GETUPVAL                         R3 9
      139 DUPTABLE                         R4 K32 [{"customFields", "standardizedFields"}]
      140 SETTABLEKS                       R1 R4 K2 ["customFields"]
      142 NEWTABLE                         R6 0 0
      144 GETUPVAL                         R7 10
      145 GETTABLEKS                       R7 R7 K33 ["StandardizedFields"]
      147 LOADNIL                          R8
      148 LOADNIL                          R9
      149 FORGPREP                         R7
      150 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      152 MOVE                             R13 R6
      153 MOVE                             R14 R11
      154 GETIMPORT                        R12 K36 [table.insert]
      156 CALL                             R12 2 0
      157 FORGLOOP                         R7 2 ; [-8]
      159 MOVE                             R5 R6
      160 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      162 CALL                             R2 2 0
      163 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 DUPTABLE                         R3 K2 [{"customFields"}]
        6 NEWTABLE                         R5 0 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["join"]
       11 MOVE                             R7 R5
       12 DUPTABLE                         R8 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R10 3
       14 NAMECALL                         R10 R10 K7 ["get"]
       16 CALL                             R10 1 1
       17 JUMPIFNOTEQKNIL                  R10 ; [+3]
       19 LOADNIL                          R9
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R12 4
       22 GETTABLE                         R11 R10 R12
       23 JUMPIFNOTEQKNIL                  R11 ; [+3]
       25 GETTABLEKS                       R11 R10 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R11 ; [+3]
       29 LOADNIL                          R9
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R11 ; [+3]
       32 MOVE                             R13 R11
       33 GETIMPORT                        R12 K10 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R9 R12
       37 SETTABLEKS                       R9 R8 K4 ["experimentationGroup"]
       39 GETUPVAL                         R10 5
       40 CALL                             R10 0 1
       41 JUMPIFNOT                        R10 ; [+2]
       42 LOADK                            R9 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R9 K12 ["Local"]
       45 SETTABLEKS                       R9 R8 K5 ["featureTag"]
       47 CALL                             R6 2 1
       48 MOVE                             R4 R6
       49 SETTABLEKS                       R4 R3 K1 ["customFields"]
       51 CALL                             R0 3 0
       52 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+53]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
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
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADK                            R10 K12 ["Remote"]
       46 JUMP                             ; [+1]
       47 LOADK                            R10 K13 ["Local"]
       48 SETTABLEKS                       R10 R9 K6 ["featureTag"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K2 ["customFields"]
       54 CALL                             R1 3 0
       55 JUMP                             ; [+52]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       59 GETUPVAL                         R2 6
       60 LOADN                            R3 1
       61 DUPTABLE                         R4 K3 [{"customFields"}]
       62 NEWTABLE                         R6 0 0
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K4 ["join"]
       67 MOVE                             R8 R6
       68 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
       69 GETUPVAL                         R11 3
       70 NAMECALL                         R11 R11 K8 ["get"]
       72 CALL                             R11 1 1
       73 JUMPIFNOTEQKNIL                  R11 ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R13 4
       78 GETTABLE                         R12 R11 R13
       79 JUMPIFNOTEQKNIL                  R12 ; [+3]
       81 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R12 ; [+3]
       85 LOADNIL                          R10
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R12 ; [+3]
       88 MOVE                             R14 R12
       89 GETIMPORT                        R13 K11 [tostring]
       91 CALL                             R13 1 1
       92 MOVE                             R10 R13
       93 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       95 GETUPVAL                         R11 5
       96 CALL                             R11 0 1
       97 JUMPIFNOT                        R11 ; [+2]
       98 LOADK                            R10 K12 ["Remote"]
       99 JUMP                             ; [+1]
      100 LOADK                            R10 K13 ["Local"]
      101 SETTABLEKS                       R10 R9 K6 ["featureTag"]
      103 CALL                             R7 2 1
      104 MOVE                             R5 R7
      105 SETTABLEKS                       R5 R4 K2 ["customFields"]
      107 CALL                             R1 3 0
      108 DUPTABLE                         R2 K23 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "suggestedParts", "finalParts"}]
      109 GETTABLEKS                       R3 R0 K14 ["requestId"]
      111 SETTABLEKS                       R3 R2 K14 ["requestId"]
      113 GETTABLEKS                       R3 R0 K15 ["generationId"]
      115 SETTABLEKS                       R3 R2 K15 ["generationId"]
      117 GETTABLEKS                       R3 R0 K0 ["success"]
      119 SETTABLEKS                       R3 R2 K0 ["success"]
      121 GETTABLEKS                       R3 R0 K16 ["errorMessage"]
      123 SETTABLEKS                       R3 R2 K16 ["errorMessage"]
      125 GETTABLEKS                       R3 R0 K17 ["prompt"]
      127 SETTABLEKS                       R3 R2 K17 ["prompt"]
      129 GETTABLEKS                       R3 R0 K18 ["modelFlow"]
      131 SETTABLEKS                       R3 R2 K18 ["modelFlow"]
      133 GETTABLEKS                       R3 R0 K19 ["inputFormat"]
      135 SETTABLEKS                       R3 R2 K19 ["inputFormat"]
      137 GETTABLEKS                       R3 R0 K20 ["segmentationEnabled"]
      139 SETTABLEKS                       R3 R2 K20 ["segmentationEnabled"]
      141 GETTABLEKS                       R4 R0 K21 ["suggestedParts"]
      143 JUMPIFNOTEQKNIL                  R4 ; [+3]
      145 LOADNIL                          R3
      146 JUMP                             ; [+10]
      147 GETIMPORT                        R5 K25 [pcall]
      149 NEWCLOSURE                       R6 P0
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          VAL R4
      152 CALL                             R5 1 2
      153 JUMPIF                           R5 ; [+2]
      154 LOADNIL                          R3
      155 JUMP                             ; [+1]
      156 MOVE                             R3 R6
      157 SETTABLEKS                       R3 R2 K21 ["suggestedParts"]
      159 GETTABLEKS                       R4 R0 K22 ["finalParts"]
      161 JUMPIFNOTEQKNIL                  R4 ; [+3]
      163 LOADNIL                          R3
      164 JUMP                             ; [+10]
      165 GETIMPORT                        R5 K25 [pcall]
      167 NEWCLOSURE                       R6 P0
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          VAL R4
      170 CALL                             R5 1 2
      171 JUMPIF                           R5 ; [+2]
      172 LOADNIL                          R3
      173 JUMP                             ; [+1]
      174 MOVE                             R3 R6
      175 SETTABLEKS                       R3 R2 K22 ["finalParts"]
      177 GETUPVAL                         R3 2
      178 GETTABLEKS                       R3 R3 K26 ["assign"]
      180 MOVE                             R4 R2
      181 DUPTABLE                         R5 K28 [{"timestampMilliseconds"}]
      182 GETUPVAL                         R6 8
      183 GETTABLEKS                       R6 R6 K29 ["getTimestampMilliseconds"]
      185 CALL                             R6 0 1
      186 SETTABLEKS                       R6 R5 K27 ["timestampMilliseconds"]
      188 CALL                             R3 2 1
      189 MOVE                             R1 R3
      190 GETUPVAL                         R2 0
      191 GETTABLEKS                       R2 R2 K30 ["logEvent"]
      193 GETUPVAL                         R3 9
      194 DUPTABLE                         R4 K32 [{"customFields", "standardizedFields"}]
      195 SETTABLEKS                       R1 R4 K2 ["customFields"]
      197 NEWTABLE                         R6 0 0
      199 GETUPVAL                         R7 10
      200 GETTABLEKS                       R7 R7 K33 ["StandardizedFields"]
      202 LOADNIL                          R8
      203 LOADNIL                          R9
      204 FORGPREP                         R7
      205 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      207 MOVE                             R13 R6
      208 MOVE                             R14 R11
      209 GETIMPORT                        R12 K36 [table.insert]
      211 CALL                             R12 2 0
      212 FORGLOOP                         R7 2 ; [-8]
      214 MOVE                             R5 R6
      215 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      217 CALL                             R2 2 0
      218 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+53]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
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
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADK                            R10 K12 ["Remote"]
       46 JUMP                             ; [+1]
       47 LOADK                            R10 K13 ["Local"]
       48 SETTABLEKS                       R10 R9 K6 ["featureTag"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K2 ["customFields"]
       54 CALL                             R1 3 0
       55 JUMP                             ; [+52]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       59 GETUPVAL                         R2 6
       60 LOADN                            R3 1
       61 DUPTABLE                         R4 K3 [{"customFields"}]
       62 NEWTABLE                         R6 0 0
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K4 ["join"]
       67 MOVE                             R8 R6
       68 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
       69 GETUPVAL                         R11 3
       70 NAMECALL                         R11 R11 K8 ["get"]
       72 CALL                             R11 1 1
       73 JUMPIFNOTEQKNIL                  R11 ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R13 4
       78 GETTABLE                         R12 R11 R13
       79 JUMPIFNOTEQKNIL                  R12 ; [+3]
       81 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R12 ; [+3]
       85 LOADNIL                          R10
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R12 ; [+3]
       88 MOVE                             R14 R12
       89 GETIMPORT                        R13 K11 [tostring]
       91 CALL                             R13 1 1
       92 MOVE                             R10 R13
       93 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       95 GETUPVAL                         R11 5
       96 CALL                             R11 0 1
       97 JUMPIFNOT                        R11 ; [+2]
       98 LOADK                            R10 K12 ["Remote"]
       99 JUMP                             ; [+1]
      100 LOADK                            R10 K13 ["Local"]
      101 SETTABLEKS                       R10 R9 K6 ["featureTag"]
      103 CALL                             R7 2 1
      104 MOVE                             R5 R7
      105 SETTABLEKS                       R5 R4 K2 ["customFields"]
      107 CALL                             R1 3 0
      108 DUPTABLE                         R2 K19 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
      109 GETTABLEKS                       R3 R0 K14 ["requestId"]
      111 SETTABLEKS                       R3 R2 K14 ["requestId"]
      113 GETTABLEKS                       R3 R0 K15 ["generationId"]
      115 SETTABLEKS                       R3 R2 K15 ["generationId"]
      117 GETTABLEKS                       R3 R0 K0 ["success"]
      119 SETTABLEKS                       R3 R2 K0 ["success"]
      121 GETTABLEKS                       R3 R0 K16 ["errorMessage"]
      123 SETTABLEKS                       R3 R2 K16 ["errorMessage"]
      125 GETTABLEKS                       R3 R0 K17 ["meshId"]
      127 SETTABLEKS                       R3 R2 K17 ["meshId"]
      129 GETTABLEKS                       R3 R0 K18 ["imageId"]
      131 SETTABLEKS                       R3 R2 K18 ["imageId"]
      133 GETUPVAL                         R3 2
      134 GETTABLEKS                       R3 R3 K20 ["assign"]
      136 MOVE                             R4 R2
      137 DUPTABLE                         R5 K22 [{"timestampMilliseconds"}]
      138 GETUPVAL                         R6 7
      139 GETTABLEKS                       R6 R6 K23 ["getTimestampMilliseconds"]
      141 CALL                             R6 0 1
      142 SETTABLEKS                       R6 R5 K21 ["timestampMilliseconds"]
      144 CALL                             R3 2 1
      145 MOVE                             R1 R3
      146 GETUPVAL                         R2 0
      147 GETTABLEKS                       R2 R2 K24 ["logEvent"]
      149 GETUPVAL                         R3 8
      150 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
      151 SETTABLEKS                       R1 R4 K2 ["customFields"]
      153 NEWTABLE                         R6 0 0
      155 GETUPVAL                         R7 9
      156 GETTABLEKS                       R7 R7 K27 ["StandardizedFields"]
      158 LOADNIL                          R8
      159 LOADNIL                          R9
      160 FORGPREP                         R7
      161 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      163 MOVE                             R13 R6
      164 MOVE                             R14 R11
      165 GETIMPORT                        R12 K30 [table.insert]
      167 CALL                             R12 2 0
      168 FORGLOOP                         R7 2 ; [-8]
      170 MOVE                             R5 R6
      171 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      173 CALL                             R2 2 0
      174 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+53]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
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
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADK                            R10 K12 ["Remote"]
       46 JUMP                             ; [+1]
       47 LOADK                            R10 K13 ["Local"]
       48 SETTABLEKS                       R10 R9 K6 ["featureTag"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K2 ["customFields"]
       54 CALL                             R1 3 0
       55 JUMP                             ; [+52]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K1 ["logCounter"]
       59 GETUPVAL                         R2 6
       60 LOADN                            R3 1
       61 DUPTABLE                         R4 K3 [{"customFields"}]
       62 NEWTABLE                         R6 0 0
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K4 ["join"]
       67 MOVE                             R8 R6
       68 DUPTABLE                         R9 K7 [{"experimentationGroup", "featureTag"}]
       69 GETUPVAL                         R11 3
       70 NAMECALL                         R11 R11 K8 ["get"]
       72 CALL                             R11 1 1
       73 JUMPIFNOTEQKNIL                  R11 ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R13 4
       78 GETTABLE                         R12 R11 R13
       79 JUMPIFNOTEQKNIL                  R12 ; [+3]
       81 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R12 ; [+3]
       85 LOADNIL                          R10
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R12 ; [+3]
       88 MOVE                             R14 R12
       89 GETIMPORT                        R13 K11 [tostring]
       91 CALL                             R13 1 1
       92 MOVE                             R10 R13
       93 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       95 GETUPVAL                         R11 5
       96 CALL                             R11 0 1
       97 JUMPIFNOT                        R11 ; [+2]
       98 LOADK                            R10 K12 ["Remote"]
       99 JUMP                             ; [+1]
      100 LOADK                            R10 K13 ["Local"]
      101 SETTABLEKS                       R10 R9 K6 ["featureTag"]
      103 CALL                             R7 2 1
      104 MOVE                             R5 R7
      105 SETTABLEKS                       R5 R4 K2 ["customFields"]
      107 CALL                             R1 3 0
      108 DUPTABLE                         R2 K19 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
      109 GETTABLEKS                       R3 R0 K14 ["requestId"]
      111 SETTABLEKS                       R3 R2 K14 ["requestId"]
      113 GETTABLEKS                       R3 R0 K15 ["generationId"]
      115 SETTABLEKS                       R3 R2 K15 ["generationId"]
      117 GETTABLEKS                       R3 R0 K0 ["success"]
      119 SETTABLEKS                       R3 R2 K0 ["success"]
      121 GETTABLEKS                       R3 R0 K16 ["errorMessage"]
      123 SETTABLEKS                       R3 R2 K16 ["errorMessage"]
      125 GETTABLEKS                       R3 R0 K17 ["modelFlow"]
      127 SETTABLEKS                       R3 R2 K17 ["modelFlow"]
      129 GETTABLEKS                       R3 R0 K18 ["inputFormat"]
      131 SETTABLEKS                       R3 R2 K18 ["inputFormat"]
      133 GETUPVAL                         R3 2
      134 GETTABLEKS                       R3 R3 K20 ["assign"]
      136 MOVE                             R4 R2
      137 DUPTABLE                         R5 K22 [{"timestampMilliseconds"}]
      138 GETUPVAL                         R6 7
      139 GETTABLEKS                       R6 R6 K23 ["getTimestampMilliseconds"]
      141 CALL                             R6 0 1
      142 SETTABLEKS                       R6 R5 K21 ["timestampMilliseconds"]
      144 CALL                             R3 2 1
      145 MOVE                             R1 R3
      146 GETUPVAL                         R2 0
      147 GETTABLEKS                       R2 R2 K24 ["logEvent"]
      149 GETUPVAL                         R3 8
      150 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
      151 SETTABLEKS                       R1 R4 K2 ["customFields"]
      153 NEWTABLE                         R6 0 0
      155 GETUPVAL                         R7 9
      156 GETTABLEKS                       R7 R7 K27 ["StandardizedFields"]
      158 LOADNIL                          R8
      159 LOADNIL                          R9
      160 FORGPREP                         R7
      161 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      163 MOVE                             R13 R6
      164 MOVE                             R14 R11
      165 GETIMPORT                        R12 K30 [table.insert]
      167 CALL                             R12 2 0
      168 FORGLOOP                         R7 2 ; [-8]
      170 MOVE                             R5 R6
      171 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      173 CALL                             R2 2 0
      174 RETURN                           R0 0

PROTO_44:
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
       19 DUPTABLE                         R9 K9 [{"experimentationGroup", "featureTag"}]
       20 GETUPVAL                         R11 3
       21 NAMECALL                         R11 R11 K10 ["get"]
       23 CALL                             R11 1 1
       24 JUMPIFNOTEQKNIL                  R11 ; [+3]
       26 LOADNIL                          R10
       27 JUMP                             ; [+16]
       28 GETUPVAL                         R13 4
       29 GETTABLE                         R12 R11 R13
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 GETTABLEKS                       R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
       34 JUMPIFNOTEQKNIL                  R12 ; [+3]
       36 LOADNIL                          R10
       37 JUMP                             ; [+6]
       38 FASTCALL1                        TOSTRING R12 ; [+3]
       39 MOVE                             R14 R12
       40 GETIMPORT                        R13 K13 [tostring]
       42 CALL                             R13 1 1
       43 MOVE                             R10 R13
       44 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       46 GETUPVAL                         R11 5
       47 CALL                             R11 0 1
       48 JUMPIFNOT                        R11 ; [+2]
       49 LOADK                            R10 K14 ["Remote"]
       50 JUMP                             ; [+1]
       51 LOADK                            R10 K15 ["Local"]
       52 SETTABLEKS                       R10 R9 K8 ["featureTag"]
       54 CALL                             R7 2 1
       55 MOVE                             R5 R7
       56 SETTABLEKS                       R5 R4 K1 ["customFields"]
       58 CALL                             R1 3 0
       59 DUPTABLE                         R2 K29 [{"requestId", "generationId", "toolId", "success", "errorMessage", "errorCode", "prompt", "hasImage", "timeToFirstRender", "dependencyVersion", "modelFlow", "inputFormat", "segmentationEnabled", "suggestedParts", "finalParts"}]
       60 GETTABLEKS                       R3 R0 K16 ["requestId"]
       62 SETTABLEKS                       R3 R2 K16 ["requestId"]
       64 GETTABLEKS                       R3 R0 K17 ["generationId"]
       66 SETTABLEKS                       R3 R2 K17 ["generationId"]
       68 GETTABLEKS                       R3 R0 K18 ["toolId"]
       70 SETTABLEKS                       R3 R2 K18 ["toolId"]
       72 GETTABLEKS                       R3 R0 K3 ["success"]
       74 SETTABLEKS                       R3 R2 K3 ["success"]
       76 GETTABLEKS                       R3 R0 K19 ["errorMessage"]
       78 SETTABLEKS                       R3 R2 K19 ["errorMessage"]
       80 GETTABLEKS                       R3 R0 K4 ["errorCode"]
       82 SETTABLEKS                       R3 R2 K4 ["errorCode"]
       84 GETTABLEKS                       R3 R0 K20 ["prompt"]
       86 SETTABLEKS                       R3 R2 K20 ["prompt"]
       88 GETTABLEKS                       R3 R0 K21 ["hasImage"]
       90 SETTABLEKS                       R3 R2 K21 ["hasImage"]
       92 GETTABLEKS                       R3 R0 K22 ["timeToFirstRender"]
       94 SETTABLEKS                       R3 R2 K22 ["timeToFirstRender"]
       96 GETTABLEKS                       R3 R0 K23 ["dependencyVersion"]
       98 SETTABLEKS                       R3 R2 K23 ["dependencyVersion"]
      100 GETTABLEKS                       R3 R0 K24 ["modelFlow"]
      102 SETTABLEKS                       R3 R2 K24 ["modelFlow"]
      104 GETTABLEKS                       R3 R0 K25 ["inputFormat"]
      106 SETTABLEKS                       R3 R2 K25 ["inputFormat"]
      108 GETTABLEKS                       R3 R0 K26 ["segmentationEnabled"]
      110 SETTABLEKS                       R3 R2 K26 ["segmentationEnabled"]
      112 GETTABLEKS                       R4 R0 K27 ["suggestedParts"]
      114 JUMPIFNOTEQKNIL                  R4 ; [+3]
      116 LOADNIL                          R3
      117 JUMP                             ; [+10]
      118 GETIMPORT                        R5 K31 [pcall]
      120 NEWCLOSURE                       R6 P0
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R4
      123 CALL                             R5 1 2
      124 JUMPIF                           R5 ; [+2]
      125 LOADNIL                          R3
      126 JUMP                             ; [+1]
      127 MOVE                             R3 R6
      128 SETTABLEKS                       R3 R2 K27 ["suggestedParts"]
      130 GETTABLEKS                       R4 R0 K28 ["finalParts"]
      132 JUMPIFNOTEQKNIL                  R4 ; [+3]
      134 LOADNIL                          R3
      135 JUMP                             ; [+10]
      136 GETIMPORT                        R5 K31 [pcall]
      138 NEWCLOSURE                       R6 P0
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          VAL R4
      141 CALL                             R5 1 2
      142 JUMPIF                           R5 ; [+2]
      143 LOADNIL                          R3
      144 JUMP                             ; [+1]
      145 MOVE                             R3 R6
      146 SETTABLEKS                       R3 R2 K28 ["finalParts"]
      148 GETUPVAL                         R3 2
      149 GETTABLEKS                       R3 R3 K32 ["assign"]
      151 MOVE                             R4 R2
      152 DUPTABLE                         R5 K34 [{"timestampMilliseconds"}]
      153 GETUPVAL                         R6 7
      154 GETTABLEKS                       R6 R6 K35 ["getTimestampMilliseconds"]
      156 CALL                             R6 0 1
      157 SETTABLEKS                       R6 R5 K33 ["timestampMilliseconds"]
      159 CALL                             R3 2 1
      160 MOVE                             R1 R3
      161 GETUPVAL                         R2 0
      162 GETTABLEKS                       R2 R2 K36 ["logEvent"]
      164 GETUPVAL                         R3 8
      165 DUPTABLE                         R4 K38 [{"customFields", "standardizedFields"}]
      166 SETTABLEKS                       R1 R4 K1 ["customFields"]
      168 NEWTABLE                         R6 0 0
      170 GETUPVAL                         R7 9
      171 GETTABLEKS                       R7 R7 K39 ["StandardizedFields"]
      173 LOADNIL                          R8
      174 LOADNIL                          R9
      175 FORGPREP                         R7
      176 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      178 MOVE                             R13 R6
      179 MOVE                             R14 R11
      180 GETIMPORT                        R12 K42 [table.insert]
      182 CALL                             R12 2 0
      183 FORGLOOP                         R7 2 ; [-8]
      185 MOVE                             R5 R6
      186 SETTABLEKS                       R5 R4 K37 ["standardizedFields"]
      188 CALL                             R2 2 0
      189 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["logEvent"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R6 K6 [{"clientJobId", "assetHash"}]
        6 SETTABLEKS                       R0 R6 K4 ["clientJobId"]
        8 SETTABLEKS                       R1 R6 K5 ["assetHash"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K7 ["assign"]
       13 MOVE                             R8 R6
       14 DUPTABLE                         R9 K9 [{"timestampMilliseconds"}]
       15 GETUPVAL                         R10 3
       16 GETTABLEKS                       R10 R10 K10 ["getTimestampMilliseconds"]
       18 CALL                             R10 0 1
       19 SETTABLEKS                       R10 R9 K8 ["timestampMilliseconds"]
       21 CALL                             R7 2 1
       22 MOVE                             R5 R7
       23 SETTABLEKS                       R5 R4 K1 ["customFields"]
       25 NEWTABLE                         R6 0 0
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K11 ["StandardizedFields"]
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       35 MOVE                             R13 R6
       36 MOVE                             R14 R11
       37 GETIMPORT                        R12 K14 [table.insert]
       39 CALL                             R12 2 0
       40 FORGLOOP                         R7 2 ; [-8]
       42 MOVE                             R5 R6
       43 SETTABLEKS                       R5 R4 K2 ["standardizedFields"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_46:
        0 DUPTABLE                         R2 K2 [{"clientJobId", "setupType"}]
        1 SETTABLEKS                       R1 R2 K0 ["clientJobId"]
        3 GETTABLEKS                       R3 R0 K3 ["SetupType"]
        5 SETTABLEKS                       R3 R2 K1 ["setupType"]
        7 GETTABLEKS                       R3 R0 K3 ["SetupType"]
        9 JUMPIFEQKS                       R3 K4 ["Unspecified"] ; [+17]
       11 GETTABLEKS                       R3 R0 K5 ["R15Plus"]
       13 SETTABLEKS                       R3 R2 K6 ["r15Plus"]
       15 GETTABLEKS                       R3 R0 K7 ["AlignFrontAngle"]
       17 SETTABLEKS                       R3 R2 K8 ["alignFrontAngle"]
       19 GETTABLEKS                       R3 R0 K9 ["EnableAdditionalHeadProcessing"]
       21 SETTABLEKS                       R3 R2 K10 ["enableAdditionalHeadProcessing"]
       23 GETTABLEKS                       R3 R0 K11 ["DecalToDynamicHead"]
       25 SETTABLEKS                       R3 R2 K12 ["decalToDynamicHead"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K13 ["logEvent"]
       30 GETUPVAL                         R4 1
       31 DUPTABLE                         R5 K16 [{"customFields", "standardizedFields"}]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K17 ["assign"]
       35 MOVE                             R7 R2
       36 DUPTABLE                         R8 K19 [{"timestampMilliseconds"}]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K20 ["getTimestampMilliseconds"]
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K18 ["timestampMilliseconds"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K14 ["customFields"]
       46 NEWTABLE                         R7 0 0
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K21 ["StandardizedFields"]
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 FORGPREP                         R8
       54 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       56 MOVE                             R14 R7
       57 MOVE                             R15 R12
       58 GETIMPORT                        R13 K24 [table.insert]
       60 CALL                             R13 2 0
       61 FORGLOOP                         R8 2 ; [-8]
       63 MOVE                             R6 R7
       64 SETTABLEKS                       R6 R5 K15 ["standardizedFields"]
       66 CALL                             R3 2 0
       67 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["logEvent"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R6 K6 [{"clientJobId", "jobId"}]
        6 SETTABLEKS                       R0 R6 K4 ["clientJobId"]
        8 SETTABLEKS                       R1 R6 K5 ["jobId"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K7 ["assign"]
       13 MOVE                             R8 R6
       14 DUPTABLE                         R9 K9 [{"timestampMilliseconds"}]
       15 GETUPVAL                         R10 3
       16 GETTABLEKS                       R10 R10 K10 ["getTimestampMilliseconds"]
       18 CALL                             R10 0 1
       19 SETTABLEKS                       R10 R9 K8 ["timestampMilliseconds"]
       21 CALL                             R7 2 1
       22 MOVE                             R5 R7
       23 SETTABLEKS                       R5 R4 K1 ["customFields"]
       25 NEWTABLE                         R6 0 0
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K11 ["StandardizedFields"]
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       35 MOVE                             R13 R6
       36 MOVE                             R14 R11
       37 GETIMPORT                        R12 K14 [table.insert]
       39 CALL                             R12 2 0
       40 FORGLOOP                         R7 2 ; [-8]
       42 MOVE                             R5 R6
       43 SETTABLEKS                       R5 R4 K2 ["standardizedFields"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["logEvent"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R7 K7 [{"assetUrl", "assetHash", "timeToComplete"}]
        6 SETTABLEKS                       R1 R7 K4 ["assetUrl"]
        8 SETTABLEKS                       R2 R7 K5 ["assetHash"]
       10 SETTABLEKS                       R0 R7 K6 ["timeToComplete"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K8 ["assign"]
       15 MOVE                             R9 R7
       16 DUPTABLE                         R10 K10 [{"timestampMilliseconds"}]
       17 GETUPVAL                         R11 3
       18 GETTABLEKS                       R11 R11 K11 ["getTimestampMilliseconds"]
       20 CALL                             R11 0 1
       21 SETTABLEKS                       R11 R10 K9 ["timestampMilliseconds"]
       23 CALL                             R8 2 1
       24 MOVE                             R6 R8
       25 SETTABLEKS                       R6 R5 K1 ["customFields"]
       27 NEWTABLE                         R7 0 0
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K12 ["StandardizedFields"]
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       37 MOVE                             R14 R7
       38 MOVE                             R15 R12
       39 GETIMPORT                        R13 K15 [table.insert]
       41 CALL                             R13 2 0
       42 FORGLOOP                         R8 2 ; [-8]
       44 MOVE                             R6 R7
       45 SETTABLEKS                       R6 R5 K2 ["standardizedFields"]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       51 GETUPVAL                         R4 5
       52 LOADN                            R5 1
       53 DUPTABLE                         R6 K17 [{"customFields"}]
       54 NEWTABLE                         R8 0 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K18 ["join"]
       59 MOVE                             R10 R8
       60 DUPTABLE                         R11 K21 [{"experimentationGroup", "featureTag"}]
       61 GETUPVAL                         R13 6
       62 NAMECALL                         R13 R13 K22 ["get"]
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKNIL                  R13 ; [+3]
       67 LOADNIL                          R12
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R15 7
       70 GETTABLE                         R14 R13 R15
       71 JUMPIFNOTEQKNIL                  R14 ; [+3]
       73 GETTABLEKS                       R14 R13 K23 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R14 ; [+3]
       77 LOADNIL                          R12
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R14 ; [+3]
       80 MOVE                             R16 R14
       81 GETIMPORT                        R15 K25 [tostring]
       83 CALL                             R15 1 1
       84 MOVE                             R12 R15
       85 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       87 GETUPVAL                         R13 8
       88 CALL                             R13 0 1
       89 JUMPIFNOT                        R13 ; [+2]
       90 LOADK                            R12 K26 ["Remote"]
       91 JUMP                             ; [+1]
       92 LOADK                            R12 K27 ["Local"]
       93 SETTABLEKS                       R12 R11 K20 ["featureTag"]
       95 CALL                             R9 2 1
       96 MOVE                             R7 R9
       97 SETTABLEKS                       R7 R6 K1 ["customFields"]
       99 CALL                             R3 3 0
      100 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["logEvent"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R7 K7 [{"assetUrl", "assetHash", "timeToComplete"}]
        6 SETTABLEKS                       R1 R7 K4 ["assetUrl"]
        8 SETTABLEKS                       R2 R7 K5 ["assetHash"]
       10 SETTABLEKS                       R0 R7 K6 ["timeToComplete"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K8 ["assign"]
       15 MOVE                             R9 R7
       16 DUPTABLE                         R10 K10 [{"timestampMilliseconds"}]
       17 GETUPVAL                         R11 3
       18 GETTABLEKS                       R11 R11 K11 ["getTimestampMilliseconds"]
       20 CALL                             R11 0 1
       21 SETTABLEKS                       R11 R10 K9 ["timestampMilliseconds"]
       23 CALL                             R8 2 1
       24 MOVE                             R6 R8
       25 SETTABLEKS                       R6 R5 K1 ["customFields"]
       27 NEWTABLE                         R7 0 0
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K12 ["StandardizedFields"]
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       37 MOVE                             R14 R7
       38 MOVE                             R15 R12
       39 GETIMPORT                        R13 K15 [table.insert]
       41 CALL                             R13 2 0
       42 FORGLOOP                         R8 2 ; [-8]
       44 MOVE                             R6 R7
       45 SETTABLEKS                       R6 R5 K2 ["standardizedFields"]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       51 GETUPVAL                         R4 5
       52 LOADN                            R5 1
       53 DUPTABLE                         R6 K17 [{"customFields"}]
       54 NEWTABLE                         R8 0 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K18 ["join"]
       59 MOVE                             R10 R8
       60 DUPTABLE                         R11 K21 [{"experimentationGroup", "featureTag"}]
       61 GETUPVAL                         R13 6
       62 NAMECALL                         R13 R13 K22 ["get"]
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKNIL                  R13 ; [+3]
       67 LOADNIL                          R12
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R15 7
       70 GETTABLE                         R14 R13 R15
       71 JUMPIFNOTEQKNIL                  R14 ; [+3]
       73 GETTABLEKS                       R14 R13 K23 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R14 ; [+3]
       77 LOADNIL                          R12
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R14 ; [+3]
       80 MOVE                             R16 R14
       81 GETIMPORT                        R15 K25 [tostring]
       83 CALL                             R15 1 1
       84 MOVE                             R12 R15
       85 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       87 GETUPVAL                         R13 8
       88 CALL                             R13 0 1
       89 JUMPIFNOT                        R13 ; [+2]
       90 LOADK                            R12 K26 ["Remote"]
       91 JUMP                             ; [+1]
       92 LOADK                            R12 K27 ["Local"]
       93 SETTABLEKS                       R12 R11 K20 ["featureTag"]
       95 CALL                             R9 2 1
       96 MOVE                             R7 R9
       97 SETTABLEKS                       R7 R6 K1 ["customFields"]
       99 CALL                             R3 3 0
      100 RETURN                           R0 0

PROTO_50:
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
       24 DUPTABLE                         R9 K10 [{"experimentationGroup", "featureTag"}]
       25 GETUPVAL                         R11 4
       26 NAMECALL                         R11 R11 K11 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 5
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
       49 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       51 GETUPVAL                         R11 6
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+2]
       54 LOADK                            R10 K15 ["Remote"]
       55 JUMP                             ; [+1]
       56 LOADK                            R10 K16 ["Local"]
       57 SETTABLEKS                       R10 R9 K9 ["featureTag"]
       59 CALL                             R7 2 1
       60 MOVE                             R5 R7
       61 SETTABLEKS                       R5 R4 K2 ["customFields"]
       63 CALL                             R1 3 0
       64 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DImagePreviewTelemetry"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["logEvent"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K4 [{"customFields", "standardizedFields"}]
       10 DUPTABLE                         R5 K10 [{"studioFlowId", "batchId", "optionIds", "inputGenerationId", "modelFlow"}]
       11 GETTABLEKS                       R6 R0 K5 ["studioFlowId"]
       13 SETTABLEKS                       R6 R5 K5 ["studioFlowId"]
       15 GETTABLEKS                       R6 R0 K6 ["batchId"]
       17 SETTABLEKS                       R6 R5 K6 ["batchId"]
       19 GETTABLEKS                       R7 R0 K7 ["optionIds"]
       21 JUMPIFNOTEQKNIL                  R7 ; [+3]
       23 LOADNIL                          R6
       24 JUMP                             ; [+10]
       25 GETIMPORT                        R8 K12 [pcall]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R7
       30 CALL                             R8 1 2
       31 JUMPIF                           R8 ; [+2]
       32 LOADNIL                          R6
       33 JUMP                             ; [+1]
       34 MOVE                             R6 R9
       35 SETTABLEKS                       R6 R5 K7 ["optionIds"]
       37 GETTABLEKS                       R6 R0 K8 ["inputGenerationId"]
       39 SETTABLEKS                       R6 R5 K8 ["inputGenerationId"]
       41 GETTABLEKS                       R6 R0 K9 ["modelFlow"]
       43 SETTABLEKS                       R6 R5 K9 ["modelFlow"]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K13 ["assign"]
       48 MOVE                             R7 R5
       49 DUPTABLE                         R8 K15 [{"timestampMilliseconds"}]
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K16 ["getTimestampMilliseconds"]
       53 CALL                             R9 0 1
       54 SETTABLEKS                       R9 R8 K14 ["timestampMilliseconds"]
       56 CALL                             R6 2 1
       57 MOVE                             R4 R6
       58 SETTABLEKS                       R4 R3 K2 ["customFields"]
       60 NEWTABLE                         R5 0 0
       62 GETUPVAL                         R6 6
       63 GETTABLEKS                       R6 R6 K17 ["StandardizedFields"]
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       70 MOVE                             R12 R5
       71 MOVE                             R13 R10
       72 GETIMPORT                        R11 K20 [table.insert]
       74 CALL                             R11 2 0
       75 FORGLOOP                         R6 2 ; [-8]
       77 MOVE                             R4 R5
       78 SETTABLEKS                       R4 R3 K3 ["standardizedFields"]
       80 CALL                             R1 2 0
       81 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DImagePreviewTelemetry"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        8 GETUPVAL                         R2 2
        9 LOADN                            R3 1
       10 DUPTABLE                         R4 K3 [{"customFields"}]
       11 DUPTABLE                         R6 K6 [{"action", "modelFlow"}]
       12 GETTABLEKS                       R7 R0 K4 ["action"]
       14 SETTABLEKS                       R7 R6 K4 ["action"]
       16 GETTABLEKS                       R7 R0 K5 ["modelFlow"]
       18 SETTABLEKS                       R7 R6 K5 ["modelFlow"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K7 ["join"]
       23 MOVE                             R8 R6
       24 DUPTABLE                         R9 K10 [{"experimentationGroup", "featureTag"}]
       25 GETUPVAL                         R11 4
       26 NAMECALL                         R11 R11 K11 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 5
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
       49 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       51 GETUPVAL                         R11 6
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+2]
       54 LOADK                            R10 K15 ["Remote"]
       55 JUMP                             ; [+1]
       56 LOADK                            R10 K16 ["Local"]
       57 SETTABLEKS                       R10 R9 K9 ["featureTag"]
       59 CALL                             R7 2 1
       60 MOVE                             R5 R7
       61 SETTABLEKS                       R5 R4 K2 ["customFields"]
       63 CALL                             R1 3 0
       64 GETUPVAL                         R1 1
       65 GETTABLEKS                       R1 R1 K17 ["logEvent"]
       67 GETUPVAL                         R2 7
       68 DUPTABLE                         R3 K19 [{"customFields", "standardizedFields"}]
       69 DUPTABLE                         R5 K23 [{"studioFlowId", "batchId", "action", "actionOnOptionId", "modelFlow"}]
       70 GETTABLEKS                       R6 R0 K20 ["studioFlowId"]
       72 SETTABLEKS                       R6 R5 K20 ["studioFlowId"]
       74 GETTABLEKS                       R6 R0 K21 ["batchId"]
       76 SETTABLEKS                       R6 R5 K21 ["batchId"]
       78 GETTABLEKS                       R6 R0 K4 ["action"]
       80 SETTABLEKS                       R6 R5 K4 ["action"]
       82 GETTABLEKS                       R6 R0 K22 ["actionOnOptionId"]
       84 SETTABLEKS                       R6 R5 K22 ["actionOnOptionId"]
       86 GETTABLEKS                       R6 R0 K5 ["modelFlow"]
       88 SETTABLEKS                       R6 R5 K5 ["modelFlow"]
       90 GETUPVAL                         R6 3
       91 GETTABLEKS                       R6 R6 K24 ["assign"]
       93 MOVE                             R7 R5
       94 DUPTABLE                         R8 K26 [{"timestampMilliseconds"}]
       95 GETUPVAL                         R9 8
       96 GETTABLEKS                       R9 R9 K27 ["getTimestampMilliseconds"]
       98 CALL                             R9 0 1
       99 SETTABLEKS                       R9 R8 K25 ["timestampMilliseconds"]
      101 CALL                             R6 2 1
      102 MOVE                             R4 R6
      103 SETTABLEKS                       R4 R3 K2 ["customFields"]
      105 NEWTABLE                         R5 0 0
      107 GETUPVAL                         R6 9
      108 GETTABLEKS                       R6 R6 K28 ["StandardizedFields"]
      110 LOADNIL                          R7
      111 LOADNIL                          R8
      112 FORGPREP                         R6
      113 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      115 MOVE                             R12 R5
      116 MOVE                             R13 R10
      117 GETIMPORT                        R11 K31 [table.insert]
      119 CALL                             R11 2 0
      120 FORGLOOP                         R6 2 ; [-8]
      122 MOVE                             R4 R5
      123 SETTABLEKS                       R4 R3 K18 ["standardizedFields"]
      125 CALL                             R1 2 0
      126 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DAssetPublishTracking"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        8 GETUPVAL                         R2 2
        9 LOADN                            R3 1
       10 DUPTABLE                         R4 K3 [{"customFields"}]
       11 DUPTABLE                         R6 K5 [{"modelFlow"}]
       12 GETTABLEKS                       R7 R0 K4 ["modelFlow"]
       14 SETTABLEKS                       R7 R6 K4 ["modelFlow"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K6 ["join"]
       19 MOVE                             R8 R6
       20 DUPTABLE                         R9 K9 [{"experimentationGroup", "featureTag"}]
       21 GETUPVAL                         R11 4
       22 NAMECALL                         R11 R11 K10 ["get"]
       24 CALL                             R11 1 1
       25 JUMPIFNOTEQKNIL                  R11 ; [+3]
       27 LOADNIL                          R10
       28 JUMP                             ; [+16]
       29 GETUPVAL                         R13 5
       30 GETTABLE                         R12 R11 R13
       31 JUMPIFNOTEQKNIL                  R12 ; [+3]
       33 GETTABLEKS                       R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 LOADNIL                          R10
       38 JUMP                             ; [+6]
       39 FASTCALL1                        TOSTRING R12 ; [+3]
       40 MOVE                             R14 R12
       41 GETIMPORT                        R13 K13 [tostring]
       43 CALL                             R13 1 1
       44 MOVE                             R10 R13
       45 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       47 GETUPVAL                         R11 6
       48 CALL                             R11 0 1
       49 JUMPIFNOT                        R11 ; [+2]
       50 LOADK                            R10 K14 ["Remote"]
       51 JUMP                             ; [+1]
       52 LOADK                            R10 K15 ["Local"]
       53 SETTABLEKS                       R10 R9 K8 ["featureTag"]
       55 CALL                             R7 2 1
       56 MOVE                             R5 R7
       57 SETTABLEKS                       R5 R4 K2 ["customFields"]
       59 CALL                             R1 3 0
       60 GETUPVAL                         R1 1
       61 GETTABLEKS                       R1 R1 K16 ["logEvent"]
       63 GETUPVAL                         R2 7
       64 DUPTABLE                         R3 K18 [{"customFields", "standardizedFields"}]
       65 DUPTABLE                         R5 K20 [{"generationId", "modelFlow"}]
       66 GETTABLEKS                       R6 R0 K19 ["generationId"]
       68 SETTABLEKS                       R6 R5 K19 ["generationId"]
       70 GETTABLEKS                       R6 R0 K4 ["modelFlow"]
       72 SETTABLEKS                       R6 R5 K4 ["modelFlow"]
       74 GETUPVAL                         R6 3
       75 GETTABLEKS                       R6 R6 K21 ["assign"]
       77 MOVE                             R7 R5
       78 DUPTABLE                         R8 K23 [{"timestampMilliseconds"}]
       79 GETUPVAL                         R9 8
       80 GETTABLEKS                       R9 R9 K24 ["getTimestampMilliseconds"]
       82 CALL                             R9 0 1
       83 SETTABLEKS                       R9 R8 K22 ["timestampMilliseconds"]
       85 CALL                             R6 2 1
       86 MOVE                             R4 R6
       87 SETTABLEKS                       R4 R3 K2 ["customFields"]
       89 NEWTABLE                         R5 0 0
       91 GETUPVAL                         R6 9
       92 GETTABLEKS                       R6 R6 K25 ["StandardizedFields"]
       94 LOADNIL                          R7
       95 LOADNIL                          R8
       96 FORGPREP                         R6
       97 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       99 MOVE                             R12 R5
      100 MOVE                             R13 R10
      101 GETIMPORT                        R11 K28 [table.insert]
      103 CALL                             R11 2 0
      104 FORGLOOP                         R6 2 ; [-8]
      106 MOVE                             R4 R5
      107 SETTABLEKS                       R4 R3 K17 ["standardizedFields"]
      109 CALL                             R1 2 0
      110 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K7 [{"success", "failureReason", "model", "cameraSource"}]
        7 GETTABLEKS                       R7 R0 K3 ["success"]
        9 SETTABLEKS                       R7 R6 K3 ["success"]
       11 GETTABLEKS                       R7 R0 K4 ["failureReason"]
       13 SETTABLEKS                       R7 R6 K4 ["failureReason"]
       15 GETTABLEKS                       R7 R0 K5 ["model"]
       17 SETTABLEKS                       R7 R6 K5 ["model"]
       19 GETTABLEKS                       R7 R0 K6 ["cameraSource"]
       21 SETTABLEKS                       R7 R6 K6 ["cameraSource"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K8 ["join"]
       26 MOVE                             R8 R6
       27 DUPTABLE                         R9 K11 [{"experimentationGroup", "featureTag"}]
       28 GETUPVAL                         R11 3
       29 NAMECALL                         R11 R11 K12 ["get"]
       31 CALL                             R11 1 1
       32 JUMPIFNOTEQKNIL                  R11 ; [+3]
       34 LOADNIL                          R10
       35 JUMP                             ; [+16]
       36 GETUPVAL                         R13 4
       37 GETTABLE                         R12 R11 R13
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 GETTABLEKS                       R12 R11 K13 ["generatedExperimentVariantDistributionVariable"]
       42 JUMPIFNOTEQKNIL                  R12 ; [+3]
       44 LOADNIL                          R10
       45 JUMP                             ; [+6]
       46 FASTCALL1                        TOSTRING R12 ; [+3]
       47 MOVE                             R14 R12
       48 GETIMPORT                        R13 K15 [tostring]
       50 CALL                             R13 1 1
       51 MOVE                             R10 R13
       52 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       54 GETUPVAL                         R11 5
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+2]
       57 LOADK                            R10 K16 ["Remote"]
       58 JUMP                             ; [+1]
       59 LOADK                            R10 K17 ["Local"]
       60 SETTABLEKS                       R10 R9 K10 ["featureTag"]
       62 CALL                             R7 2 1
       63 MOVE                             R5 R7
       64 SETTABLEKS                       R5 R4 K1 ["customFields"]
       66 CALL                             R1 3 0
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K18 ["logEvent"]
       70 GETUPVAL                         R2 6
       71 DUPTABLE                         R3 K20 [{"customFields", "standardizedFields"}]
       72 DUPTABLE                         R5 K31 [{"requestId", "generationId", "success", "errorMessage", "failureReason", "surface", "isManualRun", "conversationId", "model", "cameraSource", "hasPrompt", "hasHintImage", "isMultiMesh", "durationMilliseconds"}]
       73 GETTABLEKS                       R6 R0 K21 ["requestId"]
       75 SETTABLEKS                       R6 R5 K21 ["requestId"]
       77 GETTABLEKS                       R6 R0 K22 ["generationId"]
       79 SETTABLEKS                       R6 R5 K22 ["generationId"]
       81 GETTABLEKS                       R6 R0 K3 ["success"]
       83 SETTABLEKS                       R6 R5 K3 ["success"]
       85 GETTABLEKS                       R6 R0 K23 ["errorMessage"]
       87 SETTABLEKS                       R6 R5 K23 ["errorMessage"]
       89 GETTABLEKS                       R6 R0 K4 ["failureReason"]
       91 SETTABLEKS                       R6 R5 K4 ["failureReason"]
       93 GETTABLEKS                       R6 R0 K24 ["surface"]
       95 SETTABLEKS                       R6 R5 K24 ["surface"]
       97 GETTABLEKS                       R6 R0 K25 ["isManualRun"]
       99 SETTABLEKS                       R6 R5 K25 ["isManualRun"]
      101 GETTABLEKS                       R6 R0 K26 ["conversationId"]
      103 SETTABLEKS                       R6 R5 K26 ["conversationId"]
      105 GETTABLEKS                       R6 R0 K5 ["model"]
      107 SETTABLEKS                       R6 R5 K5 ["model"]
      109 GETTABLEKS                       R6 R0 K6 ["cameraSource"]
      111 SETTABLEKS                       R6 R5 K6 ["cameraSource"]
      113 GETTABLEKS                       R6 R0 K27 ["hasPrompt"]
      115 SETTABLEKS                       R6 R5 K27 ["hasPrompt"]
      117 GETTABLEKS                       R6 R0 K28 ["hasHintImage"]
      119 SETTABLEKS                       R6 R5 K28 ["hasHintImage"]
      121 GETTABLEKS                       R6 R0 K29 ["isMultiMesh"]
      123 SETTABLEKS                       R6 R5 K29 ["isMultiMesh"]
      125 GETTABLEKS                       R6 R0 K30 ["durationMilliseconds"]
      127 SETTABLEKS                       R6 R5 K30 ["durationMilliseconds"]
      129 GETUPVAL                         R6 2
      130 GETTABLEKS                       R6 R6 K32 ["assign"]
      132 MOVE                             R7 R5
      133 DUPTABLE                         R8 K34 [{"timestampMilliseconds"}]
      134 GETUPVAL                         R9 7
      135 GETTABLEKS                       R9 R9 K35 ["getTimestampMilliseconds"]
      137 CALL                             R9 0 1
      138 SETTABLEKS                       R9 R8 K33 ["timestampMilliseconds"]
      140 CALL                             R6 2 1
      141 MOVE                             R4 R6
      142 SETTABLEKS                       R4 R3 K1 ["customFields"]
      144 NEWTABLE                         R5 0 0
      146 GETUPVAL                         R6 8
      147 GETTABLEKS                       R6 R6 K36 ["StandardizedFields"]
      149 LOADNIL                          R7
      150 LOADNIL                          R8
      151 FORGPREP                         R6
      152 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      154 MOVE                             R12 R5
      155 MOVE                             R13 R10
      156 GETIMPORT                        R11 K39 [table.insert]
      158 CALL                             R11 2 0
      159 FORGLOOP                         R6 2 ; [-8]
      161 MOVE                             R4 R5
      162 SETTABLEKS                       R4 R3 K19 ["standardizedFields"]
      164 CALL                             R1 2 0
      165 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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
       52 DUPTABLE                         R9 K17 [{"experimentationGroup", "featureTag"}]
       53 GETUPVAL                         R11 6
       54 NAMECALL                         R11 R11 K18 ["get"]
       56 CALL                             R11 1 1
       57 JUMPIFNOTEQKNIL                  R11 ; [+3]
       59 LOADNIL                          R10
       60 JUMP                             ; [+16]
       61 GETUPVAL                         R13 7
       62 GETTABLE                         R12 R11 R13
       63 JUMPIFNOTEQKNIL                  R12 ; [+3]
       65 GETTABLEKS                       R12 R11 K19 ["generatedExperimentVariantDistributionVariable"]
       67 JUMPIFNOTEQKNIL                  R12 ; [+3]
       69 LOADNIL                          R10
       70 JUMP                             ; [+6]
       71 FASTCALL1                        TOSTRING R12 ; [+3]
       72 MOVE                             R14 R12
       73 GETIMPORT                        R13 K21 [tostring]
       75 CALL                             R13 1 1
       76 MOVE                             R10 R13
       77 SETTABLEKS                       R10 R9 K15 ["experimentationGroup"]
       79 GETUPVAL                         R11 8
       80 CALL                             R11 0 1
       81 JUMPIFNOT                        R11 ; [+2]
       82 LOADK                            R10 K22 ["Remote"]
       83 JUMP                             ; [+1]
       84 LOADK                            R10 K23 ["Local"]
       85 SETTABLEKS                       R10 R9 K16 ["featureTag"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K1 ["customFields"]
       91 CALL                             R1 3 0
       92 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K6 [{"outcome", "errorMessage"}]
        6 GETTABLEKS                       R6 R0 K4 ["outcome"]
        8 SETTABLEKS                       R6 R5 K4 ["outcome"]
       10 GETTABLEKS                       R7 R0 K5 ["errorMessage"]
       12 JUMPIFNOTEQKNIL                  R7 ; [+3]
       14 LOADNIL                          R6
       15 JUMP                             ; [+13]
       16 LENGTH                           R8 R7
       17 LOADN                            R9 500
       18 JUMPIFNOTLE                      R8 R9 ; [+3]
       20 MOVE                             R6 R7
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R8 2
       23 MOVE                             R9 R7
       24 LOADN                            R10 500
       25 CALL                             R8 2 1
       26 MOVE                             R9 R8
       27 LOADK                            R10 K7 ["..."]
       28 CONCAT                           R6 R9 R10
       29 SETTABLEKS                       R6 R5 K5 ["errorMessage"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K8 ["assign"]
       34 MOVE                             R7 R5
       35 DUPTABLE                         R8 K10 [{"timestampMilliseconds"}]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K11 ["getTimestampMilliseconds"]
       39 CALL                             R9 0 1
       40 SETTABLEKS                       R9 R8 K9 ["timestampMilliseconds"]
       42 CALL                             R6 2 1
       43 MOVE                             R4 R6
       44 SETTABLEKS                       R4 R3 K1 ["customFields"]
       46 NEWTABLE                         R5 0 0
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R6 R6 K12 ["StandardizedFields"]
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       56 MOVE                             R12 R5
       57 MOVE                             R13 R10
       58 GETIMPORT                        R11 K15 [table.insert]
       60 CALL                             R11 2 0
       61 FORGLOOP                         R6 2 ; [-8]
       63 MOVE                             R4 R5
       64 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       66 CALL                             R1 2 0
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K16 ["logCounter"]
       70 GETUPVAL                         R2 6
       71 LOADN                            R3 1
       72 DUPTABLE                         R4 K17 [{"customFields"}]
       73 DUPTABLE                         R6 K18 [{"outcome"}]
       74 GETTABLEKS                       R7 R0 K4 ["outcome"]
       76 SETTABLEKS                       R7 R6 K4 ["outcome"]
       78 GETUPVAL                         R7 3
       79 GETTABLEKS                       R7 R7 K19 ["join"]
       81 MOVE                             R8 R6
       82 DUPTABLE                         R9 K22 [{"experimentationGroup", "featureTag"}]
       83 GETUPVAL                         R11 7
       84 NAMECALL                         R11 R11 K23 ["get"]
       86 CALL                             R11 1 1
       87 JUMPIFNOTEQKNIL                  R11 ; [+3]
       89 LOADNIL                          R10
       90 JUMP                             ; [+16]
       91 GETUPVAL                         R13 8
       92 GETTABLE                         R12 R11 R13
       93 JUMPIFNOTEQKNIL                  R12 ; [+3]
       95 GETTABLEKS                       R12 R11 K24 ["generatedExperimentVariantDistributionVariable"]
       97 JUMPIFNOTEQKNIL                  R12 ; [+3]
       99 LOADNIL                          R10
      100 JUMP                             ; [+6]
      101 FASTCALL1                        TOSTRING R12 ; [+3]
      102 MOVE                             R14 R12
      103 GETIMPORT                        R13 K26 [tostring]
      105 CALL                             R13 1 1
      106 MOVE                             R10 R13
      107 SETTABLEKS                       R10 R9 K20 ["experimentationGroup"]
      109 GETUPVAL                         R11 9
      110 CALL                             R11 0 1
      111 JUMPIFNOT                        R11 ; [+2]
      112 LOADK                            R10 K27 ["Remote"]
      113 JUMP                             ; [+1]
      114 LOADK                            R10 K28 ["Local"]
      115 SETTABLEKS                       R10 R9 K21 ["featureTag"]
      117 CALL                             R7 2 1
      118 MOVE                             R5 R7
      119 SETTABLEKS                       R5 R4 K1 ["customFields"]
      121 CALL                             R1 3 0
      122 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K6 [{"sendTokenEnabled", "tokenOutcome"}]
        6 GETTABLEKS                       R6 R0 K4 ["sendTokenEnabled"]
        8 SETTABLEKS                       R6 R5 K4 ["sendTokenEnabled"]
       10 GETTABLEKS                       R6 R0 K5 ["tokenOutcome"]
       12 SETTABLEKS                       R6 R5 K5 ["tokenOutcome"]
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
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K15 ["logCounter"]
       53 GETUPVAL                         R2 5
       54 LOADN                            R3 1
       55 DUPTABLE                         R4 K16 [{"customFields"}]
       56 DUPTABLE                         R6 K17 [{"sendTokenEnabled"}]
       57 GETTABLEKS                       R8 R0 K4 ["sendTokenEnabled"]
       59 FASTCALL1                        TOSTRING R8 ; [+2]
       60 GETIMPORT                        R7 K19 [tostring]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K4 ["sendTokenEnabled"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K20 ["join"]
       68 MOVE                             R8 R6
       69 DUPTABLE                         R9 K23 [{"experimentationGroup", "featureTag"}]
       70 GETUPVAL                         R11 6
       71 NAMECALL                         R11 R11 K24 ["get"]
       73 CALL                             R11 1 1
       74 JUMPIFNOTEQKNIL                  R11 ; [+3]
       76 LOADNIL                          R10
       77 JUMP                             ; [+16]
       78 GETUPVAL                         R13 7
       79 GETTABLE                         R12 R11 R13
       80 JUMPIFNOTEQKNIL                  R12 ; [+3]
       82 GETTABLEKS                       R12 R11 K25 ["generatedExperimentVariantDistributionVariable"]
       84 JUMPIFNOTEQKNIL                  R12 ; [+3]
       86 LOADNIL                          R10
       87 JUMP                             ; [+6]
       88 FASTCALL1                        TOSTRING R12 ; [+3]
       89 MOVE                             R14 R12
       90 GETIMPORT                        R13 K19 [tostring]
       92 CALL                             R13 1 1
       93 MOVE                             R10 R13
       94 SETTABLEKS                       R10 R9 K21 ["experimentationGroup"]
       96 GETUPVAL                         R11 8
       97 CALL                             R11 0 1
       98 JUMPIFNOT                        R11 ; [+2]
       99 LOADK                            R10 K26 ["Remote"]
      100 JUMP                             ; [+1]
      101 LOADK                            R10 K27 ["Local"]
      102 SETTABLEKS                       R10 R9 K22 ["featureTag"]
      104 CALL                             R7 2 1
      105 MOVE                             R5 R7
      106 SETTABLEKS                       R5 R4 K1 ["customFields"]
      108 CALL                             R1 3 0
      109 RETURN                           R0 0

PROTO_60:
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
       15 DUPTABLE                         R9 K8 [{"experimentationGroup", "featureTag"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K9 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K10 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K12 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADK                            R10 K13 ["Remote"]
       46 JUMP                             ; [+1]
       47 LOADK                            R10 K14 ["Local"]
       48 SETTABLEKS                       R10 R9 K7 ["featureTag"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K1 ["customFields"]
       54 CALL                             R1 3 0
       55 DUPTABLE                         R2 K24 [{"requestId", "conversationId", "threadId", "assistantMode", "dismissed", "questionCount", "questionsJson", "answersJson", "customAnswerCount", "predefinedAnswerCount"}]
       56 GETTABLEKS                       R3 R0 K25 ["messageGuid"]
       58 SETTABLEKS                       R3 R2 K15 ["requestId"]
       60 GETTABLEKS                       R3 R0 K26 ["sessionId"]
       62 SETTABLEKS                       R3 R2 K16 ["conversationId"]
       64 GETTABLEKS                       R3 R0 K17 ["threadId"]
       66 SETTABLEKS                       R3 R2 K17 ["threadId"]
       68 GETTABLEKS                       R3 R0 K18 ["assistantMode"]
       70 SETTABLEKS                       R3 R2 K18 ["assistantMode"]
       72 GETTABLEKS                       R3 R0 K3 ["dismissed"]
       74 SETTABLEKS                       R3 R2 K3 ["dismissed"]
       76 GETTABLEKS                       R3 R0 K19 ["questionCount"]
       78 SETTABLEKS                       R3 R2 K19 ["questionCount"]
       80 GETTABLEKS                       R3 R0 K20 ["questionsJson"]
       82 SETTABLEKS                       R3 R2 K20 ["questionsJson"]
       84 GETTABLEKS                       R3 R0 K21 ["answersJson"]
       86 SETTABLEKS                       R3 R2 K21 ["answersJson"]
       88 GETTABLEKS                       R3 R0 K22 ["customAnswerCount"]
       90 SETTABLEKS                       R3 R2 K22 ["customAnswerCount"]
       92 GETTABLEKS                       R3 R0 K23 ["predefinedAnswerCount"]
       94 SETTABLEKS                       R3 R2 K23 ["predefinedAnswerCount"]
       96 GETUPVAL                         R3 2
       97 GETTABLEKS                       R3 R3 K27 ["assign"]
       99 MOVE                             R4 R2
      100 DUPTABLE                         R5 K29 [{"timestampMilliseconds"}]
      101 GETUPVAL                         R6 6
      102 GETTABLEKS                       R6 R6 K30 ["getTimestampMilliseconds"]
      104 CALL                             R6 0 1
      105 SETTABLEKS                       R6 R5 K28 ["timestampMilliseconds"]
      107 CALL                             R3 2 1
      108 MOVE                             R1 R3
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R2 R2 K31 ["logEvent"]
      112 GETUPVAL                         R3 7
      113 DUPTABLE                         R4 K33 [{"customFields", "standardizedFields"}]
      114 SETTABLEKS                       R1 R4 K1 ["customFields"]
      116 NEWTABLE                         R6 0 0
      118 GETUPVAL                         R7 8
      119 GETTABLEKS                       R7 R7 K34 ["StandardizedFields"]
      121 LOADNIL                          R8
      122 LOADNIL                          R9
      123 FORGPREP                         R7
      124 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      126 MOVE                             R13 R6
      127 MOVE                             R14 R11
      128 GETIMPORT                        R12 K37 [table.insert]
      130 CALL                             R12 2 0
      131 FORGLOOP                         R7 2 ; [-8]
      133 MOVE                             R5 R6
      134 SETTABLEKS                       R5 R4 K32 ["standardizedFields"]
      136 CALL                             R2 2 0
      137 RETURN                           R0 0

PROTO_61:
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
       15 DUPTABLE                         R9 K8 [{"experimentationGroup", "featureTag"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K9 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K10 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K12 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADK                            R10 K13 ["Remote"]
       46 JUMP                             ; [+1]
       47 LOADK                            R10 K14 ["Local"]
       48 SETTABLEKS                       R10 R9 K7 ["featureTag"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 SETTABLEKS                       R5 R4 K1 ["customFields"]
       54 CALL                             R1 3 0
       55 DUPTABLE                         R2 K23 [{"requestId", "conversationId", "threadId", "assistantMode", "decision", "planTitle", "planSummary", "todoCount", "todosJson"}]
       56 GETTABLEKS                       R3 R0 K24 ["messageGuid"]
       58 SETTABLEKS                       R3 R2 K15 ["requestId"]
       60 GETTABLEKS                       R3 R0 K25 ["sessionId"]
       62 SETTABLEKS                       R3 R2 K16 ["conversationId"]
       64 GETTABLEKS                       R3 R0 K17 ["threadId"]
       66 SETTABLEKS                       R3 R2 K17 ["threadId"]
       68 GETTABLEKS                       R3 R0 K18 ["assistantMode"]
       70 SETTABLEKS                       R3 R2 K18 ["assistantMode"]
       72 GETTABLEKS                       R3 R0 K3 ["decision"]
       74 SETTABLEKS                       R3 R2 K3 ["decision"]
       76 GETTABLEKS                       R3 R0 K19 ["planTitle"]
       78 SETTABLEKS                       R3 R2 K19 ["planTitle"]
       80 GETTABLEKS                       R3 R0 K20 ["planSummary"]
       82 SETTABLEKS                       R3 R2 K20 ["planSummary"]
       84 GETTABLEKS                       R3 R0 K21 ["todoCount"]
       86 SETTABLEKS                       R3 R2 K21 ["todoCount"]
       88 GETTABLEKS                       R3 R0 K22 ["todosJson"]
       90 SETTABLEKS                       R3 R2 K22 ["todosJson"]
       92 GETUPVAL                         R3 2
       93 GETTABLEKS                       R3 R3 K26 ["assign"]
       95 MOVE                             R4 R2
       96 DUPTABLE                         R5 K28 [{"timestampMilliseconds"}]
       97 GETUPVAL                         R6 6
       98 GETTABLEKS                       R6 R6 K29 ["getTimestampMilliseconds"]
      100 CALL                             R6 0 1
      101 SETTABLEKS                       R6 R5 K27 ["timestampMilliseconds"]
      103 CALL                             R3 2 1
      104 MOVE                             R1 R3
      105 GETUPVAL                         R2 0
      106 GETTABLEKS                       R2 R2 K30 ["logEvent"]
      108 GETUPVAL                         R3 7
      109 DUPTABLE                         R4 K32 [{"customFields", "standardizedFields"}]
      110 SETTABLEKS                       R1 R4 K1 ["customFields"]
      112 NEWTABLE                         R6 0 0
      114 GETUPVAL                         R7 8
      115 GETTABLEKS                       R7 R7 K33 ["StandardizedFields"]
      117 LOADNIL                          R8
      118 LOADNIL                          R9
      119 FORGPREP                         R7
      120 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      122 MOVE                             R13 R6
      123 MOVE                             R14 R11
      124 GETIMPORT                        R12 K36 [table.insert]
      126 CALL                             R12 2 0
      127 FORGLOOP                         R7 2 ; [-8]
      129 MOVE                             R5 R6
      130 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      132 CALL                             R2 2 0
      133 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K7 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K10 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 GETUPVAL                         R11 5
       40 CALL                             R11 0 1
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K12 ["Local"]
       45 SETTABLEKS                       R10 R9 K5 ["featureTag"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K1 ["customFields"]
       51 CALL                             R1 3 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K13 ["logEvent"]
       55 GETUPVAL                         R2 6
       56 DUPTABLE                         R3 K15 [{"customFields", "standardizedFields"}]
       57 DUPTABLE                         R5 K18 [{"threadId", "messageCount"}]
       58 GETTABLEKS                       R6 R0 K16 ["threadId"]
       60 SETTABLEKS                       R6 R5 K16 ["threadId"]
       62 GETTABLEKS                       R6 R0 K17 ["messageCount"]
       64 SETTABLEKS                       R6 R5 K17 ["messageCount"]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K19 ["assign"]
       69 MOVE                             R7 R5
       70 DUPTABLE                         R8 K21 [{"timestampMilliseconds"}]
       71 GETUPVAL                         R9 7
       72 GETTABLEKS                       R9 R9 K22 ["getTimestampMilliseconds"]
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K20 ["timestampMilliseconds"]
       77 CALL                             R6 2 1
       78 MOVE                             R4 R6
       79 SETTABLEKS                       R4 R3 K1 ["customFields"]
       81 NEWTABLE                         R5 0 0
       83 GETUPVAL                         R6 8
       84 GETTABLEKS                       R6 R6 K23 ["StandardizedFields"]
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       91 MOVE                             R12 R5
       92 MOVE                             R13 R10
       93 GETIMPORT                        R11 K26 [table.insert]
       95 CALL                             R11 2 0
       96 FORGLOOP                         R6 2 ; [-8]
       98 MOVE                             R4 R5
       99 SETTABLEKS                       R4 R3 K14 ["standardizedFields"]
      101 CALL                             R1 2 0
      102 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K6 [{"experimentationGroup", "featureTag"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K7 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K10 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 GETUPVAL                         R11 5
       40 CALL                             R11 0 1
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K11 ["Remote"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K12 ["Local"]
       45 SETTABLEKS                       R10 R9 K5 ["featureTag"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K1 ["customFields"]
       51 CALL                             R1 3 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K13 ["logEvent"]
       55 GETUPVAL                         R2 6
       56 DUPTABLE                         R3 K15 [{"customFields", "standardizedFields"}]
       57 DUPTABLE                         R5 K19 [{"threadId", "errorMessage", "messageCount"}]
       58 GETTABLEKS                       R6 R0 K16 ["threadId"]
       60 SETTABLEKS                       R6 R5 K16 ["threadId"]
       62 GETTABLEKS                       R6 R0 K17 ["errorMessage"]
       64 SETTABLEKS                       R6 R5 K17 ["errorMessage"]
       66 GETTABLEKS                       R6 R0 K18 ["messageCount"]
       68 SETTABLEKS                       R6 R5 K18 ["messageCount"]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K20 ["assign"]
       73 MOVE                             R7 R5
       74 DUPTABLE                         R8 K22 [{"timestampMilliseconds"}]
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K23 ["getTimestampMilliseconds"]
       78 CALL                             R9 0 1
       79 SETTABLEKS                       R9 R8 K21 ["timestampMilliseconds"]
       81 CALL                             R6 2 1
       82 MOVE                             R4 R6
       83 SETTABLEKS                       R4 R3 K1 ["customFields"]
       85 NEWTABLE                         R5 0 0
       87 GETUPVAL                         R6 8
       88 GETTABLEKS                       R6 R6 K24 ["StandardizedFields"]
       90 LOADNIL                          R7
       91 LOADNIL                          R8
       92 FORGPREP                         R6
       93 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       95 MOVE                             R12 R5
       96 MOVE                             R13 R10
       97 GETIMPORT                        R11 K27 [table.insert]
       99 CALL                             R11 2 0
      100 FORGLOOP                         R6 2 ; [-8]
      102 MOVE                             R4 R5
      103 SETTABLEKS                       R4 R3 K14 ["standardizedFields"]
      105 CALL                             R1 2 0
      106 RETURN                           R0 0

PROTO_72:
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
       18 GETTABLEKS                       R6 R0 K7 ["skillBody"]
       20 SETTABLEKS                       R6 R5 K7 ["skillBody"]
       22 GETTABLEKS                       R7 R0 K7 ["skillBody"]
       24 LENGTH                           R6 R7
       25 SETTABLEKS                       R6 R5 K8 ["skillBodyLength"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K10 ["assign"]
       30 MOVE                             R7 R5
       31 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K13 ["getTimestampMilliseconds"]
       35 CALL                             R9 0 1
       36 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       38 CALL                             R6 2 1
       39 MOVE                             R4 R6
       40 SETTABLEKS                       R4 R3 K1 ["customFields"]
       42 NEWTABLE                         R5 0 0
       44 GETUPVAL                         R6 4
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
       60 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       62 CALL                             R1 2 0
       63 RETURN                           R0 0

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["thinkingText"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["logEvent"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"customFields", "standardizedFields"}]
        7 DUPTABLE                         R6 K12 [{"requestId", "conversationId", "thinkingText", "thinkingTextCharacters", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
        8 GETTABLEKS                       R7 R0 K13 ["messageGuid"]
       10 SETTABLEKS                       R7 R6 K5 ["requestId"]
       12 GETTABLEKS                       R7 R0 K14 ["sessionId"]
       14 SETTABLEKS                       R7 R6 K6 ["conversationId"]
       16 SETTABLEKS                       R1 R6 K0 ["thinkingText"]
       18 JUMPIFNOT                        R1 ; [+2]
       19 LENGTH                           R7 R1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R7
       22 SETTABLEKS                       R7 R6 K7 ["thinkingTextCharacters"]
       24 GETTABLEKS                       R7 R0 K8 ["isSubagent"]
       26 SETTABLEKS                       R7 R6 K8 ["isSubagent"]
       28 GETTABLEKS                       R7 R0 K9 ["currentSubagent"]
       30 SETTABLEKS                       R7 R6 K9 ["currentSubagent"]
       32 GETTABLEKS                       R7 R0 K10 ["parentMessageGuid"]
       34 SETTABLEKS                       R7 R6 K10 ["parentMessageGuid"]
       36 GETTABLEKS                       R7 R0 K11 ["parentToolId"]
       38 SETTABLEKS                       R7 R6 K11 ["parentToolId"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K15 ["assign"]
       43 MOVE                             R8 R6
       44 DUPTABLE                         R9 K17 [{"timestampMilliseconds"}]
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K18 ["getTimestampMilliseconds"]
       48 CALL                             R10 0 1
       49 SETTABLEKS                       R10 R9 K16 ["timestampMilliseconds"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 NEWTABLE                         R6 0 0
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R7 R7 K19 ["StandardizedFields"]
       60 LOADNIL                          R8
       61 LOADNIL                          R9
       62 FORGPREP                         R7
       63 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       65 MOVE                             R13 R6
       66 MOVE                             R14 R11
       67 GETIMPORT                        R12 K22 [table.insert]
       69 CALL                             R12 2 0
       70 FORGLOOP                         R7 2 ; [-8]
       72 MOVE                             R5 R6
       73 SETTABLEKS                       R5 R4 K3 ["standardizedFields"]
       75 CALL                             R2 2 0
       76 RETURN                           R0 0

PROTO_74:
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
       24 DUPTABLE                         R9 K11 [{"experimentationGroup", "featureTag"}]
       25 GETUPVAL                         R11 3
       26 NAMECALL                         R11 R11 K12 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 4
       34 GETTABLE                         R12 R11 R13
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 GETTABLEKS                       R12 R11 K13 ["generatedExperimentVariantDistributionVariable"]
       39 JUMPIFNOTEQKNIL                  R12 ; [+3]
       41 LOADNIL                          R10
       42 JUMP                             ; [+6]
       43 FASTCALL1                        TOSTRING R12 ; [+3]
       44 MOVE                             R14 R12
       45 GETIMPORT                        R13 K15 [tostring]
       47 CALL                             R13 1 1
       48 MOVE                             R10 R13
       49 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       51 GETUPVAL                         R11 5
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+2]
       54 LOADK                            R10 K16 ["Remote"]
       55 JUMP                             ; [+1]
       56 LOADK                            R10 K17 ["Local"]
       57 SETTABLEKS                       R10 R9 K10 ["featureTag"]
       59 CALL                             R7 2 1
       60 MOVE                             R5 R7
       61 SETTABLEKS                       R5 R4 K2 ["customFields"]
       63 CALL                             R1 3 0
       64 GETTABLEKS                       R2 R0 K6 ["success"]
       66 JUMPIFNOT                        R2 ; [+2]
       67 GETUPVAL                         R1 6
       68 JUMP                             ; [+1]
       69 GETUPVAL                         R1 7
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K18 ["logCounter"]
       73 MOVE                             R3 R1
       74 LOADN                            R4 1
       75 DUPTABLE                         R5 K3 [{"customFields"}]
       76 DUPTABLE                         R7 K19 [{"operation", "scope"}]
       77 GETTABLEKS                       R8 R0 K4 ["operation"]
       79 SETTABLEKS                       R8 R7 K4 ["operation"]
       81 GETTABLEKS                       R8 R0 K5 ["scope"]
       83 SETTABLEKS                       R8 R7 K5 ["scope"]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K8 ["join"]
       88 MOVE                             R9 R7
       89 DUPTABLE                         R10 K11 [{"experimentationGroup", "featureTag"}]
       90 GETUPVAL                         R12 3
       91 NAMECALL                         R12 R12 K12 ["get"]
       93 CALL                             R12 1 1
       94 JUMPIFNOTEQKNIL                  R12 ; [+3]
       96 LOADNIL                          R11
       97 JUMP                             ; [+16]
       98 GETUPVAL                         R14 4
       99 GETTABLE                         R13 R12 R14
      100 JUMPIFNOTEQKNIL                  R13 ; [+3]
      102 GETTABLEKS                       R13 R12 K13 ["generatedExperimentVariantDistributionVariable"]
      104 JUMPIFNOTEQKNIL                  R13 ; [+3]
      106 LOADNIL                          R11
      107 JUMP                             ; [+6]
      108 FASTCALL1                        TOSTRING R13 ; [+3]
      109 MOVE                             R15 R13
      110 GETIMPORT                        R14 K15 [tostring]
      112 CALL                             R14 1 1
      113 MOVE                             R11 R14
      114 SETTABLEKS                       R11 R10 K9 ["experimentationGroup"]
      116 GETUPVAL                         R12 5
      117 CALL                             R12 0 1
      118 JUMPIFNOT                        R12 ; [+2]
      119 LOADK                            R11 K16 ["Remote"]
      120 JUMP                             ; [+1]
      121 LOADK                            R11 K17 ["Local"]
      122 SETTABLEKS                       R11 R10 K10 ["featureTag"]
      124 CALL                             R8 2 1
      125 MOVE                             R6 R8
      126 SETTABLEKS                       R6 R5 K2 ["customFields"]
      128 CALL                             R2 3 0
      129 RETURN                           R0 0

PROTO_75:
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
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 CAPTURE                          VAL R0
       13 DUPCLOSURE                       R2 K0 [PROTO_23]
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 DUPCLOSURE                       R3 K1 [PROTO_24]
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U11
       26 CAPTURE                          UPVAL U10
       27 DUPCLOSURE                       R4 K2 [PROTO_25]
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U12
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U13
       36 CAPTURE                          UPVAL U10
       37 NEWCLOSURE                       R5 P4
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U14
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R6 P5
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U16
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U17
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          VAL R0
       59 DUPCLOSURE                       R7 K3 [PROTO_28]
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U18
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U7
       66 DUPCLOSURE                       R8 K4 [PROTO_29]
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U19
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U7
       73 DUPCLOSURE                       R9 K5 [PROTO_30]
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U20
       76 NEWCLOSURE                       R10 P9
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U21
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R0
       83 DUPCLOSURE                       R11 K6 [PROTO_32]
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U22
       88 CAPTURE                          UPVAL U10
       89 DUPCLOSURE                       R12 K7 [PROTO_33]
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U23
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          UPVAL U24
       98 CAPTURE                          UPVAL U25
       99 CAPTURE                          UPVAL U26
      100 CAPTURE                          UPVAL U10
      101 DUPCLOSURE                       R13 K8 [PROTO_34]
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          UPVAL U27
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U0
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          UPVAL U28
      110 CAPTURE                          UPVAL U29
      111 CAPTURE                          UPVAL U30
      112 CAPTURE                          UPVAL U10
      113 DUPCLOSURE                       R14 K9 [PROTO_35]
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U31
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          UPVAL U32
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          UPVAL U10
      123 DUPCLOSURE                       R15 K10 [PROTO_36]
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U8
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          UPVAL U33
      128 CAPTURE                          UPVAL U10
      129 DUPCLOSURE                       R16 K11 [PROTO_37]
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U34
      134 CAPTURE                          UPVAL U10
      135 DUPCLOSURE                       R17 K12 [PROTO_38]
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U35
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          UPVAL U2
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          UPVAL U36
      146 CAPTURE                          UPVAL U10
      147 DUPCLOSURE                       R18 K13 [PROTO_39]
      148 CAPTURE                          UPVAL U6
      149 CAPTURE                          UPVAL U8
      150 CAPTURE                          UPVAL U4
      151 CAPTURE                          UPVAL U37
      152 CAPTURE                          UPVAL U10
      153 DUPCLOSURE                       R19 K14 [PROTO_40]
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          UPVAL U38
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U1
      159 CAPTURE                          UPVAL U7
      160 DUPCLOSURE                       R20 K15 [PROTO_41]
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          UPVAL U39
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          UPVAL U1
      166 CAPTURE                          UPVAL U7
      167 CAPTURE                          UPVAL U40
      168 CAPTURE                          UPVAL U24
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U41
      171 CAPTURE                          UPVAL U10
      172 DUPCLOSURE                       R21 K16 [PROTO_42]
      173 CAPTURE                          UPVAL U4
      174 CAPTURE                          UPVAL U42
      175 CAPTURE                          UPVAL U6
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          UPVAL U1
      178 CAPTURE                          UPVAL U7
      179 CAPTURE                          UPVAL U43
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          UPVAL U44
      182 CAPTURE                          UPVAL U10
      183 DUPCLOSURE                       R22 K17 [PROTO_43]
      184 CAPTURE                          UPVAL U4
      185 CAPTURE                          UPVAL U45
      186 CAPTURE                          UPVAL U6
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U1
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          UPVAL U46
      191 CAPTURE                          UPVAL U8
      192 CAPTURE                          UPVAL U47
      193 CAPTURE                          UPVAL U10
      194 DUPCLOSURE                       R23 K18 [PROTO_44]
      195 CAPTURE                          UPVAL U4
      196 CAPTURE                          UPVAL U48
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          UPVAL U0
      199 CAPTURE                          UPVAL U1
      200 CAPTURE                          UPVAL U7
      201 CAPTURE                          UPVAL U24
      202 CAPTURE                          UPVAL U8
      203 CAPTURE                          UPVAL U49
      204 CAPTURE                          UPVAL U10
      205 DUPCLOSURE                       R24 K19 [PROTO_45]
      206 CAPTURE                          UPVAL U4
      207 CAPTURE                          UPVAL U50
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          UPVAL U10
      211 DUPCLOSURE                       R25 K20 [PROTO_46]
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          UPVAL U51
      214 CAPTURE                          UPVAL U6
      215 CAPTURE                          UPVAL U8
      216 CAPTURE                          UPVAL U10
      217 DUPCLOSURE                       R26 K21 [PROTO_47]
      218 CAPTURE                          UPVAL U4
      219 CAPTURE                          UPVAL U52
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          UPVAL U8
      222 CAPTURE                          UPVAL U10
      223 DUPCLOSURE                       R27 K22 [PROTO_48]
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          UPVAL U53
      226 CAPTURE                          UPVAL U6
      227 CAPTURE                          UPVAL U8
      228 CAPTURE                          UPVAL U10
      229 CAPTURE                          UPVAL U54
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U1
      232 CAPTURE                          UPVAL U7
      233 DUPCLOSURE                       R28 K23 [PROTO_49]
      234 CAPTURE                          UPVAL U4
      235 CAPTURE                          UPVAL U55
      236 CAPTURE                          UPVAL U6
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          UPVAL U10
      239 CAPTURE                          UPVAL U56
      240 CAPTURE                          UPVAL U0
      241 CAPTURE                          UPVAL U1
      242 CAPTURE                          UPVAL U7
      243 DUPCLOSURE                       R29 K24 [PROTO_50]
      244 CAPTURE                          UPVAL U3
      245 CAPTURE                          UPVAL U4
      246 CAPTURE                          UPVAL U57
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          UPVAL U1
      250 CAPTURE                          UPVAL U7
      251 DUPCLOSURE                       R30 K25 [PROTO_51]
      252 CAPTURE                          UPVAL U3
      253 CAPTURE                          UPVAL U4
      254 CAPTURE                          UPVAL U58
      255 CAPTURE                          UPVAL U6
      256 CAPTURE                          UPVAL U8
      257 CAPTURE                          UPVAL U10
      258 DUPCLOSURE                       R31 K26 [PROTO_52]
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          UPVAL U4
      261 CAPTURE                          UPVAL U59
      262 CAPTURE                          UPVAL U24
      263 CAPTURE                          UPVAL U6
      264 CAPTURE                          UPVAL U8
      265 CAPTURE                          UPVAL U10
      266 DUPCLOSURE                       R32 K27 [PROTO_53]
      267 CAPTURE                          UPVAL U3
      268 CAPTURE                          UPVAL U4
      269 CAPTURE                          UPVAL U60
      270 CAPTURE                          UPVAL U6
      271 CAPTURE                          UPVAL U0
      272 CAPTURE                          UPVAL U1
      273 CAPTURE                          UPVAL U7
      274 CAPTURE                          UPVAL U61
      275 CAPTURE                          UPVAL U8
      276 CAPTURE                          UPVAL U10
      277 DUPCLOSURE                       R33 K28 [PROTO_54]
      278 CAPTURE                          UPVAL U3
      279 CAPTURE                          UPVAL U4
      280 CAPTURE                          UPVAL U62
      281 CAPTURE                          UPVAL U6
      282 CAPTURE                          UPVAL U0
      283 CAPTURE                          UPVAL U1
      284 CAPTURE                          UPVAL U7
      285 CAPTURE                          UPVAL U63
      286 CAPTURE                          UPVAL U8
      287 CAPTURE                          UPVAL U10
      288 DUPCLOSURE                       R34 K29 [PROTO_55]
      289 CAPTURE                          UPVAL U4
      290 CAPTURE                          UPVAL U64
      291 CAPTURE                          UPVAL U6
      292 CAPTURE                          UPVAL U0
      293 CAPTURE                          UPVAL U1
      294 CAPTURE                          UPVAL U7
      295 CAPTURE                          UPVAL U65
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          UPVAL U10
      298 DUPCLOSURE                       R35 K30 [PROTO_56]
      299 CAPTURE                          UPVAL U4
      300 CAPTURE                          UPVAL U66
      301 CAPTURE                          UPVAL U6
      302 CAPTURE                          UPVAL U8
      303 CAPTURE                          UPVAL U10
      304 DUPCLOSURE                       R36 K31 [PROTO_57]
      305 CAPTURE                          UPVAL U4
      306 CAPTURE                          UPVAL U67
      307 CAPTURE                          UPVAL U6
      308 CAPTURE                          UPVAL U8
      309 CAPTURE                          UPVAL U10
      310 CAPTURE                          UPVAL U68
      311 CAPTURE                          UPVAL U0
      312 CAPTURE                          UPVAL U1
      313 CAPTURE                          UPVAL U7
      314 DUPCLOSURE                       R37 K32 [PROTO_58]
      315 CAPTURE                          UPVAL U4
      316 CAPTURE                          UPVAL U69
      317 CAPTURE                          UPVAL U25
      318 CAPTURE                          UPVAL U6
      319 CAPTURE                          UPVAL U8
      320 CAPTURE                          UPVAL U10
      321 CAPTURE                          UPVAL U70
      322 CAPTURE                          UPVAL U0
      323 CAPTURE                          UPVAL U1
      324 CAPTURE                          UPVAL U7
      325 DUPCLOSURE                       R38 K33 [PROTO_59]
      326 CAPTURE                          UPVAL U4
      327 CAPTURE                          UPVAL U71
      328 CAPTURE                          UPVAL U6
      329 CAPTURE                          UPVAL U8
      330 CAPTURE                          UPVAL U10
      331 CAPTURE                          UPVAL U72
      332 CAPTURE                          UPVAL U0
      333 CAPTURE                          UPVAL U1
      334 CAPTURE                          UPVAL U7
      335 DUPCLOSURE                       R39 K34 [PROTO_60]
      336 CAPTURE                          UPVAL U4
      337 CAPTURE                          UPVAL U73
      338 CAPTURE                          UPVAL U6
      339 CAPTURE                          UPVAL U0
      340 CAPTURE                          UPVAL U1
      341 CAPTURE                          UPVAL U7
      342 CAPTURE                          UPVAL U8
      343 CAPTURE                          UPVAL U74
      344 CAPTURE                          UPVAL U10
      345 DUPCLOSURE                       R40 K35 [PROTO_61]
      346 CAPTURE                          UPVAL U4
      347 CAPTURE                          UPVAL U75
      348 CAPTURE                          UPVAL U6
      349 CAPTURE                          UPVAL U0
      350 CAPTURE                          UPVAL U1
      351 CAPTURE                          UPVAL U7
      352 CAPTURE                          UPVAL U8
      353 CAPTURE                          UPVAL U76
      354 CAPTURE                          UPVAL U10
      355 DUPCLOSURE                       R41 K36 [PROTO_62]
      356 CAPTURE                          UPVAL U4
      357 CAPTURE                          UPVAL U77
      358 DUPCLOSURE                       R42 K37 [PROTO_63]
      359 CAPTURE                          UPVAL U4
      360 CAPTURE                          UPVAL U78
      361 CAPTURE                          UPVAL U6
      362 CAPTURE                          UPVAL U8
      363 CAPTURE                          UPVAL U10
      364 DUPCLOSURE                       R43 K38 [PROTO_64]
      365 CAPTURE                          UPVAL U4
      366 CAPTURE                          UPVAL U79
      367 CAPTURE                          UPVAL U6
      368 CAPTURE                          UPVAL U8
      369 CAPTURE                          UPVAL U10
      370 DUPCLOSURE                       R44 K39 [PROTO_65]
      371 CAPTURE                          UPVAL U4
      372 CAPTURE                          UPVAL U80
      373 CAPTURE                          UPVAL U6
      374 CAPTURE                          UPVAL U8
      375 CAPTURE                          UPVAL U10
      376 DUPCLOSURE                       R45 K40 [PROTO_66]
      377 CAPTURE                          UPVAL U4
      378 CAPTURE                          UPVAL U81
      379 CAPTURE                          UPVAL U6
      380 CAPTURE                          UPVAL U8
      381 CAPTURE                          UPVAL U10
      382 DUPCLOSURE                       R46 K41 [PROTO_67]
      383 CAPTURE                          UPVAL U4
      384 CAPTURE                          UPVAL U82
      385 CAPTURE                          UPVAL U6
      386 CAPTURE                          UPVAL U8
      387 CAPTURE                          UPVAL U10
      388 DUPCLOSURE                       R47 K42 [PROTO_68]
      389 CAPTURE                          UPVAL U4
      390 CAPTURE                          UPVAL U83
      391 CAPTURE                          UPVAL U6
      392 CAPTURE                          UPVAL U8
      393 CAPTURE                          UPVAL U10
      394 DUPCLOSURE                       R48 K43 [PROTO_69]
      395 CAPTURE                          UPVAL U4
      396 CAPTURE                          UPVAL U84
      397 CAPTURE                          UPVAL U6
      398 CAPTURE                          UPVAL U8
      399 CAPTURE                          UPVAL U10
      400 DUPCLOSURE                       R49 K44 [PROTO_70]
      401 CAPTURE                          UPVAL U4
      402 CAPTURE                          UPVAL U85
      403 CAPTURE                          UPVAL U6
      404 CAPTURE                          UPVAL U0
      405 CAPTURE                          UPVAL U1
      406 CAPTURE                          UPVAL U7
      407 CAPTURE                          UPVAL U86
      408 CAPTURE                          UPVAL U8
      409 CAPTURE                          UPVAL U10
      410 DUPCLOSURE                       R50 K45 [PROTO_71]
      411 CAPTURE                          UPVAL U4
      412 CAPTURE                          UPVAL U87
      413 CAPTURE                          UPVAL U6
      414 CAPTURE                          UPVAL U0
      415 CAPTURE                          UPVAL U1
      416 CAPTURE                          UPVAL U7
      417 CAPTURE                          UPVAL U88
      418 CAPTURE                          UPVAL U8
      419 CAPTURE                          UPVAL U10
      420 DUPCLOSURE                       R51 K46 [PROTO_72]
      421 CAPTURE                          UPVAL U4
      422 CAPTURE                          UPVAL U89
      423 CAPTURE                          UPVAL U6
      424 CAPTURE                          UPVAL U8
      425 CAPTURE                          UPVAL U10
      426 DUPCLOSURE                       R52 K47 [PROTO_73]
      427 CAPTURE                          UPVAL U4
      428 CAPTURE                          UPVAL U90
      429 CAPTURE                          UPVAL U6
      430 CAPTURE                          UPVAL U8
      431 CAPTURE                          UPVAL U10
      432 DUPCLOSURE                       R53 K48 [PROTO_74]
      433 CAPTURE                          UPVAL U4
      434 CAPTURE                          UPVAL U91
      435 CAPTURE                          UPVAL U6
      436 CAPTURE                          UPVAL U0
      437 CAPTURE                          UPVAL U1
      438 CAPTURE                          UPVAL U7
      439 CAPTURE                          UPVAL U92
      440 CAPTURE                          UPVAL U93
      441 NEWTABLE                         R54 64 0
      443 SETTABLEKS                       R1 R54 K49 ["logUserMessageSent"]
      445 SETTABLEKS                       R2 R54 K50 ["logAssistantMessageSent"]
      447 SETTABLEKS                       R3 R54 K51 ["logApiKeyAdded"]
      449 SETTABLEKS                       R4 R54 K52 ["logErrorEvent"]
      451 SETTABLEKS                       R18 R54 K53 ["logExternalAPIError"]
      453 SETTABLEKS                       R5 R54 K54 ["logThumbsUp"]
      455 SETTABLEKS                       R6 R54 K55 ["logThumbsDown"]
      457 SETTABLEKS                       R7 R54 K56 ["logInitialResponseLatency"]
      459 SETTABLEKS                       R8 R54 K57 ["logNotificationGapSkipped"]
      461 SETTABLEKS                       R9 R54 K58 ["logMarkdownError"]
      463 SETTABLEKS                       R10 R54 K59 ["logRetry"]
      465 SETTABLEKS                       R11 R54 K60 ["logStopGeneration"]
      467 SETTABLEKS                       R12 R54 K61 ["logToolStarted"]
      469 SETTABLEKS                       R13 R54 K62 ["logToolEnded"]
      471 SETTABLEKS                       R14 R54 K63 ["logFailedToolInvocation"]
      473 SETTABLEKS                       R15 R54 K64 ["logToolConfirmationShown"]
      475 SETTABLEKS                       R16 R54 K65 ["logToolConfirmationResult"]
      477 SETTABLEKS                       R17 R54 K66 ["logRequestJourney"]
      479 SETTABLEKS                       R19 R54 K67 ["logMeshGenActivated"]
      481 SETTABLEKS                       R20 R54 K68 ["logMeshGenCompleted"]
      483 SETTABLEKS                       R21 R54 K69 ["logMeshGenPublishedAssets"]
      485 SETTABLEKS                       R22 R54 K70 ["logMeshGenMeshInserted"]
      487 SETTABLEKS                       R23 R54 K71 ["logPrimitiveGen"]
      489 SETTABLEKS                       R24 R54 K72 ["logAvatarAutoSetupRequested"]
      491 SETTABLEKS                       R25 R54 K73 ["logAvatarAutoSetupOptions"]
      493 SETTABLEKS                       R26 R54 K74 ["logAvatarAutoSetupJobInitialized"]
      495 SETTABLEKS                       R27 R54 K75 ["logAvatarAutoSetupFinish"]
      497 SETTABLEKS                       R28 R54 K76 ["logAvatarAutoSetupFailure"]
      499 SETTABLEKS                       R29 R54 K77 ["logGen3DSegmentationRefresh"]
      501 SETTABLEKS                       R30 R54 K78 ["logGen3DInstanceDeleted"]
      503 SETTABLEKS                       R31 R54 K79 ["logGen3DImageImpression"]
      505 SETTABLEKS                       R32 R54 K80 ["logGen3DImageAction"]
      507 SETTABLEKS                       R33 R54 K81 ["logGen3DAssetPublished"]
      509 SETTABLEKS                       R34 R54 K82 ["logTextureGenCompleted"]
      511 SETTABLEKS                       R35 R54 K83 ["logIntegrationEvent"]
      513 SETTABLEKS                       R36 R54 K84 ["logExternalServerConnected"]
      515 SETTABLEKS                       R37 R54 K85 ["logMCPProxyTokenRead"]
      517 SETTABLEKS                       R38 R54 K86 ["logMCPProxyAuthRejected"]
      519 SETTABLEKS                       R39 R54 K87 ["logQuestionAnswerCompleted"]
      521 SETTABLEKS                       R40 R54 K88 ["logPlanDecision"]
      523 SETTABLEKS                       R47 R54 K89 ["logQuickSetupToggled"]
      525 SETTABLEKS                       R41 R54 K90 ["logMaterialGeneratorSavedMaterial"]
      527 SETTABLEKS                       R49 R54 K91 ["logCompactionSuccess"]
      529 SETTABLEKS                       R50 R54 K92 ["logCompactionFallback"]
      531 SETTABLEKS                       R51 R54 K93 ["logUserSkillEvent"]
      533 SETTABLEKS                       R52 R54 K94 ["logThinkingBlock"]
      535 SETTABLEKS                       R42 R54 K95 ["logThreadCreated"]
      537 SETTABLEKS                       R43 R54 K96 ["logThreadRenamed"]
      539 SETTABLEKS                       R44 R54 K97 ["logThreadPinnedChanged"]
      541 SETTABLEKS                       R45 R54 K98 ["logThreadDeleted"]
      543 SETTABLEKS                       R46 R54 K99 ["logThreadDuplicated"]
      545 SETTABLEKS                       R48 R54 K100 ["logThreadSwitched"]
      547 SETTABLEKS                       R53 R54 K101 ["logPersistenceOperation"]
      549 RETURN                           R54 1

PROTO_76:
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
       57 GETTABLEKS                       R3 R1 K13 ["logFailedToolInvocation"]
       59 SETTABLEKS                       R3 R2 K13 ["logFailedToolInvocation"]
       61 GETTABLEKS                       R3 R1 K14 ["logToolConfirmationShown"]
       63 SETTABLEKS                       R3 R2 K14 ["logToolConfirmationShown"]
       65 GETTABLEKS                       R3 R1 K15 ["logToolConfirmationResult"]
       67 SETTABLEKS                       R3 R2 K15 ["logToolConfirmationResult"]
       69 GETTABLEKS                       R3 R1 K16 ["logRequestJourney"]
       71 SETTABLEKS                       R3 R2 K16 ["logRequestJourney"]
       73 GETTABLEKS                       R3 R1 K17 ["logMeshGenActivated"]
       75 SETTABLEKS                       R3 R2 K17 ["logMeshGenActivated"]
       77 GETTABLEKS                       R3 R1 K18 ["logMeshGenCompleted"]
       79 SETTABLEKS                       R3 R2 K18 ["logMeshGenCompleted"]
       81 GETTABLEKS                       R3 R1 K19 ["logMeshGenPublishedAssets"]
       83 SETTABLEKS                       R3 R2 K19 ["logMeshGenPublishedAssets"]
       85 GETTABLEKS                       R3 R1 K20 ["logMeshGenMeshInserted"]
       87 SETTABLEKS                       R3 R2 K20 ["logMeshGenMeshInserted"]
       89 GETTABLEKS                       R3 R1 K21 ["logPrimitiveGen"]
       91 SETTABLEKS                       R3 R2 K21 ["logPrimitiveGen"]
       93 GETTABLEKS                       R3 R1 K22 ["logGen3DSegmentationRefresh"]
       95 SETTABLEKS                       R3 R2 K22 ["logGen3DSegmentationRefresh"]
       97 GETTABLEKS                       R3 R1 K23 ["logGen3DInstanceDeleted"]
       99 SETTABLEKS                       R3 R2 K23 ["logGen3DInstanceDeleted"]
      101 GETTABLEKS                       R3 R1 K24 ["logGen3DImageImpression"]
      103 SETTABLEKS                       R3 R2 K24 ["logGen3DImageImpression"]
      105 GETTABLEKS                       R3 R1 K25 ["logGen3DImageAction"]
      107 SETTABLEKS                       R3 R2 K25 ["logGen3DImageAction"]
      109 GETTABLEKS                       R3 R1 K26 ["logGen3DAssetPublished"]
      111 SETTABLEKS                       R3 R2 K26 ["logGen3DAssetPublished"]
      113 GETTABLEKS                       R3 R1 K27 ["logTextureGenCompleted"]
      115 SETTABLEKS                       R3 R2 K27 ["logTextureGenCompleted"]
      117 GETTABLEKS                       R3 R1 K28 ["logIntegrationEvent"]
      119 SETTABLEKS                       R3 R2 K28 ["logIntegrationEvent"]
      121 GETTABLEKS                       R3 R1 K29 ["logExternalServerConnected"]
      123 SETTABLEKS                       R3 R2 K29 ["logExternalServerConnected"]
      125 GETTABLEKS                       R3 R1 K30 ["logMCPProxyTokenRead"]
      127 SETTABLEKS                       R3 R2 K30 ["logMCPProxyTokenRead"]
      129 GETTABLEKS                       R3 R1 K31 ["logMCPProxyAuthRejected"]
      131 SETTABLEKS                       R3 R2 K31 ["logMCPProxyAuthRejected"]
      133 GETTABLEKS                       R3 R1 K32 ["logQuestionAnswerCompleted"]
      135 SETTABLEKS                       R3 R2 K32 ["logQuestionAnswerCompleted"]
      137 GETTABLEKS                       R3 R1 K33 ["logPlanDecision"]
      139 SETTABLEKS                       R3 R2 K33 ["logPlanDecision"]
      141 GETTABLEKS                       R3 R1 K34 ["logQuickSetupToggled"]
      143 SETTABLEKS                       R3 R2 K34 ["logQuickSetupToggled"]
      145 GETTABLEKS                       R3 R1 K35 ["logMaterialGeneratorSavedMaterial"]
      147 SETTABLEKS                       R3 R2 K35 ["logMaterialGeneratorSavedMaterial"]
      149 GETTABLEKS                       R3 R1 K36 ["logCompactionSuccess"]
      151 SETTABLEKS                       R3 R2 K36 ["logCompactionSuccess"]
      153 GETTABLEKS                       R3 R1 K37 ["logCompactionFallback"]
      155 SETTABLEKS                       R3 R2 K37 ["logCompactionFallback"]
      157 GETTABLEKS                       R3 R1 K38 ["logUserSkillEvent"]
      159 SETTABLEKS                       R3 R2 K38 ["logUserSkillEvent"]
      161 GETTABLEKS                       R3 R1 K39 ["logThinkingBlock"]
      163 SETTABLEKS                       R3 R2 K39 ["logThinkingBlock"]
      165 GETTABLEKS                       R3 R1 K40 ["logThreadCreated"]
      167 SETTABLEKS                       R3 R2 K40 ["logThreadCreated"]
      169 GETTABLEKS                       R3 R1 K41 ["logThreadRenamed"]
      171 SETTABLEKS                       R3 R2 K41 ["logThreadRenamed"]
      173 GETTABLEKS                       R3 R1 K42 ["logThreadPinnedChanged"]
      175 SETTABLEKS                       R3 R2 K42 ["logThreadPinnedChanged"]
      177 GETTABLEKS                       R3 R1 K43 ["logThreadDeleted"]
      179 SETTABLEKS                       R3 R2 K43 ["logThreadDeleted"]
      181 GETTABLEKS                       R3 R1 K44 ["logThreadDuplicated"]
      183 SETTABLEKS                       R3 R2 K44 ["logThreadDuplicated"]
      185 GETTABLEKS                       R3 R1 K45 ["logThreadSwitched"]
      187 SETTABLEKS                       R3 R2 K45 ["logThreadSwitched"]
      189 GETTABLEKS                       R3 R1 K46 ["logPersistenceOperation"]
      191 SETTABLEKS                       R3 R2 K46 ["logPersistenceOperation"]
      193 RETURN                           R2 1

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
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Util"]
       32 GETTABLEKS                       R5 R5 K15 ["AvatarAutoSetup"]
       34 GETTABLEKS                       R5 R5 K16 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Packages"]
       41 GETTABLEKS                       R6 R6 K17 ["Dash"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K18 ["ExperimentCache"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Src"]
       57 GETTABLEKS                       R8 R8 K19 ["Flags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Src"]
       64 GETTABLEKS                       R9 R9 K14 ["Util"]
       66 GETTABLEKS                       R9 R9 K20 ["Telemetry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K10 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Packages"]
       73 GETTABLEKS                       R10 R10 K21 ["TelemetryProtocol"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R3 K22 ["Utils"]
       78 GETTABLEKS                       R10 R10 K23 ["Time"]
       80 GETTABLEKS                       R11 R3 K22 ["Utils"]
       82 GETTABLEKS                       R11 R11 K24 ["ImageAttachmentUtils"]
       84 GETTABLEKS                       R12 R3 K22 ["Utils"]
       86 GETTABLEKS                       R12 R12 K25 ["truncateUtf8Safe"]
       88 GETTABLEKS                       R13 R3 K26 ["FlagUtils"]
       90 GETTABLEKS                       R13 R13 K27 ["getIsCreditMeteringEnabled"]
       92 GETTABLEKS                       R14 R3 K26 ["FlagUtils"]
       94 GETTABLEKS                       R14 R14 K28 ["getIsAssistantUseRemoteService"]
       96 GETTABLEKS                       R14 R14 K29 ["get"]
       98 DUPCLOSURE                       R15 K30 [PROTO_1]
       99 CAPTURE                          VAL R1
      100 DUPCLOSURE                       R16 K31 [PROTO_2]
      101 CAPTURE                          VAL R12
      102 DUPCLOSURE                       R17 K32 [PROTO_3]
      103 DUPCLOSURE                       R18 K33 [PROTO_4]
      104 DUPCLOSURE                       R19 K34 [PROTO_5]
      105 DUPCLOSURE                       R20 K35 [PROTO_6]
      106 DUPCLOSURE                       R21 K36 [PROTO_7]
      107 DUPCLOSURE                       R22 K37 [PROTO_8]
      108 DUPCLOSURE                       R23 K38 [PROTO_9]
      109 CAPTURE                          VAL R21
      110 DUPCLOSURE                       R24 K39 [PROTO_11]
      111 CAPTURE                          VAL R23
      112 CAPTURE                          VAL R1
      113 DUPCLOSURE                       R25 K40 [PROTO_12]
      114 DUPCLOSURE                       R26 K41 [PROTO_13]
      115 DUPCLOSURE                       R27 K42 [PROTO_14]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R1
      118 DUPCLOSURE                       R28 K43 [PROTO_15]
      119 CAPTURE                          VAL R9
      120 DUPCLOSURE                       R29 K44 [PROTO_16]
      121 DUPCLOSURE                       R30 K45 [PROTO_17]
      122 CAPTURE                          VAL R8
      123 GETIMPORT                        R31 K48 [table.freeze]
      125 NEWTABLE                         R33 0 0
      127 GETTABLEKS                       R36 R8 K49 ["Backends"]
      129 GETTABLEKS                       R36 R36 K50 ["EventIngest"]
      131 FASTCALL2                        TABLE_INSERT R33 R36 ; [+4]
      133 MOVE                             R35 R33
      134 GETIMPORT                        R34 K52 [table.insert]
      136 CALL                             R34 2 0
      137 GETTABLEKS                       R36 R8 K49 ["Backends"]
      139 GETTABLEKS                       R36 R36 K53 ["Points"]
      141 FASTCALL2                        TABLE_INSERT R33 R36 ; [+4]
      143 MOVE                             R35 R33
      144 GETIMPORT                        R34 K52 [table.insert]
      146 CALL                             R34 2 0
      147 MOVE                             R32 R33
      148 CALL                             R31 1 1
      149 GETIMPORT                        R32 K48 [table.freeze]
      151 DUPTABLE                         R33 K59 [{["eventName"], ["backends"], ["description"] = "Incrementing count of user messages sent.", ["lastUpdated"]}]
      152 LOADK                            R34 K60 ["StudioAssistantUserMessageSent"]
      153 SETTABLEKS                       R34 R33 K54 ["eventName"]
      155 NEWTABLE                         R34 0 1
      157 GETTABLEKS                       R35 R8 K49 ["Backends"]
      159 GETTABLEKS                       R35 R35 K61 ["RobloxTelemetryCounter"]
      161 SETLIST                          R34 R35 1 [1]
      163 SETTABLEKS                       R34 R33 K55 ["backends"]
      165 NEWTABLE                         R34 0 3
      167 LOADN                            R35 26
      168 LOADN                            R36 8
      169 LOADN                            R37 19
      170 SETLIST                          R34 R35 3 [1]
      172 SETTABLEKS                       R34 R33 K58 ["lastUpdated"]
      174 CALL                             R32 1 1
      175 GETIMPORT                        R33 K48 [table.freeze]
      177 DUPTABLE                         R34 K65 [{["eventName"] = "CAPMessageSent", ["backends"], ["description"] = "User message sent event with request ID.", ["throttlingPercentage"], ["lastUpdated"]}]
      178 SETTABLEKS                       R31 R34 K55 ["backends"]
      180 GETTABLEKS                       R35 R7 K66 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      182 SETTABLEKS                       R35 R34 K64 ["throttlingPercentage"]
      184 NEWTABLE                         R35 0 3
      186 LOADN                            R36 26
      187 LOADN                            R37 8
      188 LOADN                            R38 19
      189 SETLIST                          R35 R36 3 [1]
      191 SETTABLEKS                       R35 R34 K58 ["lastUpdated"]
      193 CALL                             R33 1 1
      194 GETIMPORT                        R34 K48 [table.freeze]
      196 DUPTABLE                         R35 K69 [{["eventName"] = "CAPAPIKeyAdded", ["backends"], ["description"] = "User added an API key for an LLM provider.", ["lastUpdated"]}]
      197 SETTABLEKS                       R31 R35 K55 ["backends"]
      199 NEWTABLE                         R36 0 3
      201 LOADN                            R37 25
      202 LOADN                            R38 11
      203 LOADN                            R39 4
      204 SETLIST                          R36 R37 3 [1]
      206 SETTABLEKS                       R36 R35 K58 ["lastUpdated"]
      208 CALL                             R34 1 1
      209 GETIMPORT                        R35 K48 [table.freeze]
      211 DUPTABLE                         R36 K72 [{["eventName"] = "CAPUserFeedbackThumbsUp", ["backends"], ["description"] = "User feedback thumbs up event with message context.", ["lastUpdated"]}]
      212 SETTABLEKS                       R31 R36 K55 ["backends"]
      214 NEWTABLE                         R37 0 3
      216 LOADN                            R38 25
      217 LOADN                            R39 7
      218 LOADN                            R40 25
      219 SETLIST                          R37 R38 3 [1]
      221 SETTABLEKS                       R37 R36 K58 ["lastUpdated"]
      223 CALL                             R35 1 1
      224 GETIMPORT                        R36 K48 [table.freeze]
      226 DUPTABLE                         R37 K75 [{["eventName"] = "CAPUserFeedbackThumbsDown", ["backends"], ["description"] = "User feedback thumbs down event with message context.", ["lastUpdated"]}]
      227 SETTABLEKS                       R31 R37 K55 ["backends"]
      229 NEWTABLE                         R38 0 3
      231 LOADN                            R39 25
      232 LOADN                            R40 7
      233 LOADN                            R41 25
      234 SETLIST                          R38 R39 3 [1]
      236 SETTABLEKS                       R38 R37 K58 ["lastUpdated"]
      238 CALL                             R36 1 1
      239 GETIMPORT                        R37 K48 [table.freeze]
      241 DUPTABLE                         R38 K77 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs up events.", ["lastUpdated"]}]
      242 LOADK                            R39 K78 ["StudioAssistantThumbsUp"]
      243 SETTABLEKS                       R39 R38 K54 ["eventName"]
      245 NEWTABLE                         R39 0 1
      247 GETTABLEKS                       R40 R8 K49 ["Backends"]
      249 GETTABLEKS                       R40 R40 K61 ["RobloxTelemetryCounter"]
      251 SETLIST                          R39 R40 1 [1]
      253 SETTABLEKS                       R39 R38 K55 ["backends"]
      255 NEWTABLE                         R39 0 3
      257 LOADN                            R40 25
      258 LOADN                            R41 7
      259 LOADN                            R42 21
      260 SETLIST                          R39 R40 3 [1]
      262 SETTABLEKS                       R39 R38 K58 ["lastUpdated"]
      264 CALL                             R37 1 1
      265 GETIMPORT                        R38 K48 [table.freeze]
      267 DUPTABLE                         R39 K80 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs down events.", ["lastUpdated"]}]
      268 LOADK                            R40 K81 ["StudioAssistantThumbsDown"]
      269 SETTABLEKS                       R40 R39 K54 ["eventName"]
      271 NEWTABLE                         R40 0 1
      273 GETTABLEKS                       R41 R8 K49 ["Backends"]
      275 GETTABLEKS                       R41 R41 K61 ["RobloxTelemetryCounter"]
      277 SETLIST                          R40 R41 1 [1]
      279 SETTABLEKS                       R40 R39 K55 ["backends"]
      281 NEWTABLE                         R40 0 3
      283 LOADN                            R41 25
      284 LOADN                            R42 7
      285 LOADN                            R43 21
      286 SETLIST                          R40 R41 3 [1]
      288 SETTABLEKS                       R40 R39 K58 ["lastUpdated"]
      290 CALL                             R38 1 1
      291 GETIMPORT                        R39 K48 [table.freeze]
      293 DUPTABLE                         R40 K83 [{["eventName"], ["backends"], ["description"] = "Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message.", ["lastUpdated"]}]
      294 LOADK                            R41 K84 ["StudioAssistantInitialResponseLatency"]
      295 SETTABLEKS                       R41 R40 K54 ["eventName"]
      297 NEWTABLE                         R41 0 1
      299 GETTABLEKS                       R42 R8 K49 ["Backends"]
      301 GETTABLEKS                       R42 R42 K85 ["RobloxTelemetryStat"]
      303 SETLIST                          R41 R42 1 [1]
      305 SETTABLEKS                       R41 R40 K55 ["backends"]
      307 NEWTABLE                         R41 0 3
      309 LOADN                            R42 25
      310 LOADN                            R43 7
      311 LOADN                            R44 21
      312 SETLIST                          R41 R42 3 [1]
      314 SETTABLEKS                       R41 R40 K58 ["lastUpdated"]
      316 CALL                             R39 1 1
      317 GETIMPORT                        R40 K48 [table.freeze]
      319 DUPTABLE                         R41 K87 [{["eventName"], ["backends"], ["description"] = "Count of LLM stream notification gaps that were skipped.", ["lastUpdated"]}]
      320 LOADK                            R42 K88 ["StudioAssistantNotificationGapSkippedCount"]
      321 SETTABLEKS                       R42 R41 K54 ["eventName"]
      323 NEWTABLE                         R42 0 1
      325 GETTABLEKS                       R43 R8 K49 ["Backends"]
      327 GETTABLEKS                       R43 R43 K61 ["RobloxTelemetryCounter"]
      329 SETLIST                          R42 R43 1 [1]
      331 SETTABLEKS                       R42 R41 K55 ["backends"]
      333 NEWTABLE                         R42 0 3
      335 LOADN                            R43 26
      336 LOADN                            R44 10
      337 LOADN                            R45 5
      338 SETLIST                          R42 R43 3 [1]
      340 SETTABLEKS                       R42 R41 K58 ["lastUpdated"]
      342 CALL                             R40 1 1
      343 GETIMPORT                        R41 K48 [table.freeze]
      345 DUPTABLE                         R42 K90 [{["eventName"], ["backends"], ["description"] = "User request journey duration in seconds. Time between sending first message to request ended.", ["lastUpdated"]}]
      346 LOADK                            R43 K91 ["StudioAssistantRequestJourney"]
      347 SETTABLEKS                       R43 R42 K54 ["eventName"]
      349 NEWTABLE                         R43 0 1
      351 GETTABLEKS                       R44 R8 K49 ["Backends"]
      353 GETTABLEKS                       R44 R44 K85 ["RobloxTelemetryStat"]
      355 SETLIST                          R43 R44 1 [1]
      357 SETTABLEKS                       R43 R42 K55 ["backends"]
      359 NEWTABLE                         R43 0 3
      361 LOADN                            R44 25
      362 LOADN                            R45 10
      363 LOADN                            R46 22
      364 SETLIST                          R43 R44 3 [1]
      366 SETTABLEKS                       R43 R42 K58 ["lastUpdated"]
      368 CALL                             R41 1 1
      369 GETIMPORT                        R42 K48 [table.freeze]
      371 DUPTABLE                         R43 K94 [{["eventName"] = "CAPRequestJourney", ["backends"], ["description"] = "User request journey detail.", ["lastUpdated"]}]
      372 SETTABLEKS                       R31 R43 K55 ["backends"]
      374 NEWTABLE                         R44 0 3
      376 LOADN                            R45 25
      377 LOADN                            R46 11
      378 LOADN                            R47 1
      379 SETLIST                          R44 R45 3 [1]
      381 SETTABLEKS                       R44 R43 K58 ["lastUpdated"]
      383 CALL                             R42 1 1
      384 GETIMPORT                        R43 K48 [table.freeze]
      386 DUPTABLE                         R44 K96 [{["eventName"], ["backends"], ["description"] = "Incrementing count of error events with error type attached.", ["lastUpdated"]}]
      387 LOADK                            R45 K97 ["StudioAssistantErrorEvent"]
      388 SETTABLEKS                       R45 R44 K54 ["eventName"]
      390 NEWTABLE                         R45 0 1
      392 GETTABLEKS                       R46 R8 K49 ["Backends"]
      394 GETTABLEKS                       R46 R46 K61 ["RobloxTelemetryCounter"]
      396 SETLIST                          R45 R46 1 [1]
      398 SETTABLEKS                       R45 R44 K55 ["backends"]
      400 NEWTABLE                         R45 0 3
      402 LOADN                            R46 25
      403 LOADN                            R47 7
      404 LOADN                            R48 21
      405 SETLIST                          R45 R46 3 [1]
      407 SETTABLEKS                       R45 R44 K58 ["lastUpdated"]
      409 CALL                             R43 1 1
      410 GETIMPORT                        R44 K48 [table.freeze]
      412 DUPTABLE                         R45 K100 [{["eventName"] = "CAPErrorEvent", ["backends"], ["description"] = "Assistant error detail.", ["lastUpdated"]}]
      413 SETTABLEKS                       R31 R45 K55 ["backends"]
      415 NEWTABLE                         R46 0 3
      417 LOADN                            R47 26
      418 LOADN                            R48 7
      419 LOADN                            R49 26
      420 SETLIST                          R46 R47 3 [1]
      422 SETTABLEKS                       R46 R45 K58 ["lastUpdated"]
      424 CALL                             R44 1 1
      425 GETIMPORT                        R45 K48 [table.freeze]
      427 DUPTABLE                         R46 K102 [{["eventName"], ["backends"], ["description"] = "Collection of markdown error events, with markdown attached.", ["throttlingPercentage"], ["lastUpdated"]}]
      428 LOADK                            R47 K103 ["StudioAssistantMarkdownError"]
      429 SETTABLEKS                       R47 R46 K54 ["eventName"]
      431 NEWTABLE                         R47 0 1
      433 GETTABLEKS                       R48 R8 K49 ["Backends"]
      435 GETTABLEKS                       R48 R48 K53 ["Points"]
      437 SETLIST                          R47 R48 1 [1]
      439 SETTABLEKS                       R47 R46 K55 ["backends"]
      441 GETTABLEKS                       R47 R7 K104 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      443 SETTABLEKS                       R47 R46 K64 ["throttlingPercentage"]
      445 NEWTABLE                         R47 0 3
      447 LOADN                            R48 25
      448 LOADN                            R49 7
      449 LOADN                            R50 21
      450 SETLIST                          R47 R48 3 [1]
      452 SETTABLEKS                       R47 R46 K58 ["lastUpdated"]
      454 CALL                             R45 1 1
      455 GETIMPORT                        R46 K48 [table.freeze]
      457 DUPTABLE                         R47 K107 [{["eventName"] = "CAPMessageResubmitted", ["backends"], ["description"] = "User message retry/resubmit event with request ID.", ["lastUpdated"]}]
      458 SETTABLEKS                       R31 R47 K55 ["backends"]
      460 NEWTABLE                         R48 0 3
      462 LOADN                            R49 25
      463 LOADN                            R50 8
      464 LOADN                            R51 7
      465 SETLIST                          R48 R49 3 [1]
      467 SETTABLEKS                       R48 R47 K58 ["lastUpdated"]
      469 CALL                             R46 1 1
      470 GETIMPORT                        R47 K48 [table.freeze]
      472 DUPTABLE                         R48 K110 [{["eventName"] = "CAPStopGeneration", ["backends"], ["description"] = "User stop generation event with request ID.", ["lastUpdated"]}]
      473 SETTABLEKS                       R31 R48 K55 ["backends"]
      475 NEWTABLE                         R49 0 3
      477 LOADN                            R50 25
      478 LOADN                            R51 8
      479 LOADN                            R52 7
      480 SETLIST                          R49 R50 3 [1]
      482 SETTABLEKS                       R49 R48 K58 ["lastUpdated"]
      484 CALL                             R47 1 1
      485 GETIMPORT                        R48 K48 [table.freeze]
      487 DUPTABLE                         R49 K113 [{["eventName"] = "CAPToolEnded", ["backends"], ["description"] = "Tool invocation ended event with request ID and tool name", ["lastUpdated"]}]
      488 SETTABLEKS                       R31 R49 K55 ["backends"]
      490 NEWTABLE                         R50 0 3
      492 LOADN                            R51 25
      493 LOADN                            R52 7
      494 LOADN                            R53 21
      495 SETLIST                          R50 R51 3 [1]
      497 SETTABLEKS                       R50 R49 K58 ["lastUpdated"]
      499 CALL                             R48 1 1
      500 GETIMPORT                        R49 K48 [table.freeze]
      502 DUPTABLE                         R50 K116 [{["eventName"] = "StudioAssistantToolEndedCount", ["backends"], ["description"] = "Count of completed tool invocations.", ["lastUpdated"]}]
      503 NEWTABLE                         R51 0 1
      505 GETTABLEKS                       R52 R8 K49 ["Backends"]
      507 GETTABLEKS                       R52 R52 K61 ["RobloxTelemetryCounter"]
      509 SETLIST                          R51 R52 1 [1]
      511 SETTABLEKS                       R51 R50 K55 ["backends"]
      513 NEWTABLE                         R51 0 3
      515 LOADN                            R52 26
      516 LOADN                            R53 7
      517 LOADN                            R54 24
      518 SETLIST                          R51 R52 3 [1]
      520 SETTABLEKS                       R51 R50 K58 ["lastUpdated"]
      522 CALL                             R49 1 1
      523 GETIMPORT                        R50 K48 [table.freeze]
      525 DUPTABLE                         R51 K119 [{["eventName"] = "CAPToolStarted", ["backends"], ["description"] = "Tool invocation started event with request ID and tool name.", ["lastUpdated"]}]
      526 SETTABLEKS                       R31 R51 K55 ["backends"]
      528 NEWTABLE                         R52 0 3
      530 LOADN                            R53 25
      531 LOADN                            R54 8
      532 LOADN                            R55 7
      533 SETLIST                          R52 R53 3 [1]
      535 SETTABLEKS                       R52 R51 K58 ["lastUpdated"]
      537 CALL                             R50 1 1
      538 GETIMPORT                        R51 K48 [table.freeze]
      540 DUPTABLE                         R52 K122 [{["eventName"] = "StudioAssistantToolStartedCount", ["backends"], ["description"] = "Count of started tool invocations.", ["lastUpdated"]}]
      541 NEWTABLE                         R53 0 1
      543 GETTABLEKS                       R54 R8 K49 ["Backends"]
      545 GETTABLEKS                       R54 R54 K61 ["RobloxTelemetryCounter"]
      547 SETLIST                          R53 R54 1 [1]
      549 SETTABLEKS                       R53 R52 K55 ["backends"]
      551 NEWTABLE                         R53 0 3
      553 LOADN                            R54 26
      554 LOADN                            R55 7
      555 LOADN                            R56 24
      556 SETLIST                          R53 R54 3 [1]
      558 SETTABLEKS                       R53 R52 K58 ["lastUpdated"]
      560 CALL                             R51 1 1
      561 GETIMPORT                        R52 K48 [table.freeze]
      563 DUPTABLE                         R53 K125 [{["eventName"] = "StudioAssistantFailedToolInvocation", ["backends"], ["description"] = "Tool invocation failed before local execution began.", ["lastUpdated"]}]
      564 SETTABLEKS                       R31 R53 K55 ["backends"]
      566 NEWTABLE                         R54 0 3
      568 LOADN                            R55 26
      569 LOADN                            R56 7
      570 LOADN                            R57 24
      571 SETLIST                          R54 R55 3 [1]
      573 SETTABLEKS                       R54 R53 K58 ["lastUpdated"]
      575 CALL                             R52 1 1
      576 GETIMPORT                        R53 K48 [table.freeze]
      578 DUPTABLE                         R54 K128 [{["eventName"] = "StudioAssistantFailedToolInvocationCount", ["backends"], ["description"] = "Count of tool invocations that failed before local execution began.", ["lastUpdated"]}]
      579 NEWTABLE                         R55 0 1
      581 GETTABLEKS                       R56 R8 K49 ["Backends"]
      583 GETTABLEKS                       R56 R56 K61 ["RobloxTelemetryCounter"]
      585 SETLIST                          R55 R56 1 [1]
      587 SETTABLEKS                       R55 R54 K55 ["backends"]
      589 NEWTABLE                         R55 0 3
      591 LOADN                            R56 26
      592 LOADN                            R57 7
      593 LOADN                            R58 24
      594 SETLIST                          R55 R56 3 [1]
      596 SETTABLEKS                       R55 R54 K58 ["lastUpdated"]
      598 CALL                             R53 1 1
      599 GETIMPORT                        R54 K48 [table.freeze]
      601 DUPTABLE                         R55 K131 [{["eventName"] = "CAPToolConfirmationShown", ["backends"], ["description"] = "Tool confirmation dialog shown event with request ID, tool name, and warning message.", ["lastUpdated"]}]
      602 SETTABLEKS                       R31 R55 K55 ["backends"]
      604 NEWTABLE                         R56 0 3
      606 LOADN                            R57 25
      607 LOADN                            R58 9
      608 LOADN                            R59 19
      609 SETLIST                          R56 R57 3 [1]
      611 SETTABLEKS                       R56 R55 K58 ["lastUpdated"]
      613 CALL                             R54 1 1
      614 GETIMPORT                        R55 K48 [table.freeze]
      616 DUPTABLE                         R56 K134 [{["eventName"] = "CAPToolConfirmationResult", ["backends"], ["description"] = "Tool confirmation dialog result event with request ID and user choice.", ["lastUpdated"]}]
      617 SETTABLEKS                       R31 R56 K55 ["backends"]
      619 NEWTABLE                         R57 0 3
      621 LOADN                            R58 25
      622 LOADN                            R59 9
      623 LOADN                            R60 19
      624 SETLIST                          R57 R58 3 [1]
      626 SETTABLEKS                       R57 R56 K58 ["lastUpdated"]
      628 CALL                             R55 1 1
      629 GETIMPORT                        R56 K48 [table.freeze]
      631 DUPTABLE                         R57 K137 [{["eventName"] = "CAPExternalAPIError", ["backends"], ["description"] = "External LLM API error event with request ID, model, and HTTP status code.", ["lastUpdated"]}]
      632 SETTABLEKS                       R31 R57 K55 ["backends"]
      634 NEWTABLE                         R58 0 3
      636 LOADN                            R59 25
      637 LOADN                            R60 12
      638 LOADN                            R61 16
      639 SETLIST                          R58 R59 3 [1]
      641 SETTABLEKS                       R58 R57 K58 ["lastUpdated"]
      643 CALL                             R56 1 1
      644 GETIMPORT                        R57 K48 [table.freeze]
      646 DUPTABLE                         R58 K140 [{["eventName"] = "CAPMeshGenActivated", ["backends"], ["description"] = "Count of MeshGen tool activations.", ["lastUpdated"]}]
      647 NEWTABLE                         R59 0 1
      649 GETTABLEKS                       R60 R8 K49 ["Backends"]
      651 GETTABLEKS                       R60 R60 K61 ["RobloxTelemetryCounter"]
      653 SETLIST                          R59 R60 1 [1]
      655 SETTABLEKS                       R59 R58 K55 ["backends"]
      657 NEWTABLE                         R59 0 3
      659 LOADN                            R60 26
      660 LOADN                            R61 2
      661 LOADN                            R62 6
      662 SETLIST                          R59 R60 3 [1]
      664 SETTABLEKS                       R59 R58 K58 ["lastUpdated"]
      666 CALL                             R57 1 1
      667 GETIMPORT                        R58 K48 [table.freeze]
      669 DUPTABLE                         R59 K143 [{["eventName"] = "CAPMeshGenCompletedSuccess", ["backends"], ["description"] = "Count of successful MeshGen completions.", ["lastUpdated"]}]
      670 NEWTABLE                         R60 0 1
      672 GETTABLEKS                       R61 R8 K49 ["Backends"]
      674 GETTABLEKS                       R61 R61 K61 ["RobloxTelemetryCounter"]
      676 SETLIST                          R60 R61 1 [1]
      678 SETTABLEKS                       R60 R59 K55 ["backends"]
      680 NEWTABLE                         R60 0 3
      682 LOADN                            R61 26
      683 LOADN                            R62 2
      684 LOADN                            R63 6
      685 SETLIST                          R60 R61 3 [1]
      687 SETTABLEKS                       R60 R59 K58 ["lastUpdated"]
      689 CALL                             R58 1 1
      690 GETIMPORT                        R59 K48 [table.freeze]
      692 DUPTABLE                         R60 K146 [{["eventName"] = "CAPMeshGenCompletedFailure", ["backends"], ["description"] = "Count of failed MeshGen completions.", ["lastUpdated"]}]
      693 NEWTABLE                         R61 0 1
      695 GETTABLEKS                       R62 R8 K49 ["Backends"]
      697 GETTABLEKS                       R62 R62 K61 ["RobloxTelemetryCounter"]
      699 SETLIST                          R61 R62 1 [1]
      701 SETTABLEKS                       R61 R60 K55 ["backends"]
      703 NEWTABLE                         R61 0 3
      705 LOADN                            R62 26
      706 LOADN                            R63 2
      707 LOADN                            R64 6
      708 SETLIST                          R61 R62 3 [1]
      710 SETTABLEKS                       R61 R60 K58 ["lastUpdated"]
      712 CALL                             R59 1 1
      713 GETIMPORT                        R60 K48 [table.freeze]
      715 DUPTABLE                         R61 K149 [{["eventName"] = "CAPMeshGenCompleted", ["backends"], ["description"] = "MeshGen generation completed event with details.", ["lastUpdated"]}]
      716 SETTABLEKS                       R31 R61 K55 ["backends"]
      718 NEWTABLE                         R62 0 3
      720 LOADN                            R63 26
      721 LOADN                            R64 2
      722 LOADN                            R65 6
      723 SETLIST                          R62 R63 3 [1]
      725 SETTABLEKS                       R62 R61 K58 ["lastUpdated"]
      727 CALL                             R60 1 1
      728 GETIMPORT                        R61 K48 [table.freeze]
      730 DUPTABLE                         R62 K152 [{["eventName"] = "CAPMeshGenPublishedAssetsSuccess", ["backends"], ["description"] = "Count of successful MeshGen asset publications.", ["lastUpdated"]}]
      731 NEWTABLE                         R63 0 1
      733 GETTABLEKS                       R64 R8 K49 ["Backends"]
      735 GETTABLEKS                       R64 R64 K61 ["RobloxTelemetryCounter"]
      737 SETLIST                          R63 R64 1 [1]
      739 SETTABLEKS                       R63 R62 K55 ["backends"]
      741 NEWTABLE                         R63 0 3
      743 LOADN                            R64 26
      744 LOADN                            R65 2
      745 LOADN                            R66 6
      746 SETLIST                          R63 R64 3 [1]
      748 SETTABLEKS                       R63 R62 K58 ["lastUpdated"]
      750 CALL                             R61 1 1
      751 GETIMPORT                        R62 K48 [table.freeze]
      753 DUPTABLE                         R63 K155 [{["eventName"] = "CAPMeshGenPublishedAssetsFailure", ["backends"], ["description"] = "Count of failed MeshGen asset publications.", ["lastUpdated"]}]
      754 NEWTABLE                         R64 0 1
      756 GETTABLEKS                       R65 R8 K49 ["Backends"]
      758 GETTABLEKS                       R65 R65 K61 ["RobloxTelemetryCounter"]
      760 SETLIST                          R64 R65 1 [1]
      762 SETTABLEKS                       R64 R63 K55 ["backends"]
      764 NEWTABLE                         R64 0 3
      766 LOADN                            R65 26
      767 LOADN                            R66 2
      768 LOADN                            R67 6
      769 SETLIST                          R64 R65 3 [1]
      771 SETTABLEKS                       R64 R63 K58 ["lastUpdated"]
      773 CALL                             R62 1 1
      774 GETIMPORT                        R63 K48 [table.freeze]
      776 DUPTABLE                         R64 K158 [{["eventName"] = "CAPMeshGenPublishedAssets", ["backends"], ["description"] = "MeshGen assets published event with details.", ["lastUpdated"]}]
      777 SETTABLEKS                       R31 R64 K55 ["backends"]
      779 NEWTABLE                         R65 0 3
      781 LOADN                            R66 26
      782 LOADN                            R67 2
      783 LOADN                            R68 6
      784 SETLIST                          R65 R66 3 [1]
      786 SETTABLEKS                       R65 R64 K58 ["lastUpdated"]
      788 CALL                             R63 1 1
      789 GETIMPORT                        R64 K48 [table.freeze]
      791 DUPTABLE                         R65 K161 [{["eventName"] = "CAPMeshGenMeshInsertedSuccess", ["backends"], ["description"] = "Count of successful MeshGen mesh insertions.", ["lastUpdated"]}]
      792 NEWTABLE                         R66 0 1
      794 GETTABLEKS                       R67 R8 K49 ["Backends"]
      796 GETTABLEKS                       R67 R67 K61 ["RobloxTelemetryCounter"]
      798 SETLIST                          R66 R67 1 [1]
      800 SETTABLEKS                       R66 R65 K55 ["backends"]
      802 NEWTABLE                         R66 0 3
      804 LOADN                            R67 26
      805 LOADN                            R68 2
      806 LOADN                            R69 6
      807 SETLIST                          R66 R67 3 [1]
      809 SETTABLEKS                       R66 R65 K58 ["lastUpdated"]
      811 CALL                             R64 1 1
      812 GETIMPORT                        R65 K48 [table.freeze]
      814 DUPTABLE                         R66 K164 [{["eventName"] = "CAPMeshGenMeshInsertedFailure", ["backends"], ["description"] = "Count of failed MeshGen mesh insertions.", ["lastUpdated"]}]
      815 NEWTABLE                         R67 0 1
      817 GETTABLEKS                       R68 R8 K49 ["Backends"]
      819 GETTABLEKS                       R68 R68 K61 ["RobloxTelemetryCounter"]
      821 SETLIST                          R67 R68 1 [1]
      823 SETTABLEKS                       R67 R66 K55 ["backends"]
      825 NEWTABLE                         R67 0 3
      827 LOADN                            R68 26
      828 LOADN                            R69 2
      829 LOADN                            R70 6
      830 SETLIST                          R67 R68 3 [1]
      832 SETTABLEKS                       R67 R66 K58 ["lastUpdated"]
      834 CALL                             R65 1 1
      835 GETIMPORT                        R66 K48 [table.freeze]
      837 DUPTABLE                         R67 K167 [{["eventName"] = "CAPMeshGenMeshInserted", ["backends"], ["description"] = "MeshGen mesh inserted event with details.", ["lastUpdated"]}]
      838 SETTABLEKS                       R31 R67 K55 ["backends"]
      840 NEWTABLE                         R68 0 3
      842 LOADN                            R69 26
      843 LOADN                            R70 2
      844 LOADN                            R71 6
      845 SETLIST                          R68 R69 3 [1]
      847 SETTABLEKS                       R68 R67 K58 ["lastUpdated"]
      849 CALL                             R66 1 1
      850 GETIMPORT                        R67 K48 [table.freeze]
      852 DUPTABLE                         R68 K169 [{["eventName"], ["backends"], ["description"] = "Count of PrimitiveGen completions with success status.", ["lastUpdated"]}]
      853 LOADK                            R69 K170 ["StudioAssistantPrimitiveGenCompletedCount"]
      854 SETTABLEKS                       R69 R68 K54 ["eventName"]
      856 NEWTABLE                         R69 0 1
      858 GETTABLEKS                       R70 R8 K49 ["Backends"]
      860 GETTABLEKS                       R70 R70 K61 ["RobloxTelemetryCounter"]
      862 SETLIST                          R69 R70 1 [1]
      864 SETTABLEKS                       R69 R68 K55 ["backends"]
      866 NEWTABLE                         R69 0 3
      868 LOADN                            R70 26
      869 LOADN                            R71 3
      870 LOADN                            R72 12
      871 SETLIST                          R69 R70 3 [1]
      873 SETTABLEKS                       R69 R68 K58 ["lastUpdated"]
      875 CALL                             R67 1 1
      876 GETIMPORT                        R68 K48 [table.freeze]
      878 DUPTABLE                         R69 K172 [{["eventName"], ["backends"], ["description"] = "PrimitiveGen completion event with generation, prompt, render latency, and dependency details.", ["lastUpdated"]}]
      879 LOADK                            R70 K173 ["StudioAssistantPrimitiveGenCompleted"]
      880 SETTABLEKS                       R70 R69 K54 ["eventName"]
      882 SETTABLEKS                       R31 R69 K55 ["backends"]
      884 NEWTABLE                         R70 0 3
      886 LOADN                            R71 26
      887 LOADN                            R72 3
      888 LOADN                            R73 12
      889 SETLIST                          R70 R71 3 [1]
      891 SETTABLEKS                       R70 R69 K58 ["lastUpdated"]
      893 CALL                             R68 1 1
      894 GETIMPORT                        R69 K48 [table.freeze]
      896 DUPTABLE                         R70 K175 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call started.", ["lastUpdated"]}]
      897 LOADK                            R71 K176 ["StudioAssistantAvatarAutoSetupRequested"]
      898 SETTABLEKS                       R71 R70 K54 ["eventName"]
      900 SETTABLEKS                       R31 R70 K55 ["backends"]
      902 NEWTABLE                         R71 0 3
      904 LOADN                            R72 26
      905 LOADN                            R73 7
      906 LOADN                            R74 22
      907 SETLIST                          R71 R72 3 [1]
      909 SETTABLEKS                       R71 R70 K58 ["lastUpdated"]
      911 CALL                             R69 1 1
      912 GETIMPORT                        R70 K48 [table.freeze]
      914 DUPTABLE                         R71 K178 [{["eventName"], ["backends"], ["description"] = "Auto-setup options used for an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      915 LOADK                            R72 K179 ["StudioAssistantAvatarAutoSetupOptions"]
      916 SETTABLEKS                       R72 R71 K54 ["eventName"]
      918 SETTABLEKS                       R31 R71 K55 ["backends"]
      920 NEWTABLE                         R72 0 3
      922 LOADN                            R73 26
      923 LOADN                            R74 7
      924 LOADN                            R75 22
      925 SETLIST                          R72 R73 3 [1]
      927 SETTABLEKS                       R72 R71 K58 ["lastUpdated"]
      929 CALL                             R70 1 1
      930 GETIMPORT                        R71 K48 [table.freeze]
      932 DUPTABLE                         R72 K181 [{["eventName"], ["backends"], ["description"] = "Engine assigned a job id to an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      933 LOADK                            R73 K182 ["StudioAssistantAvatarAutoSetupJobInitialized"]
      934 SETTABLEKS                       R73 R72 K54 ["eventName"]
      936 SETTABLEKS                       R31 R72 K55 ["backends"]
      938 NEWTABLE                         R73 0 3
      940 LOADN                            R74 26
      941 LOADN                            R75 7
      942 LOADN                            R76 22
      943 SETLIST                          R73 R74 3 [1]
      945 SETTABLEKS                       R73 R72 K58 ["lastUpdated"]
      947 CALL                             R71 1 1
      948 GETIMPORT                        R72 K48 [table.freeze]
      950 DUPTABLE                         R73 K184 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call completed successfully.", ["lastUpdated"]}]
      951 LOADK                            R74 K185 ["StudioAssistantAvatarAutoSetupFinish"]
      952 SETTABLEKS                       R74 R73 K54 ["eventName"]
      954 SETTABLEKS                       R31 R73 K55 ["backends"]
      956 NEWTABLE                         R74 0 3
      958 LOADN                            R75 26
      959 LOADN                            R76 7
      960 LOADN                            R77 22
      961 SETLIST                          R74 R75 3 [1]
      963 SETTABLEKS                       R74 R73 K58 ["lastUpdated"]
      965 CALL                             R72 1 1
      966 GETIMPORT                        R73 K48 [table.freeze]
      968 DUPTABLE                         R74 K187 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call failed before returning a model.", ["lastUpdated"]}]
      969 LOADK                            R75 K188 ["StudioAssistantAvatarAutoSetupFailure"]
      970 SETTABLEKS                       R75 R74 K54 ["eventName"]
      972 SETTABLEKS                       R31 R74 K55 ["backends"]
      974 NEWTABLE                         R75 0 3
      976 LOADN                            R76 26
      977 LOADN                            R77 7
      978 LOADN                            R78 22
      979 SETLIST                          R75 R76 3 [1]
      981 SETTABLEKS                       R75 R74 K58 ["lastUpdated"]
      983 CALL                             R73 1 1
      984 GETIMPORT                        R74 K48 [table.freeze]
      986 DUPTABLE                         R75 K190 [{["eventName"], ["backends"], ["description"] = "Count of successful MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      987 LOADK                            R76 K191 ["StudioAssistantAvatarAutoSetupFinishCount"]
      988 SETTABLEKS                       R76 R75 K54 ["eventName"]
      990 NEWTABLE                         R76 0 1
      992 GETTABLEKS                       R77 R8 K49 ["Backends"]
      994 GETTABLEKS                       R77 R77 K61 ["RobloxTelemetryCounter"]
      996 SETLIST                          R76 R77 1 [1]
      998 SETTABLEKS                       R76 R75 K55 ["backends"]
     1000 NEWTABLE                         R76 0 3
     1002 LOADN                            R77 26
     1003 LOADN                            R78 7
     1004 LOADN                            R79 29
     1005 SETLIST                          R76 R77 3 [1]
     1007 SETTABLEKS                       R76 R75 K58 ["lastUpdated"]
     1009 CALL                             R74 1 1
     1010 GETIMPORT                        R75 K48 [table.freeze]
     1012 DUPTABLE                         R76 K193 [{["eventName"], ["backends"], ["description"] = "Count of failed MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
     1013 LOADK                            R77 K194 ["StudioAssistantAvatarAutoSetupFailureCount"]
     1014 SETTABLEKS                       R77 R76 K54 ["eventName"]
     1016 NEWTABLE                         R77 0 1
     1018 GETTABLEKS                       R78 R8 K49 ["Backends"]
     1020 GETTABLEKS                       R78 R78 K61 ["RobloxTelemetryCounter"]
     1022 SETLIST                          R77 R78 1 [1]
     1024 SETTABLEKS                       R77 R76 K55 ["backends"]
     1026 NEWTABLE                         R77 0 3
     1028 LOADN                            R78 26
     1029 LOADN                            R79 7
     1030 LOADN                            R80 29
     1031 SETLIST                          R77 R78 3 [1]
     1033 SETTABLEKS                       R77 R76 K58 ["lastUpdated"]
     1035 CALL                             R75 1 1
     1036 GETIMPORT                        R76 K48 [table.freeze]
     1038 DUPTABLE                         R77 K196 [{["eventName"], ["backends"], ["description"] = "Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat.", ["lastUpdated"]}]
     1039 LOADK                            R78 K197 ["StudioAssistantGen3DSegmentationRefresh"]
     1040 SETTABLEKS                       R78 R77 K54 ["eventName"]
     1042 NEWTABLE                         R78 0 1
     1044 GETTABLEKS                       R79 R8 K49 ["Backends"]
     1046 GETTABLEKS                       R79 R79 K61 ["RobloxTelemetryCounter"]
     1048 SETLIST                          R78 R79 1 [1]
     1050 SETTABLEKS                       R78 R77 K55 ["backends"]
     1052 NEWTABLE                         R78 0 3
     1054 LOADN                            R79 26
     1055 LOADN                            R80 6
     1056 LOADN                            R81 9
     1057 SETLIST                          R78 R79 3 [1]
     1059 SETTABLEKS                       R78 R77 K58 ["lastUpdated"]
     1061 CALL                             R76 1 1
     1062 GETIMPORT                        R77 K48 [table.freeze]
     1064 DUPTABLE                         R78 K199 [{["eventName"], ["backends"], ["description"] = "Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session.", ["lastUpdated"]}]
     1065 LOADK                            R79 K200 ["StudioAssistantGen3DInstanceDeleted"]
     1066 SETTABLEKS                       R79 R78 K54 ["eventName"]
     1068 SETTABLEKS                       R31 R78 K55 ["backends"]
     1070 NEWTABLE                         R79 0 3
     1072 LOADN                            R80 26
     1073 LOADN                            R81 6
     1074 LOADN                            R82 9
     1075 SETLIST                          R79 R80 3 [1]
     1077 SETTABLEKS                       R79 R78 K58 ["lastUpdated"]
     1079 CALL                             R77 1 1
     1080 GETIMPORT                        R78 K48 [table.freeze]
     1082 DUPTABLE                         R79 K202 [{["eventName"], ["backends"], ["description"] = "Fired once per image-preview batch (MeshGen/PrimitiveGen picker) with the option ids shown to the user.", ["lastUpdated"]}]
     1083 LOADK                            R80 K203 ["StudioAssistantGen3DImageImpression"]
     1084 SETTABLEKS                       R80 R79 K54 ["eventName"]
     1086 SETTABLEKS                       R31 R79 K55 ["backends"]
     1088 NEWTABLE                         R80 0 3
     1090 LOADN                            R81 26
     1091 LOADN                            R82 7
     1092 LOADN                            R83 30
     1093 SETLIST                          R80 R81 3 [1]
     1095 SETTABLEKS                       R80 R79 K58 ["lastUpdated"]
     1097 CALL                             R78 1 1
     1098 GETIMPORT                        R79 K48 [table.freeze]
     1100 DUPTABLE                         R80 K205 [{["eventName"], ["backends"], ["description"] = "Count of image-preview picker actions (select/refresh/refine/back), labelled by action and modelFlow.", ["lastUpdated"]}]
     1101 LOADK                            R81 K206 ["StudioAssistantGen3DImageActionCount"]
     1102 SETTABLEKS                       R81 R80 K54 ["eventName"]
     1104 NEWTABLE                         R81 0 1
     1106 GETTABLEKS                       R82 R8 K49 ["Backends"]
     1108 GETTABLEKS                       R82 R82 K61 ["RobloxTelemetryCounter"]
     1110 SETLIST                          R81 R82 1 [1]
     1112 SETTABLEKS                       R81 R80 K55 ["backends"]
     1114 NEWTABLE                         R81 0 3
     1116 LOADN                            R82 26
     1117 LOADN                            R83 7
     1118 LOADN                            R84 30
     1119 SETLIST                          R81 R82 3 [1]
     1121 SETTABLEKS                       R81 R80 K58 ["lastUpdated"]
     1123 CALL                             R79 1 1
     1124 GETIMPORT                        R80 K48 [table.freeze]
     1126 DUPTABLE                         R81 K208 [{["eventName"], ["backends"], ["description"] = "Fired for each user action taken on the image-preview picker (MeshGen/PrimitiveGen).", ["lastUpdated"]}]
     1127 LOADK                            R82 K209 ["StudioAssistantGen3DImageAction"]
     1128 SETTABLEKS                       R82 R81 K54 ["eventName"]
     1130 SETTABLEKS                       R31 R81 K55 ["backends"]
     1132 NEWTABLE                         R82 0 3
     1134 LOADN                            R83 26
     1135 LOADN                            R84 7
     1136 LOADN                            R85 30
     1137 SETLIST                          R82 R83 3 [1]
     1139 SETTABLEKS                       R82 R81 K58 ["lastUpdated"]
     1141 CALL                             R80 1 1
     1142 GETIMPORT                        R81 K48 [table.freeze]
     1144 DUPTABLE                         R82 K211 [{["eventName"], ["backends"], ["description"] = "Fired per distinct generationId still tagged in the DataModel when a place publish starts. Shared across MeshGen, PrimitiveGen, and future Gen3D-style tools.", ["lastUpdated"]}]
     1145 LOADK                            R83 K212 ["StudioAssistantGen3DAssetPublished"]
     1146 SETTABLEKS                       R83 R82 K54 ["eventName"]
     1148 SETTABLEKS                       R31 R82 K55 ["backends"]
     1150 NEWTABLE                         R83 0 3
     1152 LOADN                            R84 26
     1153 LOADN                            R85 7
     1154 LOADN                            R86 30
     1155 SETLIST                          R83 R84 3 [1]
     1157 SETTABLEKS                       R83 R82 K58 ["lastUpdated"]
     1159 CALL                             R81 1 1
     1160 GETIMPORT                        R82 K48 [table.freeze]
     1162 DUPTABLE                         R83 K214 [{["eventName"], ["backends"], ["description"] = "Count of AI-generated assets still present at publish time, labelled by modelFlow.", ["lastUpdated"]}]
     1163 LOADK                            R84 K215 ["StudioAssistantGen3DAssetPublishedCount"]
     1164 SETTABLEKS                       R84 R83 K54 ["eventName"]
     1166 NEWTABLE                         R84 0 1
     1168 GETTABLEKS                       R85 R8 K49 ["Backends"]
     1170 GETTABLEKS                       R85 R85 K61 ["RobloxTelemetryCounter"]
     1172 SETLIST                          R84 R85 1 [1]
     1174 SETTABLEKS                       R84 R83 K55 ["backends"]
     1176 NEWTABLE                         R84 0 3
     1178 LOADN                            R85 26
     1179 LOADN                            R86 7
     1180 LOADN                            R87 30
     1181 SETLIST                          R84 R85 3 [1]
     1183 SETTABLEKS                       R84 R83 K58 ["lastUpdated"]
     1185 CALL                             R82 1 1
     1186 GETIMPORT                        R83 K48 [table.freeze]
     1188 DUPTABLE                         R84 K217 [{["eventName"], ["backends"], ["description"] = "Fired once per texture generation request (success, failure, or cancel) with the model and camera source used.", ["lastUpdated"]}]
     1189 LOADK                            R85 K218 ["StudioAssistantGen3DTextureGenCompleted"]
     1190 SETTABLEKS                       R85 R84 K54 ["eventName"]
     1192 SETTABLEKS                       R31 R84 K55 ["backends"]
     1194 NEWTABLE                         R85 0 3
     1196 LOADN                            R86 26
     1197 LOADN                            R87 10
     1198 LOADN                            R88 1
     1199 SETLIST                          R85 R86 3 [1]
     1201 SETTABLEKS                       R85 R84 K58 ["lastUpdated"]
     1203 CALL                             R83 1 1
     1204 GETIMPORT                        R84 K48 [table.freeze]
     1206 DUPTABLE                         R85 K220 [{["eventName"], ["backends"], ["description"] = "Count of texture generation requests, labelled by success, failureReason, model, and cameraSource.", ["lastUpdated"]}]
     1207 LOADK                            R86 K221 ["StudioAssistantGen3DTextureGenCompletedCount"]
     1208 SETTABLEKS                       R86 R85 K54 ["eventName"]
     1210 NEWTABLE                         R86 0 1
     1212 GETTABLEKS                       R87 R8 K49 ["Backends"]
     1214 GETTABLEKS                       R87 R87 K61 ["RobloxTelemetryCounter"]
     1216 SETLIST                          R86 R87 1 [1]
     1218 SETTABLEKS                       R86 R85 K55 ["backends"]
     1220 NEWTABLE                         R86 0 3
     1222 LOADN                            R87 26
     1223 LOADN                            R88 10
     1224 LOADN                            R89 1
     1225 SETLIST                          R86 R87 3 [1]
     1227 SETTABLEKS                       R86 R85 K58 ["lastUpdated"]
     1229 CALL                             R84 1 1
     1230 GETIMPORT                        R85 K48 [table.freeze]
     1232 DUPTABLE                         R86 K223 [{["eventName"], ["backends"], ["description"] = "Integration event with action, label, and URL.", ["lastUpdated"]}]
     1233 LOADK                            R87 K224 ["StudioAssistantIntegrationAction"]
     1234 SETTABLEKS                       R87 R86 K54 ["eventName"]
     1236 SETTABLEKS                       R31 R86 K55 ["backends"]
     1238 NEWTABLE                         R87 0 3
     1240 LOADN                            R88 26
     1241 LOADN                            R89 2
     1242 LOADN                            R90 3
     1243 SETLIST                          R87 R88 3 [1]
     1245 SETTABLEKS                       R87 R86 K58 ["lastUpdated"]
     1247 CALL                             R85 1 1
     1248 GETIMPORT                        R86 K48 [table.freeze]
     1250 DUPTABLE                         R87 K226 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1251 LOADK                            R88 K227 ["StudioAssistantExternalServerConnectedEvent"]
     1252 SETTABLEKS                       R88 R87 K54 ["eventName"]
     1254 SETTABLEKS                       R31 R87 K55 ["backends"]
     1256 NEWTABLE                         R88 0 3
     1258 LOADN                            R89 26
     1259 LOADN                            R90 2
     1260 LOADN                            R91 25
     1261 SETLIST                          R88 R89 3 [1]
     1263 SETTABLEKS                       R88 R87 K58 ["lastUpdated"]
     1265 CALL                             R86 1 1
     1266 GETIMPORT                        R87 K48 [table.freeze]
     1268 DUPTABLE                         R88 K226 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1269 LOADK                            R89 K228 ["StudioAssistantExternalServerConnectedCounter"]
     1270 SETTABLEKS                       R89 R88 K54 ["eventName"]
     1272 NEWTABLE                         R89 0 1
     1274 GETTABLEKS                       R90 R8 K49 ["Backends"]
     1276 GETTABLEKS                       R90 R90 K61 ["RobloxTelemetryCounter"]
     1278 SETLIST                          R89 R90 1 [1]
     1280 SETTABLEKS                       R89 R88 K55 ["backends"]
     1282 NEWTABLE                         R89 0 3
     1284 LOADN                            R90 26
     1285 LOADN                            R91 2
     1286 LOADN                            R92 25
     1287 SETLIST                          R89 R90 3 [1]
     1289 SETTABLEKS                       R89 R88 K58 ["lastUpdated"]
     1291 CALL                             R87 1 1
     1292 GETIMPORT                        R88 K48 [table.freeze]
     1294 DUPTABLE                         R89 K230 [{["eventName"], ["backends"], ["description"] = "Studio read of the StudioMCP loopback token. outcome is ok, missing (no file), or threw.", ["lastUpdated"]}]
     1295 LOADK                            R90 K231 ["StudioAssistantMCPProxyTokenReadEvent"]
     1296 SETTABLEKS                       R90 R89 K54 ["eventName"]
     1298 SETTABLEKS                       R31 R89 K55 ["backends"]
     1300 NEWTABLE                         R90 0 3
     1302 LOADN                            R91 26
     1303 LOADN                            R92 9
     1304 LOADN                            R93 18
     1305 SETLIST                          R90 R91 3 [1]
     1307 SETTABLEKS                       R90 R89 K58 ["lastUpdated"]
     1309 CALL                             R88 1 1
     1310 GETIMPORT                        R89 K48 [table.freeze]
     1312 DUPTABLE                         R90 K233 [{["eventName"], ["backends"], ["description"] = "Count of StudioMCP loopback token reads, labelled by outcome (ok, missing, threw).", ["lastUpdated"]}]
     1313 LOADK                            R91 K234 ["StudioAssistantMCPProxyTokenReadCounter"]
     1314 SETTABLEKS                       R91 R90 K54 ["eventName"]
     1316 NEWTABLE                         R91 0 1
     1318 GETTABLEKS                       R92 R8 K49 ["Backends"]
     1320 GETTABLEKS                       R92 R92 K61 ["RobloxTelemetryCounter"]
     1322 SETLIST                          R91 R92 1 [1]
     1324 SETTABLEKS                       R91 R90 K55 ["backends"]
     1326 NEWTABLE                         R91 0 3
     1328 LOADN                            R92 26
     1329 LOADN                            R93 9
     1330 LOADN                            R94 18
     1331 SETLIST                          R91 R92 3 [1]
     1333 SETTABLEKS                       R91 R90 K58 ["lastUpdated"]
     1335 CALL                             R89 1 1
     1336 GETIMPORT                        R90 K48 [table.freeze]
     1338 DUPTABLE                         R91 K236 [{["eventName"], ["backends"], ["description"] = "StudioMCP proxy rejected the Studio WebSocket with 401. Logged once per rejection streak, with whether this Studio sends the token and the last token read outcome.", ["lastUpdated"]}]
     1339 LOADK                            R92 K237 ["StudioAssistantMCPProxyAuthRejectedEvent"]
     1340 SETTABLEKS                       R92 R91 K54 ["eventName"]
     1342 SETTABLEKS                       R31 R91 K55 ["backends"]
     1344 NEWTABLE                         R92 0 3
     1346 LOADN                            R93 26
     1347 LOADN                            R94 10
     1348 LOADN                            R95 2
     1349 SETLIST                          R92 R93 3 [1]
     1351 SETTABLEKS                       R92 R91 K58 ["lastUpdated"]
     1353 CALL                             R90 1 1
     1354 GETIMPORT                        R91 K48 [table.freeze]
     1356 DUPTABLE                         R92 K239 [{["eventName"], ["backends"], ["description"] = "Count of StudioMCP proxy 401 rejection streaks, labelled by whether this Studio sends the token.", ["lastUpdated"]}]
     1357 LOADK                            R93 K240 ["StudioAssistantMCPProxyAuthRejectedCounter"]
     1358 SETTABLEKS                       R93 R92 K54 ["eventName"]
     1360 NEWTABLE                         R93 0 1
     1362 GETTABLEKS                       R94 R8 K49 ["Backends"]
     1364 GETTABLEKS                       R94 R94 K61 ["RobloxTelemetryCounter"]
     1366 SETLIST                          R93 R94 1 [1]
     1368 SETTABLEKS                       R93 R92 K55 ["backends"]
     1370 NEWTABLE                         R93 0 3
     1372 LOADN                            R94 26
     1373 LOADN                            R95 10
     1374 LOADN                            R96 2
     1375 SETLIST                          R93 R94 3 [1]
     1377 SETTABLEKS                       R93 R92 K58 ["lastUpdated"]
     1379 CALL                             R91 1 1
     1380 GETIMPORT                        R92 K48 [table.freeze]
     1382 DUPTABLE                         R93 K243 [{["eventName"] = "CAPQuestionAnswerCompleted", ["backends"], ["description"] = "Question answer tool completed event with full question/answer context.", ["lastUpdated"]}]
     1383 SETTABLEKS                       R31 R93 K55 ["backends"]
     1385 NEWTABLE                         R94 0 3
     1387 LOADN                            R95 26
     1388 LOADN                            R96 4
     1389 LOADN                            R97 1
     1390 SETLIST                          R94 R95 3 [1]
     1392 SETTABLEKS                       R94 R93 K58 ["lastUpdated"]
     1394 CALL                             R92 1 1
     1395 GETIMPORT                        R93 K48 [table.freeze]
     1397 DUPTABLE                         R94 K245 [{["eventName"], ["backends"], ["description"] = "Count of question answer tool completions.", ["lastUpdated"]}]
     1398 LOADK                            R95 K246 ["StudioAssistantQuestionAnswerCompleted"]
     1399 SETTABLEKS                       R95 R94 K54 ["eventName"]
     1401 NEWTABLE                         R95 0 1
     1403 GETTABLEKS                       R96 R8 K49 ["Backends"]
     1405 GETTABLEKS                       R96 R96 K61 ["RobloxTelemetryCounter"]
     1407 SETLIST                          R95 R96 1 [1]
     1409 SETTABLEKS                       R95 R94 K55 ["backends"]
     1411 NEWTABLE                         R95 0 3
     1413 LOADN                            R96 26
     1414 LOADN                            R97 4
     1415 LOADN                            R98 1
     1416 SETLIST                          R95 R96 3 [1]
     1418 SETTABLEKS                       R95 R94 K58 ["lastUpdated"]
     1420 CALL                             R93 1 1
     1421 GETIMPORT                        R94 K48 [table.freeze]
     1423 DUPTABLE                         R95 K249 [{["eventName"] = "CAPPlanDecision", ["backends"], ["description"] = "Plan decision event with full plan context when user accepts or rejects a plan.", ["lastUpdated"]}]
     1424 SETTABLEKS                       R31 R95 K55 ["backends"]
     1426 NEWTABLE                         R96 0 3
     1428 LOADN                            R97 26
     1429 LOADN                            R98 4
     1430 LOADN                            R99 1
     1431 SETLIST                          R96 R97 3 [1]
     1433 SETTABLEKS                       R96 R95 K58 ["lastUpdated"]
     1435 CALL                             R94 1 1
     1436 GETIMPORT                        R95 K48 [table.freeze]
     1438 DUPTABLE                         R96 K251 [{["eventName"], ["backends"], ["description"] = "Count of plan decisions.", ["lastUpdated"]}]
     1439 LOADK                            R97 K252 ["StudioAssistantPlanDecision"]
     1440 SETTABLEKS                       R97 R96 K54 ["eventName"]
     1442 NEWTABLE                         R97 0 1
     1444 GETTABLEKS                       R98 R8 K49 ["Backends"]
     1446 GETTABLEKS                       R98 R98 K61 ["RobloxTelemetryCounter"]
     1448 SETLIST                          R97 R98 1 [1]
     1450 SETTABLEKS                       R97 R96 K55 ["backends"]
     1452 NEWTABLE                         R97 0 3
     1454 LOADN                            R98 26
     1455 LOADN                            R99 4
     1456 LOADN                            R100 1
     1457 SETLIST                          R97 R98 3 [1]
     1459 SETTABLEKS                       R97 R96 K58 ["lastUpdated"]
     1461 CALL                             R95 1 1
     1462 GETIMPORT                        R96 K48 [table.freeze]
     1464 DUPTABLE                         R97 K255 [{["eventName"] = "SBT_MaterialGeneratorSavedMaterial", ["backends"], ["description"] = "Counter to track number of saved materials", ["lastUpdated"]}]
     1465 NEWTABLE                         R98 0 1
     1467 GETTABLEKS                       R99 R8 K49 ["Backends"]
     1469 GETTABLEKS                       R99 R99 K61 ["RobloxTelemetryCounter"]
     1471 SETLIST                          R98 R99 1 [1]
     1473 SETTABLEKS                       R98 R97 K55 ["backends"]
     1475 NEWTABLE                         R98 0 3
     1477 LOADN                            R99 24
     1478 LOADN                            R100 10
     1479 LOADN                            R101 15
     1480 SETLIST                          R98 R99 3 [1]
     1482 SETTABLEKS                       R98 R97 K58 ["lastUpdated"]
     1484 CALL                             R96 1 1
     1485 GETIMPORT                        R97 K48 [table.freeze]
     1487 DUPTABLE                         R98 K257 [{["eventName"], ["backends"], ["description"] = "Thread created event with details.", ["lastUpdated"]}]
     1488 LOADK                            R99 K258 ["StudioAssistantThreadCreated"]
     1489 SETTABLEKS                       R99 R98 K54 ["eventName"]
     1491 SETTABLEKS                       R31 R98 K55 ["backends"]
     1493 NEWTABLE                         R99 0 3
     1495 LOADN                            R100 26
     1496 LOADN                            R101 3
     1497 LOADN                            R102 10
     1498 SETLIST                          R99 R100 3 [1]
     1500 SETTABLEKS                       R99 R98 K58 ["lastUpdated"]
     1502 CALL                             R97 1 1
     1503 GETIMPORT                        R98 K48 [table.freeze]
     1505 DUPTABLE                         R99 K260 [{["eventName"], ["backends"], ["description"] = "Thread named event with details.", ["lastUpdated"]}]
     1506 LOADK                            R100 K261 ["StudioAssistantThreadRenamed"]
     1507 SETTABLEKS                       R100 R99 K54 ["eventName"]
     1509 SETTABLEKS                       R31 R99 K55 ["backends"]
     1511 NEWTABLE                         R100 0 3
     1513 LOADN                            R101 26
     1514 LOADN                            R102 3
     1515 LOADN                            R103 10
     1516 SETLIST                          R100 R101 3 [1]
     1518 SETTABLEKS                       R100 R99 K58 ["lastUpdated"]
     1520 CALL                             R98 1 1
     1521 GETIMPORT                        R99 K48 [table.freeze]
     1523 DUPTABLE                         R100 K263 [{["eventName"], ["backends"], ["description"] = "Thread pinned changed event with details.", ["lastUpdated"]}]
     1524 LOADK                            R101 K264 ["StudioAssistantThreadPinnedChanged"]
     1525 SETTABLEKS                       R101 R100 K54 ["eventName"]
     1527 SETTABLEKS                       R31 R100 K55 ["backends"]
     1529 NEWTABLE                         R101 0 3
     1531 LOADN                            R102 26
     1532 LOADN                            R103 3
     1533 LOADN                            R104 10
     1534 SETLIST                          R101 R102 3 [1]
     1536 SETTABLEKS                       R101 R100 K58 ["lastUpdated"]
     1538 CALL                             R99 1 1
     1539 GETIMPORT                        R100 K48 [table.freeze]
     1541 DUPTABLE                         R101 K266 [{["eventName"], ["backends"], ["description"] = "Thread deleted event with details.", ["lastUpdated"]}]
     1542 LOADK                            R102 K267 ["StudioAssistantThreadDeleted"]
     1543 SETTABLEKS                       R102 R101 K54 ["eventName"]
     1545 SETTABLEKS                       R31 R101 K55 ["backends"]
     1547 NEWTABLE                         R102 0 3
     1549 LOADN                            R103 26
     1550 LOADN                            R104 3
     1551 LOADN                            R105 10
     1552 SETLIST                          R102 R103 3 [1]
     1554 SETTABLEKS                       R102 R101 K58 ["lastUpdated"]
     1556 CALL                             R100 1 1
     1557 GETIMPORT                        R101 K48 [table.freeze]
     1559 DUPTABLE                         R102 K269 [{["eventName"], ["backends"], ["description"] = "Thread duplicated event with details.", ["lastUpdated"]}]
     1560 LOADK                            R103 K270 ["StudioAssistantThreadDuplicated"]
     1561 SETTABLEKS                       R103 R102 K54 ["eventName"]
     1563 SETTABLEKS                       R31 R102 K55 ["backends"]
     1565 NEWTABLE                         R103 0 3
     1567 LOADN                            R104 26
     1568 LOADN                            R105 3
     1569 LOADN                            R106 10
     1570 SETLIST                          R103 R104 3 [1]
     1572 SETTABLEKS                       R103 R102 K58 ["lastUpdated"]
     1574 CALL                             R101 1 1
     1575 GETIMPORT                        R102 K48 [table.freeze]
     1577 DUPTABLE                         R103 K272 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer completed successfully.", ["lastUpdated"]}]
     1578 LOADK                            R104 K273 ["StudioAssistantCompactionSuccess"]
     1579 SETTABLEKS                       R104 R103 K54 ["eventName"]
     1581 SETTABLEKS                       R31 R103 K55 ["backends"]
     1583 NEWTABLE                         R104 0 3
     1585 LOADN                            R105 26
     1586 LOADN                            R106 4
     1587 LOADN                            R107 28
     1588 SETLIST                          R104 R105 3 [1]
     1590 SETTABLEKS                       R104 R103 K58 ["lastUpdated"]
     1592 CALL                             R102 1 1
     1593 GETIMPORT                        R103 K48 [table.freeze]
     1595 DUPTABLE                         R104 K275 [{["eventName"], ["backends"], ["description"] = "Count of successful compaction events.", ["lastUpdated"]}]
     1596 LOADK                            R105 K276 ["StudioAssistantCompactionSuccessCount"]
     1597 SETTABLEKS                       R105 R104 K54 ["eventName"]
     1599 NEWTABLE                         R105 0 1
     1601 GETTABLEKS                       R106 R8 K49 ["Backends"]
     1603 GETTABLEKS                       R106 R106 K61 ["RobloxTelemetryCounter"]
     1605 SETLIST                          R105 R106 1 [1]
     1607 SETTABLEKS                       R105 R104 K55 ["backends"]
     1609 NEWTABLE                         R105 0 3
     1611 LOADN                            R106 26
     1612 LOADN                            R107 4
     1613 LOADN                            R108 28
     1614 SETLIST                          R105 R106 3 [1]
     1616 SETTABLEKS                       R105 R104 K58 ["lastUpdated"]
     1618 CALL                             R103 1 1
     1619 GETIMPORT                        R104 K48 [table.freeze]
     1621 DUPTABLE                         R105 K278 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer failed, fell back to generic summary.", ["lastUpdated"]}]
     1622 LOADK                            R106 K279 ["StudioAssistantCompactionFallback"]
     1623 SETTABLEKS                       R106 R105 K54 ["eventName"]
     1625 SETTABLEKS                       R31 R105 K55 ["backends"]
     1627 NEWTABLE                         R106 0 3
     1629 LOADN                            R107 26
     1630 LOADN                            R108 4
     1631 LOADN                            R109 28
     1632 SETLIST                          R106 R107 3 [1]
     1634 SETTABLEKS                       R106 R105 K58 ["lastUpdated"]
     1636 CALL                             R104 1 1
     1637 GETIMPORT                        R105 K48 [table.freeze]
     1639 DUPTABLE                         R106 K281 [{["eventName"], ["backends"], ["description"] = "Count of compaction fallback events.", ["lastUpdated"]}]
     1640 LOADK                            R107 K282 ["StudioAssistantCompactionFallbackCount"]
     1641 SETTABLEKS                       R107 R106 K54 ["eventName"]
     1643 NEWTABLE                         R107 0 1
     1645 GETTABLEKS                       R108 R8 K49 ["Backends"]
     1647 GETTABLEKS                       R108 R108 K61 ["RobloxTelemetryCounter"]
     1649 SETLIST                          R107 R108 1 [1]
     1651 SETTABLEKS                       R107 R106 K55 ["backends"]
     1653 NEWTABLE                         R107 0 3
     1655 LOADN                            R108 26
     1656 LOADN                            R109 4
     1657 LOADN                            R110 28
     1658 SETLIST                          R107 R108 3 [1]
     1660 SETTABLEKS                       R107 R106 K58 ["lastUpdated"]
     1662 CALL                             R105 1 1
     1663 GETIMPORT                        R106 K48 [table.freeze]
     1665 DUPTABLE                         R107 K284 [{["eventName"], ["backends"], ["description"] = "Quick setup toggled/copied.", ["lastUpdated"]}]
     1666 LOADK                            R108 K285 ["StudioAssistantMCPQuickSetup"]
     1667 SETTABLEKS                       R108 R107 K54 ["eventName"]
     1669 SETTABLEKS                       R31 R107 K55 ["backends"]
     1671 NEWTABLE                         R108 0 3
     1673 LOADN                            R109 26
     1674 LOADN                            R110 4
     1675 LOADN                            R111 15
     1676 SETLIST                          R108 R109 3 [1]
     1678 SETTABLEKS                       R108 R107 K58 ["lastUpdated"]
     1680 CALL                             R106 1 1
     1681 GETIMPORT                        R107 K48 [table.freeze]
     1683 DUPTABLE                         R108 K287 [{["eventName"], ["backends"], ["description"] = "Thread switched event with details.", ["lastUpdated"]}]
     1684 LOADK                            R109 K288 ["StudioAssistantThreadSwitched"]
     1685 SETTABLEKS                       R109 R108 K54 ["eventName"]
     1687 SETTABLEKS                       R31 R108 K55 ["backends"]
     1689 NEWTABLE                         R109 0 3
     1691 LOADN                            R110 26
     1692 LOADN                            R111 3
     1693 LOADN                            R112 10
     1694 SETLIST                          R109 R110 3 [1]
     1696 SETTABLEKS                       R109 R108 K58 ["lastUpdated"]
     1698 CALL                             R107 1 1
     1699 GETIMPORT                        R108 K48 [table.freeze]
     1701 DUPTABLE                         R109 K291 [{["eventName"] = "CAPUserSkillEvent", ["backends"], ["description"] = "User skill created or updated event with skill name and action.", ["lastUpdated"]}]
     1702 SETTABLEKS                       R31 R109 K55 ["backends"]
     1704 NEWTABLE                         R110 0 3
     1706 LOADN                            R111 26
     1707 LOADN                            R112 6
     1708 LOADN                            R113 24
     1709 SETLIST                          R110 R111 3 [1]
     1711 SETTABLEKS                       R110 R109 K58 ["lastUpdated"]
     1713 CALL                             R108 1 1
     1714 GETIMPORT                        R109 K48 [table.freeze]
     1716 DUPTABLE                         R110 K294 [{["eventName"] = "CAPThinkingBlock", ["backends"], ["description"] = "Thinking block completed event with thinking text, subagent attribution.", ["lastUpdated"]}]
     1717 SETTABLEKS                       R31 R110 K55 ["backends"]
     1719 NEWTABLE                         R111 0 3
     1721 LOADN                            R112 26
     1722 LOADN                            R113 7
     1723 LOADN                            R114 22
     1724 SETLIST                          R111 R112 3 [1]
     1726 SETTABLEKS                       R111 R110 K58 ["lastUpdated"]
     1728 CALL                             R109 1 1
     1729 GETIMPORT                        R110 K48 [table.freeze]
     1731 DUPTABLE                         R111 K296 [{["eventName"], ["backends"], ["description"] = "Count of successful persistence operations.", ["lastUpdated"]}]
     1732 LOADK                            R112 K297 ["StudioAssistantPersistenceSuccess"]
     1733 SETTABLEKS                       R112 R111 K54 ["eventName"]
     1735 NEWTABLE                         R112 0 1
     1737 GETTABLEKS                       R113 R8 K49 ["Backends"]
     1739 GETTABLEKS                       R113 R113 K61 ["RobloxTelemetryCounter"]
     1741 SETLIST                          R112 R113 1 [1]
     1743 SETTABLEKS                       R112 R111 K55 ["backends"]
     1745 NEWTABLE                         R112 0 3
     1747 LOADN                            R113 26
     1748 LOADN                            R114 3
     1749 LOADN                            R115 10
     1750 SETLIST                          R112 R113 3 [1]
     1752 SETTABLEKS                       R112 R111 K58 ["lastUpdated"]
     1754 CALL                             R110 1 1
     1755 GETIMPORT                        R111 K48 [table.freeze]
     1757 DUPTABLE                         R112 K299 [{["eventName"], ["backends"], ["description"] = "Count of failed persistence operations.", ["lastUpdated"]}]
     1758 LOADK                            R113 K300 ["StudioAssistantPersistenceFailure"]
     1759 SETTABLEKS                       R113 R112 K54 ["eventName"]
     1761 NEWTABLE                         R113 0 1
     1763 GETTABLEKS                       R114 R8 K49 ["Backends"]
     1765 GETTABLEKS                       R114 R114 K61 ["RobloxTelemetryCounter"]
     1767 SETLIST                          R113 R114 1 [1]
     1769 SETTABLEKS                       R113 R112 K55 ["backends"]
     1771 NEWTABLE                         R113 0 3
     1773 LOADN                            R114 26
     1774 LOADN                            R115 3
     1775 LOADN                            R116 10
     1776 SETLIST                          R113 R114 3 [1]
     1778 SETTABLEKS                       R113 R112 K58 ["lastUpdated"]
     1780 CALL                             R111 1 1
     1781 GETIMPORT                        R112 K48 [table.freeze]
     1783 DUPTABLE                         R113 K302 [{["eventName"], ["backends"], ["description"] = "Persistence operation latency in milliseconds.", ["lastUpdated"]}]
     1784 LOADK                            R114 K303 ["StudioAssistantPersistenceLatencyMs"]
     1785 SETTABLEKS                       R114 R113 K54 ["eventName"]
     1787 NEWTABLE                         R114 0 1
     1789 GETTABLEKS                       R115 R8 K49 ["Backends"]
     1791 GETTABLEKS                       R115 R115 K85 ["RobloxTelemetryStat"]
     1793 SETLIST                          R114 R115 1 [1]
     1795 SETTABLEKS                       R114 R113 K55 ["backends"]
     1797 NEWTABLE                         R114 0 3
     1799 LOADN                            R115 26
     1800 LOADN                            R116 3
     1801 LOADN                            R117 10
     1802 SETLIST                          R114 R115 3 [1]
     1804 SETTABLEKS                       R114 R113 K58 ["lastUpdated"]
     1806 CALL                             R112 1 1
     1807 DUPCLOSURE                       R113 K304 [PROTO_18]
     1808 CAPTURE                          VAL R5
     1809 CAPTURE                          VAL R10
     1810 GETTABLEKS                       R114 R7 K305 ["FStringAssistantGroupNameKey"]
     1812 GETTABLEKS                       R115 R6 K306 ["new"]
     1814 MOVE                             R116 R2
     1815 GETTABLEKS                       R117 R7 K307 ["FStringNewAssistantExperimentLayer"]
     1817 CALL                             R115 2 1
     1818 DUPCLOSURE                       R116 K308 [PROTO_19]
     1819 CAPTURE                          VAL R115
     1820 CAPTURE                          VAL R114
     1821 DUPCLOSURE                       R117 K309 [PROTO_20]
     1822 CAPTURE                          VAL R14
     1823 DUPCLOSURE                       R118 K310 [PROTO_21]
     1824 CAPTURE                          VAL R5
     1825 CAPTURE                          VAL R115
     1826 CAPTURE                          VAL R114
     1827 CAPTURE                          VAL R14
     1828 DUPCLOSURE                       R119 K311 [PROTO_75]
     1829 CAPTURE                          VAL R115
     1830 CAPTURE                          VAL R114
     1831 CAPTURE                          VAL R13
     1832 CAPTURE                          VAL R7
     1833 CAPTURE                          VAL R8
     1834 CAPTURE                          VAL R32
     1835 CAPTURE                          VAL R5
     1836 CAPTURE                          VAL R14
     1837 CAPTURE                          VAL R10
     1838 CAPTURE                          VAL R33
     1839 CAPTURE                          VAL R9
     1840 CAPTURE                          VAL R34
     1841 CAPTURE                          VAL R43
     1842 CAPTURE                          VAL R44
     1843 CAPTURE                          VAL R37
     1844 CAPTURE                          VAL R35
     1845 CAPTURE                          VAL R38
     1846 CAPTURE                          VAL R36
     1847 CAPTURE                          VAL R39
     1848 CAPTURE                          VAL R40
     1849 CAPTURE                          VAL R45
     1850 CAPTURE                          VAL R46
     1851 CAPTURE                          VAL R47
     1852 CAPTURE                          VAL R51
     1853 CAPTURE                          VAL R1
     1854 CAPTURE                          VAL R12
     1855 CAPTURE                          VAL R50
     1856 CAPTURE                          VAL R49
     1857 CAPTURE                          VAL R24
     1858 CAPTURE                          VAL R27
     1859 CAPTURE                          VAL R48
     1860 CAPTURE                          VAL R53
     1861 CAPTURE                          VAL R52
     1862 CAPTURE                          VAL R54
     1863 CAPTURE                          VAL R55
     1864 CAPTURE                          VAL R41
     1865 CAPTURE                          VAL R42
     1866 CAPTURE                          VAL R56
     1867 CAPTURE                          VAL R57
     1868 CAPTURE                          VAL R58
     1869 CAPTURE                          VAL R59
     1870 CAPTURE                          VAL R60
     1871 CAPTURE                          VAL R61
     1872 CAPTURE                          VAL R62
     1873 CAPTURE                          VAL R63
     1874 CAPTURE                          VAL R64
     1875 CAPTURE                          VAL R65
     1876 CAPTURE                          VAL R66
     1877 CAPTURE                          VAL R67
     1878 CAPTURE                          VAL R68
     1879 CAPTURE                          VAL R69
     1880 CAPTURE                          VAL R70
     1881 CAPTURE                          VAL R71
     1882 CAPTURE                          VAL R72
     1883 CAPTURE                          VAL R74
     1884 CAPTURE                          VAL R73
     1885 CAPTURE                          VAL R75
     1886 CAPTURE                          VAL R76
     1887 CAPTURE                          VAL R77
     1888 CAPTURE                          VAL R78
     1889 CAPTURE                          VAL R79
     1890 CAPTURE                          VAL R80
     1891 CAPTURE                          VAL R82
     1892 CAPTURE                          VAL R81
     1893 CAPTURE                          VAL R84
     1894 CAPTURE                          VAL R83
     1895 CAPTURE                          VAL R85
     1896 CAPTURE                          VAL R86
     1897 CAPTURE                          VAL R87
     1898 CAPTURE                          VAL R88
     1899 CAPTURE                          VAL R89
     1900 CAPTURE                          VAL R90
     1901 CAPTURE                          VAL R91
     1902 CAPTURE                          VAL R93
     1903 CAPTURE                          VAL R92
     1904 CAPTURE                          VAL R95
     1905 CAPTURE                          VAL R94
     1906 CAPTURE                          VAL R96
     1907 CAPTURE                          VAL R97
     1908 CAPTURE                          VAL R98
     1909 CAPTURE                          VAL R99
     1910 CAPTURE                          VAL R100
     1911 CAPTURE                          VAL R101
     1912 CAPTURE                          VAL R106
     1913 CAPTURE                          VAL R107
     1914 CAPTURE                          VAL R103
     1915 CAPTURE                          VAL R102
     1916 CAPTURE                          VAL R105
     1917 CAPTURE                          VAL R104
     1918 CAPTURE                          VAL R108
     1919 CAPTURE                          VAL R109
     1920 CAPTURE                          VAL R112
     1921 CAPTURE                          VAL R110
     1922 CAPTURE                          VAL R111
     1923 DUPCLOSURE                       R120 K312 [PROTO_76]
     1924 CAPTURE                          VAL R119
     1925 DUPTABLE                         R121 K315 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1926 SETTABLEKS                       R119 R121 K313 ["makeStudioTelemetryEvents"]
     1928 SETTABLEKS                       R120 R121 K314 ["createStudioEventLogger"]
     1930 RETURN                           R121 1
