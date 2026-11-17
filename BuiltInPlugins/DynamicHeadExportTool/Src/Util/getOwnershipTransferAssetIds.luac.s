PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+11]
        7 GETIMPORT                        R2 K4 [string.match]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K5 ["(%d+)$"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+28]
       14 LOADB                            R3 1
       15 SETTABLE                         R3 R0 R2
       16 RETURN                           R0 0
       17 FASTCALL1                        TYPE R1 ; [+3]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K1 [type]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K6 ["number"] ; [+4]
       24 LOADB                            R2 1
       25 SETTABLE                         R2 R0 R1
       26 RETURN                           R0 0
       27 LOADB                            R3 0
       28 LOADK                            R5 K7 ["Unexpected asset ID value type '"]
       29 FASTCALL1                        TYPE R1 ; [+3]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R6 K1 [type]
       33 CALL                             R6 1 1
       34 LOADK                            R7 K8 ["'"]
       35 CONCAT                           R4 R5 R7
       36 FASTCALL2                        ASSERT R3 R4 ; [+3]
       38 GETIMPORT                        R2 K10 [assert]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+87]
        5 GETTABLEKS                       R2 R1 K2 ["MeshId"]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K4 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
       14 GETIMPORT                        R3 K7 [string.match]
       16 MOVE                             R4 R2
       17 LOADK                            R5 K8 ["(%d+)$"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+28]
       21 LOADB                            R4 1
       22 SETTABLE                         R4 R0 R3
       23 JUMP                             ; [+24]
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R4 R2
       26 GETIMPORT                        R3 K4 [type]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
       31 LOADB                            R3 1
       32 SETTABLE                         R3 R0 R2
       33 JUMP                             ; [+14]
       34 LOADB                            R4 0
       35 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
       36 FASTCALL1                        TYPE R2 ; [+3]
       37 MOVE                             R8 R2
       38 GETIMPORT                        R7 K4 [type]
       40 CALL                             R7 1 1
       41 LOADK                            R8 K11 ["'"]
       42 CONCAT                           R5 R6 R8
       43 FASTCALL2                        ASSERT R4 R5 ; [+3]
       45 GETIMPORT                        R3 K13 [assert]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R2 R1 K14 ["TextureID"]
       50 FASTCALL1                        TYPE R2 ; [+3]
       51 MOVE                             R4 R2
       52 GETIMPORT                        R3 K4 [type]
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
       57 GETIMPORT                        R3 K7 [string.match]
       59 MOVE                             R4 R2
       60 LOADK                            R5 K8 ["(%d+)$"]
       61 CALL                             R3 2 1
       62 JUMPIFEQKNIL                     R3 ; [+347]
       64 LOADB                            R4 1
       65 SETTABLE                         R4 R0 R3
       66 RETURN                           R0 0
       67 FASTCALL1                        TYPE R2 ; [+3]
       68 MOVE                             R4 R2
       69 GETIMPORT                        R3 K4 [type]
       71 CALL                             R3 1 1
       72 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
       74 LOADB                            R3 1
       75 SETTABLE                         R3 R0 R2
       76 RETURN                           R0 0
       77 LOADB                            R4 0
       78 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
       79 FASTCALL1                        TYPE R2 ; [+3]
       80 MOVE                             R8 R2
       81 GETIMPORT                        R7 K4 [type]
       83 CALL                             R7 1 1
       84 LOADK                            R8 K11 ["'"]
       85 CONCAT                           R5 R6 R8
       86 FASTCALL2                        ASSERT R4 R5 ; [+3]
       88 GETIMPORT                        R3 K13 [assert]
       90 CALL                             R3 2 0
       91 RETURN                           R0 0
       92 LOADK                            R4 K15 ["SpecialMesh"]
       93 NAMECALL                         R2 R1 K1 ["IsA"]
       95 CALL                             R2 2 1
       96 JUMPIFNOT                        R2 ; [+87]
       97 GETTABLEKS                       R2 R1 K2 ["MeshId"]
       99 FASTCALL1                        TYPE R2 ; [+3]
      100 MOVE                             R4 R2
      101 GETIMPORT                        R3 K4 [type]
      103 CALL                             R3 1 1
      104 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      106 GETIMPORT                        R3 K7 [string.match]
      108 MOVE                             R4 R2
      109 LOADK                            R5 K8 ["(%d+)$"]
      110 CALL                             R3 2 1
      111 JUMPIFEQKNIL                     R3 ; [+28]
      113 LOADB                            R4 1
      114 SETTABLE                         R4 R0 R3
      115 JUMP                             ; [+24]
      116 FASTCALL1                        TYPE R2 ; [+3]
      117 MOVE                             R4 R2
      118 GETIMPORT                        R3 K4 [type]
      120 CALL                             R3 1 1
      121 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      123 LOADB                            R3 1
      124 SETTABLE                         R3 R0 R2
      125 JUMP                             ; [+14]
      126 LOADB                            R4 0
      127 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      128 FASTCALL1                        TYPE R2 ; [+3]
      129 MOVE                             R8 R2
      130 GETIMPORT                        R7 K4 [type]
      132 CALL                             R7 1 1
      133 LOADK                            R8 K11 ["'"]
      134 CONCAT                           R5 R6 R8
      135 FASTCALL2                        ASSERT R4 R5 ; [+3]
      137 GETIMPORT                        R3 K13 [assert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R2 R1 K16 ["TextureId"]
      142 FASTCALL1                        TYPE R2 ; [+3]
      143 MOVE                             R4 R2
      144 GETIMPORT                        R3 K4 [type]
      146 CALL                             R3 1 1
      147 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      149 GETIMPORT                        R3 K7 [string.match]
      151 MOVE                             R4 R2
      152 LOADK                            R5 K8 ["(%d+)$"]
      153 CALL                             R3 2 1
      154 JUMPIFEQKNIL                     R3 ; [+255]
      156 LOADB                            R4 1
      157 SETTABLE                         R4 R0 R3
      158 RETURN                           R0 0
      159 FASTCALL1                        TYPE R2 ; [+3]
      160 MOVE                             R4 R2
      161 GETIMPORT                        R3 K4 [type]
      163 CALL                             R3 1 1
      164 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      166 LOADB                            R3 1
      167 SETTABLE                         R3 R0 R2
      168 RETURN                           R0 0
      169 LOADB                            R4 0
      170 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      171 FASTCALL1                        TYPE R2 ; [+3]
      172 MOVE                             R8 R2
      173 GETIMPORT                        R7 K4 [type]
      175 CALL                             R7 1 1
      176 LOADK                            R8 K11 ["'"]
      177 CONCAT                           R5 R6 R8
      178 FASTCALL2                        ASSERT R4 R5 ; [+3]
      180 GETIMPORT                        R3 K13 [assert]
      182 CALL                             R3 2 0
      183 RETURN                           R0 0
      184 LOADK                            R4 K17 ["Animation"]
      185 NAMECALL                         R2 R1 K1 ["IsA"]
      187 CALL                             R2 2 1
      188 JUMPIFNOT                        R2 ; [+44]
      189 GETTABLEKS                       R2 R1 K18 ["AnimationId"]
      191 FASTCALL1                        TYPE R2 ; [+3]
      192 MOVE                             R4 R2
      193 GETIMPORT                        R3 K4 [type]
      195 CALL                             R3 1 1
      196 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      198 GETIMPORT                        R3 K7 [string.match]
      200 MOVE                             R4 R2
      201 LOADK                            R5 K8 ["(%d+)$"]
      202 CALL                             R3 2 1
      203 JUMPIFEQKNIL                     R3 ; [+206]
      205 LOADB                            R4 1
      206 SETTABLE                         R4 R0 R3
      207 RETURN                           R0 0
      208 FASTCALL1                        TYPE R2 ; [+3]
      209 MOVE                             R4 R2
      210 GETIMPORT                        R3 K4 [type]
      212 CALL                             R3 1 1
      213 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      215 LOADB                            R3 1
      216 SETTABLE                         R3 R0 R2
      217 RETURN                           R0 0
      218 LOADB                            R4 0
      219 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      220 FASTCALL1                        TYPE R2 ; [+3]
      221 MOVE                             R8 R2
      222 GETIMPORT                        R7 K4 [type]
      224 CALL                             R7 1 1
      225 LOADK                            R8 K11 ["'"]
      226 CONCAT                           R5 R6 R8
      227 FASTCALL2                        ASSERT R4 R5 ; [+3]
      229 GETIMPORT                        R3 K13 [assert]
      231 CALL                             R3 2 0
      232 RETURN                           R0 0
      233 LOADK                            R4 K19 ["SurfaceAppearance"]
      234 NAMECALL                         R2 R1 K1 ["IsA"]
      236 CALL                             R2 2 1
      237 JUMPIFNOT                        R2 ; [+172]
      238 GETTABLEKS                       R2 R1 K20 ["ColorMap"]
      240 FASTCALL1                        TYPE R2 ; [+3]
      241 MOVE                             R4 R2
      242 GETIMPORT                        R3 K4 [type]
      244 CALL                             R3 1 1
      245 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      247 GETIMPORT                        R3 K7 [string.match]
      249 MOVE                             R4 R2
      250 LOADK                            R5 K8 ["(%d+)$"]
      251 CALL                             R3 2 1
      252 JUMPIFEQKNIL                     R3 ; [+28]
      254 LOADB                            R4 1
      255 SETTABLE                         R4 R0 R3
      256 JUMP                             ; [+24]
      257 FASTCALL1                        TYPE R2 ; [+3]
      258 MOVE                             R4 R2
      259 GETIMPORT                        R3 K4 [type]
      261 CALL                             R3 1 1
      262 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      264 LOADB                            R3 1
      265 SETTABLE                         R3 R0 R2
      266 JUMP                             ; [+14]
      267 LOADB                            R4 0
      268 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      269 FASTCALL1                        TYPE R2 ; [+3]
      270 MOVE                             R8 R2
      271 GETIMPORT                        R7 K4 [type]
      273 CALL                             R7 1 1
      274 LOADK                            R8 K11 ["'"]
      275 CONCAT                           R5 R6 R8
      276 FASTCALL2                        ASSERT R4 R5 ; [+3]
      278 GETIMPORT                        R3 K13 [assert]
      280 CALL                             R3 2 0
      281 GETTABLEKS                       R2 R1 K21 ["MetalnessMap"]
      283 FASTCALL1                        TYPE R2 ; [+3]
      284 MOVE                             R4 R2
      285 GETIMPORT                        R3 K4 [type]
      287 CALL                             R3 1 1
      288 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      290 GETIMPORT                        R3 K7 [string.match]
      292 MOVE                             R4 R2
      293 LOADK                            R5 K8 ["(%d+)$"]
      294 CALL                             R3 2 1
      295 JUMPIFEQKNIL                     R3 ; [+28]
      297 LOADB                            R4 1
      298 SETTABLE                         R4 R0 R3
      299 JUMP                             ; [+24]
      300 FASTCALL1                        TYPE R2 ; [+3]
      301 MOVE                             R4 R2
      302 GETIMPORT                        R3 K4 [type]
      304 CALL                             R3 1 1
      305 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      307 LOADB                            R3 1
      308 SETTABLE                         R3 R0 R2
      309 JUMP                             ; [+14]
      310 LOADB                            R4 0
      311 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      312 FASTCALL1                        TYPE R2 ; [+3]
      313 MOVE                             R8 R2
      314 GETIMPORT                        R7 K4 [type]
      316 CALL                             R7 1 1
      317 LOADK                            R8 K11 ["'"]
      318 CONCAT                           R5 R6 R8
      319 FASTCALL2                        ASSERT R4 R5 ; [+3]
      321 GETIMPORT                        R3 K13 [assert]
      323 CALL                             R3 2 0
      324 GETTABLEKS                       R2 R1 K22 ["NormalMap"]
      326 FASTCALL1                        TYPE R2 ; [+3]
      327 MOVE                             R4 R2
      328 GETIMPORT                        R3 K4 [type]
      330 CALL                             R3 1 1
      331 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      333 GETIMPORT                        R3 K7 [string.match]
      335 MOVE                             R4 R2
      336 LOADK                            R5 K8 ["(%d+)$"]
      337 CALL                             R3 2 1
      338 JUMPIFEQKNIL                     R3 ; [+28]
      340 LOADB                            R4 1
      341 SETTABLE                         R4 R0 R3
      342 JUMP                             ; [+24]
      343 FASTCALL1                        TYPE R2 ; [+3]
      344 MOVE                             R4 R2
      345 GETIMPORT                        R3 K4 [type]
      347 CALL                             R3 1 1
      348 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      350 LOADB                            R3 1
      351 SETTABLE                         R3 R0 R2
      352 JUMP                             ; [+14]
      353 LOADB                            R4 0
      354 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      355 FASTCALL1                        TYPE R2 ; [+3]
      356 MOVE                             R8 R2
      357 GETIMPORT                        R7 K4 [type]
      359 CALL                             R7 1 1
      360 LOADK                            R8 K11 ["'"]
      361 CONCAT                           R5 R6 R8
      362 FASTCALL2                        ASSERT R4 R5 ; [+3]
      364 GETIMPORT                        R3 K13 [assert]
      366 CALL                             R3 2 0
      367 GETTABLEKS                       R2 R1 K23 ["RoughnessMap"]
      369 FASTCALL1                        TYPE R2 ; [+3]
      370 MOVE                             R4 R2
      371 GETIMPORT                        R3 K4 [type]
      373 CALL                             R3 1 1
      374 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      376 GETIMPORT                        R3 K7 [string.match]
      378 MOVE                             R4 R2
      379 LOADK                            R5 K8 ["(%d+)$"]
      380 CALL                             R3 2 1
      381 JUMPIFEQKNIL                     R3 ; [+28]
      383 LOADB                            R4 1
      384 SETTABLE                         R4 R0 R3
      385 RETURN                           R0 0
      386 FASTCALL1                        TYPE R2 ; [+3]
      387 MOVE                             R4 R2
      388 GETIMPORT                        R3 K4 [type]
      390 CALL                             R3 1 1
      391 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      393 LOADB                            R3 1
      394 SETTABLE                         R3 R0 R2
      395 RETURN                           R0 0
      396 LOADB                            R4 0
      397 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      398 FASTCALL1                        TYPE R2 ; [+3]
      399 MOVE                             R8 R2
      400 GETIMPORT                        R7 K4 [type]
      402 CALL                             R7 1 1
      403 LOADK                            R8 K11 ["'"]
      404 CONCAT                           R5 R6 R8
      405 FASTCALL2                        ASSERT R4 R5 ; [+3]
      407 GETIMPORT                        R3 K13 [assert]
      409 CALL                             R3 2 0
      410 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 NAMECALL                         R2 R1 K0 ["GetDescendants"]
        6 CALL                             R2 1 3
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R0
       10 MOVE                             R9 R6
       11 CALL                             R7 2 0
       12 FORGLOOP                         R2 2 ; [-5]
       14 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Tag"]
        6 NAMECALL                         R1 R1 K1 ["GetTagged"]
        8 CALL                             R1 2 3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 2
       11 MOVE                             R7 R0
       12 MOVE                             R8 R5
       13 CALL                             R6 2 0
       14 NAMECALL                         R6 R5 K2 ["GetDescendants"]
       16 CALL                             R6 1 3
       17 FORGPREP                         R6
       18 GETUPVAL                         R11 2
       19 MOVE                             R12 R0
       20 MOVE                             R13 R10
       21 CALL                             R11 2 0
       22 FORGLOOP                         R6 2 ; [-5]
       24 FORGLOOP                         R1 2 ; [-15]
       26 NEWTABLE                         R1 0 0
       28 MOVE                             R2 R0
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       34 MOVE                             R8 R1
       35 MOVE                             R9 R5
       36 GETIMPORT                        R7 K5 [table.insert]
       38 CALL                             R7 2 0
       39 FORGLOOP                         R2 1 ; [-8]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 DUPCLOSURE                       R4 K13 [PROTO_1]
       22 DUPCLOSURE                       R5 K14 [PROTO_2]
       23 CAPTURE                          VAL R4
       24 DUPCLOSURE                       R6 K15 [PROTO_3]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 RETURN                           R6 1
