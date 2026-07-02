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
      141 DUPTABLE                         R14 K28 [{["name"] = "none", ["size"] = 0}]
      142 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      144 MOVE                             R13 R3
      145 GETIMPORT                        R12 K25 [table.insert]
      147 CALL                             R12 2 0
      148 GETIMPORT                        R12 K30 [table.sort]
      150 MOVE                             R13 R3
      151 DUPCLOSURE                       R14 K31 [PROTO_2]
      152 CALL                             R12 2 0
      153 GETTABLEKS                       R12 R0 K32 ["Gap"]
      155 LOADNIL                          R13
      156 LOADNIL                          R14
      157 FORGPREP                         R12
      158 DUPTABLE                         R19 K22 [{"name", "size"}]
      159 GETIMPORT                        R20 K35 [string.lower]
      161 MOVE                             R21 R15
      162 CALL                             R20 1 1
      163 SETTABLEKS                       R20 R19 K20 ["name"]
      165 GETIMPORT                        R20 K38 [UDim.new]
      167 LOADN                            R21 0
      168 MOVE                             R22 R16
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K21 ["size"]
      172 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
      174 MOVE                             R18 R4
      175 GETIMPORT                        R17 K25 [table.insert]
      177 CALL                             R17 2 0
      178 FORGLOOP                         R12 2 ; [-21]
      180 GETIMPORT                        R12 K30 [table.sort]
      182 MOVE                             R13 R4
      183 DUPCLOSURE                       R14 K39 [PROTO_3]
      184 CALL                             R12 2 0
      185 GETTABLEKS                       R12 R0 K40 ["Radius"]
      187 LOADNIL                          R13
      188 LOADNIL                          R14
      189 FORGPREP                         R12
      190 DUPTABLE                         R19 K22 [{"name", "size"}]
      191 GETIMPORT                        R20 K35 [string.lower]
      193 MOVE                             R21 R15
      194 CALL                             R20 1 1
      195 SETTABLEKS                       R20 R19 K20 ["name"]
      197 GETIMPORT                        R20 K38 [UDim.new]
      199 LOADN                            R21 0
      200 MOVE                             R22 R16
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K21 ["size"]
      204 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      206 MOVE                             R18 R5
      207 GETIMPORT                        R17 K25 [table.insert]
      209 CALL                             R17 2 0
      210 FORGLOOP                         R12 2 ; [-21]
      212 GETIMPORT                        R12 K30 [table.sort]
      214 MOVE                             R13 R5
      215 DUPCLOSURE                       R14 K41 [PROTO_4]
      216 CALL                             R12 2 0
      217 GETTABLEKS                       R12 R0 K42 ["Size"]
      219 LOADNIL                          R13
      220 LOADNIL                          R14
      221 FORGPREP                         R12
      222 GETIMPORT                        R18 K44 [string.split]
      224 MOVE                             R19 R15
      225 LOADK                            R20 K45 ["_"]
      226 CALL                             R18 2 1
      227 GETTABLEN                        R17 R18 2
      228 DUPTABLE                         R20 K22 [{"name", "size"}]
      229 GETUPVAL                         R21 0
      230 MOVE                             R22 R17
      231 CALL                             R21 1 1
      232 SETTABLEKS                       R21 R20 K20 ["name"]
      234 GETIMPORT                        R21 K38 [UDim.new]
      236 LOADN                            R22 0
      237 MOVE                             R23 R16
      238 CALL                             R21 2 1
      239 SETTABLEKS                       R21 R20 K21 ["size"]
      241 FASTCALL2                        TABLE_INSERT R6 R20 ; [+4]
      243 MOVE                             R19 R6
      244 GETIMPORT                        R18 K25 [table.insert]
      246 CALL                             R18 2 0
      247 FORGLOOP                         R12 2 ; [-26]
      249 DUPTABLE                         R14 K47 [{["name"] = "full", ["size"]}]
      250 GETIMPORT                        R15 K38 [UDim.new]
      252 LOADN                            R16 1
      253 LOADN                            R17 0
      254 CALL                             R15 2 1
      255 SETTABLEKS                       R15 R14 K21 ["size"]
      257 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      259 MOVE                             R13 R6
      260 GETIMPORT                        R12 K25 [table.insert]
      262 CALL                             R12 2 0
      263 GETIMPORT                        R12 K30 [table.sort]
      265 MOVE                             R13 R6
      266 DUPCLOSURE                       R14 K48 [PROTO_5]
      267 CALL                             R12 2 0
      268 GETTABLEKS                       R12 R0 K49 ["Typography"]
      270 LOADNIL                          R13
      271 LOADNIL                          R14
      272 FORGPREP                         R12
      273 GETUPVAL                         R17 0
      274 MOVE                             R18 R15
      275 CALL                             R17 1 1
      276 DUPTABLE                         R18 K53 [{"Font", "TextSize", "LineHeight"}]
      277 GETTABLEKS                       R19 R16 K50 ["Font"]
      279 SETTABLEKS                       R19 R18 K50 ["Font"]
      281 GETTABLEKS                       R19 R16 K54 ["FontSize"]
      283 SETTABLEKS                       R19 R18 K51 ["TextSize"]
      285 GETTABLEKS                       R19 R16 K52 ["LineHeight"]
      287 SETTABLEKS                       R19 R18 K52 ["LineHeight"]
      289 SETTABLE                         R18 R7 R17
      290 FORGLOOP                         R12 2 ; [-18]
      292 GETTABLEKS                       R12 R0 K55 ["Padding"]
      294 LOADNIL                          R13
      295 LOADNIL                          R14
      296 FORGPREP                         R12
      297 DUPTABLE                         R19 K22 [{"name", "size"}]
      298 GETIMPORT                        R20 K35 [string.lower]
      300 MOVE                             R21 R15
      301 CALL                             R20 1 1
      302 SETTABLEKS                       R20 R19 K20 ["name"]
      304 GETIMPORT                        R20 K38 [UDim.new]
      306 LOADN                            R21 0
      307 MOVE                             R22 R16
      308 CALL                             R20 2 1
      309 SETTABLEKS                       R20 R19 K21 ["size"]
      311 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      313 MOVE                             R18 R8
      314 GETIMPORT                        R17 K25 [table.insert]
      316 CALL                             R17 2 0
      317 FORGLOOP                         R12 2 ; [-21]
      319 GETIMPORT                        R12 K30 [table.sort]
      321 MOVE                             R13 R8
      322 DUPCLOSURE                       R14 K56 [PROTO_6]
      323 CALL                             R12 2 0
      324 GETTABLEKS                       R12 R0 K57 ["Margin"]
      326 LOADNIL                          R13
      327 LOADNIL                          R14
      328 FORGPREP                         R12
      329 DUPTABLE                         R19 K22 [{"name", "size"}]
      330 GETIMPORT                        R20 K35 [string.lower]
      332 MOVE                             R21 R15
      333 CALL                             R20 1 1
      334 SETTABLEKS                       R20 R19 K20 ["name"]
      336 GETIMPORT                        R20 K38 [UDim.new]
      338 LOADN                            R21 0
      339 MOVE                             R22 R16
      340 CALL                             R20 2 1
      341 SETTABLEKS                       R20 R19 K21 ["size"]
      343 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      345 MOVE                             R18 R9
      346 GETIMPORT                        R17 K25 [table.insert]
      348 CALL                             R17 2 0
      349 FORGLOOP                         R12 2 ; [-21]
      351 GETIMPORT                        R12 K30 [table.sort]
      353 MOVE                             R13 R9
      354 DUPCLOSURE                       R14 K58 [PROTO_7]
      355 CALL                             R12 2 0
      356 GETTABLEKS                       R12 R0 K59 ["Gutter"]
      358 LOADNIL                          R13
      359 LOADNIL                          R14
      360 FORGPREP                         R12
      361 DUPTABLE                         R19 K22 [{"name", "size"}]
      362 GETIMPORT                        R20 K35 [string.lower]
      364 MOVE                             R21 R15
      365 CALL                             R20 1 1
      366 SETTABLEKS                       R20 R19 K20 ["name"]
      368 GETIMPORT                        R20 K38 [UDim.new]
      370 LOADN                            R21 0
      371 MOVE                             R22 R16
      372 CALL                             R20 2 1
      373 SETTABLEKS                       R20 R19 K21 ["size"]
      375 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      377 MOVE                             R18 R10
      378 GETIMPORT                        R17 K25 [table.insert]
      380 CALL                             R17 2 0
      381 FORGLOOP                         R12 2 ; [-21]
      383 GETIMPORT                        R12 K30 [table.sort]
      385 MOVE                             R13 R10
      386 DUPCLOSURE                       R14 K60 [PROTO_8]
      387 CALL                             R12 2 0
      388 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Providers"]
       11 GETTABLEKS                       R2 R2 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["Rules"]
       24 GETTABLEKS                       R3 R3 K11 ["Types"]
       26 CALL                             R2 1 1
       27 DUPTABLE                         R3 K14 [{["System"] = True}]
       28 DUPCLOSURE                       R4 K15 [PROTO_1]
       29 DUPCLOSURE                       R5 K16 [PROTO_9]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 RETURN                           R5 1
