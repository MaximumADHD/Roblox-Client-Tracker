PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        2 JUMPIFEQKNIL                     R2 ; [+14]
        4 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        6 GETTABLEKS                       R2 R2 K1 ["debugLog"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["[ImageSelectionOps] %*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 2 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["capabilities"]
        3 JUMPIFEQKNIL                     R4 ; [+20]
        5 LOADB                            R3 0
        6 GETTABLEKS                       R4 R0 K0 ["capabilities"]
        8 GETTABLEKS                       R4 R4 K1 ["batchedPreview"]
       10 JUMPIFNOTEQKB                    R4 TRUE ; [+13]
       12 LOADB                            R3 0
       13 GETTABLEKS                       R4 R0 K2 ["texturePreview"]
       15 JUMPIFEQKNIL                     R4 ; [+8]
       17 LOADB                            R3 1
       18 JUMPIFNOTEQKNIL                  R1 ; [+5]
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        3 JUMPIFEQKNIL                     R2 ; [+9]
        5 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        7 GETTABLEKS                       R2 R2 K1 ["texturePreviewReferences"]
        9 JUMPIFEQKB                       R2 TRUE ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R2
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 NEWTABLE                         R3 0 1
        5 DUPTABLE                         R4 K5 [{[1] = "image_1.png", ["content"], ["contentType"] = "image/png"}]
        6 SETTABLEKS                       R0 R4 K2 ["content"]
        8 SETLIST                          R3 R4 1 [1]
       10 MOVE                             R2 R3
       11 JUMPIFEQKNIL                     R1 ; [+28]
       13 LENGTH                           R3 R1
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+24]
       17 JUMPIFEQKNIL                     R2 ; [+6]
       19 GETIMPORT                        R3 K8 [table.clone]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMP                             ; [+2]
       24 NEWTABLE                         R3 0 0
       26 MOVE                             R4 R1
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R8
       34 GETIMPORT                        R9 K10 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R4 2 ; [-8]
       39 MOVE                             R2 R3
       40 RETURN                           R2 1

PROTO_4:
        0 FASTCALL2K                       MATH_MAX R2 K0 ; [+5]
        2 MOVE                             R6 R2
        3 LOADK                            R7 K0 [0.1]
        4 GETIMPORT                        R5 K3 [math.max]
        6 CALL                             R5 2 1
        7 GETIMPORT                        R7 K6 [os.clock]
        9 CALL                             R7 0 1
       10 FASTCALL2                        MATH_MAX R3 R5 ; [+5]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R5
       14 GETIMPORT                        R8 K3 [math.max]
       16 CALL                             R8 2 1
       17 ADD                              R6 R7 R8
       18 MOVE                             R7 R4
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+2]
       21 DUPTABLE                         R7 K11 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
       22 RETURN                           R7 1
       23 GETTABLEKS                       R7 R0 K12 ["imageGeneration"]
       25 GETTABLEKS                       R7 R7 K13 ["getStatusAsync"]
       27 MOVE                             R8 R1
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R7 K14 ["status"]
       31 JUMPIFEQKNIL                     R8 ; [+57]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R10 R7 K14 ["status"]
       36 GETTABLE                         R8 R9 R10
       37 JUMPIFNOT                        R8 ; [+51]
       38 GETTABLEKS                       R8 R7 K14 ["status"]
       40 JUMPIFNOTEQKS                    R8 K15 ["Completed"] ; [+14]
       42 GETTABLEKS                       R9 R7 K16 ["presignedUrl"]
       44 FASTCALL1                        TYPEOF R9 ; [+2]
       45 GETIMPORT                        R8 K18 [typeof]
       47 CALL                             R8 1 1
       48 JUMPIFNOTEQKS                    R8 K19 ["string"] ; [+6]
       50 GETTABLEKS                       R8 R7 K16 ["presignedUrl"]
       52 JUMPIFEQKS                       R8 K20 [""] ; [+2]
       54 RETURN                           R7 1
       55 GETTABLEKS                       R8 R7 K9 ["errorMessage"]
       57 JUMPIF                           R8 ; [+10]
       58 LOADK                            R8 K21 ["Generation ended with status '%*'"]
       59 GETTABLEKS                       R11 R7 K14 ["status"]
       61 FASTCALL1                        TOSTRING R11 ; [+2]
       62 GETIMPORT                        R10 K23 [tostring]
       64 CALL                             R10 1 1
       65 NAMECALL                         R8 R8 K24 ["format"]
       67 CALL                             R8 2 1
       68 GETIMPORT                        R9 K26 [warn]
       70 LOADK                            R10 K27 ["[ImageGeneration] %*: %*"]
       71 MOVE                             R12 R1
       72 MOVE                             R13 R8
       73 NAMECALL                         R10 R10 K24 ["format"]
       75 CALL                             R10 3 1
       76 CALL                             R9 1 0
       77 DUPTABLE                         R9 K29 [{["ok"] = False, ["statusCode"], ["status"], ["errorMessage"]}]
       78 GETTABLEKS                       R10 R7 K28 ["statusCode"]
       80 SETTABLEKS                       R10 R9 K28 ["statusCode"]
       82 GETTABLEKS                       R10 R7 K14 ["status"]
       84 SETTABLEKS                       R10 R9 K14 ["status"]
       86 SETTABLEKS                       R8 R9 K9 ["errorMessage"]
       88 RETURN                           R9 1
       89 GETTABLEKS                       R8 R7 K7 ["ok"]
       91 JUMPIF                           R8 ; [+59]
       92 GETTABLEKS                       R9 R7 K28 ["statusCode"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K18 [typeof]
       97 CALL                             R8 1 1
       98 JUMPIFNOTEQKS                    R8 K30 ["number"] ; [+52]
      100 GETTABLEKS                       R8 R7 K28 ["statusCode"]
      102 LOADB                            R9 0
      103 GETTABLEKS                       R10 R0 K31 ["capabilities"]
      105 JUMPIFEQKNIL                     R10 ; [+9]
      107 GETTABLEKS                       R10 R0 K31 ["capabilities"]
      109 GETTABLEKS                       R10 R10 K32 ["abortPollOn4xx"]
      111 JUMPIFEQKB                       R10 TRUE ; [+2]
      113 LOADB                            R9 0 +1
      114 LOADB                            R9 1
      115 JUMPIFEQKN                       R8 K33 [404] ; [+8]
      117 JUMPIFNOT                        R9 ; [+33]
      118 LOADN                            R10 400
      119 JUMPIFNOTLE                      R10 R8 ; [+31]
      121 LOADN                            R10 500
      122 JUMPIFNOTLT                      R8 R10 ; [+28]
      124 JUMPIFNOTEQKN                    R8 K33 [404] ; [+3]
      126 LOADK                            R10 K34 ["Image generation not found"]
      127 JUMP                             ; [+5]
      128 LOADK                            R10 K35 ["Image generation failed (status=%*)"]
      129 MOVE                             R12 R8
      130 NAMECALL                         R10 R10 K24 ["format"]
      132 CALL                             R10 2 1
      133 GETTABLEKS                       R12 R7 K9 ["errorMessage"]
      135 OR                               R11 R12 R10
      136 GETIMPORT                        R12 K26 [warn]
      138 LOADK                            R13 K27 ["[ImageGeneration] %*: %*"]
      139 MOVE                             R15 R1
      140 MOVE                             R16 R11
      141 NAMECALL                         R13 R13 K24 ["format"]
      143 CALL                             R13 3 1
      144 CALL                             R12 1 0
      145 DUPTABLE                         R12 K36 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      146 SETTABLEKS                       R8 R12 K28 ["statusCode"]
      148 SETTABLEKS                       R11 R12 K9 ["errorMessage"]
      150 RETURN                           R12 1
      151 GETIMPORT                        R8 K6 [os.clock]
      153 CALL                             R8 0 1
      154 JUMPIFNOTLE                      R6 R8 ; [+19]
      156 GETIMPORT                        R8 K26 [warn]
      158 LOADK                            R9 K37 ["[ImageGeneration] %* timed out after %*s"]
      159 MOVE                             R11 R1
      160 MOVE                             R12 R3
      161 NAMECALL                         R9 R9 K24 ["format"]
      163 CALL                             R9 3 1
      164 CALL                             R8 1 0
      165 DUPTABLE                         R8 K38 [{["ok"] = False, ["errorMessage"]}]
      166 LOADK                            R9 K39 ["Image generation timed out after %*s"]
      167 MOVE                             R11 R3
      168 NAMECALL                         R9 R9 K24 ["format"]
      170 CALL                             R9 2 1
      171 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      173 RETURN                           R8 1
      174 GETIMPORT                        R8 K42 [task.wait]
      176 MOVE                             R9 R5
      177 CALL                             R8 1 0
      178 JUMPBACK                         ; [-161]
      179 RETURN                           R0 0

PROTO_5:
        0 FASTCALL2K                       MATH_MAX R2 K0 ; [+5]
        2 MOVE                             R6 R2
        3 LOADK                            R7 K0 [0.1]
        4 GETIMPORT                        R5 K3 [math.max]
        6 CALL                             R5 2 1
        7 GETIMPORT                        R7 K6 [os.clock]
        9 CALL                             R7 0 1
       10 FASTCALL2                        MATH_MAX R3 R5 ; [+5]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R5
       14 GETIMPORT                        R8 K3 [math.max]
       16 CALL                             R8 2 1
       17 ADD                              R6 R7 R8
       18 MOVE                             R7 R4
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+2]
       21 DUPTABLE                         R7 K11 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
       22 RETURN                           R7 1
       23 GETTABLEKS                       R7 R0 K12 ["texturePreview"]
       25 GETTABLEKS                       R8 R7 K13 ["getStatusAsync"]
       27 MOVE                             R9 R1
       28 CALL                             R8 1 1
       29 GETTABLEKS                       R9 R8 K14 ["status"]
       31 JUMPIFEQKNIL                     R9 ; [+130]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R11 R8 K14 ["status"]
       36 GETTABLE                         R9 R10 R11
       37 JUMPIFNOT                        R9 ; [+124]
       38 GETTABLEKS                       R10 R8 K15 ["result"]
       40 JUMPIFEQKNIL                     R10 ; [+6]
       42 GETTABLEKS                       R9 R8 K15 ["result"]
       44 GETTABLEKS                       R9 R9 K16 ["imageUrls"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R9
       48 GETTABLEKS                       R11 R8 K15 ["result"]
       50 JUMPIFEQKNIL                     R11 ; [+20]
       52 LOADB                            R11 0
       53 GETTABLEKS                       R12 R0 K17 ["capabilities"]
       55 JUMPIFEQKNIL                     R12 ; [+9]
       57 GETTABLEKS                       R12 R0 K17 ["capabilities"]
       59 GETTABLEKS                       R12 R12 K18 ["texturePreviewReferences"]
       61 JUMPIFEQKB                       R12 TRUE ; [+2]
       63 LOADB                            R11 0 +1
       64 LOADB                            R11 1
       65 JUMPIFNOT                        R11 ; [+5]
       66 GETTABLEKS                       R10 R8 K15 ["result"]
       68 GETTABLEKS                       R10 R10 K19 ["images"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 FASTCALL1                        TYPEOF R9 ; [+3]
       73 MOVE                             R13 R9
       74 GETIMPORT                        R12 K21 [typeof]
       76 CALL                             R12 1 1
       77 JUMPIFNOTEQKS                    R12 K22 ["table"] ; [+3]
       79 MOVE                             R11 R9
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 FASTCALL1                        TYPEOF R10 ; [+3]
       83 MOVE                             R14 R10
       84 GETIMPORT                        R13 K21 [typeof]
       86 CALL                             R13 1 1
       87 JUMPIFNOTEQKS                    R13 K22 ["table"] ; [+3]
       89 MOVE                             R12 R10
       90 JUMP                             ; [+1]
       91 LOADNIL                          R12
       92 JUMPIFEQKNIL                     R11 ; [+6]
       94 LOADB                            R13 1
       95 LENGTH                           R14 R11
       96 LOADN                            R15 0
       97 JUMPIFLT                         R15 R14 ; [+10]
       99 LOADB                            R13 0
      100 JUMPIFEQKNIL                     R12 ; [+7]
      102 LENGTH                           R14 R12
      103 LOADN                            R15 0
      104 JUMPIFLT                         R15 R14 ; [+2]
      106 LOADB                            R13 0 +1
      107 LOADB                            R13 1
      108 LOADB                            R14 0
      109 JUMPIFEQKNIL                     R12 ; [+7]
      111 LENGTH                           R15 R12
      112 LOADN                            R16 0
      113 JUMPIFLT                         R16 R15 ; [+2]
      115 LOADB                            R14 0 +1
      116 LOADB                            R14 1
      117 GETTABLEKS                       R15 R8 K14 ["status"]
      119 JUMPIFNOTEQKS                    R15 K23 ["Completed"] ; [+2]
      121 JUMPIF                           R13 ; [+5]
      122 GETTABLEKS                       R15 R8 K14 ["status"]
      124 JUMPIFNOTEQKS                    R15 K24 ["Failed"] ; [+3]
      126 JUMPIFNOT                        R14 ; [+1]
      127 RETURN                           R8 1
      128 GETTABLEKS                       R15 R8 K9 ["errorMessage"]
      130 JUMPIF                           R15 ; [+10]
      131 LOADK                            R15 K25 ["Texture preview ended with status '%*'"]
      132 GETTABLEKS                       R18 R8 K14 ["status"]
      134 FASTCALL1                        TOSTRING R18 ; [+2]
      135 GETIMPORT                        R17 K27 [tostring]
      137 CALL                             R17 1 1
      138 NAMECALL                         R15 R15 K28 ["format"]
      140 CALL                             R15 2 1
      141 GETIMPORT                        R16 K30 [warn]
      143 LOADK                            R17 K31 ["[TexturePreview] %*: %*"]
      144 MOVE                             R19 R1
      145 MOVE                             R20 R15
      146 NAMECALL                         R17 R17 K28 ["format"]
      148 CALL                             R17 3 1
      149 CALL                             R16 1 0
      150 DUPTABLE                         R16 K33 [{["ok"] = False, ["statusCode"], ["status"], ["errorMessage"]}]
      151 GETTABLEKS                       R17 R8 K32 ["statusCode"]
      153 SETTABLEKS                       R17 R16 K32 ["statusCode"]
      155 GETTABLEKS                       R17 R8 K14 ["status"]
      157 SETTABLEKS                       R17 R16 K14 ["status"]
      159 SETTABLEKS                       R15 R16 K9 ["errorMessage"]
      161 RETURN                           R16 1
      162 GETTABLEKS                       R9 R8 K7 ["ok"]
      164 JUMPIF                           R9 ; [+59]
      165 GETTABLEKS                       R10 R8 K32 ["statusCode"]
      167 FASTCALL1                        TYPEOF R10 ; [+2]
      168 GETIMPORT                        R9 K21 [typeof]
      170 CALL                             R9 1 1
      171 JUMPIFNOTEQKS                    R9 K34 ["number"] ; [+52]
      173 GETTABLEKS                       R9 R8 K32 ["statusCode"]
      175 LOADB                            R10 0
      176 GETTABLEKS                       R11 R0 K17 ["capabilities"]
      178 JUMPIFEQKNIL                     R11 ; [+9]
      180 GETTABLEKS                       R11 R0 K17 ["capabilities"]
      182 GETTABLEKS                       R11 R11 K35 ["abortPollOn4xx"]
      184 JUMPIFEQKB                       R11 TRUE ; [+2]
      186 LOADB                            R10 0 +1
      187 LOADB                            R10 1
      188 JUMPIFEQKN                       R9 K36 [404] ; [+8]
      190 JUMPIFNOT                        R10 ; [+33]
      191 LOADN                            R11 400
      192 JUMPIFNOTLE                      R11 R9 ; [+31]
      194 LOADN                            R11 500
      195 JUMPIFNOTLT                      R9 R11 ; [+28]
      197 JUMPIFNOTEQKN                    R9 K36 [404] ; [+3]
      199 LOADK                            R11 K37 ["Texture preview not found"]
      200 JUMP                             ; [+5]
      201 LOADK                            R11 K38 ["Texture preview failed (status=%*)"]
      202 MOVE                             R13 R9
      203 NAMECALL                         R11 R11 K28 ["format"]
      205 CALL                             R11 2 1
      206 GETTABLEKS                       R13 R8 K9 ["errorMessage"]
      208 OR                               R12 R13 R11
      209 GETIMPORT                        R13 K30 [warn]
      211 LOADK                            R14 K31 ["[TexturePreview] %*: %*"]
      212 MOVE                             R16 R1
      213 MOVE                             R17 R12
      214 NAMECALL                         R14 R14 K28 ["format"]
      216 CALL                             R14 3 1
      217 CALL                             R13 1 0
      218 DUPTABLE                         R13 K39 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      219 SETTABLEKS                       R9 R13 K32 ["statusCode"]
      221 SETTABLEKS                       R12 R13 K9 ["errorMessage"]
      223 RETURN                           R13 1
      224 GETIMPORT                        R9 K6 [os.clock]
      226 CALL                             R9 0 1
      227 JUMPIFNOTLE                      R6 R9 ; [+19]
      229 GETIMPORT                        R9 K30 [warn]
      231 LOADK                            R10 K40 ["[TexturePreview] %* timed out after %*s"]
      232 MOVE                             R12 R1
      233 MOVE                             R13 R3
      234 NAMECALL                         R10 R10 K28 ["format"]
      236 CALL                             R10 3 1
      237 CALL                             R9 1 0
      238 DUPTABLE                         R9 K41 [{["ok"] = False, ["errorMessage"]}]
      239 LOADK                            R10 K42 ["Texture preview timed out after %*s"]
      240 MOVE                             R12 R3
      241 NAMECALL                         R10 R10 K28 ["format"]
      243 CALL                             R10 2 1
      244 SETTABLEKS                       R10 R9 K9 ["errorMessage"]
      246 RETURN                           R9 1
      247 GETIMPORT                        R9 K45 [task.wait]
      249 MOVE                             R10 R5
      250 CALL                             R9 1 0
      251 JUMPBACK                         ; [-234]
      252 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+23]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R5 K4 ["[ImageSelectionOps] presigned GET threw: %*"]
       10 FASTCALL1                        TOSTRING R3 ; [+3]
       11 MOVE                             R8 R3
       12 GETIMPORT                        R7 K6 [tostring]
       14 CALL                             R7 1 1
       15 NAMECALL                         R5 R5 K7 ["format"]
       17 CALL                             R5 2 1
       18 CALL                             R4 1 0
       19 LOADNIL                          R4
       20 LOADK                            R5 K8 ["Failed to download image: %*"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R8 R3
       23 GETIMPORT                        R7 K6 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R5 R5 K7 ["format"]
       28 CALL                             R5 2 1
       29 RETURN                           R4 2
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K10 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K11 ["table"] ; [+4]
       37 GETTABLEKS                       R4 R3 K12 ["Success"]
       39 JUMPIF                           R4 ; [+34]
       40 FASTCALL1                        TYPEOF R3 ; [+3]
       41 MOVE                             R6 R3
       42 GETIMPORT                        R5 K10 [typeof]
       44 CALL                             R5 1 1
       45 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+8]
       47 GETTABLEKS                       R5 R3 K13 ["StatusCode"]
       49 FASTCALL1                        TOSTRING R5 ; [+2]
       50 GETIMPORT                        R4 K6 [tostring]
       52 CALL                             R4 1 1
       53 JUMP                             ; [+5]
       54 FASTCALL1                        TOSTRING R3 ; [+3]
       55 MOVE                             R5 R3
       56 GETIMPORT                        R4 K6 [tostring]
       58 CALL                             R4 1 1
       59 GETIMPORT                        R5 K3 [warn]
       61 LOADK                            R6 K14 ["[ImageSelectionOps] presigned GET -> status=%*"]
       62 MOVE                             R8 R4
       63 NAMECALL                         R6 R6 K7 ["format"]
       65 CALL                             R6 2 1
       66 CALL                             R5 1 0
       67 LOADNIL                          R5
       68 LOADK                            R6 K15 ["Image download failed (status=%*)"]
       69 MOVE                             R8 R4
       70 NAMECALL                         R6 R6 K7 ["format"]
       72 CALL                             R6 2 1
       73 RETURN                           R5 2
       74 GETTABLEKS                       R5 R3 K16 ["Body"]
       76 FASTCALL1                        TYPEOF R5 ; [+2]
       77 GETIMPORT                        R4 K10 [typeof]
       79 CALL                             R4 1 1
       80 JUMPIFNOTEQKS                    R4 K17 ["string"] ; [+5]
       82 GETTABLEKS                       R4 R3 K16 ["Body"]
       84 JUMPIFNOTEQKS                    R4 K18 [""] ; [+8]
       86 GETIMPORT                        R4 K3 [warn]
       88 LOADK                            R5 K19 ["[ImageSelectionOps] presigned GET returned an empty body"]
       89 CALL                             R4 1 0
       90 LOADNIL                          R4
       91 LOADK                            R5 K20 ["Empty image body"]
       92 RETURN                           R4 2
       93 GETIMPORT                        R4 K23 [buffer.fromstring]
       95 GETTABLEKS                       R5 R3 K16 ["Body"]
       97 CALL                             R4 1 1
       98 LOADNIL                          R5
       99 RETURN                           R4 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETIMPORT                        R1 K3 [buffer.tostring]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 SETTABLEKS                       R2 R1 K0 ["presignedUrl"]
        2 SETTABLEKS                       R3 R1 K1 ["widthPx"]
        4 SETTABLEKS                       R4 R1 K2 ["heightPx"]
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R0
        8 MOVE                             R9 R2
        9 CALL                             R7 2 2
       10 MOVE                             R9 R6
       11 CALL                             R9 0 1
       12 JUMPIFNOT                        R9 ; [+6]
       13 LOADK                            R9 K3 ["Cancelled"]
       14 SETTABLEKS                       R9 R1 K4 ["status"]
       16 MOVE                             R9 R5
       17 CALL                             R9 0 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKNIL                  R7 ; [+10]
       21 LOADK                            R9 K5 ["Failed"]
       22 SETTABLEKS                       R9 R1 K4 ["status"]
       24 ORK                              R9 R8 K6 ["Failed to download the generated image"]
       25 SETTABLEKS                       R9 R1 K7 ["errorMessage"]
       27 MOVE                             R9 R5
       28 CALL                             R9 0 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R9 K9 [pcall]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R7
       35 CALL                             R9 1 2
       36 JUMPIFNOT                        R9 ; [+9]
       37 FASTCALL1                        TYPEOF R10 ; [+3]
       38 MOVE                             R12 R10
       39 GETIMPORT                        R11 K11 [typeof]
       41 CALL                             R11 1 1
       42 JUMPIFNOTEQKS                    R11 K12 ["string"] ; [+3]
       44 JUMPIFNOTEQKS                    R10 K13 [""] ; [+32]
       46 GETIMPORT                        R11 K15 [warn]
       48 LOADK                            R12 K16 ["[ImageSelectionOps] slot %*: base64 encode failed: %*"]
       49 GETTABLEKS                       R14 R1 K17 ["index"]
       51 FASTCALL1                        TOSTRING R10 ; [+3]
       52 MOVE                             R16 R10
       53 GETIMPORT                        R15 K19 [tostring]
       55 CALL                             R15 1 1
       56 NAMECALL                         R12 R12 K20 ["format"]
       58 CALL                             R12 3 1
       59 CALL                             R11 1 0
       60 LOADK                            R11 K5 ["Failed"]
       61 SETTABLEKS                       R11 R1 K4 ["status"]
       63 LOADK                            R11 K21 ["Failed to encode the generated image: %*"]
       64 FASTCALL1                        TOSTRING R10 ; [+3]
       65 MOVE                             R14 R10
       66 GETIMPORT                        R13 K19 [tostring]
       68 CALL                             R13 1 1
       69 NAMECALL                         R11 R11 K20 ["format"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R1 K7 ["errorMessage"]
       74 MOVE                             R11 R5
       75 CALL                             R11 0 0
       76 RETURN                           R0 0
       77 GETIMPORT                        R11 K9 [pcall]
       79 NEWCLOSURE                       R12 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R10
       82 CALL                             R11 1 2
       83 JUMPIFNOT                        R11 ; [+10]
       84 FASTCALL1                        TYPEOF R12 ; [+3]
       85 MOVE                             R15 R12
       86 GETIMPORT                        R14 K11 [typeof]
       88 CALL                             R14 1 1
       89 JUMPIFNOTEQKS                    R14 K22 ["table"] ; [+4]
       91 GETTABLEKS                       R13 R12 K23 ["tempId"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R13
       95 FASTCALL1                        TYPEOF R13 ; [+3]
       96 MOVE                             R15 R13
       97 GETIMPORT                        R14 K11 [typeof]
       99 CALL                             R14 1 1
      100 JUMPIFNOTEQKS                    R14 K12 ["string"] ; [+3]
      102 JUMPIFNOTEQKS                    R13 K13 [""] ; [+32]
      104 GETIMPORT                        R14 K15 [warn]
      106 LOADK                            R15 K24 ["[ImageSelectionOps] slot %*: tempId conversion failed: %*"]
      107 GETTABLEKS                       R17 R1 K17 ["index"]
      109 FASTCALL1                        TOSTRING R12 ; [+3]
      110 MOVE                             R19 R12
      111 GETIMPORT                        R18 K19 [tostring]
      113 CALL                             R18 1 1
      114 NAMECALL                         R15 R15 K20 ["format"]
      116 CALL                             R15 3 1
      117 CALL                             R14 1 0
      118 LOADK                            R14 K5 ["Failed"]
      119 SETTABLEKS                       R14 R1 K4 ["status"]
      121 LOADK                            R14 K25 ["Failed to prepare the generated image for display: %*"]
      122 FASTCALL1                        TOSTRING R12 ; [+3]
      123 MOVE                             R17 R12
      124 GETIMPORT                        R16 K19 [tostring]
      126 CALL                             R16 1 1
      127 NAMECALL                         R14 R14 K20 ["format"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R1 K7 ["errorMessage"]
      132 MOVE                             R14 R5
      133 CALL                             R14 0 0
      134 RETURN                           R0 0
      135 MOVE                             R14 R6
      136 CALL                             R14 0 1
      137 JUMPIFNOT                        R14 ; [+6]
      138 LOADK                            R14 K3 ["Cancelled"]
      139 SETTABLEKS                       R14 R1 K4 ["status"]
      141 MOVE                             R14 R5
      142 CALL                             R14 0 0
      143 RETURN                           R0 0
      144 SETTABLEKS                       R10 R1 K26 ["thumbnailBase64"]
      146 SETTABLEKS                       R7 R1 K27 ["thumbnailBytes"]
      148 SETTABLEKS                       R13 R1 K28 ["thumbnailTempId"]
      150 LOADK                            R14 K29 ["Ready"]
      151 SETTABLEKS                       R14 R1 K4 ["status"]
      153 MOVE                             R14 R5
      154 CALL                             R14 0 0
      155 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R5 K0 ["Generating"]
        1 SETTABLEKS                       R5 R2 K1 ["status"]
        3 MOVE                             R5 R3
        4 CALL                             R5 0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["buildImages"]
        8 GETTABLEKS                       R6 R1 K3 ["seedImage"]
       10 GETTABLEKS                       R7 R1 K4 ["extraImages"]
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R6 R0 K5 ["imageGeneration"]
       15 GETTABLEKS                       R6 R6 K6 ["startAsync"]
       17 DUPTABLE                         R7 K13 [{["textPrompt"], ["model"], ["images"], ["removeBackground"] = True, ["seed"]}]
       18 GETTABLEKS                       R9 R1 K7 ["textPrompt"]
       20 JUMPIFEQKS                       R9 K14 [""] ; [+4]
       22 GETTABLEKS                       R8 R1 K7 ["textPrompt"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 SETTABLEKS                       R8 R7 K7 ["textPrompt"]
       28 GETTABLEKS                       R8 R1 K8 ["model"]
       30 SETTABLEKS                       R8 R7 K8 ["model"]
       32 SETTABLEKS                       R5 R7 K9 ["images"]
       34 GETTABLEKS                       R9 R0 K15 ["capabilities"]
       36 JUMPIFEQKNIL                     R9 ; [+10]
       38 GETTABLEKS                       R9 R0 K15 ["capabilities"]
       40 GETTABLEKS                       R9 R9 K16 ["allocateSeed"]
       42 JUMPIFNOTEQKB                    R9 TRUE ; [+4]
       44 GETTABLEKS                       R8 R1 K12 ["seed"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R8
       48 SETTABLEKS                       R8 R7 K12 ["seed"]
       50 CALL                             R6 1 1
       51 MOVE                             R7 R4
       52 CALL                             R7 0 1
       53 JUMPIFNOT                        R7 ; [+6]
       54 LOADK                            R7 K17 ["Cancelled"]
       55 SETTABLEKS                       R7 R2 K1 ["status"]
       57 MOVE                             R7 R3
       58 CALL                             R7 0 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R7 R6 K18 ["ok"]
       62 JUMPIFNOT                        R7 ; [+4]
       63 GETTABLEKS                       R7 R6 K19 ["imageGenerationId"]
       65 JUMPIFNOTEQKNIL                  R7 ; [+22]
       67 GETTABLEKS                       R8 R6 K21 ["errorMessage"]
       69 ORK                              R7 R8 K20 ["Failed to start image generation"]
       70 GETIMPORT                        R8 K23 [warn]
       72 LOADK                            R9 K24 ["[ImageSelectionOps] slot %*: start failed: %*"]
       73 GETTABLEKS                       R11 R2 K25 ["index"]
       75 MOVE                             R12 R7
       76 NAMECALL                         R9 R9 K26 ["format"]
       78 CALL                             R9 3 1
       79 CALL                             R8 1 0
       80 LOADK                            R8 K27 ["Failed"]
       81 SETTABLEKS                       R8 R2 K1 ["status"]
       83 SETTABLEKS                       R7 R2 K21 ["errorMessage"]
       85 MOVE                             R8 R3
       86 CALL                             R8 0 0
       87 RETURN                           R0 0
       88 GETTABLEKS                       R7 R6 K19 ["imageGenerationId"]
       90 SETTABLEKS                       R7 R2 K19 ["imageGenerationId"]
       92 LOADK                            R8 K28 ["slot %* imageGenerationId=%* seed=%* imageCount=%*"]
       93 GETTABLEKS                       R10 R2 K25 ["index"]
       95 MOVE                             R11 R7
       96 GETTABLEKS                       R13 R1 K12 ["seed"]
       98 FASTCALL1                        TOSTRING R13 ; [+2]
       99 GETIMPORT                        R12 K30 [tostring]
      101 CALL                             R12 1 1
      102 JUMPIFNOT                        R5 ; [+2]
      103 LENGTH                           R13 R5
      104 JUMP                             ; [+1]
      105 LOADN                            R13 0
      106 NAMECALL                         R8 R8 K26 ["format"]
      108 CALL                             R8 5 1
      109 GETTABLEKS                       R9 R0 K15 ["capabilities"]
      111 JUMPIFEQKNIL                     R9 ; [+14]
      113 GETTABLEKS                       R9 R0 K15 ["capabilities"]
      115 GETTABLEKS                       R9 R9 K31 ["debugLog"]
      117 JUMPIFNOT                        R9 ; [+8]
      118 GETIMPORT                        R9 K33 [print]
      120 LOADK                            R10 K34 ["[ImageSelectionOps] %*"]
      121 MOVE                             R12 R8
      122 NAMECALL                         R10 R10 K26 ["format"]
      124 CALL                             R10 2 1
      125 CALL                             R9 1 0
      126 MOVE                             R8 R3
      127 CALL                             R8 0 0
      128 GETUPVAL                         R8 1
      129 MOVE                             R9 R0
      130 MOVE                             R10 R7
      131 LOADN                            R11 2
      132 GETTABLEKS                       R13 R1 K36 ["timeoutSeconds"]
      134 ORK                              R12 R13 K35 [60]
      135 MOVE                             R13 R4
      136 CALL                             R8 5 1
      137 MOVE                             R9 R4
      138 CALL                             R9 0 1
      139 JUMPIFNOT                        R9 ; [+6]
      140 LOADK                            R9 K17 ["Cancelled"]
      141 SETTABLEKS                       R9 R2 K1 ["status"]
      143 MOVE                             R9 R3
      144 CALL                             R9 0 0
      145 RETURN                           R0 0
      146 GETTABLEKS                       R9 R8 K18 ["ok"]
      148 JUMPIFNOT                        R9 ; [+4]
      149 GETTABLEKS                       R9 R8 K37 ["presignedUrl"]
      151 JUMPIFNOTEQKNIL                  R9 ; [+12]
      153 LOADK                            R9 K27 ["Failed"]
      154 SETTABLEKS                       R9 R2 K1 ["status"]
      156 GETTABLEKS                       R10 R8 K21 ["errorMessage"]
      158 ORK                              R9 R10 K38 ["Image generation did not complete"]
      159 SETTABLEKS                       R9 R2 K21 ["errorMessage"]
      161 MOVE                             R9 R3
      162 CALL                             R9 0 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R9 2
      165 MOVE                             R10 R0
      166 MOVE                             R11 R2
      167 GETTABLEKS                       R12 R8 K37 ["presignedUrl"]
      169 GETTABLEKS                       R13 R8 K39 ["widthPx"]
      171 GETTABLEKS                       R14 R8 K40 ["heightPx"]
      173 MOVE                             R15 R3
      174 MOVE                             R16 R4
      175 CALL                             R9 7 0
      176 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K1 ["index"]
        2 ORK                              R3 R4 K0 [Infinity]
        3 GETTABLEKS                       R5 R1 K1 ["index"]
        5 ORK                              R4 R5 K0 [Infinity]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["texturePreview"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 GETTABLEKS                       R6 R1 K1 ["autoSelectView"]
        6 JUMPIF                           R6 ; [+12]
        7 GETTABLEKS                       R6 R1 K2 ["cameraExtrinsic"]
        9 JUMPIFEQKNIL                     R6 ; [+9]
       11 GETTABLEKS                       R6 R1 K3 ["cameraIntrinsic"]
       13 JUMPIFEQKNIL                     R6 ; [+5]
       15 GETTABLEKS                       R4 R1 K2 ["cameraExtrinsic"]
       17 GETTABLEKS                       R5 R1 K3 ["cameraIntrinsic"]
       19 GETTABLEKS                       R7 R1 K4 ["extraImages"]
       21 JUMPIFEQKNIL                     R7 ; [+5]
       23 GETTABLEKS                       R7 R1 K4 ["extraImages"]
       25 GETTABLEN                        R6 R7 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 LOADB                            R7 0
       29 GETTABLEKS                       R8 R0 K5 ["capabilities"]
       31 JUMPIFEQKNIL                     R8 ; [+9]
       33 GETTABLEKS                       R8 R0 K5 ["capabilities"]
       35 GETTABLEKS                       R8 R8 K6 ["texturePreviewReferences"]
       37 JUMPIFEQKB                       R8 TRUE ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 GETTABLEKS                       R8 R3 K7 ["startAsync"]
       43 DUPTABLE                         R9 K16 [{"glb", "assetId", "image", "imageContentType", "textPrompt", "n", "cameraExtrinsic", "cameraIntrinsic", "partialResults", "previewResolution"}]
       44 GETTABLEKS                       R10 R1 K8 ["glb"]
       46 SETTABLEKS                       R10 R9 K8 ["glb"]
       48 GETTABLEKS                       R10 R1 K9 ["assetId"]
       50 SETTABLEKS                       R10 R9 K9 ["assetId"]
       52 JUMPIFEQKNIL                     R6 ; [+4]
       54 GETTABLEKS                       R10 R6 K17 ["content"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R10
       58 SETTABLEKS                       R10 R9 K10 ["image"]
       60 JUMPIFEQKNIL                     R6 ; [+4]
       62 GETTABLEKS                       R10 R6 K18 ["contentType"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R10
       66 SETTABLEKS                       R10 R9 K11 ["imageContentType"]
       68 GETTABLEKS                       R11 R1 K12 ["textPrompt"]
       70 JUMPIFEQKS                       R11 K19 [""] ; [+4]
       72 GETTABLEKS                       R10 R1 K12 ["textPrompt"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K12 ["textPrompt"]
       78 GETTABLEKS                       R10 R1 K20 ["slotCount"]
       80 SETTABLEKS                       R10 R9 K13 ["n"]
       82 SETTABLEKS                       R4 R9 K2 ["cameraExtrinsic"]
       84 SETTABLEKS                       R5 R9 K3 ["cameraIntrinsic"]
       86 JUMPIFNOT                        R7 ; [+2]
       87 LOADB                            R10 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R10
       90 SETTABLEKS                       R10 R9 K14 ["partialResults"]
       92 JUMPIFNOT                        R7 ; [+2]
       93 LOADN                            R10 512
       94 JUMP                             ; [+1]
       95 LOADNIL                          R10
       96 SETTABLEKS                       R10 R9 K15 ["previewResolution"]
       98 CALL                             R8 1 1
       99 MOVE                             R9 R2
      100 CALL                             R9 0 1
      101 JUMPIFNOT                        R9 ; [+2]
      102 DUPTABLE                         R9 K25 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
      103 RETURN                           R9 1
      104 GETTABLEKS                       R9 R8 K21 ["ok"]
      106 JUMPIFNOT                        R9 ; [+4]
      107 GETTABLEKS                       R9 R8 K26 ["texturePreviewId"]
      109 JUMPIFNOTEQKNIL                  R9 ; [+8]
      111 DUPTABLE                         R9 K27 [{["ok"] = False, ["errorMessage"]}]
      112 GETTABLEKS                       R11 R8 K23 ["errorMessage"]
      114 ORK                              R10 R11 K28 ["Failed to start texture preview"]
      115 SETTABLEKS                       R10 R9 K23 ["errorMessage"]
      117 RETURN                           R9 1
      118 GETTABLEKS                       R9 R8 K26 ["texturePreviewId"]
      120 LOADK                            R10 K29 ["texturePreviewId=%* slotCount=%*"]
      121 MOVE                             R12 R9
      122 GETTABLEKS                       R13 R1 K20 ["slotCount"]
      124 NAMECALL                         R10 R10 K30 ["format"]
      126 CALL                             R10 3 1
      127 GETTABLEKS                       R11 R0 K5 ["capabilities"]
      129 JUMPIFEQKNIL                     R11 ; [+14]
      131 GETTABLEKS                       R11 R0 K5 ["capabilities"]
      133 GETTABLEKS                       R11 R11 K31 ["debugLog"]
      135 JUMPIFNOT                        R11 ; [+8]
      136 GETIMPORT                        R11 K33 [print]
      138 LOADK                            R12 K34 ["[ImageSelectionOps] %*"]
      139 MOVE                             R14 R10
      140 NAMECALL                         R12 R12 K30 ["format"]
      142 CALL                             R12 2 1
      143 CALL                             R11 1 0
      144 GETUPVAL                         R10 0
      145 MOVE                             R11 R0
      146 MOVE                             R12 R9
      147 LOADN                            R13 2
      148 GETTABLEKS                       R15 R1 K36 ["timeoutSeconds"]
      150 ORK                              R14 R15 K35 [60]
      151 MOVE                             R15 R2
      152 CALL                             R10 5 1
      153 MOVE                             R11 R2
      154 CALL                             R11 0 1
      155 JUMPIFNOT                        R11 ; [+4]
      156 DUPTABLE                         R11 K37 [{["ok"] = False, ["texturePreviewId"], ["errorMessage"] = "Cancelled"}]
      157 SETTABLEKS                       R9 R11 K26 ["texturePreviewId"]
      159 RETURN                           R11 1
      160 GETTABLEKS                       R12 R10 K38 ["result"]
      162 JUMPIFEQKNIL                     R12 ; [+6]
      164 GETTABLEKS                       R11 R10 K38 ["result"]
      166 GETTABLEKS                       R11 R11 K39 ["imageUrls"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R11
      170 JUMPIFNOT                        R7 ; [+9]
      171 GETTABLEKS                       R13 R10 K38 ["result"]
      173 JUMPIFEQKNIL                     R13 ; [+6]
      175 GETTABLEKS                       R12 R10 K38 ["result"]
      177 GETTABLEKS                       R12 R12 K40 ["images"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R12
      181 FASTCALL1                        TYPEOF R11 ; [+3]
      182 MOVE                             R15 R11
      183 GETIMPORT                        R14 K42 [typeof]
      185 CALL                             R14 1 1
      186 JUMPIFNOTEQKS                    R14 K43 ["table"] ; [+3]
      188 MOVE                             R13 R11
      189 JUMP                             ; [+1]
      190 LOADNIL                          R13
      191 FASTCALL1                        TYPEOF R12 ; [+3]
      192 MOVE                             R16 R12
      193 GETIMPORT                        R15 K42 [typeof]
      195 CALL                             R15 1 1
      196 JUMPIFNOTEQKS                    R15 K43 ["table"] ; [+3]
      198 MOVE                             R14 R12
      199 JUMP                             ; [+1]
      200 LOADNIL                          R14
      201 GETTABLEKS                       R15 R10 K21 ["ok"]
      203 JUMPIFNOT                        R15 ; [+4]
      204 JUMPIFNOTEQKNIL                  R13 ; [+12]
      206 JUMPIFNOTEQKNIL                  R14 ; [+10]
      208 DUPTABLE                         R15 K44 [{["ok"] = False, ["texturePreviewId"], ["errorMessage"]}]
      209 SETTABLEKS                       R9 R15 K26 ["texturePreviewId"]
      211 GETTABLEKS                       R17 R10 K23 ["errorMessage"]
      213 ORK                              R16 R17 K45 ["Texture preview did not complete"]
      214 SETTABLEKS                       R16 R15 K23 ["errorMessage"]
      216 RETURN                           R15 1
      217 LOADNIL                          R15
      218 JUMPIFEQKNIL                     R14 ; [+15]
      220 LENGTH                           R16 R14
      221 LOADN                            R17 0
      222 JUMPIFNOTLT                      R17 R16 ; [+11]
      224 GETIMPORT                        R16 K47 [table.clone]
      226 MOVE                             R17 R14
      227 CALL                             R16 1 1
      228 GETIMPORT                        R17 K49 [table.sort]
      230 MOVE                             R18 R16
      231 DUPCLOSURE                       R19 K50 [PROTO_12]
      232 CALL                             R17 2 0
      233 MOVE                             R15 R16
      234 GETTABLEKS                       R17 R10 K38 ["result"]
      236 JUMPIFEQKNIL                     R17 ; [+6]
      238 GETTABLEKS                       R16 R10 K38 ["result"]
      240 GETTABLEKS                       R16 R16 K51 ["camera"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R16
      244 LOADK                            R17 K52 ["texturePreviewId=%* result cameraExtrinsic=%* cameraIntrinsic=%*"]
      245 MOVE                             R19 R9
      246 JUMPIFEQKNIL                     R16 ; [+6]
      248 GETTABLEKS                       R21 R16 K53 ["extrinsic"]
      250 JUMPIFNOT                        R21 ; [+2]
      251 LOADK                            R20 K54 ["set"]
      252 JUMP                             ; [+1]
      253 LOADK                            R20 K55 ["nil"]
      254 JUMPIFEQKNIL                     R16 ; [+6]
      256 GETTABLEKS                       R22 R16 K56 ["intrinsic"]
      258 JUMPIFNOT                        R22 ; [+2]
      259 LOADK                            R21 K54 ["set"]
      260 JUMP                             ; [+1]
      261 LOADK                            R21 K55 ["nil"]
      262 NAMECALL                         R17 R17 K30 ["format"]
      264 CALL                             R17 4 1
      265 GETTABLEKS                       R18 R0 K5 ["capabilities"]
      267 JUMPIFEQKNIL                     R18 ; [+14]
      269 GETTABLEKS                       R18 R0 K5 ["capabilities"]
      271 GETTABLEKS                       R18 R18 K31 ["debugLog"]
      273 JUMPIFNOT                        R18 ; [+8]
      274 GETIMPORT                        R18 K33 [print]
      276 LOADK                            R19 K34 ["[ImageSelectionOps] %*"]
      277 MOVE                             R21 R17
      278 NAMECALL                         R19 R19 K30 ["format"]
      280 CALL                             R19 2 1
      281 CALL                             R18 1 0
      282 DUPTABLE                         R17 K58 [{["ok"] = True, ["texturePreviewId"], ["imageUrls"], ["images"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
      283 SETTABLEKS                       R9 R17 K26 ["texturePreviewId"]
      285 SETTABLEKS                       R13 R17 K39 ["imageUrls"]
      287 SETTABLEKS                       R15 R17 K40 ["images"]
      289 JUMPIFEQKNIL                     R16 ; [+4]
      291 GETTABLEKS                       R18 R16 K53 ["extrinsic"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R18
      295 SETTABLEKS                       R18 R17 K2 ["cameraExtrinsic"]
      297 JUMPIFEQKNIL                     R16 ; [+4]
      299 GETTABLEKS                       R18 R16 K56 ["intrinsic"]
      301 JUMP                             ; [+1]
      302 LOADNIL                          R18
      303 SETTABLEKS                       R18 R17 K3 ["cameraIntrinsic"]
      305 RETURN                           R17 1

PROTO_14:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R1 R0 K0 ["moderationStatus"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+9]
       13 JUMPIFEQKS                       R1 K4 [""] ; [+7]
       15 LOADK                            R2 K5 ["Texture preview image was not returned (moderation status: %*)"]
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K6 ["format"]
       19 CALL                             R2 2 1
       20 RETURN                           R2 1
       21 LOADK                            R2 K7 ["Texture preview did not return an image for this slot"]
       22 RETURN                           R2 1

PROTO_15:
        0 LOADK                            R6 K0 ["Generating"]
        1 SETTABLEKS                       R6 R1 K1 ["status"]
        3 GETTABLEKS                       R6 R3 K2 ["texturePreviewId"]
        5 SETTABLEKS                       R6 R1 K3 ["imageGenerationId"]
        7 MOVE                             R6 R4
        8 CALL                             R6 0 0
        9 MOVE                             R6 R5
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+6]
       12 LOADK                            R6 K4 ["Cancelled"]
       13 SETTABLEKS                       R6 R1 K1 ["status"]
       15 MOVE                             R6 R4
       16 CALL                             R6 0 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R6 R3 K5 ["ok"]
       20 JUMPIF                           R6 ; [+11]
       21 LOADK                            R6 K6 ["Failed"]
       22 SETTABLEKS                       R6 R1 K1 ["status"]
       24 GETTABLEKS                       R7 R3 K8 ["errorMessage"]
       26 ORK                              R6 R7 K7 ["Texture preview failed"]
       27 SETTABLEKS                       R6 R1 K8 ["errorMessage"]
       29 MOVE                             R6 R4
       30 CALL                             R6 0 0
       31 RETURN                           R0 0
       32 LOADNIL                          R6
       33 GETTABLEKS                       R7 R3 K9 ["images"]
       35 JUMPIFEQKNIL                     R7 ; [+75]
       37 GETTABLE                         R8 R7 R2
       38 JUMPIFEQKNIL                     R8 ; [+4]
       40 GETTABLEKS                       R9 R8 K10 ["previewUrl"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R9
       44 FASTCALL1                        TYPEOF R9 ; [+3]
       45 MOVE                             R11 R9
       46 GETIMPORT                        R10 K12 [typeof]
       48 CALL                             R10 1 1
       49 JUMPIFNOTEQKS                    R10 K13 ["string"] ; [+3]
       51 JUMPIFNOTEQKS                    R9 K14 [""] ; [+32]
       53 LOADK                            R10 K6 ["Failed"]
       54 SETTABLEKS                       R10 R1 K1 ["status"]
       56 JUMPIFEQKNIL                     R8 ; [+4]
       58 GETTABLEKS                       R11 R8 K15 ["moderationStatus"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 FASTCALL1                        TYPEOF R11 ; [+3]
       63 MOVE                             R13 R11
       64 GETIMPORT                        R12 K12 [typeof]
       66 CALL                             R12 1 1
       67 JUMPIFNOTEQKS                    R12 K13 ["string"] ; [+10]
       69 JUMPIFEQKS                       R11 K14 [""] ; [+8]
       71 LOADK                            R12 K16 ["Texture preview image was not returned (moderation status: %*)"]
       72 MOVE                             R14 R11
       73 NAMECALL                         R12 R12 K17 ["format"]
       75 CALL                             R12 2 1
       76 MOVE                             R10 R12
       77 JUMP                             ; [+1]
       78 LOADK                            R10 K18 ["Texture preview did not return an image for this slot"]
       79 SETTABLEKS                       R10 R1 K8 ["errorMessage"]
       81 MOVE                             R10 R4
       82 CALL                             R10 0 0
       83 RETURN                           R0 0
       84 MOVE                             R6 R9
       85 JUMPIFEQKNIL                     R8 ; [+32]
       87 GETTABLEKS                       R11 R8 K19 ["index"]
       89 FASTCALL1                        TYPEOF R11 ; [+2]
       90 GETIMPORT                        R10 K12 [typeof]
       92 CALL                             R10 1 1
       93 JUMPIFNOTEQKS                    R10 K20 ["number"] ; [+24]
       95 GETTABLEKS                       R10 R3 K2 ["texturePreviewId"]
       97 JUMPIFEQKNIL                     R10 ; [+20]
       99 DUPTABLE                         R10 K22 [{"texturePreviewId", "imageIndex"}]
      100 GETTABLEKS                       R11 R3 K2 ["texturePreviewId"]
      102 SETTABLEKS                       R11 R10 K2 ["texturePreviewId"]
      104 GETTABLEKS                       R11 R8 K19 ["index"]
      106 SETTABLEKS                       R11 R10 K21 ["imageIndex"]
      108 SETTABLEKS                       R10 R1 K23 ["texturePreviewReference"]
      110 JUMP                             ; [+7]
      111 GETTABLEKS                       R8 R3 K24 ["imageUrls"]
      113 JUMPIFEQKNIL                     R8 ; [+3]
      115 GETTABLE                         R6 R8 R2
      116 JUMP                             ; [+1]
      117 LOADNIL                          R6
      118 FASTCALL1                        TYPEOF R6 ; [+3]
      119 MOVE                             R9 R6
      120 GETIMPORT                        R8 K12 [typeof]
      122 CALL                             R8 1 1
      123 JUMPIFNOTEQKS                    R8 K13 ["string"] ; [+3]
      125 JUMPIFNOTEQKS                    R6 K14 [""] ; [+10]
      127 LOADK                            R8 K6 ["Failed"]
      128 SETTABLEKS                       R8 R1 K1 ["status"]
      130 LOADK                            R8 K18 ["Texture preview did not return an image for this slot"]
      131 SETTABLEKS                       R8 R1 K8 ["errorMessage"]
      133 MOVE                             R8 R4
      134 CALL                             R8 0 0
      135 RETURN                           R0 0
      136 GETTABLEKS                       R8 R3 K25 ["cameraExtrinsic"]
      138 SETTABLEKS                       R8 R1 K25 ["cameraExtrinsic"]
      140 GETTABLEKS                       R8 R3 K26 ["cameraIntrinsic"]
      142 SETTABLEKS                       R8 R1 K26 ["cameraIntrinsic"]
      144 GETUPVAL                         R8 0
      145 MOVE                             R9 R0
      146 MOVE                             R10 R1
      147 MOVE                             R11 R6
      148 LOADNIL                          R12
      149 LOADNIL                          R13
      150 MOVE                             R14 R4
      151 MOVE                             R15 R5
      152 CALL                             R8 7 0
      153 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K3 [{[1], ["status"] = "Pending"}]
        1 SETTABLEKS                       R0 R1 K0 ["index"]
        3 RETURN                           R1 1

PROTO_17:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["textPrompt must be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 LOADB                            R3 1
       16 JUMPIFNOTEQKS                    R0 K6 [""] ; [+10]
       18 LOADB                            R3 0
       19 JUMPIFEQKNIL                     R1 ; [+7]
       21 LENGTH                           R4 R1
       22 LOADN                            R5 0
       23 JUMPIFLT                         R5 R4 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       29 LOADK                            R4 K7 ["textPrompt must be non-empty when there are no extra images"]
       30 GETIMPORT                        R2 K5 [assert]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["textPrompt"]
        2 GETTABLEKS                       R3 R1 K1 ["extraImages"]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R7 R2
        6 GETIMPORT                        R6 K3 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFEQKS                       R6 K4 ["string"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       15 LOADK                            R6 K5 ["textPrompt must be a string"]
       16 GETIMPORT                        R4 K7 [assert]
       18 CALL                             R4 2 0
       19 LOADB                            R5 1
       20 JUMPIFNOTEQKS                    R2 K8 [""] ; [+10]
       22 LOADB                            R5 0
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 LENGTH                           R6 R3
       26 LOADN                            R7 0
       27 JUMPIFLT                         R7 R6 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       33 LOADK                            R6 K9 ["textPrompt must be non-empty when there are no extra images"]
       34 GETIMPORT                        R4 K7 [assert]
       36 CALL                             R4 2 0
       37 DUPTABLE                         R2 K14 [{["index"] = 1, ["status"] = "Pending"}]
       38 DUPCLOSURE                       R3 K15 [PROTO_19]
       39 DUPCLOSURE                       R4 K16 [PROTO_20]
       40 GETTABLEKS                       R6 R1 K17 ["glb"]
       42 GETTABLEKS                       R7 R1 K18 ["assetId"]
       44 LOADB                            R5 0
       45 GETTABLEKS                       R8 R0 K19 ["capabilities"]
       47 JUMPIFEQKNIL                     R8 ; [+20]
       49 LOADB                            R5 0
       50 GETTABLEKS                       R8 R0 K19 ["capabilities"]
       52 GETTABLEKS                       R8 R8 K20 ["batchedPreview"]
       54 JUMPIFNOTEQKB                    R8 TRUE ; [+13]
       56 LOADB                            R5 0
       57 GETTABLEKS                       R8 R0 K21 ["texturePreview"]
       59 JUMPIFEQKNIL                     R8 ; [+8]
       61 LOADB                            R5 1
       62 JUMPIFNOTEQKNIL                  R6 ; [+5]
       64 JUMPIFNOTEQKNIL                  R7 ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 JUMPIFNOT                        R5 ; [+46]
       69 GETUPVAL                         R5 0
       70 MOVE                             R6 R0
       71 DUPTABLE                         R7 K27 [{["slotCount"] = 1, [2], ["extraImages"], ["timeoutSeconds"], ["glb"], ["assetId"], ["autoSelectView"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
       72 GETTABLEKS                       R8 R1 K0 ["textPrompt"]
       74 SETTABLEKS                       R8 R7 K0 ["textPrompt"]
       76 GETTABLEKS                       R8 R1 K1 ["extraImages"]
       78 SETTABLEKS                       R8 R7 K1 ["extraImages"]
       80 GETTABLEKS                       R8 R1 K23 ["timeoutSeconds"]
       82 SETTABLEKS                       R8 R7 K23 ["timeoutSeconds"]
       84 GETTABLEKS                       R8 R1 K17 ["glb"]
       86 SETTABLEKS                       R8 R7 K17 ["glb"]
       88 GETTABLEKS                       R8 R1 K18 ["assetId"]
       90 SETTABLEKS                       R8 R7 K18 ["assetId"]
       92 GETTABLEKS                       R8 R1 K24 ["autoSelectView"]
       94 SETTABLEKS                       R8 R7 K24 ["autoSelectView"]
       96 GETTABLEKS                       R8 R1 K25 ["cameraExtrinsic"]
       98 SETTABLEKS                       R8 R7 K25 ["cameraExtrinsic"]
      100 GETTABLEKS                       R8 R1 K26 ["cameraIntrinsic"]
      102 SETTABLEKS                       R8 R7 K26 ["cameraIntrinsic"]
      104 MOVE                             R8 R4
      105 CALL                             R5 3 1
      106 GETUPVAL                         R6 1
      107 MOVE                             R7 R0
      108 MOVE                             R8 R2
      109 LOADN                            R9 1
      110 MOVE                             R10 R5
      111 MOVE                             R11 R3
      112 MOVE                             R12 R4
      113 CALL                             R6 6 0
      114 JUMP                             ; [+7]
      115 GETUPVAL                         R5 2
      116 MOVE                             R6 R0
      117 MOVE                             R7 R1
      118 MOVE                             R8 R2
      119 MOVE                             R9 R3
      120 MOVE                             R10 R4
      121 CALL                             R5 5 0
      122 GETTABLEKS                       R5 R2 K12 ["status"]
      124 JUMPIFNOTEQKS                    R5 K28 ["Ready"] ; [+5]
      126 GETTABLEKS                       R5 R2 K29 ["thumbnailBase64"]
      128 JUMPIFNOTEQKNIL                  R5 ; [+8]
      130 DUPTABLE                         R5 K31 [{"errorMessage"}]
      131 GETTABLEKS                       R7 R2 K30 ["errorMessage"]
      133 ORK                              R6 R7 K32 ["Image generation failed"]
      134 SETTABLEKS                       R6 R5 K30 ["errorMessage"]
      136 RETURN                           R5 1
      137 DUPTABLE                         R5 K35 [{"imageContent", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference"}]
      138 DUPTABLE                         R6 K41 [{["type"] = "image", ["data"], ["mimeType"] = "image/png"}]
      139 GETTABLEKS                       R7 R2 K29 ["thumbnailBase64"]
      141 SETTABLEKS                       R7 R6 K38 ["data"]
      143 SETTABLEKS                       R6 R5 K33 ["imageContent"]
      145 GETTABLEKS                       R6 R2 K25 ["cameraExtrinsic"]
      147 SETTABLEKS                       R6 R5 K25 ["cameraExtrinsic"]
      149 GETTABLEKS                       R6 R2 K26 ["cameraIntrinsic"]
      151 SETTABLEKS                       R6 R5 K26 ["cameraIntrinsic"]
      153 GETTABLEKS                       R6 R2 K34 ["texturePreviewReference"]
      155 SETTABLEKS                       R6 R5 K34 ["texturePreviewReference"]
      157 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSlotChanged"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 GETIMPORT                        R4 K3 [table.clone]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 MOVE                             R2 R4
       13 GETIMPORT                        R3 K5 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 2
       20 JUMPIF                           R3 ; [+12]
       21 GETIMPORT                        R5 K7 [warn]
       23 LOADK                            R6 K8 ["[ImageSelectionOps] onSlotChanged handler errored: %*"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R9 R4
       26 GETIMPORT                        R8 K10 [tostring]
       28 CALL                             R8 1 1
       29 NAMECALL                         R6 R6 K11 ["format"]
       31 CALL                             R6 2 1
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"studioFlowId", "batchId", "optionIds", "inputGenerationId"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["studioFlowId"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["batchId"]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K5 ["ids"]
       11 SETTABLEKS                       R2 R1 K2 ["optionIds"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K3 ["inputGenerationId"]
       16 SETTABLEKS                       R2 R1 K3 ["inputGenerationId"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onBatchImpression"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R3 K1 ["resolved"]
       13 ADDK                             R4 R4 K2 [1]
       14 SETTABLEKS                       R4 R3 K1 ["resolved"]
       16 JUMPIFEQKNIL                     R1 ; [+9]
       18 GETTABLEKS                       R5 R3 K3 ["ids"]
       20 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       22 MOVE                             R6 R1
       23 GETIMPORT                        R4 K6 [table.insert]
       25 CALL                             R4 2 0
       26 GETTABLEKS                       R4 R3 K1 ["resolved"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K7 ["slotCount"]
       31 JUMPIFNOTLT                      R4 R5 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 1
       35 LOADNIL                          R5
       36 SETTABLE                         R5 R4 R0
       37 GETUPVAL                         R4 2
       38 JUMPIF                           R4 ; [+3]
       39 GETUPVAL                         R4 3
       40 JUMPIFEQ                         R0 R4 ; [+2]
       42 RETURN                           R0 0
       43 GETIMPORT                        R4 K9 [pcall]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R3
       50 CALL                             R4 1 2
       51 JUMPIF                           R4 ; [+12]
       52 GETIMPORT                        R6 K11 [warn]
       54 LOADK                            R7 K12 ["[ImageSelectionOps] onBatchImpression handler errored: %*"]
       55 FASTCALL1                        TOSTRING R5 ; [+3]
       56 MOVE                             R10 R5
       57 GETIMPORT                        R9 K14 [tostring]
       59 CALL                             R9 1 1
       60 NAMECALL                         R7 R7 K15 ["format"]
       62 CALL                             R7 2 1
       63 CALL                             R6 1 0
       64 RETURN                           R0 0

PROTO_26:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+13]
        5 GETIMPORT                        R0 K2 [coroutine.status]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 1
        9 JUMPIFEQKS                       R0 K3 ["dead"] ; [+7]
       11 GETIMPORT                        R0 K5 [pcall]
       13 GETIMPORT                        R1 K8 [task.cancel]
       15 GETUPVAL                         R2 1
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 GETUPVAL                         R0 2
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 JUMPIFEQKNIL                     R4 ; [+13]
       25 GETIMPORT                        R5 K2 [coroutine.status]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 JUMPIFEQKS                       R5 K3 ["dead"] ; [+7]
       31 GETIMPORT                        R5 K5 [pcall]
       33 GETIMPORT                        R6 K8 [task.cancel]
       35 MOVE                             R7 R4
       36 CALL                             R5 2 0
       37 GETUPVAL                         R5 2
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R5 R3
       40 FORGLOOP                         R0 2 ; [-18]
       42 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+20]
        5 GETTABLEKS                       R2 R1 K0 ["imageGenerationId"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+9]
        9 GETTABLEKS                       R2 R1 K1 ["status"]
       11 JUMPIFEQKS                       R2 K2 ["Failed"] ; [+5]
       13 GETTABLEKS                       R2 R1 K1 ["status"]
       15 JUMPIFNOTEQKS                    R2 K3 ["Cancelled"] ; [+9]
       17 GETUPVAL                         R2 1
       18 LOADB                            R3 1
       19 SETTABLE                         R3 R2 R0
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R4 R1 K0 ["imageGenerationId"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 3
        7 GETTABLE                         R2 R3 R0
        8 JUMPIF                           R2 ; [+20]
        9 GETTABLEKS                       R2 R1 K0 ["imageGenerationId"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+9]
       13 GETTABLEKS                       R2 R1 K1 ["status"]
       15 JUMPIFEQKS                       R2 K2 ["Failed"] ; [+5]
       17 GETTABLEKS                       R2 R1 K1 ["status"]
       19 JUMPIFNOTEQKS                    R2 K3 ["Cancelled"] ; [+9]
       21 GETUPVAL                         R2 3
       22 LOADB                            R3 1
       23 SETTABLE                         R3 R2 R0
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R4 R1 K0 ["imageGenerationId"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 4
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 GETUPVAL                         R7 9
       16 CALL                             R1 6 0
       17 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 4
        7 GETUPVAL                         R1 5
        8 JUMPIF                           R1 ; [+6]
        9 GETUPVAL                         R2 6
       10 GETUPVAL                         R3 7
       11 JUMPIFNOTEQ                      R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R0 0
       17 LOADN                            R3 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K0 ["slotCount"]
       21 LOADN                            R2 1
       22 FORNPREP                         R1
       23 GETUPVAL                         R4 8
       24 GETIMPORT                        R5 K3 [task.spawn]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U3
       37 CALL                             R5 1 1
       38 SETTABLE                         R5 R4 R3
       39 FORNLOOP                         R1
       40 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 3
        7 GETTABLE                         R2 R3 R0
        8 JUMPIF                           R2 ; [+20]
        9 GETTABLEKS                       R2 R1 K0 ["imageGenerationId"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+9]
       13 GETTABLEKS                       R2 R1 K1 ["status"]
       15 JUMPIFEQKS                       R2 K2 ["Failed"] ; [+5]
       17 GETTABLEKS                       R2 R1 K1 ["status"]
       19 JUMPIFNOTEQKS                    R2 K3 ["Cancelled"] ; [+9]
       21 GETUPVAL                         R2 3
       22 LOADB                            R3 1
       23 SETTABLE                         R3 R2 R0
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R4 R1 K0 ["imageGenerationId"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 DUPTABLE                         R3 K6 [{"textPrompt", "model", "seedImage", "extraImages", "seed", "timeoutSeconds"}]
        6 GETUPVAL                         R4 4
        7 GETTABLEKS                       R4 R4 K0 ["textPrompt"]
        9 SETTABLEKS                       R4 R3 K0 ["textPrompt"]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K1 ["model"]
       14 SETTABLEKS                       R4 R3 K1 ["model"]
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["seedImage"]
       19 SETTABLEKS                       R4 R3 K2 ["seedImage"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K3 ["extraImages"]
       24 SETTABLEKS                       R4 R3 K3 ["extraImages"]
       26 GETUPVAL                         R5 5
       27 GETUPVAL                         R6 1
       28 GETTABLE                         R4 R5 R6
       29 SETTABLEKS                       R4 R3 K4 ["seed"]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K5 ["timeoutSeconds"]
       34 SETTABLEKS                       R4 R3 K5 ["timeoutSeconds"]
       36 MOVE                             R4 R0
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 GETUPVAL                         R6 10
       45 CALL                             R1 5 0
       46 RETURN                           R0 0

PROTO_34:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 1
        6 GETIMPORT                        R2 K3 [table.clear]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 0
       10 JUMPIFEQKNIL                     R0 ; [+28]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R3 R0 K4 ["textPrompt"]
       15 JUMPIF                           R3 ; [+3]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["textPrompt"]
       19 SETTABLEKS                       R3 R2 K4 ["textPrompt"]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R3 R0 K5 ["seedImage"]
       24 JUMPIF                           R3 ; [+3]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["seedImage"]
       28 SETTABLEKS                       R3 R2 K5 ["seedImage"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R3 R0 K6 ["extraImages"]
       33 JUMPIF                           R3 ; [+3]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K6 ["extraImages"]
       37 SETTABLEKS                       R3 R2 K6 ["extraImages"]
       39 GETUPVAL                         R2 2
       40 DUPTABLE                         R3 K11 [{["resolved"] = 0, ["ids"], ["inputGenerationId"]}]
       41 NEWTABLE                         R4 0 0
       43 SETTABLEKS                       R4 R3 K9 ["ids"]
       45 JUMPIFEQKNIL                     R0 ; [+4]
       47 GETTABLEKS                       R4 R0 K12 ["seedGenerationId"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K10 ["inputGenerationId"]
       53 SETTABLE                         R3 R2 R1
       54 GETIMPORT                        R2 K14 [table.create]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K15 ["slotCount"]
       59 LOADB                            R4 0
       60 CALL                             R2 2 1
       61 NEWCLOSURE                       R3 P0
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R1
       65 GETIMPORT                        R4 K14 [table.create]
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       70 CALL                             R4 1 1
       71 LOADN                            R7 1
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       75 LOADN                            R6 1
       76 FORNPREP                         R5
       77 GETUPVAL                         R8 4
       78 ADDK                             R8 R8 K0 [1]
       79 SETUPVAL                         R8 4
       80 GETUPVAL                         R8 4
       81 SETTABLE                         R8 R4 R7
       82 FORNLOOP                         R5
       83 LOADN                            R7 1
       84 GETUPVAL                         R5 3
       85 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       87 LOADN                            R6 1
       88 FORNPREP                         R5
       89 GETUPVAL                         R8 5
       90 DUPTABLE                         R9 K19 [{["index"], ["status"] = "Pending"}]
       91 SETTABLEKS                       R7 R9 K16 ["index"]
       93 SETTABLE                         R9 R8 R7
       94 GETUPVAL                         R8 6
       95 MOVE                             R9 R7
       96 CALL                             R8 1 0
       97 FORNLOOP                         R5
       98 GETUPVAL                         R6 7
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K20 ["glb"]
      102 GETUPVAL                         R8 3
      103 GETTABLEKS                       R8 R8 K21 ["assetId"]
      105 LOADB                            R5 0
      106 GETTABLEKS                       R9 R6 K22 ["capabilities"]
      108 JUMPIFEQKNIL                     R9 ; [+20]
      110 LOADB                            R5 0
      111 GETTABLEKS                       R9 R6 K22 ["capabilities"]
      113 GETTABLEKS                       R9 R9 K23 ["batchedPreview"]
      115 JUMPIFNOTEQKB                    R9 TRUE ; [+13]
      117 LOADB                            R5 0
      118 GETTABLEKS                       R9 R6 K24 ["texturePreview"]
      120 JUMPIFEQKNIL                     R9 ; [+8]
      122 LOADB                            R5 1
      123 JUMPIFNOTEQKNIL                  R7 ; [+5]
      125 JUMPIFNOTEQKNIL                  R8 ; [+2]
      127 LOADB                            R5 0 +1
      128 LOADB                            R5 1
      129 NEWCLOSURE                       R6 P1
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          VAL R1
      134 JUMPIFNOT                        R5 ; [+20]
      135 GETIMPORT                        R7 K27 [task.spawn]
      137 NEWCLOSURE                       R8 P2
      138 CAPTURE                          UPVAL U10
      139 CAPTURE                          UPVAL U7
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          VAL R3
      142 CAPTURE                          UPVAL U9
      143 CAPTURE                          UPVAL U0
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R1
      146 CAPTURE                          UPVAL U11
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          VAL R2
      151 CAPTURE                          UPVAL U8
      152 CALL                             R7 1 1
      153 SETUPVAL                         R7 9
      154 RETURN                           R0 0
      155 LOADN                            R9 1
      156 GETUPVAL                         R7 3
      157 GETTABLEKS                       R7 R7 K15 ["slotCount"]
      159 LOADN                            R8 1
      160 FORNPREP                         R7
      161 GETUPVAL                         R10 11
      162 GETIMPORT                        R11 K27 [task.spawn]
      164 NEWCLOSURE                       R12 P3
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R9
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R2
      173 CAPTURE                          UPVAL U8
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R3
      176 CALL                             R11 1 1
      177 SETTABLE                         R11 R10 R9
      178 FORNLOOP                         R7
      179 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["restart requires start() to have been called first"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R3 K3 [{"textPrompt", "seedImage", "seedGenerationId"}]
        1 SETTABLEKS                       R0 R3 K0 ["textPrompt"]
        3 SETTABLEKS                       R1 R3 K1 ["seedImage"]
        5 SETTABLEKS                       R2 R3 K2 ["seedGenerationId"]
        7 GETUPVAL                         R5 0
        8 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       10 LOADK                            R6 K4 ["restart requires start() to have been called first"]
       11 GETIMPORT                        R4 K6 [assert]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 0
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["orchestrator's first batch has already started; use restart()"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETIMPORT                        R3 K2 [table.clone]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 MOVE                             R1 R3
        7 RETURN                           R1 1

PROTO_39:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETIMPORT                        R6 K4 [table.clone]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 SETTABLE                         R6 R0 R4
       14 FORGLOOP                         R1 2 ; [-6]
       16 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_42:
        0 GETTABLEKS                       R4 R1 K0 ["slotCount"]
        2 LOADN                            R5 0
        3 JUMPIFLT                         R5 R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        9 LOADK                            R4 K1 ["slotCount must be positive"]
       10 GETIMPORT                        R2 K3 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K4 ["textPrompt"]
       15 GETTABLEKS                       R3 R1 K5 ["extraImages"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R7 R2
       19 GETIMPORT                        R6 K7 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFEQKS                       R6 K8 ["string"] ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       28 LOADK                            R6 K9 ["textPrompt must be a string"]
       29 GETIMPORT                        R4 K3 [assert]
       31 CALL                             R4 2 0
       32 LOADB                            R5 1
       33 JUMPIFNOTEQKS                    R2 K10 [""] ; [+10]
       35 LOADB                            R5 0
       36 JUMPIFEQKNIL                     R3 ; [+7]
       38 LENGTH                           R6 R3
       39 LOADN                            R7 0
       40 JUMPIFLT                         R7 R6 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       46 LOADK                            R6 K11 ["textPrompt must be non-empty when there are no extra images"]
       47 GETIMPORT                        R4 K3 [assert]
       49 CALL                             R4 2 0
       50 GETIMPORT                        R2 K14 [table.create]
       52 GETTABLEKS                       R3 R1 K0 ["slotCount"]
       54 CALL                             R2 1 1
       55 LOADN                            R5 1
       56 GETTABLEKS                       R3 R1 K0 ["slotCount"]
       58 LOADN                            R4 1
       59 FORNPREP                         R3
       60 DUPTABLE                         R6 K18 [{["index"], ["status"] = "Pending"}]
       61 SETTABLEKS                       R5 R6 K15 ["index"]
       63 SETTABLE                         R6 R2 R5
       64 FORNLOOP                         R3
       65 GETIMPORT                        R3 K14 [table.create]
       67 GETTABLEKS                       R4 R1 K0 ["slotCount"]
       69 CALL                             R3 1 1
       70 LOADNIL                          R4
       71 LOADB                            R5 0
       72 LOADB                            R6 0
       73 LOADN                            R7 0
       74 LOADN                            R8 0
       75 GETUPVAL                         R9 0
       76 LOADB                            R11 0
       77 NAMECALL                         R9 R9 K19 ["GenerateGUID"]
       79 CALL                             R9 2 1
       80 NEWTABLE                         R10 0 0
       82 NEWCLOSURE                       R11 P0
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 NEWCLOSURE                       R12 P1
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R10
       88 CAPTURE                          REF R5
       89 CAPTURE                          REF R7
       90 CAPTURE                          VAL R9
       91 NEWCLOSURE                       R13 P2
       92 CAPTURE                          REF R5
       93 CAPTURE                          REF R4
       94 CAPTURE                          VAL R3
       95 NEWCLOSURE                       R14 P3
       96 CAPTURE                          REF R5
       97 CAPTURE                          REF R7
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          REF R8
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R12
      105 CAPTURE                          REF R4
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          VAL R3
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          UPVAL U3
      110 NEWCLOSURE                       R15 P4
      111 CAPTURE                          REF R6
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R14
      114 NEWCLOSURE                       R16 P5
      115 CAPTURE                          REF R6
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R14
      118 DUPTABLE                         R17 K28 [{"start", "restart", "refine", "cancel", "getSlot", "getSlots", "getStudioFlowId", "getBatchId"}]
      119 NEWCLOSURE                       R18 P6
      120 CAPTURE                          REF R6
      121 CAPTURE                          VAL R14
      122 SETTABLEKS                       R18 R17 K20 ["start"]
      124 SETTABLEKS                       R15 R17 K21 ["restart"]
      126 SETTABLEKS                       R16 R17 K22 ["refine"]
      128 SETTABLEKS                       R13 R17 K23 ["cancel"]
      130 NEWCLOSURE                       R18 P7
      131 CAPTURE                          VAL R2
      132 SETTABLEKS                       R18 R17 K24 ["getSlot"]
      134 NEWCLOSURE                       R18 P8
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R18 R17 K25 ["getSlots"]
      138 NEWCLOSURE                       R18 P9
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R18 R17 K26 ["getStudioFlowId"]
      142 NEWCLOSURE                       R18 P10
      143 CAPTURE                          REF R7
      144 SETTABLEKS                       R18 R17 K27 ["getBatchId"]
      146 CLOSEUPVALS                      R4
      147 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Gen3dTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["HostSurface"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K17 [{["Completed"] = True, ["Failed"] = True, ["Terminated"] = True, ["Canceled"] = True}]
       24 NEWTABLE                         R5 4 0
       26 DUPCLOSURE                       R6 K18 [PROTO_0]
       27 DUPCLOSURE                       R7 K19 [PROTO_1]
       28 DUPCLOSURE                       R8 K20 [PROTO_2]
       29 DUPCLOSURE                       R9 K21 [PROTO_3]
       30 SETTABLEKS                       R9 R5 K22 ["buildImages"]
       32 DUPCLOSURE                       R9 K23 [PROTO_4]
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R10 K24 [PROTO_5]
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R11 K25 [PROTO_7]
       37 DUPCLOSURE                       R12 K26 [PROTO_10]
       38 CAPTURE                          VAL R11
       39 DUPCLOSURE                       R13 K27 [PROTO_11]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R12
       43 DUPCLOSURE                       R14 K28 [PROTO_13]
       44 CAPTURE                          VAL R10
       45 DUPCLOSURE                       R15 K29 [PROTO_14]
       46 DUPCLOSURE                       R16 K30 [PROTO_15]
       47 CAPTURE                          VAL R12
       48 DUPCLOSURE                       R17 K31 [PROTO_16]
       49 DUPCLOSURE                       R18 K32 [PROTO_17]
       50 DUPCLOSURE                       R19 K33 [PROTO_18]
       51 DUPCLOSURE                       R20 K34 [PROTO_21]
       52 CAPTURE                          VAL R14
       53 CAPTURE                          VAL R16
       54 CAPTURE                          VAL R13
       55 SETTABLEKS                       R20 R5 K35 ["generateOneAsync"]
       57 DUPCLOSURE                       R20 K36 [PROTO_42]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R14
       60 CAPTURE                          VAL R16
       61 CAPTURE                          VAL R13
       62 SETTABLEKS                       R20 R5 K37 ["createOrchestrator"]
       64 RETURN                           R5 1
