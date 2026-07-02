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
      144 DUPTABLE                         R14 K30 [{["name"] = "none", ["size"] = 0}]
      145 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      147 MOVE                             R13 R3
      148 GETIMPORT                        R12 K27 [table.insert]
      150 CALL                             R12 2 0
      151 GETIMPORT                        R12 K32 [table.sort]
      153 MOVE                             R13 R3
      154 DUPCLOSURE                       R14 K33 [PROTO_2]
      155 CALL                             R12 2 0
      156 GETIMPORT                        R12 K14 [pairs]
      158 GETTABLEKS                       R13 R0 K34 ["Gap"]
      160 CALL                             R12 1 3
      161 FORGPREP_NEXT                    R12
      162 DUPTABLE                         R19 K24 [{"name", "size"}]
      163 GETIMPORT                        R20 K37 [string.lower]
      165 MOVE                             R21 R15
      166 CALL                             R20 1 1
      167 SETTABLEKS                       R20 R19 K22 ["name"]
      169 GETIMPORT                        R20 K40 [UDim.new]
      171 LOADN                            R21 0
      172 MOVE                             R22 R16
      173 CALL                             R20 2 1
      174 SETTABLEKS                       R20 R19 K23 ["size"]
      176 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
      178 MOVE                             R18 R4
      179 GETIMPORT                        R17 K27 [table.insert]
      181 CALL                             R17 2 0
      182 FORGLOOP                         R12 2 ; [-21]
      184 GETIMPORT                        R12 K32 [table.sort]
      186 MOVE                             R13 R4
      187 DUPCLOSURE                       R14 K41 [PROTO_3]
      188 CALL                             R12 2 0
      189 GETIMPORT                        R12 K14 [pairs]
      191 GETTABLEKS                       R13 R0 K42 ["Radius"]
      193 CALL                             R12 1 3
      194 FORGPREP_NEXT                    R12
      195 DUPTABLE                         R19 K24 [{"name", "size"}]
      196 GETIMPORT                        R20 K37 [string.lower]
      198 MOVE                             R21 R15
      199 CALL                             R20 1 1
      200 SETTABLEKS                       R20 R19 K22 ["name"]
      202 GETIMPORT                        R20 K40 [UDim.new]
      204 LOADN                            R21 0
      205 MOVE                             R22 R16
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K23 ["size"]
      209 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      211 MOVE                             R18 R5
      212 GETIMPORT                        R17 K27 [table.insert]
      214 CALL                             R17 2 0
      215 FORGLOOP                         R12 2 ; [-21]
      217 GETIMPORT                        R12 K32 [table.sort]
      219 MOVE                             R13 R5
      220 DUPCLOSURE                       R14 K43 [PROTO_4]
      221 CALL                             R12 2 0
      222 GETIMPORT                        R12 K14 [pairs]
      224 GETTABLEKS                       R13 R0 K44 ["Size"]
      226 CALL                             R12 1 3
      227 FORGPREP_NEXT                    R12
      228 GETIMPORT                        R18 K46 [string.split]
      230 MOVE                             R19 R15
      231 LOADK                            R20 K47 ["_"]
      232 CALL                             R18 2 1
      233 GETTABLEN                        R17 R18 2
      234 DUPTABLE                         R20 K24 [{"name", "size"}]
      235 GETUPVAL                         R21 0
      236 MOVE                             R22 R17
      237 CALL                             R21 1 1
      238 SETTABLEKS                       R21 R20 K22 ["name"]
      240 GETIMPORT                        R21 K40 [UDim.new]
      242 LOADN                            R22 0
      243 MOVE                             R23 R16
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K23 ["size"]
      247 FASTCALL2                        TABLE_INSERT R6 R20 ; [+4]
      249 MOVE                             R19 R6
      250 GETIMPORT                        R18 K27 [table.insert]
      252 CALL                             R18 2 0
      253 FORGLOOP                         R12 2 ; [-26]
      255 DUPTABLE                         R14 K49 [{["name"] = "full", ["size"]}]
      256 GETIMPORT                        R15 K40 [UDim.new]
      258 LOADN                            R16 1
      259 LOADN                            R17 0
      260 CALL                             R15 2 1
      261 SETTABLEKS                       R15 R14 K23 ["size"]
      263 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      265 MOVE                             R13 R6
      266 GETIMPORT                        R12 K27 [table.insert]
      268 CALL                             R12 2 0
      269 GETIMPORT                        R12 K32 [table.sort]
      271 MOVE                             R13 R6
      272 DUPCLOSURE                       R14 K50 [PROTO_5]
      273 CALL                             R12 2 0
      274 GETIMPORT                        R12 K14 [pairs]
      276 GETTABLEKS                       R13 R0 K51 ["Typography"]
      278 CALL                             R12 1 3
      279 FORGPREP_NEXT                    R12
      280 GETUPVAL                         R17 0
      281 MOVE                             R18 R15
      282 CALL                             R17 1 1
      283 DUPTABLE                         R18 K55 [{"Font", "TextSize", "LineHeight"}]
      284 GETTABLEKS                       R19 R16 K52 ["Font"]
      286 SETTABLEKS                       R19 R18 K52 ["Font"]
      288 GETTABLEKS                       R19 R16 K56 ["FontSize"]
      290 SETTABLEKS                       R19 R18 K53 ["TextSize"]
      292 GETTABLEKS                       R19 R16 K54 ["LineHeight"]
      294 SETTABLEKS                       R19 R18 K54 ["LineHeight"]
      296 SETTABLE                         R18 R7 R17
      297 FORGLOOP                         R12 2 ; [-18]
      299 GETIMPORT                        R12 K14 [pairs]
      301 GETTABLEKS                       R13 R0 K57 ["Padding"]
      303 CALL                             R12 1 3
      304 FORGPREP_NEXT                    R12
      305 DUPTABLE                         R19 K24 [{"name", "size"}]
      306 GETIMPORT                        R20 K37 [string.lower]
      308 MOVE                             R21 R15
      309 CALL                             R20 1 1
      310 SETTABLEKS                       R20 R19 K22 ["name"]
      312 GETIMPORT                        R20 K40 [UDim.new]
      314 LOADN                            R21 0
      315 MOVE                             R22 R16
      316 CALL                             R20 2 1
      317 SETTABLEKS                       R20 R19 K23 ["size"]
      319 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      321 MOVE                             R18 R8
      322 GETIMPORT                        R17 K27 [table.insert]
      324 CALL                             R17 2 0
      325 FORGLOOP                         R12 2 ; [-21]
      327 GETIMPORT                        R12 K32 [table.sort]
      329 MOVE                             R13 R8
      330 DUPCLOSURE                       R14 K58 [PROTO_6]
      331 CALL                             R12 2 0
      332 GETIMPORT                        R12 K14 [pairs]
      334 GETTABLEKS                       R13 R0 K59 ["Margin"]
      336 CALL                             R12 1 3
      337 FORGPREP_NEXT                    R12
      338 DUPTABLE                         R19 K24 [{"name", "size"}]
      339 GETIMPORT                        R20 K37 [string.lower]
      341 MOVE                             R21 R15
      342 CALL                             R20 1 1
      343 SETTABLEKS                       R20 R19 K22 ["name"]
      345 GETIMPORT                        R20 K40 [UDim.new]
      347 LOADN                            R21 0
      348 MOVE                             R22 R16
      349 CALL                             R20 2 1
      350 SETTABLEKS                       R20 R19 K23 ["size"]
      352 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      354 MOVE                             R18 R9
      355 GETIMPORT                        R17 K27 [table.insert]
      357 CALL                             R17 2 0
      358 FORGLOOP                         R12 2 ; [-21]
      360 GETIMPORT                        R12 K32 [table.sort]
      362 MOVE                             R13 R9
      363 DUPCLOSURE                       R14 K60 [PROTO_7]
      364 CALL                             R12 2 0
      365 GETIMPORT                        R12 K14 [pairs]
      367 GETTABLEKS                       R13 R0 K61 ["Gutter"]
      369 CALL                             R12 1 3
      370 FORGPREP_NEXT                    R12
      371 DUPTABLE                         R19 K24 [{"name", "size"}]
      372 GETIMPORT                        R20 K37 [string.lower]
      374 MOVE                             R21 R15
      375 CALL                             R20 1 1
      376 SETTABLEKS                       R20 R19 K22 ["name"]
      378 GETIMPORT                        R20 K40 [UDim.new]
      380 LOADN                            R21 0
      381 MOVE                             R22 R16
      382 CALL                             R20 2 1
      383 SETTABLEKS                       R20 R19 K23 ["size"]
      385 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      387 MOVE                             R18 R10
      388 GETIMPORT                        R17 K27 [table.insert]
      390 CALL                             R17 2 0
      391 FORGLOOP                         R12 2 ; [-21]
      393 GETIMPORT                        R12 K32 [table.sort]
      395 MOVE                             R13 R10
      396 DUPCLOSURE                       R14 K62 [PROTO_8]
      397 CALL                             R12 2 0
      398 RETURN                           R11 1

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
