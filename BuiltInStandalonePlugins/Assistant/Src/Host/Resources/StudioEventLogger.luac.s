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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K4 [{"markdown"}]
        6 SETTABLEKS                       R0 R4 K3 ["markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["customFields"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

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
       50 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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
       16 DUPTABLE                         R9 K10 [{"experimentationGroup", "featureTag"}]
       17 GETUPVAL                         R11 3
       18 NAMECALL                         R11 R11 K11 ["get"]
       20 CALL                             R11 1 1
       21 JUMPIFNOTEQKNIL                  R11 ; [+3]
       23 LOADNIL                          R10
       24 JUMP                             ; [+16]
       25 GETUPVAL                         R13 4
       26 GETTABLE                         R12 R11 R13
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 GETTABLEKS                       R12 R11 K12 ["generatedExperimentVariantDistributionVariable"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+3]
       33 LOADNIL                          R10
       34 JUMP                             ; [+6]
       35 FASTCALL1                        TOSTRING R12 ; [+3]
       36 MOVE                             R14 R12
       37 GETIMPORT                        R13 K14 [tostring]
       39 CALL                             R13 1 1
       40 MOVE                             R10 R13
       41 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       43 GETUPVAL                         R11 5
       44 CALL                             R11 0 1
       45 JUMPIFNOT                        R11 ; [+2]
       46 LOADK                            R10 K15 ["Remote"]
       47 JUMP                             ; [+1]
       48 LOADK                            R10 K16 ["Local"]
       49 SETTABLEKS                       R10 R9 K9 ["featureTag"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 CALL                             R1 3 0
       56 DUPTABLE                         R2 K21 [{"requestId", "conversationId", "threadId", "acpSessionId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
       57 GETTABLEKS                       R3 R0 K22 ["messageGuid"]
       59 SETTABLEKS                       R3 R2 K4 ["requestId"]
       61 GETTABLEKS                       R3 R0 K23 ["sessionId"]
       63 SETTABLEKS                       R3 R2 K17 ["conversationId"]
       65 GETTABLEKS                       R3 R0 K18 ["threadId"]
       67 SETTABLEKS                       R3 R2 K18 ["threadId"]
       69 GETTABLEKS                       R3 R0 K19 ["acpSessionId"]
       71 SETTABLEKS                       R3 R2 K19 ["acpSessionId"]
       73 GETTABLEKS                       R3 R0 K6 ["requestEndReason"]
       75 SETTABLEKS                       R3 R2 K6 ["requestEndReason"]
       77 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
       79 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       81 GETTABLEKS                       R3 R0 K20 ["message"]
       83 SETTABLEKS                       R3 R2 K20 ["message"]
       85 GETUPVAL                         R4 3
       86 NAMECALL                         R4 R4 K11 ["get"]
       88 CALL                             R4 1 1
       89 JUMPIFNOTEQKNIL                  R4 ; [+3]
       91 LOADNIL                          R3
       92 JUMP                             ; [+16]
       93 GETUPVAL                         R6 4
       94 GETTABLE                         R5 R4 R6
       95 JUMPIFNOTEQKNIL                  R5 ; [+3]
       97 GETTABLEKS                       R5 R4 K12 ["generatedExperimentVariantDistributionVariable"]
       99 JUMPIFNOTEQKNIL                  R5 ; [+3]
      101 LOADNIL                          R3
      102 JUMP                             ; [+6]
      103 FASTCALL1                        TOSTRING R5 ; [+3]
      104 MOVE                             R7 R5
      105 GETIMPORT                        R6 K14 [tostring]
      107 CALL                             R6 1 1
      108 MOVE                             R3 R6
      109 SETTABLEKS                       R3 R2 K8 ["experimentationGroup"]
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
      124 GETUPVAL                         R2 0
      125 GETTABLEKS                       R2 R2 K28 ["logEvent"]
      127 GETUPVAL                         R3 7
      128 DUPTABLE                         R4 K30 [{"customFields", "standardizedFields"}]
      129 SETTABLEKS                       R1 R4 K2 ["customFields"]
      131 NEWTABLE                         R6 0 0
      133 GETUPVAL                         R7 8
      134 GETTABLEKS                       R7 R7 K31 ["StandardizedFields"]
      136 LOADNIL                          R8
      137 LOADNIL                          R9
      138 FORGPREP                         R7
      139 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      141 MOVE                             R13 R6
      142 MOVE                             R14 R11
      143 GETIMPORT                        R12 K34 [table.insert]
      145 CALL                             R12 2 0
      146 FORGLOOP                         R7 2 ; [-8]
      148 MOVE                             R5 R6
      149 SETTABLEKS                       R5 R4 K29 ["standardizedFields"]
      151 CALL                             R2 2 0
      152 RETURN                           R0 0

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

PROTO_40:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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
       40 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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
       69 NEWCLOSURE                       R9 P8
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U20
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          VAL R0
       76 DUPCLOSURE                       R10 K5 [PROTO_31]
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U21
       81 CAPTURE                          UPVAL U10
       82 DUPCLOSURE                       R11 K6 [PROTO_32]
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U22
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          UPVAL U23
       91 CAPTURE                          UPVAL U24
       92 CAPTURE                          UPVAL U25
       93 CAPTURE                          UPVAL U10
       94 DUPCLOSURE                       R12 K7 [PROTO_33]
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          UPVAL U26
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U27
      103 CAPTURE                          UPVAL U28
      104 CAPTURE                          UPVAL U29
      105 CAPTURE                          UPVAL U10
      106 DUPCLOSURE                       R13 K8 [PROTO_34]
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U30
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          UPVAL U31
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          UPVAL U10
      116 DUPCLOSURE                       R14 K9 [PROTO_35]
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          UPVAL U32
      121 CAPTURE                          UPVAL U10
      122 DUPCLOSURE                       R15 K10 [PROTO_36]
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U33
      127 CAPTURE                          UPVAL U10
      128 DUPCLOSURE                       R16 K11 [PROTO_37]
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          UPVAL U34
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          UPVAL U35
      137 CAPTURE                          UPVAL U10
      138 DUPCLOSURE                       R17 K12 [PROTO_38]
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          UPVAL U4
      142 CAPTURE                          UPVAL U36
      143 CAPTURE                          UPVAL U10
      144 DUPCLOSURE                       R18 K13 [PROTO_39]
      145 CAPTURE                          UPVAL U4
      146 CAPTURE                          UPVAL U37
      147 CAPTURE                          UPVAL U6
      148 CAPTURE                          UPVAL U0
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          UPVAL U7
      151 DUPCLOSURE                       R19 K14 [PROTO_40]
      152 CAPTURE                          UPVAL U4
      153 CAPTURE                          UPVAL U38
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          UPVAL U0
      156 CAPTURE                          UPVAL U1
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          UPVAL U39
      159 CAPTURE                          UPVAL U23
      160 CAPTURE                          UPVAL U8
      161 CAPTURE                          UPVAL U40
      162 CAPTURE                          UPVAL U10
      163 DUPCLOSURE                       R20 K15 [PROTO_41]
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          UPVAL U41
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          UPVAL U7
      170 CAPTURE                          UPVAL U42
      171 CAPTURE                          UPVAL U8
      172 CAPTURE                          UPVAL U43
      173 CAPTURE                          UPVAL U10
      174 DUPCLOSURE                       R21 K16 [PROTO_42]
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          UPVAL U44
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          UPVAL U1
      180 CAPTURE                          UPVAL U7
      181 CAPTURE                          UPVAL U45
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          UPVAL U46
      184 CAPTURE                          UPVAL U10
      185 DUPCLOSURE                       R22 K17 [PROTO_43]
      186 CAPTURE                          UPVAL U4
      187 CAPTURE                          UPVAL U47
      188 CAPTURE                          UPVAL U6
      189 CAPTURE                          UPVAL U0
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          UPVAL U23
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          UPVAL U48
      195 CAPTURE                          UPVAL U10
      196 DUPCLOSURE                       R23 K18 [PROTO_44]
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          UPVAL U49
      199 CAPTURE                          UPVAL U6
      200 CAPTURE                          UPVAL U8
      201 CAPTURE                          UPVAL U10
      202 DUPCLOSURE                       R24 K19 [PROTO_45]
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          UPVAL U50
      205 CAPTURE                          UPVAL U6
      206 CAPTURE                          UPVAL U8
      207 CAPTURE                          UPVAL U10
      208 DUPCLOSURE                       R25 K20 [PROTO_46]
      209 CAPTURE                          UPVAL U4
      210 CAPTURE                          UPVAL U51
      211 CAPTURE                          UPVAL U6
      212 CAPTURE                          UPVAL U8
      213 CAPTURE                          UPVAL U10
      214 DUPCLOSURE                       R26 K21 [PROTO_47]
      215 CAPTURE                          UPVAL U4
      216 CAPTURE                          UPVAL U52
      217 CAPTURE                          UPVAL U6
      218 CAPTURE                          UPVAL U8
      219 CAPTURE                          UPVAL U10
      220 CAPTURE                          UPVAL U53
      221 CAPTURE                          UPVAL U0
      222 CAPTURE                          UPVAL U1
      223 CAPTURE                          UPVAL U7
      224 DUPCLOSURE                       R27 K22 [PROTO_48]
      225 CAPTURE                          UPVAL U4
      226 CAPTURE                          UPVAL U54
      227 CAPTURE                          UPVAL U6
      228 CAPTURE                          UPVAL U8
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          UPVAL U55
      231 CAPTURE                          UPVAL U0
      232 CAPTURE                          UPVAL U1
      233 CAPTURE                          UPVAL U7
      234 DUPCLOSURE                       R28 K23 [PROTO_49]
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          UPVAL U4
      237 CAPTURE                          UPVAL U56
      238 CAPTURE                          UPVAL U6
      239 CAPTURE                          UPVAL U0
      240 CAPTURE                          UPVAL U1
      241 CAPTURE                          UPVAL U7
      242 DUPCLOSURE                       R29 K24 [PROTO_50]
      243 CAPTURE                          UPVAL U3
      244 CAPTURE                          UPVAL U4
      245 CAPTURE                          UPVAL U57
      246 CAPTURE                          UPVAL U6
      247 CAPTURE                          UPVAL U8
      248 CAPTURE                          UPVAL U10
      249 DUPCLOSURE                       R30 K25 [PROTO_51]
      250 CAPTURE                          UPVAL U3
      251 CAPTURE                          UPVAL U4
      252 CAPTURE                          UPVAL U58
      253 CAPTURE                          UPVAL U23
      254 CAPTURE                          UPVAL U6
      255 CAPTURE                          UPVAL U8
      256 CAPTURE                          UPVAL U10
      257 DUPCLOSURE                       R31 K26 [PROTO_52]
      258 CAPTURE                          UPVAL U3
      259 CAPTURE                          UPVAL U4
      260 CAPTURE                          UPVAL U59
      261 CAPTURE                          UPVAL U6
      262 CAPTURE                          UPVAL U0
      263 CAPTURE                          UPVAL U1
      264 CAPTURE                          UPVAL U7
      265 CAPTURE                          UPVAL U60
      266 CAPTURE                          UPVAL U8
      267 CAPTURE                          UPVAL U10
      268 DUPCLOSURE                       R32 K27 [PROTO_53]
      269 CAPTURE                          UPVAL U3
      270 CAPTURE                          UPVAL U4
      271 CAPTURE                          UPVAL U61
      272 CAPTURE                          UPVAL U6
      273 CAPTURE                          UPVAL U0
      274 CAPTURE                          UPVAL U1
      275 CAPTURE                          UPVAL U7
      276 CAPTURE                          UPVAL U62
      277 CAPTURE                          UPVAL U8
      278 CAPTURE                          UPVAL U10
      279 DUPCLOSURE                       R33 K28 [PROTO_54]
      280 CAPTURE                          UPVAL U4
      281 CAPTURE                          UPVAL U63
      282 CAPTURE                          UPVAL U6
      283 CAPTURE                          UPVAL U8
      284 CAPTURE                          UPVAL U10
      285 DUPCLOSURE                       R34 K29 [PROTO_55]
      286 CAPTURE                          UPVAL U4
      287 CAPTURE                          UPVAL U64
      288 CAPTURE                          UPVAL U6
      289 CAPTURE                          UPVAL U8
      290 CAPTURE                          UPVAL U10
      291 CAPTURE                          UPVAL U65
      292 CAPTURE                          UPVAL U0
      293 CAPTURE                          UPVAL U1
      294 CAPTURE                          UPVAL U7
      295 DUPCLOSURE                       R35 K30 [PROTO_56]
      296 CAPTURE                          UPVAL U4
      297 CAPTURE                          UPVAL U66
      298 CAPTURE                          UPVAL U6
      299 CAPTURE                          UPVAL U0
      300 CAPTURE                          UPVAL U1
      301 CAPTURE                          UPVAL U7
      302 CAPTURE                          UPVAL U8
      303 CAPTURE                          UPVAL U67
      304 CAPTURE                          UPVAL U10
      305 DUPCLOSURE                       R36 K31 [PROTO_57]
      306 CAPTURE                          UPVAL U4
      307 CAPTURE                          UPVAL U68
      308 CAPTURE                          UPVAL U6
      309 CAPTURE                          UPVAL U0
      310 CAPTURE                          UPVAL U1
      311 CAPTURE                          UPVAL U7
      312 CAPTURE                          UPVAL U8
      313 CAPTURE                          UPVAL U69
      314 CAPTURE                          UPVAL U10
      315 DUPCLOSURE                       R37 K32 [PROTO_58]
      316 CAPTURE                          UPVAL U4
      317 CAPTURE                          UPVAL U70
      318 DUPCLOSURE                       R38 K33 [PROTO_59]
      319 CAPTURE                          UPVAL U4
      320 CAPTURE                          UPVAL U71
      321 CAPTURE                          UPVAL U6
      322 CAPTURE                          UPVAL U8
      323 CAPTURE                          UPVAL U10
      324 DUPCLOSURE                       R39 K34 [PROTO_60]
      325 CAPTURE                          UPVAL U4
      326 CAPTURE                          UPVAL U72
      327 CAPTURE                          UPVAL U6
      328 CAPTURE                          UPVAL U8
      329 CAPTURE                          UPVAL U10
      330 DUPCLOSURE                       R40 K35 [PROTO_61]
      331 CAPTURE                          UPVAL U4
      332 CAPTURE                          UPVAL U73
      333 CAPTURE                          UPVAL U6
      334 CAPTURE                          UPVAL U8
      335 CAPTURE                          UPVAL U10
      336 DUPCLOSURE                       R41 K36 [PROTO_62]
      337 CAPTURE                          UPVAL U4
      338 CAPTURE                          UPVAL U74
      339 CAPTURE                          UPVAL U6
      340 CAPTURE                          UPVAL U8
      341 CAPTURE                          UPVAL U10
      342 DUPCLOSURE                       R42 K37 [PROTO_63]
      343 CAPTURE                          UPVAL U4
      344 CAPTURE                          UPVAL U75
      345 CAPTURE                          UPVAL U6
      346 CAPTURE                          UPVAL U8
      347 CAPTURE                          UPVAL U10
      348 DUPCLOSURE                       R43 K38 [PROTO_64]
      349 CAPTURE                          UPVAL U4
      350 CAPTURE                          UPVAL U76
      351 CAPTURE                          UPVAL U6
      352 CAPTURE                          UPVAL U8
      353 CAPTURE                          UPVAL U10
      354 DUPCLOSURE                       R44 K39 [PROTO_65]
      355 CAPTURE                          UPVAL U4
      356 CAPTURE                          UPVAL U77
      357 CAPTURE                          UPVAL U6
      358 CAPTURE                          UPVAL U8
      359 CAPTURE                          UPVAL U10
      360 DUPCLOSURE                       R45 K40 [PROTO_66]
      361 CAPTURE                          UPVAL U4
      362 CAPTURE                          UPVAL U78
      363 CAPTURE                          UPVAL U6
      364 CAPTURE                          UPVAL U0
      365 CAPTURE                          UPVAL U1
      366 CAPTURE                          UPVAL U7
      367 CAPTURE                          UPVAL U79
      368 CAPTURE                          UPVAL U8
      369 CAPTURE                          UPVAL U10
      370 DUPCLOSURE                       R46 K41 [PROTO_67]
      371 CAPTURE                          UPVAL U4
      372 CAPTURE                          UPVAL U80
      373 CAPTURE                          UPVAL U6
      374 CAPTURE                          UPVAL U0
      375 CAPTURE                          UPVAL U1
      376 CAPTURE                          UPVAL U7
      377 CAPTURE                          UPVAL U81
      378 CAPTURE                          UPVAL U8
      379 CAPTURE                          UPVAL U10
      380 DUPCLOSURE                       R47 K42 [PROTO_68]
      381 CAPTURE                          UPVAL U4
      382 CAPTURE                          UPVAL U82
      383 CAPTURE                          UPVAL U6
      384 CAPTURE                          UPVAL U8
      385 CAPTURE                          UPVAL U10
      386 DUPCLOSURE                       R48 K43 [PROTO_69]
      387 CAPTURE                          UPVAL U4
      388 CAPTURE                          UPVAL U83
      389 CAPTURE                          UPVAL U6
      390 CAPTURE                          UPVAL U8
      391 CAPTURE                          UPVAL U10
      392 DUPCLOSURE                       R49 K44 [PROTO_70]
      393 CAPTURE                          UPVAL U4
      394 CAPTURE                          UPVAL U84
      395 CAPTURE                          UPVAL U6
      396 CAPTURE                          UPVAL U0
      397 CAPTURE                          UPVAL U1
      398 CAPTURE                          UPVAL U7
      399 CAPTURE                          UPVAL U85
      400 CAPTURE                          UPVAL U86
      401 NEWTABLE                         R50 64 0
      403 SETTABLEKS                       R1 R50 K45 ["logUserMessageSent"]
      405 SETTABLEKS                       R2 R50 K46 ["logAssistantMessageSent"]
      407 SETTABLEKS                       R3 R50 K47 ["logApiKeyAdded"]
      409 SETTABLEKS                       R4 R50 K48 ["logErrorEvent"]
      411 SETTABLEKS                       R17 R50 K49 ["logExternalAPIError"]
      413 SETTABLEKS                       R5 R50 K50 ["logThumbsUp"]
      415 SETTABLEKS                       R6 R50 K51 ["logThumbsDown"]
      417 SETTABLEKS                       R7 R50 K52 ["logInitialResponseLatency"]
      419 SETTABLEKS                       R8 R50 K53 ["logMarkdownError"]
      421 SETTABLEKS                       R9 R50 K54 ["logRetry"]
      423 SETTABLEKS                       R10 R50 K55 ["logStopGeneration"]
      425 SETTABLEKS                       R11 R50 K56 ["logToolStarted"]
      427 SETTABLEKS                       R12 R50 K57 ["logToolEnded"]
      429 SETTABLEKS                       R13 R50 K58 ["logFailedToolInvocation"]
      431 SETTABLEKS                       R14 R50 K59 ["logToolConfirmationShown"]
      433 SETTABLEKS                       R15 R50 K60 ["logToolConfirmationResult"]
      435 SETTABLEKS                       R16 R50 K61 ["logRequestJourney"]
      437 SETTABLEKS                       R18 R50 K62 ["logMeshGenActivated"]
      439 SETTABLEKS                       R19 R50 K63 ["logMeshGenCompleted"]
      441 SETTABLEKS                       R20 R50 K64 ["logMeshGenPublishedAssets"]
      443 SETTABLEKS                       R21 R50 K65 ["logMeshGenMeshInserted"]
      445 SETTABLEKS                       R22 R50 K66 ["logPrimitiveGen"]
      447 SETTABLEKS                       R23 R50 K67 ["logAvatarAutoSetupRequested"]
      449 SETTABLEKS                       R24 R50 K68 ["logAvatarAutoSetupOptions"]
      451 SETTABLEKS                       R25 R50 K69 ["logAvatarAutoSetupJobInitialized"]
      453 SETTABLEKS                       R26 R50 K70 ["logAvatarAutoSetupFinish"]
      455 SETTABLEKS                       R27 R50 K71 ["logAvatarAutoSetupFailure"]
      457 SETTABLEKS                       R28 R50 K72 ["logGen3DSegmentationRefresh"]
      459 SETTABLEKS                       R29 R50 K73 ["logGen3DInstanceDeleted"]
      461 SETTABLEKS                       R30 R50 K74 ["logGen3DImageImpression"]
      463 SETTABLEKS                       R31 R50 K75 ["logGen3DImageAction"]
      465 SETTABLEKS                       R32 R50 K76 ["logGen3DAssetPublished"]
      467 SETTABLEKS                       R33 R50 K77 ["logIntegrationEvent"]
      469 SETTABLEKS                       R34 R50 K78 ["logExternalServerConnected"]
      471 SETTABLEKS                       R35 R50 K79 ["logQuestionAnswerCompleted"]
      473 SETTABLEKS                       R36 R50 K80 ["logPlanDecision"]
      475 SETTABLEKS                       R43 R50 K81 ["logQuickSetupToggled"]
      477 SETTABLEKS                       R37 R50 K82 ["logMaterialGeneratorSavedMaterial"]
      479 SETTABLEKS                       R45 R50 K83 ["logCompactionSuccess"]
      481 SETTABLEKS                       R46 R50 K84 ["logCompactionFallback"]
      483 SETTABLEKS                       R47 R50 K85 ["logUserSkillEvent"]
      485 SETTABLEKS                       R48 R50 K86 ["logThinkingBlock"]
      487 SETTABLEKS                       R38 R50 K87 ["logThreadCreated"]
      489 SETTABLEKS                       R39 R50 K88 ["logThreadRenamed"]
      491 SETTABLEKS                       R40 R50 K89 ["logThreadPinnedChanged"]
      493 SETTABLEKS                       R41 R50 K90 ["logThreadDeleted"]
      495 SETTABLEKS                       R42 R50 K91 ["logThreadDuplicated"]
      497 SETTABLEKS                       R44 R50 K92 ["logThreadSwitched"]
      499 SETTABLEKS                       R49 R50 K93 ["logPersistenceOperation"]
      501 RETURN                           R50 1

PROTO_72:
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
      319 DUPTABLE                         R41 K87 [{["eventName"], ["backends"], ["description"] = "User request journey duration in seconds. Time between sending first message to request ended.", ["lastUpdated"]}]
      320 LOADK                            R42 K88 ["StudioAssistantRequestJourney"]
      321 SETTABLEKS                       R42 R41 K54 ["eventName"]
      323 NEWTABLE                         R42 0 1
      325 GETTABLEKS                       R43 R8 K49 ["Backends"]
      327 GETTABLEKS                       R43 R43 K85 ["RobloxTelemetryStat"]
      329 SETLIST                          R42 R43 1 [1]
      331 SETTABLEKS                       R42 R41 K55 ["backends"]
      333 NEWTABLE                         R42 0 3
      335 LOADN                            R43 25
      336 LOADN                            R44 10
      337 LOADN                            R45 22
      338 SETLIST                          R42 R43 3 [1]
      340 SETTABLEKS                       R42 R41 K58 ["lastUpdated"]
      342 CALL                             R40 1 1
      343 GETIMPORT                        R41 K48 [table.freeze]
      345 DUPTABLE                         R42 K91 [{["eventName"] = "CAPRequestJourney", ["backends"], ["description"] = "User request journey detail.", ["lastUpdated"]}]
      346 SETTABLEKS                       R31 R42 K55 ["backends"]
      348 NEWTABLE                         R43 0 3
      350 LOADN                            R44 25
      351 LOADN                            R45 11
      352 LOADN                            R46 1
      353 SETLIST                          R43 R44 3 [1]
      355 SETTABLEKS                       R43 R42 K58 ["lastUpdated"]
      357 CALL                             R41 1 1
      358 GETIMPORT                        R42 K48 [table.freeze]
      360 DUPTABLE                         R43 K93 [{["eventName"], ["backends"], ["description"] = "Incrementing count of error events with error type attached.", ["lastUpdated"]}]
      361 LOADK                            R44 K94 ["StudioAssistantErrorEvent"]
      362 SETTABLEKS                       R44 R43 K54 ["eventName"]
      364 NEWTABLE                         R44 0 1
      366 GETTABLEKS                       R45 R8 K49 ["Backends"]
      368 GETTABLEKS                       R45 R45 K61 ["RobloxTelemetryCounter"]
      370 SETLIST                          R44 R45 1 [1]
      372 SETTABLEKS                       R44 R43 K55 ["backends"]
      374 NEWTABLE                         R44 0 3
      376 LOADN                            R45 25
      377 LOADN                            R46 7
      378 LOADN                            R47 21
      379 SETLIST                          R44 R45 3 [1]
      381 SETTABLEKS                       R44 R43 K58 ["lastUpdated"]
      383 CALL                             R42 1 1
      384 GETIMPORT                        R43 K48 [table.freeze]
      386 DUPTABLE                         R44 K97 [{["eventName"] = "CAPErrorEvent", ["backends"], ["description"] = "Assistant error detail.", ["lastUpdated"]}]
      387 SETTABLEKS                       R31 R44 K55 ["backends"]
      389 NEWTABLE                         R45 0 3
      391 LOADN                            R46 26
      392 LOADN                            R47 7
      393 LOADN                            R48 26
      394 SETLIST                          R45 R46 3 [1]
      396 SETTABLEKS                       R45 R44 K58 ["lastUpdated"]
      398 CALL                             R43 1 1
      399 GETIMPORT                        R44 K48 [table.freeze]
      401 DUPTABLE                         R45 K99 [{["eventName"], ["backends"], ["description"] = "Collection of markdown error events, with markdown attached.", ["throttlingPercentage"], ["lastUpdated"]}]
      402 LOADK                            R46 K100 ["StudioAssistantMarkdownError"]
      403 SETTABLEKS                       R46 R45 K54 ["eventName"]
      405 NEWTABLE                         R46 0 1
      407 GETTABLEKS                       R47 R8 K49 ["Backends"]
      409 GETTABLEKS                       R47 R47 K53 ["Points"]
      411 SETLIST                          R46 R47 1 [1]
      413 SETTABLEKS                       R46 R45 K55 ["backends"]
      415 GETTABLEKS                       R46 R7 K101 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      417 SETTABLEKS                       R46 R45 K64 ["throttlingPercentage"]
      419 NEWTABLE                         R46 0 3
      421 LOADN                            R47 25
      422 LOADN                            R48 7
      423 LOADN                            R49 21
      424 SETLIST                          R46 R47 3 [1]
      426 SETTABLEKS                       R46 R45 K58 ["lastUpdated"]
      428 CALL                             R44 1 1
      429 GETIMPORT                        R45 K48 [table.freeze]
      431 DUPTABLE                         R46 K104 [{["eventName"] = "CAPMessageResubmitted", ["backends"], ["description"] = "User message retry/resubmit event with request ID.", ["lastUpdated"]}]
      432 SETTABLEKS                       R31 R46 K55 ["backends"]
      434 NEWTABLE                         R47 0 3
      436 LOADN                            R48 25
      437 LOADN                            R49 8
      438 LOADN                            R50 7
      439 SETLIST                          R47 R48 3 [1]
      441 SETTABLEKS                       R47 R46 K58 ["lastUpdated"]
      443 CALL                             R45 1 1
      444 GETIMPORT                        R46 K48 [table.freeze]
      446 DUPTABLE                         R47 K107 [{["eventName"] = "CAPStopGeneration", ["backends"], ["description"] = "User stop generation event with request ID.", ["lastUpdated"]}]
      447 SETTABLEKS                       R31 R47 K55 ["backends"]
      449 NEWTABLE                         R48 0 3
      451 LOADN                            R49 25
      452 LOADN                            R50 8
      453 LOADN                            R51 7
      454 SETLIST                          R48 R49 3 [1]
      456 SETTABLEKS                       R48 R47 K58 ["lastUpdated"]
      458 CALL                             R46 1 1
      459 GETIMPORT                        R47 K48 [table.freeze]
      461 DUPTABLE                         R48 K110 [{["eventName"] = "CAPToolEnded", ["backends"], ["description"] = "Tool invocation ended event with request ID and tool name", ["lastUpdated"]}]
      462 SETTABLEKS                       R31 R48 K55 ["backends"]
      464 NEWTABLE                         R49 0 3
      466 LOADN                            R50 25
      467 LOADN                            R51 7
      468 LOADN                            R52 21
      469 SETLIST                          R49 R50 3 [1]
      471 SETTABLEKS                       R49 R48 K58 ["lastUpdated"]
      473 CALL                             R47 1 1
      474 GETIMPORT                        R48 K48 [table.freeze]
      476 DUPTABLE                         R49 K113 [{["eventName"] = "StudioAssistantToolEndedCount", ["backends"], ["description"] = "Count of completed tool invocations.", ["lastUpdated"]}]
      477 NEWTABLE                         R50 0 1
      479 GETTABLEKS                       R51 R8 K49 ["Backends"]
      481 GETTABLEKS                       R51 R51 K61 ["RobloxTelemetryCounter"]
      483 SETLIST                          R50 R51 1 [1]
      485 SETTABLEKS                       R50 R49 K55 ["backends"]
      487 NEWTABLE                         R50 0 3
      489 LOADN                            R51 26
      490 LOADN                            R52 7
      491 LOADN                            R53 24
      492 SETLIST                          R50 R51 3 [1]
      494 SETTABLEKS                       R50 R49 K58 ["lastUpdated"]
      496 CALL                             R48 1 1
      497 GETIMPORT                        R49 K48 [table.freeze]
      499 DUPTABLE                         R50 K116 [{["eventName"] = "CAPToolStarted", ["backends"], ["description"] = "Tool invocation started event with request ID and tool name.", ["lastUpdated"]}]
      500 SETTABLEKS                       R31 R50 K55 ["backends"]
      502 NEWTABLE                         R51 0 3
      504 LOADN                            R52 25
      505 LOADN                            R53 8
      506 LOADN                            R54 7
      507 SETLIST                          R51 R52 3 [1]
      509 SETTABLEKS                       R51 R50 K58 ["lastUpdated"]
      511 CALL                             R49 1 1
      512 GETIMPORT                        R50 K48 [table.freeze]
      514 DUPTABLE                         R51 K119 [{["eventName"] = "StudioAssistantToolStartedCount", ["backends"], ["description"] = "Count of started tool invocations.", ["lastUpdated"]}]
      515 NEWTABLE                         R52 0 1
      517 GETTABLEKS                       R53 R8 K49 ["Backends"]
      519 GETTABLEKS                       R53 R53 K61 ["RobloxTelemetryCounter"]
      521 SETLIST                          R52 R53 1 [1]
      523 SETTABLEKS                       R52 R51 K55 ["backends"]
      525 NEWTABLE                         R52 0 3
      527 LOADN                            R53 26
      528 LOADN                            R54 7
      529 LOADN                            R55 24
      530 SETLIST                          R52 R53 3 [1]
      532 SETTABLEKS                       R52 R51 K58 ["lastUpdated"]
      534 CALL                             R50 1 1
      535 GETIMPORT                        R51 K48 [table.freeze]
      537 DUPTABLE                         R52 K122 [{["eventName"] = "StudioAssistantFailedToolInvocation", ["backends"], ["description"] = "Tool invocation failed before local execution began.", ["lastUpdated"]}]
      538 SETTABLEKS                       R31 R52 K55 ["backends"]
      540 NEWTABLE                         R53 0 3
      542 LOADN                            R54 26
      543 LOADN                            R55 7
      544 LOADN                            R56 24
      545 SETLIST                          R53 R54 3 [1]
      547 SETTABLEKS                       R53 R52 K58 ["lastUpdated"]
      549 CALL                             R51 1 1
      550 GETIMPORT                        R52 K48 [table.freeze]
      552 DUPTABLE                         R53 K125 [{["eventName"] = "StudioAssistantFailedToolInvocationCount", ["backends"], ["description"] = "Count of tool invocations that failed before local execution began.", ["lastUpdated"]}]
      553 NEWTABLE                         R54 0 1
      555 GETTABLEKS                       R55 R8 K49 ["Backends"]
      557 GETTABLEKS                       R55 R55 K61 ["RobloxTelemetryCounter"]
      559 SETLIST                          R54 R55 1 [1]
      561 SETTABLEKS                       R54 R53 K55 ["backends"]
      563 NEWTABLE                         R54 0 3
      565 LOADN                            R55 26
      566 LOADN                            R56 7
      567 LOADN                            R57 24
      568 SETLIST                          R54 R55 3 [1]
      570 SETTABLEKS                       R54 R53 K58 ["lastUpdated"]
      572 CALL                             R52 1 1
      573 GETIMPORT                        R53 K48 [table.freeze]
      575 DUPTABLE                         R54 K128 [{["eventName"] = "CAPToolConfirmationShown", ["backends"], ["description"] = "Tool confirmation dialog shown event with request ID, tool name, and warning message.", ["lastUpdated"]}]
      576 SETTABLEKS                       R31 R54 K55 ["backends"]
      578 NEWTABLE                         R55 0 3
      580 LOADN                            R56 25
      581 LOADN                            R57 9
      582 LOADN                            R58 19
      583 SETLIST                          R55 R56 3 [1]
      585 SETTABLEKS                       R55 R54 K58 ["lastUpdated"]
      587 CALL                             R53 1 1
      588 GETIMPORT                        R54 K48 [table.freeze]
      590 DUPTABLE                         R55 K131 [{["eventName"] = "CAPToolConfirmationResult", ["backends"], ["description"] = "Tool confirmation dialog result event with request ID and user choice.", ["lastUpdated"]}]
      591 SETTABLEKS                       R31 R55 K55 ["backends"]
      593 NEWTABLE                         R56 0 3
      595 LOADN                            R57 25
      596 LOADN                            R58 9
      597 LOADN                            R59 19
      598 SETLIST                          R56 R57 3 [1]
      600 SETTABLEKS                       R56 R55 K58 ["lastUpdated"]
      602 CALL                             R54 1 1
      603 GETIMPORT                        R55 K48 [table.freeze]
      605 DUPTABLE                         R56 K134 [{["eventName"] = "CAPExternalAPIError", ["backends"], ["description"] = "External LLM API error event with request ID, model, and HTTP status code.", ["lastUpdated"]}]
      606 SETTABLEKS                       R31 R56 K55 ["backends"]
      608 NEWTABLE                         R57 0 3
      610 LOADN                            R58 25
      611 LOADN                            R59 12
      612 LOADN                            R60 16
      613 SETLIST                          R57 R58 3 [1]
      615 SETTABLEKS                       R57 R56 K58 ["lastUpdated"]
      617 CALL                             R55 1 1
      618 GETIMPORT                        R56 K48 [table.freeze]
      620 DUPTABLE                         R57 K137 [{["eventName"] = "CAPMeshGenActivated", ["backends"], ["description"] = "Count of MeshGen tool activations.", ["lastUpdated"]}]
      621 NEWTABLE                         R58 0 1
      623 GETTABLEKS                       R59 R8 K49 ["Backends"]
      625 GETTABLEKS                       R59 R59 K61 ["RobloxTelemetryCounter"]
      627 SETLIST                          R58 R59 1 [1]
      629 SETTABLEKS                       R58 R57 K55 ["backends"]
      631 NEWTABLE                         R58 0 3
      633 LOADN                            R59 26
      634 LOADN                            R60 2
      635 LOADN                            R61 6
      636 SETLIST                          R58 R59 3 [1]
      638 SETTABLEKS                       R58 R57 K58 ["lastUpdated"]
      640 CALL                             R56 1 1
      641 GETIMPORT                        R57 K48 [table.freeze]
      643 DUPTABLE                         R58 K140 [{["eventName"] = "CAPMeshGenCompletedSuccess", ["backends"], ["description"] = "Count of successful MeshGen completions.", ["lastUpdated"]}]
      644 NEWTABLE                         R59 0 1
      646 GETTABLEKS                       R60 R8 K49 ["Backends"]
      648 GETTABLEKS                       R60 R60 K61 ["RobloxTelemetryCounter"]
      650 SETLIST                          R59 R60 1 [1]
      652 SETTABLEKS                       R59 R58 K55 ["backends"]
      654 NEWTABLE                         R59 0 3
      656 LOADN                            R60 26
      657 LOADN                            R61 2
      658 LOADN                            R62 6
      659 SETLIST                          R59 R60 3 [1]
      661 SETTABLEKS                       R59 R58 K58 ["lastUpdated"]
      663 CALL                             R57 1 1
      664 GETIMPORT                        R58 K48 [table.freeze]
      666 DUPTABLE                         R59 K143 [{["eventName"] = "CAPMeshGenCompletedFailure", ["backends"], ["description"] = "Count of failed MeshGen completions.", ["lastUpdated"]}]
      667 NEWTABLE                         R60 0 1
      669 GETTABLEKS                       R61 R8 K49 ["Backends"]
      671 GETTABLEKS                       R61 R61 K61 ["RobloxTelemetryCounter"]
      673 SETLIST                          R60 R61 1 [1]
      675 SETTABLEKS                       R60 R59 K55 ["backends"]
      677 NEWTABLE                         R60 0 3
      679 LOADN                            R61 26
      680 LOADN                            R62 2
      681 LOADN                            R63 6
      682 SETLIST                          R60 R61 3 [1]
      684 SETTABLEKS                       R60 R59 K58 ["lastUpdated"]
      686 CALL                             R58 1 1
      687 GETIMPORT                        R59 K48 [table.freeze]
      689 DUPTABLE                         R60 K146 [{["eventName"] = "CAPMeshGenCompleted", ["backends"], ["description"] = "MeshGen generation completed event with details.", ["lastUpdated"]}]
      690 SETTABLEKS                       R31 R60 K55 ["backends"]
      692 NEWTABLE                         R61 0 3
      694 LOADN                            R62 26
      695 LOADN                            R63 2
      696 LOADN                            R64 6
      697 SETLIST                          R61 R62 3 [1]
      699 SETTABLEKS                       R61 R60 K58 ["lastUpdated"]
      701 CALL                             R59 1 1
      702 GETIMPORT                        R60 K48 [table.freeze]
      704 DUPTABLE                         R61 K149 [{["eventName"] = "CAPMeshGenPublishedAssetsSuccess", ["backends"], ["description"] = "Count of successful MeshGen asset publications.", ["lastUpdated"]}]
      705 NEWTABLE                         R62 0 1
      707 GETTABLEKS                       R63 R8 K49 ["Backends"]
      709 GETTABLEKS                       R63 R63 K61 ["RobloxTelemetryCounter"]
      711 SETLIST                          R62 R63 1 [1]
      713 SETTABLEKS                       R62 R61 K55 ["backends"]
      715 NEWTABLE                         R62 0 3
      717 LOADN                            R63 26
      718 LOADN                            R64 2
      719 LOADN                            R65 6
      720 SETLIST                          R62 R63 3 [1]
      722 SETTABLEKS                       R62 R61 K58 ["lastUpdated"]
      724 CALL                             R60 1 1
      725 GETIMPORT                        R61 K48 [table.freeze]
      727 DUPTABLE                         R62 K152 [{["eventName"] = "CAPMeshGenPublishedAssetsFailure", ["backends"], ["description"] = "Count of failed MeshGen asset publications.", ["lastUpdated"]}]
      728 NEWTABLE                         R63 0 1
      730 GETTABLEKS                       R64 R8 K49 ["Backends"]
      732 GETTABLEKS                       R64 R64 K61 ["RobloxTelemetryCounter"]
      734 SETLIST                          R63 R64 1 [1]
      736 SETTABLEKS                       R63 R62 K55 ["backends"]
      738 NEWTABLE                         R63 0 3
      740 LOADN                            R64 26
      741 LOADN                            R65 2
      742 LOADN                            R66 6
      743 SETLIST                          R63 R64 3 [1]
      745 SETTABLEKS                       R63 R62 K58 ["lastUpdated"]
      747 CALL                             R61 1 1
      748 GETIMPORT                        R62 K48 [table.freeze]
      750 DUPTABLE                         R63 K155 [{["eventName"] = "CAPMeshGenPublishedAssets", ["backends"], ["description"] = "MeshGen assets published event with details.", ["lastUpdated"]}]
      751 SETTABLEKS                       R31 R63 K55 ["backends"]
      753 NEWTABLE                         R64 0 3
      755 LOADN                            R65 26
      756 LOADN                            R66 2
      757 LOADN                            R67 6
      758 SETLIST                          R64 R65 3 [1]
      760 SETTABLEKS                       R64 R63 K58 ["lastUpdated"]
      762 CALL                             R62 1 1
      763 GETIMPORT                        R63 K48 [table.freeze]
      765 DUPTABLE                         R64 K158 [{["eventName"] = "CAPMeshGenMeshInsertedSuccess", ["backends"], ["description"] = "Count of successful MeshGen mesh insertions.", ["lastUpdated"]}]
      766 NEWTABLE                         R65 0 1
      768 GETTABLEKS                       R66 R8 K49 ["Backends"]
      770 GETTABLEKS                       R66 R66 K61 ["RobloxTelemetryCounter"]
      772 SETLIST                          R65 R66 1 [1]
      774 SETTABLEKS                       R65 R64 K55 ["backends"]
      776 NEWTABLE                         R65 0 3
      778 LOADN                            R66 26
      779 LOADN                            R67 2
      780 LOADN                            R68 6
      781 SETLIST                          R65 R66 3 [1]
      783 SETTABLEKS                       R65 R64 K58 ["lastUpdated"]
      785 CALL                             R63 1 1
      786 GETIMPORT                        R64 K48 [table.freeze]
      788 DUPTABLE                         R65 K161 [{["eventName"] = "CAPMeshGenMeshInsertedFailure", ["backends"], ["description"] = "Count of failed MeshGen mesh insertions.", ["lastUpdated"]}]
      789 NEWTABLE                         R66 0 1
      791 GETTABLEKS                       R67 R8 K49 ["Backends"]
      793 GETTABLEKS                       R67 R67 K61 ["RobloxTelemetryCounter"]
      795 SETLIST                          R66 R67 1 [1]
      797 SETTABLEKS                       R66 R65 K55 ["backends"]
      799 NEWTABLE                         R66 0 3
      801 LOADN                            R67 26
      802 LOADN                            R68 2
      803 LOADN                            R69 6
      804 SETLIST                          R66 R67 3 [1]
      806 SETTABLEKS                       R66 R65 K58 ["lastUpdated"]
      808 CALL                             R64 1 1
      809 GETIMPORT                        R65 K48 [table.freeze]
      811 DUPTABLE                         R66 K164 [{["eventName"] = "CAPMeshGenMeshInserted", ["backends"], ["description"] = "MeshGen mesh inserted event with details.", ["lastUpdated"]}]
      812 SETTABLEKS                       R31 R66 K55 ["backends"]
      814 NEWTABLE                         R67 0 3
      816 LOADN                            R68 26
      817 LOADN                            R69 2
      818 LOADN                            R70 6
      819 SETLIST                          R67 R68 3 [1]
      821 SETTABLEKS                       R67 R66 K58 ["lastUpdated"]
      823 CALL                             R65 1 1
      824 GETIMPORT                        R66 K48 [table.freeze]
      826 DUPTABLE                         R67 K166 [{["eventName"], ["backends"], ["description"] = "Count of PrimitiveGen completions with success status.", ["lastUpdated"]}]
      827 LOADK                            R68 K167 ["StudioAssistantPrimitiveGenCompletedCount"]
      828 SETTABLEKS                       R68 R67 K54 ["eventName"]
      830 NEWTABLE                         R68 0 1
      832 GETTABLEKS                       R69 R8 K49 ["Backends"]
      834 GETTABLEKS                       R69 R69 K61 ["RobloxTelemetryCounter"]
      836 SETLIST                          R68 R69 1 [1]
      838 SETTABLEKS                       R68 R67 K55 ["backends"]
      840 NEWTABLE                         R68 0 3
      842 LOADN                            R69 26
      843 LOADN                            R70 3
      844 LOADN                            R71 12
      845 SETLIST                          R68 R69 3 [1]
      847 SETTABLEKS                       R68 R67 K58 ["lastUpdated"]
      849 CALL                             R66 1 1
      850 GETIMPORT                        R67 K48 [table.freeze]
      852 DUPTABLE                         R68 K169 [{["eventName"], ["backends"], ["description"] = "PrimitiveGen completion event with generation, prompt, render latency, and dependency details.", ["lastUpdated"]}]
      853 LOADK                            R69 K170 ["StudioAssistantPrimitiveGenCompleted"]
      854 SETTABLEKS                       R69 R68 K54 ["eventName"]
      856 SETTABLEKS                       R31 R68 K55 ["backends"]
      858 NEWTABLE                         R69 0 3
      860 LOADN                            R70 26
      861 LOADN                            R71 3
      862 LOADN                            R72 12
      863 SETLIST                          R69 R70 3 [1]
      865 SETTABLEKS                       R69 R68 K58 ["lastUpdated"]
      867 CALL                             R67 1 1
      868 GETIMPORT                        R68 K48 [table.freeze]
      870 DUPTABLE                         R69 K172 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call started.", ["lastUpdated"]}]
      871 LOADK                            R70 K173 ["StudioAssistantAvatarAutoSetupRequested"]
      872 SETTABLEKS                       R70 R69 K54 ["eventName"]
      874 SETTABLEKS                       R31 R69 K55 ["backends"]
      876 NEWTABLE                         R70 0 3
      878 LOADN                            R71 26
      879 LOADN                            R72 7
      880 LOADN                            R73 22
      881 SETLIST                          R70 R71 3 [1]
      883 SETTABLEKS                       R70 R69 K58 ["lastUpdated"]
      885 CALL                             R68 1 1
      886 GETIMPORT                        R69 K48 [table.freeze]
      888 DUPTABLE                         R70 K175 [{["eventName"], ["backends"], ["description"] = "Auto-setup options used for an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      889 LOADK                            R71 K176 ["StudioAssistantAvatarAutoSetupOptions"]
      890 SETTABLEKS                       R71 R70 K54 ["eventName"]
      892 SETTABLEKS                       R31 R70 K55 ["backends"]
      894 NEWTABLE                         R71 0 3
      896 LOADN                            R72 26
      897 LOADN                            R73 7
      898 LOADN                            R74 22
      899 SETLIST                          R71 R72 3 [1]
      901 SETTABLEKS                       R71 R70 K58 ["lastUpdated"]
      903 CALL                             R69 1 1
      904 GETIMPORT                        R70 K48 [table.freeze]
      906 DUPTABLE                         R71 K178 [{["eventName"], ["backends"], ["description"] = "Engine assigned a job id to an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      907 LOADK                            R72 K179 ["StudioAssistantAvatarAutoSetupJobInitialized"]
      908 SETTABLEKS                       R72 R71 K54 ["eventName"]
      910 SETTABLEKS                       R31 R71 K55 ["backends"]
      912 NEWTABLE                         R72 0 3
      914 LOADN                            R73 26
      915 LOADN                            R74 7
      916 LOADN                            R75 22
      917 SETLIST                          R72 R73 3 [1]
      919 SETTABLEKS                       R72 R71 K58 ["lastUpdated"]
      921 CALL                             R70 1 1
      922 GETIMPORT                        R71 K48 [table.freeze]
      924 DUPTABLE                         R72 K181 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call completed successfully.", ["lastUpdated"]}]
      925 LOADK                            R73 K182 ["StudioAssistantAvatarAutoSetupFinish"]
      926 SETTABLEKS                       R73 R72 K54 ["eventName"]
      928 SETTABLEKS                       R31 R72 K55 ["backends"]
      930 NEWTABLE                         R73 0 3
      932 LOADN                            R74 26
      933 LOADN                            R75 7
      934 LOADN                            R76 22
      935 SETLIST                          R73 R74 3 [1]
      937 SETTABLEKS                       R73 R72 K58 ["lastUpdated"]
      939 CALL                             R71 1 1
      940 GETIMPORT                        R72 K48 [table.freeze]
      942 DUPTABLE                         R73 K184 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call failed before returning a model.", ["lastUpdated"]}]
      943 LOADK                            R74 K185 ["StudioAssistantAvatarAutoSetupFailure"]
      944 SETTABLEKS                       R74 R73 K54 ["eventName"]
      946 SETTABLEKS                       R31 R73 K55 ["backends"]
      948 NEWTABLE                         R74 0 3
      950 LOADN                            R75 26
      951 LOADN                            R76 7
      952 LOADN                            R77 22
      953 SETLIST                          R74 R75 3 [1]
      955 SETTABLEKS                       R74 R73 K58 ["lastUpdated"]
      957 CALL                             R72 1 1
      958 GETIMPORT                        R73 K48 [table.freeze]
      960 DUPTABLE                         R74 K187 [{["eventName"], ["backends"], ["description"] = "Count of successful MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      961 LOADK                            R75 K188 ["StudioAssistantAvatarAutoSetupFinishCount"]
      962 SETTABLEKS                       R75 R74 K54 ["eventName"]
      964 NEWTABLE                         R75 0 1
      966 GETTABLEKS                       R76 R8 K49 ["Backends"]
      968 GETTABLEKS                       R76 R76 K61 ["RobloxTelemetryCounter"]
      970 SETLIST                          R75 R76 1 [1]
      972 SETTABLEKS                       R75 R74 K55 ["backends"]
      974 NEWTABLE                         R75 0 3
      976 LOADN                            R76 26
      977 LOADN                            R77 7
      978 LOADN                            R78 29
      979 SETLIST                          R75 R76 3 [1]
      981 SETTABLEKS                       R75 R74 K58 ["lastUpdated"]
      983 CALL                             R73 1 1
      984 GETIMPORT                        R74 K48 [table.freeze]
      986 DUPTABLE                         R75 K190 [{["eventName"], ["backends"], ["description"] = "Count of failed MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      987 LOADK                            R76 K191 ["StudioAssistantAvatarAutoSetupFailureCount"]
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
     1012 DUPTABLE                         R76 K193 [{["eventName"], ["backends"], ["description"] = "Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat.", ["lastUpdated"]}]
     1013 LOADK                            R77 K194 ["StudioAssistantGen3DSegmentationRefresh"]
     1014 SETTABLEKS                       R77 R76 K54 ["eventName"]
     1016 NEWTABLE                         R77 0 1
     1018 GETTABLEKS                       R78 R8 K49 ["Backends"]
     1020 GETTABLEKS                       R78 R78 K61 ["RobloxTelemetryCounter"]
     1022 SETLIST                          R77 R78 1 [1]
     1024 SETTABLEKS                       R77 R76 K55 ["backends"]
     1026 NEWTABLE                         R77 0 3
     1028 LOADN                            R78 26
     1029 LOADN                            R79 6
     1030 LOADN                            R80 9
     1031 SETLIST                          R77 R78 3 [1]
     1033 SETTABLEKS                       R77 R76 K58 ["lastUpdated"]
     1035 CALL                             R75 1 1
     1036 GETIMPORT                        R76 K48 [table.freeze]
     1038 DUPTABLE                         R77 K196 [{["eventName"], ["backends"], ["description"] = "Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session.", ["lastUpdated"]}]
     1039 LOADK                            R78 K197 ["StudioAssistantGen3DInstanceDeleted"]
     1040 SETTABLEKS                       R78 R77 K54 ["eventName"]
     1042 SETTABLEKS                       R31 R77 K55 ["backends"]
     1044 NEWTABLE                         R78 0 3
     1046 LOADN                            R79 26
     1047 LOADN                            R80 6
     1048 LOADN                            R81 9
     1049 SETLIST                          R78 R79 3 [1]
     1051 SETTABLEKS                       R78 R77 K58 ["lastUpdated"]
     1053 CALL                             R76 1 1
     1054 GETIMPORT                        R77 K48 [table.freeze]
     1056 DUPTABLE                         R78 K199 [{["eventName"], ["backends"], ["description"] = "Fired once per image-preview batch (MeshGen/PrimitiveGen picker) with the option ids shown to the user.", ["lastUpdated"]}]
     1057 LOADK                            R79 K200 ["StudioAssistantGen3DImageImpression"]
     1058 SETTABLEKS                       R79 R78 K54 ["eventName"]
     1060 SETTABLEKS                       R31 R78 K55 ["backends"]
     1062 NEWTABLE                         R79 0 3
     1064 LOADN                            R80 26
     1065 LOADN                            R81 7
     1066 LOADN                            R82 30
     1067 SETLIST                          R79 R80 3 [1]
     1069 SETTABLEKS                       R79 R78 K58 ["lastUpdated"]
     1071 CALL                             R77 1 1
     1072 GETIMPORT                        R78 K48 [table.freeze]
     1074 DUPTABLE                         R79 K202 [{["eventName"], ["backends"], ["description"] = "Count of image-preview picker actions (select/refresh/refine/back), labelled by action and modelFlow.", ["lastUpdated"]}]
     1075 LOADK                            R80 K203 ["StudioAssistantGen3DImageActionCount"]
     1076 SETTABLEKS                       R80 R79 K54 ["eventName"]
     1078 NEWTABLE                         R80 0 1
     1080 GETTABLEKS                       R81 R8 K49 ["Backends"]
     1082 GETTABLEKS                       R81 R81 K61 ["RobloxTelemetryCounter"]
     1084 SETLIST                          R80 R81 1 [1]
     1086 SETTABLEKS                       R80 R79 K55 ["backends"]
     1088 NEWTABLE                         R80 0 3
     1090 LOADN                            R81 26
     1091 LOADN                            R82 7
     1092 LOADN                            R83 30
     1093 SETLIST                          R80 R81 3 [1]
     1095 SETTABLEKS                       R80 R79 K58 ["lastUpdated"]
     1097 CALL                             R78 1 1
     1098 GETIMPORT                        R79 K48 [table.freeze]
     1100 DUPTABLE                         R80 K205 [{["eventName"], ["backends"], ["description"] = "Fired for each user action taken on the image-preview picker (MeshGen/PrimitiveGen).", ["lastUpdated"]}]
     1101 LOADK                            R81 K206 ["StudioAssistantGen3DImageAction"]
     1102 SETTABLEKS                       R81 R80 K54 ["eventName"]
     1104 SETTABLEKS                       R31 R80 K55 ["backends"]
     1106 NEWTABLE                         R81 0 3
     1108 LOADN                            R82 26
     1109 LOADN                            R83 7
     1110 LOADN                            R84 30
     1111 SETLIST                          R81 R82 3 [1]
     1113 SETTABLEKS                       R81 R80 K58 ["lastUpdated"]
     1115 CALL                             R79 1 1
     1116 GETIMPORT                        R80 K48 [table.freeze]
     1118 DUPTABLE                         R81 K208 [{["eventName"], ["backends"], ["description"] = "Fired per distinct generationId still tagged in the DataModel when a place publish starts. Shared across MeshGen, PrimitiveGen, and future Gen3D-style tools.", ["lastUpdated"]}]
     1119 LOADK                            R82 K209 ["StudioAssistantGen3DAssetPublished"]
     1120 SETTABLEKS                       R82 R81 K54 ["eventName"]
     1122 SETTABLEKS                       R31 R81 K55 ["backends"]
     1124 NEWTABLE                         R82 0 3
     1126 LOADN                            R83 26
     1127 LOADN                            R84 7
     1128 LOADN                            R85 30
     1129 SETLIST                          R82 R83 3 [1]
     1131 SETTABLEKS                       R82 R81 K58 ["lastUpdated"]
     1133 CALL                             R80 1 1
     1134 GETIMPORT                        R81 K48 [table.freeze]
     1136 DUPTABLE                         R82 K211 [{["eventName"], ["backends"], ["description"] = "Count of AI-generated assets still present at publish time, labelled by modelFlow.", ["lastUpdated"]}]
     1137 LOADK                            R83 K212 ["StudioAssistantGen3DAssetPublishedCount"]
     1138 SETTABLEKS                       R83 R82 K54 ["eventName"]
     1140 NEWTABLE                         R83 0 1
     1142 GETTABLEKS                       R84 R8 K49 ["Backends"]
     1144 GETTABLEKS                       R84 R84 K61 ["RobloxTelemetryCounter"]
     1146 SETLIST                          R83 R84 1 [1]
     1148 SETTABLEKS                       R83 R82 K55 ["backends"]
     1150 NEWTABLE                         R83 0 3
     1152 LOADN                            R84 26
     1153 LOADN                            R85 7
     1154 LOADN                            R86 30
     1155 SETLIST                          R83 R84 3 [1]
     1157 SETTABLEKS                       R83 R82 K58 ["lastUpdated"]
     1159 CALL                             R81 1 1
     1160 GETIMPORT                        R82 K48 [table.freeze]
     1162 DUPTABLE                         R83 K214 [{["eventName"], ["backends"], ["description"] = "Integration event with action, label, and URL.", ["lastUpdated"]}]
     1163 LOADK                            R84 K215 ["StudioAssistantIntegrationAction"]
     1164 SETTABLEKS                       R84 R83 K54 ["eventName"]
     1166 SETTABLEKS                       R31 R83 K55 ["backends"]
     1168 NEWTABLE                         R84 0 3
     1170 LOADN                            R85 26
     1171 LOADN                            R86 2
     1172 LOADN                            R87 3
     1173 SETLIST                          R84 R85 3 [1]
     1175 SETTABLEKS                       R84 R83 K58 ["lastUpdated"]
     1177 CALL                             R82 1 1
     1178 GETIMPORT                        R83 K48 [table.freeze]
     1180 DUPTABLE                         R84 K217 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1181 LOADK                            R85 K218 ["StudioAssistantExternalServerConnectedEvent"]
     1182 SETTABLEKS                       R85 R84 K54 ["eventName"]
     1184 SETTABLEKS                       R31 R84 K55 ["backends"]
     1186 NEWTABLE                         R85 0 3
     1188 LOADN                            R86 26
     1189 LOADN                            R87 2
     1190 LOADN                            R88 25
     1191 SETLIST                          R85 R86 3 [1]
     1193 SETTABLEKS                       R85 R84 K58 ["lastUpdated"]
     1195 CALL                             R83 1 1
     1196 GETIMPORT                        R84 K48 [table.freeze]
     1198 DUPTABLE                         R85 K217 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1199 LOADK                            R86 K219 ["StudioAssistantExternalServerConnectedCounter"]
     1200 SETTABLEKS                       R86 R85 K54 ["eventName"]
     1202 NEWTABLE                         R86 0 1
     1204 GETTABLEKS                       R87 R8 K49 ["Backends"]
     1206 GETTABLEKS                       R87 R87 K61 ["RobloxTelemetryCounter"]
     1208 SETLIST                          R86 R87 1 [1]
     1210 SETTABLEKS                       R86 R85 K55 ["backends"]
     1212 NEWTABLE                         R86 0 3
     1214 LOADN                            R87 26
     1215 LOADN                            R88 2
     1216 LOADN                            R89 25
     1217 SETLIST                          R86 R87 3 [1]
     1219 SETTABLEKS                       R86 R85 K58 ["lastUpdated"]
     1221 CALL                             R84 1 1
     1222 GETIMPORT                        R85 K48 [table.freeze]
     1224 DUPTABLE                         R86 K222 [{["eventName"] = "CAPQuestionAnswerCompleted", ["backends"], ["description"] = "Question answer tool completed event with full question/answer context.", ["lastUpdated"]}]
     1225 SETTABLEKS                       R31 R86 K55 ["backends"]
     1227 NEWTABLE                         R87 0 3
     1229 LOADN                            R88 26
     1230 LOADN                            R89 4
     1231 LOADN                            R90 1
     1232 SETLIST                          R87 R88 3 [1]
     1234 SETTABLEKS                       R87 R86 K58 ["lastUpdated"]
     1236 CALL                             R85 1 1
     1237 GETIMPORT                        R86 K48 [table.freeze]
     1239 DUPTABLE                         R87 K224 [{["eventName"], ["backends"], ["description"] = "Count of question answer tool completions.", ["lastUpdated"]}]
     1240 LOADK                            R88 K225 ["StudioAssistantQuestionAnswerCompleted"]
     1241 SETTABLEKS                       R88 R87 K54 ["eventName"]
     1243 NEWTABLE                         R88 0 1
     1245 GETTABLEKS                       R89 R8 K49 ["Backends"]
     1247 GETTABLEKS                       R89 R89 K61 ["RobloxTelemetryCounter"]
     1249 SETLIST                          R88 R89 1 [1]
     1251 SETTABLEKS                       R88 R87 K55 ["backends"]
     1253 NEWTABLE                         R88 0 3
     1255 LOADN                            R89 26
     1256 LOADN                            R90 4
     1257 LOADN                            R91 1
     1258 SETLIST                          R88 R89 3 [1]
     1260 SETTABLEKS                       R88 R87 K58 ["lastUpdated"]
     1262 CALL                             R86 1 1
     1263 GETIMPORT                        R87 K48 [table.freeze]
     1265 DUPTABLE                         R88 K228 [{["eventName"] = "CAPPlanDecision", ["backends"], ["description"] = "Plan decision event with full plan context when user accepts or rejects a plan.", ["lastUpdated"]}]
     1266 SETTABLEKS                       R31 R88 K55 ["backends"]
     1268 NEWTABLE                         R89 0 3
     1270 LOADN                            R90 26
     1271 LOADN                            R91 4
     1272 LOADN                            R92 1
     1273 SETLIST                          R89 R90 3 [1]
     1275 SETTABLEKS                       R89 R88 K58 ["lastUpdated"]
     1277 CALL                             R87 1 1
     1278 GETIMPORT                        R88 K48 [table.freeze]
     1280 DUPTABLE                         R89 K230 [{["eventName"], ["backends"], ["description"] = "Count of plan decisions.", ["lastUpdated"]}]
     1281 LOADK                            R90 K231 ["StudioAssistantPlanDecision"]
     1282 SETTABLEKS                       R90 R89 K54 ["eventName"]
     1284 NEWTABLE                         R90 0 1
     1286 GETTABLEKS                       R91 R8 K49 ["Backends"]
     1288 GETTABLEKS                       R91 R91 K61 ["RobloxTelemetryCounter"]
     1290 SETLIST                          R90 R91 1 [1]
     1292 SETTABLEKS                       R90 R89 K55 ["backends"]
     1294 NEWTABLE                         R90 0 3
     1296 LOADN                            R91 26
     1297 LOADN                            R92 4
     1298 LOADN                            R93 1
     1299 SETLIST                          R90 R91 3 [1]
     1301 SETTABLEKS                       R90 R89 K58 ["lastUpdated"]
     1303 CALL                             R88 1 1
     1304 GETIMPORT                        R89 K48 [table.freeze]
     1306 DUPTABLE                         R90 K234 [{["eventName"] = "SBT_MaterialGeneratorSavedMaterial", ["backends"], ["description"] = "Counter to track number of saved materials", ["lastUpdated"]}]
     1307 NEWTABLE                         R91 0 1
     1309 GETTABLEKS                       R92 R8 K49 ["Backends"]
     1311 GETTABLEKS                       R92 R92 K61 ["RobloxTelemetryCounter"]
     1313 SETLIST                          R91 R92 1 [1]
     1315 SETTABLEKS                       R91 R90 K55 ["backends"]
     1317 NEWTABLE                         R91 0 3
     1319 LOADN                            R92 24
     1320 LOADN                            R93 10
     1321 LOADN                            R94 15
     1322 SETLIST                          R91 R92 3 [1]
     1324 SETTABLEKS                       R91 R90 K58 ["lastUpdated"]
     1326 CALL                             R89 1 1
     1327 GETIMPORT                        R90 K48 [table.freeze]
     1329 DUPTABLE                         R91 K236 [{["eventName"], ["backends"], ["description"] = "Thread created event with details.", ["lastUpdated"]}]
     1330 LOADK                            R92 K237 ["StudioAssistantThreadCreated"]
     1331 SETTABLEKS                       R92 R91 K54 ["eventName"]
     1333 SETTABLEKS                       R31 R91 K55 ["backends"]
     1335 NEWTABLE                         R92 0 3
     1337 LOADN                            R93 26
     1338 LOADN                            R94 3
     1339 LOADN                            R95 10
     1340 SETLIST                          R92 R93 3 [1]
     1342 SETTABLEKS                       R92 R91 K58 ["lastUpdated"]
     1344 CALL                             R90 1 1
     1345 GETIMPORT                        R91 K48 [table.freeze]
     1347 DUPTABLE                         R92 K239 [{["eventName"], ["backends"], ["description"] = "Thread named event with details.", ["lastUpdated"]}]
     1348 LOADK                            R93 K240 ["StudioAssistantThreadRenamed"]
     1349 SETTABLEKS                       R93 R92 K54 ["eventName"]
     1351 SETTABLEKS                       R31 R92 K55 ["backends"]
     1353 NEWTABLE                         R93 0 3
     1355 LOADN                            R94 26
     1356 LOADN                            R95 3
     1357 LOADN                            R96 10
     1358 SETLIST                          R93 R94 3 [1]
     1360 SETTABLEKS                       R93 R92 K58 ["lastUpdated"]
     1362 CALL                             R91 1 1
     1363 GETIMPORT                        R92 K48 [table.freeze]
     1365 DUPTABLE                         R93 K242 [{["eventName"], ["backends"], ["description"] = "Thread pinned changed event with details.", ["lastUpdated"]}]
     1366 LOADK                            R94 K243 ["StudioAssistantThreadPinnedChanged"]
     1367 SETTABLEKS                       R94 R93 K54 ["eventName"]
     1369 SETTABLEKS                       R31 R93 K55 ["backends"]
     1371 NEWTABLE                         R94 0 3
     1373 LOADN                            R95 26
     1374 LOADN                            R96 3
     1375 LOADN                            R97 10
     1376 SETLIST                          R94 R95 3 [1]
     1378 SETTABLEKS                       R94 R93 K58 ["lastUpdated"]
     1380 CALL                             R92 1 1
     1381 GETIMPORT                        R93 K48 [table.freeze]
     1383 DUPTABLE                         R94 K245 [{["eventName"], ["backends"], ["description"] = "Thread deleted event with details.", ["lastUpdated"]}]
     1384 LOADK                            R95 K246 ["StudioAssistantThreadDeleted"]
     1385 SETTABLEKS                       R95 R94 K54 ["eventName"]
     1387 SETTABLEKS                       R31 R94 K55 ["backends"]
     1389 NEWTABLE                         R95 0 3
     1391 LOADN                            R96 26
     1392 LOADN                            R97 3
     1393 LOADN                            R98 10
     1394 SETLIST                          R95 R96 3 [1]
     1396 SETTABLEKS                       R95 R94 K58 ["lastUpdated"]
     1398 CALL                             R93 1 1
     1399 GETIMPORT                        R94 K48 [table.freeze]
     1401 DUPTABLE                         R95 K248 [{["eventName"], ["backends"], ["description"] = "Thread duplicated event with details.", ["lastUpdated"]}]
     1402 LOADK                            R96 K249 ["StudioAssistantThreadDuplicated"]
     1403 SETTABLEKS                       R96 R95 K54 ["eventName"]
     1405 SETTABLEKS                       R31 R95 K55 ["backends"]
     1407 NEWTABLE                         R96 0 3
     1409 LOADN                            R97 26
     1410 LOADN                            R98 3
     1411 LOADN                            R99 10
     1412 SETLIST                          R96 R97 3 [1]
     1414 SETTABLEKS                       R96 R95 K58 ["lastUpdated"]
     1416 CALL                             R94 1 1
     1417 GETIMPORT                        R95 K48 [table.freeze]
     1419 DUPTABLE                         R96 K251 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer completed successfully.", ["lastUpdated"]}]
     1420 LOADK                            R97 K252 ["StudioAssistantCompactionSuccess"]
     1421 SETTABLEKS                       R97 R96 K54 ["eventName"]
     1423 SETTABLEKS                       R31 R96 K55 ["backends"]
     1425 NEWTABLE                         R97 0 3
     1427 LOADN                            R98 26
     1428 LOADN                            R99 4
     1429 LOADN                            R100 28
     1430 SETLIST                          R97 R98 3 [1]
     1432 SETTABLEKS                       R97 R96 K58 ["lastUpdated"]
     1434 CALL                             R95 1 1
     1435 GETIMPORT                        R96 K48 [table.freeze]
     1437 DUPTABLE                         R97 K254 [{["eventName"], ["backends"], ["description"] = "Count of successful compaction events.", ["lastUpdated"]}]
     1438 LOADK                            R98 K255 ["StudioAssistantCompactionSuccessCount"]
     1439 SETTABLEKS                       R98 R97 K54 ["eventName"]
     1441 NEWTABLE                         R98 0 1
     1443 GETTABLEKS                       R99 R8 K49 ["Backends"]
     1445 GETTABLEKS                       R99 R99 K61 ["RobloxTelemetryCounter"]
     1447 SETLIST                          R98 R99 1 [1]
     1449 SETTABLEKS                       R98 R97 K55 ["backends"]
     1451 NEWTABLE                         R98 0 3
     1453 LOADN                            R99 26
     1454 LOADN                            R100 4
     1455 LOADN                            R101 28
     1456 SETLIST                          R98 R99 3 [1]
     1458 SETTABLEKS                       R98 R97 K58 ["lastUpdated"]
     1460 CALL                             R96 1 1
     1461 GETIMPORT                        R97 K48 [table.freeze]
     1463 DUPTABLE                         R98 K257 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer failed, fell back to generic summary.", ["lastUpdated"]}]
     1464 LOADK                            R99 K258 ["StudioAssistantCompactionFallback"]
     1465 SETTABLEKS                       R99 R98 K54 ["eventName"]
     1467 SETTABLEKS                       R31 R98 K55 ["backends"]
     1469 NEWTABLE                         R99 0 3
     1471 LOADN                            R100 26
     1472 LOADN                            R101 4
     1473 LOADN                            R102 28
     1474 SETLIST                          R99 R100 3 [1]
     1476 SETTABLEKS                       R99 R98 K58 ["lastUpdated"]
     1478 CALL                             R97 1 1
     1479 GETIMPORT                        R98 K48 [table.freeze]
     1481 DUPTABLE                         R99 K260 [{["eventName"], ["backends"], ["description"] = "Count of compaction fallback events.", ["lastUpdated"]}]
     1482 LOADK                            R100 K261 ["StudioAssistantCompactionFallbackCount"]
     1483 SETTABLEKS                       R100 R99 K54 ["eventName"]
     1485 NEWTABLE                         R100 0 1
     1487 GETTABLEKS                       R101 R8 K49 ["Backends"]
     1489 GETTABLEKS                       R101 R101 K61 ["RobloxTelemetryCounter"]
     1491 SETLIST                          R100 R101 1 [1]
     1493 SETTABLEKS                       R100 R99 K55 ["backends"]
     1495 NEWTABLE                         R100 0 3
     1497 LOADN                            R101 26
     1498 LOADN                            R102 4
     1499 LOADN                            R103 28
     1500 SETLIST                          R100 R101 3 [1]
     1502 SETTABLEKS                       R100 R99 K58 ["lastUpdated"]
     1504 CALL                             R98 1 1
     1505 GETIMPORT                        R99 K48 [table.freeze]
     1507 DUPTABLE                         R100 K263 [{["eventName"], ["backends"], ["description"] = "Quick setup toggled/copied.", ["lastUpdated"]}]
     1508 LOADK                            R101 K264 ["StudioAssistantMCPQuickSetup"]
     1509 SETTABLEKS                       R101 R100 K54 ["eventName"]
     1511 SETTABLEKS                       R31 R100 K55 ["backends"]
     1513 NEWTABLE                         R101 0 3
     1515 LOADN                            R102 26
     1516 LOADN                            R103 4
     1517 LOADN                            R104 15
     1518 SETLIST                          R101 R102 3 [1]
     1520 SETTABLEKS                       R101 R100 K58 ["lastUpdated"]
     1522 CALL                             R99 1 1
     1523 GETIMPORT                        R100 K48 [table.freeze]
     1525 DUPTABLE                         R101 K266 [{["eventName"], ["backends"], ["description"] = "Thread switched event with details.", ["lastUpdated"]}]
     1526 LOADK                            R102 K267 ["StudioAssistantThreadSwitched"]
     1527 SETTABLEKS                       R102 R101 K54 ["eventName"]
     1529 SETTABLEKS                       R31 R101 K55 ["backends"]
     1531 NEWTABLE                         R102 0 3
     1533 LOADN                            R103 26
     1534 LOADN                            R104 3
     1535 LOADN                            R105 10
     1536 SETLIST                          R102 R103 3 [1]
     1538 SETTABLEKS                       R102 R101 K58 ["lastUpdated"]
     1540 CALL                             R100 1 1
     1541 GETIMPORT                        R101 K48 [table.freeze]
     1543 DUPTABLE                         R102 K270 [{["eventName"] = "CAPUserSkillEvent", ["backends"], ["description"] = "User skill created or updated event with skill name and action.", ["lastUpdated"]}]
     1544 SETTABLEKS                       R31 R102 K55 ["backends"]
     1546 NEWTABLE                         R103 0 3
     1548 LOADN                            R104 26
     1549 LOADN                            R105 6
     1550 LOADN                            R106 24
     1551 SETLIST                          R103 R104 3 [1]
     1553 SETTABLEKS                       R103 R102 K58 ["lastUpdated"]
     1555 CALL                             R101 1 1
     1556 GETIMPORT                        R102 K48 [table.freeze]
     1558 DUPTABLE                         R103 K273 [{["eventName"] = "CAPThinkingBlock", ["backends"], ["description"] = "Thinking block completed event with thinking text, subagent attribution.", ["lastUpdated"]}]
     1559 SETTABLEKS                       R31 R103 K55 ["backends"]
     1561 NEWTABLE                         R104 0 3
     1563 LOADN                            R105 26
     1564 LOADN                            R106 7
     1565 LOADN                            R107 22
     1566 SETLIST                          R104 R105 3 [1]
     1568 SETTABLEKS                       R104 R103 K58 ["lastUpdated"]
     1570 CALL                             R102 1 1
     1571 GETIMPORT                        R103 K48 [table.freeze]
     1573 DUPTABLE                         R104 K275 [{["eventName"], ["backends"], ["description"] = "Count of successful persistence operations.", ["lastUpdated"]}]
     1574 LOADK                            R105 K276 ["StudioAssistantPersistenceSuccess"]
     1575 SETTABLEKS                       R105 R104 K54 ["eventName"]
     1577 NEWTABLE                         R105 0 1
     1579 GETTABLEKS                       R106 R8 K49 ["Backends"]
     1581 GETTABLEKS                       R106 R106 K61 ["RobloxTelemetryCounter"]
     1583 SETLIST                          R105 R106 1 [1]
     1585 SETTABLEKS                       R105 R104 K55 ["backends"]
     1587 NEWTABLE                         R105 0 3
     1589 LOADN                            R106 26
     1590 LOADN                            R107 3
     1591 LOADN                            R108 10
     1592 SETLIST                          R105 R106 3 [1]
     1594 SETTABLEKS                       R105 R104 K58 ["lastUpdated"]
     1596 CALL                             R103 1 1
     1597 GETIMPORT                        R104 K48 [table.freeze]
     1599 DUPTABLE                         R105 K278 [{["eventName"], ["backends"], ["description"] = "Count of failed persistence operations.", ["lastUpdated"]}]
     1600 LOADK                            R106 K279 ["StudioAssistantPersistenceFailure"]
     1601 SETTABLEKS                       R106 R105 K54 ["eventName"]
     1603 NEWTABLE                         R106 0 1
     1605 GETTABLEKS                       R107 R8 K49 ["Backends"]
     1607 GETTABLEKS                       R107 R107 K61 ["RobloxTelemetryCounter"]
     1609 SETLIST                          R106 R107 1 [1]
     1611 SETTABLEKS                       R106 R105 K55 ["backends"]
     1613 NEWTABLE                         R106 0 3
     1615 LOADN                            R107 26
     1616 LOADN                            R108 3
     1617 LOADN                            R109 10
     1618 SETLIST                          R106 R107 3 [1]
     1620 SETTABLEKS                       R106 R105 K58 ["lastUpdated"]
     1622 CALL                             R104 1 1
     1623 GETIMPORT                        R105 K48 [table.freeze]
     1625 DUPTABLE                         R106 K281 [{["eventName"], ["backends"], ["description"] = "Persistence operation latency in milliseconds.", ["lastUpdated"]}]
     1626 LOADK                            R107 K282 ["StudioAssistantPersistenceLatencyMs"]
     1627 SETTABLEKS                       R107 R106 K54 ["eventName"]
     1629 NEWTABLE                         R107 0 1
     1631 GETTABLEKS                       R108 R8 K49 ["Backends"]
     1633 GETTABLEKS                       R108 R108 K85 ["RobloxTelemetryStat"]
     1635 SETLIST                          R107 R108 1 [1]
     1637 SETTABLEKS                       R107 R106 K55 ["backends"]
     1639 NEWTABLE                         R107 0 3
     1641 LOADN                            R108 26
     1642 LOADN                            R109 3
     1643 LOADN                            R110 10
     1644 SETLIST                          R107 R108 3 [1]
     1646 SETTABLEKS                       R107 R106 K58 ["lastUpdated"]
     1648 CALL                             R105 1 1
     1649 DUPCLOSURE                       R106 K283 [PROTO_18]
     1650 CAPTURE                          VAL R5
     1651 CAPTURE                          VAL R10
     1652 GETTABLEKS                       R107 R7 K284 ["FStringAssistantGroupNameKey"]
     1654 GETTABLEKS                       R108 R6 K285 ["new"]
     1656 MOVE                             R109 R2
     1657 GETTABLEKS                       R110 R7 K286 ["FStringNewAssistantExperimentLayer"]
     1659 CALL                             R108 2 1
     1660 DUPCLOSURE                       R109 K287 [PROTO_19]
     1661 CAPTURE                          VAL R108
     1662 CAPTURE                          VAL R107
     1663 DUPCLOSURE                       R110 K288 [PROTO_20]
     1664 CAPTURE                          VAL R14
     1665 DUPCLOSURE                       R111 K289 [PROTO_21]
     1666 CAPTURE                          VAL R5
     1667 CAPTURE                          VAL R108
     1668 CAPTURE                          VAL R107
     1669 CAPTURE                          VAL R14
     1670 DUPCLOSURE                       R112 K290 [PROTO_71]
     1671 CAPTURE                          VAL R108
     1672 CAPTURE                          VAL R107
     1673 CAPTURE                          VAL R13
     1674 CAPTURE                          VAL R7
     1675 CAPTURE                          VAL R8
     1676 CAPTURE                          VAL R32
     1677 CAPTURE                          VAL R5
     1678 CAPTURE                          VAL R14
     1679 CAPTURE                          VAL R10
     1680 CAPTURE                          VAL R33
     1681 CAPTURE                          VAL R9
     1682 CAPTURE                          VAL R34
     1683 CAPTURE                          VAL R42
     1684 CAPTURE                          VAL R43
     1685 CAPTURE                          VAL R37
     1686 CAPTURE                          VAL R35
     1687 CAPTURE                          VAL R38
     1688 CAPTURE                          VAL R36
     1689 CAPTURE                          VAL R39
     1690 CAPTURE                          VAL R44
     1691 CAPTURE                          VAL R45
     1692 CAPTURE                          VAL R46
     1693 CAPTURE                          VAL R50
     1694 CAPTURE                          VAL R1
     1695 CAPTURE                          VAL R12
     1696 CAPTURE                          VAL R49
     1697 CAPTURE                          VAL R48
     1698 CAPTURE                          VAL R24
     1699 CAPTURE                          VAL R27
     1700 CAPTURE                          VAL R47
     1701 CAPTURE                          VAL R52
     1702 CAPTURE                          VAL R51
     1703 CAPTURE                          VAL R53
     1704 CAPTURE                          VAL R54
     1705 CAPTURE                          VAL R40
     1706 CAPTURE                          VAL R41
     1707 CAPTURE                          VAL R55
     1708 CAPTURE                          VAL R56
     1709 CAPTURE                          VAL R57
     1710 CAPTURE                          VAL R58
     1711 CAPTURE                          VAL R59
     1712 CAPTURE                          VAL R60
     1713 CAPTURE                          VAL R61
     1714 CAPTURE                          VAL R62
     1715 CAPTURE                          VAL R63
     1716 CAPTURE                          VAL R64
     1717 CAPTURE                          VAL R65
     1718 CAPTURE                          VAL R66
     1719 CAPTURE                          VAL R67
     1720 CAPTURE                          VAL R68
     1721 CAPTURE                          VAL R69
     1722 CAPTURE                          VAL R70
     1723 CAPTURE                          VAL R71
     1724 CAPTURE                          VAL R73
     1725 CAPTURE                          VAL R72
     1726 CAPTURE                          VAL R74
     1727 CAPTURE                          VAL R75
     1728 CAPTURE                          VAL R76
     1729 CAPTURE                          VAL R77
     1730 CAPTURE                          VAL R78
     1731 CAPTURE                          VAL R79
     1732 CAPTURE                          VAL R81
     1733 CAPTURE                          VAL R80
     1734 CAPTURE                          VAL R82
     1735 CAPTURE                          VAL R83
     1736 CAPTURE                          VAL R84
     1737 CAPTURE                          VAL R86
     1738 CAPTURE                          VAL R85
     1739 CAPTURE                          VAL R88
     1740 CAPTURE                          VAL R87
     1741 CAPTURE                          VAL R89
     1742 CAPTURE                          VAL R90
     1743 CAPTURE                          VAL R91
     1744 CAPTURE                          VAL R92
     1745 CAPTURE                          VAL R93
     1746 CAPTURE                          VAL R94
     1747 CAPTURE                          VAL R99
     1748 CAPTURE                          VAL R100
     1749 CAPTURE                          VAL R96
     1750 CAPTURE                          VAL R95
     1751 CAPTURE                          VAL R98
     1752 CAPTURE                          VAL R97
     1753 CAPTURE                          VAL R101
     1754 CAPTURE                          VAL R102
     1755 CAPTURE                          VAL R105
     1756 CAPTURE                          VAL R103
     1757 CAPTURE                          VAL R104
     1758 DUPCLOSURE                       R113 K291 [PROTO_72]
     1759 CAPTURE                          VAL R112
     1760 DUPTABLE                         R114 K294 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1761 SETTABLEKS                       R112 R114 K292 ["makeStudioTelemetryEvents"]
     1763 SETTABLEKS                       R113 R114 K293 ["createStudioEventLogger"]
     1765 RETURN                           R114 1
