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
       50 GETTABLEKS                       R12 R0 K13 ["Color"]
       52 LOADNIL                          R13
       53 LOADNIL                          R14
       54 FORGPREP                         R12
       55 GETTABLEKS                       R17 R16 K14 ["Background"]
       57 JUMPIFNOT                        R17 ; [+5]
       58 GETUPVAL                         R17 0
       59 MOVE                             R18 R15
       60 CALL                             R17 1 1
       61 SETTABLE                         R16 R2 R17
       62 JUMP                             ; [+22]
       63 NEWTABLE                         R17 0 0
       65 SETTABLE                         R17 R1 R15
       66 MOVE                             R17 R16
       67 LOADNIL                          R18
       68 LOADNIL                          R19
       69 FORGPREP                         R17
       70 GETUPVAL                         R24 1
       71 GETTABLE                         R23 R24 R15
       72 JUMPIFNOT                        R23 ; [+4]
       73 MOVE                             R23 R15
       74 MOVE                             R24 R20
       75 CONCAT                           R22 R23 R24
       76 JUMP                             ; [+1]
       77 MOVE                             R22 R20
       78 GETTABLE                         R23 R1 R15
       79 GETUPVAL                         R24 0
       80 MOVE                             R25 R22
       81 CALL                             R24 1 1
       82 SETTABLE                         R21 R23 R24
       83 FORGLOOP                         R17 2 ; [-14]
       85 FORGLOOP                         R12 2 ; [-31]
       87 GETTABLEKS                       R12 R0 K15 ["Inverse"]
       89 LOADNIL                          R13
       90 LOADNIL                          R14
       91 FORGPREP                         R12
       92 JUMPIFNOTEQKS                    R15 K16 ["Content"] ; [+25]
       94 MOVE                             R17 R16
       95 LOADNIL                          R18
       96 LOADNIL                          R19
       97 FORGPREP                         R17
       98 GETUPVAL                         R24 1
       99 GETTABLE                         R23 R24 R15
      100 JUMPIFNOT                        R23 ; [+4]
      101 MOVE                             R23 R15
      102 MOVE                             R24 R20
      103 CONCAT                           R22 R23 R24
      104 JUMP                             ; [+1]
      105 MOVE                             R22 R20
      106 GETTABLE                         R23 R1 R15
      107 LOADK                            R25 K17 ["inverse-%*"]
      108 GETUPVAL                         R27 0
      109 MOVE                             R28 R22
      110 CALL                             R27 1 1
      111 NAMECALL                         R25 R25 K18 ["format"]
      113 CALL                             R25 2 1
      114 MOVE                             R24 R25
      115 SETTABLE                         R21 R23 R24
      116 FORGLOOP                         R17 2 ; [-19]
      118 FORGLOOP                         R12 2 ; [-27]
      120 GETTABLEKS                       R12 R0 K19 ["Stroke"]
      122 LOADNIL                          R13
      123 LOADNIL                          R14
      124 FORGPREP                         R12
      125 DUPTABLE                         R19 K22 [{"name", "size"}]
      126 GETUPVAL                         R20 0
      127 MOVE                             R21 R15
      128 CALL                             R20 1 1
      129 SETTABLEKS                       R20 R19 K20 ["name"]
      131 SETTABLEKS                       R16 R19 K21 ["size"]
      133 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      135 MOVE                             R18 R3
      136 GETIMPORT                        R17 K25 [table.insert]
      138 CALL                             R17 2 0
      139 FORGLOOP                         R12 2 ; [-15]
      141 DUPTABLE                         R14 K22 [{"name", "size"}]
      142 LOADK                            R15 K26 ["none"]
      143 SETTABLEKS                       R15 R14 K20 ["name"]
      145 LOADN                            R15 0
      146 SETTABLEKS                       R15 R14 K21 ["size"]
      148 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      150 MOVE                             R13 R3
      151 GETIMPORT                        R12 K25 [table.insert]
      153 CALL                             R12 2 0
      154 GETIMPORT                        R12 K28 [table.sort]
      156 MOVE                             R13 R3
      157 DUPCLOSURE                       R14 K29 [PROTO_2]
      158 CALL                             R12 2 0
      159 GETTABLEKS                       R12 R0 K30 ["Gap"]
      161 LOADNIL                          R13
      162 LOADNIL                          R14
      163 FORGPREP                         R12
      164 DUPTABLE                         R19 K22 [{"name", "size"}]
      165 GETIMPORT                        R20 K33 [string.lower]
      167 MOVE                             R21 R15
      168 CALL                             R20 1 1
      169 SETTABLEKS                       R20 R19 K20 ["name"]
      171 GETIMPORT                        R20 K36 [UDim.new]
      173 LOADN                            R21 0
      174 MOVE                             R22 R16
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K21 ["size"]
      178 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
      180 MOVE                             R18 R4
      181 GETIMPORT                        R17 K25 [table.insert]
      183 CALL                             R17 2 0
      184 FORGLOOP                         R12 2 ; [-21]
      186 GETIMPORT                        R12 K28 [table.sort]
      188 MOVE                             R13 R4
      189 DUPCLOSURE                       R14 K37 [PROTO_3]
      190 CALL                             R12 2 0
      191 GETTABLEKS                       R12 R0 K38 ["Radius"]
      193 LOADNIL                          R13
      194 LOADNIL                          R14
      195 FORGPREP                         R12
      196 DUPTABLE                         R19 K22 [{"name", "size"}]
      197 GETIMPORT                        R20 K33 [string.lower]
      199 MOVE                             R21 R15
      200 CALL                             R20 1 1
      201 SETTABLEKS                       R20 R19 K20 ["name"]
      203 GETIMPORT                        R20 K36 [UDim.new]
      205 LOADN                            R21 0
      206 MOVE                             R22 R16
      207 CALL                             R20 2 1
      208 SETTABLEKS                       R20 R19 K21 ["size"]
      210 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      212 MOVE                             R18 R5
      213 GETIMPORT                        R17 K25 [table.insert]
      215 CALL                             R17 2 0
      216 FORGLOOP                         R12 2 ; [-21]
      218 GETIMPORT                        R12 K28 [table.sort]
      220 MOVE                             R13 R5
      221 DUPCLOSURE                       R14 K39 [PROTO_4]
      222 CALL                             R12 2 0
      223 GETTABLEKS                       R12 R0 K40 ["Size"]
      225 LOADNIL                          R13
      226 LOADNIL                          R14
      227 FORGPREP                         R12
      228 GETIMPORT                        R18 K42 [string.split]
      230 MOVE                             R19 R15
      231 LOADK                            R20 K43 ["_"]
      232 CALL                             R18 2 1
      233 GETTABLEN                        R17 R18 2
      234 DUPTABLE                         R20 K22 [{"name", "size"}]
      235 GETUPVAL                         R21 0
      236 MOVE                             R22 R17
      237 CALL                             R21 1 1
      238 SETTABLEKS                       R21 R20 K20 ["name"]
      240 GETIMPORT                        R21 K36 [UDim.new]
      242 LOADN                            R22 0
      243 MOVE                             R23 R16
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K21 ["size"]
      247 FASTCALL2                        TABLE_INSERT R6 R20 ; [+4]
      249 MOVE                             R19 R6
      250 GETIMPORT                        R18 K25 [table.insert]
      252 CALL                             R18 2 0
      253 FORGLOOP                         R12 2 ; [-26]
      255 DUPTABLE                         R14 K22 [{"name", "size"}]
      256 LOADK                            R15 K44 ["full"]
      257 SETTABLEKS                       R15 R14 K20 ["name"]
      259 GETIMPORT                        R15 K36 [UDim.new]
      261 LOADN                            R16 1
      262 LOADN                            R17 0
      263 CALL                             R15 2 1
      264 SETTABLEKS                       R15 R14 K21 ["size"]
      266 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      268 MOVE                             R13 R6
      269 GETIMPORT                        R12 K25 [table.insert]
      271 CALL                             R12 2 0
      272 GETIMPORT                        R12 K28 [table.sort]
      274 MOVE                             R13 R6
      275 DUPCLOSURE                       R14 K45 [PROTO_5]
      276 CALL                             R12 2 0
      277 GETTABLEKS                       R12 R0 K46 ["Typography"]
      279 LOADNIL                          R13
      280 LOADNIL                          R14
      281 FORGPREP                         R12
      282 GETUPVAL                         R17 0
      283 MOVE                             R18 R15
      284 CALL                             R17 1 1
      285 DUPTABLE                         R18 K50 [{"Font", "TextSize", "LineHeight"}]
      286 GETTABLEKS                       R19 R16 K47 ["Font"]
      288 SETTABLEKS                       R19 R18 K47 ["Font"]
      290 GETTABLEKS                       R19 R16 K51 ["FontSize"]
      292 SETTABLEKS                       R19 R18 K48 ["TextSize"]
      294 GETTABLEKS                       R19 R16 K49 ["LineHeight"]
      296 SETTABLEKS                       R19 R18 K49 ["LineHeight"]
      298 SETTABLE                         R18 R7 R17
      299 FORGLOOP                         R12 2 ; [-18]
      301 GETTABLEKS                       R12 R0 K52 ["Padding"]
      303 LOADNIL                          R13
      304 LOADNIL                          R14
      305 FORGPREP                         R12
      306 DUPTABLE                         R19 K22 [{"name", "size"}]
      307 GETIMPORT                        R20 K33 [string.lower]
      309 MOVE                             R21 R15
      310 CALL                             R20 1 1
      311 SETTABLEKS                       R20 R19 K20 ["name"]
      313 GETIMPORT                        R20 K36 [UDim.new]
      315 LOADN                            R21 0
      316 MOVE                             R22 R16
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K21 ["size"]
      320 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      322 MOVE                             R18 R8
      323 GETIMPORT                        R17 K25 [table.insert]
      325 CALL                             R17 2 0
      326 FORGLOOP                         R12 2 ; [-21]
      328 GETIMPORT                        R12 K28 [table.sort]
      330 MOVE                             R13 R8
      331 DUPCLOSURE                       R14 K53 [PROTO_6]
      332 CALL                             R12 2 0
      333 GETTABLEKS                       R12 R0 K54 ["Margin"]
      335 LOADNIL                          R13
      336 LOADNIL                          R14
      337 FORGPREP                         R12
      338 DUPTABLE                         R19 K22 [{"name", "size"}]
      339 GETIMPORT                        R20 K33 [string.lower]
      341 MOVE                             R21 R15
      342 CALL                             R20 1 1
      343 SETTABLEKS                       R20 R19 K20 ["name"]
      345 GETIMPORT                        R20 K36 [UDim.new]
      347 LOADN                            R21 0
      348 MOVE                             R22 R16
      349 CALL                             R20 2 1
      350 SETTABLEKS                       R20 R19 K21 ["size"]
      352 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      354 MOVE                             R18 R9
      355 GETIMPORT                        R17 K25 [table.insert]
      357 CALL                             R17 2 0
      358 FORGLOOP                         R12 2 ; [-21]
      360 GETIMPORT                        R12 K28 [table.sort]
      362 MOVE                             R13 R9
      363 DUPCLOSURE                       R14 K55 [PROTO_7]
      364 CALL                             R12 2 0
      365 GETTABLEKS                       R12 R0 K56 ["Gutter"]
      367 LOADNIL                          R13
      368 LOADNIL                          R14
      369 FORGPREP                         R12
      370 DUPTABLE                         R19 K22 [{"name", "size"}]
      371 GETIMPORT                        R20 K33 [string.lower]
      373 MOVE                             R21 R15
      374 CALL                             R20 1 1
      375 SETTABLEKS                       R20 R19 K20 ["name"]
      377 GETIMPORT                        R20 K36 [UDim.new]
      379 LOADN                            R21 0
      380 MOVE                             R22 R16
      381 CALL                             R20 2 1
      382 SETTABLEKS                       R20 R19 K21 ["size"]
      384 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      386 MOVE                             R18 R10
      387 GETIMPORT                        R17 K25 [table.insert]
      389 CALL                             R17 2 0
      390 FORGLOOP                         R12 2 ; [-21]
      392 GETIMPORT                        R12 K28 [table.sort]
      394 MOVE                             R13 R10
      395 DUPCLOSURE                       R14 K57 [PROTO_8]
      396 CALL                             R12 2 0
      397 RETURN                           R11 1

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
