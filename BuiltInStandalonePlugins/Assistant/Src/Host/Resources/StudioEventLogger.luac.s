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
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R1 K1 [pcall]
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 RETURN                           R2 1

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
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K1 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+13]
       13 GETUPVAL                         R3 1
       14 DUPTABLE                         R5 K5 [{["error"] = "Failed to encode tool result content", ["detail"]}]
       15 FASTCALL1                        TOSTRING R2 ; [+3]
       16 MOVE                             R7 R2
       17 GETIMPORT                        R6 K7 [tostring]
       19 CALL                             R6 1 1
       20 SETTABLEKS                       R6 R5 K4 ["detail"]
       22 NAMECALL                         R3 R3 K8 ["JSONEncode"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
       26 LENGTH                           R3 R2
       27 LOADN                            R4 500
       28 JUMPIFNOTLT                      R4 R3 ; [+11]
       30 LOADN                            R5 1
       31 LOADN                            R6 500
       32 FASTCALL3                        STRING_SUB R2 R5 R6
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K11 [string.sub]
       37 CALL                             R3 3 1
       38 LOADB                            R4 1
       39 RETURN                           R3 2
       40 RETURN                           R2 1

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
      153 JUMP                             ; [+11]
      154 NEWCLOSURE                       R6 P0
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          VAL R2
      157 FASTPCALL                        pcall 1 ; [+2]
      158 GETIMPORT                        R5 K43 [pcall]
      160 CALL                             R5 1 2
      161 JUMPIF                           R5 ; [+2]
      162 LOADNIL                          R4
      163 JUMP                             ; [+1]
      164 MOVE                             R4 R6
      165 SETTABLEKS                       R4 R3 K2 ["toolResultImages"]
      167 LENGTH                           R4 R0
      168 SETTABLEKS                       R4 R3 K3 ["toolResultContentItemCount"]
      170 RETURN                           R3 1

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
      152 NEWTABLE                         R7 0 0
      154 GETUPVAL                         R8 10
      155 GETTABLEKS                       R8 R8 K37 ["StandardizedFields"]
      157 LOADNIL                          R9
      158 LOADNIL                          R10
      159 FORGPREP                         R8
      160 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      162 MOVE                             R14 R7
      163 MOVE                             R15 R12
      164 GETIMPORT                        R13 K40 [table.insert]
      166 CALL                             R13 2 0
      167 FORGLOOP                         R8 2 ; [-8]
      169 SETTABLEKS                       R7 R6 K35 ["standardizedFields"]
      171 CALL                             R4 2 0
      172 GETUPVAL                         R4 11
      173 JUMPIFNOT                        R4 ; [+10]
      174 GETUPVAL                         R4 11
      175 LOADK                            R6 K41 ["user_message_sent"]
      176 DUPTABLE                         R7 K42 [{"requestId"}]
      177 GETTABLEKS                       R8 R0 K10 ["messageGuid"]
      179 SETTABLEKS                       R8 R7 K0 ["requestId"]
      181 NAMECALL                         R4 R4 K43 ["LogEventAsync"]
      183 CALL                             R4 3 0
      184 RETURN                           R0 0

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
       67 NEWTABLE                         R5 0 0
       69 GETUPVAL                         R6 6
       70 GETTABLEKS                       R6 R6 K23 ["StandardizedFields"]
       72 LOADNIL                          R7
       73 LOADNIL                          R8
       74 FORGPREP                         R6
       75 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       77 MOVE                             R12 R5
       78 MOVE                             R13 R10
       79 GETIMPORT                        R11 K26 [table.insert]
       81 CALL                             R11 2 0
       82 FORGLOOP                         R6 2 ; [-8]
       84 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
       86 CALL                             R2 2 0
       87 RETURN                           R0 0

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
       23 NEWTABLE                         R5 0 0
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K10 ["StandardizedFields"]
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       33 MOVE                             R12 R5
       34 MOVE                             R13 R10
       35 GETIMPORT                        R11 K13 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R6 2 ; [-8]
       40 SETTABLEKS                       R5 R4 K8 ["standardizedFields"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

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
      100 NEWTABLE                         R6 0 0
      102 GETUPVAL                         R7 8
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
      117 SETTABLEKS                       R6 R5 K25 ["standardizedFields"]
      119 CALL                             R3 2 0
      120 RETURN                           R0 0

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
       89 NEWTABLE                         R5 0 0
       91 GETUPVAL                         R6 8
       92 GETTABLEKS                       R6 R6 K27 ["StandardizedFields"]
       94 LOADNIL                          R7
       95 LOADNIL                          R8
       96 FORGPREP                         R6
       97 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       99 MOVE                             R12 R5
      100 MOVE                             R13 R10
      101 GETIMPORT                        R11 K30 [table.insert]
      103 CALL                             R11 2 0
      104 FORGLOOP                         R6 2 ; [-8]
      106 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      108 CALL                             R2 2 0
      109 GETUPVAL                         R2 9
      110 JUMPIFNOT                        R2 ; [+10]
      111 GETUPVAL                         R2 9
      112 LOADK                            R4 K31 ["thumbs_up"]
      113 DUPTABLE                         R5 K32 [{"requestId"}]
      114 GETTABLEKS                       R6 R0 K18 ["messageGuid"]
      116 SETTABLEKS                       R6 R5 K13 ["requestId"]
      118 NAMECALL                         R2 R2 K33 ["LogEventAsync"]
      120 CALL                             R2 3 0
      121 RETURN                           R0 0

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
       89 NEWTABLE                         R5 0 0
       91 GETUPVAL                         R6 8
       92 GETTABLEKS                       R6 R6 K27 ["StandardizedFields"]
       94 LOADNIL                          R7
       95 LOADNIL                          R8
       96 FORGPREP                         R6
       97 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       99 MOVE                             R12 R5
      100 MOVE                             R13 R10
      101 GETIMPORT                        R11 K30 [table.insert]
      103 CALL                             R11 2 0
      104 FORGLOOP                         R6 2 ; [-8]
      106 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      108 CALL                             R2 2 0
      109 GETUPVAL                         R2 9
      110 JUMPIFNOT                        R2 ; [+10]
      111 GETUPVAL                         R2 9
      112 LOADK                            R4 K31 ["thumbs_down"]
      113 DUPTABLE                         R5 K32 [{"requestId"}]
      114 GETTABLEKS                       R6 R0 K18 ["messageGuid"]
      116 SETTABLEKS                       R6 R5 K13 ["requestId"]
      118 NAMECALL                         R2 R2 K33 ["LogEventAsync"]
      120 CALL                             R2 3 0
      121 RETURN                           R0 0

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
       29 NEWTABLE                         R5 0 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K13 ["StandardizedFields"]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       39 MOVE                             R12 R5
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K16 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-8]
       46 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       48 CALL                             R2 2 0
       49 GETUPVAL                         R2 5
       50 JUMPIFNOT                        R2 ; [+10]
       51 GETUPVAL                         R2 5
       52 LOADK                            R4 K17 ["retry"]
       53 DUPTABLE                         R5 K18 [{"requestId"}]
       54 GETTABLEKS                       R6 R0 K3 ["messageGuid"]
       56 SETTABLEKS                       R6 R5 K0 ["requestId"]
       58 NAMECALL                         R2 R2 K19 ["LogEventAsync"]
       60 CALL                             R2 3 0
       61 RETURN                           R0 0

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
       29 NEWTABLE                         R5 0 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K13 ["StandardizedFields"]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       39 MOVE                             R12 R5
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K16 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-8]
       46 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

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
       83 DUPTABLE                         R2 K30 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId", "experimentGroup", "unifiedActivitySessionId"}]
       84 GETTABLEKS                       R3 R0 K31 ["messageGuid"]
       86 SETTABLEKS                       R3 R2 K22 ["requestId"]
       88 GETTABLEKS                       R3 R0 K32 ["sessionId"]
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
      166 GETTABLEKS                       R3 R0 K29 ["unifiedActivitySessionId"]
      168 SETTABLEKS                       R3 R2 K29 ["unifiedActivitySessionId"]
      170 GETUPVAL                         R3 2
      171 GETTABLEKS                       R3 R3 K33 ["assign"]
      173 MOVE                             R4 R2
      174 DUPTABLE                         R5 K35 [{"timestampMilliseconds"}]
      175 GETUPVAL                         R6 6
      176 GETTABLEKS                       R6 R6 K36 ["getTimestampMilliseconds"]
      178 CALL                             R6 0 1
      179 SETTABLEKS                       R6 R5 K34 ["timestampMilliseconds"]
      181 CALL                             R3 2 1
      182 MOVE                             R1 R3
      183 GETTABLEKS                       R3 R0 K37 ["input"]
      185 JUMPIFNOTEQKNIL                  R3 ; [+3]
      187 LOADNIL                          R2
      188 JUMP                             ; [+11]
      189 NEWCLOSURE                       R5 P0
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          VAL R3
      192 FASTPCALL                        pcall 1 ; [+2]
      193 GETIMPORT                        R4 K39 [pcall]
      195 CALL                             R4 1 2
      196 JUMPIF                           R4 ; [+2]
      197 LOADNIL                          R2
      198 JUMP                             ; [+1]
      199 MOVE                             R2 R5
      200 JUMPIFNOTEQKNIL                  R2 ; [+3]
      202 LOADNIL                          R3
      203 JUMP                             ; [+13]
      204 LENGTH                           R4 R2
      205 LOADN                            R5 500
      206 JUMPIFNOTLE                      R4 R5 ; [+3]
      208 MOVE                             R3 R2
      209 JUMP                             ; [+7]
      210 GETUPVAL                         R4 8
      211 MOVE                             R5 R2
      212 LOADN                            R6 500
      213 CALL                             R4 2 1
      214 MOVE                             R5 R4
      215 LOADK                            R6 K40 ["..."]
      216 CONCAT                           R3 R5 R6
      217 SETTABLEKS                       R3 R1 K41 ["toolUseInput"]
      219 JUMPIFNOT                        R2 ; [+2]
      220 LENGTH                           R3 R2
      221 JUMP                             ; [+1]
      222 LOADNIL                          R3
      223 SETTABLEKS                       R3 R1 K42 ["toolUseInputCharacters"]
      225 GETUPVAL                         R3 0
      226 GETTABLEKS                       R3 R3 K43 ["logEvent"]
      228 GETUPVAL                         R4 9
      229 DUPTABLE                         R5 K45 [{"customFields", "standardizedFields"}]
      230 SETTABLEKS                       R1 R5 K1 ["customFields"]
      232 NEWTABLE                         R6 0 0
      234 GETUPVAL                         R7 10
      235 GETTABLEKS                       R7 R7 K46 ["StandardizedFields"]
      237 LOADNIL                          R8
      238 LOADNIL                          R9
      239 FORGPREP                         R7
      240 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      242 MOVE                             R13 R6
      243 MOVE                             R14 R11
      244 GETIMPORT                        R12 K49 [table.insert]
      246 CALL                             R12 2 0
      247 FORGLOOP                         R7 2 ; [-8]
      249 SETTABLEKS                       R6 R5 K44 ["standardizedFields"]
      251 CALL                             R3 2 0
      252 RETURN                           R0 0

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
       87 DUPTABLE                         R2 K33 [{"requestId", "conversationId", "toolId", "toolName", "toolType", "isStudioTool", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "isSlashCommand", "assistantMode", "currentSubagent", "parentMessageGuid", "parentToolId", "unifiedActivitySessionId"}]
       88 GETTABLEKS                       R3 R0 K34 ["messageGuid"]
       90 SETTABLEKS                       R3 R2 K23 ["requestId"]
       92 GETTABLEKS                       R3 R0 K35 ["sessionId"]
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
      160 GETTABLEKS                       R3 R0 K32 ["unifiedActivitySessionId"]
      162 SETTABLEKS                       R3 R2 K32 ["unifiedActivitySessionId"]
      164 GETUPVAL                         R3 2
      165 GETTABLEKS                       R3 R3 K36 ["assign"]
      167 MOVE                             R4 R2
      168 DUPTABLE                         R5 K38 [{"timestampMilliseconds"}]
      169 GETUPVAL                         R6 6
      170 GETTABLEKS                       R6 R6 K39 ["getTimestampMilliseconds"]
      172 CALL                             R6 0 1
      173 SETTABLEKS                       R6 R5 K37 ["timestampMilliseconds"]
      175 CALL                             R3 2 1
      176 MOVE                             R1 R3
      177 GETUPVAL                         R2 7
      178 GETTABLEKS                       R3 R0 K40 ["toolResultContent"]
      180 CALL                             R2 1 1
      181 GETUPVAL                         R3 8
      182 GETTABLEKS                       R4 R0 K40 ["toolResultContent"]
      184 CALL                             R3 1 1
      185 SETTABLEKS                       R2 R1 K40 ["toolResultContent"]
      187 JUMPIFNOT                        R2 ; [+2]
      188 LENGTH                           R4 R2
      189 JUMP                             ; [+1]
      190 LOADNIL                          R4
      191 SETTABLEKS                       R4 R1 K41 ["toolResultSerializedCharacters"]
      193 GETTABLEKS                       R4 R3 K42 ["toolResultTextContentCount"]
      195 SETTABLEKS                       R4 R1 K42 ["toolResultTextContentCount"]
      197 GETTABLEKS                       R4 R3 K43 ["toolResultImages"]
      199 SETTABLEKS                       R4 R1 K43 ["toolResultImages"]
      201 GETTABLEKS                       R4 R3 K44 ["toolResultContentItemCount"]
      203 SETTABLEKS                       R4 R1 K44 ["toolResultContentItemCount"]
      205 GETUPVAL                         R4 0
      206 GETTABLEKS                       R4 R4 K45 ["logEvent"]
      208 GETUPVAL                         R5 9
      209 DUPTABLE                         R6 K47 [{"customFields", "standardizedFields"}]
      210 SETTABLEKS                       R1 R6 K1 ["customFields"]
      212 NEWTABLE                         R7 0 0
      214 GETUPVAL                         R8 10
      215 GETTABLEKS                       R8 R8 K48 ["StandardizedFields"]
      217 LOADNIL                          R9
      218 LOADNIL                          R10
      219 FORGPREP                         R8
      220 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      222 MOVE                             R14 R7
      223 MOVE                             R15 R12
      224 GETIMPORT                        R13 K51 [table.insert]
      226 CALL                             R13 2 0
      227 FORGLOOP                         R8 2 ; [-8]
      229 SETTABLEKS                       R7 R6 K46 ["standardizedFields"]
      231 CALL                             R4 2 0
      232 RETURN                           R0 0

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
      124 NEWTABLE                         R4 0 0
      126 GETUPVAL                         R5 8
      127 GETTABLEKS                       R5 R5 K33 ["StandardizedFields"]
      129 LOADNIL                          R6
      130 LOADNIL                          R7
      131 FORGPREP                         R5
      132 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      134 MOVE                             R11 R4
      135 MOVE                             R12 R9
      136 GETIMPORT                        R10 K36 [table.insert]
      138 CALL                             R10 2 0
      139 FORGLOOP                         R5 2 ; [-8]
      141 SETTABLEKS                       R4 R3 K19 ["standardizedFields"]
      143 CALL                             R1 2 0
      144 RETURN                           R0 0

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
       37 NEWTABLE                         R5 0 0
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K14 ["StandardizedFields"]
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       47 MOVE                             R12 R5
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K17 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R6 2 ; [-8]
       54 SETTABLEKS                       R5 R4 K12 ["standardizedFields"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

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
       29 NEWTABLE                         R5 0 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K12 ["StandardizedFields"]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       39 MOVE                             R12 R5
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K15 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-8]
       46 SETTABLEKS                       R5 R4 K10 ["standardizedFields"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

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
      142 NEWTABLE                         R5 0 0
      144 GETUPVAL                         R6 10
      145 GETTABLEKS                       R6 R6 K33 ["StandardizedFields"]
      147 LOADNIL                          R7
      148 LOADNIL                          R8
      149 FORGPREP                         R6
      150 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      152 MOVE                             R12 R5
      153 MOVE                             R13 R10
      154 GETIMPORT                        R11 K36 [table.insert]
      156 CALL                             R11 2 0
      157 FORGLOOP                         R6 2 ; [-8]
      159 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      161 CALL                             R2 2 0
      162 RETURN                           R0 0

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
       33 NEWTABLE                         R5 0 0
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K13 ["StandardizedFields"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       43 MOVE                             R12 R5
       44 MOVE                             R13 R10
       45 GETIMPORT                        R11 K16 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-8]
       50 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

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
      146 JUMP                             ; [+11]
      147 NEWCLOSURE                       R6 P0
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          VAL R4
      150 FASTPCALL                        pcall 1 ; [+2]
      151 GETIMPORT                        R5 K25 [pcall]
      153 CALL                             R5 1 2
      154 JUMPIF                           R5 ; [+2]
      155 LOADNIL                          R3
      156 JUMP                             ; [+1]
      157 MOVE                             R3 R6
      158 SETTABLEKS                       R3 R2 K21 ["suggestedParts"]
      160 GETTABLEKS                       R4 R0 K22 ["finalParts"]
      162 JUMPIFNOTEQKNIL                  R4 ; [+3]
      164 LOADNIL                          R3
      165 JUMP                             ; [+11]
      166 NEWCLOSURE                       R6 P0
      167 CAPTURE                          UPVAL U7
      168 CAPTURE                          VAL R4
      169 FASTPCALL                        pcall 1 ; [+2]
      170 GETIMPORT                        R5 K25 [pcall]
      172 CALL                             R5 1 2
      173 JUMPIF                           R5 ; [+2]
      174 LOADNIL                          R3
      175 JUMP                             ; [+1]
      176 MOVE                             R3 R6
      177 SETTABLEKS                       R3 R2 K22 ["finalParts"]
      179 GETUPVAL                         R3 2
      180 GETTABLEKS                       R3 R3 K26 ["assign"]
      182 MOVE                             R4 R2
      183 DUPTABLE                         R5 K28 [{"timestampMilliseconds"}]
      184 GETUPVAL                         R6 8
      185 GETTABLEKS                       R6 R6 K29 ["getTimestampMilliseconds"]
      187 CALL                             R6 0 1
      188 SETTABLEKS                       R6 R5 K27 ["timestampMilliseconds"]
      190 CALL                             R3 2 1
      191 MOVE                             R1 R3
      192 GETUPVAL                         R2 0
      193 GETTABLEKS                       R2 R2 K30 ["logEvent"]
      195 GETUPVAL                         R3 9
      196 DUPTABLE                         R4 K32 [{"customFields", "standardizedFields"}]
      197 SETTABLEKS                       R1 R4 K2 ["customFields"]
      199 NEWTABLE                         R5 0 0
      201 GETUPVAL                         R6 10
      202 GETTABLEKS                       R6 R6 K33 ["StandardizedFields"]
      204 LOADNIL                          R7
      205 LOADNIL                          R8
      206 FORGPREP                         R6
      207 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      209 MOVE                             R12 R5
      210 MOVE                             R13 R10
      211 GETIMPORT                        R11 K36 [table.insert]
      213 CALL                             R11 2 0
      214 FORGLOOP                         R6 2 ; [-8]
      216 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      218 CALL                             R2 2 0
      219 RETURN                           R0 0

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
      153 NEWTABLE                         R5 0 0
      155 GETUPVAL                         R6 9
      156 GETTABLEKS                       R6 R6 K27 ["StandardizedFields"]
      158 LOADNIL                          R7
      159 LOADNIL                          R8
      160 FORGPREP                         R6
      161 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      163 MOVE                             R12 R5
      164 MOVE                             R13 R10
      165 GETIMPORT                        R11 K30 [table.insert]
      167 CALL                             R11 2 0
      168 FORGLOOP                         R6 2 ; [-8]
      170 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      172 CALL                             R2 2 0
      173 RETURN                           R0 0

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
      153 NEWTABLE                         R5 0 0
      155 GETUPVAL                         R6 9
      156 GETTABLEKS                       R6 R6 K27 ["StandardizedFields"]
      158 LOADNIL                          R7
      159 LOADNIL                          R8
      160 FORGPREP                         R6
      161 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      163 MOVE                             R12 R5
      164 MOVE                             R13 R10
      165 GETIMPORT                        R11 K30 [table.insert]
      167 CALL                             R11 2 0
      168 FORGLOOP                         R6 2 ; [-8]
      170 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      172 CALL                             R2 2 0
      173 RETURN                           R0 0

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
      117 JUMP                             ; [+11]
      118 NEWCLOSURE                       R6 P0
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          VAL R4
      121 FASTPCALL                        pcall 1 ; [+2]
      122 GETIMPORT                        R5 K31 [pcall]
      124 CALL                             R5 1 2
      125 JUMPIF                           R5 ; [+2]
      126 LOADNIL                          R3
      127 JUMP                             ; [+1]
      128 MOVE                             R3 R6
      129 SETTABLEKS                       R3 R2 K27 ["suggestedParts"]
      131 GETTABLEKS                       R4 R0 K28 ["finalParts"]
      133 JUMPIFNOTEQKNIL                  R4 ; [+3]
      135 LOADNIL                          R3
      136 JUMP                             ; [+11]
      137 NEWCLOSURE                       R6 P0
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          VAL R4
      140 FASTPCALL                        pcall 1 ; [+2]
      141 GETIMPORT                        R5 K31 [pcall]
      143 CALL                             R5 1 2
      144 JUMPIF                           R5 ; [+2]
      145 LOADNIL                          R3
      146 JUMP                             ; [+1]
      147 MOVE                             R3 R6
      148 SETTABLEKS                       R3 R2 K28 ["finalParts"]
      150 GETUPVAL                         R3 2
      151 GETTABLEKS                       R3 R3 K32 ["assign"]
      153 MOVE                             R4 R2
      154 DUPTABLE                         R5 K34 [{"timestampMilliseconds"}]
      155 GETUPVAL                         R6 7
      156 GETTABLEKS                       R6 R6 K35 ["getTimestampMilliseconds"]
      158 CALL                             R6 0 1
      159 SETTABLEKS                       R6 R5 K33 ["timestampMilliseconds"]
      161 CALL                             R3 2 1
      162 MOVE                             R1 R3
      163 GETUPVAL                         R2 0
      164 GETTABLEKS                       R2 R2 K36 ["logEvent"]
      166 GETUPVAL                         R3 8
      167 DUPTABLE                         R4 K38 [{"customFields", "standardizedFields"}]
      168 SETTABLEKS                       R1 R4 K1 ["customFields"]
      170 NEWTABLE                         R5 0 0
      172 GETUPVAL                         R6 9
      173 GETTABLEKS                       R6 R6 K39 ["StandardizedFields"]
      175 LOADNIL                          R7
      176 LOADNIL                          R8
      177 FORGPREP                         R6
      178 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      180 MOVE                             R12 R5
      181 MOVE                             R13 R10
      182 GETIMPORT                        R11 K42 [table.insert]
      184 CALL                             R11 2 0
      185 FORGLOOP                         R6 2 ; [-8]
      187 SETTABLEKS                       R5 R4 K37 ["standardizedFields"]
      189 CALL                             R2 2 0
      190 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R3 K2 [{"clientJobId", "assetHash"}]
        1 SETTABLEKS                       R0 R3 K0 ["clientJobId"]
        3 SETTABLEKS                       R1 R3 K1 ["assetHash"]
        5 JUMPIFEQKNIL                     R2 ; [+21]
        7 GETTABLEKS                       R4 R2 K3 ["Body"]
        9 SETTABLEKS                       R4 R3 K4 ["bodyCount"]
       11 GETTABLEKS                       R4 R2 K5 ["Layered"]
       13 SETTABLEKS                       R4 R3 K6 ["layeredCount"]
       15 GETTABLEKS                       R4 R2 K7 ["EyeLayered"]
       17 SETTABLEKS                       R4 R3 K8 ["eyeLayeredCount"]
       19 GETTABLEKS                       R4 R2 K9 ["Rigid"]
       21 SETTABLEKS                       R4 R3 K10 ["rigidCount"]
       23 GETTABLEKS                       R4 R2 K11 ["Avatar"]
       25 SETTABLEKS                       R4 R3 K12 ["avatarCount"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K13 ["logEvent"]
       30 GETUPVAL                         R5 1
       31 DUPTABLE                         R6 K16 [{"customFields", "standardizedFields"}]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K17 ["assign"]
       35 MOVE                             R8 R3
       36 DUPTABLE                         R9 K19 [{"timestampMilliseconds"}]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K20 ["getTimestampMilliseconds"]
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K18 ["timestampMilliseconds"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K14 ["customFields"]
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
       63 SETTABLEKS                       R7 R6 K15 ["standardizedFields"]
       65 CALL                             R4 2 0
       66 RETURN                           R0 0

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
       27 GETTABLEKS                       R3 R0 K3 ["SetupType"]
       29 JUMPIFNOTEQKS                    R3 K13 ["Development"] ; [+5]
       31 GETTABLEKS                       R3 R0 K14 ["DecimationOptions"]
       33 SETTABLEKS                       R3 R2 K15 ["decimationOptions"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K16 ["logEvent"]
       38 GETUPVAL                         R4 1
       39 DUPTABLE                         R5 K19 [{"customFields", "standardizedFields"}]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K20 ["assign"]
       43 MOVE                             R7 R2
       44 DUPTABLE                         R8 K22 [{"timestampMilliseconds"}]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K23 ["getTimestampMilliseconds"]
       48 CALL                             R9 0 1
       49 SETTABLEKS                       R9 R8 K21 ["timestampMilliseconds"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K17 ["customFields"]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K24 ["StandardizedFields"]
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 FORGPREP                         R7
       62 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       64 MOVE                             R13 R6
       65 MOVE                             R14 R11
       66 GETIMPORT                        R12 K27 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R7 2 ; [-8]
       71 SETTABLEKS                       R6 R5 K18 ["standardizedFields"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

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
       25 NEWTABLE                         R5 0 0
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K11 ["StandardizedFields"]
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       35 MOVE                             R12 R5
       36 MOVE                             R13 R10
       37 GETIMPORT                        R11 K14 [table.insert]
       39 CALL                             R11 2 0
       40 FORGLOOP                         R6 2 ; [-8]
       42 SETTABLEKS                       R5 R4 K2 ["standardizedFields"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

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
       27 NEWTABLE                         R6 0 0
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K12 ["StandardizedFields"]
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       37 MOVE                             R13 R6
       38 MOVE                             R14 R11
       39 GETIMPORT                        R12 K15 [table.insert]
       41 CALL                             R12 2 0
       42 FORGLOOP                         R7 2 ; [-8]
       44 SETTABLEKS                       R6 R5 K2 ["standardizedFields"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       50 GETUPVAL                         R4 5
       51 LOADN                            R5 1
       52 DUPTABLE                         R6 K17 [{"customFields"}]
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K18 ["join"]
       58 MOVE                             R10 R8
       59 DUPTABLE                         R11 K21 [{"experimentationGroup", "featureTag"}]
       60 GETUPVAL                         R13 6
       61 NAMECALL                         R13 R13 K22 ["get"]
       63 CALL                             R13 1 1
       64 JUMPIFNOTEQKNIL                  R13 ; [+3]
       66 LOADNIL                          R12
       67 JUMP                             ; [+16]
       68 GETUPVAL                         R15 7
       69 GETTABLE                         R14 R13 R15
       70 JUMPIFNOTEQKNIL                  R14 ; [+3]
       72 GETTABLEKS                       R14 R13 K23 ["generatedExperimentVariantDistributionVariable"]
       74 JUMPIFNOTEQKNIL                  R14 ; [+3]
       76 LOADNIL                          R12
       77 JUMP                             ; [+6]
       78 FASTCALL1                        TOSTRING R14 ; [+3]
       79 MOVE                             R16 R14
       80 GETIMPORT                        R15 K25 [tostring]
       82 CALL                             R15 1 1
       83 MOVE                             R12 R15
       84 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       86 GETUPVAL                         R13 8
       87 CALL                             R13 0 1
       88 JUMPIFNOT                        R13 ; [+2]
       89 LOADK                            R12 K26 ["Remote"]
       90 JUMP                             ; [+1]
       91 LOADK                            R12 K27 ["Local"]
       92 SETTABLEKS                       R12 R11 K20 ["featureTag"]
       94 CALL                             R9 2 1
       95 MOVE                             R7 R9
       96 SETTABLEKS                       R7 R6 K1 ["customFields"]
       98 CALL                             R3 3 0
       99 RETURN                           R0 0

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
       27 NEWTABLE                         R6 0 0
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K12 ["StandardizedFields"]
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       37 MOVE                             R13 R6
       38 MOVE                             R14 R11
       39 GETIMPORT                        R12 K15 [table.insert]
       41 CALL                             R12 2 0
       42 FORGLOOP                         R7 2 ; [-8]
       44 SETTABLEKS                       R6 R5 K2 ["standardizedFields"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       50 GETUPVAL                         R4 5
       51 LOADN                            R5 1
       52 DUPTABLE                         R6 K17 [{"customFields"}]
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K18 ["join"]
       58 MOVE                             R10 R8
       59 DUPTABLE                         R11 K21 [{"experimentationGroup", "featureTag"}]
       60 GETUPVAL                         R13 6
       61 NAMECALL                         R13 R13 K22 ["get"]
       63 CALL                             R13 1 1
       64 JUMPIFNOTEQKNIL                  R13 ; [+3]
       66 LOADNIL                          R12
       67 JUMP                             ; [+16]
       68 GETUPVAL                         R15 7
       69 GETTABLE                         R14 R13 R15
       70 JUMPIFNOTEQKNIL                  R14 ; [+3]
       72 GETTABLEKS                       R14 R13 K23 ["generatedExperimentVariantDistributionVariable"]
       74 JUMPIFNOTEQKNIL                  R14 ; [+3]
       76 LOADNIL                          R12
       77 JUMP                             ; [+6]
       78 FASTCALL1                        TOSTRING R14 ; [+3]
       79 MOVE                             R16 R14
       80 GETIMPORT                        R15 K25 [tostring]
       82 CALL                             R15 1 1
       83 MOVE                             R12 R15
       84 SETTABLEKS                       R12 R11 K19 ["experimentationGroup"]
       86 GETUPVAL                         R13 8
       87 CALL                             R13 0 1
       88 JUMPIFNOT                        R13 ; [+2]
       89 LOADK                            R12 K26 ["Remote"]
       90 JUMP                             ; [+1]
       91 LOADK                            R12 K27 ["Local"]
       92 SETTABLEKS                       R12 R11 K20 ["featureTag"]
       94 CALL                             R9 2 1
       95 MOVE                             R7 R9
       96 SETTABLEKS                       R7 R6 K1 ["customFields"]
       98 CALL                             R3 3 0
       99 RETURN                           R0 0

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
       42 NEWTABLE                         R4 0 0
       44 GETUPVAL                         R5 5
       45 GETTABLEKS                       R5 R5 K14 ["StandardizedFields"]
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       52 MOVE                             R11 R4
       53 MOVE                             R12 R9
       54 GETIMPORT                        R10 K17 [table.insert]
       56 CALL                             R10 2 0
       57 FORGLOOP                         R5 2 ; [-8]
       59 SETTABLEKS                       R4 R3 K3 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

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
       24 JUMP                             ; [+11]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R7
       28 FASTPCALL                        pcall 1 ; [+2]
       29 GETIMPORT                        R8 K12 [pcall]
       31 CALL                             R8 1 2
       32 JUMPIF                           R8 ; [+2]
       33 LOADNIL                          R6
       34 JUMP                             ; [+1]
       35 MOVE                             R6 R9
       36 SETTABLEKS                       R6 R5 K7 ["optionIds"]
       38 GETTABLEKS                       R6 R0 K8 ["inputGenerationId"]
       40 SETTABLEKS                       R6 R5 K8 ["inputGenerationId"]
       42 GETTABLEKS                       R6 R0 K9 ["modelFlow"]
       44 SETTABLEKS                       R6 R5 K9 ["modelFlow"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K13 ["assign"]
       49 MOVE                             R7 R5
       50 DUPTABLE                         R8 K15 [{"timestampMilliseconds"}]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K16 ["getTimestampMilliseconds"]
       54 CALL                             R9 0 1
       55 SETTABLEKS                       R9 R8 K14 ["timestampMilliseconds"]
       57 CALL                             R6 2 1
       58 MOVE                             R4 R6
       59 SETTABLEKS                       R4 R3 K2 ["customFields"]
       61 NEWTABLE                         R4 0 0
       63 GETUPVAL                         R5 6
       64 GETTABLEKS                       R5 R5 K17 ["StandardizedFields"]
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       71 MOVE                             R11 R4
       72 MOVE                             R12 R9
       73 GETIMPORT                        R10 K20 [table.insert]
       75 CALL                             R10 2 0
       76 FORGLOOP                         R5 2 ; [-8]
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
      105 NEWTABLE                         R4 0 0
      107 GETUPVAL                         R5 9
      108 GETTABLEKS                       R5 R5 K28 ["StandardizedFields"]
      110 LOADNIL                          R6
      111 LOADNIL                          R7
      112 FORGPREP                         R5
      113 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      115 MOVE                             R11 R4
      116 MOVE                             R12 R9
      117 GETIMPORT                        R10 K31 [table.insert]
      119 CALL                             R10 2 0
      120 FORGLOOP                         R5 2 ; [-8]
      122 SETTABLEKS                       R4 R3 K18 ["standardizedFields"]
      124 CALL                             R1 2 0
      125 RETURN                           R0 0

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
       89 NEWTABLE                         R4 0 0
       91 GETUPVAL                         R5 9
       92 GETTABLEKS                       R5 R5 K25 ["StandardizedFields"]
       94 LOADNIL                          R6
       95 LOADNIL                          R7
       96 FORGPREP                         R5
       97 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       99 MOVE                             R11 R4
      100 MOVE                             R12 R9
      101 GETIMPORT                        R10 K28 [table.insert]
      103 CALL                             R10 2 0
      104 FORGLOOP                         R5 2 ; [-8]
      106 SETTABLEKS                       R4 R3 K17 ["standardizedFields"]
      108 CALL                             R1 2 0
      109 RETURN                           R0 0

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
      144 NEWTABLE                         R4 0 0
      146 GETUPVAL                         R5 8
      147 GETTABLEKS                       R5 R5 K36 ["StandardizedFields"]
      149 LOADNIL                          R6
      150 LOADNIL                          R7
      151 FORGPREP                         R5
      152 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      154 MOVE                             R11 R4
      155 MOVE                             R12 R9
      156 GETIMPORT                        R10 K39 [table.insert]
      158 CALL                             R10 2 0
      159 FORGLOOP                         R5 2 ; [-8]
      161 SETTABLEKS                       R4 R3 K19 ["standardizedFields"]
      163 CALL                             R1 2 0
      164 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K6 [{"success", "failureReason", "requestSource"}]
        7 GETTABLEKS                       R7 R0 K3 ["success"]
        9 SETTABLEKS                       R7 R6 K3 ["success"]
       11 GETTABLEKS                       R7 R0 K4 ["failureReason"]
       13 SETTABLEKS                       R7 R6 K4 ["failureReason"]
       15 GETTABLEKS                       R7 R0 K5 ["requestSource"]
       17 SETTABLEKS                       R7 R6 K5 ["requestSource"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K7 ["join"]
       22 MOVE                             R8 R6
       23 DUPTABLE                         R9 K10 [{"experimentationGroup", "featureTag"}]
       24 GETUPVAL                         R11 3
       25 NAMECALL                         R11 R11 K11 ["get"]
       27 CALL                             R11 1 1
       28 JUMPIFNOTEQKNIL                  R11 ; [+3]
       30 LOADNIL                          R10
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R13 4
       33 GETTABLE                         R12 R11 R13
       34 JUMPIFNOTEQKNIL                  R12 ; [+3]
       36 GETTABLEKS                       R12 R11 K12 ["generatedExperimentVariantDistributionVariable"]
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 LOADNIL                          R10
       41 JUMP                             ; [+6]
       42 FASTCALL1                        TOSTRING R12 ; [+3]
       43 MOVE                             R14 R12
       44 GETIMPORT                        R13 K14 [tostring]
       46 CALL                             R13 1 1
       47 MOVE                             R10 R13
       48 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       50 GETUPVAL                         R11 5
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+2]
       53 LOADK                            R10 K15 ["Remote"]
       54 JUMP                             ; [+1]
       55 LOADK                            R10 K16 ["Local"]
       56 SETTABLEKS                       R10 R9 K9 ["featureTag"]
       58 CALL                             R7 2 1
       59 MOVE                             R5 R7
       60 SETTABLEKS                       R5 R4 K1 ["customFields"]
       62 CALL                             R1 3 0
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K17 ["logEvent"]
       66 GETUPVAL                         R2 6
       67 DUPTABLE                         R3 K19 [{"customFields", "standardizedFields"}]
       68 DUPTABLE                         R5 K24 [{"requestId", "jobId", "requestSource", "success", "errorMessage", "failureReason", "durationMilliseconds"}]
       69 GETTABLEKS                       R6 R0 K20 ["requestId"]
       71 SETTABLEKS                       R6 R5 K20 ["requestId"]
       73 GETTABLEKS                       R6 R0 K21 ["jobId"]
       75 SETTABLEKS                       R6 R5 K21 ["jobId"]
       77 GETTABLEKS                       R6 R0 K5 ["requestSource"]
       79 SETTABLEKS                       R6 R5 K5 ["requestSource"]
       81 GETTABLEKS                       R6 R0 K3 ["success"]
       83 SETTABLEKS                       R6 R5 K3 ["success"]
       85 GETTABLEKS                       R7 R0 K22 ["errorMessage"]
       87 JUMPIFNOTEQKNIL                  R7 ; [+3]
       89 LOADNIL                          R6
       90 JUMP                             ; [+13]
       91 LENGTH                           R8 R7
       92 LOADN                            R9 500
       93 JUMPIFNOTLE                      R8 R9 ; [+3]
       95 MOVE                             R6 R7
       96 JUMP                             ; [+7]
       97 GETUPVAL                         R8 7
       98 MOVE                             R9 R7
       99 LOADN                            R10 500
      100 CALL                             R8 2 1
      101 MOVE                             R9 R8
      102 LOADK                            R10 K25 ["..."]
      103 CONCAT                           R6 R9 R10
      104 SETTABLEKS                       R6 R5 K22 ["errorMessage"]
      106 GETTABLEKS                       R6 R0 K4 ["failureReason"]
      108 SETTABLEKS                       R6 R5 K4 ["failureReason"]
      110 GETTABLEKS                       R6 R0 K23 ["durationMilliseconds"]
      112 SETTABLEKS                       R6 R5 K23 ["durationMilliseconds"]
      114 GETUPVAL                         R6 2
      115 GETTABLEKS                       R6 R6 K26 ["assign"]
      117 MOVE                             R7 R5
      118 DUPTABLE                         R8 K28 [{"timestampMilliseconds"}]
      119 GETUPVAL                         R9 8
      120 GETTABLEKS                       R9 R9 K29 ["getTimestampMilliseconds"]
      122 CALL                             R9 0 1
      123 SETTABLEKS                       R9 R8 K27 ["timestampMilliseconds"]
      125 CALL                             R6 2 1
      126 MOVE                             R4 R6
      127 SETTABLEKS                       R4 R3 K1 ["customFields"]
      129 NEWTABLE                         R4 0 0
      131 GETUPVAL                         R5 9
      132 GETTABLEKS                       R5 R5 K30 ["StandardizedFields"]
      134 LOADNIL                          R6
      135 LOADNIL                          R7
      136 FORGPREP                         R5
      137 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      139 MOVE                             R11 R4
      140 MOVE                             R12 R9
      141 GETIMPORT                        R10 K33 [table.insert]
      143 CALL                             R10 2 0
      144 FORGLOOP                         R5 2 ; [-8]
      146 SETTABLEKS                       R4 R3 K18 ["standardizedFields"]
      148 CALL                             R1 2 0
      149 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K7 [{"generationMode", "entryPoint", "success", "failureReason"}]
        7 GETTABLEKS                       R7 R0 K3 ["generationMode"]
        9 SETTABLEKS                       R7 R6 K3 ["generationMode"]
       11 GETTABLEKS                       R7 R0 K4 ["entryPoint"]
       13 SETTABLEKS                       R7 R6 K4 ["entryPoint"]
       15 GETTABLEKS                       R7 R0 K5 ["success"]
       17 SETTABLEKS                       R7 R6 K5 ["success"]
       19 GETTABLEKS                       R7 R0 K6 ["failureReason"]
       21 SETTABLEKS                       R7 R6 K6 ["failureReason"]
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
       72 DUPTABLE                         R5 K40 [{"requestId", "generationId", "jobId", "conversationId", "generationMode", "entryPoint", "success", "failureReason", "errorMessage", "durationMilliseconds", "prompt", "inputAssetId", "requestedDuration", "clipDuration", "editSessionId", "parentGenerationId", "rigType", "rigInserted", "editedPoseCount", "usedBackend", "publishedAssetId", "publishError", "clipGuid"}]
       73 GETTABLEKS                       R6 R0 K21 ["requestId"]
       75 SETTABLEKS                       R6 R5 K21 ["requestId"]
       77 GETTABLEKS                       R6 R0 K22 ["generationId"]
       79 SETTABLEKS                       R6 R5 K22 ["generationId"]
       81 GETTABLEKS                       R6 R0 K23 ["jobId"]
       83 SETTABLEKS                       R6 R5 K23 ["jobId"]
       85 GETTABLEKS                       R6 R0 K24 ["conversationId"]
       87 SETTABLEKS                       R6 R5 K24 ["conversationId"]
       89 GETTABLEKS                       R6 R0 K3 ["generationMode"]
       91 SETTABLEKS                       R6 R5 K3 ["generationMode"]
       93 GETTABLEKS                       R6 R0 K4 ["entryPoint"]
       95 SETTABLEKS                       R6 R5 K4 ["entryPoint"]
       97 GETTABLEKS                       R6 R0 K5 ["success"]
       99 SETTABLEKS                       R6 R5 K5 ["success"]
      101 GETTABLEKS                       R6 R0 K6 ["failureReason"]
      103 SETTABLEKS                       R6 R5 K6 ["failureReason"]
      105 GETTABLEKS                       R7 R0 K25 ["errorMessage"]
      107 JUMPIFNOTEQKNIL                  R7 ; [+3]
      109 LOADNIL                          R6
      110 JUMP                             ; [+13]
      111 LENGTH                           R8 R7
      112 LOADN                            R9 500
      113 JUMPIFNOTLE                      R8 R9 ; [+3]
      115 MOVE                             R6 R7
      116 JUMP                             ; [+7]
      117 GETUPVAL                         R8 7
      118 MOVE                             R9 R7
      119 LOADN                            R10 500
      120 CALL                             R8 2 1
      121 MOVE                             R9 R8
      122 LOADK                            R10 K41 ["..."]
      123 CONCAT                           R6 R9 R10
      124 SETTABLEKS                       R6 R5 K25 ["errorMessage"]
      126 GETTABLEKS                       R6 R0 K26 ["durationMilliseconds"]
      128 SETTABLEKS                       R6 R5 K26 ["durationMilliseconds"]
      130 GETTABLEKS                       R7 R0 K27 ["prompt"]
      132 JUMPIFNOTEQKNIL                  R7 ; [+3]
      134 LOADNIL                          R6
      135 JUMP                             ; [+13]
      136 LENGTH                           R8 R7
      137 LOADN                            R9 500
      138 JUMPIFNOTLE                      R8 R9 ; [+3]
      140 MOVE                             R6 R7
      141 JUMP                             ; [+7]
      142 GETUPVAL                         R8 7
      143 MOVE                             R9 R7
      144 LOADN                            R10 500
      145 CALL                             R8 2 1
      146 MOVE                             R9 R8
      147 LOADK                            R10 K41 ["..."]
      148 CONCAT                           R6 R9 R10
      149 SETTABLEKS                       R6 R5 K27 ["prompt"]
      151 GETTABLEKS                       R6 R0 K28 ["inputAssetId"]
      153 SETTABLEKS                       R6 R5 K28 ["inputAssetId"]
      155 GETTABLEKS                       R6 R0 K29 ["requestedDuration"]
      157 SETTABLEKS                       R6 R5 K29 ["requestedDuration"]
      159 GETTABLEKS                       R6 R0 K30 ["clipDuration"]
      161 SETTABLEKS                       R6 R5 K30 ["clipDuration"]
      163 GETTABLEKS                       R6 R0 K31 ["editSessionId"]
      165 SETTABLEKS                       R6 R5 K31 ["editSessionId"]
      167 GETTABLEKS                       R6 R0 K32 ["parentGenerationId"]
      169 SETTABLEKS                       R6 R5 K32 ["parentGenerationId"]
      171 GETTABLEKS                       R6 R0 K33 ["rigType"]
      173 SETTABLEKS                       R6 R5 K33 ["rigType"]
      175 GETTABLEKS                       R6 R0 K34 ["rigInserted"]
      177 SETTABLEKS                       R6 R5 K34 ["rigInserted"]
      179 GETTABLEKS                       R6 R0 K35 ["editedPoseCount"]
      181 SETTABLEKS                       R6 R5 K35 ["editedPoseCount"]
      183 GETTABLEKS                       R6 R0 K36 ["usedBackend"]
      185 SETTABLEKS                       R6 R5 K36 ["usedBackend"]
      187 GETTABLEKS                       R6 R0 K37 ["publishedAssetId"]
      189 SETTABLEKS                       R6 R5 K37 ["publishedAssetId"]
      191 GETTABLEKS                       R7 R0 K38 ["publishError"]
      193 JUMPIFNOTEQKNIL                  R7 ; [+3]
      195 LOADNIL                          R6
      196 JUMP                             ; [+13]
      197 LENGTH                           R8 R7
      198 LOADN                            R9 500
      199 JUMPIFNOTLE                      R8 R9 ; [+3]
      201 MOVE                             R6 R7
      202 JUMP                             ; [+7]
      203 GETUPVAL                         R8 7
      204 MOVE                             R9 R7
      205 LOADN                            R10 500
      206 CALL                             R8 2 1
      207 MOVE                             R9 R8
      208 LOADK                            R10 K41 ["..."]
      209 CONCAT                           R6 R9 R10
      210 SETTABLEKS                       R6 R5 K38 ["publishError"]
      212 GETTABLEKS                       R6 R0 K39 ["clipGuid"]
      214 SETTABLEKS                       R6 R5 K39 ["clipGuid"]
      216 GETUPVAL                         R6 2
      217 GETTABLEKS                       R6 R6 K42 ["assign"]
      219 MOVE                             R7 R5
      220 DUPTABLE                         R8 K44 [{"timestampMilliseconds"}]
      221 GETUPVAL                         R9 8
      222 GETTABLEKS                       R9 R9 K45 ["getTimestampMilliseconds"]
      224 CALL                             R9 0 1
      225 SETTABLEKS                       R9 R8 K43 ["timestampMilliseconds"]
      227 CALL                             R6 2 1
      228 MOVE                             R4 R6
      229 SETTABLEKS                       R4 R3 K1 ["customFields"]
      231 NEWTABLE                         R4 0 0
      233 GETUPVAL                         R5 9
      234 GETTABLEKS                       R5 R5 K46 ["StandardizedFields"]
      236 LOADNIL                          R6
      237 LOADNIL                          R7
      238 FORGPREP                         R5
      239 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      241 MOVE                             R11 R4
      242 MOVE                             R12 R9
      243 GETIMPORT                        R10 K49 [table.insert]
      245 CALL                             R10 2 0
      246 FORGLOOP                         R5 2 ; [-8]
      248 SETTABLEKS                       R4 R3 K19 ["standardizedFields"]
      250 CALL                             R1 2 0
      251 RETURN                           R0 0

PROTO_58:
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
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K8 ["StandardizedFields"]
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       29 MOVE                             R11 R4
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K11 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 ; [-8]
       36 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"action"}]
        7 GETTABLEKS                       R7 R0 K3 ["action"]
        9 SETTABLEKS                       R7 R6 K3 ["action"]
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
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K15 ["logEvent"]
       58 GETUPVAL                         R2 6
       59 DUPTABLE                         R3 K17 [{"customFields", "standardizedFields"}]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K18 ["assign"]
       63 MOVE                             R5 R0
       64 DUPTABLE                         R6 K20 [{"timestampMilliseconds"}]
       65 GETUPVAL                         R7 7
       66 GETTABLEKS                       R7 R7 K21 ["getTimestampMilliseconds"]
       68 CALL                             R7 0 1
       69 SETTABLEKS                       R7 R6 K19 ["timestampMilliseconds"]
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R3 K1 ["customFields"]
       74 NEWTABLE                         R4 0 0
       76 GETUPVAL                         R5 8
       77 GETTABLEKS                       R5 R5 K22 ["StandardizedFields"]
       79 LOADNIL                          R6
       80 LOADNIL                          R7
       81 FORGPREP                         R5
       82 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       84 MOVE                             R11 R4
       85 MOVE                             R12 R9
       86 GETIMPORT                        R10 K25 [table.insert]
       88 CALL                             R10 2 0
       89 FORGLOOP                         R5 2 ; [-8]
       91 SETTABLEKS                       R4 R3 K16 ["standardizedFields"]
       93 CALL                             R1 2 0
       94 RETURN                           R0 0

PROTO_60:
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
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K8 ["StandardizedFields"]
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       29 MOVE                             R11 R4
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K11 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 ; [-8]
       36 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_61:
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
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K8 ["StandardizedFields"]
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       29 MOVE                             R11 R4
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K11 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 ; [-8]
       36 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       38 CALL                             R1 2 0
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K12 ["logCounter"]
       42 GETUPVAL                         R2 5
       43 LOADN                            R3 1
       44 DUPTABLE                         R4 K13 [{"customFields"}]
       45 NEWTABLE                         R6 0 0
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K14 ["join"]
       50 MOVE                             R8 R6
       51 DUPTABLE                         R9 K17 [{"experimentationGroup", "featureTag"}]
       52 GETUPVAL                         R11 6
       53 NAMECALL                         R11 R11 K18 ["get"]
       55 CALL                             R11 1 1
       56 JUMPIFNOTEQKNIL                  R11 ; [+3]
       58 LOADNIL                          R10
       59 JUMP                             ; [+16]
       60 GETUPVAL                         R13 7
       61 GETTABLE                         R12 R11 R13
       62 JUMPIFNOTEQKNIL                  R12 ; [+3]
       64 GETTABLEKS                       R12 R11 K19 ["generatedExperimentVariantDistributionVariable"]
       66 JUMPIFNOTEQKNIL                  R12 ; [+3]
       68 LOADNIL                          R10
       69 JUMP                             ; [+6]
       70 FASTCALL1                        TOSTRING R12 ; [+3]
       71 MOVE                             R14 R12
       72 GETIMPORT                        R13 K21 [tostring]
       74 CALL                             R13 1 1
       75 MOVE                             R10 R13
       76 SETTABLEKS                       R10 R9 K15 ["experimentationGroup"]
       78 GETUPVAL                         R11 8
       79 CALL                             R11 0 1
       80 JUMPIFNOT                        R11 ; [+2]
       81 LOADK                            R10 K22 ["Remote"]
       82 JUMP                             ; [+1]
       83 LOADK                            R10 K23 ["Local"]
       84 SETTABLEKS                       R10 R9 K16 ["featureTag"]
       86 CALL                             R7 2 1
       87 MOVE                             R5 R7
       88 SETTABLEKS                       R5 R4 K1 ["customFields"]
       90 CALL                             R1 3 0
       91 RETURN                           R0 0

PROTO_62:
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
       46 NEWTABLE                         R4 0 0
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K12 ["StandardizedFields"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       56 MOVE                             R11 R4
       57 MOVE                             R12 R9
       58 GETIMPORT                        R10 K15 [table.insert]
       60 CALL                             R10 2 0
       61 FORGLOOP                         R5 2 ; [-8]
       63 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       65 CALL                             R1 2 0
       66 GETUPVAL                         R1 0
       67 GETTABLEKS                       R1 R1 K16 ["logCounter"]
       69 GETUPVAL                         R2 6
       70 LOADN                            R3 1
       71 DUPTABLE                         R4 K17 [{"customFields"}]
       72 DUPTABLE                         R6 K18 [{"outcome"}]
       73 GETTABLEKS                       R7 R0 K4 ["outcome"]
       75 SETTABLEKS                       R7 R6 K4 ["outcome"]
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R7 R7 K19 ["join"]
       80 MOVE                             R8 R6
       81 DUPTABLE                         R9 K22 [{"experimentationGroup", "featureTag"}]
       82 GETUPVAL                         R11 7
       83 NAMECALL                         R11 R11 K23 ["get"]
       85 CALL                             R11 1 1
       86 JUMPIFNOTEQKNIL                  R11 ; [+3]
       88 LOADNIL                          R10
       89 JUMP                             ; [+16]
       90 GETUPVAL                         R13 8
       91 GETTABLE                         R12 R11 R13
       92 JUMPIFNOTEQKNIL                  R12 ; [+3]
       94 GETTABLEKS                       R12 R11 K24 ["generatedExperimentVariantDistributionVariable"]
       96 JUMPIFNOTEQKNIL                  R12 ; [+3]
       98 LOADNIL                          R10
       99 JUMP                             ; [+6]
      100 FASTCALL1                        TOSTRING R12 ; [+3]
      101 MOVE                             R14 R12
      102 GETIMPORT                        R13 K26 [tostring]
      104 CALL                             R13 1 1
      105 MOVE                             R10 R13
      106 SETTABLEKS                       R10 R9 K20 ["experimentationGroup"]
      108 GETUPVAL                         R11 9
      109 CALL                             R11 0 1
      110 JUMPIFNOT                        R11 ; [+2]
      111 LOADK                            R10 K27 ["Remote"]
      112 JUMP                             ; [+1]
      113 LOADK                            R10 K28 ["Local"]
      114 SETTABLEKS                       R10 R9 K21 ["featureTag"]
      116 CALL                             R7 2 1
      117 MOVE                             R5 R7
      118 SETTABLEKS                       R5 R4 K1 ["customFields"]
      120 CALL                             R1 3 0
      121 RETURN                           R0 0

PROTO_63:
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
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K11 ["StandardizedFields"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       39 MOVE                             R11 R4
       40 MOVE                             R12 R9
       41 GETIMPORT                        R10 K14 [table.insert]
       43 CALL                             R10 2 0
       44 FORGLOOP                         R5 2 ; [-8]
       46 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K15 ["logCounter"]
       52 GETUPVAL                         R2 5
       53 LOADN                            R3 1
       54 DUPTABLE                         R4 K16 [{"customFields"}]
       55 DUPTABLE                         R6 K17 [{"sendTokenEnabled"}]
       56 GETTABLEKS                       R8 R0 K4 ["sendTokenEnabled"]
       58 FASTCALL1                        TOSTRING R8 ; [+2]
       59 GETIMPORT                        R7 K19 [tostring]
       61 CALL                             R7 1 1
       62 SETTABLEKS                       R7 R6 K4 ["sendTokenEnabled"]
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K20 ["join"]
       67 MOVE                             R8 R6
       68 DUPTABLE                         R9 K23 [{"experimentationGroup", "featureTag"}]
       69 GETUPVAL                         R11 6
       70 NAMECALL                         R11 R11 K24 ["get"]
       72 CALL                             R11 1 1
       73 JUMPIFNOTEQKNIL                  R11 ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R13 7
       78 GETTABLE                         R12 R11 R13
       79 JUMPIFNOTEQKNIL                  R12 ; [+3]
       81 GETTABLEKS                       R12 R11 K25 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R12 ; [+3]
       85 LOADNIL                          R10
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R12 ; [+3]
       88 MOVE                             R14 R12
       89 GETIMPORT                        R13 K19 [tostring]
       91 CALL                             R13 1 1
       92 MOVE                             R10 R13
       93 SETTABLEKS                       R10 R9 K21 ["experimentationGroup"]
       95 GETUPVAL                         R11 8
       96 CALL                             R11 0 1
       97 JUMPIFNOT                        R11 ; [+2]
       98 LOADK                            R10 K26 ["Remote"]
       99 JUMP                             ; [+1]
      100 LOADK                            R10 K27 ["Local"]
      101 SETTABLEKS                       R10 R9 K22 ["featureTag"]
      103 CALL                             R7 2 1
      104 MOVE                             R5 R7
      105 SETTABLEKS                       R5 R4 K1 ["customFields"]
      107 CALL                             R1 3 0
      108 RETURN                           R0 0

PROTO_64:
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
      116 NEWTABLE                         R5 0 0
      118 GETUPVAL                         R6 8
      119 GETTABLEKS                       R6 R6 K34 ["StandardizedFields"]
      121 LOADNIL                          R7
      122 LOADNIL                          R8
      123 FORGPREP                         R6
      124 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      126 MOVE                             R12 R5
      127 MOVE                             R13 R10
      128 GETIMPORT                        R11 K37 [table.insert]
      130 CALL                             R11 2 0
      131 FORGLOOP                         R6 2 ; [-8]
      133 SETTABLEKS                       R5 R4 K32 ["standardizedFields"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

PROTO_65:
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
      112 NEWTABLE                         R5 0 0
      114 GETUPVAL                         R6 8
      115 GETTABLEKS                       R6 R6 K33 ["StandardizedFields"]
      117 LOADNIL                          R7
      118 LOADNIL                          R8
      119 FORGPREP                         R6
      120 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      122 MOVE                             R12 R5
      123 MOVE                             R13 R10
      124 GETIMPORT                        R11 K36 [table.insert]
      126 CALL                             R11 2 0
      127 FORGLOOP                         R6 2 ; [-8]
      129 SETTABLEKS                       R5 R4 K31 ["standardizedFields"]
      131 CALL                             R2 2 0
      132 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_67:
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
       49 NEWTABLE                         R4 0 0
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K16 ["StandardizedFields"]
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 FORGPREP                         R5
       57 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       59 MOVE                             R11 R4
       60 MOVE                             R12 R9
       61 GETIMPORT                        R10 K19 [table.insert]
       63 CALL                             R10 2 0
       64 FORGLOOP                         R5 2 ; [-8]
       66 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       68 CALL                             R1 2 0
       69 RETURN                           R0 0

PROTO_68:
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
       41 NEWTABLE                         R4 0 0
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K14 ["StandardizedFields"]
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       51 MOVE                             R11 R4
       52 MOVE                             R12 R9
       53 GETIMPORT                        R10 K17 [table.insert]
       55 CALL                             R10 2 0
       56 FORGLOOP                         R5 2 ; [-8]
       58 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       60 CALL                             R1 2 0
       61 RETURN                           R0 0

PROTO_69:
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
       33 NEWTABLE                         R4 0 0
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K12 ["StandardizedFields"]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       43 MOVE                             R11 R4
       44 MOVE                             R12 R9
       45 GETIMPORT                        R10 K15 [table.insert]
       47 CALL                             R10 2 0
       48 FORGLOOP                         R5 2 ; [-8]
       50 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       52 CALL                             R1 2 0
       53 RETURN                           R0 0

PROTO_70:
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
       33 NEWTABLE                         R4 0 0
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K12 ["StandardizedFields"]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       43 MOVE                             R11 R4
       44 MOVE                             R12 R9
       45 GETIMPORT                        R10 K15 [table.insert]
       47 CALL                             R10 2 0
       48 FORGLOOP                         R5 2 ; [-8]
       50 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       52 CALL                             R1 2 0
       53 RETURN                           R0 0

PROTO_71:
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
       41 NEWTABLE                         R4 0 0
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K14 ["StandardizedFields"]
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       51 MOVE                             R11 R4
       52 MOVE                             R12 R9
       53 GETIMPORT                        R10 K17 [table.insert]
       55 CALL                             R10 2 0
       56 FORGLOOP                         R5 2 ; [-8]
       58 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       60 CALL                             R1 2 0
       61 RETURN                           R0 0

PROTO_72:
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
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K11 ["StandardizedFields"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       39 MOVE                             R11 R4
       40 MOVE                             R12 R9
       41 GETIMPORT                        R10 K14 [table.insert]
       43 CALL                             R10 2 0
       44 FORGLOOP                         R5 2 ; [-8]
       46 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       48 CALL                             R1 2 0
       49 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R5 K6 [{"harness", "outcome", "reason"}]
        6 GETTABLEKS                       R6 R0 K3 ["harness"]
        8 SETTABLEKS                       R6 R5 K3 ["harness"]
       10 GETTABLEKS                       R6 R0 K4 ["outcome"]
       12 SETTABLEKS                       R6 R5 K4 ["outcome"]
       14 GETTABLEKS                       R6 R0 K5 ["reason"]
       16 SETTABLEKS                       R6 R5 K5 ["reason"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K7 ["assign"]
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K9 [{"timestampMilliseconds"}]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K10 ["getTimestampMilliseconds"]
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K8 ["timestampMilliseconds"]
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K1 ["customFields"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K11 ["logCounter"]
       37 GETUPVAL                         R2 4
       38 LOADN                            R3 1
       39 DUPTABLE                         R4 K2 [{"customFields"}]
       40 DUPTABLE                         R6 K6 [{"harness", "outcome", "reason"}]
       41 GETTABLEKS                       R7 R0 K3 ["harness"]
       43 SETTABLEKS                       R7 R6 K3 ["harness"]
       45 GETTABLEKS                       R7 R0 K4 ["outcome"]
       47 SETTABLEKS                       R7 R6 K4 ["outcome"]
       49 GETTABLEKS                       R8 R0 K5 ["reason"]
       51 ORK                              R7 R8 K12 ["none"]
       52 SETTABLEKS                       R7 R6 K5 ["reason"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K13 ["join"]
       57 MOVE                             R8 R6
       58 DUPTABLE                         R9 K16 [{"experimentationGroup", "featureTag"}]
       59 GETUPVAL                         R11 5
       60 NAMECALL                         R11 R11 K17 ["get"]
       62 CALL                             R11 1 1
       63 JUMPIFNOTEQKNIL                  R11 ; [+3]
       65 LOADNIL                          R10
       66 JUMP                             ; [+16]
       67 GETUPVAL                         R13 6
       68 GETTABLE                         R12 R11 R13
       69 JUMPIFNOTEQKNIL                  R12 ; [+3]
       71 GETTABLEKS                       R12 R11 K18 ["generatedExperimentVariantDistributionVariable"]
       73 JUMPIFNOTEQKNIL                  R12 ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+6]
       77 FASTCALL1                        TOSTRING R12 ; [+3]
       78 MOVE                             R14 R12
       79 GETIMPORT                        R13 K20 [tostring]
       81 CALL                             R13 1 1
       82 MOVE                             R10 R13
       83 SETTABLEKS                       R10 R9 K14 ["experimentationGroup"]
       85 GETUPVAL                         R11 7
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+2]
       88 LOADK                            R10 K21 ["Remote"]
       89 JUMP                             ; [+1]
       90 LOADK                            R10 K22 ["Local"]
       91 SETTABLEKS                       R10 R9 K15 ["featureTag"]
       93 CALL                             R7 2 1
       94 MOVE                             R5 R7
       95 SETTABLEKS                       R5 R4 K1 ["customFields"]
       97 CALL                             R1 3 0
       98 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K6 [{"harness", "outcome", "reason"}]
        7 GETTABLEKS                       R7 R0 K3 ["harness"]
        9 SETTABLEKS                       R7 R6 K3 ["harness"]
       11 GETTABLEKS                       R7 R0 K4 ["outcome"]
       13 SETTABLEKS                       R7 R6 K4 ["outcome"]
       15 GETTABLEKS                       R8 R0 K5 ["reason"]
       17 ORK                              R7 R8 K7 ["none"]
       18 SETTABLEKS                       R7 R6 K5 ["reason"]
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
       61 SETTABLEKS                       R5 R4 K1 ["customFields"]
       63 CALL                             R1 3 0
       64 RETURN                           R0 0

PROTO_75:
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
       37 NEWTABLE                         R4 0 0
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K13 ["StandardizedFields"]
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       47 MOVE                             R11 R4
       48 MOVE                             R12 R9
       49 GETIMPORT                        R10 K16 [table.insert]
       51 CALL                             R10 2 0
       52 FORGLOOP                         R5 2 ; [-8]
       54 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

PROTO_76:
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
       81 NEWTABLE                         R4 0 0
       83 GETUPVAL                         R5 8
       84 GETTABLEKS                       R5 R5 K23 ["StandardizedFields"]
       86 LOADNIL                          R6
       87 LOADNIL                          R7
       88 FORGPREP                         R5
       89 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       91 MOVE                             R11 R4
       92 MOVE                             R12 R9
       93 GETIMPORT                        R10 K26 [table.insert]
       95 CALL                             R10 2 0
       96 FORGLOOP                         R5 2 ; [-8]
       98 SETTABLEKS                       R4 R3 K14 ["standardizedFields"]
      100 CALL                             R1 2 0
      101 RETURN                           R0 0

PROTO_77:
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
       57 DUPTABLE                         R5 K27 [{"threadId", "requestId", "model", "errorMessage", "messageCount", "originalMessageCount", "originalContextTokens", "originalTranscriptSize", "originalTranscript", "fallbackMessageSize", "fallbackMessage"}]
       58 GETTABLEKS                       R6 R0 K16 ["threadId"]
       60 SETTABLEKS                       R6 R5 K16 ["threadId"]
       62 GETTABLEKS                       R6 R0 K28 ["messageGuid"]
       64 SETTABLEKS                       R6 R5 K17 ["requestId"]
       66 GETTABLEKS                       R6 R0 K18 ["model"]
       68 SETTABLEKS                       R6 R5 K18 ["model"]
       70 GETTABLEKS                       R6 R0 K19 ["errorMessage"]
       72 SETTABLEKS                       R6 R5 K19 ["errorMessage"]
       74 GETTABLEKS                       R6 R0 K20 ["messageCount"]
       76 SETTABLEKS                       R6 R5 K20 ["messageCount"]
       78 GETTABLEKS                       R6 R0 K21 ["originalMessageCount"]
       80 SETTABLEKS                       R6 R5 K21 ["originalMessageCount"]
       82 GETTABLEKS                       R6 R0 K22 ["originalContextTokens"]
       84 SETTABLEKS                       R6 R5 K22 ["originalContextTokens"]
       86 GETTABLEKS                       R6 R0 K23 ["originalTranscriptSize"]
       88 SETTABLEKS                       R6 R5 K23 ["originalTranscriptSize"]
       90 GETTABLEKS                       R6 R0 K24 ["originalTranscript"]
       92 SETTABLEKS                       R6 R5 K24 ["originalTranscript"]
       94 GETTABLEKS                       R6 R0 K25 ["fallbackMessageSize"]
       96 SETTABLEKS                       R6 R5 K25 ["fallbackMessageSize"]
       98 GETTABLEKS                       R6 R0 K26 ["fallbackMessage"]
      100 SETTABLEKS                       R6 R5 K26 ["fallbackMessage"]
      102 GETUPVAL                         R6 2
      103 GETTABLEKS                       R6 R6 K29 ["assign"]
      105 MOVE                             R7 R5
      106 DUPTABLE                         R8 K31 [{"timestampMilliseconds"}]
      107 GETUPVAL                         R9 7
      108 GETTABLEKS                       R9 R9 K32 ["getTimestampMilliseconds"]
      110 CALL                             R9 0 1
      111 SETTABLEKS                       R9 R8 K30 ["timestampMilliseconds"]
      113 CALL                             R6 2 1
      114 MOVE                             R4 R6
      115 SETTABLEKS                       R4 R3 K1 ["customFields"]
      117 NEWTABLE                         R4 0 0
      119 GETUPVAL                         R5 8
      120 GETTABLEKS                       R5 R5 K33 ["StandardizedFields"]
      122 LOADNIL                          R6
      123 LOADNIL                          R7
      124 FORGPREP                         R5
      125 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      127 MOVE                             R11 R4
      128 MOVE                             R12 R9
      129 GETIMPORT                        R10 K36 [table.insert]
      131 CALL                             R10 2 0
      132 FORGLOOP                         R5 2 ; [-8]
      134 SETTABLEKS                       R4 R3 K14 ["standardizedFields"]
      136 CALL                             R1 2 0
      137 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K10 [{"action", "skillName", "skillDescription", "skillBody", "skillBodyLength", "isThirdPartyRequest"}]
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
       27 GETTABLEKS                       R6 R0 K9 ["isThirdPartyRequest"]
       29 SETTABLEKS                       R6 R5 K9 ["isThirdPartyRequest"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K11 ["assign"]
       34 MOVE                             R7 R5
       35 DUPTABLE                         R8 K13 [{"timestampMilliseconds"}]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K14 ["getTimestampMilliseconds"]
       39 CALL                             R9 0 1
       40 SETTABLEKS                       R9 R8 K12 ["timestampMilliseconds"]
       42 CALL                             R6 2 1
       43 MOVE                             R4 R6
       44 SETTABLEKS                       R4 R3 K1 ["customFields"]
       46 NEWTABLE                         R4 0 0
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K15 ["StandardizedFields"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       56 MOVE                             R11 R4
       57 MOVE                             R12 R9
       58 GETIMPORT                        R10 K18 [table.insert]
       60 CALL                             R10 2 0
       61 FORGLOOP                         R5 2 ; [-8]
       63 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       65 CALL                             R1 2 0
       66 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["redact"]
        3 GETTABLEKS                       R2 R0 K1 ["feedback"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["logEvent"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K5 [{"customFields", "standardizedFields"}]
       11 DUPTABLE                         R6 K9 [{"feedback", "feedbackCharacters", "clientName", "studioSessionId"}]
       12 SETTABLEKS                       R1 R6 K1 ["feedback"]
       14 LENGTH                           R7 R1
       15 SETTABLEKS                       R7 R6 K6 ["feedbackCharacters"]
       17 GETTABLEKS                       R7 R0 K7 ["clientName"]
       19 SETTABLEKS                       R7 R6 K7 ["clientName"]
       21 GETTABLEKS                       R7 R0 K8 ["studioSessionId"]
       23 SETTABLEKS                       R7 R6 K8 ["studioSessionId"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K10 ["assign"]
       28 MOVE                             R8 R6
       29 DUPTABLE                         R9 K12 [{"timestampMilliseconds"}]
       30 GETUPVAL                         R10 4
       31 GETTABLEKS                       R10 R10 K13 ["getTimestampMilliseconds"]
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K11 ["timestampMilliseconds"]
       36 CALL                             R7 2 1
       37 MOVE                             R5 R7
       38 SETTABLEKS                       R5 R4 K3 ["customFields"]
       40 NEWTABLE                         R5 0 0
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K14 ["StandardizedFields"]
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       50 MOVE                             R12 R5
       51 MOVE                             R13 R10
       52 GETIMPORT                        R11 K17 [table.insert]
       54 CALL                             R11 2 0
       55 FORGLOOP                         R6 2 ; [-8]
       57 SETTABLEKS                       R5 R4 K4 ["standardizedFields"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_80:
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
       55 NEWTABLE                         R5 0 0
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K19 ["StandardizedFields"]
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       65 MOVE                             R12 R5
       66 MOVE                             R13 R10
       67 GETIMPORT                        R11 K22 [table.insert]
       69 CALL                             R11 2 0
       70 FORGLOOP                         R6 2 ; [-8]
       72 SETTABLEKS                       R5 R4 K3 ["standardizedFields"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
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
      302 CAPTURE                          UPVAL U0
      303 CAPTURE                          UPVAL U1
      304 CAPTURE                          UPVAL U7
      305 CAPTURE                          UPVAL U67
      306 CAPTURE                          UPVAL U25
      307 CAPTURE                          UPVAL U8
      308 CAPTURE                          UPVAL U10
      309 DUPCLOSURE                       R36 K31 [PROTO_57]
      310 CAPTURE                          UPVAL U4
      311 CAPTURE                          UPVAL U68
      312 CAPTURE                          UPVAL U6
      313 CAPTURE                          UPVAL U0
      314 CAPTURE                          UPVAL U1
      315 CAPTURE                          UPVAL U7
      316 CAPTURE                          UPVAL U69
      317 CAPTURE                          UPVAL U25
      318 CAPTURE                          UPVAL U8
      319 CAPTURE                          UPVAL U10
      320 DUPCLOSURE                       R37 K32 [PROTO_58]
      321 CAPTURE                          UPVAL U4
      322 CAPTURE                          UPVAL U70
      323 CAPTURE                          UPVAL U6
      324 CAPTURE                          UPVAL U8
      325 CAPTURE                          UPVAL U10
      326 DUPCLOSURE                       R38 K33 [PROTO_59]
      327 CAPTURE                          UPVAL U4
      328 CAPTURE                          UPVAL U71
      329 CAPTURE                          UPVAL U6
      330 CAPTURE                          UPVAL U0
      331 CAPTURE                          UPVAL U1
      332 CAPTURE                          UPVAL U7
      333 CAPTURE                          UPVAL U72
      334 CAPTURE                          UPVAL U8
      335 CAPTURE                          UPVAL U10
      336 DUPCLOSURE                       R39 K34 [PROTO_60]
      337 CAPTURE                          UPVAL U4
      338 CAPTURE                          UPVAL U73
      339 CAPTURE                          UPVAL U6
      340 CAPTURE                          UPVAL U8
      341 CAPTURE                          UPVAL U10
      342 DUPCLOSURE                       R40 K35 [PROTO_61]
      343 CAPTURE                          UPVAL U4
      344 CAPTURE                          UPVAL U74
      345 CAPTURE                          UPVAL U6
      346 CAPTURE                          UPVAL U8
      347 CAPTURE                          UPVAL U10
      348 CAPTURE                          UPVAL U75
      349 CAPTURE                          UPVAL U0
      350 CAPTURE                          UPVAL U1
      351 CAPTURE                          UPVAL U7
      352 DUPCLOSURE                       R41 K36 [PROTO_62]
      353 CAPTURE                          UPVAL U4
      354 CAPTURE                          UPVAL U76
      355 CAPTURE                          UPVAL U25
      356 CAPTURE                          UPVAL U6
      357 CAPTURE                          UPVAL U8
      358 CAPTURE                          UPVAL U10
      359 CAPTURE                          UPVAL U77
      360 CAPTURE                          UPVAL U0
      361 CAPTURE                          UPVAL U1
      362 CAPTURE                          UPVAL U7
      363 DUPCLOSURE                       R42 K37 [PROTO_63]
      364 CAPTURE                          UPVAL U4
      365 CAPTURE                          UPVAL U78
      366 CAPTURE                          UPVAL U6
      367 CAPTURE                          UPVAL U8
      368 CAPTURE                          UPVAL U10
      369 CAPTURE                          UPVAL U79
      370 CAPTURE                          UPVAL U0
      371 CAPTURE                          UPVAL U1
      372 CAPTURE                          UPVAL U7
      373 DUPCLOSURE                       R43 K38 [PROTO_64]
      374 CAPTURE                          UPVAL U4
      375 CAPTURE                          UPVAL U80
      376 CAPTURE                          UPVAL U6
      377 CAPTURE                          UPVAL U0
      378 CAPTURE                          UPVAL U1
      379 CAPTURE                          UPVAL U7
      380 CAPTURE                          UPVAL U8
      381 CAPTURE                          UPVAL U81
      382 CAPTURE                          UPVAL U10
      383 DUPCLOSURE                       R44 K39 [PROTO_65]
      384 CAPTURE                          UPVAL U4
      385 CAPTURE                          UPVAL U82
      386 CAPTURE                          UPVAL U6
      387 CAPTURE                          UPVAL U0
      388 CAPTURE                          UPVAL U1
      389 CAPTURE                          UPVAL U7
      390 CAPTURE                          UPVAL U8
      391 CAPTURE                          UPVAL U83
      392 CAPTURE                          UPVAL U10
      393 DUPCLOSURE                       R45 K40 [PROTO_66]
      394 CAPTURE                          UPVAL U4
      395 CAPTURE                          UPVAL U84
      396 DUPCLOSURE                       R46 K41 [PROTO_67]
      397 CAPTURE                          UPVAL U4
      398 CAPTURE                          UPVAL U85
      399 CAPTURE                          UPVAL U6
      400 CAPTURE                          UPVAL U8
      401 CAPTURE                          UPVAL U10
      402 DUPCLOSURE                       R47 K42 [PROTO_68]
      403 CAPTURE                          UPVAL U4
      404 CAPTURE                          UPVAL U86
      405 CAPTURE                          UPVAL U6
      406 CAPTURE                          UPVAL U8
      407 CAPTURE                          UPVAL U10
      408 DUPCLOSURE                       R48 K43 [PROTO_69]
      409 CAPTURE                          UPVAL U4
      410 CAPTURE                          UPVAL U87
      411 CAPTURE                          UPVAL U6
      412 CAPTURE                          UPVAL U8
      413 CAPTURE                          UPVAL U10
      414 DUPCLOSURE                       R49 K44 [PROTO_70]
      415 CAPTURE                          UPVAL U4
      416 CAPTURE                          UPVAL U88
      417 CAPTURE                          UPVAL U6
      418 CAPTURE                          UPVAL U8
      419 CAPTURE                          UPVAL U10
      420 DUPCLOSURE                       R50 K45 [PROTO_71]
      421 CAPTURE                          UPVAL U4
      422 CAPTURE                          UPVAL U89
      423 CAPTURE                          UPVAL U6
      424 CAPTURE                          UPVAL U8
      425 CAPTURE                          UPVAL U10
      426 DUPCLOSURE                       R51 K46 [PROTO_72]
      427 CAPTURE                          UPVAL U4
      428 CAPTURE                          UPVAL U90
      429 CAPTURE                          UPVAL U6
      430 CAPTURE                          UPVAL U8
      431 CAPTURE                          UPVAL U10
      432 DUPCLOSURE                       R52 K47 [PROTO_73]
      433 CAPTURE                          UPVAL U4
      434 CAPTURE                          UPVAL U91
      435 CAPTURE                          UPVAL U6
      436 CAPTURE                          UPVAL U8
      437 CAPTURE                          UPVAL U92
      438 CAPTURE                          UPVAL U0
      439 CAPTURE                          UPVAL U1
      440 CAPTURE                          UPVAL U7
      441 DUPCLOSURE                       R53 K48 [PROTO_74]
      442 CAPTURE                          UPVAL U4
      443 CAPTURE                          UPVAL U93
      444 CAPTURE                          UPVAL U6
      445 CAPTURE                          UPVAL U0
      446 CAPTURE                          UPVAL U1
      447 CAPTURE                          UPVAL U7
      448 DUPCLOSURE                       R54 K49 [PROTO_75]
      449 CAPTURE                          UPVAL U4
      450 CAPTURE                          UPVAL U94
      451 CAPTURE                          UPVAL U6
      452 CAPTURE                          UPVAL U8
      453 CAPTURE                          UPVAL U10
      454 DUPCLOSURE                       R55 K50 [PROTO_76]
      455 CAPTURE                          UPVAL U4
      456 CAPTURE                          UPVAL U95
      457 CAPTURE                          UPVAL U6
      458 CAPTURE                          UPVAL U0
      459 CAPTURE                          UPVAL U1
      460 CAPTURE                          UPVAL U7
      461 CAPTURE                          UPVAL U96
      462 CAPTURE                          UPVAL U8
      463 CAPTURE                          UPVAL U10
      464 DUPCLOSURE                       R56 K51 [PROTO_77]
      465 CAPTURE                          UPVAL U4
      466 CAPTURE                          UPVAL U97
      467 CAPTURE                          UPVAL U6
      468 CAPTURE                          UPVAL U0
      469 CAPTURE                          UPVAL U1
      470 CAPTURE                          UPVAL U7
      471 CAPTURE                          UPVAL U98
      472 CAPTURE                          UPVAL U8
      473 CAPTURE                          UPVAL U10
      474 DUPCLOSURE                       R57 K52 [PROTO_78]
      475 CAPTURE                          UPVAL U4
      476 CAPTURE                          UPVAL U99
      477 CAPTURE                          UPVAL U6
      478 CAPTURE                          UPVAL U8
      479 CAPTURE                          UPVAL U10
      480 DUPCLOSURE                       R58 K53 [PROTO_79]
      481 CAPTURE                          UPVAL U100
      482 CAPTURE                          UPVAL U4
      483 CAPTURE                          UPVAL U101
      484 CAPTURE                          UPVAL U6
      485 CAPTURE                          UPVAL U8
      486 CAPTURE                          UPVAL U10
      487 DUPCLOSURE                       R59 K54 [PROTO_80]
      488 CAPTURE                          UPVAL U4
      489 CAPTURE                          UPVAL U102
      490 CAPTURE                          UPVAL U6
      491 CAPTURE                          UPVAL U8
      492 CAPTURE                          UPVAL U10
      493 DUPCLOSURE                       R60 K55 [PROTO_81]
      494 CAPTURE                          UPVAL U4
      495 CAPTURE                          UPVAL U103
      496 CAPTURE                          UPVAL U6
      497 CAPTURE                          UPVAL U0
      498 CAPTURE                          UPVAL U1
      499 CAPTURE                          UPVAL U7
      500 CAPTURE                          UPVAL U104
      501 CAPTURE                          UPVAL U105
      502 NEWTABLE                         R61 64 0
      504 SETTABLEKS                       R1 R61 K56 ["logUserMessageSent"]
      506 SETTABLEKS                       R2 R61 K57 ["logAssistantMessageSent"]
      508 SETTABLEKS                       R3 R61 K58 ["logApiKeyAdded"]
      510 SETTABLEKS                       R4 R61 K59 ["logErrorEvent"]
      512 SETTABLEKS                       R18 R61 K60 ["logExternalAPIError"]
      514 SETTABLEKS                       R5 R61 K61 ["logThumbsUp"]
      516 SETTABLEKS                       R6 R61 K62 ["logThumbsDown"]
      518 SETTABLEKS                       R7 R61 K63 ["logInitialResponseLatency"]
      520 SETTABLEKS                       R8 R61 K64 ["logNotificationGapSkipped"]
      522 SETTABLEKS                       R9 R61 K65 ["logMarkdownError"]
      524 SETTABLEKS                       R10 R61 K66 ["logRetry"]
      526 SETTABLEKS                       R11 R61 K67 ["logStopGeneration"]
      528 SETTABLEKS                       R12 R61 K68 ["logToolStarted"]
      530 SETTABLEKS                       R13 R61 K69 ["logToolEnded"]
      532 SETTABLEKS                       R14 R61 K70 ["logFailedToolInvocation"]
      534 SETTABLEKS                       R15 R61 K71 ["logToolConfirmationShown"]
      536 SETTABLEKS                       R16 R61 K72 ["logToolConfirmationResult"]
      538 SETTABLEKS                       R17 R61 K73 ["logRequestJourney"]
      540 SETTABLEKS                       R19 R61 K74 ["logMeshGenActivated"]
      542 SETTABLEKS                       R20 R61 K75 ["logMeshGenCompleted"]
      544 SETTABLEKS                       R21 R61 K76 ["logMeshGenPublishedAssets"]
      546 SETTABLEKS                       R22 R61 K77 ["logMeshGenMeshInserted"]
      548 SETTABLEKS                       R23 R61 K78 ["logPrimitiveGen"]
      550 SETTABLEKS                       R24 R61 K79 ["logAvatarAutoSetupRequested"]
      552 SETTABLEKS                       R25 R61 K80 ["logAvatarAutoSetupOptions"]
      554 SETTABLEKS                       R26 R61 K81 ["logAvatarAutoSetupJobInitialized"]
      556 SETTABLEKS                       R27 R61 K82 ["logAvatarAutoSetupFinish"]
      558 SETTABLEKS                       R28 R61 K83 ["logAvatarAutoSetupFailure"]
      560 SETTABLEKS                       R29 R61 K84 ["logGen3DSegmentationRefresh"]
      562 SETTABLEKS                       R30 R61 K85 ["logGen3DInstanceDeleted"]
      564 SETTABLEKS                       R31 R61 K86 ["logGen3DImageImpression"]
      566 SETTABLEKS                       R32 R61 K87 ["logGen3DImageAction"]
      568 SETTABLEKS                       R33 R61 K88 ["logGen3DAssetPublished"]
      570 SETTABLEKS                       R34 R61 K89 ["logTextureGenCompleted"]
      572 SETTABLEKS                       R35 R61 K90 ["logSceneGenCompleted"]
      574 SETTABLEKS                       R36 R61 K91 ["logAnimationGenCompleted"]
      576 SETTABLEKS                       R37 R61 K92 ["logAnimationGenEditSession"]
      578 SETTABLEKS                       R38 R61 K93 ["logAnimationGenClipAction"]
      580 SETTABLEKS                       R39 R61 K94 ["logIntegrationEvent"]
      582 SETTABLEKS                       R40 R61 K95 ["logExternalServerConnected"]
      584 SETTABLEKS                       R41 R61 K96 ["logMCPProxyTokenRead"]
      586 SETTABLEKS                       R42 R61 K97 ["logMCPProxyAuthRejected"]
      588 SETTABLEKS                       R43 R61 K98 ["logQuestionAnswerCompleted"]
      590 SETTABLEKS                       R44 R61 K99 ["logPlanDecision"]
      592 SETTABLEKS                       R51 R61 K100 ["logQuickSetupToggled"]
      594 SETTABLEKS                       R52 R61 K101 ["logMcpCaptureHooksInstall"]
      596 SETTABLEKS                       R53 R61 K102 ["logMcpCaptureUpload"]
      598 SETTABLEKS                       R45 R61 K103 ["logMaterialGeneratorSavedMaterial"]
      600 SETTABLEKS                       R55 R61 K104 ["logCompactionSuccess"]
      602 SETTABLEKS                       R56 R61 K105 ["logCompactionFallback"]
      604 SETTABLEKS                       R57 R61 K106 ["logUserSkillEvent"]
      606 SETTABLEKS                       R58 R61 K107 ["logMcpFeedback"]
      608 SETTABLEKS                       R59 R61 K108 ["logThinkingBlock"]
      610 SETTABLEKS                       R46 R61 K109 ["logThreadCreated"]
      612 SETTABLEKS                       R47 R61 K110 ["logThreadRenamed"]
      614 SETTABLEKS                       R48 R61 K111 ["logThreadPinnedChanged"]
      616 SETTABLEKS                       R49 R61 K112 ["logThreadDeleted"]
      618 SETTABLEKS                       R50 R61 K113 ["logThreadDuplicated"]
      620 SETTABLEKS                       R54 R61 K114 ["logThreadSwitched"]
      622 SETTABLEKS                       R60 R61 K115 ["logPersistenceOperation"]
      624 RETURN                           R61 1

PROTO_83:
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
      117 GETTABLEKS                       R3 R1 K28 ["logSceneGenCompleted"]
      119 SETTABLEKS                       R3 R2 K28 ["logSceneGenCompleted"]
      121 GETTABLEKS                       R3 R1 K29 ["logAnimationGenCompleted"]
      123 SETTABLEKS                       R3 R2 K29 ["logAnimationGenCompleted"]
      125 GETTABLEKS                       R3 R1 K30 ["logAnimationGenEditSession"]
      127 SETTABLEKS                       R3 R2 K30 ["logAnimationGenEditSession"]
      129 GETTABLEKS                       R3 R1 K31 ["logAnimationGenClipAction"]
      131 SETTABLEKS                       R3 R2 K31 ["logAnimationGenClipAction"]
      133 GETTABLEKS                       R3 R1 K32 ["logIntegrationEvent"]
      135 SETTABLEKS                       R3 R2 K32 ["logIntegrationEvent"]
      137 GETTABLEKS                       R3 R1 K33 ["logExternalServerConnected"]
      139 SETTABLEKS                       R3 R2 K33 ["logExternalServerConnected"]
      141 GETTABLEKS                       R3 R1 K34 ["logMCPProxyTokenRead"]
      143 SETTABLEKS                       R3 R2 K34 ["logMCPProxyTokenRead"]
      145 GETTABLEKS                       R3 R1 K35 ["logMCPProxyAuthRejected"]
      147 SETTABLEKS                       R3 R2 K35 ["logMCPProxyAuthRejected"]
      149 GETTABLEKS                       R3 R1 K36 ["logQuestionAnswerCompleted"]
      151 SETTABLEKS                       R3 R2 K36 ["logQuestionAnswerCompleted"]
      153 GETTABLEKS                       R3 R1 K37 ["logPlanDecision"]
      155 SETTABLEKS                       R3 R2 K37 ["logPlanDecision"]
      157 GETTABLEKS                       R3 R1 K38 ["logQuickSetupToggled"]
      159 SETTABLEKS                       R3 R2 K38 ["logQuickSetupToggled"]
      161 GETTABLEKS                       R3 R1 K39 ["logMcpCaptureHooksInstall"]
      163 SETTABLEKS                       R3 R2 K39 ["logMcpCaptureHooksInstall"]
      165 GETTABLEKS                       R3 R1 K40 ["logMcpCaptureUpload"]
      167 SETTABLEKS                       R3 R2 K40 ["logMcpCaptureUpload"]
      169 GETTABLEKS                       R3 R1 K41 ["logMaterialGeneratorSavedMaterial"]
      171 SETTABLEKS                       R3 R2 K41 ["logMaterialGeneratorSavedMaterial"]
      173 GETTABLEKS                       R3 R1 K42 ["logCompactionSuccess"]
      175 SETTABLEKS                       R3 R2 K42 ["logCompactionSuccess"]
      177 GETTABLEKS                       R3 R1 K43 ["logCompactionFallback"]
      179 SETTABLEKS                       R3 R2 K43 ["logCompactionFallback"]
      181 GETTABLEKS                       R3 R1 K44 ["logUserSkillEvent"]
      183 SETTABLEKS                       R3 R2 K44 ["logUserSkillEvent"]
      185 GETTABLEKS                       R3 R1 K45 ["logMcpFeedback"]
      187 SETTABLEKS                       R3 R2 K45 ["logMcpFeedback"]
      189 GETTABLEKS                       R3 R1 K46 ["logThinkingBlock"]
      191 SETTABLEKS                       R3 R2 K46 ["logThinkingBlock"]
      193 GETTABLEKS                       R3 R1 K47 ["logThreadCreated"]
      195 SETTABLEKS                       R3 R2 K47 ["logThreadCreated"]
      197 GETTABLEKS                       R3 R1 K48 ["logThreadRenamed"]
      199 SETTABLEKS                       R3 R2 K48 ["logThreadRenamed"]
      201 GETTABLEKS                       R3 R1 K49 ["logThreadPinnedChanged"]
      203 SETTABLEKS                       R3 R2 K49 ["logThreadPinnedChanged"]
      205 GETTABLEKS                       R3 R1 K50 ["logThreadDeleted"]
      207 SETTABLEKS                       R3 R2 K50 ["logThreadDeleted"]
      209 GETTABLEKS                       R3 R1 K51 ["logThreadDuplicated"]
      211 SETTABLEKS                       R3 R2 K51 ["logThreadDuplicated"]
      213 GETTABLEKS                       R3 R1 K52 ["logThreadSwitched"]
      215 SETTABLEKS                       R3 R2 K52 ["logThreadSwitched"]
      217 GETTABLEKS                       R3 R1 K53 ["logPersistenceOperation"]
      219 SETTABLEKS                       R3 R2 K53 ["logPersistenceOperation"]
      221 RETURN                           R2 1

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
       64 GETTABLEKS                       R9 R9 K20 ["Host"]
       66 GETTABLEKS                       R9 R9 K21 ["McpCapture"]
       68 GETTABLEKS                       R9 R9 K22 ["McpCaptureRedactor"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Src"]
       75 GETTABLEKS                       R10 R10 K14 ["Util"]
       77 GETTABLEKS                       R10 R10 K23 ["Telemetry"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Packages"]
       84 GETTABLEKS                       R11 R11 K24 ["TelemetryProtocol"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R3 K25 ["Utils"]
       89 GETTABLEKS                       R11 R11 K26 ["Time"]
       91 GETTABLEKS                       R12 R3 K25 ["Utils"]
       93 GETTABLEKS                       R12 R12 K27 ["ImageAttachmentUtils"]
       95 GETTABLEKS                       R13 R3 K25 ["Utils"]
       97 GETTABLEKS                       R13 R13 K28 ["truncateUtf8Safe"]
       99 GETTABLEKS                       R14 R3 K29 ["FlagUtils"]
      101 GETTABLEKS                       R14 R14 K30 ["getIsCreditMeteringEnabled"]
      103 GETTABLEKS                       R15 R3 K29 ["FlagUtils"]
      105 GETTABLEKS                       R15 R15 K31 ["getIsAssistantUseRemoteService"]
      107 GETTABLEKS                       R15 R15 K32 ["get"]
      109 DUPCLOSURE                       R16 K33 [PROTO_1]
      110 CAPTURE                          VAL R1
      111 DUPCLOSURE                       R17 K34 [PROTO_2]
      112 CAPTURE                          VAL R13
      113 DUPCLOSURE                       R18 K35 [PROTO_3]
      114 DUPCLOSURE                       R19 K36 [PROTO_4]
      115 DUPCLOSURE                       R20 K37 [PROTO_5]
      116 DUPCLOSURE                       R21 K38 [PROTO_6]
      117 DUPCLOSURE                       R22 K39 [PROTO_7]
      118 DUPCLOSURE                       R23 K40 [PROTO_8]
      119 DUPCLOSURE                       R24 K41 [PROTO_9]
      120 CAPTURE                          VAL R22
      121 DUPCLOSURE                       R25 K42 [PROTO_11]
      122 CAPTURE                          VAL R24
      123 CAPTURE                          VAL R1
      124 DUPCLOSURE                       R26 K43 [PROTO_12]
      125 DUPCLOSURE                       R27 K44 [PROTO_13]
      126 DUPCLOSURE                       R28 K45 [PROTO_14]
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R1
      129 DUPCLOSURE                       R29 K46 [PROTO_15]
      130 CAPTURE                          VAL R10
      131 DUPCLOSURE                       R30 K47 [PROTO_16]
      132 DUPCLOSURE                       R31 K48 [PROTO_17]
      133 CAPTURE                          VAL R9
      134 GETIMPORT                        R32 K51 [table.freeze]
      136 NEWTABLE                         R33 0 0
      138 GETTABLEKS                       R36 R9 K52 ["Backends"]
      140 GETTABLEKS                       R36 R36 K53 ["EventIngest"]
      142 FASTCALL2                        TABLE_INSERT R33 R36 ; [+4]
      144 MOVE                             R35 R33
      145 GETIMPORT                        R34 K55 [table.insert]
      147 CALL                             R34 2 0
      148 GETTABLEKS                       R36 R9 K52 ["Backends"]
      150 GETTABLEKS                       R36 R36 K56 ["Points"]
      152 FASTCALL2                        TABLE_INSERT R33 R36 ; [+4]
      154 MOVE                             R35 R33
      155 GETIMPORT                        R34 K55 [table.insert]
      157 CALL                             R34 2 0
      158 CALL                             R32 1 1
      159 GETIMPORT                        R33 K51 [table.freeze]
      161 DUPTABLE                         R34 K62 [{["eventName"], ["backends"], ["description"] = "Incrementing count of user messages sent.", ["lastUpdated"]}]
      162 LOADK                            R35 K63 ["StudioAssistantUserMessageSent"]
      163 SETTABLEKS                       R35 R34 K57 ["eventName"]
      165 NEWTABLE                         R35 0 1
      167 GETTABLEKS                       R36 R9 K52 ["Backends"]
      169 GETTABLEKS                       R36 R36 K64 ["RobloxTelemetryCounter"]
      171 SETLIST                          R35 R36 1 [1]
      173 SETTABLEKS                       R35 R34 K58 ["backends"]
      175 NEWTABLE                         R35 0 3
      177 LOADN                            R36 26
      178 LOADN                            R37 8
      179 LOADN                            R38 19
      180 SETLIST                          R35 R36 3 [1]
      182 SETTABLEKS                       R35 R34 K61 ["lastUpdated"]
      184 CALL                             R33 1 1
      185 GETIMPORT                        R34 K51 [table.freeze]
      187 DUPTABLE                         R35 K68 [{["eventName"] = "CAPMessageSent", ["backends"], ["description"] = "User message sent event with request ID.", ["throttlingPercentage"], ["lastUpdated"]}]
      188 SETTABLEKS                       R32 R35 K58 ["backends"]
      190 GETTABLEKS                       R36 R7 K69 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
      192 SETTABLEKS                       R36 R35 K67 ["throttlingPercentage"]
      194 NEWTABLE                         R36 0 3
      196 LOADN                            R37 26
      197 LOADN                            R38 8
      198 LOADN                            R39 19
      199 SETLIST                          R36 R37 3 [1]
      201 SETTABLEKS                       R36 R35 K61 ["lastUpdated"]
      203 CALL                             R34 1 1
      204 GETIMPORT                        R35 K51 [table.freeze]
      206 DUPTABLE                         R36 K72 [{["eventName"] = "CAPAPIKeyAdded", ["backends"], ["description"] = "User added an API key for an LLM provider.", ["lastUpdated"]}]
      207 SETTABLEKS                       R32 R36 K58 ["backends"]
      209 NEWTABLE                         R37 0 3
      211 LOADN                            R38 25
      212 LOADN                            R39 11
      213 LOADN                            R40 4
      214 SETLIST                          R37 R38 3 [1]
      216 SETTABLEKS                       R37 R36 K61 ["lastUpdated"]
      218 CALL                             R35 1 1
      219 GETIMPORT                        R36 K51 [table.freeze]
      221 DUPTABLE                         R37 K75 [{["eventName"] = "CAPUserFeedbackThumbsUp", ["backends"], ["description"] = "User feedback thumbs up event with message context.", ["lastUpdated"]}]
      222 SETTABLEKS                       R32 R37 K58 ["backends"]
      224 NEWTABLE                         R38 0 3
      226 LOADN                            R39 25
      227 LOADN                            R40 7
      228 LOADN                            R41 25
      229 SETLIST                          R38 R39 3 [1]
      231 SETTABLEKS                       R38 R37 K61 ["lastUpdated"]
      233 CALL                             R36 1 1
      234 GETIMPORT                        R37 K51 [table.freeze]
      236 DUPTABLE                         R38 K78 [{["eventName"] = "CAPUserFeedbackThumbsDown", ["backends"], ["description"] = "User feedback thumbs down event with message context.", ["lastUpdated"]}]
      237 SETTABLEKS                       R32 R38 K58 ["backends"]
      239 NEWTABLE                         R39 0 3
      241 LOADN                            R40 25
      242 LOADN                            R41 7
      243 LOADN                            R42 25
      244 SETLIST                          R39 R40 3 [1]
      246 SETTABLEKS                       R39 R38 K61 ["lastUpdated"]
      248 CALL                             R37 1 1
      249 GETIMPORT                        R38 K51 [table.freeze]
      251 DUPTABLE                         R39 K80 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs up events.", ["lastUpdated"]}]
      252 LOADK                            R40 K81 ["StudioAssistantThumbsUp"]
      253 SETTABLEKS                       R40 R39 K57 ["eventName"]
      255 NEWTABLE                         R40 0 1
      257 GETTABLEKS                       R41 R9 K52 ["Backends"]
      259 GETTABLEKS                       R41 R41 K64 ["RobloxTelemetryCounter"]
      261 SETLIST                          R40 R41 1 [1]
      263 SETTABLEKS                       R40 R39 K58 ["backends"]
      265 NEWTABLE                         R40 0 3
      267 LOADN                            R41 25
      268 LOADN                            R42 7
      269 LOADN                            R43 21
      270 SETLIST                          R40 R41 3 [1]
      272 SETTABLEKS                       R40 R39 K61 ["lastUpdated"]
      274 CALL                             R38 1 1
      275 GETIMPORT                        R39 K51 [table.freeze]
      277 DUPTABLE                         R40 K83 [{["eventName"], ["backends"], ["description"] = "Incrementing count of thumbs down events.", ["lastUpdated"]}]
      278 LOADK                            R41 K84 ["StudioAssistantThumbsDown"]
      279 SETTABLEKS                       R41 R40 K57 ["eventName"]
      281 NEWTABLE                         R41 0 1
      283 GETTABLEKS                       R42 R9 K52 ["Backends"]
      285 GETTABLEKS                       R42 R42 K64 ["RobloxTelemetryCounter"]
      287 SETLIST                          R41 R42 1 [1]
      289 SETTABLEKS                       R41 R40 K58 ["backends"]
      291 NEWTABLE                         R41 0 3
      293 LOADN                            R42 25
      294 LOADN                            R43 7
      295 LOADN                            R44 21
      296 SETLIST                          R41 R42 3 [1]
      298 SETTABLEKS                       R41 R40 K61 ["lastUpdated"]
      300 CALL                             R39 1 1
      301 GETIMPORT                        R40 K51 [table.freeze]
      303 DUPTABLE                         R41 K86 [{["eventName"], ["backends"], ["description"] = "Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message.", ["lastUpdated"]}]
      304 LOADK                            R42 K87 ["StudioAssistantInitialResponseLatency"]
      305 SETTABLEKS                       R42 R41 K57 ["eventName"]
      307 NEWTABLE                         R42 0 1
      309 GETTABLEKS                       R43 R9 K52 ["Backends"]
      311 GETTABLEKS                       R43 R43 K88 ["RobloxTelemetryStat"]
      313 SETLIST                          R42 R43 1 [1]
      315 SETTABLEKS                       R42 R41 K58 ["backends"]
      317 NEWTABLE                         R42 0 3
      319 LOADN                            R43 25
      320 LOADN                            R44 7
      321 LOADN                            R45 21
      322 SETLIST                          R42 R43 3 [1]
      324 SETTABLEKS                       R42 R41 K61 ["lastUpdated"]
      326 CALL                             R40 1 1
      327 GETIMPORT                        R41 K51 [table.freeze]
      329 DUPTABLE                         R42 K90 [{["eventName"], ["backends"], ["description"] = "Count of LLM stream notification gaps that were skipped.", ["lastUpdated"]}]
      330 LOADK                            R43 K91 ["StudioAssistantNotificationGapSkippedCount"]
      331 SETTABLEKS                       R43 R42 K57 ["eventName"]
      333 NEWTABLE                         R43 0 1
      335 GETTABLEKS                       R44 R9 K52 ["Backends"]
      337 GETTABLEKS                       R44 R44 K64 ["RobloxTelemetryCounter"]
      339 SETLIST                          R43 R44 1 [1]
      341 SETTABLEKS                       R43 R42 K58 ["backends"]
      343 NEWTABLE                         R43 0 3
      345 LOADN                            R44 26
      346 LOADN                            R45 10
      347 LOADN                            R46 5
      348 SETLIST                          R43 R44 3 [1]
      350 SETTABLEKS                       R43 R42 K61 ["lastUpdated"]
      352 CALL                             R41 1 1
      353 GETIMPORT                        R42 K51 [table.freeze]
      355 DUPTABLE                         R43 K93 [{["eventName"], ["backends"], ["description"] = "User request journey duration in seconds. Time between sending first message to request ended.", ["lastUpdated"]}]
      356 LOADK                            R44 K94 ["StudioAssistantRequestJourney"]
      357 SETTABLEKS                       R44 R43 K57 ["eventName"]
      359 NEWTABLE                         R44 0 1
      361 GETTABLEKS                       R45 R9 K52 ["Backends"]
      363 GETTABLEKS                       R45 R45 K88 ["RobloxTelemetryStat"]
      365 SETLIST                          R44 R45 1 [1]
      367 SETTABLEKS                       R44 R43 K58 ["backends"]
      369 NEWTABLE                         R44 0 3
      371 LOADN                            R45 25
      372 LOADN                            R46 10
      373 LOADN                            R47 22
      374 SETLIST                          R44 R45 3 [1]
      376 SETTABLEKS                       R44 R43 K61 ["lastUpdated"]
      378 CALL                             R42 1 1
      379 GETIMPORT                        R43 K51 [table.freeze]
      381 DUPTABLE                         R44 K97 [{["eventName"] = "CAPRequestJourney", ["backends"], ["description"] = "User request journey detail.", ["lastUpdated"]}]
      382 SETTABLEKS                       R32 R44 K58 ["backends"]
      384 NEWTABLE                         R45 0 3
      386 LOADN                            R46 25
      387 LOADN                            R47 11
      388 LOADN                            R48 1
      389 SETLIST                          R45 R46 3 [1]
      391 SETTABLEKS                       R45 R44 K61 ["lastUpdated"]
      393 CALL                             R43 1 1
      394 GETIMPORT                        R44 K51 [table.freeze]
      396 DUPTABLE                         R45 K99 [{["eventName"], ["backends"], ["description"] = "Incrementing count of error events with error type attached.", ["lastUpdated"]}]
      397 LOADK                            R46 K100 ["StudioAssistantErrorEvent"]
      398 SETTABLEKS                       R46 R45 K57 ["eventName"]
      400 NEWTABLE                         R46 0 1
      402 GETTABLEKS                       R47 R9 K52 ["Backends"]
      404 GETTABLEKS                       R47 R47 K64 ["RobloxTelemetryCounter"]
      406 SETLIST                          R46 R47 1 [1]
      408 SETTABLEKS                       R46 R45 K58 ["backends"]
      410 NEWTABLE                         R46 0 3
      412 LOADN                            R47 25
      413 LOADN                            R48 7
      414 LOADN                            R49 21
      415 SETLIST                          R46 R47 3 [1]
      417 SETTABLEKS                       R46 R45 K61 ["lastUpdated"]
      419 CALL                             R44 1 1
      420 GETIMPORT                        R45 K51 [table.freeze]
      422 DUPTABLE                         R46 K103 [{["eventName"] = "CAPErrorEvent", ["backends"], ["description"] = "Assistant error detail.", ["lastUpdated"]}]
      423 SETTABLEKS                       R32 R46 K58 ["backends"]
      425 NEWTABLE                         R47 0 3
      427 LOADN                            R48 26
      428 LOADN                            R49 7
      429 LOADN                            R50 26
      430 SETLIST                          R47 R48 3 [1]
      432 SETTABLEKS                       R47 R46 K61 ["lastUpdated"]
      434 CALL                             R45 1 1
      435 GETIMPORT                        R46 K51 [table.freeze]
      437 DUPTABLE                         R47 K105 [{["eventName"], ["backends"], ["description"] = "Collection of markdown error events, with markdown attached.", ["throttlingPercentage"], ["lastUpdated"]}]
      438 LOADK                            R48 K106 ["StudioAssistantMarkdownError"]
      439 SETTABLEKS                       R48 R47 K57 ["eventName"]
      441 NEWTABLE                         R48 0 1
      443 GETTABLEKS                       R49 R9 K52 ["Backends"]
      445 GETTABLEKS                       R49 R49 K56 ["Points"]
      447 SETLIST                          R48 R49 1 [1]
      449 SETTABLEKS                       R48 R47 K58 ["backends"]
      451 GETTABLEKS                       R48 R7 K107 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
      453 SETTABLEKS                       R48 R47 K67 ["throttlingPercentage"]
      455 NEWTABLE                         R48 0 3
      457 LOADN                            R49 25
      458 LOADN                            R50 7
      459 LOADN                            R51 21
      460 SETLIST                          R48 R49 3 [1]
      462 SETTABLEKS                       R48 R47 K61 ["lastUpdated"]
      464 CALL                             R46 1 1
      465 GETIMPORT                        R47 K51 [table.freeze]
      467 DUPTABLE                         R48 K110 [{["eventName"] = "CAPMessageResubmitted", ["backends"], ["description"] = "User message retry/resubmit event with request ID.", ["lastUpdated"]}]
      468 SETTABLEKS                       R32 R48 K58 ["backends"]
      470 NEWTABLE                         R49 0 3
      472 LOADN                            R50 25
      473 LOADN                            R51 8
      474 LOADN                            R52 7
      475 SETLIST                          R49 R50 3 [1]
      477 SETTABLEKS                       R49 R48 K61 ["lastUpdated"]
      479 CALL                             R47 1 1
      480 GETIMPORT                        R48 K51 [table.freeze]
      482 DUPTABLE                         R49 K113 [{["eventName"] = "CAPStopGeneration", ["backends"], ["description"] = "User stop generation event with request ID.", ["lastUpdated"]}]
      483 SETTABLEKS                       R32 R49 K58 ["backends"]
      485 NEWTABLE                         R50 0 3
      487 LOADN                            R51 25
      488 LOADN                            R52 8
      489 LOADN                            R53 7
      490 SETLIST                          R50 R51 3 [1]
      492 SETTABLEKS                       R50 R49 K61 ["lastUpdated"]
      494 CALL                             R48 1 1
      495 GETIMPORT                        R49 K51 [table.freeze]
      497 DUPTABLE                         R50 K116 [{["eventName"] = "CAPToolEnded", ["backends"], ["description"] = "Tool invocation ended event with request ID and tool name", ["lastUpdated"]}]
      498 SETTABLEKS                       R32 R50 K58 ["backends"]
      500 NEWTABLE                         R51 0 3
      502 LOADN                            R52 25
      503 LOADN                            R53 7
      504 LOADN                            R54 21
      505 SETLIST                          R51 R52 3 [1]
      507 SETTABLEKS                       R51 R50 K61 ["lastUpdated"]
      509 CALL                             R49 1 1
      510 GETIMPORT                        R50 K51 [table.freeze]
      512 DUPTABLE                         R51 K119 [{["eventName"] = "StudioAssistantToolEndedCount", ["backends"], ["description"] = "Count of completed tool invocations.", ["lastUpdated"]}]
      513 NEWTABLE                         R52 0 1
      515 GETTABLEKS                       R53 R9 K52 ["Backends"]
      517 GETTABLEKS                       R53 R53 K64 ["RobloxTelemetryCounter"]
      519 SETLIST                          R52 R53 1 [1]
      521 SETTABLEKS                       R52 R51 K58 ["backends"]
      523 NEWTABLE                         R52 0 3
      525 LOADN                            R53 26
      526 LOADN                            R54 7
      527 LOADN                            R55 24
      528 SETLIST                          R52 R53 3 [1]
      530 SETTABLEKS                       R52 R51 K61 ["lastUpdated"]
      532 CALL                             R50 1 1
      533 GETIMPORT                        R51 K51 [table.freeze]
      535 DUPTABLE                         R52 K122 [{["eventName"] = "CAPToolStarted", ["backends"], ["description"] = "Tool invocation started event with request ID and tool name.", ["lastUpdated"]}]
      536 SETTABLEKS                       R32 R52 K58 ["backends"]
      538 NEWTABLE                         R53 0 3
      540 LOADN                            R54 25
      541 LOADN                            R55 8
      542 LOADN                            R56 7
      543 SETLIST                          R53 R54 3 [1]
      545 SETTABLEKS                       R53 R52 K61 ["lastUpdated"]
      547 CALL                             R51 1 1
      548 GETIMPORT                        R52 K51 [table.freeze]
      550 DUPTABLE                         R53 K125 [{["eventName"] = "StudioAssistantToolStartedCount", ["backends"], ["description"] = "Count of started tool invocations.", ["lastUpdated"]}]
      551 NEWTABLE                         R54 0 1
      553 GETTABLEKS                       R55 R9 K52 ["Backends"]
      555 GETTABLEKS                       R55 R55 K64 ["RobloxTelemetryCounter"]
      557 SETLIST                          R54 R55 1 [1]
      559 SETTABLEKS                       R54 R53 K58 ["backends"]
      561 NEWTABLE                         R54 0 3
      563 LOADN                            R55 26
      564 LOADN                            R56 7
      565 LOADN                            R57 24
      566 SETLIST                          R54 R55 3 [1]
      568 SETTABLEKS                       R54 R53 K61 ["lastUpdated"]
      570 CALL                             R52 1 1
      571 GETIMPORT                        R53 K51 [table.freeze]
      573 DUPTABLE                         R54 K128 [{["eventName"] = "StudioAssistantFailedToolInvocation", ["backends"], ["description"] = "Tool invocation failed before local execution began.", ["lastUpdated"]}]
      574 SETTABLEKS                       R32 R54 K58 ["backends"]
      576 NEWTABLE                         R55 0 3
      578 LOADN                            R56 26
      579 LOADN                            R57 7
      580 LOADN                            R58 24
      581 SETLIST                          R55 R56 3 [1]
      583 SETTABLEKS                       R55 R54 K61 ["lastUpdated"]
      585 CALL                             R53 1 1
      586 GETIMPORT                        R54 K51 [table.freeze]
      588 DUPTABLE                         R55 K131 [{["eventName"] = "StudioAssistantFailedToolInvocationCount", ["backends"], ["description"] = "Count of tool invocations that failed before local execution began.", ["lastUpdated"]}]
      589 NEWTABLE                         R56 0 1
      591 GETTABLEKS                       R57 R9 K52 ["Backends"]
      593 GETTABLEKS                       R57 R57 K64 ["RobloxTelemetryCounter"]
      595 SETLIST                          R56 R57 1 [1]
      597 SETTABLEKS                       R56 R55 K58 ["backends"]
      599 NEWTABLE                         R56 0 3
      601 LOADN                            R57 26
      602 LOADN                            R58 7
      603 LOADN                            R59 24
      604 SETLIST                          R56 R57 3 [1]
      606 SETTABLEKS                       R56 R55 K61 ["lastUpdated"]
      608 CALL                             R54 1 1
      609 GETIMPORT                        R55 K51 [table.freeze]
      611 DUPTABLE                         R56 K134 [{["eventName"] = "CAPToolConfirmationShown", ["backends"], ["description"] = "Tool confirmation dialog shown event with request ID, tool name, and warning message.", ["lastUpdated"]}]
      612 SETTABLEKS                       R32 R56 K58 ["backends"]
      614 NEWTABLE                         R57 0 3
      616 LOADN                            R58 25
      617 LOADN                            R59 9
      618 LOADN                            R60 19
      619 SETLIST                          R57 R58 3 [1]
      621 SETTABLEKS                       R57 R56 K61 ["lastUpdated"]
      623 CALL                             R55 1 1
      624 GETIMPORT                        R56 K51 [table.freeze]
      626 DUPTABLE                         R57 K137 [{["eventName"] = "CAPToolConfirmationResult", ["backends"], ["description"] = "Tool confirmation dialog result event with request ID and user choice.", ["lastUpdated"]}]
      627 SETTABLEKS                       R32 R57 K58 ["backends"]
      629 NEWTABLE                         R58 0 3
      631 LOADN                            R59 25
      632 LOADN                            R60 9
      633 LOADN                            R61 19
      634 SETLIST                          R58 R59 3 [1]
      636 SETTABLEKS                       R58 R57 K61 ["lastUpdated"]
      638 CALL                             R56 1 1
      639 GETIMPORT                        R57 K51 [table.freeze]
      641 DUPTABLE                         R58 K140 [{["eventName"] = "CAPExternalAPIError", ["backends"], ["description"] = "External LLM API error event with request ID, model, and HTTP status code.", ["lastUpdated"]}]
      642 SETTABLEKS                       R32 R58 K58 ["backends"]
      644 NEWTABLE                         R59 0 3
      646 LOADN                            R60 25
      647 LOADN                            R61 12
      648 LOADN                            R62 16
      649 SETLIST                          R59 R60 3 [1]
      651 SETTABLEKS                       R59 R58 K61 ["lastUpdated"]
      653 CALL                             R57 1 1
      654 GETIMPORT                        R58 K51 [table.freeze]
      656 DUPTABLE                         R59 K143 [{["eventName"] = "CAPMeshGenActivated", ["backends"], ["description"] = "Count of MeshGen tool activations.", ["lastUpdated"]}]
      657 NEWTABLE                         R60 0 1
      659 GETTABLEKS                       R61 R9 K52 ["Backends"]
      661 GETTABLEKS                       R61 R61 K64 ["RobloxTelemetryCounter"]
      663 SETLIST                          R60 R61 1 [1]
      665 SETTABLEKS                       R60 R59 K58 ["backends"]
      667 NEWTABLE                         R60 0 3
      669 LOADN                            R61 26
      670 LOADN                            R62 2
      671 LOADN                            R63 6
      672 SETLIST                          R60 R61 3 [1]
      674 SETTABLEKS                       R60 R59 K61 ["lastUpdated"]
      676 CALL                             R58 1 1
      677 GETIMPORT                        R59 K51 [table.freeze]
      679 DUPTABLE                         R60 K146 [{["eventName"] = "CAPMeshGenCompletedSuccess", ["backends"], ["description"] = "Count of successful MeshGen completions.", ["lastUpdated"]}]
      680 NEWTABLE                         R61 0 1
      682 GETTABLEKS                       R62 R9 K52 ["Backends"]
      684 GETTABLEKS                       R62 R62 K64 ["RobloxTelemetryCounter"]
      686 SETLIST                          R61 R62 1 [1]
      688 SETTABLEKS                       R61 R60 K58 ["backends"]
      690 NEWTABLE                         R61 0 3
      692 LOADN                            R62 26
      693 LOADN                            R63 2
      694 LOADN                            R64 6
      695 SETLIST                          R61 R62 3 [1]
      697 SETTABLEKS                       R61 R60 K61 ["lastUpdated"]
      699 CALL                             R59 1 1
      700 GETIMPORT                        R60 K51 [table.freeze]
      702 DUPTABLE                         R61 K149 [{["eventName"] = "CAPMeshGenCompletedFailure", ["backends"], ["description"] = "Count of failed MeshGen completions.", ["lastUpdated"]}]
      703 NEWTABLE                         R62 0 1
      705 GETTABLEKS                       R63 R9 K52 ["Backends"]
      707 GETTABLEKS                       R63 R63 K64 ["RobloxTelemetryCounter"]
      709 SETLIST                          R62 R63 1 [1]
      711 SETTABLEKS                       R62 R61 K58 ["backends"]
      713 NEWTABLE                         R62 0 3
      715 LOADN                            R63 26
      716 LOADN                            R64 2
      717 LOADN                            R65 6
      718 SETLIST                          R62 R63 3 [1]
      720 SETTABLEKS                       R62 R61 K61 ["lastUpdated"]
      722 CALL                             R60 1 1
      723 GETIMPORT                        R61 K51 [table.freeze]
      725 DUPTABLE                         R62 K152 [{["eventName"] = "CAPMeshGenCompleted", ["backends"], ["description"] = "MeshGen generation completed event with details.", ["lastUpdated"]}]
      726 SETTABLEKS                       R32 R62 K58 ["backends"]
      728 NEWTABLE                         R63 0 3
      730 LOADN                            R64 26
      731 LOADN                            R65 2
      732 LOADN                            R66 6
      733 SETLIST                          R63 R64 3 [1]
      735 SETTABLEKS                       R63 R62 K61 ["lastUpdated"]
      737 CALL                             R61 1 1
      738 GETIMPORT                        R62 K51 [table.freeze]
      740 DUPTABLE                         R63 K155 [{["eventName"] = "CAPMeshGenPublishedAssetsSuccess", ["backends"], ["description"] = "Count of successful MeshGen asset publications.", ["lastUpdated"]}]
      741 NEWTABLE                         R64 0 1
      743 GETTABLEKS                       R65 R9 K52 ["Backends"]
      745 GETTABLEKS                       R65 R65 K64 ["RobloxTelemetryCounter"]
      747 SETLIST                          R64 R65 1 [1]
      749 SETTABLEKS                       R64 R63 K58 ["backends"]
      751 NEWTABLE                         R64 0 3
      753 LOADN                            R65 26
      754 LOADN                            R66 2
      755 LOADN                            R67 6
      756 SETLIST                          R64 R65 3 [1]
      758 SETTABLEKS                       R64 R63 K61 ["lastUpdated"]
      760 CALL                             R62 1 1
      761 GETIMPORT                        R63 K51 [table.freeze]
      763 DUPTABLE                         R64 K158 [{["eventName"] = "CAPMeshGenPublishedAssetsFailure", ["backends"], ["description"] = "Count of failed MeshGen asset publications.", ["lastUpdated"]}]
      764 NEWTABLE                         R65 0 1
      766 GETTABLEKS                       R66 R9 K52 ["Backends"]
      768 GETTABLEKS                       R66 R66 K64 ["RobloxTelemetryCounter"]
      770 SETLIST                          R65 R66 1 [1]
      772 SETTABLEKS                       R65 R64 K58 ["backends"]
      774 NEWTABLE                         R65 0 3
      776 LOADN                            R66 26
      777 LOADN                            R67 2
      778 LOADN                            R68 6
      779 SETLIST                          R65 R66 3 [1]
      781 SETTABLEKS                       R65 R64 K61 ["lastUpdated"]
      783 CALL                             R63 1 1
      784 GETIMPORT                        R64 K51 [table.freeze]
      786 DUPTABLE                         R65 K161 [{["eventName"] = "CAPMeshGenPublishedAssets", ["backends"], ["description"] = "MeshGen assets published event with details.", ["lastUpdated"]}]
      787 SETTABLEKS                       R32 R65 K58 ["backends"]
      789 NEWTABLE                         R66 0 3
      791 LOADN                            R67 26
      792 LOADN                            R68 2
      793 LOADN                            R69 6
      794 SETLIST                          R66 R67 3 [1]
      796 SETTABLEKS                       R66 R65 K61 ["lastUpdated"]
      798 CALL                             R64 1 1
      799 GETIMPORT                        R65 K51 [table.freeze]
      801 DUPTABLE                         R66 K164 [{["eventName"] = "CAPMeshGenMeshInsertedSuccess", ["backends"], ["description"] = "Count of successful MeshGen mesh insertions.", ["lastUpdated"]}]
      802 NEWTABLE                         R67 0 1
      804 GETTABLEKS                       R68 R9 K52 ["Backends"]
      806 GETTABLEKS                       R68 R68 K64 ["RobloxTelemetryCounter"]
      808 SETLIST                          R67 R68 1 [1]
      810 SETTABLEKS                       R67 R66 K58 ["backends"]
      812 NEWTABLE                         R67 0 3
      814 LOADN                            R68 26
      815 LOADN                            R69 2
      816 LOADN                            R70 6
      817 SETLIST                          R67 R68 3 [1]
      819 SETTABLEKS                       R67 R66 K61 ["lastUpdated"]
      821 CALL                             R65 1 1
      822 GETIMPORT                        R66 K51 [table.freeze]
      824 DUPTABLE                         R67 K167 [{["eventName"] = "CAPMeshGenMeshInsertedFailure", ["backends"], ["description"] = "Count of failed MeshGen mesh insertions.", ["lastUpdated"]}]
      825 NEWTABLE                         R68 0 1
      827 GETTABLEKS                       R69 R9 K52 ["Backends"]
      829 GETTABLEKS                       R69 R69 K64 ["RobloxTelemetryCounter"]
      831 SETLIST                          R68 R69 1 [1]
      833 SETTABLEKS                       R68 R67 K58 ["backends"]
      835 NEWTABLE                         R68 0 3
      837 LOADN                            R69 26
      838 LOADN                            R70 2
      839 LOADN                            R71 6
      840 SETLIST                          R68 R69 3 [1]
      842 SETTABLEKS                       R68 R67 K61 ["lastUpdated"]
      844 CALL                             R66 1 1
      845 GETIMPORT                        R67 K51 [table.freeze]
      847 DUPTABLE                         R68 K170 [{["eventName"] = "CAPMeshGenMeshInserted", ["backends"], ["description"] = "MeshGen mesh inserted event with details.", ["lastUpdated"]}]
      848 SETTABLEKS                       R32 R68 K58 ["backends"]
      850 NEWTABLE                         R69 0 3
      852 LOADN                            R70 26
      853 LOADN                            R71 2
      854 LOADN                            R72 6
      855 SETLIST                          R69 R70 3 [1]
      857 SETTABLEKS                       R69 R68 K61 ["lastUpdated"]
      859 CALL                             R67 1 1
      860 GETIMPORT                        R68 K51 [table.freeze]
      862 DUPTABLE                         R69 K172 [{["eventName"], ["backends"], ["description"] = "Count of PrimitiveGen completions with success status.", ["lastUpdated"]}]
      863 LOADK                            R70 K173 ["StudioAssistantPrimitiveGenCompletedCount"]
      864 SETTABLEKS                       R70 R69 K57 ["eventName"]
      866 NEWTABLE                         R70 0 1
      868 GETTABLEKS                       R71 R9 K52 ["Backends"]
      870 GETTABLEKS                       R71 R71 K64 ["RobloxTelemetryCounter"]
      872 SETLIST                          R70 R71 1 [1]
      874 SETTABLEKS                       R70 R69 K58 ["backends"]
      876 NEWTABLE                         R70 0 3
      878 LOADN                            R71 26
      879 LOADN                            R72 3
      880 LOADN                            R73 12
      881 SETLIST                          R70 R71 3 [1]
      883 SETTABLEKS                       R70 R69 K61 ["lastUpdated"]
      885 CALL                             R68 1 1
      886 GETIMPORT                        R69 K51 [table.freeze]
      888 DUPTABLE                         R70 K175 [{["eventName"], ["backends"], ["description"] = "PrimitiveGen completion event with generation, prompt, render latency, and dependency details.", ["lastUpdated"]}]
      889 LOADK                            R71 K176 ["StudioAssistantPrimitiveGenCompleted"]
      890 SETTABLEKS                       R71 R70 K57 ["eventName"]
      892 SETTABLEKS                       R32 R70 K58 ["backends"]
      894 NEWTABLE                         R71 0 3
      896 LOADN                            R72 26
      897 LOADN                            R73 3
      898 LOADN                            R74 12
      899 SETLIST                          R71 R72 3 [1]
      901 SETTABLEKS                       R71 R70 K61 ["lastUpdated"]
      903 CALL                             R69 1 1
      904 GETIMPORT                        R70 K51 [table.freeze]
      906 DUPTABLE                         R71 K178 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call started.", ["lastUpdated"]}]
      907 LOADK                            R72 K179 ["StudioAssistantAvatarAutoSetupRequested"]
      908 SETTABLEKS                       R72 R71 K57 ["eventName"]
      910 SETTABLEKS                       R32 R71 K58 ["backends"]
      912 NEWTABLE                         R72 0 3
      914 LOADN                            R73 26
      915 LOADN                            R74 7
      916 LOADN                            R75 22
      917 SETLIST                          R72 R73 3 [1]
      919 SETTABLEKS                       R72 R71 K61 ["lastUpdated"]
      921 CALL                             R70 1 1
      922 GETIMPORT                        R71 K51 [table.freeze]
      924 DUPTABLE                         R72 K181 [{["eventName"], ["backends"], ["description"] = "Auto-setup options used for an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      925 LOADK                            R73 K182 ["StudioAssistantAvatarAutoSetupOptions"]
      926 SETTABLEKS                       R73 R72 K57 ["eventName"]
      928 SETTABLEKS                       R32 R72 K58 ["backends"]
      930 NEWTABLE                         R73 0 3
      932 LOADN                            R74 26
      933 LOADN                            R75 7
      934 LOADN                            R76 22
      935 SETLIST                          R73 R74 3 [1]
      937 SETTABLEKS                       R73 R72 K61 ["lastUpdated"]
      939 CALL                             R71 1 1
      940 GETIMPORT                        R72 K51 [table.freeze]
      942 DUPTABLE                         R73 K184 [{["eventName"], ["backends"], ["description"] = "Engine assigned a job id to an MCP `auto_setup_avatar` call.", ["lastUpdated"]}]
      943 LOADK                            R74 K185 ["StudioAssistantAvatarAutoSetupJobInitialized"]
      944 SETTABLEKS                       R74 R73 K57 ["eventName"]
      946 SETTABLEKS                       R32 R73 K58 ["backends"]
      948 NEWTABLE                         R74 0 3
      950 LOADN                            R75 26
      951 LOADN                            R76 7
      952 LOADN                            R77 22
      953 SETLIST                          R74 R75 3 [1]
      955 SETTABLEKS                       R74 R73 K61 ["lastUpdated"]
      957 CALL                             R72 1 1
      958 GETIMPORT                        R73 K51 [table.freeze]
      960 DUPTABLE                         R74 K187 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call completed successfully.", ["lastUpdated"]}]
      961 LOADK                            R75 K188 ["StudioAssistantAvatarAutoSetupFinish"]
      962 SETTABLEKS                       R75 R74 K57 ["eventName"]
      964 SETTABLEKS                       R32 R74 K58 ["backends"]
      966 NEWTABLE                         R75 0 3
      968 LOADN                            R76 26
      969 LOADN                            R77 7
      970 LOADN                            R78 22
      971 SETLIST                          R75 R76 3 [1]
      973 SETTABLEKS                       R75 R74 K61 ["lastUpdated"]
      975 CALL                             R73 1 1
      976 GETIMPORT                        R74 K51 [table.freeze]
      978 DUPTABLE                         R75 K190 [{["eventName"], ["backends"], ["description"] = "MCP `auto_setup_avatar` tool call failed before returning a model.", ["lastUpdated"]}]
      979 LOADK                            R76 K191 ["StudioAssistantAvatarAutoSetupFailure"]
      980 SETTABLEKS                       R76 R75 K57 ["eventName"]
      982 SETTABLEKS                       R32 R75 K58 ["backends"]
      984 NEWTABLE                         R76 0 3
      986 LOADN                            R77 26
      987 LOADN                            R78 7
      988 LOADN                            R79 22
      989 SETLIST                          R76 R77 3 [1]
      991 SETTABLEKS                       R76 R75 K61 ["lastUpdated"]
      993 CALL                             R74 1 1
      994 GETIMPORT                        R75 K51 [table.freeze]
      996 DUPTABLE                         R76 K193 [{["eventName"], ["backends"], ["description"] = "Count of successful MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
      997 LOADK                            R77 K194 ["StudioAssistantAvatarAutoSetupFinishCount"]
      998 SETTABLEKS                       R77 R76 K57 ["eventName"]
     1000 NEWTABLE                         R77 0 1
     1002 GETTABLEKS                       R78 R9 K52 ["Backends"]
     1004 GETTABLEKS                       R78 R78 K64 ["RobloxTelemetryCounter"]
     1006 SETLIST                          R77 R78 1 [1]
     1008 SETTABLEKS                       R77 R76 K58 ["backends"]
     1010 NEWTABLE                         R77 0 3
     1012 LOADN                            R78 26
     1013 LOADN                            R79 7
     1014 LOADN                            R80 29
     1015 SETLIST                          R77 R78 3 [1]
     1017 SETTABLEKS                       R77 R76 K61 ["lastUpdated"]
     1019 CALL                             R75 1 1
     1020 GETIMPORT                        R76 K51 [table.freeze]
     1022 DUPTABLE                         R77 K196 [{["eventName"], ["backends"], ["description"] = "Count of failed MCP `auto_setup_avatar` tool calls.", ["lastUpdated"]}]
     1023 LOADK                            R78 K197 ["StudioAssistantAvatarAutoSetupFailureCount"]
     1024 SETTABLEKS                       R78 R77 K57 ["eventName"]
     1026 NEWTABLE                         R78 0 1
     1028 GETTABLEKS                       R79 R9 K52 ["Backends"]
     1030 GETTABLEKS                       R79 R79 K64 ["RobloxTelemetryCounter"]
     1032 SETLIST                          R78 R79 1 [1]
     1034 SETTABLEKS                       R78 R77 K58 ["backends"]
     1036 NEWTABLE                         R78 0 3
     1038 LOADN                            R79 26
     1039 LOADN                            R80 7
     1040 LOADN                            R81 29
     1041 SETLIST                          R78 R79 3 [1]
     1043 SETTABLEKS                       R78 R77 K61 ["lastUpdated"]
     1045 CALL                             R76 1 1
     1046 GETIMPORT                        R77 K51 [table.freeze]
     1048 DUPTABLE                         R78 K199 [{["eventName"], ["backends"], ["description"] = "Count of user clicks on the 'refresh' button of the suggest-segmentation row, labelled by modelFlow and inputFormat.", ["lastUpdated"]}]
     1049 LOADK                            R79 K200 ["StudioAssistantGen3DSegmentationRefresh"]
     1050 SETTABLEKS                       R79 R78 K57 ["eventName"]
     1052 NEWTABLE                         R79 0 1
     1054 GETTABLEKS                       R80 R9 K52 ["Backends"]
     1056 GETTABLEKS                       R80 R80 K64 ["RobloxTelemetryCounter"]
     1058 SETLIST                          R79 R80 1 [1]
     1060 SETTABLEKS                       R79 R78 K58 ["backends"]
     1062 NEWTABLE                         R79 0 3
     1064 LOADN                            R80 26
     1065 LOADN                            R81 6
     1066 LOADN                            R82 9
     1067 SETLIST                          R79 R80 3 [1]
     1069 SETTABLEKS                       R79 R78 K61 ["lastUpdated"]
     1071 CALL                             R77 1 1
     1072 GETIMPORT                        R78 K51 [table.freeze]
     1074 DUPTABLE                         R79 K202 [{["eventName"], ["backends"], ["description"] = "Fired when a tagged AI-generated instance is destroyed within the current Studio session. Join with the inserted event on generationId to compute % deleted within session.", ["lastUpdated"]}]
     1075 LOADK                            R80 K203 ["StudioAssistantGen3DInstanceDeleted"]
     1076 SETTABLEKS                       R80 R79 K57 ["eventName"]
     1078 SETTABLEKS                       R32 R79 K58 ["backends"]
     1080 NEWTABLE                         R80 0 3
     1082 LOADN                            R81 26
     1083 LOADN                            R82 6
     1084 LOADN                            R83 9
     1085 SETLIST                          R80 R81 3 [1]
     1087 SETTABLEKS                       R80 R79 K61 ["lastUpdated"]
     1089 CALL                             R78 1 1
     1090 GETIMPORT                        R79 K51 [table.freeze]
     1092 DUPTABLE                         R80 K205 [{["eventName"], ["backends"], ["description"] = "Fired once per image-preview batch (MeshGen/PrimitiveGen picker) with the option ids shown to the user.", ["lastUpdated"]}]
     1093 LOADK                            R81 K206 ["StudioAssistantGen3DImageImpression"]
     1094 SETTABLEKS                       R81 R80 K57 ["eventName"]
     1096 SETTABLEKS                       R32 R80 K58 ["backends"]
     1098 NEWTABLE                         R81 0 3
     1100 LOADN                            R82 26
     1101 LOADN                            R83 7
     1102 LOADN                            R84 30
     1103 SETLIST                          R81 R82 3 [1]
     1105 SETTABLEKS                       R81 R80 K61 ["lastUpdated"]
     1107 CALL                             R79 1 1
     1108 GETIMPORT                        R80 K51 [table.freeze]
     1110 DUPTABLE                         R81 K208 [{["eventName"], ["backends"], ["description"] = "Count of image-preview picker actions (select/refresh/refine/back), labelled by action and modelFlow.", ["lastUpdated"]}]
     1111 LOADK                            R82 K209 ["StudioAssistantGen3DImageActionCount"]
     1112 SETTABLEKS                       R82 R81 K57 ["eventName"]
     1114 NEWTABLE                         R82 0 1
     1116 GETTABLEKS                       R83 R9 K52 ["Backends"]
     1118 GETTABLEKS                       R83 R83 K64 ["RobloxTelemetryCounter"]
     1120 SETLIST                          R82 R83 1 [1]
     1122 SETTABLEKS                       R82 R81 K58 ["backends"]
     1124 NEWTABLE                         R82 0 3
     1126 LOADN                            R83 26
     1127 LOADN                            R84 7
     1128 LOADN                            R85 30
     1129 SETLIST                          R82 R83 3 [1]
     1131 SETTABLEKS                       R82 R81 K61 ["lastUpdated"]
     1133 CALL                             R80 1 1
     1134 GETIMPORT                        R81 K51 [table.freeze]
     1136 DUPTABLE                         R82 K211 [{["eventName"], ["backends"], ["description"] = "Fired for each user action taken on the image-preview picker (MeshGen/PrimitiveGen).", ["lastUpdated"]}]
     1137 LOADK                            R83 K212 ["StudioAssistantGen3DImageAction"]
     1138 SETTABLEKS                       R83 R82 K57 ["eventName"]
     1140 SETTABLEKS                       R32 R82 K58 ["backends"]
     1142 NEWTABLE                         R83 0 3
     1144 LOADN                            R84 26
     1145 LOADN                            R85 7
     1146 LOADN                            R86 30
     1147 SETLIST                          R83 R84 3 [1]
     1149 SETTABLEKS                       R83 R82 K61 ["lastUpdated"]
     1151 CALL                             R81 1 1
     1152 GETIMPORT                        R82 K51 [table.freeze]
     1154 DUPTABLE                         R83 K214 [{["eventName"], ["backends"], ["description"] = "Fired per distinct generationId still tagged in the DataModel when a place publish starts. Shared across MeshGen, PrimitiveGen, TextureGen, SegmentMesh, LayoutGen, and future Gen3D-style tools. modelFlow is mesh, procedural, texture1 (rbx-texture-1), texture2 (rbx-texture-2), segment (SegmentMesh), or scene (LayoutGen).", ["lastUpdated"]}]
     1155 LOADK                            R84 K215 ["StudioAssistantGen3DAssetPublished"]
     1156 SETTABLEKS                       R84 R83 K57 ["eventName"]
     1158 SETTABLEKS                       R32 R83 K58 ["backends"]
     1160 NEWTABLE                         R84 0 3
     1162 LOADN                            R85 26
     1163 LOADN                            R86 10
     1164 LOADN                            R87 27
     1165 SETLIST                          R84 R85 3 [1]
     1167 SETTABLEKS                       R84 R83 K61 ["lastUpdated"]
     1169 CALL                             R82 1 1
     1170 GETIMPORT                        R83 K51 [table.freeze]
     1172 DUPTABLE                         R84 K217 [{["eventName"], ["backends"], ["description"] = "Count of AI-generated assets still present at publish time, labelled by modelFlow.", ["lastUpdated"]}]
     1173 LOADK                            R85 K218 ["StudioAssistantGen3DAssetPublishedCount"]
     1174 SETTABLEKS                       R85 R84 K57 ["eventName"]
     1176 NEWTABLE                         R85 0 1
     1178 GETTABLEKS                       R86 R9 K52 ["Backends"]
     1180 GETTABLEKS                       R86 R86 K64 ["RobloxTelemetryCounter"]
     1182 SETLIST                          R85 R86 1 [1]
     1184 SETTABLEKS                       R85 R84 K58 ["backends"]
     1186 NEWTABLE                         R85 0 3
     1188 LOADN                            R86 26
     1189 LOADN                            R87 10
     1190 LOADN                            R88 27
     1191 SETLIST                          R85 R86 3 [1]
     1193 SETTABLEKS                       R85 R84 K61 ["lastUpdated"]
     1195 CALL                             R83 1 1
     1196 GETIMPORT                        R84 K51 [table.freeze]
     1198 DUPTABLE                         R85 K220 [{["eventName"], ["backends"], ["description"] = "Fired once per texture generation request (success, failure, or cancel) with the model and camera source used.", ["lastUpdated"]}]
     1199 LOADK                            R86 K221 ["StudioAssistantGen3DTextureGenCompleted"]
     1200 SETTABLEKS                       R86 R85 K57 ["eventName"]
     1202 SETTABLEKS                       R32 R85 K58 ["backends"]
     1204 NEWTABLE                         R86 0 3
     1206 LOADN                            R87 26
     1207 LOADN                            R88 10
     1208 LOADN                            R89 1
     1209 SETLIST                          R86 R87 3 [1]
     1211 SETTABLEKS                       R86 R85 K61 ["lastUpdated"]
     1213 CALL                             R84 1 1
     1214 GETIMPORT                        R85 K51 [table.freeze]
     1216 DUPTABLE                         R86 K223 [{["eventName"], ["backends"], ["description"] = "Count of texture generation requests, labelled by success, failureReason, model, and cameraSource.", ["lastUpdated"]}]
     1217 LOADK                            R87 K224 ["StudioAssistantGen3DTextureGenCompletedCount"]
     1218 SETTABLEKS                       R87 R86 K57 ["eventName"]
     1220 NEWTABLE                         R87 0 1
     1222 GETTABLEKS                       R88 R9 K52 ["Backends"]
     1224 GETTABLEKS                       R88 R88 K64 ["RobloxTelemetryCounter"]
     1226 SETLIST                          R87 R88 1 [1]
     1228 SETTABLEKS                       R87 R86 K58 ["backends"]
     1230 NEWTABLE                         R87 0 3
     1232 LOADN                            R88 26
     1233 LOADN                            R89 10
     1234 LOADN                            R90 1
     1235 SETLIST                          R87 R88 3 [1]
     1237 SETTABLEKS                       R87 R86 K61 ["lastUpdated"]
     1239 CALL                             R85 1 1
     1240 GETIMPORT                        R86 K51 [table.freeze]
     1242 DUPTABLE                         R87 K226 [{["eventName"], ["backends"], ["description"] = "Fired once per scene generation request (success, failure, or cancel). requestId equals the tool call id for Assistant and MCP requests, jobId is the gateway job id, and requestSource is Assistant, MCP, or Gen3dPanel.", ["lastUpdated"]}]
     1243 LOADK                            R88 K227 ["StudioAssistantGen3DSceneGenCompleted"]
     1244 SETTABLEKS                       R88 R87 K57 ["eventName"]
     1246 SETTABLEKS                       R32 R87 K58 ["backends"]
     1248 NEWTABLE                         R88 0 3
     1250 LOADN                            R89 26
     1251 LOADN                            R90 11
     1252 LOADN                            R91 6
     1253 SETLIST                          R88 R89 3 [1]
     1255 SETTABLEKS                       R88 R87 K61 ["lastUpdated"]
     1257 CALL                             R86 1 1
     1258 GETIMPORT                        R87 K51 [table.freeze]
     1260 DUPTABLE                         R88 K229 [{["eventName"], ["backends"], ["description"] = "Count of scene generation requests, labelled by success, failureReason, and requestSource.", ["lastUpdated"]}]
     1261 LOADK                            R89 K230 ["StudioAssistantGen3DSceneGenCompletedCount"]
     1262 SETTABLEKS                       R89 R88 K57 ["eventName"]
     1264 NEWTABLE                         R89 0 1
     1266 GETTABLEKS                       R90 R9 K52 ["Backends"]
     1268 GETTABLEKS                       R90 R90 K64 ["RobloxTelemetryCounter"]
     1270 SETLIST                          R89 R90 1 [1]
     1272 SETTABLEKS                       R89 R88 K58 ["backends"]
     1274 NEWTABLE                         R89 0 3
     1276 LOADN                            R90 26
     1277 LOADN                            R91 11
     1278 LOADN                            R92 6
     1279 SETLIST                          R89 R90 3 [1]
     1281 SETTABLEKS                       R89 R88 K61 ["lastUpdated"]
     1283 CALL                             R87 1 1
     1284 GETIMPORT                        R88 K51 [table.freeze]
     1286 DUPTABLE                         R89 K232 [{["eventName"], ["backends"], ["description"] = "Fired once per animation generation request (success or failure) with its mode, entry point, and rig.", ["lastUpdated"]}]
     1287 LOADK                            R90 K233 ["StudioAssistantAnimationGenCompleted"]
     1288 SETTABLEKS                       R90 R89 K57 ["eventName"]
     1290 SETTABLEKS                       R32 R89 K58 ["backends"]
     1292 NEWTABLE                         R90 0 3
     1294 LOADN                            R91 26
     1295 LOADN                            R92 10
     1296 LOADN                            R93 23
     1297 SETLIST                          R90 R91 3 [1]
     1299 SETTABLEKS                       R90 R89 K61 ["lastUpdated"]
     1301 CALL                             R88 1 1
     1302 GETIMPORT                        R89 K51 [table.freeze]
     1304 DUPTABLE                         R90 K235 [{["eventName"], ["backends"], ["description"] = "Count of animation generation requests, labelled by generationMode, entryPoint, success, and failureReason.", ["lastUpdated"]}]
     1305 LOADK                            R91 K236 ["StudioAssistantAnimationGenCompletedCount"]
     1306 SETTABLEKS                       R91 R90 K57 ["eventName"]
     1308 NEWTABLE                         R91 0 1
     1310 GETTABLEKS                       R92 R9 K52 ["Backends"]
     1312 GETTABLEKS                       R92 R92 K64 ["RobloxTelemetryCounter"]
     1314 SETLIST                          R91 R92 1 [1]
     1316 SETTABLEKS                       R91 R90 K58 ["backends"]
     1318 NEWTABLE                         R91 0 3
     1320 LOADN                            R92 26
     1321 LOADN                            R93 10
     1322 LOADN                            R94 23
     1323 SETLIST                          R91 R92 3 [1]
     1325 SETTABLEKS                       R91 R90 K61 ["lastUpdated"]
     1327 CALL                             R89 1 1
     1328 GETIMPORT                        R90 K51 [table.freeze]
     1330 DUPTABLE                         R91 K238 [{["eventName"], ["backends"], ["description"] = "Fired when an animation edit session ends, with its outcome and a tally of the pose edits made.", ["lastUpdated"]}]
     1331 LOADK                            R92 K239 ["StudioAssistantAnimationGenEditSession"]
     1332 SETTABLEKS                       R92 R91 K57 ["eventName"]
     1334 SETTABLEKS                       R32 R91 K58 ["backends"]
     1336 NEWTABLE                         R92 0 3
     1338 LOADN                            R93 26
     1339 LOADN                            R94 10
     1340 LOADN                            R95 23
     1341 SETLIST                          R92 R93 3 [1]
     1343 SETTABLEKS                       R92 R91 K61 ["lastUpdated"]
     1345 CALL                             R90 1 1
     1346 GETIMPORT                        R91 K51 [table.freeze]
     1348 DUPTABLE                         R92 K241 [{["eventName"], ["backends"], ["description"] = "Fired when a generated animation is published, opened in the Animation Clip Editor, or submitted from the upscale form.", ["lastUpdated"]}]
     1349 LOADK                            R93 K242 ["StudioAssistantAnimationGenClipAction"]
     1350 SETTABLEKS                       R93 R92 K57 ["eventName"]
     1352 SETTABLEKS                       R32 R92 K58 ["backends"]
     1354 NEWTABLE                         R93 0 3
     1356 LOADN                            R94 26
     1357 LOADN                            R95 10
     1358 LOADN                            R96 23
     1359 SETLIST                          R93 R94 3 [1]
     1361 SETTABLEKS                       R93 R92 K61 ["lastUpdated"]
     1363 CALL                             R91 1 1
     1364 GETIMPORT                        R92 K51 [table.freeze]
     1366 DUPTABLE                         R93 K244 [{["eventName"], ["backends"], ["description"] = "Count of generated animation clip actions, labelled by action.", ["lastUpdated"]}]
     1367 LOADK                            R94 K245 ["StudioAssistantAnimationGenClipActionCount"]
     1368 SETTABLEKS                       R94 R93 K57 ["eventName"]
     1370 NEWTABLE                         R94 0 1
     1372 GETTABLEKS                       R95 R9 K52 ["Backends"]
     1374 GETTABLEKS                       R95 R95 K64 ["RobloxTelemetryCounter"]
     1376 SETLIST                          R94 R95 1 [1]
     1378 SETTABLEKS                       R94 R93 K58 ["backends"]
     1380 NEWTABLE                         R94 0 3
     1382 LOADN                            R95 26
     1383 LOADN                            R96 10
     1384 LOADN                            R97 23
     1385 SETLIST                          R94 R95 3 [1]
     1387 SETTABLEKS                       R94 R93 K61 ["lastUpdated"]
     1389 CALL                             R92 1 1
     1390 GETIMPORT                        R93 K51 [table.freeze]
     1392 DUPTABLE                         R94 K247 [{["eventName"], ["backends"], ["description"] = "Integration event with action, label, and URL.", ["lastUpdated"]}]
     1393 LOADK                            R95 K248 ["StudioAssistantIntegrationAction"]
     1394 SETTABLEKS                       R95 R94 K57 ["eventName"]
     1396 SETTABLEKS                       R32 R94 K58 ["backends"]
     1398 NEWTABLE                         R95 0 3
     1400 LOADN                            R96 26
     1401 LOADN                            R97 2
     1402 LOADN                            R98 3
     1403 SETLIST                          R95 R96 3 [1]
     1405 SETTABLEKS                       R95 R94 K61 ["lastUpdated"]
     1407 CALL                             R93 1 1
     1408 GETIMPORT                        R94 K51 [table.freeze]
     1410 DUPTABLE                         R95 K250 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1411 LOADK                            R96 K251 ["StudioAssistantExternalServerConnectedEvent"]
     1412 SETTABLEKS                       R96 R95 K57 ["eventName"]
     1414 SETTABLEKS                       R32 R95 K58 ["backends"]
     1416 NEWTABLE                         R96 0 3
     1418 LOADN                            R97 26
     1419 LOADN                            R98 2
     1420 LOADN                            R99 25
     1421 SETLIST                          R96 R97 3 [1]
     1423 SETTABLEKS                       R96 R95 K61 ["lastUpdated"]
     1425 CALL                             R94 1 1
     1426 GETIMPORT                        R95 K51 [table.freeze]
     1428 DUPTABLE                         R96 K250 [{["eventName"], ["backends"], ["description"] = "External server connected event with session ID", ["lastUpdated"]}]
     1429 LOADK                            R97 K252 ["StudioAssistantExternalServerConnectedCounter"]
     1430 SETTABLEKS                       R97 R96 K57 ["eventName"]
     1432 NEWTABLE                         R97 0 1
     1434 GETTABLEKS                       R98 R9 K52 ["Backends"]
     1436 GETTABLEKS                       R98 R98 K64 ["RobloxTelemetryCounter"]
     1438 SETLIST                          R97 R98 1 [1]
     1440 SETTABLEKS                       R97 R96 K58 ["backends"]
     1442 NEWTABLE                         R97 0 3
     1444 LOADN                            R98 26
     1445 LOADN                            R99 2
     1446 LOADN                            R100 25
     1447 SETLIST                          R97 R98 3 [1]
     1449 SETTABLEKS                       R97 R96 K61 ["lastUpdated"]
     1451 CALL                             R95 1 1
     1452 GETIMPORT                        R96 K51 [table.freeze]
     1454 DUPTABLE                         R97 K254 [{["eventName"], ["backends"], ["description"] = "Studio read of the StudioMCP loopback token. outcome is ok, missing (no file), or threw.", ["lastUpdated"]}]
     1455 LOADK                            R98 K255 ["StudioAssistantMCPProxyTokenReadEvent"]
     1456 SETTABLEKS                       R98 R97 K57 ["eventName"]
     1458 SETTABLEKS                       R32 R97 K58 ["backends"]
     1460 NEWTABLE                         R98 0 3
     1462 LOADN                            R99 26
     1463 LOADN                            R100 9
     1464 LOADN                            R101 18
     1465 SETLIST                          R98 R99 3 [1]
     1467 SETTABLEKS                       R98 R97 K61 ["lastUpdated"]
     1469 CALL                             R96 1 1
     1470 GETIMPORT                        R97 K51 [table.freeze]
     1472 DUPTABLE                         R98 K257 [{["eventName"], ["backends"], ["description"] = "Count of StudioMCP loopback token reads, labelled by outcome (ok, missing, threw).", ["lastUpdated"]}]
     1473 LOADK                            R99 K258 ["StudioAssistantMCPProxyTokenReadCounter"]
     1474 SETTABLEKS                       R99 R98 K57 ["eventName"]
     1476 NEWTABLE                         R99 0 1
     1478 GETTABLEKS                       R100 R9 K52 ["Backends"]
     1480 GETTABLEKS                       R100 R100 K64 ["RobloxTelemetryCounter"]
     1482 SETLIST                          R99 R100 1 [1]
     1484 SETTABLEKS                       R99 R98 K58 ["backends"]
     1486 NEWTABLE                         R99 0 3
     1488 LOADN                            R100 26
     1489 LOADN                            R101 9
     1490 LOADN                            R102 18
     1491 SETLIST                          R99 R100 3 [1]
     1493 SETTABLEKS                       R99 R98 K61 ["lastUpdated"]
     1495 CALL                             R97 1 1
     1496 GETIMPORT                        R98 K51 [table.freeze]
     1498 DUPTABLE                         R99 K260 [{["eventName"], ["backends"], ["description"] = "StudioMCP proxy rejected the Studio WebSocket with 401. Logged once per rejection streak, with whether this Studio sends the token and the last token read outcome.", ["lastUpdated"]}]
     1499 LOADK                            R100 K261 ["StudioAssistantMCPProxyAuthRejectedEvent"]
     1500 SETTABLEKS                       R100 R99 K57 ["eventName"]
     1502 SETTABLEKS                       R32 R99 K58 ["backends"]
     1504 NEWTABLE                         R100 0 3
     1506 LOADN                            R101 26
     1507 LOADN                            R102 10
     1508 LOADN                            R103 2
     1509 SETLIST                          R100 R101 3 [1]
     1511 SETTABLEKS                       R100 R99 K61 ["lastUpdated"]
     1513 CALL                             R98 1 1
     1514 GETIMPORT                        R99 K51 [table.freeze]
     1516 DUPTABLE                         R100 K263 [{["eventName"], ["backends"], ["description"] = "Count of StudioMCP proxy 401 rejection streaks, labelled by whether this Studio sends the token.", ["lastUpdated"]}]
     1517 LOADK                            R101 K264 ["StudioAssistantMCPProxyAuthRejectedCounter"]
     1518 SETTABLEKS                       R101 R100 K57 ["eventName"]
     1520 NEWTABLE                         R101 0 1
     1522 GETTABLEKS                       R102 R9 K52 ["Backends"]
     1524 GETTABLEKS                       R102 R102 K64 ["RobloxTelemetryCounter"]
     1526 SETLIST                          R101 R102 1 [1]
     1528 SETTABLEKS                       R101 R100 K58 ["backends"]
     1530 NEWTABLE                         R101 0 3
     1532 LOADN                            R102 26
     1533 LOADN                            R103 10
     1534 LOADN                            R104 2
     1535 SETLIST                          R101 R102 3 [1]
     1537 SETTABLEKS                       R101 R100 K61 ["lastUpdated"]
     1539 CALL                             R99 1 1
     1540 GETIMPORT                        R100 K51 [table.freeze]
     1542 DUPTABLE                         R101 K267 [{["eventName"] = "CAPQuestionAnswerCompleted", ["backends"], ["description"] = "Question answer tool completed event with full question/answer context.", ["lastUpdated"]}]
     1543 SETTABLEKS                       R32 R101 K58 ["backends"]
     1545 NEWTABLE                         R102 0 3
     1547 LOADN                            R103 26
     1548 LOADN                            R104 4
     1549 LOADN                            R105 1
     1550 SETLIST                          R102 R103 3 [1]
     1552 SETTABLEKS                       R102 R101 K61 ["lastUpdated"]
     1554 CALL                             R100 1 1
     1555 GETIMPORT                        R101 K51 [table.freeze]
     1557 DUPTABLE                         R102 K269 [{["eventName"], ["backends"], ["description"] = "Count of question answer tool completions.", ["lastUpdated"]}]
     1558 LOADK                            R103 K270 ["StudioAssistantQuestionAnswerCompleted"]
     1559 SETTABLEKS                       R103 R102 K57 ["eventName"]
     1561 NEWTABLE                         R103 0 1
     1563 GETTABLEKS                       R104 R9 K52 ["Backends"]
     1565 GETTABLEKS                       R104 R104 K64 ["RobloxTelemetryCounter"]
     1567 SETLIST                          R103 R104 1 [1]
     1569 SETTABLEKS                       R103 R102 K58 ["backends"]
     1571 NEWTABLE                         R103 0 3
     1573 LOADN                            R104 26
     1574 LOADN                            R105 4
     1575 LOADN                            R106 1
     1576 SETLIST                          R103 R104 3 [1]
     1578 SETTABLEKS                       R103 R102 K61 ["lastUpdated"]
     1580 CALL                             R101 1 1
     1581 GETIMPORT                        R102 K51 [table.freeze]
     1583 DUPTABLE                         R103 K273 [{["eventName"] = "CAPPlanDecision", ["backends"], ["description"] = "Plan decision event with full plan context when user accepts or rejects a plan.", ["lastUpdated"]}]
     1584 SETTABLEKS                       R32 R103 K58 ["backends"]
     1586 NEWTABLE                         R104 0 3
     1588 LOADN                            R105 26
     1589 LOADN                            R106 4
     1590 LOADN                            R107 1
     1591 SETLIST                          R104 R105 3 [1]
     1593 SETTABLEKS                       R104 R103 K61 ["lastUpdated"]
     1595 CALL                             R102 1 1
     1596 GETIMPORT                        R103 K51 [table.freeze]
     1598 DUPTABLE                         R104 K275 [{["eventName"], ["backends"], ["description"] = "Count of plan decisions.", ["lastUpdated"]}]
     1599 LOADK                            R105 K276 ["StudioAssistantPlanDecision"]
     1600 SETTABLEKS                       R105 R104 K57 ["eventName"]
     1602 NEWTABLE                         R105 0 1
     1604 GETTABLEKS                       R106 R9 K52 ["Backends"]
     1606 GETTABLEKS                       R106 R106 K64 ["RobloxTelemetryCounter"]
     1608 SETLIST                          R105 R106 1 [1]
     1610 SETTABLEKS                       R105 R104 K58 ["backends"]
     1612 NEWTABLE                         R105 0 3
     1614 LOADN                            R106 26
     1615 LOADN                            R107 4
     1616 LOADN                            R108 1
     1617 SETLIST                          R105 R106 3 [1]
     1619 SETTABLEKS                       R105 R104 K61 ["lastUpdated"]
     1621 CALL                             R103 1 1
     1622 GETIMPORT                        R104 K51 [table.freeze]
     1624 DUPTABLE                         R105 K279 [{["eventName"] = "SBT_MaterialGeneratorSavedMaterial", ["backends"], ["description"] = "Counter to track number of saved materials", ["lastUpdated"]}]
     1625 NEWTABLE                         R106 0 1
     1627 GETTABLEKS                       R107 R9 K52 ["Backends"]
     1629 GETTABLEKS                       R107 R107 K64 ["RobloxTelemetryCounter"]
     1631 SETLIST                          R106 R107 1 [1]
     1633 SETTABLEKS                       R106 R105 K58 ["backends"]
     1635 NEWTABLE                         R106 0 3
     1637 LOADN                            R107 24
     1638 LOADN                            R108 10
     1639 LOADN                            R109 15
     1640 SETLIST                          R106 R107 3 [1]
     1642 SETTABLEKS                       R106 R105 K61 ["lastUpdated"]
     1644 CALL                             R104 1 1
     1645 GETIMPORT                        R105 K51 [table.freeze]
     1647 DUPTABLE                         R106 K281 [{["eventName"], ["backends"], ["description"] = "Thread created event with details.", ["lastUpdated"]}]
     1648 LOADK                            R107 K282 ["StudioAssistantThreadCreated"]
     1649 SETTABLEKS                       R107 R106 K57 ["eventName"]
     1651 SETTABLEKS                       R32 R106 K58 ["backends"]
     1653 NEWTABLE                         R107 0 3
     1655 LOADN                            R108 26
     1656 LOADN                            R109 3
     1657 LOADN                            R110 10
     1658 SETLIST                          R107 R108 3 [1]
     1660 SETTABLEKS                       R107 R106 K61 ["lastUpdated"]
     1662 CALL                             R105 1 1
     1663 GETIMPORT                        R106 K51 [table.freeze]
     1665 DUPTABLE                         R107 K284 [{["eventName"], ["backends"], ["description"] = "Thread named event with details.", ["lastUpdated"]}]
     1666 LOADK                            R108 K285 ["StudioAssistantThreadRenamed"]
     1667 SETTABLEKS                       R108 R107 K57 ["eventName"]
     1669 SETTABLEKS                       R32 R107 K58 ["backends"]
     1671 NEWTABLE                         R108 0 3
     1673 LOADN                            R109 26
     1674 LOADN                            R110 3
     1675 LOADN                            R111 10
     1676 SETLIST                          R108 R109 3 [1]
     1678 SETTABLEKS                       R108 R107 K61 ["lastUpdated"]
     1680 CALL                             R106 1 1
     1681 GETIMPORT                        R107 K51 [table.freeze]
     1683 DUPTABLE                         R108 K287 [{["eventName"], ["backends"], ["description"] = "Thread pinned changed event with details.", ["lastUpdated"]}]
     1684 LOADK                            R109 K288 ["StudioAssistantThreadPinnedChanged"]
     1685 SETTABLEKS                       R109 R108 K57 ["eventName"]
     1687 SETTABLEKS                       R32 R108 K58 ["backends"]
     1689 NEWTABLE                         R109 0 3
     1691 LOADN                            R110 26
     1692 LOADN                            R111 3
     1693 LOADN                            R112 10
     1694 SETLIST                          R109 R110 3 [1]
     1696 SETTABLEKS                       R109 R108 K61 ["lastUpdated"]
     1698 CALL                             R107 1 1
     1699 GETIMPORT                        R108 K51 [table.freeze]
     1701 DUPTABLE                         R109 K290 [{["eventName"], ["backends"], ["description"] = "Thread deleted event with details.", ["lastUpdated"]}]
     1702 LOADK                            R110 K291 ["StudioAssistantThreadDeleted"]
     1703 SETTABLEKS                       R110 R109 K57 ["eventName"]
     1705 SETTABLEKS                       R32 R109 K58 ["backends"]
     1707 NEWTABLE                         R110 0 3
     1709 LOADN                            R111 26
     1710 LOADN                            R112 3
     1711 LOADN                            R113 10
     1712 SETLIST                          R110 R111 3 [1]
     1714 SETTABLEKS                       R110 R109 K61 ["lastUpdated"]
     1716 CALL                             R108 1 1
     1717 GETIMPORT                        R109 K51 [table.freeze]
     1719 DUPTABLE                         R110 K293 [{["eventName"], ["backends"], ["description"] = "Thread duplicated event with details.", ["lastUpdated"]}]
     1720 LOADK                            R111 K294 ["StudioAssistantThreadDuplicated"]
     1721 SETTABLEKS                       R111 R110 K57 ["eventName"]
     1723 SETTABLEKS                       R32 R110 K58 ["backends"]
     1725 NEWTABLE                         R111 0 3
     1727 LOADN                            R112 26
     1728 LOADN                            R113 3
     1729 LOADN                            R114 10
     1730 SETLIST                          R111 R112 3 [1]
     1732 SETTABLEKS                       R111 R110 K61 ["lastUpdated"]
     1734 CALL                             R109 1 1
     1735 GETIMPORT                        R110 K51 [table.freeze]
     1737 DUPTABLE                         R111 K296 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer completed successfully.", ["lastUpdated"]}]
     1738 LOADK                            R112 K297 ["StudioAssistantCompactionSuccess"]
     1739 SETTABLEKS                       R112 R111 K57 ["eventName"]
     1741 SETTABLEKS                       R32 R111 K58 ["backends"]
     1743 NEWTABLE                         R112 0 3
     1745 LOADN                            R113 26
     1746 LOADN                            R114 4
     1747 LOADN                            R115 28
     1748 SETLIST                          R112 R113 3 [1]
     1750 SETTABLEKS                       R112 R111 K61 ["lastUpdated"]
     1752 CALL                             R110 1 1
     1753 GETIMPORT                        R111 K51 [table.freeze]
     1755 DUPTABLE                         R112 K299 [{["eventName"], ["backends"], ["description"] = "Count of successful compaction events.", ["lastUpdated"]}]
     1756 LOADK                            R113 K300 ["StudioAssistantCompactionSuccessCount"]
     1757 SETTABLEKS                       R113 R112 K57 ["eventName"]
     1759 NEWTABLE                         R113 0 1
     1761 GETTABLEKS                       R114 R9 K52 ["Backends"]
     1763 GETTABLEKS                       R114 R114 K64 ["RobloxTelemetryCounter"]
     1765 SETLIST                          R113 R114 1 [1]
     1767 SETTABLEKS                       R113 R112 K58 ["backends"]
     1769 NEWTABLE                         R113 0 3
     1771 LOADN                            R114 26
     1772 LOADN                            R115 4
     1773 LOADN                            R116 28
     1774 SETLIST                          R113 R114 3 [1]
     1776 SETTABLEKS                       R113 R112 K61 ["lastUpdated"]
     1778 CALL                             R111 1 1
     1779 GETIMPORT                        R112 K51 [table.freeze]
     1781 DUPTABLE                         R113 K302 [{["eventName"], ["backends"], ["description"] = "Context compaction summarizer failed. Includes the original context size, the serialized transcript, and the fallback message that replaced it.", ["lastUpdated"]}]
     1782 LOADK                            R114 K303 ["StudioAssistantCompactionFallback"]
     1783 SETTABLEKS                       R114 R113 K57 ["eventName"]
     1785 SETTABLEKS                       R32 R113 K58 ["backends"]
     1787 NEWTABLE                         R114 0 3
     1789 LOADN                            R115 26
     1790 LOADN                            R116 10
     1791 LOADN                            R117 28
     1792 SETLIST                          R114 R115 3 [1]
     1794 SETTABLEKS                       R114 R113 K61 ["lastUpdated"]
     1796 CALL                             R112 1 1
     1797 GETIMPORT                        R113 K51 [table.freeze]
     1799 DUPTABLE                         R114 K305 [{["eventName"], ["backends"], ["description"] = "Count of compaction fallback events.", ["lastUpdated"]}]
     1800 LOADK                            R115 K306 ["StudioAssistantCompactionFallbackCount"]
     1801 SETTABLEKS                       R115 R114 K57 ["eventName"]
     1803 NEWTABLE                         R115 0 1
     1805 GETTABLEKS                       R116 R9 K52 ["Backends"]
     1807 GETTABLEKS                       R116 R116 K64 ["RobloxTelemetryCounter"]
     1809 SETLIST                          R115 R116 1 [1]
     1811 SETTABLEKS                       R115 R114 K58 ["backends"]
     1813 NEWTABLE                         R115 0 3
     1815 LOADN                            R116 26
     1816 LOADN                            R117 4
     1817 LOADN                            R118 28
     1818 SETLIST                          R115 R116 3 [1]
     1820 SETTABLEKS                       R115 R114 K61 ["lastUpdated"]
     1822 CALL                             R113 1 1
     1823 GETIMPORT                        R114 K51 [table.freeze]
     1825 DUPTABLE                         R115 K308 [{["eventName"], ["backends"], ["description"] = "Quick setup toggled/copied.", ["lastUpdated"]}]
     1826 LOADK                            R116 K309 ["StudioAssistantMCPQuickSetup"]
     1827 SETTABLEKS                       R116 R115 K57 ["eventName"]
     1829 SETTABLEKS                       R32 R115 K58 ["backends"]
     1831 NEWTABLE                         R116 0 3
     1833 LOADN                            R117 26
     1834 LOADN                            R118 4
     1835 LOADN                            R119 15
     1836 SETLIST                          R116 R117 3 [1]
     1838 SETTABLEKS                       R116 R115 K61 ["lastUpdated"]
     1840 CALL                             R114 1 1
     1841 GETIMPORT                        R115 K51 [table.freeze]
     1843 DUPTABLE                         R116 K311 [{["eventName"], ["backends"], ["description"] = "MCP capture hook install outcome per AI client, sent when a client's outcome changes.", ["lastUpdated"]}]
     1844 LOADK                            R117 K312 ["StudioAssistantMcpCaptureHooksInstall"]
     1845 SETTABLEKS                       R117 R116 K57 ["eventName"]
     1847 NEWTABLE                         R117 0 1
     1849 GETTABLEKS                       R118 R9 K52 ["Backends"]
     1851 GETTABLEKS                       R118 R118 K56 ["Points"]
     1853 SETLIST                          R117 R118 1 [1]
     1855 SETTABLEKS                       R117 R116 K58 ["backends"]
     1857 NEWTABLE                         R117 0 3
     1859 LOADN                            R118 26
     1860 LOADN                            R119 11
     1861 LOADN                            R120 3
     1862 SETLIST                          R117 R118 3 [1]
     1864 SETTABLEKS                       R117 R116 K61 ["lastUpdated"]
     1866 CALL                             R115 1 1
     1867 GETIMPORT                        R116 K51 [table.freeze]
     1869 DUPTABLE                         R117 K314 [{["eventName"], ["backends"], ["description"] = "Count of MCP capture hook install outcome changes, labelled by harness, outcome and reason.", ["lastUpdated"]}]
     1870 LOADK                            R118 K315 ["StudioAssistantMcpCaptureHooksInstallCount"]
     1871 SETTABLEKS                       R118 R117 K57 ["eventName"]
     1873 NEWTABLE                         R118 0 1
     1875 GETTABLEKS                       R119 R9 K52 ["Backends"]
     1877 GETTABLEKS                       R119 R119 K64 ["RobloxTelemetryCounter"]
     1879 SETLIST                          R118 R119 1 [1]
     1881 SETTABLEKS                       R118 R117 K58 ["backends"]
     1883 NEWTABLE                         R118 0 3
     1885 LOADN                            R119 26
     1886 LOADN                            R120 11
     1887 LOADN                            R121 3
     1888 SETLIST                          R118 R119 3 [1]
     1890 SETTABLEKS                       R118 R117 K61 ["lastUpdated"]
     1892 CALL                             R116 1 1
     1893 GETIMPORT                        R117 K51 [table.freeze]
     1895 DUPTABLE                         R118 K317 [{["eventName"], ["backends"], ["description"] = "Count of MCP capture upload outcomes, labelled by harness, outcome and reason.", ["lastUpdated"]}]
     1896 LOADK                            R119 K318 ["StudioAssistantMcpCaptureUploadCount"]
     1897 SETTABLEKS                       R119 R118 K57 ["eventName"]
     1899 NEWTABLE                         R119 0 1
     1901 GETTABLEKS                       R120 R9 K52 ["Backends"]
     1903 GETTABLEKS                       R120 R120 K64 ["RobloxTelemetryCounter"]
     1905 SETLIST                          R119 R120 1 [1]
     1907 SETTABLEKS                       R119 R118 K58 ["backends"]
     1909 NEWTABLE                         R119 0 3
     1911 LOADN                            R120 26
     1912 LOADN                            R121 11
     1913 LOADN                            R122 4
     1914 SETLIST                          R119 R120 3 [1]
     1916 SETTABLEKS                       R119 R118 K61 ["lastUpdated"]
     1918 CALL                             R117 1 1
     1919 GETIMPORT                        R118 K51 [table.freeze]
     1921 DUPTABLE                         R119 K320 [{["eventName"], ["backends"], ["description"] = "Thread switched event with details.", ["lastUpdated"]}]
     1922 LOADK                            R120 K321 ["StudioAssistantThreadSwitched"]
     1923 SETTABLEKS                       R120 R119 K57 ["eventName"]
     1925 SETTABLEKS                       R32 R119 K58 ["backends"]
     1927 NEWTABLE                         R120 0 3
     1929 LOADN                            R121 26
     1930 LOADN                            R122 3
     1931 LOADN                            R123 10
     1932 SETLIST                          R120 R121 3 [1]
     1934 SETTABLEKS                       R120 R119 K61 ["lastUpdated"]
     1936 CALL                             R118 1 1
     1937 GETIMPORT                        R119 K51 [table.freeze]
     1939 DUPTABLE                         R120 K324 [{["eventName"] = "CAPUserSkillEvent", ["backends"], ["description"] = "User skill created or updated event with skill name and action.", ["lastUpdated"]}]
     1940 SETTABLEKS                       R32 R120 K58 ["backends"]
     1942 NEWTABLE                         R121 0 3
     1944 LOADN                            R122 26
     1945 LOADN                            R123 10
     1946 LOADN                            R124 20
     1947 SETLIST                          R121 R122 3 [1]
     1949 SETTABLEKS                       R121 R120 K61 ["lastUpdated"]
     1951 CALL                             R119 1 1
     1952 GETIMPORT                        R120 K51 [table.freeze]
     1954 DUPTABLE                         R121 K326 [{["eventName"], ["backends"], ["description"] = "Feedback an external MCP agent sent through the Studio MCP feedback tool.", ["lastUpdated"]}]
     1955 LOADK                            R122 K327 ["StudioAssistantMcpFeedback"]
     1956 SETTABLEKS                       R122 R121 K57 ["eventName"]
     1958 SETTABLEKS                       R32 R121 K58 ["backends"]
     1960 NEWTABLE                         R122 0 3
     1962 LOADN                            R123 26
     1963 LOADN                            R124 11
     1964 LOADN                            R125 5
     1965 SETLIST                          R122 R123 3 [1]
     1967 SETTABLEKS                       R122 R121 K61 ["lastUpdated"]
     1969 CALL                             R120 1 1
     1970 GETIMPORT                        R121 K51 [table.freeze]
     1972 DUPTABLE                         R122 K330 [{["eventName"] = "CAPThinkingBlock", ["backends"], ["description"] = "Thinking block completed event with thinking text, subagent attribution.", ["lastUpdated"]}]
     1973 SETTABLEKS                       R32 R122 K58 ["backends"]
     1975 NEWTABLE                         R123 0 3
     1977 LOADN                            R124 26
     1978 LOADN                            R125 7
     1979 LOADN                            R126 22
     1980 SETLIST                          R123 R124 3 [1]
     1982 SETTABLEKS                       R123 R122 K61 ["lastUpdated"]
     1984 CALL                             R121 1 1
     1985 GETIMPORT                        R122 K51 [table.freeze]
     1987 DUPTABLE                         R123 K332 [{["eventName"], ["backends"], ["description"] = "Count of successful persistence operations.", ["lastUpdated"]}]
     1988 LOADK                            R124 K333 ["StudioAssistantPersistenceSuccess"]
     1989 SETTABLEKS                       R124 R123 K57 ["eventName"]
     1991 NEWTABLE                         R124 0 1
     1993 GETTABLEKS                       R125 R9 K52 ["Backends"]
     1995 GETTABLEKS                       R125 R125 K64 ["RobloxTelemetryCounter"]
     1997 SETLIST                          R124 R125 1 [1]
     1999 SETTABLEKS                       R124 R123 K58 ["backends"]
     2001 NEWTABLE                         R124 0 3
     2003 LOADN                            R125 26
     2004 LOADN                            R126 3
     2005 LOADN                            R127 10
     2006 SETLIST                          R124 R125 3 [1]
     2008 SETTABLEKS                       R124 R123 K61 ["lastUpdated"]
     2010 CALL                             R122 1 1
     2011 GETIMPORT                        R123 K51 [table.freeze]
     2013 DUPTABLE                         R124 K335 [{["eventName"], ["backends"], ["description"] = "Count of failed persistence operations.", ["lastUpdated"]}]
     2014 LOADK                            R125 K336 ["StudioAssistantPersistenceFailure"]
     2015 SETTABLEKS                       R125 R124 K57 ["eventName"]
     2017 NEWTABLE                         R125 0 1
     2019 GETTABLEKS                       R126 R9 K52 ["Backends"]
     2021 GETTABLEKS                       R126 R126 K64 ["RobloxTelemetryCounter"]
     2023 SETLIST                          R125 R126 1 [1]
     2025 SETTABLEKS                       R125 R124 K58 ["backends"]
     2027 NEWTABLE                         R125 0 3
     2029 LOADN                            R126 26
     2030 LOADN                            R127 3
     2031 LOADN                            R128 10
     2032 SETLIST                          R125 R126 3 [1]
     2034 SETTABLEKS                       R125 R124 K61 ["lastUpdated"]
     2036 CALL                             R123 1 1
     2037 GETIMPORT                        R124 K51 [table.freeze]
     2039 DUPTABLE                         R125 K338 [{["eventName"], ["backends"], ["description"] = "Persistence operation latency in milliseconds.", ["lastUpdated"]}]
     2040 LOADK                            R126 K339 ["StudioAssistantPersistenceLatencyMs"]
     2041 SETTABLEKS                       R126 R125 K57 ["eventName"]
     2043 NEWTABLE                         R126 0 1
     2045 GETTABLEKS                       R127 R9 K52 ["Backends"]
     2047 GETTABLEKS                       R127 R127 K88 ["RobloxTelemetryStat"]
     2049 SETLIST                          R126 R127 1 [1]
     2051 SETTABLEKS                       R126 R125 K58 ["backends"]
     2053 NEWTABLE                         R126 0 3
     2055 LOADN                            R127 26
     2056 LOADN                            R128 3
     2057 LOADN                            R129 10
     2058 SETLIST                          R126 R127 3 [1]
     2060 SETTABLEKS                       R126 R125 K61 ["lastUpdated"]
     2062 CALL                             R124 1 1
     2063 DUPCLOSURE                       R125 K340 [PROTO_18]
     2064 CAPTURE                          VAL R5
     2065 CAPTURE                          VAL R11
     2066 GETTABLEKS                       R126 R7 K341 ["FStringAssistantGroupNameKey"]
     2068 GETTABLEKS                       R127 R6 K342 ["new"]
     2070 MOVE                             R128 R2
     2071 GETTABLEKS                       R129 R7 K343 ["FStringNewAssistantExperimentLayer"]
     2073 CALL                             R127 2 1
     2074 DUPCLOSURE                       R128 K344 [PROTO_19]
     2075 CAPTURE                          VAL R127
     2076 CAPTURE                          VAL R126
     2077 DUPCLOSURE                       R129 K345 [PROTO_20]
     2078 CAPTURE                          VAL R15
     2079 DUPCLOSURE                       R130 K346 [PROTO_21]
     2080 CAPTURE                          VAL R5
     2081 CAPTURE                          VAL R127
     2082 CAPTURE                          VAL R126
     2083 CAPTURE                          VAL R15
     2084 DUPCLOSURE                       R131 K347 [PROTO_82]
     2085 CAPTURE                          VAL R127
     2086 CAPTURE                          VAL R126
     2087 CAPTURE                          VAL R14
     2088 CAPTURE                          VAL R7
     2089 CAPTURE                          VAL R9
     2090 CAPTURE                          VAL R33
     2091 CAPTURE                          VAL R5
     2092 CAPTURE                          VAL R15
     2093 CAPTURE                          VAL R11
     2094 CAPTURE                          VAL R34
     2095 CAPTURE                          VAL R10
     2096 CAPTURE                          VAL R35
     2097 CAPTURE                          VAL R44
     2098 CAPTURE                          VAL R45
     2099 CAPTURE                          VAL R38
     2100 CAPTURE                          VAL R36
     2101 CAPTURE                          VAL R39
     2102 CAPTURE                          VAL R37
     2103 CAPTURE                          VAL R40
     2104 CAPTURE                          VAL R41
     2105 CAPTURE                          VAL R46
     2106 CAPTURE                          VAL R47
     2107 CAPTURE                          VAL R48
     2108 CAPTURE                          VAL R52
     2109 CAPTURE                          VAL R1
     2110 CAPTURE                          VAL R13
     2111 CAPTURE                          VAL R51
     2112 CAPTURE                          VAL R50
     2113 CAPTURE                          VAL R25
     2114 CAPTURE                          VAL R28
     2115 CAPTURE                          VAL R49
     2116 CAPTURE                          VAL R54
     2117 CAPTURE                          VAL R53
     2118 CAPTURE                          VAL R55
     2119 CAPTURE                          VAL R56
     2120 CAPTURE                          VAL R42
     2121 CAPTURE                          VAL R43
     2122 CAPTURE                          VAL R57
     2123 CAPTURE                          VAL R58
     2124 CAPTURE                          VAL R59
     2125 CAPTURE                          VAL R60
     2126 CAPTURE                          VAL R61
     2127 CAPTURE                          VAL R62
     2128 CAPTURE                          VAL R63
     2129 CAPTURE                          VAL R64
     2130 CAPTURE                          VAL R65
     2131 CAPTURE                          VAL R66
     2132 CAPTURE                          VAL R67
     2133 CAPTURE                          VAL R68
     2134 CAPTURE                          VAL R69
     2135 CAPTURE                          VAL R70
     2136 CAPTURE                          VAL R71
     2137 CAPTURE                          VAL R72
     2138 CAPTURE                          VAL R73
     2139 CAPTURE                          VAL R75
     2140 CAPTURE                          VAL R74
     2141 CAPTURE                          VAL R76
     2142 CAPTURE                          VAL R77
     2143 CAPTURE                          VAL R78
     2144 CAPTURE                          VAL R79
     2145 CAPTURE                          VAL R80
     2146 CAPTURE                          VAL R81
     2147 CAPTURE                          VAL R83
     2148 CAPTURE                          VAL R82
     2149 CAPTURE                          VAL R85
     2150 CAPTURE                          VAL R84
     2151 CAPTURE                          VAL R87
     2152 CAPTURE                          VAL R86
     2153 CAPTURE                          VAL R89
     2154 CAPTURE                          VAL R88
     2155 CAPTURE                          VAL R90
     2156 CAPTURE                          VAL R92
     2157 CAPTURE                          VAL R91
     2158 CAPTURE                          VAL R93
     2159 CAPTURE                          VAL R94
     2160 CAPTURE                          VAL R95
     2161 CAPTURE                          VAL R96
     2162 CAPTURE                          VAL R97
     2163 CAPTURE                          VAL R98
     2164 CAPTURE                          VAL R99
     2165 CAPTURE                          VAL R101
     2166 CAPTURE                          VAL R100
     2167 CAPTURE                          VAL R103
     2168 CAPTURE                          VAL R102
     2169 CAPTURE                          VAL R104
     2170 CAPTURE                          VAL R105
     2171 CAPTURE                          VAL R106
     2172 CAPTURE                          VAL R107
     2173 CAPTURE                          VAL R108
     2174 CAPTURE                          VAL R109
     2175 CAPTURE                          VAL R114
     2176 CAPTURE                          VAL R115
     2177 CAPTURE                          VAL R116
     2178 CAPTURE                          VAL R117
     2179 CAPTURE                          VAL R118
     2180 CAPTURE                          VAL R111
     2181 CAPTURE                          VAL R110
     2182 CAPTURE                          VAL R113
     2183 CAPTURE                          VAL R112
     2184 CAPTURE                          VAL R119
     2185 CAPTURE                          VAL R8
     2186 CAPTURE                          VAL R120
     2187 CAPTURE                          VAL R121
     2188 CAPTURE                          VAL R124
     2189 CAPTURE                          VAL R122
     2190 CAPTURE                          VAL R123
     2191 DUPCLOSURE                       R132 K348 [PROTO_83]
     2192 CAPTURE                          VAL R131
     2193 DUPTABLE                         R133 K351 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     2194 SETTABLEKS                       R131 R133 K349 ["makeStudioTelemetryEvents"]
     2196 SETTABLEKS                       R132 R133 K350 ["createStudioEventLogger"]
     2198 RETURN                           R133 1
