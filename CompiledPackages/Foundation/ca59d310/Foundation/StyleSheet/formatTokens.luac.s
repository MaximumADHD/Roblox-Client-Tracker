PROTO_0:
        0 LOADK                            R2 K0 ["-"]
        1 NAMECALL                         R3 R0 K1 ["lower"]
        3 CALL                             R3 1 1
        4 CONCAT                           R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["_"]
        1 LOADK                            R4 K1 ["-"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 GETIMPORT                        R1 K4 [string.gsub]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K5 ["(%u)"]
       10 DUPCLOSURE                       R4 K6 [PROTO_0]
       11 CALL                             R1 3 1
       12 LOADN                            R4 1
       13 LOADN                            R5 1
       14 NAMECALL                         R2 R1 K7 ["sub"]
       16 CALL                             R2 3 1
       17 JUMPIFNOTEQKS                    R2 K1 ["-"] ; [+7]
       19 LOADN                            R4 2
       20 LENGTH                           R5 R1
       21 NAMECALL                         R2 R1 K7 ["sub"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R4 R1 K0 ["size"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R3 R3 K1 ["Offset"]
        4 GETTABLEKS                       R4 R1 K0 ["size"]
        6 GETTABLEKS                       R4 R4 K1 ["Offset"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 NEWTABLE                         R5 0 0
       10 NEWTABLE                         R6 0 0
       12 NEWTABLE                         R7 0 0
       14 NEWTABLE                         R8 0 0
       16 NEWTABLE                         R9 0 0
       18 NEWTABLE                         R10 0 0
       20 DUPTABLE                         R11 K10 [{"colors", "variants", "strokes", "gaps", "radii", "sizes", "typography", "paddings", "margins", "gutters"}]
       21 SETTABLEKS                       R1 R11 K0 ["colors"]
       23 SETTABLEKS                       R2 R11 K1 ["variants"]
       25 SETTABLEKS                       R3 R11 K2 ["strokes"]
       27 SETTABLEKS                       R4 R11 K3 ["gaps"]
       29 SETTABLEKS                       R5 R11 K4 ["radii"]
       31 SETTABLEKS                       R6 R11 K5 ["sizes"]
       33 SETTABLEKS                       R7 R11 K6 ["typography"]
       35 SETTABLEKS                       R8 R11 K7 ["paddings"]
       37 SETTABLEKS                       R9 R11 K8 ["margins"]
       39 SETTABLEKS                       R10 R11 K9 ["gutters"]
       41 JUMPIFEQKNIL                     R0 ; [+7]
       43 GETIMPORT                        R12 K12 [next]
       45 MOVE                             R13 R0
       46 CALL                             R12 1 1
       47 JUMPIFNOTEQKNIL                  R12 ; [+2]
       49 RETURN                           R11 1
       50 GETIMPORT                        R12 K14 [pairs]
       52 GETTABLEKS                       R13 R0 K15 ["Color"]
       54 CALL                             R12 1 3
       55 FORGPREP_NEXT                    R12
       56 GETTABLEKS                       R17 R16 K16 ["Background"]
       58 JUMPIFNOT                        R17 ; [+5]
       59 GETUPVAL                         R17 0
       60 MOVE                             R18 R15
       61 CALL                             R17 1 1
       62 SETTABLE                         R16 R2 R17
       63 JUMP                             ; [+22]
       64 NEWTABLE                         R17 0 0
       66 SETTABLE                         R17 R1 R15
       67 MOVE                             R17 R16
       68 LOADNIL                          R18
       69 LOADNIL                          R19
       70 FORGPREP                         R17
       71 GETUPVAL                         R24 1
       72 GETTABLE                         R23 R24 R15
       73 JUMPIFNOT                        R23 ; [+4]
       74 MOVE                             R23 R15
       75 MOVE                             R24 R20
       76 CONCAT                           R22 R23 R24
       77 JUMP                             ; [+1]
       78 MOVE                             R22 R20
       79 GETTABLE                         R23 R1 R15
       80 GETUPVAL                         R24 0
       81 MOVE                             R25 R22
       82 CALL                             R24 1 1
       83 SETTABLE                         R21 R23 R24
       84 FORGLOOP                         R17 2 ; [-14]
       86 FORGLOOP                         R12 2 ; [-31]
       88 GETIMPORT                        R12 K14 [pairs]
       90 GETTABLEKS                       R13 R0 K17 ["Inverse"]
       92 CALL                             R12 1 3
       93 FORGPREP_NEXT                    R12
       94 JUMPIFNOTEQKS                    R15 K18 ["Content"] ; [+25]
       96 MOVE                             R17 R16
       97 LOADNIL                          R18
       98 LOADNIL                          R19
       99 FORGPREP                         R17
      100 GETUPVAL                         R24 1
      101 GETTABLE                         R23 R24 R15
      102 JUMPIFNOT                        R23 ; [+4]
      103 MOVE                             R23 R15
      104 MOVE                             R24 R20
      105 CONCAT                           R22 R23 R24
      106 JUMP                             ; [+1]
      107 MOVE                             R22 R20
      108 GETTABLE                         R23 R1 R15
      109 LOADK                            R25 K19 ["inverse-%*"]
      110 GETUPVAL                         R27 0
      111 MOVE                             R28 R22
      112 CALL                             R27 1 1
      113 NAMECALL                         R25 R25 K20 ["format"]
      115 CALL                             R25 2 1
      116 MOVE                             R24 R25
      117 SETTABLE                         R21 R23 R24
      118 FORGLOOP                         R17 2 ; [-19]
      120 FORGLOOP                         R12 2 ; [-27]
      122 GETIMPORT                        R12 K14 [pairs]
      124 GETTABLEKS                       R13 R0 K21 ["Stroke"]
      126 CALL                             R12 1 3
      127 FORGPREP_NEXT                    R12
      128 DUPTABLE                         R19 K24 [{"name", "size"}]
      129 GETUPVAL                         R20 0
      130 MOVE                             R21 R15
      131 CALL                             R20 1 1
      132 SETTABLEKS                       R20 R19 K22 ["name"]
      134 SETTABLEKS                       R16 R19 K23 ["size"]
      136 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      138 MOVE                             R18 R3
      139 GETIMPORT                        R17 K27 [table.insert]
      141 CALL                             R17 2 0
      142 FORGLOOP                         R12 2 ; [-15]
      144 DUPTABLE                         R14 K24 [{"name", "size"}]
      145 LOADK                            R15 K28 ["none"]
      146 SETTABLEKS                       R15 R14 K22 ["name"]
      148 LOADN                            R15 0
      149 SETTABLEKS                       R15 R14 K23 ["size"]
      151 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      153 MOVE                             R13 R3
      154 GETIMPORT                        R12 K27 [table.insert]
      156 CALL                             R12 2 0
      157 GETIMPORT                        R12 K30 [table.sort]
      159 MOVE                             R13 R3
      160 DUPCLOSURE                       R14 K31 [PROTO_2]
      161 CALL                             R12 2 0
      162 GETIMPORT                        R12 K14 [pairs]
      164 GETTABLEKS                       R13 R0 K32 ["Gap"]
      166 CALL                             R12 1 3
      167 FORGPREP_NEXT                    R12
      168 DUPTABLE                         R19 K24 [{"name", "size"}]
      169 GETIMPORT                        R20 K35 [string.lower]
      171 MOVE                             R21 R15
      172 CALL                             R20 1 1
      173 SETTABLEKS                       R20 R19 K22 ["name"]
      175 GETIMPORT                        R20 K38 [UDim.new]
      177 LOADN                            R21 0
      178 MOVE                             R22 R16
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K23 ["size"]
      182 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
      184 MOVE                             R18 R4
      185 GETIMPORT                        R17 K27 [table.insert]
      187 CALL                             R17 2 0
      188 FORGLOOP                         R12 2 ; [-21]
      190 GETIMPORT                        R12 K30 [table.sort]
      192 MOVE                             R13 R4
      193 DUPCLOSURE                       R14 K39 [PROTO_3]
      194 CALL                             R12 2 0
      195 GETIMPORT                        R12 K14 [pairs]
      197 GETTABLEKS                       R13 R0 K40 ["Radius"]
      199 CALL                             R12 1 3
      200 FORGPREP_NEXT                    R12
      201 DUPTABLE                         R19 K24 [{"name", "size"}]
      202 GETIMPORT                        R20 K35 [string.lower]
      204 MOVE                             R21 R15
      205 CALL                             R20 1 1
      206 SETTABLEKS                       R20 R19 K22 ["name"]
      208 GETIMPORT                        R20 K38 [UDim.new]
      210 LOADN                            R21 0
      211 MOVE                             R22 R16
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K23 ["size"]
      215 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      217 MOVE                             R18 R5
      218 GETIMPORT                        R17 K27 [table.insert]
      220 CALL                             R17 2 0
      221 FORGLOOP                         R12 2 ; [-21]
      223 GETIMPORT                        R12 K30 [table.sort]
      225 MOVE                             R13 R5
      226 DUPCLOSURE                       R14 K41 [PROTO_4]
      227 CALL                             R12 2 0
      228 GETIMPORT                        R12 K14 [pairs]
      230 GETTABLEKS                       R13 R0 K42 ["Size"]
      232 CALL                             R12 1 3
      233 FORGPREP_NEXT                    R12
      234 GETIMPORT                        R18 K44 [string.split]
      236 MOVE                             R19 R15
      237 LOADK                            R20 K45 ["_"]
      238 CALL                             R18 2 1
      239 GETTABLEN                        R17 R18 2
      240 DUPTABLE                         R20 K24 [{"name", "size"}]
      241 GETUPVAL                         R21 0
      242 MOVE                             R22 R17
      243 CALL                             R21 1 1
      244 SETTABLEKS                       R21 R20 K22 ["name"]
      246 GETIMPORT                        R21 K38 [UDim.new]
      248 LOADN                            R22 0
      249 MOVE                             R23 R16
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K23 ["size"]
      253 FASTCALL2                        TABLE_INSERT R6 R20 ; [+4]
      255 MOVE                             R19 R6
      256 GETIMPORT                        R18 K27 [table.insert]
      258 CALL                             R18 2 0
      259 FORGLOOP                         R12 2 ; [-26]
      261 DUPTABLE                         R14 K24 [{"name", "size"}]
      262 LOADK                            R15 K46 ["full"]
      263 SETTABLEKS                       R15 R14 K22 ["name"]
      265 GETIMPORT                        R15 K38 [UDim.new]
      267 LOADN                            R16 1
      268 LOADN                            R17 0
      269 CALL                             R15 2 1
      270 SETTABLEKS                       R15 R14 K23 ["size"]
      272 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      274 MOVE                             R13 R6
      275 GETIMPORT                        R12 K27 [table.insert]
      277 CALL                             R12 2 0
      278 GETIMPORT                        R12 K30 [table.sort]
      280 MOVE                             R13 R6
      281 DUPCLOSURE                       R14 K47 [PROTO_5]
      282 CALL                             R12 2 0
      283 GETIMPORT                        R12 K14 [pairs]
      285 GETTABLEKS                       R13 R0 K48 ["Typography"]
      287 CALL                             R12 1 3
      288 FORGPREP_NEXT                    R12
      289 GETUPVAL                         R17 0
      290 MOVE                             R18 R15
      291 CALL                             R17 1 1
      292 DUPTABLE                         R18 K52 [{"Font", "TextSize", "LineHeight"}]
      293 GETTABLEKS                       R19 R16 K49 ["Font"]
      295 SETTABLEKS                       R19 R18 K49 ["Font"]
      297 GETTABLEKS                       R19 R16 K53 ["FontSize"]
      299 SETTABLEKS                       R19 R18 K50 ["TextSize"]
      301 GETTABLEKS                       R19 R16 K51 ["LineHeight"]
      303 SETTABLEKS                       R19 R18 K51 ["LineHeight"]
      305 SETTABLE                         R18 R7 R17
      306 FORGLOOP                         R12 2 ; [-18]
      308 GETIMPORT                        R12 K14 [pairs]
      310 GETTABLEKS                       R13 R0 K54 ["Padding"]
      312 CALL                             R12 1 3
      313 FORGPREP_NEXT                    R12
      314 DUPTABLE                         R19 K24 [{"name", "size"}]
      315 GETIMPORT                        R20 K35 [string.lower]
      317 MOVE                             R21 R15
      318 CALL                             R20 1 1
      319 SETTABLEKS                       R20 R19 K22 ["name"]
      321 GETIMPORT                        R20 K38 [UDim.new]
      323 LOADN                            R21 0
      324 MOVE                             R22 R16
      325 CALL                             R20 2 1
      326 SETTABLEKS                       R20 R19 K23 ["size"]
      328 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      330 MOVE                             R18 R8
      331 GETIMPORT                        R17 K27 [table.insert]
      333 CALL                             R17 2 0
      334 FORGLOOP                         R12 2 ; [-21]
      336 GETIMPORT                        R12 K30 [table.sort]
      338 MOVE                             R13 R8
      339 DUPCLOSURE                       R14 K55 [PROTO_6]
      340 CALL                             R12 2 0
      341 GETIMPORT                        R12 K14 [pairs]
      343 GETTABLEKS                       R13 R0 K56 ["Margin"]
      345 CALL                             R12 1 3
      346 FORGPREP_NEXT                    R12
      347 DUPTABLE                         R19 K24 [{"name", "size"}]
      348 GETIMPORT                        R20 K35 [string.lower]
      350 MOVE                             R21 R15
      351 CALL                             R20 1 1
      352 SETTABLEKS                       R20 R19 K22 ["name"]
      354 GETIMPORT                        R20 K38 [UDim.new]
      356 LOADN                            R21 0
      357 MOVE                             R22 R16
      358 CALL                             R20 2 1
      359 SETTABLEKS                       R20 R19 K23 ["size"]
      361 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      363 MOVE                             R18 R9
      364 GETIMPORT                        R17 K27 [table.insert]
      366 CALL                             R17 2 0
      367 FORGLOOP                         R12 2 ; [-21]
      369 GETIMPORT                        R12 K30 [table.sort]
      371 MOVE                             R13 R9
      372 DUPCLOSURE                       R14 K57 [PROTO_7]
      373 CALL                             R12 2 0
      374 GETIMPORT                        R12 K14 [pairs]
      376 GETTABLEKS                       R13 R0 K58 ["Gutter"]
      378 CALL                             R12 1 3
      379 FORGPREP_NEXT                    R12
      380 DUPTABLE                         R19 K24 [{"name", "size"}]
      381 GETIMPORT                        R20 K35 [string.lower]
      383 MOVE                             R21 R15
      384 CALL                             R20 1 1
      385 SETTABLEKS                       R20 R19 K22 ["name"]
      387 GETIMPORT                        R20 K38 [UDim.new]
      389 LOADN                            R21 0
      390 MOVE                             R22 R16
      391 CALL                             R20 2 1
      392 SETTABLEKS                       R20 R19 K23 ["size"]
      394 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      396 MOVE                             R18 R10
      397 GETIMPORT                        R17 K27 [table.insert]
      399 CALL                             R17 2 0
      400 FORGLOOP                         R12 2 ; [-21]
      402 GETIMPORT                        R12 K30 [table.sort]
      404 MOVE                             R13 R10
      405 DUPCLOSURE                       R14 K59 [PROTO_8]
      406 CALL                             R12 2 0
      407 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["colorScopeKeepPrefix"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Providers"]
       20 GETTABLEKS                       R3 R3 K9 ["Style"]
       22 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["Rules"]
       33 GETTABLEKS                       R4 R4 K12 ["Types"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K13 [PROTO_1]
       37 DUPCLOSURE                       R5 K14 [PROTO_9]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
