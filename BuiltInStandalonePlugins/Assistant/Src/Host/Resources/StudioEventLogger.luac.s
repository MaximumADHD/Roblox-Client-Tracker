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
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K13 ["FFlagAssistantCreditMeteringTelemetry"]
       38 JUMPIFNOT                        R3 ; [+16]
       39 GETTABLEKS                       R3 R0 K14 ["additionalUsageEnabled"]
       41 SETTABLEKS                       R3 R1 K14 ["additionalUsageEnabled"]
       43 GETTABLEKS                       R3 R0 K15 ["dailyLimitSet"]
       45 SETTABLEKS                       R3 R1 K15 ["dailyLimitSet"]
       47 GETTABLEKS                       R3 R0 K14 ["additionalUsageEnabled"]
       49 SETTABLEKS                       R3 R2 K14 ["additionalUsageEnabled"]
       51 GETTABLEKS                       R3 R0 K15 ["dailyLimitSet"]
       53 SETTABLEKS                       R3 R2 K15 ["dailyLimitSet"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       58 GETUPVAL                         R4 2
       59 LOADN                            R5 1
       60 DUPTABLE                         R6 K18 [{"customFields"}]
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K19 ["join"]
       64 MOVE                             R8 R1
       65 DUPTABLE                         R9 K21 [{"experimentationGroup"}]
       66 GETUPVAL                         R11 4
       67 NAMECALL                         R11 R11 K22 ["get"]
       69 CALL                             R11 1 1
       70 JUMPIFNOTEQKNIL                  R11 ; [+3]
       72 LOADNIL                          R10
       73 JUMP                             ; [+16]
       74 GETUPVAL                         R13 5
       75 GETTABLE                         R12 R11 R13
       76 JUMPIFNOTEQKNIL                  R12 ; [+3]
       78 GETTABLEKS                       R12 R11 K23 ["generatedExperimentVariantDistributionVariable"]
       80 JUMPIFNOTEQKNIL                  R12 ; [+3]
       82 LOADNIL                          R10
       83 JUMP                             ; [+6]
       84 FASTCALL1                        TOSTRING R12 ; [+3]
       85 MOVE                             R14 R12
       86 GETIMPORT                        R13 K25 [tostring]
       88 CALL                             R13 1 1
       89 MOVE                             R10 R13
       90 SETTABLEKS                       R10 R9 K20 ["experimentationGroup"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K17 ["customFields"]
       95 CALL                             R3 3 0
       96 GETUPVAL                         R3 3
       97 GETTABLEKS                       R3 R3 K26 ["assign"]
       99 MOVE                             R4 R2
      100 DUPTABLE                         R5 K28 [{"timestampMilliseconds"}]
      101 GETUPVAL                         R6 6
      102 GETTABLEKS                       R6 R6 K29 ["getTimestampMilliseconds"]
      104 CALL                             R6 0 1
      105 SETTABLEKS                       R6 R5 K27 ["timestampMilliseconds"]
      107 CALL                             R3 2 1
      108 GETUPVAL                         R4 1
      109 GETTABLEKS                       R4 R4 K30 ["logEvent"]
      111 GETUPVAL                         R5 7
      112 DUPTABLE                         R6 K32 [{"customFields", "standardizedFields"}]
      113 SETTABLEKS                       R3 R6 K17 ["customFields"]
      115 NEWTABLE                         R8 0 0
      117 GETUPVAL                         R9 8
      118 GETTABLEKS                       R9 R9 K33 ["StandardizedFields"]
      120 LOADNIL                          R10
      121 LOADNIL                          R11
      122 FORGPREP                         R9
      123 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      125 MOVE                             R15 R8
      126 MOVE                             R16 R13
      127 GETIMPORT                        R14 K36 [table.insert]
      129 CALL                             R14 2 0
      130 FORGLOOP                         R9 2 ; [-8]
      132 MOVE                             R7 R8
      133 SETTABLEKS                       R7 R6 K31 ["standardizedFields"]
      135 CALL                             R4 2 0
      136 GETUPVAL                         R4 9
      137 JUMPIFNOT                        R4 ; [+10]
      138 GETUPVAL                         R4 9
      139 LOADK                            R6 K37 ["user_message_sent"]
      140 DUPTABLE                         R7 K38 [{"requestId"}]
      141 GETTABLEKS                       R8 R0 K10 ["messageGuid"]
      143 SETTABLEKS                       R8 R7 K0 ["requestId"]
      145 NAMECALL                         R4 R4 K39 ["LogEventAsync"]
      147 CALL                             R4 3 0
      148 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R2 K7 [{[1], ["conversationId"], ["threadId"], ["acpSessionId"], ["message"], ["role"] = "MCPAssistant"}]
        1 GETTABLEKS                       R3 R0 K8 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K9 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["threadId"]
       11 SETTABLEKS                       R3 R2 K2 ["threadId"]
       13 GETTABLEKS                       R3 R0 K3 ["acpSessionId"]
       15 SETTABLEKS                       R3 R2 K3 ["acpSessionId"]
       17 GETTABLEKS                       R3 R0 K4 ["message"]
       19 SETTABLEKS                       R3 R2 K4 ["message"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K10 ["assign"]
       24 MOVE                             R4 R2
       25 DUPTABLE                         R5 K12 [{"timestampMilliseconds"}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K13 ["getTimestampMilliseconds"]
       29 CALL                             R6 0 1
       30 SETTABLEKS                       R6 R5 K11 ["timestampMilliseconds"]
       32 CALL                             R3 2 1
       33 MOVE                             R1 R3
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K14 ["logEvent"]
       37 GETUPVAL                         R3 3
       38 DUPTABLE                         R4 K17 [{"customFields", "standardizedFields"}]
       39 SETTABLEKS                       R1 R4 K15 ["customFields"]
       41 NEWTABLE                         R6 0 0
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K18 ["StandardizedFields"]
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       51 MOVE                             R13 R6
       52 MOVE                             R14 R11
       53 GETIMPORT                        R12 K21 [table.insert]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R7 2 ; [-8]
       58 MOVE                             R5 R6
       59 SETTABLEKS                       R5 R4 K16 ["standardizedFields"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

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
       13 DUPTABLE                         R10 K7 [{"experimentationGroup"}]
       14 GETUPVAL                         R12 3
       15 NAMECALL                         R12 R12 K8 ["get"]
       17 CALL                             R12 1 1
       18 JUMPIFNOTEQKNIL                  R12 ; [+3]
       20 LOADNIL                          R11
       21 JUMP                             ; [+16]
       22 GETUPVAL                         R14 4
       23 GETTABLE                         R13 R12 R14
       24 JUMPIFNOTEQKNIL                  R13 ; [+3]
       26 GETTABLEKS                       R13 R12 K9 ["generatedExperimentVariantDistributionVariable"]
       28 JUMPIFNOTEQKNIL                  R13 ; [+3]
       30 LOADNIL                          R11
       31 JUMP                             ; [+6]
       32 FASTCALL1                        TOSTRING R13 ; [+3]
       33 MOVE                             R15 R13
       34 GETIMPORT                        R14 K11 [tostring]
       36 CALL                             R14 1 1
       37 MOVE                             R11 R14
       38 SETTABLEKS                       R11 R10 K6 ["experimentationGroup"]
       40 CALL                             R8 2 1
       41 MOVE                             R6 R8
       42 SETTABLEKS                       R6 R5 K1 ["customFields"]
       44 CALL                             R2 3 0
       45 DUPTABLE                         R3 K16 [{"requestId", "conversationId", "threadId", "acpSessionId", "errorType"}]
       46 MOVE                             R4 R1
       47 JUMPIFNOT                        R4 ; [+2]
       48 GETTABLEKS                       R4 R1 K12 ["requestId"]
       50 SETTABLEKS                       R4 R3 K12 ["requestId"]
       52 MOVE                             R4 R1
       53 JUMPIFNOT                        R4 ; [+2]
       54 GETTABLEKS                       R4 R1 K13 ["conversationId"]
       56 SETTABLEKS                       R4 R3 K13 ["conversationId"]
       58 MOVE                             R4 R1
       59 JUMPIFNOT                        R4 ; [+2]
       60 GETTABLEKS                       R4 R1 K14 ["threadId"]
       62 SETTABLEKS                       R4 R3 K14 ["threadId"]
       64 MOVE                             R4 R1
       65 JUMPIFNOT                        R4 ; [+2]
       66 GETTABLEKS                       R4 R1 K15 ["acpSessionId"]
       68 SETTABLEKS                       R4 R3 K15 ["acpSessionId"]
       70 SETTABLEKS                       R0 R3 K3 ["errorType"]
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R4 R4 K17 ["assign"]
       75 MOVE                             R5 R3
       76 DUPTABLE                         R6 K19 [{"timestampMilliseconds"}]
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K20 ["getTimestampMilliseconds"]
       80 CALL                             R7 0 1
       81 SETTABLEKS                       R7 R6 K18 ["timestampMilliseconds"]
       83 CALL                             R4 2 1
       84 MOVE                             R2 R4
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K21 ["logEvent"]
       88 GETUPVAL                         R4 6
       89 DUPTABLE                         R5 K23 [{"customFields", "standardizedFields"}]
       90 SETTABLEKS                       R2 R5 K1 ["customFields"]
       92 NEWTABLE                         R7 0 0
       94 GETUPVAL                         R8 7
       95 GETTABLEKS                       R8 R8 K24 ["StandardizedFields"]
       97 LOADNIL                          R9
       98 LOADNIL                          R10
       99 FORGPREP                         R8
      100 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      102 MOVE                             R14 R7
      103 MOVE                             R15 R12
      104 GETIMPORT                        R13 K27 [table.insert]
      106 CALL                             R13 2 0
      107 FORGLOOP                         R8 2 ; [-8]
      109 MOVE                             R6 R7
      110 SETTABLEKS                       R6 R5 K22 ["standardizedFields"]
      112 CALL                             R3 2 0
      113 RETURN                           R0 0

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
       43 DUPTABLE                         R9 K14 [{"experimentationGroup"}]
       44 GETUPVAL                         R11 3
       45 NAMECALL                         R11 R11 K15 ["get"]
       47 CALL                             R11 1 1
       48 JUMPIFNOTEQKNIL                  R11 ; [+3]
       50 LOADNIL                          R10
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R13 4
       53 GETTABLE                         R12 R11 R13
       54 JUMPIFNOTEQKNIL                  R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K16 ["generatedExperimentVariantDistributionVariable"]
       58 JUMPIFNOTEQKNIL                  R12 ; [+3]
       60 LOADNIL                          R10
       61 JUMP                             ; [+6]
       62 FASTCALL1                        TOSTRING R12 ; [+3]
       63 MOVE                             R14 R12
       64 GETIMPORT                        R13 K18 [tostring]
       66 CALL                             R13 1 1
       67 MOVE                             R10 R13
       68 SETTABLEKS                       R10 R9 K13 ["experimentationGroup"]
       70 CALL                             R7 2 1
       71 MOVE                             R5 R7
       72 SETTABLEKS                       R5 R4 K1 ["customFields"]
       74 CALL                             R1 3 0
       75 DUPTABLE                         R2 K25 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       76 GETTABLEKS                       R3 R0 K26 ["messageGuid"]
       78 SETTABLEKS                       R3 R2 K19 ["requestId"]
       80 GETTABLEKS                       R3 R0 K27 ["sessionId"]
       82 SETTABLEKS                       R3 R2 K20 ["conversationId"]
       84 GETTABLEKS                       R3 R0 K21 ["toolId"]
       86 SETTABLEKS                       R3 R2 K21 ["toolId"]
       88 GETTABLEKS                       R3 R0 K3 ["toolName"]
       90 SETTABLEKS                       R3 R2 K3 ["toolName"]
       92 GETTABLEKS                       R3 R0 K3 ["toolName"]
       94 SETTABLEKS                       R3 R2 K22 ["toolType"]
       96 GETTABLEKS                       R3 R0 K4 ["isStudioTool"]
       98 SETTABLEKS                       R3 R2 K4 ["isStudioTool"]
      100 GETTABLEKS                       R3 R0 K5 ["serverName"]
      102 SETTABLEKS                       R3 R2 K5 ["serverName"]
      104 GETTABLEKS                       R3 R0 K6 ["clientName"]
      106 SETTABLEKS                       R3 R2 K6 ["clientName"]
      108 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
      110 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
      112 GETTABLEKS                       R3 R0 K8 ["isSlashCommand"]
      114 SETTABLEKS                       R3 R2 K8 ["isSlashCommand"]
      116 GETTABLEKS                       R3 R0 K9 ["assistantMode"]
      118 SETTABLEKS                       R3 R2 K9 ["assistantMode"]
      120 GETTABLEKS                       R3 R0 K10 ["currentSubagent"]
      122 SETTABLEKS                       R3 R2 K10 ["currentSubagent"]
      124 GETTABLEKS                       R3 R0 K23 ["parentMessageGuid"]
      126 SETTABLEKS                       R3 R2 K23 ["parentMessageGuid"]
      128 GETTABLEKS                       R3 R0 K24 ["parentToolId"]
      130 SETTABLEKS                       R3 R2 K24 ["parentToolId"]
      132 GETUPVAL                         R3 2
      133 GETTABLEKS                       R3 R3 K28 ["assign"]
      135 MOVE                             R4 R2
      136 DUPTABLE                         R5 K30 [{"timestampMilliseconds"}]
      137 GETUPVAL                         R6 5
      138 GETTABLEKS                       R6 R6 K31 ["getTimestampMilliseconds"]
      140 CALL                             R6 0 1
      141 SETTABLEKS                       R6 R5 K29 ["timestampMilliseconds"]
      143 CALL                             R3 2 1
      144 MOVE                             R1 R3
      145 GETTABLEKS                       R3 R0 K32 ["input"]
      147 JUMPIFNOTEQKNIL                  R3 ; [+3]
      149 LOADNIL                          R2
      150 JUMP                             ; [+10]
      151 GETIMPORT                        R4 K34 [pcall]
      153 NEWCLOSURE                       R5 P0
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          VAL R3
      156 CALL                             R4 1 2
      157 JUMPIF                           R4 ; [+2]
      158 LOADNIL                          R2
      159 JUMP                             ; [+1]
      160 MOVE                             R2 R5
      161 JUMPIFNOTEQKNIL                  R2 ; [+3]
      163 LOADNIL                          R3
      164 JUMP                             ; [+13]
      165 LENGTH                           R4 R2
      166 LOADN                            R5 500
      167 JUMPIFNOTLE                      R4 R5 ; [+3]
      169 MOVE                             R3 R2
      170 JUMP                             ; [+7]
      171 GETUPVAL                         R4 7
      172 MOVE                             R5 R2
      173 LOADN                            R6 500
      174 CALL                             R4 2 1
      175 MOVE                             R5 R4
      176 LOADK                            R6 K35 ["..."]
      177 CONCAT                           R3 R5 R6
      178 SETTABLEKS                       R3 R1 K36 ["toolUseInput"]
      180 JUMPIFNOT                        R2 ; [+2]
      181 LENGTH                           R3 R2
      182 JUMP                             ; [+1]
      183 LOADNIL                          R3
      184 SETTABLEKS                       R3 R1 K37 ["toolUseInputCharacters"]
      186 GETUPVAL                         R3 0
      187 GETTABLEKS                       R3 R3 K38 ["logEvent"]
      189 GETUPVAL                         R4 8
      190 DUPTABLE                         R5 K40 [{"customFields", "standardizedFields"}]
      191 SETTABLEKS                       R1 R5 K1 ["customFields"]
      193 NEWTABLE                         R7 0 0
      195 GETUPVAL                         R8 9
      196 GETTABLEKS                       R8 R8 K41 ["StandardizedFields"]
      198 LOADNIL                          R9
      199 LOADNIL                          R10
      200 FORGPREP                         R8
      201 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      203 MOVE                             R14 R7
      204 MOVE                             R15 R12
      205 GETIMPORT                        R13 K44 [table.insert]
      207 CALL                             R13 2 0
      208 FORGLOOP                         R8 2 ; [-8]
      210 MOVE                             R6 R7
      211 SETTABLEKS                       R6 R5 K39 ["standardizedFields"]
      213 CALL                             R3 2 0
      214 RETURN                           R0 0

PROTO_32:
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
       47 DUPTABLE                         R9 K15 [{"experimentationGroup"}]
       48 GETUPVAL                         R11 3
       49 NAMECALL                         R11 R11 K16 ["get"]
       51 CALL                             R11 1 1
       52 JUMPIFNOTEQKNIL                  R11 ; [+3]
       54 LOADNIL                          R10
       55 JUMP                             ; [+16]
       56 GETUPVAL                         R13 4
       57 GETTABLE                         R12 R11 R13
       58 JUMPIFNOTEQKNIL                  R12 ; [+3]
       60 GETTABLEKS                       R12 R11 K17 ["generatedExperimentVariantDistributionVariable"]
       62 JUMPIFNOTEQKNIL                  R12 ; [+3]
       64 LOADNIL                          R10
       65 JUMP                             ; [+6]
       66 FASTCALL1                        TOSTRING R12 ; [+3]
       67 MOVE                             R14 R12
       68 GETIMPORT                        R13 K19 [tostring]
       70 CALL                             R13 1 1
       71 MOVE                             R10 R13
       72 SETTABLEKS                       R10 R9 K14 ["experimentationGroup"]
       74 CALL                             R7 2 1
       75 MOVE                             R5 R7
       76 SETTABLEKS                       R5 R4 K1 ["customFields"]
       78 CALL                             R1 3 0
       79 DUPTABLE                         R2 K29 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       80 GETTABLEKS                       R3 R0 K30 ["messageGuid"]
       82 SETTABLEKS                       R3 R2 K20 ["requestId"]
       84 GETTABLEKS                       R3 R0 K31 ["sessionId"]
       86 SETTABLEKS                       R3 R2 K21 ["conversationId"]
       88 GETTABLEKS                       R3 R0 K22 ["toolId"]
       90 SETTABLEKS                       R3 R2 K22 ["toolId"]
       92 GETTABLEKS                       R3 R0 K3 ["toolName"]
       94 SETTABLEKS                       R3 R2 K3 ["toolName"]
       96 GETTABLEKS                       R3 R0 K3 ["toolName"]
       98 SETTABLEKS                       R3 R2 K23 ["toolType"]
      100 GETTABLEKS                       R3 R0 K4 ["isStudioTool"]
      102 SETTABLEKS                       R3 R2 K4 ["isStudioTool"]
      104 GETTABLEKS                       R3 R0 K9 ["isError"]
      106 SETTABLEKS                       R3 R2 K9 ["isError"]
      108 GETTABLEKS                       R3 R0 K24 ["startTime"]
      110 SETTABLEKS                       R3 R2 K24 ["startTime"]
      112 GETTABLEKS                       R3 R0 K25 ["startTimeAfterConfirmation"]
      114 SETTABLEKS                       R3 R2 K25 ["startTimeAfterConfirmation"]
      116 GETTABLEKS                       R3 R0 K26 ["endTime"]
      118 SETTABLEKS                       R3 R2 K26 ["endTime"]
      120 GETTABLEKS                       R3 R0 K5 ["serverName"]
      122 SETTABLEKS                       R3 R2 K5 ["serverName"]
      124 GETTABLEKS                       R3 R0 K6 ["clientName"]
      126 SETTABLEKS                       R3 R2 K6 ["clientName"]
      128 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
      130 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
      132 GETTABLEKS                       R3 R0 K8 ["isSlashCommand"]
      134 SETTABLEKS                       R3 R2 K8 ["isSlashCommand"]
      136 GETTABLEKS                       R3 R0 K10 ["assistantMode"]
      138 SETTABLEKS                       R3 R2 K10 ["assistantMode"]
      140 GETTABLEKS                       R3 R0 K11 ["currentSubagent"]
      142 SETTABLEKS                       R3 R2 K11 ["currentSubagent"]
      144 GETTABLEKS                       R3 R0 K27 ["parentMessageGuid"]
      146 SETTABLEKS                       R3 R2 K27 ["parentMessageGuid"]
      148 GETTABLEKS                       R3 R0 K28 ["parentToolId"]
      150 SETTABLEKS                       R3 R2 K28 ["parentToolId"]
      152 GETUPVAL                         R3 2
      153 GETTABLEKS                       R3 R3 K32 ["assign"]
      155 MOVE                             R4 R2
      156 DUPTABLE                         R5 K34 [{"timestampMilliseconds"}]
      157 GETUPVAL                         R6 5
      158 GETTABLEKS                       R6 R6 K35 ["getTimestampMilliseconds"]
      160 CALL                             R6 0 1
      161 SETTABLEKS                       R6 R5 K33 ["timestampMilliseconds"]
      163 CALL                             R3 2 1
      164 MOVE                             R1 R3
      165 GETUPVAL                         R2 6
      166 GETTABLEKS                       R3 R0 K36 ["toolResultContent"]
      168 CALL                             R2 1 1
      169 GETUPVAL                         R3 7
      170 GETTABLEKS                       R4 R0 K36 ["toolResultContent"]
      172 CALL                             R3 1 1
      173 SETTABLEKS                       R2 R1 K36 ["toolResultContent"]
      175 JUMPIFNOT                        R2 ; [+2]
      176 LENGTH                           R4 R2
      177 JUMP                             ; [+1]
      178 LOADNIL                          R4
      179 SETTABLEKS                       R4 R1 K37 ["toolResultSerializedCharacters"]
      181 GETTABLEKS                       R4 R3 K38 ["toolResultTextContentCount"]
      183 SETTABLEKS                       R4 R1 K38 ["toolResultTextContentCount"]
      185 GETTABLEKS                       R4 R3 K39 ["toolResultImages"]
      187 SETTABLEKS                       R4 R1 K39 ["toolResultImages"]
      189 GETTABLEKS                       R4 R3 K40 ["toolResultContentItemCount"]
      191 SETTABLEKS                       R4 R1 K40 ["toolResultContentItemCount"]
      193 GETUPVAL                         R4 0
      194 GETTABLEKS                       R4 R4 K41 ["logEvent"]
      196 GETUPVAL                         R5 8
      197 DUPTABLE                         R6 K43 [{"customFields", "standardizedFields"}]
      198 SETTABLEKS                       R1 R6 K1 ["customFields"]
      200 NEWTABLE                         R8 0 0
      202 GETUPVAL                         R9 9
      203 GETTABLEKS                       R9 R9 K44 ["StandardizedFields"]
      205 LOADNIL                          R10
      206 LOADNIL                          R11
      207 FORGPREP                         R9
      208 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      210 MOVE                             R15 R8
      211 MOVE                             R16 R13
      212 GETIMPORT                        R14 K47 [table.insert]
      214 CALL                             R14 2 0
      215 FORGLOOP                         R9 2 ; [-8]
      217 MOVE                             R7 R8
      218 SETTABLEKS                       R7 R6 K42 ["standardizedFields"]
      220 CALL                             R4 2 0
      221 RETURN                           R0 0

PROTO_33:
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
       27 DUPTABLE                         R9 K10 [{"experimentationGroup"}]
       28 GETUPVAL                         R11 3
       29 NAMECALL                         R11 R11 K11 ["get"]
       31 CALL                             R11 1 1
       32 JUMPIFNOTEQKNIL                  R11 ; [+3]
       34 LOADNIL                          R10
       35 JUMP                             ; [+16]
       36 GETUPVAL                         R13 4
       37 GETTABLE                         R12 R11 R13
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 GETTABLEKS                       R12 R11 K12 ["generatedExperimentVariantDistributionVariable"]
       42 JUMPIFNOTEQKNIL                  R12 ; [+3]
       44 LOADNIL                          R10
       45 JUMP                             ; [+6]
       46 FASTCALL1                        TOSTRING R12 ; [+3]
       47 MOVE                             R14 R12
       48 GETIMPORT                        R13 K14 [tostring]
       50 CALL                             R13 1 1
       51 MOVE                             R10 R13
       52 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       54 CALL                             R7 2 1
       55 MOVE                             R5 R7
       56 SETTABLEKS                       R5 R4 K1 ["customFields"]
       58 CALL                             R1 3 0
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K15 ["logEvent"]
       62 GETUPVAL                         R2 5
       63 DUPTABLE                         R3 K17 [{"customFields", "standardizedFields"}]
       64 DUPTABLE                         R5 K23 [{"requestId", "conversationId", "toolId", "toolName", "isStudioTool", "startTime", "endTime", "failureReason", "assistantMode"}]
       65 GETTABLEKS                       R6 R0 K24 ["messageGuid"]
       67 SETTABLEKS                       R6 R5 K18 ["requestId"]
       69 GETTABLEKS                       R6 R0 K25 ["sessionId"]
       71 SETTABLEKS                       R6 R5 K19 ["conversationId"]
       73 GETTABLEKS                       R6 R0 K20 ["toolId"]
       75 SETTABLEKS                       R6 R5 K20 ["toolId"]
       77 GETTABLEKS                       R6 R0 K3 ["toolName"]
       79 SETTABLEKS                       R6 R5 K3 ["toolName"]
       81 GETTABLEKS                       R6 R0 K4 ["isStudioTool"]
       83 SETTABLEKS                       R6 R5 K4 ["isStudioTool"]
       85 GETTABLEKS                       R6 R0 K21 ["startTime"]
       87 SETTABLEKS                       R6 R5 K21 ["startTime"]
       89 GETTABLEKS                       R6 R0 K22 ["endTime"]
       91 SETTABLEKS                       R6 R5 K22 ["endTime"]
       93 GETTABLEKS                       R6 R0 K5 ["failureReason"]
       95 SETTABLEKS                       R6 R5 K5 ["failureReason"]
       97 GETTABLEKS                       R6 R0 K6 ["assistantMode"]
       99 SETTABLEKS                       R6 R5 K6 ["assistantMode"]
      101 GETUPVAL                         R6 2
      102 GETTABLEKS                       R6 R6 K26 ["assign"]
      104 MOVE                             R7 R5
      105 DUPTABLE                         R8 K28 [{"timestampMilliseconds"}]
      106 GETUPVAL                         R9 6
      107 GETTABLEKS                       R9 R9 K29 ["getTimestampMilliseconds"]
      109 CALL                             R9 0 1
      110 SETTABLEKS                       R9 R8 K27 ["timestampMilliseconds"]
      112 CALL                             R6 2 1
      113 MOVE                             R4 R6
      114 SETTABLEKS                       R4 R3 K1 ["customFields"]
      116 NEWTABLE                         R5 0 0
      118 GETUPVAL                         R6 7
      119 GETTABLEKS                       R6 R6 K30 ["StandardizedFields"]
      121 LOADNIL                          R7
      122 LOADNIL                          R8
      123 FORGPREP                         R6
      124 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      126 MOVE                             R12 R5
      127 MOVE                             R13 R10
      128 GETIMPORT                        R11 K33 [table.insert]
      130 CALL                             R11 2 0
      131 FORGLOOP                         R6 2 ; [-8]
      133 MOVE                             R4 R5
      134 SETTABLEKS                       R4 R3 K16 ["standardizedFields"]
      136 CALL                             R1 2 0
      137 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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
       48 DUPTABLE                         R2 K18 [{"requestId", "conversationId", "threadId", "acpSessionId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
       49 GETTABLEKS                       R3 R0 K19 ["messageGuid"]
       51 SETTABLEKS                       R3 R2 K4 ["requestId"]
       53 GETTABLEKS                       R3 R0 K20 ["sessionId"]
       55 SETTABLEKS                       R3 R2 K14 ["conversationId"]
       57 GETTABLEKS                       R3 R0 K15 ["threadId"]
       59 SETTABLEKS                       R3 R2 K15 ["threadId"]
       61 GETTABLEKS                       R3 R0 K16 ["acpSessionId"]
       63 SETTABLEKS                       R3 R2 K16 ["acpSessionId"]
       65 GETTABLEKS                       R3 R0 K6 ["requestEndReason"]
       67 SETTABLEKS                       R3 R2 K6 ["requestEndReason"]
       69 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
       71 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       73 GETTABLEKS                       R3 R0 K17 ["message"]
       75 SETTABLEKS                       R3 R2 K17 ["message"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K10 ["get"]
       80 CALL                             R4 1 1
       81 JUMPIFNOTEQKNIL                  R4 ; [+3]
       83 LOADNIL                          R3
       84 JUMP                             ; [+16]
       85 GETUPVAL                         R6 4
       86 GETTABLE                         R5 R4 R6
       87 JUMPIFNOTEQKNIL                  R5 ; [+3]
       89 GETTABLEKS                       R5 R4 K11 ["generatedExperimentVariantDistributionVariable"]
       91 JUMPIFNOTEQKNIL                  R5 ; [+3]
       93 LOADNIL                          R3
       94 JUMP                             ; [+6]
       95 FASTCALL1                        TOSTRING R5 ; [+3]
       96 MOVE                             R7 R5
       97 GETIMPORT                        R6 K13 [tostring]
       99 CALL                             R6 1 1
      100 MOVE                             R3 R6
      101 SETTABLEKS                       R3 R2 K8 ["experimentationGroup"]
      103 GETUPVAL                         R3 2
      104 GETTABLEKS                       R3 R3 K21 ["assign"]
      106 MOVE                             R4 R2
      107 DUPTABLE                         R5 K23 [{"timestampMilliseconds"}]
      108 GETUPVAL                         R6 5
      109 GETTABLEKS                       R6 R6 K24 ["getTimestampMilliseconds"]
      111 CALL                             R6 0 1
      112 SETTABLEKS                       R6 R5 K22 ["timestampMilliseconds"]
      114 CALL                             R3 2 1
      115 MOVE                             R1 R3
      116 GETUPVAL                         R2 0
      117 GETTABLEKS                       R2 R2 K25 ["logEvent"]
      119 GETUPVAL                         R3 6
      120 DUPTABLE                         R4 K27 [{"customFields", "standardizedFields"}]
      121 SETTABLEKS                       R1 R4 K2 ["customFields"]
      123 NEWTABLE                         R6 0 0
      125 GETUPVAL                         R7 7
      126 GETTABLEKS                       R7 R7 K28 ["StandardizedFields"]
      128 LOADNIL                          R8
      129 LOADNIL                          R9
      130 FORGPREP                         R7
      131 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      133 MOVE                             R13 R6
      134 MOVE                             R14 R11
      135 GETIMPORT                        R12 K31 [table.insert]
      137 CALL                             R12 2 0
      138 FORGLOOP                         R7 2 ; [-8]
      140 MOVE                             R5 R6
      141 SETTABLEKS                       R5 R4 K26 ["standardizedFields"]
      143 CALL                             R2 2 0
      144 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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
       60 DUPTABLE                         R11 K20 [{"experimentationGroup"}]
       61 GETUPVAL                         R13 6
       62 NAMECALL                         R13 R13 K21 ["get"]
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKNIL                  R13 ; [+3]
       67 LOADNIL                          R12
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R15 7
       70 GETTABLE                         R14 R13 R15
       71 JUMPIFNOTEQKNIL                  R14 ; [+3]
       73 GETTABLEKS                       R14 R13 K22 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R14 ; [+3]
       77 LOADNIL                          R12
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R14 ; [+3]
       80 MOVE                             R16 R14
       81 GETIMPORT                        R15 K24 [tostring]
       83 CALL                             R15 1 1
       84 MOVE                             R12 R15
       85 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       87 CALL                             R9 2 1
       88 MOVE                             R7 R9
       89 SETTABLEKS                       R7 R6 K1 ["customFields"]
       91 CALL                             R3 3 0
       92 RETURN                           R0 0

PROTO_47:
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
       60 DUPTABLE                         R11 K20 [{"experimentationGroup"}]
       61 GETUPVAL                         R13 6
       62 NAMECALL                         R13 R13 K21 ["get"]
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKNIL                  R13 ; [+3]
       67 LOADNIL                          R12
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R15 7
       70 GETTABLE                         R14 R13 R15
       71 JUMPIFNOTEQKNIL                  R14 ; [+3]
       73 GETTABLEKS                       R14 R13 K22 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R14 ; [+3]
       77 LOADNIL                          R12
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R14 ; [+3]
       80 MOVE                             R16 R14
       81 GETIMPORT                        R15 K24 [tostring]
       83 CALL                             R15 1 1
       84 MOVE                             R12 R15
       85 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       87 CALL                             R9 2 1
       88 MOVE                             R7 R9
       89 SETTABLEKS                       R7 R6 K1 ["customFields"]
       91 CALL                             R3 3 0
       92 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R1 R1 K14 ["logEvent"]
       59 GETUPVAL                         R2 6
       60 DUPTABLE                         R3 K16 [{"customFields", "standardizedFields"}]
       61 DUPTABLE                         R5 K20 [{"studioFlowId", "batchId", "action", "actionOnOptionId", "modelFlow"}]
       62 GETTABLEKS                       R6 R0 K17 ["studioFlowId"]
       64 SETTABLEKS                       R6 R5 K17 ["studioFlowId"]
       66 GETTABLEKS                       R6 R0 K18 ["batchId"]
       68 SETTABLEKS                       R6 R5 K18 ["batchId"]
       70 GETTABLEKS                       R6 R0 K4 ["action"]
       72 SETTABLEKS                       R6 R5 K4 ["action"]
       74 GETTABLEKS                       R6 R0 K19 ["actionOnOptionId"]
       76 SETTABLEKS                       R6 R5 K19 ["actionOnOptionId"]
       78 GETTABLEKS                       R6 R0 K5 ["modelFlow"]
       80 SETTABLEKS                       R6 R5 K5 ["modelFlow"]
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K21 ["assign"]
       85 MOVE                             R7 R5
       86 DUPTABLE                         R8 K23 [{"timestampMilliseconds"}]
       87 GETUPVAL                         R9 7
       88 GETTABLEKS                       R9 R9 K24 ["getTimestampMilliseconds"]
       90 CALL                             R9 0 1
       91 SETTABLEKS                       R9 R8 K22 ["timestampMilliseconds"]
       93 CALL                             R6 2 1
       94 MOVE                             R4 R6
       95 SETTABLEKS                       R4 R3 K2 ["customFields"]
       97 NEWTABLE                         R5 0 0
       99 GETUPVAL                         R6 8
      100 GETTABLEKS                       R6 R6 K25 ["StandardizedFields"]
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 FORGPREP                         R6
      105 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      107 MOVE                             R12 R5
      108 MOVE                             R13 R10
      109 GETIMPORT                        R11 K28 [table.insert]
      111 CALL                             R11 2 0
      112 FORGLOOP                         R6 2 ; [-8]
      114 MOVE                             R4 R5
      115 SETTABLEKS                       R4 R3 K15 ["standardizedFields"]
      117 CALL                             R1 2 0
      118 RETURN                           R0 0

PROTO_52:
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
       20 DUPTABLE                         R9 K8 [{"experimentationGroup"}]
       21 GETUPVAL                         R11 4
       22 NAMECALL                         R11 R11 K9 ["get"]
       24 CALL                             R11 1 1
       25 JUMPIFNOTEQKNIL                  R11 ; [+3]
       27 LOADNIL                          R10
       28 JUMP                             ; [+16]
       29 GETUPVAL                         R13 5
       30 GETTABLE                         R12 R11 R13
       31 JUMPIFNOTEQKNIL                  R12 ; [+3]
       33 GETTABLEKS                       R12 R11 K10 ["generatedExperimentVariantDistributionVariable"]
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 LOADNIL                          R10
       38 JUMP                             ; [+6]
       39 FASTCALL1                        TOSTRING R12 ; [+3]
       40 MOVE                             R14 R12
       41 GETIMPORT                        R13 K12 [tostring]
       43 CALL                             R13 1 1
       44 MOVE                             R10 R13
       45 SETTABLEKS                       R10 R9 K7 ["experimentationGroup"]
       47 CALL                             R7 2 1
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K2 ["customFields"]
       51 CALL                             R1 3 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K13 ["logEvent"]
       55 GETUPVAL                         R2 6
       56 DUPTABLE                         R3 K15 [{"customFields", "standardizedFields"}]
       57 DUPTABLE                         R5 K17 [{"generationId", "modelFlow"}]
       58 GETTABLEKS                       R6 R0 K16 ["generationId"]
       60 SETTABLEKS                       R6 R5 K16 ["generationId"]
       62 GETTABLEKS                       R6 R0 K4 ["modelFlow"]
       64 SETTABLEKS                       R6 R5 K4 ["modelFlow"]
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R6 R6 K18 ["assign"]
       69 MOVE                             R7 R5
       70 DUPTABLE                         R8 K20 [{"timestampMilliseconds"}]
       71 GETUPVAL                         R9 7
       72 GETTABLEKS                       R9 R9 K21 ["getTimestampMilliseconds"]
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K19 ["timestampMilliseconds"]
       77 CALL                             R6 2 1
       78 MOVE                             R4 R6
       79 SETTABLEKS                       R4 R3 K2 ["customFields"]
       81 NEWTABLE                         R5 0 0
       83 GETUPVAL                         R6 8
       84 GETTABLEKS                       R6 R6 K22 ["StandardizedFields"]
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       91 MOVE                             R12 R5
       92 MOVE                             R13 R10
       93 GETIMPORT                        R11 K25 [table.insert]
       95 CALL                             R11 2 0
       96 FORGLOOP                         R6 2 ; [-8]
       98 MOVE                             R4 R5
       99 SETTABLEKS                       R4 R3 K14 ["standardizedFields"]
      101 CALL                             R1 2 0
      102 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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
       11 DUPCLOSURE                       R2 K0 [PROTO_22]
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 DUPCLOSURE                       R3 K1 [PROTO_23]
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U8
       23 DUPCLOSURE                       R4 K2 [PROTO_24]
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U10
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U8
       32 NEWCLOSURE                       R5 P4
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U12
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U13
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R0
       42 NEWCLOSURE                       R6 P5
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U14
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R0
       52 DUPCLOSURE                       R7 K3 [PROTO_27]
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U16
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 DUPCLOSURE                       R8 K4 [PROTO_28]
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U17
       61 NEWCLOSURE                       R9 P8
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U18
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R0
       68 DUPCLOSURE                       R10 K5 [PROTO_30]
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U19
       73 CAPTURE                          UPVAL U8
       74 DUPCLOSURE                       R11 K6 [PROTO_31]
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          UPVAL U20
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U21
       82 CAPTURE                          UPVAL U22
       83 CAPTURE                          UPVAL U23
       84 CAPTURE                          UPVAL U8
       85 DUPCLOSURE                       R12 K7 [PROTO_32]
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          UPVAL U24
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U25
       93 CAPTURE                          UPVAL U26
       94 CAPTURE                          UPVAL U27
       95 CAPTURE                          UPVAL U8
       96 DUPCLOSURE                       R13 K8 [PROTO_33]
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          UPVAL U28
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          UPVAL U29
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          UPVAL U8
      105 DUPCLOSURE                       R14 K9 [PROTO_34]
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          UPVAL U30
      110 CAPTURE                          UPVAL U8
      111 DUPCLOSURE                       R15 K10 [PROTO_35]
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U31
      116 CAPTURE                          UPVAL U8
      117 DUPCLOSURE                       R16 K11 [PROTO_36]
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          UPVAL U32
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          UPVAL U33
      125 CAPTURE                          UPVAL U8
      126 DUPCLOSURE                       R17 K12 [PROTO_37]
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          UPVAL U1
      130 CAPTURE                          UPVAL U34
      131 CAPTURE                          UPVAL U8
      132 DUPCLOSURE                       R18 K13 [PROTO_38]
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          UPVAL U35
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U5
      138 DUPCLOSURE                       R19 K14 [PROTO_39]
      139 CAPTURE                          UPVAL U1
      140 CAPTURE                          UPVAL U36
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          UPVAL U37
      145 CAPTURE                          UPVAL U21
      146 CAPTURE                          UPVAL U6
      147 CAPTURE                          UPVAL U38
      148 CAPTURE                          UPVAL U8
      149 DUPCLOSURE                       R20 K15 [PROTO_40]
      150 CAPTURE                          UPVAL U1
      151 CAPTURE                          UPVAL U39
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          UPVAL U5
      155 CAPTURE                          UPVAL U40
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          UPVAL U41
      158 CAPTURE                          UPVAL U8
      159 DUPCLOSURE                       R21 K16 [PROTO_41]
      160 CAPTURE                          UPVAL U1
      161 CAPTURE                          UPVAL U42
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          UPVAL U4
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          UPVAL U43
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          UPVAL U44
      168 CAPTURE                          UPVAL U8
      169 DUPCLOSURE                       R22 K17 [PROTO_42]
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U45
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          UPVAL U4
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U21
      176 CAPTURE                          UPVAL U6
      177 CAPTURE                          UPVAL U46
      178 CAPTURE                          UPVAL U8
      179 DUPCLOSURE                       R23 K18 [PROTO_43]
      180 CAPTURE                          UPVAL U1
      181 CAPTURE                          UPVAL U47
      182 CAPTURE                          UPVAL U3
      183 CAPTURE                          UPVAL U6
      184 CAPTURE                          UPVAL U8
      185 DUPCLOSURE                       R24 K19 [PROTO_44]
      186 CAPTURE                          UPVAL U1
      187 CAPTURE                          UPVAL U48
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          UPVAL U8
      191 DUPCLOSURE                       R25 K20 [PROTO_45]
      192 CAPTURE                          UPVAL U1
      193 CAPTURE                          UPVAL U49
      194 CAPTURE                          UPVAL U3
      195 CAPTURE                          UPVAL U6
      196 CAPTURE                          UPVAL U8
      197 DUPCLOSURE                       R26 K21 [PROTO_46]
      198 CAPTURE                          UPVAL U1
      199 CAPTURE                          UPVAL U50
      200 CAPTURE                          UPVAL U3
      201 CAPTURE                          UPVAL U6
      202 CAPTURE                          UPVAL U8
      203 CAPTURE                          UPVAL U51
      204 CAPTURE                          UPVAL U4
      205 CAPTURE                          UPVAL U5
      206 DUPCLOSURE                       R27 K22 [PROTO_47]
      207 CAPTURE                          UPVAL U1
      208 CAPTURE                          UPVAL U52
      209 CAPTURE                          UPVAL U3
      210 CAPTURE                          UPVAL U6
      211 CAPTURE                          UPVAL U8
      212 CAPTURE                          UPVAL U53
      213 CAPTURE                          UPVAL U4
      214 CAPTURE                          UPVAL U5
      215 DUPCLOSURE                       R28 K23 [PROTO_48]
      216 CAPTURE                          UPVAL U0
      217 CAPTURE                          UPVAL U1
      218 CAPTURE                          UPVAL U54
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U4
      221 CAPTURE                          UPVAL U5
      222 DUPCLOSURE                       R29 K24 [PROTO_49]
      223 CAPTURE                          UPVAL U0
      224 CAPTURE                          UPVAL U1
      225 CAPTURE                          UPVAL U55
      226 CAPTURE                          UPVAL U3
      227 CAPTURE                          UPVAL U6
      228 CAPTURE                          UPVAL U8
      229 DUPCLOSURE                       R30 K25 [PROTO_50]
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U1
      232 CAPTURE                          UPVAL U56
      233 CAPTURE                          UPVAL U21
      234 CAPTURE                          UPVAL U3
      235 CAPTURE                          UPVAL U6
      236 CAPTURE                          UPVAL U8
      237 DUPCLOSURE                       R31 K26 [PROTO_51]
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          UPVAL U1
      240 CAPTURE                          UPVAL U57
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          UPVAL U4
      243 CAPTURE                          UPVAL U5
      244 CAPTURE                          UPVAL U58
      245 CAPTURE                          UPVAL U6
      246 CAPTURE                          UPVAL U8
      247 DUPCLOSURE                       R32 K27 [PROTO_52]
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          UPVAL U1
      250 CAPTURE                          UPVAL U59
      251 CAPTURE                          UPVAL U3
      252 CAPTURE                          UPVAL U4
      253 CAPTURE                          UPVAL U5
      254 CAPTURE                          UPVAL U60
      255 CAPTURE                          UPVAL U6
      256 CAPTURE                          UPVAL U8
      257 DUPCLOSURE                       R33 K28 [PROTO_53]
      258 CAPTURE                          UPVAL U1
      259 CAPTURE                          UPVAL U61
      260 CAPTURE                          UPVAL U3
      261 CAPTURE                          UPVAL U6
      262 CAPTURE                          UPVAL U8
      263 DUPCLOSURE                       R34 K29 [PROTO_54]
      264 CAPTURE                          UPVAL U1
      265 CAPTURE                          UPVAL U62
      266 CAPTURE                          UPVAL U3
      267 CAPTURE                          UPVAL U6
      268 CAPTURE                          UPVAL U8
      269 CAPTURE                          UPVAL U63
      270 CAPTURE                          UPVAL U4
      271 CAPTURE                          UPVAL U5
      272 DUPCLOSURE                       R35 K30 [PROTO_55]
      273 CAPTURE                          UPVAL U1
      274 CAPTURE                          UPVAL U64
      275 CAPTURE                          UPVAL U3
      276 CAPTURE                          UPVAL U4
      277 CAPTURE                          UPVAL U5
      278 CAPTURE                          UPVAL U6
      279 CAPTURE                          UPVAL U65
      280 CAPTURE                          UPVAL U8
      281 DUPCLOSURE                       R36 K31 [PROTO_56]
      282 CAPTURE                          UPVAL U1
      283 CAPTURE                          UPVAL U66
      284 CAPTURE                          UPVAL U3
      285 CAPTURE                          UPVAL U4
      286 CAPTURE                          UPVAL U5
      287 CAPTURE                          UPVAL U6
      288 CAPTURE                          UPVAL U67
      289 CAPTURE                          UPVAL U8
      290 DUPCLOSURE                       R37 K32 [PROTO_57]
      291 CAPTURE                          UPVAL U1
      292 CAPTURE                          UPVAL U68
      293 DUPCLOSURE                       R38 K33 [PROTO_58]
      294 CAPTURE                          UPVAL U1
      295 CAPTURE                          UPVAL U69
      296 CAPTURE                          UPVAL U3
      297 CAPTURE                          UPVAL U6
      298 CAPTURE                          UPVAL U8
      299 DUPCLOSURE                       R39 K34 [PROTO_59]
      300 CAPTURE                          UPVAL U1
      301 CAPTURE                          UPVAL U70
      302 CAPTURE                          UPVAL U3
      303 CAPTURE                          UPVAL U6
      304 CAPTURE                          UPVAL U8
      305 DUPCLOSURE                       R40 K35 [PROTO_60]
      306 CAPTURE                          UPVAL U1
      307 CAPTURE                          UPVAL U71
      308 CAPTURE                          UPVAL U3
      309 CAPTURE                          UPVAL U6
      310 CAPTURE                          UPVAL U8
      311 DUPCLOSURE                       R41 K36 [PROTO_61]
      312 CAPTURE                          UPVAL U1
      313 CAPTURE                          UPVAL U72
      314 CAPTURE                          UPVAL U3
      315 CAPTURE                          UPVAL U6
      316 CAPTURE                          UPVAL U8
      317 DUPCLOSURE                       R42 K37 [PROTO_62]
      318 CAPTURE                          UPVAL U1
      319 CAPTURE                          UPVAL U73
      320 CAPTURE                          UPVAL U3
      321 CAPTURE                          UPVAL U6
      322 CAPTURE                          UPVAL U8
      323 DUPCLOSURE                       R43 K38 [PROTO_63]
      324 CAPTURE                          UPVAL U1
      325 CAPTURE                          UPVAL U74
      326 CAPTURE                          UPVAL U3
      327 CAPTURE                          UPVAL U6
      328 CAPTURE                          UPVAL U8
      329 DUPCLOSURE                       R44 K39 [PROTO_64]
      330 CAPTURE                          UPVAL U1
      331 CAPTURE                          UPVAL U75
      332 CAPTURE                          UPVAL U3
      333 CAPTURE                          UPVAL U6
      334 CAPTURE                          UPVAL U8
      335 DUPCLOSURE                       R45 K40 [PROTO_65]
      336 CAPTURE                          UPVAL U1
      337 CAPTURE                          UPVAL U76
      338 CAPTURE                          UPVAL U3
      339 CAPTURE                          UPVAL U4
      340 CAPTURE                          UPVAL U5
      341 CAPTURE                          UPVAL U77
      342 CAPTURE                          UPVAL U6
      343 CAPTURE                          UPVAL U8
      344 DUPCLOSURE                       R46 K41 [PROTO_66]
      345 CAPTURE                          UPVAL U1
      346 CAPTURE                          UPVAL U78
      347 CAPTURE                          UPVAL U3
      348 CAPTURE                          UPVAL U4
      349 CAPTURE                          UPVAL U5
      350 CAPTURE                          UPVAL U79
      351 CAPTURE                          UPVAL U6
      352 CAPTURE                          UPVAL U8
      353 DUPCLOSURE                       R47 K42 [PROTO_67]
      354 CAPTURE                          UPVAL U1
      355 CAPTURE                          UPVAL U80
      356 CAPTURE                          UPVAL U3
      357 CAPTURE                          UPVAL U6
      358 CAPTURE                          UPVAL U8
      359 DUPCLOSURE                       R48 K43 [PROTO_68]
      360 CAPTURE                          UPVAL U1
      361 CAPTURE                          UPVAL U81
      362 CAPTURE                          UPVAL U3
      363 CAPTURE                          UPVAL U6
      364 CAPTURE                          UPVAL U8
      365 DUPCLOSURE                       R49 K44 [PROTO_69]
      366 CAPTURE                          UPVAL U1
      367 CAPTURE                          UPVAL U82
      368 CAPTURE                          UPVAL U3
      369 CAPTURE                          UPVAL U4
      370 CAPTURE                          UPVAL U5
      371 CAPTURE                          UPVAL U83
      372 CAPTURE                          UPVAL U84
      373 NEWTABLE                         R50 64 0
      375 SETTABLEKS                       R1 R50 K45 ["logUserMessageSent"]
      377 SETTABLEKS                       R2 R50 K46 ["logAssistantMessageSent"]
      379 SETTABLEKS                       R3 R50 K47 ["logApiKeyAdded"]
      381 SETTABLEKS                       R4 R50 K48 ["logErrorEvent"]
      383 SETTABLEKS                       R17 R50 K49 ["logExternalAPIError"]
      385 SETTABLEKS                       R5 R50 K50 ["logThumbsUp"]
      387 SETTABLEKS                       R6 R50 K51 ["logThumbsDown"]
      389 SETTABLEKS                       R7 R50 K52 ["logInitialResponseLatency"]
      391 SETTABLEKS                       R8 R50 K53 ["logMarkdownError"]
      393 SETTABLEKS                       R9 R50 K54 ["logRetry"]
      395 SETTABLEKS                       R10 R50 K55 ["logStopGeneration"]
      397 SETTABLEKS                       R11 R50 K56 ["logToolStarted"]
      399 SETTABLEKS                       R12 R50 K57 ["logToolEnded"]
      401 SETTABLEKS                       R13 R50 K58 ["logFailedToolInvocation"]
      403 SETTABLEKS                       R14 R50 K59 ["logToolConfirmationShown"]
      405 SETTABLEKS                       R15 R50 K60 ["logToolConfirmationResult"]
      407 SETTABLEKS                       R16 R50 K61 ["logRequestJourney"]
      409 SETTABLEKS                       R18 R50 K62 ["logMeshGenActivated"]
      411 SETTABLEKS                       R19 R50 K63 ["logMeshGenCompleted"]
      413 SETTABLEKS                       R20 R50 K64 ["logMeshGenPublishedAssets"]
      415 SETTABLEKS                       R21 R50 K65 ["logMeshGenMeshInserted"]
      417 SETTABLEKS                       R22 R50 K66 ["logPrimitiveGen"]
      419 SETTABLEKS                       R23 R50 K67 ["logAvatarAutoSetupRequested"]
      421 SETTABLEKS                       R24 R50 K68 ["logAvatarAutoSetupOptions"]
      423 SETTABLEKS                       R25 R50 K69 ["logAvatarAutoSetupJobInitialized"]
      425 SETTABLEKS                       R26 R50 K70 ["logAvatarAutoSetupFinish"]
      427 SETTABLEKS                       R27 R50 K71 ["logAvatarAutoSetupFailure"]
      429 SETTABLEKS                       R28 R50 K72 ["logGen3DSegmentationRefresh"]
      431 SETTABLEKS                       R29 R50 K73 ["logGen3DInstanceDeleted"]
      433 SETTABLEKS                       R30 R50 K74 ["logGen3DImageImpression"]
      435 SETTABLEKS                       R31 R50 K75 ["logGen3DImageAction"]
      437 SETTABLEKS                       R32 R50 K76 ["logGen3DAssetPublished"]
      439 SETTABLEKS                       R33 R50 K77 ["logIntegrationEvent"]
      441 SETTABLEKS                       R34 R50 K78 ["logExternalServerConnected"]
      443 SETTABLEKS                       R35 R50 K79 ["logQuestionAnswerCompleted"]
      445 SETTABLEKS                       R36 R50 K80 ["logPlanDecision"]
      447 SETTABLEKS                       R43 R50 K81 ["logQuickSetupToggled"]
      449 SETTABLEKS                       R37 R50 K82 ["logMaterialGeneratorSavedMaterial"]
      451 SETTABLEKS                       R45 R50 K83 ["logCompactionSuccess"]
      453 SETTABLEKS                       R46 R50 K84 ["logCompactionFallback"]
      455 SETTABLEKS                       R47 R50 K85 ["logUserSkillEvent"]
      457 SETTABLEKS                       R48 R50 K86 ["logThinkingBlock"]
      459 SETTABLEKS                       R38 R50 K87 ["logThreadCreated"]
      461 SETTABLEKS                       R39 R50 K88 ["logThreadRenamed"]
      463 SETTABLEKS                       R40 R50 K89 ["logThreadPinnedChanged"]
      465 SETTABLEKS                       R41 R50 K90 ["logThreadDeleted"]
      467 SETTABLEKS                       R42 R50 K91 ["logThreadDuplicated"]
      469 SETTABLEKS                       R44 R50 K92 ["logThreadSwitched"]
      471 SETTABLEKS                       R49 R50 K93 ["logPersistenceOperation"]
      473 RETURN                           R50 1

PROTO_71:
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
      113 GETTABLEKS                       R3 R1 K27 ["logIntegrationEvent"]
      115 SETTABLEKS                       R3 R2 K27 ["logIntegrationEvent"]
      117 GETTABLEKS                       R3 R1 K28 ["logExternalServerConnected"]
      119 SETTABLEKS                       R3 R2 K28 ["logExternalServerConnected"]
      121 GETTABLEKS                       R3 R1 K29 ["logQuestionAnswerCompleted"]
      123 SETTABLEKS                       R3 R2 K29 ["logQuestionAnswerCompleted"]
      125 GETTABLEKS                       R3 R1 K30 ["logPlanDecision"]
      127 SETTABLEKS                       R3 R2 K30 ["logPlanDecision"]
      129 GETTABLEKS                       R3 R1 K31 ["logQuickSetupToggled"]
      131 SETTABLEKS                       R3 R2 K31 ["logQuickSetupToggled"]
      133 GETTABLEKS                       R3 R1 K32 ["logMaterialGeneratorSavedMaterial"]
      135 SETTABLEKS                       R3 R2 K32 ["logMaterialGeneratorSavedMaterial"]
      137 GETTABLEKS                       R3 R1 K33 ["logCompactionSuccess"]
      139 SETTABLEKS                       R3 R2 K33 ["logCompactionSuccess"]
      141 GETTABLEKS                       R3 R1 K34 ["logCompactionFallback"]
      143 SETTABLEKS                       R3 R2 K34 ["logCompactionFallback"]
      145 GETTABLEKS                       R3 R1 K35 ["logUserSkillEvent"]
      147 SETTABLEKS                       R3 R2 K35 ["logUserSkillEvent"]
      149 GETTABLEKS                       R3 R1 K36 ["logThinkingBlock"]
      151 SETTABLEKS                       R3 R2 K36 ["logThinkingBlock"]
      153 GETTABLEKS                       R3 R1 K37 ["logThreadCreated"]
      155 SETTABLEKS                       R3 R2 K37 ["logThreadCreated"]
      157 GETTABLEKS                       R3 R1 K38 ["logThreadRenamed"]
      159 SETTABLEKS                       R3 R2 K38 ["logThreadRenamed"]
      161 GETTABLEKS                       R3 R1 K39 ["logThreadPinnedChanged"]
      163 SETTABLEKS                       R3 R2 K39 ["logThreadPinnedChanged"]
      165 GETTABLEKS                       R3 R1 K40 ["logThreadDeleted"]
      167 SETTABLEKS                       R3 R2 K40 ["logThreadDeleted"]
      169 GETTABLEKS                       R3 R1 K41 ["logThreadDuplicated"]
      171 SETTABLEKS                       R3 R2 K41 ["logThreadDuplicated"]
      173 GETTABLEKS                       R3 R1 K42 ["logThreadSwitched"]
      175 SETTABLEKS                       R3 R2 K42 ["logThreadSwitched"]
      177 GETTABLEKS                       R3 R1 K43 ["logPersistenceOperation"]
      179 SETTABLEKS                       R3 R2 K43 ["logPersistenceOperation"]
      181 RETURN                           R2 1

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
       88 DUPCLOSURE                       R13 K26 [PROTO_1]
       89 CAPTURE                          VAL R1
       90 DUPCLOSURE                       R14 K27 [PROTO_2]
       91 CAPTURE                          VAL R12
       92 DUPCLOSURE                       R15 K28 [PROTO_3]
       93 DUPCLOSURE                       R16 K29 [PROTO_4]
       94 DUPCLOSURE                       R17 K30 [PROTO_5]
       95 DUPCLOSURE                       R18 K31 [PROTO_6]
       96 DUPCLOSURE                       R19 K32 [PROTO_7]
       97 DUPCLOSURE                       R20 K33 [PROTO_8]
       98 DUPCLOSURE                       R21 K34 [PROTO_9]
       99 CAPTURE                          VAL R19
      100 DUPCLOSURE                       R22 K35 [PROTO_11]
      101 CAPTURE                          VAL R21
      102 CAPTURE                          VAL R1
      103 DUPCLOSURE                       R23 K36 [PROTO_12]
      104 DUPCLOSURE                       R24 K37 [PROTO_13]
      105 DUPCLOSURE                       R25 K38 [PROTO_14]
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R26 K39 [PROTO_15]
      109 CAPTURE                          VAL R9
      110 DUPCLOSURE                       R27 K40 [PROTO_16]
      111 DUPCLOSURE                       R28 K41 [PROTO_17]
      112 CAPTURE                          VAL R8
      113 GETIMPORT                        R29 K44 [table.freeze]
      115 NEWTABLE                         R31 0 0
      117 GETTABLEKS                       R34 R8 K45 ["Backends"]
      119 GETTABLEKS                       R34 R34 K46 ["EventIngest"]
      121 FASTCALL2                        TABLE_INSERT R31 R34 ; [+4]
      123 MOVE                             R33 R31
      124 GETIMPORT                        R32 K48 [table.insert]
      126 CALL                             R32 2 0
      127 GETTABLEKS                       R34 R8 K45 ["Backends"]
      129 GETTABLEKS                       R34 R34 K49 ["Points"]
      131 FASTCALL2                        TABLE_INSERT R31 R34 ; [+4]
      133 MOVE                             R33 R31
      134 GETIMPORT                        R32 K48 [table.insert]
      136 CALL                             R32 2 0
      137 MOVE                             R30 R31
      138 CALL                             R29 1 1
      139 GETIMPORT                        R30 K44 [table.freeze]
      141 DUPTABLE                         R31 K55 [{["eventName"], ["backends"], ["description"] = "Incrementing count of user messages sent.", ["lastUpdated"]}]
      142 LOADK                            R32 K56 ["StudioAssistantUserMessageSent"]
      143 SETTABLEKS                       R32 R31 K50 ["eventName"]
      145 NEWTABLE                         R32 0 1
      147 GETTABLEKS                       R33 R8 K45 ["Backends"]
      149 GETTABLEKS                       R33 R33 K57 ["RobloxTelemetryCounter"]
      151 SETLIST                          R32 R33 1 [1]
      153 SETTABLEKS                       R32 R31 K51 ["backends"]
      155 NEWTABLE                         R32 0 3
      157 LOADN                            R33 26
      158 LOADN                            R34 8
      159 LOADN                            R35 19
      160 SETLIST                          R32 R33 3 [1]
      162 SETTABLEKS                       R32 R31 K54 ["lastUpdated"]
      164 CALL                             R30 1 1
      165 GETIMPORT                        R31 K44 [table.freeze]
      167 DUPTABLE                         R32 K61 [{["eventName"] = "CAPMessageSent", ["backends"], ["description"] = "User message sent event with request ID.", ["throttlingPercentage"], ["lastUpdated"]}]
      168 SETTABLEKS                       R29 R32 K51 ["backends"]
      170 GETTABLEKS                       R33 R7 K62 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      172 SETTABLEKS                       R33 R32 K60 ["throttlingPercentage"]
      174 NEWTABLE                         R33 0 3
      176 LOADN                            R34 26
      177 LOADN                            R35 8
      178 LOADN                            R36 19
      179 SETLIST                          R33 R34 3 [1]
      181 SETTABLEKS                       R33 R32 K54 ["lastUpdated"]
      183 CALL                             R31 1 1
      184 GETIMPORT                        R32 K44 [table.freeze]
      186 DUPTABLE                         R33 K65 [{["eventName"] = "CAPAPIKeyAdded", ["backends"], ["description"] = "User added an API key for an LLM provider.", ["lastUpdated"]}]
      187 SETTABLEKS                       R29 R33 K51 ["backends"]
      189 NEWTABLE                         R34 0 3
      191 LOADN                            R35 25
      192 LOADN                            R36 11
      193 LOADN                            R37 4
      194 SETLIST                          R34 R35 3 [1]
      196 SETTABLEKS                       R34 R33 K54 ["lastUpdated"]
      198 CALL                             R32 1 1
      199 GETIMPORT                        R33 K44 [table.freeze]
      201 DUPTABLE                         R34 K68 [{["eventName"] = "CAPUserFeedbackThumbsUp", ["backends"], ["description"] = "User feedback thumbs up event with message context.", ["lastUpdated"]}]
      202 SETTABLEKS                       R29 R34 K51 ["backends"]
      204 NEWTABLE                         R35 0 3
      206 LOADN                            R36 25
      207 LOADN                            R37 7
      208 LOADN                            R38 25
      209 SETLIST                          R35 R36 3 [1]
      211 SETTABLEKS                       R35 R34 K54 ["lastUpdated"]
      213 CALL                             R33 1 1
      214 GETIMPORT                        R34 K44 [table.freeze]
      216 DUPTABLE                         R35 K71 [{["eventName"] = "CAPUserFeedbackThumbsDown", ["backends"], ["description"] = "User feedback thumbs down event with message context.", ["lastUpdated"]}]
      217 SETTABLEKS                       R29 R35 K51 ["backends"]
      219 NEWTABLE                         R36 0 3
      221 LOADN                            R37 25
      222 LOADN                            R38 7
      223 LOADN                            R39 25
      224 SETLIST                          R36 R37 3 [1]
      226 SETTABLEKS                       R36 R35 K54 ["lastUpdated"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K44 [table.freeze]
      231 DUPTABLE                         R36 K73 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs up events.", ["lastUpdated"]}]
      232 LOADK                            R37 K74 ["StudioAssistantThumbsUp"]
      233 SETTABLEKS                       R37 R36 K50 ["eventName"]
      235 NEWTABLE                         R37 0 1
      237 GETTABLEKS                       R38 R8 K45 ["Backends"]
      239 GETTABLEKS                       R38 R38 K57 ["RobloxTelemetryCounter"]
      241 SETLIST                          R37 R38 1 [1]
      243 SETTABLEKS                       R37 R36 K51 ["backends"]
      245 NEWTABLE                         R37 0 3
      247 LOADN                            R38 25
      248 LOADN                            R39 7
      249 LOADN                            R40 21
      250 SETLIST                          R37 R38 3 [1]
      252 SETTABLEKS                       R37 R36 K54 ["lastUpdated"]
      254 CALL                             R35 1 1
      255 GETIMPORT                        R36 K44 [table.freeze]
      257 DUPTABLE                         R37 K76 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs down events.", ["lastUpdated"]}]
      258 LOADK                            R38 K77 ["StudioAssistantThumbsDown"]
      259 SETTABLEKS                       R38 R37 K50 ["eventName"]
      261 NEWTABLE                         R38 0 1
      263 GETTABLEKS                       R39 R8 K45 ["Backends"]
      265 GETTABLEKS                       R39 R39 K57 ["RobloxTelemetryCounter"]
      267 SETLIST                          R38 R39 1 [1]
      269 SETTABLEKS                       R38 R37 K51 ["backends"]
      271 NEWTABLE                         R38 0 3
      273 LOADN                            R39 25
      274 LOADN                            R40 7
      275 LOADN                            R41 21
      276 SETLIST                          R38 R39 3 [1]
      278 SETTABLEKS                       R38 R37 K54 ["lastUpdated"]
      280 CALL                             R36 1 1
      281 GETIMPORT                        R37 K44 [table.freeze]
      283 DUPTABLE                         R38 K79 [{["eventName"], ["backends"], ["description"] = "Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message.", ["lastUpdated"]}]
      284 LOADK                            R39 K80 ["StudioAssistantInitialResponseLatency"]
      285 SETTABLEKS                       R39 R38 K50 ["eventName"]
      287 NEWTABLE                         R39 0 1
      289 GETTABLEKS                       R40 R8 K45 ["Backends"]
      291 GETTABLEKS                       R40 R40 K81 ["RobloxTelemetryStat"]
      293 SETLIST                          R39 R40 1 [1]
      295 SETTABLEKS                       R39 R38 K51 ["backends"]
      297 NEWTABLE                         R39 0 3
      299 LOADN                            R40 25
      300 LOADN                            R41 7
      301 LOADN                            R42 21
      302 SETLIST                          R39 R40 3 [1]
      304 SETTABLEKS                       R39 R38 K54 ["lastUpdated"]
      306 CALL                             R37 1 1
      307 GETIMPORT                        R38 K44 [table.freeze]
      309 DUPTABLE                         R39 K83 [{["eventName"], ["backends"], ["description"] = "User request journey duration in seconds. Time between sending first message to request ended.", ["lastUpdated"]}]
      310 LOADK                            R40 K84 ["StudioAssistantRequestJourney"]
      311 SETTABLEKS                       R40 R39 K50 ["eventName"]
      313 NEWTABLE                         R40 0 1
      315 GETTABLEKS                       R41 R8 K45 ["Backends"]
      317 GETTABLEKS                       R41 R41 K81 ["RobloxTelemetryStat"]
      319 SETLIST                          R40 R41 1 [1]
      321 SETTABLEKS                       R40 R39 K51 ["backends"]
      323 NEWTABLE                         R40 0 3
      325 LOADN                            R41 25
      326 LOADN                            R42 10
      327 LOADN                            R43 22
      328 SETLIST                          R40 R41 3 [1]
      330 SETTABLEKS                       R40 R39 K54 ["lastUpdated"]
      332 CALL                             R38 1 1
      333 GETIMPORT                        R39 K44 [table.freeze]
      335 DUPTABLE                         R40 K87 [{["eventName"] = "CAPRequestJourney", ["backends"], ["description"] = "User request journey detail.", ["lastUpdated"]}]
      336 SETTABLEKS                       R29 R40 K51 ["backends"]
      338 NEWTABLE                         R41 0 3
      340 LOADN                            R42 25
      341 LOADN                            R43 11
      342 LOADN                            R44 1
      343 SETLIST                          R41 R42 3 [1]
      345 SETTABLEKS                       R41 R40 K54 ["lastUpdated"]
      347 CALL                             R39 1 1
      348 GETIMPORT                        R40 K44 [table.freeze]
      350 DUPTABLE                         R41 K89 [{["eventName"], ["backends"], ["description"] = "Incrementing count of error events with error type attached.", ["lastUpdated"]}]
      351 LOADK                            R42 K90 ["StudioAssistantErrorEvent"]
      352 SETTABLEKS                       R42 R41 K50 ["eventName"]
      354 NEWTABLE                         R42 0 1
      356 GETTABLEKS                       R43 R8 K45 ["Backends"]
      358 GETTABLEKS                       R43 R43 K57 ["RobloxTelemetryCounter"]
      360 SETLIST                          R42 R43 1 [1]
      362 SETTABLEKS                       R42 R41 K51 ["backends"]
      364 NEWTABLE                         R42 0 3
      366 LOADN                            R43 25
      367 LOADN                            R44 7
      368 LOADN                            R45 21
      369 SETLIST                          R42 R43 3 [1]
      371 SETTABLEKS                       R42 R41 K54 ["lastUpdated"]
      373 CALL                             R40 1 1
      374 GETIMPORT                        R41 K44 [table.freeze]
      376 DUPTABLE                         R42 K93 [{["eventName"] = "CAPErrorEvent", ["backends"], ["description"] = "Assistant error detail.", ["lastUpdated"]}]
      377 SETTABLEKS                       R29 R42 K51 ["backends"]
      379 NEWTABLE                         R43 0 3
      381 LOADN                            R44 26
      382 LOADN                            R45 7
      383 LOADN                            R46 26
      384 SETLIST                          R43 R44 3 [1]
      386 SETTABLEKS                       R43 R42 K54 ["lastUpdated"]
      388 CALL                             R41 1 1
      389 GETIMPORT                        R42 K44 [table.freeze]
      391 DUPTABLE                         R43 K95 [{["eventName"], ["backends"], ["description"] = "Collection of markdown error events, with markdown attached.", ["throttlingPercentage"], ["lastUpdated"]}]
      392 LOADK                            R44 K96 ["StudioAssistantMarkdownError"]
      393 SETTABLEKS                       R44 R43 K50 ["eventName"]
      395 NEWTABLE                         R44 0 1
      397 GETTABLEKS                       R45 R8 K45 ["Backends"]
      399 GETTABLEKS                       R45 R45 K49 ["Points"]
      401 SETLIST                          R44 R45 1 [1]
      403 SETTABLEKS                       R44 R43 K51 ["backends"]
      405 GETTABLEKS                       R44 R7 K97 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      407 SETTABLEKS                       R44 R43 K60 ["throttlingPercentage"]
      409 NEWTABLE                         R44 0 3
      411 LOADN                            R45 25
      412 LOADN                            R46 7
      413 LOADN                            R47 21
      414 SETLIST                          R44 R45 3 [1]
      416 SETTABLEKS                       R44 R43 K54 ["lastUpdated"]
      418 CALL                             R42 1 1
      419 GETIMPORT                        R43 K44 [table.freeze]
      421 DUPTABLE                         R44 K100 [{["eventName"] = "CAPMessageResubmitted", ["backends"], ["description"] = "User message retry/resubmit event with request ID.", ["lastUpdated"]}]
      422 SETTABLEKS                       R29 R44 K51 ["backends"]
      424 NEWTABLE                         R45 0 3
      426 LOADN                            R46 25
      427 LOADN                            R47 8
      428 LOADN                            R48 7
      429 SETLIST                          R45 R46 3 [1]
      431 SETTABLEKS                       R45 R44 K54 ["lastUpdated"]
      433 CALL                             R43 1 1
      434 GETIMPORT                        R44 K44 [table.freeze]
      436 DUPTABLE                         R45 K103 [{["eventName"] = "CAPStopGeneration", ["backends"], ["description"] = "User stop generation event with request ID.", ["lastUpdated"]}]
      437 SETTABLEKS                       R29 R45 K51 ["backends"]
      439 NEWTABLE                         R46 0 3
      441 LOADN                            R47 25
      442 LOADN                            R48 8
      443 LOADN                            R49 7
      444 SETLIST                          R46 R47 3 [1]
      446 SETTABLEKS                       R46 R45 K54 ["lastUpdated"]
      448 CALL                             R44 1 1
      449 GETIMPORT                        R45 K44 [table.freeze]
      451 DUPTABLE                         R46 K106 [{["eventName"] = "CAPToolEnded", ["backends"], ["description"] = "Tool invocation ended event with request ID and tool name", ["lastUpdated"]}]
      452 SETTABLEKS                       R29 R46 K51 ["backends"]
      454 NEWTABLE                         R47 0 3
      456 LOADN                            R48 25
      457 LOADN                            R49 7
      458 LOADN                            R50 21
      459 SETLIST                          R47 R48 3 [1]
      461 SETTABLEKS                       R47 R46 K54 ["lastUpdated"]
      463 CALL                             R45 1 1
      464 GETIMPORT                        R46 K44 [table.freeze]
      466 DUPTABLE                         R47 K109 [{["eventName"] = "StudioAssistantToolEndedCount", ["backends"], ["description"] = "Count of completed tool invocations.", ["lastUpdated"]}]
      467 NEWTABLE                         R48 0 1
      469 GETTABLEKS                       R49 R8 K45 ["Backends"]
      471 GETTABLEKS                       R49 R49 K57 ["RobloxTelemetryCounter"]
      473 SETLIST                          R48 R49 1 [1]
      475 SETTABLEKS                       R48 R47 K51 ["backends"]
      477 NEWTABLE                         R48 0 3
      479 LOADN                            R49 26
      480 LOADN                            R50 7
      481 LOADN                            R51 24
      482 SETLIST                          R48 R49 3 [1]
      484 SETTABLEKS                       R48 R47 K54 ["lastUpdated"]
      486 CALL                             R46 1 1
      487 GETIMPORT                        R47 K44 [table.freeze]
      489 DUPTABLE                         R48 K112 [{["eventName"] = "CAPToolStarted", ["backends"], ["description"] = "Tool invocation started event with request ID and tool name.", ["lastUpdated"]}]
      490 SETTABLEKS                       R29 R48 K51 ["backends"]
      492 NEWTABLE                         R49 0 3
      494 LOADN                            R50 25
      495 LOADN                            R51 8
      496 LOADN                            R52 7
      497 SETLIST                          R49 R50 3 [1]
      499 SETTABLEKS                       R49 R48 K54 ["lastUpdated"]
      501 CALL                             R47 1 1
      502 GETIMPORT                        R48 K44 [table.freeze]
      504 DUPTABLE                         R49 K115 [{["eventName"] = "StudioAssistantToolStartedCount", ["backends"], ["description"] = "Count of started tool invocations.", ["lastUpdated"]}]
      505 NEWTABLE                         R50 0 1
      507 GETTABLEKS                       R51 R8 K45 ["Backends"]
      509 GETTABLEKS                       R51 R51 K57 ["RobloxTelemetryCounter"]
      511 SETLIST                          R50 R51 1 [1]
      513 SETTABLEKS                       R50 R49 K51 ["backends"]
      515 NEWTABLE                         R50 0 3
      517 LOADN                            R51 26
      518 LOADN                            R52 7
      519 LOADN                            R53 24
      520 SETLIST                          R50 R51 3 [1]
      522 SETTABLEKS                       R50 R49 K54 ["lastUpdated"]
      524 CALL                             R48 1 1
      525 GETIMPORT                        R49 K44 [table.freeze]
      527 DUPTABLE                         R50 K118 [{["eventName"] = "StudioAssistantFailedToolInvocation", ["backends"], ["description"] = "Tool invocation failed before local execution began.", ["lastUpdated"]}]
      528 SETTABLEKS                       R29 R50 K51 ["backends"]
      530 NEWTABLE                         R51 0 3
      532 LOADN                            R52 26
      533 LOADN                            R53 7
      534 LOADN                            R54 24
      535 SETLIST                          R51 R52 3 [1]
      537 SETTABLEKS                       R51 R50 K54 ["lastUpdated"]
      539 CALL                             R49 1 1
      540 GETIMPORT                        R50 K44 [table.freeze]
      542 DUPTABLE                         R51 K121 [{["eventName"] = "StudioAssistantFailedToolInvocationCount", ["backends"], ["description"] = "Count of tool invocations that failed before local execution began.", ["lastUpdated"]}]
      543 NEWTABLE                         R52 0 1
      545 GETTABLEKS                       R53 R8 K45 ["Backends"]
      547 GETTABLEKS                       R53 R53 K57 ["RobloxTelemetryCounter"]
      549 SETLIST                          R52 R53 1 [1]
      551 SETTABLEKS                       R52 R51 K51 ["backends"]
      553 NEWTABLE                         R52 0 3
      555 LOADN                            R53 26
      556 LOADN                            R54 7
      557 LOADN                            R55 24
      558 SETLIST                          R52 R53 3 [1]
      560 SETTABLEKS                       R52 R51 K54 ["lastUpdated"]
      562 CALL                             R50 1 1
      563 GETIMPORT                        R51 K44 [table.freeze]
      565 DUPTABLE                         R52 K124 [{["eventName"] = "CAPToolConfirmationShown", ["backends"], ["description"] = "Tool confirmation dialog shown event with request ID, tool name, and warning message.", ["lastUpdated"]}]
      566 SETTABLEKS                       R29 R52 K51 ["backends"]
      568 NEWTABLE                         R53 0 3
      570 LOADN                            R54 25
      571 LOADN                            R55 9
      572 LOADN                            R56 19
      573 SETLIST                          R53 R54 3 [1]
      575 SETTABLEKS                       R53 R52 K54 ["lastUpdated"]
      577 CALL                             R51 1 1
      578 GETIMPORT                        R52 K44 [table.freeze]
      580 DUPTABLE                         R53 K127 [{["eventName"] = "CAPToolConfirmationResult", ["backends"], ["description"] = "Tool confirmation dialog result event with request ID and user choice.", ["lastUpdated"]}]
      581 SETTABLEKS                       R29 R53 K51 ["backends"]
      583 NEWTABLE                         R54 0 3
      585 LOADN                            R55 25
      586 LOADN                            R56 9
      587 LOADN                            R57 19
      588 SETLIST                          R54 R55 3 [1]
      590 SETTABLEKS                       R54 R53 K54 ["lastUpdated"]
      592 CALL                             R52 1 1
      593 GETIMPORT                        R53 K44 [table.freeze]
      595 DUPTABLE                         R54 K130 [{["eventName"] = "CAPExternalAPIError", ["backends"], ["description"] = "External LLM API error event with request ID, model, and HTTP status code.", ["lastUpdated"]}]
      596 SETTABLEKS                       R29 R54 K51 ["backends"]
      598 NEWTABLE                         R55 0 3
      600 LOADN                            R56 25
      601 LOADN                            R57 12
      602 LOADN                            R58 16
      603 SETLIST                          R55 R56 3 [1]
      605 SETTABLEKS                       R55 R54 K54 ["lastUpdated"]
      607 CALL                             R53 1 1
      608 GETIMPORT                        R54 K44 [table.freeze]
      610 DUPTABLE                         R55 K133 [{["eventName"] = "CAPMeshGenActivated", ["backends"], ["description"] = "Count of MeshGen tool activations.", ["lastUpdated"]}]
      611 NEWTABLE                         R56 0 1
      613 GETTABLEKS                       R57 R8 K45 ["Backends"]
      615 GETTABLEKS                       R57 R57 K57 ["RobloxTelemetryCounter"]
      617 SETLIST                          R56 R57 1 [1]
      619 SETTABLEKS                       R56 R55 K51 ["backends"]
      621 NEWTABLE                         R56 0 3
      623 LOADN                            R57 26
      624 LOADN                            R58 2
      625 LOADN                            R59 6
      626 SETLIST                          R56 R57 3 [1]
      628 SETTABLEKS                       R56 R55 K54 ["lastUpdated"]
      630 CALL                             R54 1 1
      631 GETIMPORT                        R55 K44 [table.freeze]
      633 DUPTABLE                         R56 K136 [{["eventName"] = "CAPMeshGenCompletedSuccess", ["backends"], ["description"] = "Count of successful MeshGen completions.", ["lastUpdated"]}]
      634 NEWTABLE                         R57 0 1
      636 GETTABLEKS                       R58 R8 K45 ["Backends"]
      638 GETTABLEKS                       R58 R58 K57 ["RobloxTelemetryCounter"]
      640 SETLIST                          R57 R58 1 [1]
      642 SETTABLEKS                       R57 R56 K51 ["backends"]
      644 NEWTABLE                         R57 0 3
      646 LOADN                            R58 26
      647 LOADN                            R59 2
      648 LOADN                            R60 6
      649 SETLIST                          R57 R58 3 [1]
      651 SETTABLEKS                       R57 R56 K54 ["lastUpdated"]
      653 CALL                             R55 1 1
      654 GETIMPORT                        R56 K44 [table.freeze]
      656 DUPTABLE                         R57 K139 [{["eventName"] = "CAPMeshGenCompletedFailure", ["backends"], ["description"] = "Count of failed MeshGen completions.", ["lastUpdated"]}]
      657 NEWTABLE                         R58 0 1
      659 GETTABLEKS                       R59 R8 K45 ["Backends"]
      661 GETTABLEKS                       R59 R59 K57 ["RobloxTelemetryCounter"]
      663 SETLIST                          R58 R59 1 [1]
      665 SETTABLEKS                       R58 R57 K51 ["backends"]
      667 NEWTABLE                         R58 0 3
      669 LOADN                            R59 26
      670 LOADN                            R60 2
      671 LOADN                            R61 6
      672 SETLIST                          R58 R59 3 [1]
      674 SETTABLEKS                       R58 R57 K54 ["lastUpdated"]
      676 CALL                             R56 1 1
      677 GETIMPORT                        R57 K44 [table.freeze]
      679 DUPTABLE                         R58 K142 [{["eventName"] = "CAPMeshGenCompleted", ["backends"], ["description"] = "MeshGen generation completed event with details.", ["lastUpdated"]}]
      680 SETTABLEKS                       R29 R58 K51 ["backends"]
      682 NEWTABLE                         R59 0 3
      684 LOADN                            R60 26
      685 LOADN                            R61 2
      686 LOADN                            R62 6
      687 SETLIST                          R59 R60 3 [1]
      689 SETTABLEKS                       R59 R58 K54 ["lastUpdated"]
      691 CALL                             R57 1 1
      692 GETIMPORT                        R58 K44 [table.freeze]
      694 DUPTABLE                         R59 K145 [{["eventName"] = "CAPMeshGenPublishedAssetsSuccess", ["backends"], ["description"] = "Count of successful MeshGen asset publications.", ["lastUpdated"]}]
      695 NEWTABLE                         R60 0 1
      697 GETTABLEKS                       R61 R8 K45 ["Backends"]
      699 GETTABLEKS                       R61 R61 K57 ["RobloxTelemetryCounter"]
      701 SETLIST                          R60 R61 1 [1]
      703 SETTABLEKS                       R60 R59 K51 ["backends"]
      705 NEWTABLE                         R60 0 3
      707 LOADN                            R61 26
      708 LOADN                            R62 2
      709 LOADN                            R63 6
      710 SETLIST                          R60 R61 3 [1]
      712 SETTABLEKS                       R60 R59 K54 ["lastUpdated"]
      714 CALL                             R58 1 1
      715 GETIMPORT                        R59 K44 [table.freeze]
      717 DUPTABLE                         R60 K148 [{["eventName"] = "CAPMeshGenPublishedAssetsFailure", ["backends"], ["description"] = "Count of failed MeshGen asset publications.", ["lastUpdated"]}]
      718 NEWTABLE                         R61 0 1
      720 GETTABLEKS                       R62 R8 K45 ["Backends"]
      722 GETTABLEKS                       R62 R62 K57 ["RobloxTelemetryCounter"]
      724 SETLIST                          R61 R62 1 [1]
      726 SETTABLEKS                       R61 R60 K51 ["backends"]
      728 NEWTABLE                         R61 0 3
      730 LOADN                            R62 26
      731 LOADN                            R63 2
      732 LOADN                            R64 6
      733 SETLIST                          R61 R62 3 [1]
      735 SETTABLEKS                       R61 R60 K54 ["lastUpdated"]
      737 CALL                             R59 1 1
      738 GETIMPORT                        R60 K44 [table.freeze]
      740 DUPTABLE                         R61 K151 [{["eventName"] = "CAPMeshGenPublishedAssets", ["backends"], ["description"] = "MeshGen assets published event with details.", ["lastUpdated"]}]
      741 SETTABLEKS                       R29 R61 K51 ["backends"]
      743 NEWTABLE                         R62 0 3
      745 LOADN                            R63 26
      746 LOADN                            R64 2
      747 LOADN                            R65 6
      748 SETLIST                          R62 R63 3 [1]
      750 SETTABLEKS                       R62 R61 K54 ["lastUpdated"]
      752 CALL                             R60 1 1
      753 GETIMPORT                        R61 K44 [table.freeze]
      755 DUPTABLE                         R62 K154 [{["eventName"] = "CAPMeshGenMeshInsertedSuccess", ["backends"], ["description"] = "Count of successful MeshGen mesh insertions.", ["lastUpdated"]}]
      756 NEWTABLE                         R63 0 1
      758 GETTABLEKS                       R64 R8 K45 ["Backends"]
      760 GETTABLEKS                       R64 R64 K57 ["RobloxTelemetryCounter"]
      762 SETLIST                          R63 R64 1 [1]
      764 SETTABLEKS                       R63 R62 K51 ["backends"]
      766 NEWTABLE                         R63 0 3
      768 LOADN                            R64 26
      769 LOADN                            R65 2
      770 LOADN                            R66 6
      771 SETLIST                          R63 R64 3 [1]
      773 SETTABLEKS                       R63 R62 K54 ["lastUpdated"]
      775 CALL                             R61 1 1
      776 GETIMPORT                        R62 K44 [table.freeze]
      778 DUPTABLE                         R63 K157 [{["eventName"] = "CAPMeshGenMeshInsertedFailure", ["backends"], ["description"] = "Count of failed MeshGen mesh insertions.", ["lastUpdated"]}]
      779 NEWTABLE                         R64 0 1
      781 GETTABLEKS                       R65 R8 K45 ["Backends"]
      783 GETTABLEKS                       R65 R65 K57 ["RobloxTelemetryCounter"]
      785 SETLIST                          R64 R65 1 [1]
      787 SETTABLEKS                       R64 R63 K51 ["backends"]
      789 NEWTABLE                         R64 0 3
      791 LOADN                            R65 26
      792 LOADN                            R66 2
      793 LOADN                            R67 6
      794 SETLIST                          R64 R65 3 [1]
      796 SETTABLEKS                       R64 R63 K54 ["lastUpdated"]
      798 CALL                             R62 1 1
      799 GETIMPORT                        R63 K44 [table.freeze]
      801 DUPTABLE                         R64 K160 [{["eventName"] = "CAPMeshGenMeshInserted", ["backends"], ["description"] = "MeshGen mesh inserted event with details.", ["lastUpdated"]}]
      802 SETTABLEKS                       R29 R64 K51 ["backends"]
      804 NEWTABLE                         R65 0 3
      806 LOADN                            R66 26
      807 LOADN                            R67 2
      808 LOADN                            R68 6
      809 SETLIST                          R65 R66 3 [1]
      811 SETTABLEKS                       R65 R64 K54 ["lastUpdated"]
      813 CALL                             R63 1 1
      814 GETIMPORT                        R64 K44 [table.freeze]
      816 DUPTABLE                         R65 K162 [{["eventName"], ["backends"], ["description"] = "Count of PrimitiveGen completions with success status.", ["lastUpdated"]}]
      817 LOADK                            R66 K163 ["StudioAssistantPrimitiveGenCompletedCount"]
      818 SETTABLEKS                       R66 R65 K50 ["eventName"]
      820 NEWTABLE                         R66 0 1
      822 GETTABLEKS                       R67 R8 K45 ["Backends"]
      824 GETTABLEKS                       R67 R67 K57 ["RobloxTelemetryCounter"]
      826 SETLIST                          R66 R67 1 [1]
      828 SETTABLEKS                       R66 R65 K51 ["backends"]
      830 NEWTABLE                         R66 0 3
      832 LOADN                            R67 26
      833 LOADN                            R68 3
      834 LOADN                            R69 12
      835 SETLIST                          R66 R67 3 [1]
      837 SETTABLEKS                       R66 R65 K54 ["lastUpdated"]
      839 CALL                             R64 1 1
      840 GETIMPORT                        R65 K44 [table.freeze]
      842 DUPTABLE                         R66 K165 [{["eventName"], ["backends"], ["description"] = "PrimitiveGen completion event with generation, prompt, render latency, and dependency details.", ["lastUpdated"]}]
      843 LOADK                            R67 K166 ["StudioAssistantPrimitiveGenCompleted"]
      844 SETTABLEKS                       R67 R66 K50 ["eventName"]
      846 SETTABLEKS                       R29 R66 K51 ["backends"]
      848 NEWTABLE                         R67 0 3
      850 LOADN                            R68 26
      851 LOADN                            R69 3
      852 LOADN                            R70 12
      853 SETLIST                          R67 R68 3 [1]
      855 SETTABLEKS                       R67 R66 K54 ["lastUpdated"]
      857 CALL                             R65 1 1
      858 GETIMPORT                        R66 K44 [table.freeze]
      860 DUPTABLE                         R67 K168 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call started.", ["lastUpdated"]}]
      861 LOADK                            R68 K169 ["StudioAssistantAvatarAutoSetupRequested"]
      862 SETTABLEKS                       R68 R67 K50 ["eventName"]
      864 SETTABLEKS                       R29 R67 K51 ["backends"]
      866 NEWTABLE                         R68 0 3
      868 LOADN                            R69 26
      869 LOADN                            R70 7
      870 LOADN                            R71 22
      871 SETLIST                          R68 R69 3 [1]
      873 SETTABLEKS                       R68 R67 K54 ["lastUpdated"]
      875 CALL                             R66 1 1
      876 GETIMPORT                        R67 K44 [table.freeze]
      878 DUPTABLE                         R68 K171 [{["eventName"], ["backends"], ["description"] = "Auto-setup options used for an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      879 LOADK                            R69 K172 ["StudioAssistantAvatarAutoSetupOptions"]
      880 SETTABLEKS                       R69 R68 K50 ["eventName"]
      882 SETTABLEKS                       R29 R68 K51 ["backends"]
      884 NEWTABLE                         R69 0 3
      886 LOADN                            R70 26
      887 LOADN                            R71 7
      888 LOADN                            R72 22
      889 SETLIST                          R69 R70 3 [1]
      891 SETTABLEKS                       R69 R68 K54 ["lastUpdated"]
      893 CALL                             R67 1 1
      894 GETIMPORT                        R68 K44 [table.freeze]
      896 DUPTABLE                         R69 K174 [{["eventName"], ["backends"], ["description"] = "Engine assigned a job id to an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      897 LOADK                            R70 K175 ["StudioAssistantAvatarAutoSetupJobInitialized"]
      898 SETTABLEKS                       R70 R69 K50 ["eventName"]
      900 SETTABLEKS                       R29 R69 K51 ["backends"]
      902 NEWTABLE                         R70 0 3
      904 LOADN                            R71 26
      905 LOADN                            R72 7
      906 LOADN                            R73 22
      907 SETLIST                          R70 R71 3 [1]
      909 SETTABLEKS                       R70 R69 K54 ["lastUpdated"]
      911 CALL                             R68 1 1
      912 GETIMPORT                        R69 K44 [table.freeze]
      914 DUPTABLE                         R70 K177 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call completed successfully.", ["lastUpdated"]}]
      915 LOADK                            R71 K178 ["StudioAssistantAvatarAutoSetupFinish"]
      916 SETTABLEKS                       R71 R70 K50 ["eventName"]
      918 SETTABLEKS                       R29 R70 K51 ["backends"]
      920 NEWTABLE                         R71 0 3
      922 LOADN                            R72 26
      923 LOADN                            R73 7
      924 LOADN                            R74 22
      925 SETLIST                          R71 R72 3 [1]
      927 SETTABLEKS                       R71 R70 K54 ["lastUpdated"]
      929 CALL                             R69 1 1
      930 GETIMPORT                        R70 K44 [table.freeze]
      932 DUPTABLE                         R71 K180 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call failed before returning a model.", ["lastUpdated"]}]
      933 LOADK                            R72 K181 ["StudioAssistantAvatarAutoSetupFailure"]
      934 SETTABLEKS                       R72 R71 K50 ["eventName"]
      936 SETTABLEKS                       R29 R71 K51 ["backends"]
      938 NEWTABLE                         R72 0 3
      940 LOADN                            R73 26
      941 LOADN                            R74 7
      942 LOADN                            R75 22
      943 SETLIST                          R72 R73 3 [1]
      945 SETTABLEKS                       R72 R71 K54 ["lastUpdated"]
      947 CALL                             R70 1 1
      948 GETIMPORT                        R71 K44 [table.freeze]
      950 DUPTABLE                         R72 K183 [{["eventName"], ["backends"], ["description"] = "Count of successful MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      951 LOADK                            R73 K184 ["StudioAssistantAvatarAutoSetupFinishCount"]
      952 SETTABLEKS                       R73 R72 K50 ["eventName"]
      954 NEWTABLE                         R73 0 1
      956 GETTABLEKS                       R74 R8 K45 ["Backends"]
      958 GETTABLEKS                       R74 R74 K57 ["RobloxTelemetryCounter"]
      960 SETLIST                          R73 R74 1 [1]
      962 SETTABLEKS                       R73 R72 K51 ["backends"]
      964 NEWTABLE                         R73 0 3
      966 LOADN                            R74 26
      967 LOADN                            R75 7
      968 LOADN                            R76 29
      969 SETLIST                          R73 R74 3 [1]
      971 SETTABLEKS                       R73 R72 K54 ["lastUpdated"]
      973 CALL                             R71 1 1
      974 GETIMPORT                        R72 K44 [table.freeze]
      976 DUPTABLE                         R73 K186 [{["eventName"], ["backends"], ["description"] = "Count of failed MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      977 LOADK                            R74 K187 ["StudioAssistantAvatarAutoSetupFailureCount"]
      978 SETTABLEKS                       R74 R73 K50 ["eventName"]
      980 NEWTABLE                         R74 0 1
      982 GETTABLEKS                       R75 R8 K45 ["Backends"]
      984 GETTABLEKS                       R75 R75 K57 ["RobloxTelemetryCounter"]
      986 SETLIST                          R74 R75 1 [1]
      988 SETTABLEKS                       R74 R73 K51 ["backends"]
      990 NEWTABLE                         R74 0 3
      992 LOADN                            R75 26
      993 LOADN                            R76 7
      994 LOADN                            R77 29
      995 SETLIST                          R74 R75 3 [1]
      997 SETTABLEKS                       R74 R73 K54 ["lastUpdated"]
      999 CALL                             R72 1 1
     1000 GETIMPORT                        R73 K44 [table.freeze]
     1002 DUPTABLE                         R74 K189 [{["eventName"], ["backends"], ["description"] = "Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat.", ["lastUpdated"]}]
     1003 LOADK                            R75 K190 ["StudioAssistantGen3DSegmentationRefresh"]
     1004 SETTABLEKS                       R75 R74 K50 ["eventName"]
     1006 NEWTABLE                         R75 0 1
     1008 GETTABLEKS                       R76 R8 K45 ["Backends"]
     1010 GETTABLEKS                       R76 R76 K57 ["RobloxTelemetryCounter"]
     1012 SETLIST                          R75 R76 1 [1]
     1014 SETTABLEKS                       R75 R74 K51 ["backends"]
     1016 NEWTABLE                         R75 0 3
     1018 LOADN                            R76 26
     1019 LOADN                            R77 6
     1020 LOADN                            R78 9
     1021 SETLIST                          R75 R76 3 [1]
     1023 SETTABLEKS                       R75 R74 K54 ["lastUpdated"]
     1025 CALL                             R73 1 1
     1026 GETIMPORT                        R74 K44 [table.freeze]
     1028 DUPTABLE                         R75 K192 [{["eventName"], ["backends"], ["description"] = "Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session.", ["lastUpdated"]}]
     1029 LOADK                            R76 K193 ["StudioAssistantGen3DInstanceDeleted"]
     1030 SETTABLEKS                       R76 R75 K50 ["eventName"]
     1032 SETTABLEKS                       R29 R75 K51 ["backends"]
     1034 NEWTABLE                         R76 0 3
     1036 LOADN                            R77 26
     1037 LOADN                            R78 6
     1038 LOADN                            R79 9
     1039 SETLIST                          R76 R77 3 [1]
     1041 SETTABLEKS                       R76 R75 K54 ["lastUpdated"]
     1043 CALL                             R74 1 1
     1044 GETIMPORT                        R75 K44 [table.freeze]
     1046 DUPTABLE                         R76 K195 [{["eventName"], ["backends"], ["description"] = "Fired once per image-preview batch (MeshGen/PrimitiveGen picker) with the option ids shown to the user.", ["lastUpdated"]}]
     1047 LOADK                            R77 K196 ["StudioAssistantGen3DImageImpression"]
     1048 SETTABLEKS                       R77 R76 K50 ["eventName"]
     1050 SETTABLEKS                       R29 R76 K51 ["backends"]
     1052 NEWTABLE                         R77 0 3
     1054 LOADN                            R78 26
     1055 LOADN                            R79 7
     1056 LOADN                            R80 30
     1057 SETLIST                          R77 R78 3 [1]
     1059 SETTABLEKS                       R77 R76 K54 ["lastUpdated"]
     1061 CALL                             R75 1 1
     1062 GETIMPORT                        R76 K44 [table.freeze]
     1064 DUPTABLE                         R77 K198 [{["eventName"], ["backends"], ["description"] = "Count of image-preview picker actions (select/refresh/refine/back), labelled by action and modelFlow.", ["lastUpdated"]}]
     1065 LOADK                            R78 K199 ["StudioAssistantGen3DImageActionCount"]
     1066 SETTABLEKS                       R78 R77 K50 ["eventName"]
     1068 NEWTABLE                         R78 0 1
     1070 GETTABLEKS                       R79 R8 K45 ["Backends"]
     1072 GETTABLEKS                       R79 R79 K57 ["RobloxTelemetryCounter"]
     1074 SETLIST                          R78 R79 1 [1]
     1076 SETTABLEKS                       R78 R77 K51 ["backends"]
     1078 NEWTABLE                         R78 0 3
     1080 LOADN                            R79 26
     1081 LOADN                            R80 7
     1082 LOADN                            R81 30
     1083 SETLIST                          R78 R79 3 [1]
     1085 SETTABLEKS                       R78 R77 K54 ["lastUpdated"]
     1087 CALL                             R76 1 1
     1088 GETIMPORT                        R77 K44 [table.freeze]
     1090 DUPTABLE                         R78 K201 [{["eventName"], ["backends"], ["description"] = "Fired for each user action taken on the image-preview picker (MeshGen/PrimitiveGen).", ["lastUpdated"]}]
     1091 LOADK                            R79 K202 ["StudioAssistantGen3DImageAction"]
     1092 SETTABLEKS                       R79 R78 K50 ["eventName"]
     1094 SETTABLEKS                       R29 R78 K51 ["backends"]
     1096 NEWTABLE                         R79 0 3
     1098 LOADN                            R80 26
     1099 LOADN                            R81 7
     1100 LOADN                            R82 30
     1101 SETLIST                          R79 R80 3 [1]
     1103 SETTABLEKS                       R79 R78 K54 ["lastUpdated"]
     1105 CALL                             R77 1 1
     1106 GETIMPORT                        R78 K44 [table.freeze]
     1108 DUPTABLE                         R79 K204 [{["eventName"], ["backends"], ["description"] = "Fired per distinct generationId still tagged in the DataModel when a place publish starts. Shared across MeshGen, PrimitiveGen, and future Gen3D-style tools.", ["lastUpdated"]}]
     1109 LOADK                            R80 K205 ["StudioAssistantGen3DAssetPublished"]
     1110 SETTABLEKS                       R80 R79 K50 ["eventName"]
     1112 SETTABLEKS                       R29 R79 K51 ["backends"]
     1114 NEWTABLE                         R80 0 3
     1116 LOADN                            R81 26
     1117 LOADN                            R82 7
     1118 LOADN                            R83 30
     1119 SETLIST                          R80 R81 3 [1]
     1121 SETTABLEKS                       R80 R79 K54 ["lastUpdated"]
     1123 CALL                             R78 1 1
     1124 GETIMPORT                        R79 K44 [table.freeze]
     1126 DUPTABLE                         R80 K207 [{["eventName"], ["backends"], ["description"] = "Count of AI-generated assets still present at publish time, labelled by modelFlow.", ["lastUpdated"]}]
     1127 LOADK                            R81 K208 ["StudioAssistantGen3DAssetPublishedCount"]
     1128 SETTABLEKS                       R81 R80 K50 ["eventName"]
     1130 NEWTABLE                         R81 0 1
     1132 GETTABLEKS                       R82 R8 K45 ["Backends"]
     1134 GETTABLEKS                       R82 R82 K57 ["RobloxTelemetryCounter"]
     1136 SETLIST                          R81 R82 1 [1]
     1138 SETTABLEKS                       R81 R80 K51 ["backends"]
     1140 NEWTABLE                         R81 0 3
     1142 LOADN                            R82 26
     1143 LOADN                            R83 7
     1144 LOADN                            R84 30
     1145 SETLIST                          R81 R82 3 [1]
     1147 SETTABLEKS                       R81 R80 K54 ["lastUpdated"]
     1149 CALL                             R79 1 1
     1150 GETIMPORT                        R80 K44 [table.freeze]
     1152 DUPTABLE                         R81 K210 [{["eventName"], ["backends"], ["description"] = "Integration event with action, label, and URL.", ["lastUpdated"]}]
     1153 LOADK                            R82 K211 ["StudioAssistantIntegrationAction"]
     1154 SETTABLEKS                       R82 R81 K50 ["eventName"]
     1156 SETTABLEKS                       R29 R81 K51 ["backends"]
     1158 NEWTABLE                         R82 0 3
     1160 LOADN                            R83 26
     1161 LOADN                            R84 2
     1162 LOADN                            R85 3
     1163 SETLIST                          R82 R83 3 [1]
     1165 SETTABLEKS                       R82 R81 K54 ["lastUpdated"]
     1167 CALL                             R80 1 1
     1168 GETIMPORT                        R81 K44 [table.freeze]
     1170 DUPTABLE                         R82 K213 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1171 LOADK                            R83 K214 ["StudioAssistantExternalServerConnectedEvent"]
     1172 SETTABLEKS                       R83 R82 K50 ["eventName"]
     1174 SETTABLEKS                       R29 R82 K51 ["backends"]
     1176 NEWTABLE                         R83 0 3
     1178 LOADN                            R84 26
     1179 LOADN                            R85 2
     1180 LOADN                            R86 25
     1181 SETLIST                          R83 R84 3 [1]
     1183 SETTABLEKS                       R83 R82 K54 ["lastUpdated"]
     1185 CALL                             R81 1 1
     1186 GETIMPORT                        R82 K44 [table.freeze]
     1188 DUPTABLE                         R83 K213 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1189 LOADK                            R84 K215 ["StudioAssistantExternalServerConnectedCounter"]
     1190 SETTABLEKS                       R84 R83 K50 ["eventName"]
     1192 NEWTABLE                         R84 0 1
     1194 GETTABLEKS                       R85 R8 K45 ["Backends"]
     1196 GETTABLEKS                       R85 R85 K57 ["RobloxTelemetryCounter"]
     1198 SETLIST                          R84 R85 1 [1]
     1200 SETTABLEKS                       R84 R83 K51 ["backends"]
     1202 NEWTABLE                         R84 0 3
     1204 LOADN                            R85 26
     1205 LOADN                            R86 2
     1206 LOADN                            R87 25
     1207 SETLIST                          R84 R85 3 [1]
     1209 SETTABLEKS                       R84 R83 K54 ["lastUpdated"]
     1211 CALL                             R82 1 1
     1212 GETIMPORT                        R83 K44 [table.freeze]
     1214 DUPTABLE                         R84 K218 [{["eventName"] = "CAPQuestionAnswerCompleted", ["backends"], ["description"] = "Question answer tool completed event with full question/answer context.", ["lastUpdated"]}]
     1215 SETTABLEKS                       R29 R84 K51 ["backends"]
     1217 NEWTABLE                         R85 0 3
     1219 LOADN                            R86 26
     1220 LOADN                            R87 4
     1221 LOADN                            R88 1
     1222 SETLIST                          R85 R86 3 [1]
     1224 SETTABLEKS                       R85 R84 K54 ["lastUpdated"]
     1226 CALL                             R83 1 1
     1227 GETIMPORT                        R84 K44 [table.freeze]
     1229 DUPTABLE                         R85 K220 [{["eventName"], ["backends"], ["description"] = "Count of question answer tool completions.", ["lastUpdated"]}]
     1230 LOADK                            R86 K221 ["StudioAssistantQuestionAnswerCompleted"]
     1231 SETTABLEKS                       R86 R85 K50 ["eventName"]
     1233 NEWTABLE                         R86 0 1
     1235 GETTABLEKS                       R87 R8 K45 ["Backends"]
     1237 GETTABLEKS                       R87 R87 K57 ["RobloxTelemetryCounter"]
     1239 SETLIST                          R86 R87 1 [1]
     1241 SETTABLEKS                       R86 R85 K51 ["backends"]
     1243 NEWTABLE                         R86 0 3
     1245 LOADN                            R87 26
     1246 LOADN                            R88 4
     1247 LOADN                            R89 1
     1248 SETLIST                          R86 R87 3 [1]
     1250 SETTABLEKS                       R86 R85 K54 ["lastUpdated"]
     1252 CALL                             R84 1 1
     1253 GETIMPORT                        R85 K44 [table.freeze]
     1255 DUPTABLE                         R86 K224 [{["eventName"] = "CAPPlanDecision", ["backends"], ["description"] = "Plan decision event with full plan context when user accepts or rejects a plan.", ["lastUpdated"]}]
     1256 SETTABLEKS                       R29 R86 K51 ["backends"]
     1258 NEWTABLE                         R87 0 3
     1260 LOADN                            R88 26
     1261 LOADN                            R89 4
     1262 LOADN                            R90 1
     1263 SETLIST                          R87 R88 3 [1]
     1265 SETTABLEKS                       R87 R86 K54 ["lastUpdated"]
     1267 CALL                             R85 1 1
     1268 GETIMPORT                        R86 K44 [table.freeze]
     1270 DUPTABLE                         R87 K226 [{["eventName"], ["backends"], ["description"] = "Count of plan decisions.", ["lastUpdated"]}]
     1271 LOADK                            R88 K227 ["StudioAssistantPlanDecision"]
     1272 SETTABLEKS                       R88 R87 K50 ["eventName"]
     1274 NEWTABLE                         R88 0 1
     1276 GETTABLEKS                       R89 R8 K45 ["Backends"]
     1278 GETTABLEKS                       R89 R89 K57 ["RobloxTelemetryCounter"]
     1280 SETLIST                          R88 R89 1 [1]
     1282 SETTABLEKS                       R88 R87 K51 ["backends"]
     1284 NEWTABLE                         R88 0 3
     1286 LOADN                            R89 26
     1287 LOADN                            R90 4
     1288 LOADN                            R91 1
     1289 SETLIST                          R88 R89 3 [1]
     1291 SETTABLEKS                       R88 R87 K54 ["lastUpdated"]
     1293 CALL                             R86 1 1
     1294 GETIMPORT                        R87 K44 [table.freeze]
     1296 DUPTABLE                         R88 K230 [{["eventName"] = "SBT_MaterialGeneratorSavedMaterial", ["backends"], ["description"] = "Counter to track number of saved materials", ["lastUpdated"]}]
     1297 NEWTABLE                         R89 0 1
     1299 GETTABLEKS                       R90 R8 K45 ["Backends"]
     1301 GETTABLEKS                       R90 R90 K57 ["RobloxTelemetryCounter"]
     1303 SETLIST                          R89 R90 1 [1]
     1305 SETTABLEKS                       R89 R88 K51 ["backends"]
     1307 NEWTABLE                         R89 0 3
     1309 LOADN                            R90 24
     1310 LOADN                            R91 10
     1311 LOADN                            R92 15
     1312 SETLIST                          R89 R90 3 [1]
     1314 SETTABLEKS                       R89 R88 K54 ["lastUpdated"]
     1316 CALL                             R87 1 1
     1317 GETIMPORT                        R88 K44 [table.freeze]
     1319 DUPTABLE                         R89 K232 [{["eventName"], ["backends"], ["description"] = "Thread created event with details.", ["lastUpdated"]}]
     1320 LOADK                            R90 K233 ["StudioAssistantThreadCreated"]
     1321 SETTABLEKS                       R90 R89 K50 ["eventName"]
     1323 SETTABLEKS                       R29 R89 K51 ["backends"]
     1325 NEWTABLE                         R90 0 3
     1327 LOADN                            R91 26
     1328 LOADN                            R92 3
     1329 LOADN                            R93 10
     1330 SETLIST                          R90 R91 3 [1]
     1332 SETTABLEKS                       R90 R89 K54 ["lastUpdated"]
     1334 CALL                             R88 1 1
     1335 GETIMPORT                        R89 K44 [table.freeze]
     1337 DUPTABLE                         R90 K235 [{["eventName"], ["backends"], ["description"] = "Thread named event with details.", ["lastUpdated"]}]
     1338 LOADK                            R91 K236 ["StudioAssistantThreadRenamed"]
     1339 SETTABLEKS                       R91 R90 K50 ["eventName"]
     1341 SETTABLEKS                       R29 R90 K51 ["backends"]
     1343 NEWTABLE                         R91 0 3
     1345 LOADN                            R92 26
     1346 LOADN                            R93 3
     1347 LOADN                            R94 10
     1348 SETLIST                          R91 R92 3 [1]
     1350 SETTABLEKS                       R91 R90 K54 ["lastUpdated"]
     1352 CALL                             R89 1 1
     1353 GETIMPORT                        R90 K44 [table.freeze]
     1355 DUPTABLE                         R91 K238 [{["eventName"], ["backends"], ["description"] = "Thread pinned changed event with details.", ["lastUpdated"]}]
     1356 LOADK                            R92 K239 ["StudioAssistantThreadPinnedChanged"]
     1357 SETTABLEKS                       R92 R91 K50 ["eventName"]
     1359 SETTABLEKS                       R29 R91 K51 ["backends"]
     1361 NEWTABLE                         R92 0 3
     1363 LOADN                            R93 26
     1364 LOADN                            R94 3
     1365 LOADN                            R95 10
     1366 SETLIST                          R92 R93 3 [1]
     1368 SETTABLEKS                       R92 R91 K54 ["lastUpdated"]
     1370 CALL                             R90 1 1
     1371 GETIMPORT                        R91 K44 [table.freeze]
     1373 DUPTABLE                         R92 K241 [{["eventName"], ["backends"], ["description"] = "Thread deleted event with details.", ["lastUpdated"]}]
     1374 LOADK                            R93 K242 ["StudioAssistantThreadDeleted"]
     1375 SETTABLEKS                       R93 R92 K50 ["eventName"]
     1377 SETTABLEKS                       R29 R92 K51 ["backends"]
     1379 NEWTABLE                         R93 0 3
     1381 LOADN                            R94 26
     1382 LOADN                            R95 3
     1383 LOADN                            R96 10
     1384 SETLIST                          R93 R94 3 [1]
     1386 SETTABLEKS                       R93 R92 K54 ["lastUpdated"]
     1388 CALL                             R91 1 1
     1389 GETIMPORT                        R92 K44 [table.freeze]
     1391 DUPTABLE                         R93 K244 [{["eventName"], ["backends"], ["description"] = "Thread duplicated event with details.", ["lastUpdated"]}]
     1392 LOADK                            R94 K245 ["StudioAssistantThreadDuplicated"]
     1393 SETTABLEKS                       R94 R93 K50 ["eventName"]
     1395 SETTABLEKS                       R29 R93 K51 ["backends"]
     1397 NEWTABLE                         R94 0 3
     1399 LOADN                            R95 26
     1400 LOADN                            R96 3
     1401 LOADN                            R97 10
     1402 SETLIST                          R94 R95 3 [1]
     1404 SETTABLEKS                       R94 R93 K54 ["lastUpdated"]
     1406 CALL                             R92 1 1
     1407 GETIMPORT                        R93 K44 [table.freeze]
     1409 DUPTABLE                         R94 K247 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer completed successfully.", ["lastUpdated"]}]
     1410 LOADK                            R95 K248 ["StudioAssistantCompactionSuccess"]
     1411 SETTABLEKS                       R95 R94 K50 ["eventName"]
     1413 SETTABLEKS                       R29 R94 K51 ["backends"]
     1415 NEWTABLE                         R95 0 3
     1417 LOADN                            R96 26
     1418 LOADN                            R97 4
     1419 LOADN                            R98 28
     1420 SETLIST                          R95 R96 3 [1]
     1422 SETTABLEKS                       R95 R94 K54 ["lastUpdated"]
     1424 CALL                             R93 1 1
     1425 GETIMPORT                        R94 K44 [table.freeze]
     1427 DUPTABLE                         R95 K250 [{["eventName"], ["backends"], ["description"] = "Count of successful compaction events.", ["lastUpdated"]}]
     1428 LOADK                            R96 K251 ["StudioAssistantCompactionSuccessCount"]
     1429 SETTABLEKS                       R96 R95 K50 ["eventName"]
     1431 NEWTABLE                         R96 0 1
     1433 GETTABLEKS                       R97 R8 K45 ["Backends"]
     1435 GETTABLEKS                       R97 R97 K57 ["RobloxTelemetryCounter"]
     1437 SETLIST                          R96 R97 1 [1]
     1439 SETTABLEKS                       R96 R95 K51 ["backends"]
     1441 NEWTABLE                         R96 0 3
     1443 LOADN                            R97 26
     1444 LOADN                            R98 4
     1445 LOADN                            R99 28
     1446 SETLIST                          R96 R97 3 [1]
     1448 SETTABLEKS                       R96 R95 K54 ["lastUpdated"]
     1450 CALL                             R94 1 1
     1451 GETIMPORT                        R95 K44 [table.freeze]
     1453 DUPTABLE                         R96 K253 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer failed, fell back to generic summary.", ["lastUpdated"]}]
     1454 LOADK                            R97 K254 ["StudioAssistantCompactionFallback"]
     1455 SETTABLEKS                       R97 R96 K50 ["eventName"]
     1457 SETTABLEKS                       R29 R96 K51 ["backends"]
     1459 NEWTABLE                         R97 0 3
     1461 LOADN                            R98 26
     1462 LOADN                            R99 4
     1463 LOADN                            R100 28
     1464 SETLIST                          R97 R98 3 [1]
     1466 SETTABLEKS                       R97 R96 K54 ["lastUpdated"]
     1468 CALL                             R95 1 1
     1469 GETIMPORT                        R96 K44 [table.freeze]
     1471 DUPTABLE                         R97 K256 [{["eventName"], ["backends"], ["description"] = "Count of compaction fallback events.", ["lastUpdated"]}]
     1472 LOADK                            R98 K257 ["StudioAssistantCompactionFallbackCount"]
     1473 SETTABLEKS                       R98 R97 K50 ["eventName"]
     1475 NEWTABLE                         R98 0 1
     1477 GETTABLEKS                       R99 R8 K45 ["Backends"]
     1479 GETTABLEKS                       R99 R99 K57 ["RobloxTelemetryCounter"]
     1481 SETLIST                          R98 R99 1 [1]
     1483 SETTABLEKS                       R98 R97 K51 ["backends"]
     1485 NEWTABLE                         R98 0 3
     1487 LOADN                            R99 26
     1488 LOADN                            R100 4
     1489 LOADN                            R101 28
     1490 SETLIST                          R98 R99 3 [1]
     1492 SETTABLEKS                       R98 R97 K54 ["lastUpdated"]
     1494 CALL                             R96 1 1
     1495 GETIMPORT                        R97 K44 [table.freeze]
     1497 DUPTABLE                         R98 K259 [{["eventName"], ["backends"], ["description"] = "Quick setup toggled/copied.", ["lastUpdated"]}]
     1498 LOADK                            R99 K260 ["StudioAssistantMCPQuickSetup"]
     1499 SETTABLEKS                       R99 R98 K50 ["eventName"]
     1501 SETTABLEKS                       R29 R98 K51 ["backends"]
     1503 NEWTABLE                         R99 0 3
     1505 LOADN                            R100 26
     1506 LOADN                            R101 4
     1507 LOADN                            R102 15
     1508 SETLIST                          R99 R100 3 [1]
     1510 SETTABLEKS                       R99 R98 K54 ["lastUpdated"]
     1512 CALL                             R97 1 1
     1513 GETIMPORT                        R98 K44 [table.freeze]
     1515 DUPTABLE                         R99 K262 [{["eventName"], ["backends"], ["description"] = "Thread switched event with details.", ["lastUpdated"]}]
     1516 LOADK                            R100 K263 ["StudioAssistantThreadSwitched"]
     1517 SETTABLEKS                       R100 R99 K50 ["eventName"]
     1519 SETTABLEKS                       R29 R99 K51 ["backends"]
     1521 NEWTABLE                         R100 0 3
     1523 LOADN                            R101 26
     1524 LOADN                            R102 3
     1525 LOADN                            R103 10
     1526 SETLIST                          R100 R101 3 [1]
     1528 SETTABLEKS                       R100 R99 K54 ["lastUpdated"]
     1530 CALL                             R98 1 1
     1531 GETIMPORT                        R99 K44 [table.freeze]
     1533 DUPTABLE                         R100 K266 [{["eventName"] = "CAPUserSkillEvent", ["backends"], ["description"] = "User skill created or updated event with skill name and action.", ["lastUpdated"]}]
     1534 SETTABLEKS                       R29 R100 K51 ["backends"]
     1536 NEWTABLE                         R101 0 3
     1538 LOADN                            R102 26
     1539 LOADN                            R103 6
     1540 LOADN                            R104 24
     1541 SETLIST                          R101 R102 3 [1]
     1543 SETTABLEKS                       R101 R100 K54 ["lastUpdated"]
     1545 CALL                             R99 1 1
     1546 GETIMPORT                        R100 K44 [table.freeze]
     1548 DUPTABLE                         R101 K269 [{["eventName"] = "CAPThinkingBlock", ["backends"], ["description"] = "Thinking block completed event with thinking text, subagent attribution.", ["lastUpdated"]}]
     1549 SETTABLEKS                       R29 R101 K51 ["backends"]
     1551 NEWTABLE                         R102 0 3
     1553 LOADN                            R103 26
     1554 LOADN                            R104 7
     1555 LOADN                            R105 22
     1556 SETLIST                          R102 R103 3 [1]
     1558 SETTABLEKS                       R102 R101 K54 ["lastUpdated"]
     1560 CALL                             R100 1 1
     1561 GETIMPORT                        R101 K44 [table.freeze]
     1563 DUPTABLE                         R102 K271 [{["eventName"], ["backends"], ["description"] = "Count of successful persistence operations.", ["lastUpdated"]}]
     1564 LOADK                            R103 K272 ["StudioAssistantPersistenceSuccess"]
     1565 SETTABLEKS                       R103 R102 K50 ["eventName"]
     1567 NEWTABLE                         R103 0 1
     1569 GETTABLEKS                       R104 R8 K45 ["Backends"]
     1571 GETTABLEKS                       R104 R104 K57 ["RobloxTelemetryCounter"]
     1573 SETLIST                          R103 R104 1 [1]
     1575 SETTABLEKS                       R103 R102 K51 ["backends"]
     1577 NEWTABLE                         R103 0 3
     1579 LOADN                            R104 26
     1580 LOADN                            R105 3
     1581 LOADN                            R106 10
     1582 SETLIST                          R103 R104 3 [1]
     1584 SETTABLEKS                       R103 R102 K54 ["lastUpdated"]
     1586 CALL                             R101 1 1
     1587 GETIMPORT                        R102 K44 [table.freeze]
     1589 DUPTABLE                         R103 K274 [{["eventName"], ["backends"], ["description"] = "Count of failed persistence operations.", ["lastUpdated"]}]
     1590 LOADK                            R104 K275 ["StudioAssistantPersistenceFailure"]
     1591 SETTABLEKS                       R104 R103 K50 ["eventName"]
     1593 NEWTABLE                         R104 0 1
     1595 GETTABLEKS                       R105 R8 K45 ["Backends"]
     1597 GETTABLEKS                       R105 R105 K57 ["RobloxTelemetryCounter"]
     1599 SETLIST                          R104 R105 1 [1]
     1601 SETTABLEKS                       R104 R103 K51 ["backends"]
     1603 NEWTABLE                         R104 0 3
     1605 LOADN                            R105 26
     1606 LOADN                            R106 3
     1607 LOADN                            R107 10
     1608 SETLIST                          R104 R105 3 [1]
     1610 SETTABLEKS                       R104 R103 K54 ["lastUpdated"]
     1612 CALL                             R102 1 1
     1613 GETIMPORT                        R103 K44 [table.freeze]
     1615 DUPTABLE                         R104 K277 [{["eventName"], ["backends"], ["description"] = "Persistence operation latency in milliseconds.", ["lastUpdated"]}]
     1616 LOADK                            R105 K278 ["StudioAssistantPersistenceLatencyMs"]
     1617 SETTABLEKS                       R105 R104 K50 ["eventName"]
     1619 NEWTABLE                         R105 0 1
     1621 GETTABLEKS                       R106 R8 K45 ["Backends"]
     1623 GETTABLEKS                       R106 R106 K81 ["RobloxTelemetryStat"]
     1625 SETLIST                          R105 R106 1 [1]
     1627 SETTABLEKS                       R105 R104 K51 ["backends"]
     1629 NEWTABLE                         R105 0 3
     1631 LOADN                            R106 26
     1632 LOADN                            R107 3
     1633 LOADN                            R108 10
     1634 SETLIST                          R105 R106 3 [1]
     1636 SETTABLEKS                       R105 R104 K54 ["lastUpdated"]
     1638 CALL                             R103 1 1
     1639 DUPCLOSURE                       R104 K279 [PROTO_18]
     1640 CAPTURE                          VAL R5
     1641 CAPTURE                          VAL R10
     1642 GETTABLEKS                       R105 R7 K280 ["FStringAssistantGroupNameKey"]
     1644 GETTABLEKS                       R106 R6 K281 ["new"]
     1646 MOVE                             R107 R2
     1647 GETTABLEKS                       R108 R7 K282 ["FStringNewAssistantExperimentLayer"]
     1649 CALL                             R106 2 1
     1650 DUPCLOSURE                       R107 K283 [PROTO_19]
     1651 CAPTURE                          VAL R106
     1652 CAPTURE                          VAL R105
     1653 DUPCLOSURE                       R108 K284 [PROTO_20]
     1654 CAPTURE                          VAL R5
     1655 CAPTURE                          VAL R106
     1656 CAPTURE                          VAL R105
     1657 DUPCLOSURE                       R109 K285 [PROTO_70]
     1658 CAPTURE                          VAL R7
     1659 CAPTURE                          VAL R8
     1660 CAPTURE                          VAL R30
     1661 CAPTURE                          VAL R5
     1662 CAPTURE                          VAL R106
     1663 CAPTURE                          VAL R105
     1664 CAPTURE                          VAL R10
     1665 CAPTURE                          VAL R31
     1666 CAPTURE                          VAL R9
     1667 CAPTURE                          VAL R32
     1668 CAPTURE                          VAL R40
     1669 CAPTURE                          VAL R41
     1670 CAPTURE                          VAL R35
     1671 CAPTURE                          VAL R33
     1672 CAPTURE                          VAL R36
     1673 CAPTURE                          VAL R34
     1674 CAPTURE                          VAL R37
     1675 CAPTURE                          VAL R42
     1676 CAPTURE                          VAL R43
     1677 CAPTURE                          VAL R44
     1678 CAPTURE                          VAL R48
     1679 CAPTURE                          VAL R1
     1680 CAPTURE                          VAL R12
     1681 CAPTURE                          VAL R47
     1682 CAPTURE                          VAL R46
     1683 CAPTURE                          VAL R22
     1684 CAPTURE                          VAL R25
     1685 CAPTURE                          VAL R45
     1686 CAPTURE                          VAL R50
     1687 CAPTURE                          VAL R49
     1688 CAPTURE                          VAL R51
     1689 CAPTURE                          VAL R52
     1690 CAPTURE                          VAL R38
     1691 CAPTURE                          VAL R39
     1692 CAPTURE                          VAL R53
     1693 CAPTURE                          VAL R54
     1694 CAPTURE                          VAL R55
     1695 CAPTURE                          VAL R56
     1696 CAPTURE                          VAL R57
     1697 CAPTURE                          VAL R58
     1698 CAPTURE                          VAL R59
     1699 CAPTURE                          VAL R60
     1700 CAPTURE                          VAL R61
     1701 CAPTURE                          VAL R62
     1702 CAPTURE                          VAL R63
     1703 CAPTURE                          VAL R64
     1704 CAPTURE                          VAL R65
     1705 CAPTURE                          VAL R66
     1706 CAPTURE                          VAL R67
     1707 CAPTURE                          VAL R68
     1708 CAPTURE                          VAL R69
     1709 CAPTURE                          VAL R71
     1710 CAPTURE                          VAL R70
     1711 CAPTURE                          VAL R72
     1712 CAPTURE                          VAL R73
     1713 CAPTURE                          VAL R74
     1714 CAPTURE                          VAL R75
     1715 CAPTURE                          VAL R76
     1716 CAPTURE                          VAL R77
     1717 CAPTURE                          VAL R79
     1718 CAPTURE                          VAL R78
     1719 CAPTURE                          VAL R80
     1720 CAPTURE                          VAL R81
     1721 CAPTURE                          VAL R82
     1722 CAPTURE                          VAL R84
     1723 CAPTURE                          VAL R83
     1724 CAPTURE                          VAL R86
     1725 CAPTURE                          VAL R85
     1726 CAPTURE                          VAL R87
     1727 CAPTURE                          VAL R88
     1728 CAPTURE                          VAL R89
     1729 CAPTURE                          VAL R90
     1730 CAPTURE                          VAL R91
     1731 CAPTURE                          VAL R92
     1732 CAPTURE                          VAL R97
     1733 CAPTURE                          VAL R98
     1734 CAPTURE                          VAL R94
     1735 CAPTURE                          VAL R93
     1736 CAPTURE                          VAL R96
     1737 CAPTURE                          VAL R95
     1738 CAPTURE                          VAL R99
     1739 CAPTURE                          VAL R100
     1740 CAPTURE                          VAL R103
     1741 CAPTURE                          VAL R101
     1742 CAPTURE                          VAL R102
     1743 DUPCLOSURE                       R110 K286 [PROTO_71]
     1744 CAPTURE                          VAL R109
     1745 DUPTABLE                         R111 K289 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1746 SETTABLEKS                       R109 R111 K287 ["makeStudioTelemetryEvents"]
     1748 SETTABLEKS                       R110 R111 K288 ["createStudioEventLogger"]
     1750 RETURN                           R111 1
