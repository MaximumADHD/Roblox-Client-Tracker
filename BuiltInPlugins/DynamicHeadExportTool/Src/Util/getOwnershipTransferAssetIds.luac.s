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
       12 JUMPIFEQKNIL                     R2 ; [+29]
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
       30 MOVE                             R9 R1
       31 GETIMPORT                        R8 K1 [type]
       33 CALL                             R8 1 1
       34 MOVE                             R6 R8
       35 LOADK                            R7 K8 ["'"]
       36 CONCAT                           R4 R5 R7
       37 FASTCALL2                        ASSERT R3 R4 ; [+3]
       39 GETIMPORT                        R2 K10 [assert]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+89]
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
       19 JUMPIFEQKNIL                     R3 ; [+29]
       21 LOADB                            R4 1
       22 SETTABLE                         R4 R0 R3
       23 JUMP                             ; [+25]
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R4 R2
       26 GETIMPORT                        R3 K4 [type]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
       31 LOADB                            R3 1
       32 SETTABLE                         R3 R0 R2
       33 JUMP                             ; [+15]
       34 LOADB                            R4 0
       35 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
       36 FASTCALL1                        TYPE R2 ; [+3]
       37 MOVE                             R10 R2
       38 GETIMPORT                        R9 K4 [type]
       40 CALL                             R9 1 1
       41 MOVE                             R7 R9
       42 LOADK                            R8 K11 ["'"]
       43 CONCAT                           R5 R6 R8
       44 FASTCALL2                        ASSERT R4 R5 ; [+3]
       46 GETIMPORT                        R3 K13 [assert]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R2 R1 K14 ["TextureID"]
       51 FASTCALL1                        TYPE R2 ; [+3]
       52 MOVE                             R4 R2
       53 GETIMPORT                        R3 K4 [type]
       55 CALL                             R3 1 1
       56 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
       58 GETIMPORT                        R3 K7 [string.match]
       60 MOVE                             R4 R2
       61 LOADK                            R5 K8 ["(%d+)$"]
       62 CALL                             R3 2 1
       63 JUMPIFEQKNIL                     R3 ; [+355]
       65 LOADB                            R4 1
       66 SETTABLE                         R4 R0 R3
       67 RETURN                           R0 0
       68 FASTCALL1                        TYPE R2 ; [+3]
       69 MOVE                             R4 R2
       70 GETIMPORT                        R3 K4 [type]
       72 CALL                             R3 1 1
       73 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
       75 LOADB                            R3 1
       76 SETTABLE                         R3 R0 R2
       77 RETURN                           R0 0
       78 LOADB                            R4 0
       79 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
       80 FASTCALL1                        TYPE R2 ; [+3]
       81 MOVE                             R10 R2
       82 GETIMPORT                        R9 K4 [type]
       84 CALL                             R9 1 1
       85 MOVE                             R7 R9
       86 LOADK                            R8 K11 ["'"]
       87 CONCAT                           R5 R6 R8
       88 FASTCALL2                        ASSERT R4 R5 ; [+3]
       90 GETIMPORT                        R3 K13 [assert]
       92 CALL                             R3 2 0
       93 RETURN                           R0 0
       94 LOADK                            R4 K15 ["SpecialMesh"]
       95 NAMECALL                         R2 R1 K1 ["IsA"]
       97 CALL                             R2 2 1
       98 JUMPIFNOT                        R2 ; [+89]
       99 GETTABLEKS                       R2 R1 K2 ["MeshId"]
      101 FASTCALL1                        TYPE R2 ; [+3]
      102 MOVE                             R4 R2
      103 GETIMPORT                        R3 K4 [type]
      105 CALL                             R3 1 1
      106 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      108 GETIMPORT                        R3 K7 [string.match]
      110 MOVE                             R4 R2
      111 LOADK                            R5 K8 ["(%d+)$"]
      112 CALL                             R3 2 1
      113 JUMPIFEQKNIL                     R3 ; [+29]
      115 LOADB                            R4 1
      116 SETTABLE                         R4 R0 R3
      117 JUMP                             ; [+25]
      118 FASTCALL1                        TYPE R2 ; [+3]
      119 MOVE                             R4 R2
      120 GETIMPORT                        R3 K4 [type]
      122 CALL                             R3 1 1
      123 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      125 LOADB                            R3 1
      126 SETTABLE                         R3 R0 R2
      127 JUMP                             ; [+15]
      128 LOADB                            R4 0
      129 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      130 FASTCALL1                        TYPE R2 ; [+3]
      131 MOVE                             R10 R2
      132 GETIMPORT                        R9 K4 [type]
      134 CALL                             R9 1 1
      135 MOVE                             R7 R9
      136 LOADK                            R8 K11 ["'"]
      137 CONCAT                           R5 R6 R8
      138 FASTCALL2                        ASSERT R4 R5 ; [+3]
      140 GETIMPORT                        R3 K13 [assert]
      142 CALL                             R3 2 0
      143 GETTABLEKS                       R2 R1 K16 ["TextureId"]
      145 FASTCALL1                        TYPE R2 ; [+3]
      146 MOVE                             R4 R2
      147 GETIMPORT                        R3 K4 [type]
      149 CALL                             R3 1 1
      150 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      152 GETIMPORT                        R3 K7 [string.match]
      154 MOVE                             R4 R2
      155 LOADK                            R5 K8 ["(%d+)$"]
      156 CALL                             R3 2 1
      157 JUMPIFEQKNIL                     R3 ; [+261]
      159 LOADB                            R4 1
      160 SETTABLE                         R4 R0 R3
      161 RETURN                           R0 0
      162 FASTCALL1                        TYPE R2 ; [+3]
      163 MOVE                             R4 R2
      164 GETIMPORT                        R3 K4 [type]
      166 CALL                             R3 1 1
      167 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      169 LOADB                            R3 1
      170 SETTABLE                         R3 R0 R2
      171 RETURN                           R0 0
      172 LOADB                            R4 0
      173 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      174 FASTCALL1                        TYPE R2 ; [+3]
      175 MOVE                             R10 R2
      176 GETIMPORT                        R9 K4 [type]
      178 CALL                             R9 1 1
      179 MOVE                             R7 R9
      180 LOADK                            R8 K11 ["'"]
      181 CONCAT                           R5 R6 R8
      182 FASTCALL2                        ASSERT R4 R5 ; [+3]
      184 GETIMPORT                        R3 K13 [assert]
      186 CALL                             R3 2 0
      187 RETURN                           R0 0
      188 LOADK                            R4 K17 ["Animation"]
      189 NAMECALL                         R2 R1 K1 ["IsA"]
      191 CALL                             R2 2 1
      192 JUMPIFNOT                        R2 ; [+45]
      193 GETTABLEKS                       R2 R1 K18 ["AnimationId"]
      195 FASTCALL1                        TYPE R2 ; [+3]
      196 MOVE                             R4 R2
      197 GETIMPORT                        R3 K4 [type]
      199 CALL                             R3 1 1
      200 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      202 GETIMPORT                        R3 K7 [string.match]
      204 MOVE                             R4 R2
      205 LOADK                            R5 K8 ["(%d+)$"]
      206 CALL                             R3 2 1
      207 JUMPIFEQKNIL                     R3 ; [+211]
      209 LOADB                            R4 1
      210 SETTABLE                         R4 R0 R3
      211 RETURN                           R0 0
      212 FASTCALL1                        TYPE R2 ; [+3]
      213 MOVE                             R4 R2
      214 GETIMPORT                        R3 K4 [type]
      216 CALL                             R3 1 1
      217 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      219 LOADB                            R3 1
      220 SETTABLE                         R3 R0 R2
      221 RETURN                           R0 0
      222 LOADB                            R4 0
      223 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      224 FASTCALL1                        TYPE R2 ; [+3]
      225 MOVE                             R10 R2
      226 GETIMPORT                        R9 K4 [type]
      228 CALL                             R9 1 1
      229 MOVE                             R7 R9
      230 LOADK                            R8 K11 ["'"]
      231 CONCAT                           R5 R6 R8
      232 FASTCALL2                        ASSERT R4 R5 ; [+3]
      234 GETIMPORT                        R3 K13 [assert]
      236 CALL                             R3 2 0
      237 RETURN                           R0 0
      238 LOADK                            R4 K19 ["SurfaceAppearance"]
      239 NAMECALL                         R2 R1 K1 ["IsA"]
      241 CALL                             R2 2 1
      242 JUMPIFNOT                        R2 ; [+176]
      243 GETTABLEKS                       R2 R1 K20 ["ColorMap"]
      245 FASTCALL1                        TYPE R2 ; [+3]
      246 MOVE                             R4 R2
      247 GETIMPORT                        R3 K4 [type]
      249 CALL                             R3 1 1
      250 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      252 GETIMPORT                        R3 K7 [string.match]
      254 MOVE                             R4 R2
      255 LOADK                            R5 K8 ["(%d+)$"]
      256 CALL                             R3 2 1
      257 JUMPIFEQKNIL                     R3 ; [+29]
      259 LOADB                            R4 1
      260 SETTABLE                         R4 R0 R3
      261 JUMP                             ; [+25]
      262 FASTCALL1                        TYPE R2 ; [+3]
      263 MOVE                             R4 R2
      264 GETIMPORT                        R3 K4 [type]
      266 CALL                             R3 1 1
      267 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      269 LOADB                            R3 1
      270 SETTABLE                         R3 R0 R2
      271 JUMP                             ; [+15]
      272 LOADB                            R4 0
      273 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      274 FASTCALL1                        TYPE R2 ; [+3]
      275 MOVE                             R10 R2
      276 GETIMPORT                        R9 K4 [type]
      278 CALL                             R9 1 1
      279 MOVE                             R7 R9
      280 LOADK                            R8 K11 ["'"]
      281 CONCAT                           R5 R6 R8
      282 FASTCALL2                        ASSERT R4 R5 ; [+3]
      284 GETIMPORT                        R3 K13 [assert]
      286 CALL                             R3 2 0
      287 GETTABLEKS                       R2 R1 K21 ["MetalnessMap"]
      289 FASTCALL1                        TYPE R2 ; [+3]
      290 MOVE                             R4 R2
      291 GETIMPORT                        R3 K4 [type]
      293 CALL                             R3 1 1
      294 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      296 GETIMPORT                        R3 K7 [string.match]
      298 MOVE                             R4 R2
      299 LOADK                            R5 K8 ["(%d+)$"]
      300 CALL                             R3 2 1
      301 JUMPIFEQKNIL                     R3 ; [+29]
      303 LOADB                            R4 1
      304 SETTABLE                         R4 R0 R3
      305 JUMP                             ; [+25]
      306 FASTCALL1                        TYPE R2 ; [+3]
      307 MOVE                             R4 R2
      308 GETIMPORT                        R3 K4 [type]
      310 CALL                             R3 1 1
      311 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      313 LOADB                            R3 1
      314 SETTABLE                         R3 R0 R2
      315 JUMP                             ; [+15]
      316 LOADB                            R4 0
      317 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      318 FASTCALL1                        TYPE R2 ; [+3]
      319 MOVE                             R10 R2
      320 GETIMPORT                        R9 K4 [type]
      322 CALL                             R9 1 1
      323 MOVE                             R7 R9
      324 LOADK                            R8 K11 ["'"]
      325 CONCAT                           R5 R6 R8
      326 FASTCALL2                        ASSERT R4 R5 ; [+3]
      328 GETIMPORT                        R3 K13 [assert]
      330 CALL                             R3 2 0
      331 GETTABLEKS                       R2 R1 K22 ["NormalMap"]
      333 FASTCALL1                        TYPE R2 ; [+3]
      334 MOVE                             R4 R2
      335 GETIMPORT                        R3 K4 [type]
      337 CALL                             R3 1 1
      338 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      340 GETIMPORT                        R3 K7 [string.match]
      342 MOVE                             R4 R2
      343 LOADK                            R5 K8 ["(%d+)$"]
      344 CALL                             R3 2 1
      345 JUMPIFEQKNIL                     R3 ; [+29]
      347 LOADB                            R4 1
      348 SETTABLE                         R4 R0 R3
      349 JUMP                             ; [+25]
      350 FASTCALL1                        TYPE R2 ; [+3]
      351 MOVE                             R4 R2
      352 GETIMPORT                        R3 K4 [type]
      354 CALL                             R3 1 1
      355 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      357 LOADB                            R3 1
      358 SETTABLE                         R3 R0 R2
      359 JUMP                             ; [+15]
      360 LOADB                            R4 0
      361 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      362 FASTCALL1                        TYPE R2 ; [+3]
      363 MOVE                             R10 R2
      364 GETIMPORT                        R9 K4 [type]
      366 CALL                             R9 1 1
      367 MOVE                             R7 R9
      368 LOADK                            R8 K11 ["'"]
      369 CONCAT                           R5 R6 R8
      370 FASTCALL2                        ASSERT R4 R5 ; [+3]
      372 GETIMPORT                        R3 K13 [assert]
      374 CALL                             R3 2 0
      375 GETTABLEKS                       R2 R1 K23 ["RoughnessMap"]
      377 FASTCALL1                        TYPE R2 ; [+3]
      378 MOVE                             R4 R2
      379 GETIMPORT                        R3 K4 [type]
      381 CALL                             R3 1 1
      382 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+11]
      384 GETIMPORT                        R3 K7 [string.match]
      386 MOVE                             R4 R2
      387 LOADK                            R5 K8 ["(%d+)$"]
      388 CALL                             R3 2 1
      389 JUMPIFEQKNIL                     R3 ; [+29]
      391 LOADB                            R4 1
      392 SETTABLE                         R4 R0 R3
      393 RETURN                           R0 0
      394 FASTCALL1                        TYPE R2 ; [+3]
      395 MOVE                             R4 R2
      396 GETIMPORT                        R3 K4 [type]
      398 CALL                             R3 1 1
      399 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
      401 LOADB                            R3 1
      402 SETTABLE                         R3 R0 R2
      403 RETURN                           R0 0
      404 LOADB                            R4 0
      405 LOADK                            R6 K10 ["Unexpected asset ID value type '"]
      406 FASTCALL1                        TYPE R2 ; [+3]
      407 MOVE                             R10 R2
      408 GETIMPORT                        R9 K4 [type]
      410 CALL                             R9 1 1
      411 MOVE                             R7 R9
      412 LOADK                            R8 K11 ["'"]
      413 CONCAT                           R5 R6 R8
      414 FASTCALL2                        ASSERT R4 R5 ; [+3]
      416 GETIMPORT                        R3 K13 [assert]
      418 CALL                             R3 2 0
      419 RETURN                           R0 0

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
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Tag"]
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
       15 GETTABLEKS                       R4 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R4 K11 ["Constants"]
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
