PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K3 [{"id", "attachment", "accessoryType"}]
        7 SETTABLEKS                       R7 R10 K0 ["id"]
        9 SETTABLEKS                       R0 R10 K1 ["attachment"]
       11 LOADK                            R11 K4 ["rigid"]
       12 SETTABLEKS                       R11 R10 K2 ["accessoryType"]
       14 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       16 MOVE                             R9 R2
       17 GETIMPORT                        R8 K7 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 2 ; [-15]
       22 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"id", "attachment", "accessoryType"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["attachment"]
        6 LOADK                            R2 K4 ["rigid"]
        7 SETTABLEKS                       R2 R1 K2 ["accessoryType"]
        9 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R1 K0 ["layered"]
        1 SETTABLEKS                       R1 R0 K1 ["accessoryType"]
        3 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"id", "accessoryType"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 LOADK                            R10 K3 ["layered"]
       10 SETTABLEKS                       R10 R9 K1 ["accessoryType"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"id", "accessoryType"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 LOADK                            R10 K3 ["makeup"]
       10 SETTABLEKS                       R10 R9 K1 ["accessoryType"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [BrickColor.new]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K3 ["Color"]
        6 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R10 K2 [BrickColor.new]
        8 MOVE                             R11 R6
        9 CALL                             R10 1 1
       10 GETTABLEKS                       R9 R10 K3 ["Color"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["flatten"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Flags"]
       29 GETTABLEKS                       R4 R5 K11 ["getFFlagAvatarPreviewerMakeupDescription"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFFlagAvatarPreviewerReplaceSkinColors"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 32 0
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 DUPCLOSURE                       R7 K14 [PROTO_2]
       45 DUPCLOSURE                       R8 K15 [PROTO_3]
       46 DUPCLOSURE                       R9 K16 [PROTO_4]
       47 DUPCLOSURE                       R10 K17 [PROTO_5]
       48 LOADK                            R12 K18 ["HairAttachment"]
       49 NEWCLOSURE                       R11 P5
       50 CAPTURE                          VAL R12
       51 NEWTABLE                         R12 0 8
       53 MOVE                             R13 R11
       54 LOADK                            R14 K19 [13902886383]
       55 CALL                             R13 1 1
       56 MOVE                             R15 R11
       57 LOADK                            R16 K20 [11195420056]
       58 CALL                             R15 1 1
       59 LOADK                            R16 K21 ["layered"]
       60 SETTABLEKS                       R16 R15 K22 ["accessoryType"]
       62 MOVE                             R14 R15
       63 MOVE                             R15 R11
       64 LOADK                            R16 K23 [10966682388]
       65 CALL                             R15 1 1
       66 MOVE                             R16 R11
       67 LOADK                            R17 K24 [846803597]
       68 CALL                             R16 1 1
       69 MOVE                             R18 R11
       70 LOADK                            R19 K25 [9244114211]
       71 CALL                             R18 1 1
       72 LOADK                            R19 K21 ["layered"]
       73 SETTABLEKS                       R19 R18 K22 ["accessoryType"]
       75 MOVE                             R17 R18
       76 MOVE                             R19 R11
       77 LOADK                            R20 K26 [7193451306]
       78 CALL                             R19 1 1
       79 LOADK                            R20 K21 ["layered"]
       80 SETTABLEKS                       R20 R19 K22 ["accessoryType"]
       82 MOVE                             R18 R19
       83 MOVE                             R20 R11
       84 LOADK                            R21 K27 [7193386173]
       85 CALL                             R20 1 1
       86 LOADK                            R21 K21 ["layered"]
       87 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
       89 MOVE                             R19 R20
       90 MOVE                             R21 R11
       91 LOADK                            R22 K28 [7193452166]
       92 CALL                             R21 1 1
       93 LOADK                            R22 K21 ["layered"]
       94 SETTABLEKS                       R22 R21 K22 ["accessoryType"]
       96 MOVE                             R20 R21
       97 SETLIST                          R12 R13 8 [1]
       99 SETTABLEKS                       R12 R5 K29 ["hair"]
      101 MOVE                             R12 R6
      102 LOADK                            R13 K30 ["HatAttachment"]
      103 NEWTABLE                         R14 0 4
      105 LOADK                            R15 K31 [9111390490]
      106 LOADK                            R16 K32 [16018338042]
      107 LOADK                            R17 K33 [1744330435]
      108 LOADK                            R18 K34 [3757852497]
      109 SETLIST                          R14 R15 4 [1]
      111 CALL                             R12 2 1
      112 SETTABLEKS                       R12 R5 K35 ["head"]
      114 LOADK                            R13 K36 ["FaceCenterAttachment"]
      115 NEWCLOSURE                       R12 P5
      116 CAPTURE                          VAL R13
      117 LOADK                            R14 K37 ["FaceFrontAttachment"]
      118 NEWCLOSURE                       R13 P5
      119 CAPTURE                          VAL R14
      120 NEWTABLE                         R14 0 12
      122 MOVE                             R15 R13
      123 LOADK                            R16 K38 [16640910727]
      124 CALL                             R15 1 1
      125 MOVE                             R16 R13
      126 LOADK                            R17 K39 [16648934240]
      127 CALL                             R16 1 1
      128 MOVE                             R17 R13
      129 LOADK                            R18 K40 [9992285857]
      130 CALL                             R17 1 1
      131 MOVE                             R18 R13
      132 LOADK                            R19 K41 [14179786408]
      133 CALL                             R18 1 1
      134 MOVE                             R20 R13
      135 LOADK                            R21 K42 [12794788453]
      136 CALL                             R20 1 1
      137 LOADK                            R21 K21 ["layered"]
      138 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
      140 MOVE                             R19 R20
      141 MOVE                             R21 R13
      142 LOADK                            R22 K43 [12796340774]
      143 CALL                             R21 1 1
      144 LOADK                            R22 K21 ["layered"]
      145 SETTABLEKS                       R22 R21 K22 ["accessoryType"]
      147 MOVE                             R20 R21
      148 MOVE                             R22 R13
      149 LOADK                            R23 K44 [12794916165]
      150 CALL                             R22 1 1
      151 LOADK                            R23 K21 ["layered"]
      152 SETTABLEKS                       R23 R22 K22 ["accessoryType"]
      154 MOVE                             R21 R22
      155 MOVE                             R23 R13
      156 LOADK                            R24 K45 [12796163960]
      157 CALL                             R23 1 1
      158 LOADK                            R24 K21 ["layered"]
      159 SETTABLEKS                       R24 R23 K22 ["accessoryType"]
      161 MOVE                             R22 R23
      162 MOVE                             R23 R12
      163 LOADK                            R24 K46 [16648984941]
      164 CALL                             R23 1 1
      165 MOVE                             R24 R12
      166 LOADK                            R25 K47 [16649071525]
      167 CALL                             R24 1 1
      168 MOVE                             R25 R12
      169 LOADK                            R26 K48 [13538969595]
      170 CALL                             R25 1 1
      171 MOVE                             R26 R12
      172 LOADK                            R27 K49 [16648586095]
      173 CALL                             R26 1 -1
      174 SETLIST                          R14 R15 -1 [1]
      176 SETTABLEKS                       R14 R5 K50 ["face"]
      178 MOVE                             R14 R6
      179 LOADK                            R15 K51 ["BodyFrontAttachment"]
      180 NEWTABLE                         R16 0 4
      182 LOADK                            R17 K52 [16648690355]
      183 LOADK                            R18 K53 [16648652231]
      184 LOADK                            R19 K54 [16648706823]
      185 LOADK                            R20 K55 [16648698037]
      186 SETLIST                          R16 R17 4 [1]
      188 CALL                             R14 2 1
      189 SETTABLEKS                       R14 R5 K56 ["front"]
      191 MOVE                             R14 R6
      192 LOADK                            R15 K57 ["NeckAttachment"]
      193 NEWTABLE                         R16 0 4
      195 LOADK                            R17 K58 [16648958003]
      196 LOADK                            R18 K59 [16648625265]
      197 LOADK                            R19 K60 [3690490960]
      198 LOADK                            R20 K61 [15696295454]
      199 SETLIST                          R16 R17 4 [1]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R5 K62 ["neck"]
      204 LOADK                            R15 K63 ["LeftCollarAttachment"]
      205 NEWCLOSURE                       R14 P5
      206 CAPTURE                          VAL R15
      207 LOADK                            R16 K64 ["RightCollarAttachment"]
      208 NEWCLOSURE                       R15 P5
      209 CAPTURE                          VAL R16
      210 LOADK                            R17 K65 ["LeftShoulderAttachment"]
      211 NEWCLOSURE                       R16 P5
      212 CAPTURE                          VAL R17
      213 LOADK                            R18 K66 ["RightShoulderAttachment"]
      214 NEWCLOSURE                       R17 P5
      215 CAPTURE                          VAL R18
      216 NEWTABLE                         R18 0 16
      218 MOVE                             R19 R16
      219 LOADK                            R20 K67 [16648897492]
      220 CALL                             R19 1 1
      221 MOVE                             R20 R17
      222 LOADK                            R21 K68 [16648905400]
      223 CALL                             R20 1 1
      224 MOVE                             R21 R16
      225 LOADK                            R22 K69 [16648604510]
      226 CALL                             R21 1 1
      227 MOVE                             R22 R17
      228 LOADK                            R23 K70 [16648615805]
      229 CALL                             R22 1 1
      230 MOVE                             R23 R16
      231 LOADK                            R24 K71 [16649028183]
      232 CALL                             R23 1 1
      233 MOVE                             R24 R17
      234 LOADK                            R25 K72 [16649036767]
      235 CALL                             R24 1 1
      236 MOVE                             R25 R16
      237 LOADK                            R26 K73 [9175325868]
      238 CALL                             R25 1 1
      239 MOVE                             R26 R17
      240 LOADK                            R27 K74 [9175327271]
      241 CALL                             R26 1 1
      242 MOVE                             R27 R14
      243 LOADK                            R28 K75 [16648502798]
      244 CALL                             R27 1 1
      245 MOVE                             R28 R15
      246 LOADK                            R29 K76 [16648553830]
      247 CALL                             R28 1 1
      248 MOVE                             R29 R14
      249 LOADK                            R30 K77 [16648441318]
      250 CALL                             R29 1 1
      251 MOVE                             R30 R15
      252 LOADK                            R31 K78 [16648488869]
      253 CALL                             R30 1 1
      254 MOVE                             R31 R14
      255 LOADK                            R32 K79 [16648993618]
      256 CALL                             R31 1 1
      257 MOVE                             R32 R15
      258 LOADK                            R33 K80 [16649003855]
      259 CALL                             R32 1 1
      260 MOVE                             R33 R14
      261 LOADK                            R34 K81 [16648866296]
      262 CALL                             R33 1 1
      263 MOVE                             R34 R15
      264 LOADK                            R35 K82 [16648873760]
      265 CALL                             R34 1 -1
      266 SETLIST                          R18 R19 -1 [1]
      268 SETTABLEKS                       R18 R5 K83 ["shoulder"]
      270 MOVE                             R18 R6
      271 LOADK                            R19 K84 ["BodyBackAttachment"]
      272 NEWTABLE                         R20 0 4
      274 LOADK                            R21 K85 [9111378574]
      275 LOADK                            R22 K86 [11774181392]
      276 LOADK                            R23 K87 [10685856744]
      277 LOADK                            R24 K88 [9175323644]
      278 SETLIST                          R20 R21 4 [1]
      280 CALL                             R18 2 1
      281 SETTABLEKS                       R18 R5 K89 ["back"]
      283 LOADK                            R19 K90 ["WaistBackAttachment"]
      284 NEWCLOSURE                       R18 P5
      285 CAPTURE                          VAL R19
      286 LOADK                            R20 K91 ["WaistCenterAttachment"]
      287 NEWCLOSURE                       R19 P5
      288 CAPTURE                          VAL R20
      289 LOADK                            R21 K92 ["WaistFrontAttachment"]
      290 NEWCLOSURE                       R20 P5
      291 CAPTURE                          VAL R21
      292 NEWTABLE                         R21 0 12
      294 MOVE                             R22 R20
      295 LOADK                            R23 K93 [16648852016]
      296 CALL                             R22 1 1
      297 MOVE                             R23 R20
      298 LOADK                            R24 K94 [16648681897]
      299 CALL                             R23 1 1
      300 MOVE                             R24 R20
      301 LOADK                            R25 K95 [7065897530]
      302 CALL                             R24 1 1
      303 MOVE                             R25 R20
      304 LOADK                            R26 K96 [6494274794]
      305 CALL                             R25 1 1
      306 MOVE                             R26 R19
      307 LOADK                            R27 K97 [16648672949]
      308 CALL                             R26 1 1
      309 MOVE                             R27 R19
      310 LOADK                            R28 K98 [16649078388]
      311 CALL                             R27 1 1
      312 MOVE                             R28 R19
      313 LOADK                            R29 K99 [8697885688]
      314 CALL                             R28 1 1
      315 MOVE                             R29 R19
      316 LOADK                            R30 K100 [3230476122]
      317 CALL                             R29 1 1
      318 MOVE                             R30 R18
      319 LOADK                            R31 K101 [10616839810]
      320 CALL                             R30 1 1
      321 MOVE                             R31 R18
      322 LOADK                            R32 K102 [13902900757]
      323 CALL                             R31 1 1
      324 MOVE                             R32 R18
      325 LOADK                            R33 K103 [13207223896]
      326 CALL                             R32 1 1
      327 MOVE                             R33 R18
      328 LOADK                            R34 K104 [4707869391]
      329 CALL                             R33 1 -1
      330 SETLIST                          R21 R22 -1 [1]
      332 SETTABLEKS                       R21 R5 K105 ["waist"]
      334 MOVE                             R21 R6
      335 LOADK                            R22 K106 ["LeftGripAttachment"]
      336 NEWTABLE                         R23 0 4
      338 LOADK                            R24 K107 [16648133530]
      339 LOADK                            R25 K108 [16649013455]
      340 LOADK                            R26 K109 [16649045008]
      341 LOADK                            R27 K110 [16648718579]
      342 SETLIST                          R23 R24 4 [1]
      344 CALL                             R21 2 1
      345 SETTABLEKS                       R21 R5 K111 ["gearLeft"]
      347 MOVE                             R21 R6
      348 LOADK                            R22 K112 ["RightGripAttachment"]
      349 NEWTABLE                         R23 0 4
      351 LOADK                            R24 K113 [16648471753]
      352 LOADK                            R25 K114 [16649019530]
      353 LOADK                            R26 K115 [16649053805]
      354 LOADK                            R27 K116 [16648843454]
      355 SETLIST                          R23 R24 4 [1]
      357 CALL                             R21 2 1
      358 SETTABLEKS                       R21 R5 K117 ["gearRight"]
      360 MOVE                             R21 R9
      361 NEWTABLE                         R22 0 6
      363 LOADK                            R23 K118 [7178736794]
      364 LOADK                            R24 K119 [7178735702]
      365 LOADK                            R25 K120 [6984729814]
      366 LOADK                            R26 K121 [7178740556]
      367 LOADK                            R27 K122 [9620950227]
      368 LOADK                            R28 K123 [9620976296]
      369 SETLIST                          R22 R23 6 [1]
      371 CALL                             R21 1 1
      372 SETTABLEKS                       R21 R5 K124 ["shirts"]
      374 MOVE                             R21 R9
      375 NEWTABLE                         R22 0 3
      377 LOADK                            R23 K125 [9112474888]
      378 LOADK                            R24 K118 [7178736794]
      379 LOADK                            R25 K126 [7178737816]
      380 SETLIST                          R22 R23 3 [1]
      382 CALL                             R21 1 1
      383 SETTABLEKS                       R21 R5 K127 ["tshirts"]
      385 MOVE                             R21 R9
      386 NEWTABLE                         R22 0 5
      388 LOADK                            R23 K128 [6984765766]
      389 LOADK                            R24 K129 [6984767443]
      390 LOADK                            R25 K130 [7272485361]
      391 LOADK                            R26 K131 [7192535654]
      392 LOADK                            R27 K132 [7192544729]
      393 SETLIST                          R22 R23 5 [1]
      395 CALL                             R21 1 1
      396 SETTABLEKS                       R21 R5 K133 ["jackets"]
      398 MOVE                             R21 R9
      399 NEWTABLE                         R22 0 8
      401 LOADK                            R23 K134 [9240758221]
      402 LOADK                            R24 K135 [9913119150]
      403 LOADK                            R25 K136 [9913110927]
      404 LOADK                            R26 K137 [9174379982]
      405 LOADK                            R27 K138 [6984769289]
      406 LOADK                            R28 K139 [6984771334]
      407 LOADK                            R29 K140 [9240757332]
      408 LOADK                            R30 K141 [9274353324]
      409 SETLIST                          R22 R23 8 [1]
      411 CALL                             R21 1 1
      412 SETTABLEKS                       R21 R5 K142 ["sweaters"]
      414 MOVE                             R21 R9
      415 NEWTABLE                         R22 0 5
      417 LOADK                            R23 K143 [6984763785]
      418 LOADK                            R24 K144 [6984740059]
      419 LOADK                            R25 K145 [7192673981]
      420 LOADK                            R26 K146 [7192681239]
      421 LOADK                            R27 K147 [7192679765]
      422 SETLIST                          R22 R23 5 [1]
      424 CALL                             R21 1 1
      425 SETTABLEKS                       R21 R5 K148 ["pants"]
      427 MOVE                             R21 R9
      428 NEWTABLE                         R22 0 3
      430 LOADK                            R23 K149 [6984773235]
      431 LOADK                            R24 K150 [7192683061]
      432 LOADK                            R25 K151 [7192685245]
      433 SETLIST                          R22 R23 3 [1]
      435 CALL                             R21 1 1
      436 SETTABLEKS                       R21 R5 K152 ["shorts"]
      438 MOVE                             R21 R9
      439 NEWTABLE                         R22 0 5
      441 LOADK                            R23 K153 [7192691582]
      442 LOADK                            R24 K154 [7192690731]
      443 LOADK                            R25 K155 [9284466791]
      444 LOADK                            R26 K156 [10278865927]
      445 LOADK                            R27 K157 [7192695838]
      446 SETLIST                          R22 R23 5 [1]
      448 CALL                             R21 1 1
      449 SETTABLEKS                       R21 R5 K158 ["skirts"]
      451 MOVE                             R21 R9
      452 NEWTABLE                         R22 0 3
      454 LOADK                            R23 K159 [8722031289]
      455 LOADK                            R24 K160 [7193170137]
      456 LOADK                            R25 K161 [7193104827]
      457 SETLIST                          R22 R23 3 [1]
      459 CALL                             R21 1 1
      460 SETTABLEKS                       R21 R5 K162 ["shoes"]
      462 MOVE                             R21 R9
      463 MOVE                             R23 R3
      464 CALL                             R23 0 1
      465 JUMPIFNOT                        R23 ; [+11]
      466 NEWTABLE                         R22 0 6
      468 LOADK                            R23 K163 [90228244352161]
      469 LOADK                            R24 K164 [120397398547192]
      470 LOADK                            R25 K165 [93336361109642]
      471 LOADK                            R26 K166 [82477874967872]
      472 LOADK                            R27 K167 [130003039476849]
      473 LOADK                            R28 K168 [79754923827217]
      474 SETLIST                          R22 R23 6 [1]
      476 JUMP                             ; [+5]
      477 NEWTABLE                         R22 0 1
      479 LOADK                            R23 K169 [11572097774]
      480 SETLIST                          R22 R23 1 [1]
      482 CALL                             R21 1 1
      483 SETTABLEKS                       R21 R5 K170 ["eyebrows"]
      485 MOVE                             R21 R9
      486 MOVE                             R23 R3
      487 CALL                             R23 0 1
      488 JUMPIFNOT                        R23 ; [+11]
      489 NEWTABLE                         R22 0 6
      491 LOADK                            R23 K171 [87627278462719]
      492 LOADK                            R24 K172 [99788116228594]
      493 LOADK                            R25 K173 [113182821313646]
      494 LOADK                            R26 K174 [89610303708933]
      495 LOADK                            R27 K175 [111175479479447]
      496 LOADK                            R28 K176 [116154465905462]
      497 SETLIST                          R22 R23 6 [1]
      499 JUMP                             ; [+5]
      500 NEWTABLE                         R22 0 1
      502 LOADK                            R23 K177 [11572100557]
      503 SETLIST                          R22 R23 1 [1]
      505 CALL                             R21 1 1
      506 SETTABLEKS                       R21 R5 K178 ["eyelashes"]
      508 MOVE                             R21 R10
      509 NEWTABLE                         R22 0 10
      511 LOADK                            R23 K179 [124907916662625]
      512 LOADK                            R24 K180 [83680514027582]
      513 LOADK                            R25 K181 [131554744089786]
      514 LOADK                            R26 K182 [115110380254480]
      515 LOADK                            R27 K183 [102522092102710]
      516 LOADK                            R28 K184 [125810748592920]
      517 LOADK                            R29 K185 [96752799518977]
      518 LOADK                            R30 K186 [102586991723042]
      519 LOADK                            R31 K187 [77679141505947]
      520 LOADK                            R32 K188 [72252917405514]
      521 SETLIST                          R22 R23 10 [1]
      523 CALL                             R21 1 1
      524 SETTABLEKS                       R21 R5 K189 ["faceMakeup"]
      526 MOVE                             R21 R10
      527 NEWTABLE                         R22 0 6
      529 LOADK                            R23 K190 [91215258040985]
      530 LOADK                            R24 K191 [106860126788672]
      531 LOADK                            R25 K192 [116602463707612]
      532 LOADK                            R26 K193 [87427894313112]
      533 LOADK                            R27 K194 [130700043557379]
      534 LOADK                            R28 K195 [109566218185317]
      535 SETLIST                          R22 R23 6 [1]
      537 CALL                             R21 1 1
      538 SETTABLEKS                       R21 R5 K196 ["lipMakeup"]
      540 MOVE                             R21 R10
      541 NEWTABLE                         R22 0 6
      543 LOADK                            R23 K197 [128355658815589]
      544 LOADK                            R24 K198 [124390911016506]
      545 LOADK                            R25 K199 [115181363529368]
      546 LOADK                            R26 K200 [90010535482282]
      547 LOADK                            R27 K201 [130365390192045]
      548 LOADK                            R28 K202 [113020962926328]
      549 SETLIST                          R22 R23 6 [1]
      551 CALL                             R21 1 1
      552 SETTABLEKS                       R21 R5 K203 ["eyeMakeup"]
      554 MOVE                             R21 R2
      555 GETTABLEKS                       R22 R5 K29 ["hair"]
      557 GETTABLEKS                       R23 R5 K35 ["head"]
      559 GETTABLEKS                       R24 R5 K50 ["face"]
      561 GETTABLEKS                       R25 R5 K56 ["front"]
      563 GETTABLEKS                       R26 R5 K62 ["neck"]
      565 GETTABLEKS                       R27 R5 K83 ["shoulder"]
      567 GETTABLEKS                       R28 R5 K89 ["back"]
      569 GETTABLEKS                       R29 R5 K105 ["waist"]
      571 GETTABLEKS                       R30 R5 K124 ["shirts"]
      573 GETTABLEKS                       R31 R5 K127 ["tshirts"]
      575 GETTABLEKS                       R32 R5 K133 ["jackets"]
      577 GETTABLEKS                       R33 R5 K142 ["sweaters"]
      579 GETTABLEKS                       R34 R5 K148 ["pants"]
      581 GETTABLEKS                       R35 R5 K152 ["shorts"]
      583 GETTABLEKS                       R36 R5 K158 ["skirts"]
      585 GETTABLEKS                       R37 R5 K162 ["shoes"]
      587 GETTABLEKS                       R38 R5 K170 ["eyebrows"]
      589 GETTABLEKS                       R39 R5 K178 ["eyelashes"]
      591 GETTABLEKS                       R40 R5 K111 ["gearLeft"]
      593 GETTABLEKS                       R41 R5 K117 ["gearRight"]
      595 GETTABLEKS                       R42 R5 K189 ["faceMakeup"]
      597 GETTABLEKS                       R43 R5 K196 ["lipMakeup"]
      599 GETTABLEKS                       R44 R5 K203 ["eyeMakeup"]
      601 CALL                             R21 23 1
      602 SETTABLEKS                       R21 R5 K204 ["allItems"]
      604 DUPCLOSURE                       R21 K205 [PROTO_6]
      605 DUPCLOSURE                       R22 K206 [PROTO_7]
      606 NEWTABLE                         R23 0 71
      608 LOADK                            R24 K207 ["Dirt brown"]
      609 LOADK                            R25 K208 ["Reddish brown"]
      610 LOADK                            R26 K209 ["Brown"]
      611 LOADK                            R27 K210 ["Sand red"]
      612 LOADK                            R28 K211 ["Linen"]
      613 LOADK                            R29 K212 ["Burlap"]
      614 LOADK                            R30 K213 ["Brick yellow"]
      615 LOADK                            R31 K214 ["Medium red"]
      616 LOADK                            R32 K215 ["Dusty Rose"]
      617 LOADK                            R33 K216 ["CGA brown"]
      618 LOADK                            R34 K217 ["Dark orange"]
      619 LOADK                            R35 K218 ["Nougat"]
      620 LOADK                            R36 K219 ["Light orange"]
      621 LOADK                            R37 K220 ["Pastel brown"]
      622 LOADK                            R38 K221 ["Neon orange"]
      623 LOADK                            R39 K222 ["Bright orange"]
      624 SETLIST                          R23 R24 16 [1]
      626 LOADK                            R24 K223 ["Br. yellowish orange"]
      627 LOADK                            R25 K224 ["Deep orange"]
      628 LOADK                            R26 K225 ["Bright yellow"]
      629 LOADK                            R27 K226 ["Daisy orange"]
      630 LOADK                            R28 K227 ["Cool yellow"]
      631 LOADK                            R29 K228 ["Earth green"]
      632 LOADK                            R30 K229 ["Camo"]
      633 LOADK                            R31 K230 ["Dark green"]
      634 LOADK                            R32 K231 ["Br. yellowish green"]
      635 LOADK                            R33 K232 ["Navy blue"]
      636 LOADK                            R34 K233 ["Deep blue"]
      637 LOADK                            R35 K234 ["Really blue"]
      638 LOADK                            R36 K235 ["Bright blue"]
      639 LOADK                            R37 K236 ["Steel blue"]
      640 LOADK                            R38 K237 ["Medium blue"]
      641 LOADK                            R39 K238 ["Light blue"]
      642 SETLIST                          R23 R24 16 [17]
      644 LOADK                            R24 K239 ["Bright bluish green"]
      645 LOADK                            R25 K240 ["Teal"]
      646 LOADK                            R26 K241 ["Pastel blue-green"]
      647 LOADK                            R27 K242 ["Toothpaste"]
      648 LOADK                            R28 K243 ["Cyan"]
      649 LOADK                            R29 K244 ["Pastel Blue"]
      650 LOADK                            R30 K245 ["Pastel light blue"]
      651 LOADK                            R31 K246 ["Bright violet"]
      652 LOADK                            R32 K247 ["Lavender"]
      653 LOADK                            R33 K248 ["Lilac"]
      654 LOADK                            R34 K249 ["Magenta"]
      655 LOADK                            R35 K250 ["Royal purple"]
      656 LOADK                            R36 K251 ["Alder"]
      657 LOADK                            R37 K252 ["Pastel violet"]
      658 LOADK                            R38 K253 ["Bright red"]
      659 LOADK                            R39 K254 ["Really red"]
      660 SETLIST                          R23 R24 16 [33]
      662 LOADK                            R24 K255 ["Hot pink"]
      663 LOADK                            R25 K0 ["script"]
      664 LOADK                            R26 K1 [script]
      665 LOADK                            R27 K2 ["AvatarCompatibilityPreviewer"]
      666 LOADK                            R28 K3 ["FindFirstAncestor"]
      667 LOADK                            R29 K4 ["require"]
      668 LOADK                            R30 K5 [require]
      669 LOADK                            R31 K6 ["Src"]
      670 LOADK                            R32 K7 ["Types"]
      671 LOADK                            R33 K8 ["Util"]
      672 LOADK                            R34 K9 ["flatten"]
      673 LOADK                            R35 K10 ["Flags"]
      674 LOADK                            R36 K11 ["getFFlagAvatarPreviewerMakeupDescription"]
      675 LOADK                            R37 K12 ["getFFlagAvatarPreviewerReplaceSkinColors"]
      676 LOADK                            R38 K13 [PROTO_0]
      677 LOADK                            R39 K14 [PROTO_2]
      678 SETLIST                          R23 R24 16 [49]
      680 LOADK                            R24 K15 [PROTO_3]
      681 LOADK                            R25 K16 [PROTO_4]
      682 LOADK                            R26 K17 [PROTO_5]
      683 LOADK                            R27 K18 ["HairAttachment"]
      684 LOADK                            R28 K19 [13902886383]
      685 LOADK                            R29 K20 [11195420056]
      686 LOADK                            R30 K21 ["layered"]
      687 SETLIST                          R23 R24 7 [65]
      689 NEWTABLE                         R24 0 114
      691 GETIMPORT                        R25 K280 [Color3.fromRGB]
      693 LOADN                            R26 49
      694 LOADN                            R27 44
      695 LOADN                            R28 37
      696 CALL                             R25 3 1
      697 GETIMPORT                        R26 K280 [Color3.fromRGB]
      699 LOADN                            R27 61
      700 LOADN                            R28 46
      701 LOADN                            R29 36
      702 CALL                             R26 3 1
      703 GETIMPORT                        R27 K280 [Color3.fromRGB]
      705 LOADN                            R28 78
      706 LOADN                            R29 55
      707 LOADN                            R30 49
      708 CALL                             R27 3 1
      709 GETIMPORT                        R28 K280 [Color3.fromRGB]
      711 LOADN                            R29 62
      712 LOADN                            R30 53
      713 LOADN                            R31 42
      714 CALL                             R28 3 1
      715 GETIMPORT                        R29 K280 [Color3.fromRGB]
      717 LOADN                            R30 75
      718 LOADN                            R31 56
      719 LOADN                            R32 46
      720 CALL                             R29 3 1
      721 GETIMPORT                        R30 K280 [Color3.fromRGB]
      723 LOADN                            R31 96
      724 LOADN                            R32 57
      725 LOADN                            R33 45
      726 CALL                             R30 3 1
      727 GETIMPORT                        R31 K280 [Color3.fromRGB]
      729 LOADN                            R32 90
      730 LOADN                            R33 76
      731 LOADN                            R34 46
      732 CALL                             R31 3 1
      733 GETIMPORT                        R32 K280 [Color3.fromRGB]
      735 LOADN                            R33 86
      736 LOADN                            R34 66
      737 LOADN                            R35 54
      738 CALL                             R32 3 1
      739 GETIMPORT                        R33 K280 [Color3.fromRGB]
      741 LOADN                            R34 92
      742 LOADN                            R35 66
      743 LOADN                            R36 49
      744 CALL                             R33 3 1
      745 GETIMPORT                        R34 K280 [Color3.fromRGB]
      747 LOADN                            R35 94
      748 LOADN                            R36 64
      749 LOADN                            R37 53
      750 CALL                             R34 3 1
      751 GETIMPORT                        R35 K280 [Color3.fromRGB]
      753 LOADN                            R36 82
      754 LOADN                            R37 69
      755 LOADN                            R38 54
      756 CALL                             R35 3 1
      757 GETIMPORT                        R36 K280 [Color3.fromRGB]
      759 LOADN                            R37 90
      760 LOADN                            R38 76
      761 LOADN                            R39 66
      762 CALL                             R36 3 1
      763 GETIMPORT                        R37 K280 [Color3.fromRGB]
      765 LOADN                            R38 98
      766 LOADN                            R39 70
      767 LOADN                            R40 58
      768 CALL                             R37 3 1
      769 GETIMPORT                        R38 K280 [Color3.fromRGB]
      771 LOADN                            R39 116
      772 LOADN                            R40 87
      773 LOADN                            R41 62
      774 CALL                             R38 3 1
      775 GETIMPORT                        R39 K280 [Color3.fromRGB]
      777 LOADN                            R40 124
      778 LOADN                            R41 92
      779 LOADN                            R42 70
      780 CALL                             R39 3 1
      781 GETIMPORT                        R40 K280 [Color3.fromRGB]
      783 LOADN                            R41 115
      784 LOADN                            R42 92
      785 LOADN                            R43 61
      786 CALL                             R40 3 1
      787 SETLIST                          R24 R25 16 [1]
      789 GETIMPORT                        R25 K280 [Color3.fromRGB]
      791 LOADN                            R26 137
      792 LOADN                            R27 110
      793 LOADN                            R28 74
      794 CALL                             R25 3 1
      795 GETIMPORT                        R26 K280 [Color3.fromRGB]
      797 LOADN                            R27 138
      798 LOADN                            R28 102
      799 LOADN                            R29 70
      800 CALL                             R26 3 1
      801 GETIMPORT                        R27 K280 [Color3.fromRGB]
      803 LOADN                            R28 140
      804 LOADN                            R29 95
      805 LOADN                            R30 77
      806 CALL                             R27 3 1
      807 GETIMPORT                        R28 K280 [Color3.fromRGB]
      809 LOADN                            R29 118
      810 LOADN                            R30 82
      811 LOADN                            R31 67
      812 CALL                             R28 3 1
      813 GETIMPORT                        R29 K280 [Color3.fromRGB]
      815 LOADN                            R30 199
      816 LOADN                            R31 172
      817 LOADN                            R32 120
      818 CALL                             R29 3 1
      819 GETIMPORT                        R30 K280 [Color3.fromRGB]
      821 LOADN                            R31 188
      822 LOADN                            R32 155
      823 LOADN                            R33 93
      824 CALL                             R30 3 1
      825 GETIMPORT                        R31 K280 [Color3.fromRGB]
      827 LOADN                            R32 170
      828 LOADN                            R33 138
      829 LOADN                            R34 98
      830 CALL                             R31 3 1
      831 GETIMPORT                        R32 K280 [Color3.fromRGB]
      833 LOADN                            R33 173
      834 LOADN                            R34 130
      835 LOADN                            R35 96
      836 CALL                             R32 3 1
      837 GETIMPORT                        R33 K280 [Color3.fromRGB]
      839 LOADN                            R34 174
      840 LOADN                            R35 121
      841 LOADN                            R36 102
      842 CALL                             R33 3 1
      843 GETIMPORT                        R34 K280 [Color3.fromRGB]
      845 LOADN                            R35 145
      846 LOADN                            R36 123
      847 LOADN                            R37 90
      848 CALL                             R34 3 1
      849 GETIMPORT                        R35 K280 [Color3.fromRGB]
      851 LOADN                            R36 175
      852 LOADN                            R37 148
      853 LOADN                            R38 131
      854 CALL                             R35 3 1
      855 GETIMPORT                        R36 K280 [Color3.fromRGB]
      857 LOADN                            R37 149
      858 LOADN                            R38 121
      859 LOADN                            R39 119
      860 CALL                             R36 3 1
      861 GETIMPORT                        R37 K280 [Color3.fromRGB]
      863 LOADN                            R38 215
      864 LOADN                            R39 197
      865 LOADN                            R40 154
      866 CALL                             R37 3 1
      867 GETIMPORT                        R38 K280 [Color3.fromRGB]
      869 LOADN                            R39 218
      870 LOADN                            R40 182
      871 LOADN                            R41 142
      872 CALL                             R38 3 1
      873 GETIMPORT                        R39 K280 [Color3.fromRGB]
      875 LOADN                            R40 211
      876 LOADN                            R41 167
      877 LOADN                            R42 131
      878 CALL                             R39 3 1
      879 GETIMPORT                        R40 K280 [Color3.fromRGB]
      881 LOADN                            R41 212
      882 LOADN                            R42 158
      883 LOADN                            R43 140
      884 CALL                             R40 3 1
      885 SETLIST                          R24 R25 16 [17]
      887 GETIMPORT                        R25 K280 [Color3.fromRGB]
      889 LOADN                            R26 204
      890 LOADN                            R27 142
      891 LOADN                            R28 105
      892 CALL                             R25 3 1
      893 GETIMPORT                        R26 K280 [Color3.fromRGB]
      895 LOADN                            R27 230
      896 LOADN                            R28 199
      897 LOADN                            R29 158
      898 CALL                             R26 3 1
      899 GETIMPORT                        R27 K280 [Color3.fromRGB]
      901 LOADN                            R28 229
      902 LOADN                            R29 186
      903 LOADN                            R30 152
      904 CALL                             R27 3 1
      905 GETIMPORT                        R28 K280 [Color3.fromRGB]
      907 LOADN                            R29 234
      908 LOADN                            R30 184
      909 LOADN                            R31 146
      910 CALL                             R28 3 1
      911 GETIMPORT                        R29 K280 [Color3.fromRGB]
      913 LOADN                            R30 232
      914 LOADN                            R31 186
      915 LOADN                            R32 170
      916 CALL                             R29 3 1
      917 GETIMPORT                        R30 K280 [Color3.fromRGB]
      919 LOADN                            R31 255
      920 LOADN                            R32 204
      921 LOADN                            R33 153
      922 CALL                             R30 3 1
      923 GETIMPORT                        R31 K280 [Color3.fromRGB]
      925 LOADN                            R32 238
      926 LOADN                            R33 203
      927 LOADN                            R34 173
      928 CALL                             R31 3 1
      929 GETIMPORT                        R32 K280 [Color3.fromRGB]
      931 LOADN                            R33 240
      932 LOADN                            R34 212
      933 LOADN                            R35 185
      934 CALL                             R32 3 1
      935 GETIMPORT                        R33 K280 [Color3.fromRGB]
      937 LOADN                            R34 237
      938 LOADN                            R35 213
      939 LOADN                            R36 180
      940 CALL                             R33 3 1
      941 GETIMPORT                        R34 K280 [Color3.fromRGB]
      943 LOADN                            R35 239
      944 LOADN                            R36 220
      945 LOADN                            R37 191
      946 CALL                             R34 3 1
      947 GETIMPORT                        R35 K280 [Color3.fromRGB]
      949 LOADN                            R36 243
      950 LOADN                            R37 223
      951 LOADN                            R38 212
      952 CALL                             R35 3 1
      953 GETIMPORT                        R36 K280 [Color3.fromRGB]
      955 LOADN                            R37 240
      956 LOADN                            R38 205
      957 LOADN                            R39 196
      958 CALL                             R36 3 1
      959 GETIMPORT                        R37 K280 [Color3.fromRGB]
      961 LOADN                            R38 17
      962 LOADN                            R39 17
      963 LOADN                            R40 17
      964 CALL                             R37 3 1
      965 GETIMPORT                        R38 K280 [Color3.fromRGB]
      967 LOADN                            R39 27
      968 LOADN                            R40 42
      969 LOADN                            R41 53
      970 CALL                             R38 3 1
      971 GETIMPORT                        R39 K280 [Color3.fromRGB]
      973 LOADN                            R40 99
      974 LOADN                            R41 95
      975 LOADN                            R42 98
      976 CALL                             R39 3 1
      977 GETIMPORT                        R40 K280 [Color3.fromRGB]
      979 LOADN                            R41 163
      980 LOADN                            R42 162
      981 LOADN                            R43 165
      982 CALL                             R40 3 1
      983 SETLIST                          R24 R25 16 [33]
      985 GETIMPORT                        R25 K280 [Color3.fromRGB]
      987 LOADN                            R26 205
      988 LOADN                            R27 205
      989 LOADN                            R28 205
      990 CALL                             R25 3 1
      991 GETIMPORT                        R26 K280 [Color3.fromRGB]
      993 LOADN                            R27 229
      994 LOADN                            R28 228
      995 LOADN                            R29 223
      996 CALL                             R26 3 1
      997 GETIMPORT                        R27 K280 [Color3.fromRGB]
      999 LOADN                            R28 242
     1000 LOADN                            R29 243
     1001 LOADN                            R30 243
     1002 CALL                             R27 3 1
     1003 GETIMPORT                        R28 K280 [Color3.fromRGB]
     1005 LOADN                            R29 248
     1006 LOADN                            R30 248
     1007 LOADN                            R31 248
     1008 CALL                             R28 3 1
     1009 GETIMPORT                        R29 K280 [Color3.fromRGB]
     1011 LOADN                            R30 255
     1012 LOADN                            R31 0
     1013 LOADN                            R32 0
     1014 CALL                             R29 3 1
     1015 GETIMPORT                        R30 K280 [Color3.fromRGB]
     1017 LOADN                            R31 196
     1018 LOADN                            R32 40
     1019 LOADN                            R33 28
     1020 CALL                             R30 3 1
     1021 GETIMPORT                        R31 K280 [Color3.fromRGB]
     1023 LOADN                            R32 180
     1024 LOADN                            R33 58
     1025 LOADN                            R34 52
     1026 CALL                             R31 3 1
     1027 GETIMPORT                        R32 K280 [Color3.fromRGB]
     1029 LOADN                            R33 163
     1030 LOADN                            R34 75
     1031 LOADN                            R35 75
     1032 CALL                             R32 3 1
     1033 GETIMPORT                        R33 K280 [Color3.fromRGB]
     1035 LOADN                            R34 218
     1036 LOADN                            R35 134
     1037 LOADN                            R36 122
     1038 CALL                             R33 3 1
     1039 GETIMPORT                        R34 K280 [Color3.fromRGB]
     1041 LOADN                            R35 105
     1042 LOADN                            R36 64
     1043 LOADN                            R37 40
     1044 CALL                             R34 3 1
     1045 GETIMPORT                        R35 K280 [Color3.fromRGB]
     1047 LOADN                            R36 170
     1048 LOADN                            R37 85
     1049 LOADN                            R38 0
     1050 CALL                             R35 3 1
     1051 GETIMPORT                        R36 K280 [Color3.fromRGB]
     1053 LOADN                            R37 160
     1054 LOADN                            R38 95
     1055 LOADN                            R39 53
     1056 CALL                             R36 3 1
     1057 GETIMPORT                        R37 K280 [Color3.fromRGB]
     1059 LOADN                            R38 213
     1060 LOADN                            R39 115
     1061 LOADN                            R40 61
     1062 CALL                             R37 3 1
     1063 GETIMPORT                        R38 K280 [Color3.fromRGB]
     1065 LOADN                            R39 218
     1066 LOADN                            R40 133
     1067 LOADN                            R41 65
     1068 CALL                             R38 3 1
     1069 GETIMPORT                        R39 K280 [Color3.fromRGB]
     1071 LOADN                            R40 226
     1072 LOADN                            R41 155
     1073 LOADN                            R42 64
     1074 CALL                             R39 3 1
     1075 GETIMPORT                        R40 K280 [Color3.fromRGB]
     1077 LOADN                            R41 255
     1078 LOADN                            R42 175
     1079 LOADN                            R43 0
     1080 CALL                             R40 3 1
     1081 SETLIST                          R24 R25 16 [49]
     1083 GETIMPORT                        R25 K280 [Color3.fromRGB]
     1085 LOADN                            R26 245
     1086 LOADN                            R27 205
     1087 LOADN                            R28 48
     1088 CALL                             R25 3 1
     1089 GETIMPORT                        R26 K280 [Color3.fromRGB]
     1091 LOADN                            R27 248
     1092 LOADN                            R28 217
     1093 LOADN                            R29 109
     1094 CALL                             R26 3 1
     1095 GETIMPORT                        R27 K280 [Color3.fromRGB]
     1097 LOADN                            R28 253
     1098 LOADN                            R29 234
     1099 LOADN                            R30 141
     1100 CALL                             R27 3 1
     1101 GETIMPORT                        R28 K280 [Color3.fromRGB]
     1103 LOADN                            R29 255
     1104 LOADN                            R30 255
     1105 LOADN                            R31 204
     1106 CALL                             R28 3 1
     1107 GETIMPORT                        R29 K280 [Color3.fromRGB]
     1109 LOADN                            R30 255
     1110 LOADN                            R31 255
     1111 LOADN                            R32 0
     1112 CALL                             R29 3 1
     1113 GETIMPORT                        R30 K280 [Color3.fromRGB]
     1115 LOADN                            R31 193
     1116 LOADN                            R32 190
     1117 LOADN                            R33 66
     1118 CALL                             R30 3 1
     1119 GETIMPORT                        R31 K280 [Color3.fromRGB]
     1121 LOADN                            R32 164
     1122 LOADN                            R33 189
     1123 LOADN                            R34 71
     1124 CALL                             R31 3 1
     1125 GETIMPORT                        R32 K280 [Color3.fromRGB]
     1127 LOADN                            R33 0
     1128 LOADN                            R34 255
     1129 LOADN                            R35 0
     1130 CALL                             R32 3 1
     1131 GETIMPORT                        R33 K280 [Color3.fromRGB]
     1133 LOADN                            R34 58
     1134 LOADN                            R35 125
     1135 LOADN                            R36 21
     1136 CALL                             R33 3 1
     1137 GETIMPORT                        R34 K280 [Color3.fromRGB]
     1139 LOADN                            R35 75
     1140 LOADN                            R36 151
     1141 LOADN                            R37 75
     1142 CALL                             R34 3 1
     1143 GETIMPORT                        R35 K280 [Color3.fromRGB]
     1145 LOADN                            R36 91
     1146 LOADN                            R37 154
     1147 LOADN                            R38 76
     1148 CALL                             R35 3 1
     1149 GETIMPORT                        R36 K280 [Color3.fromRGB]
     1151 LOADN                            R37 161
     1152 LOADN                            R38 196
     1153 LOADN                            R39 140
     1154 CALL                             R36 3 1
     1155 GETIMPORT                        R37 K280 [Color3.fromRGB]
     1157 LOADN                            R38 204
     1158 LOADN                            R39 255
     1159 LOADN                            R40 204
     1160 CALL                             R37 3 1
     1161 GETIMPORT                        R38 K280 [Color3.fromRGB]
     1163 LOADN                            R39 39
     1164 LOADN                            R40 70
     1165 LOADN                            R41 45
     1166 CALL                             R38 3 1
     1167 GETIMPORT                        R39 K280 [Color3.fromRGB]
     1169 LOADN                            R40 40
     1170 LOADN                            R41 127
     1171 LOADN                            R42 71
     1172 CALL                             R39 3 1
     1173 GETIMPORT                        R40 K280 [Color3.fromRGB]
     1175 LOADN                            R41 124
     1176 LOADN                            R42 156
     1177 LOADN                            R43 107
     1178 CALL                             R40 3 1
     1179 SETLIST                          R24 R25 16 [65]
     1181 GETIMPORT                        R25 K280 [Color3.fromRGB]
     1183 LOADN                            R26 91
     1184 LOADN                            R27 108
     1185 LOADN                            R28 84
     1186 CALL                             R25 3 1
     1187 GETIMPORT                        R26 K280 [Color3.fromRGB]
     1189 LOADN                            R27 127
     1190 LOADN                            R28 142
     1191 LOADN                            R29 100
     1192 CALL                             R26 3 1
     1193 GETIMPORT                        R27 K280 [Color3.fromRGB]
     1195 LOADN                            R28 127
     1196 LOADN                            R29 142
     1197 LOADN                            R30 130
     1198 CALL                             R27 3 1
     1199 GETIMPORT                        R28 K280 [Color3.fromRGB]
     1201 LOADN                            R29 0
     1202 LOADN                            R30 32
     1203 LOADN                            R31 96
     1204 CALL                             R28 3 1
     1205 GETIMPORT                        R29 K280 [Color3.fromRGB]
     1207 LOADN                            R30 0
     1208 LOADN                            R31 0
     1209 LOADN                            R32 255
     1210 CALL                             R29 3 1
     1211 GETIMPORT                        R30 K280 [Color3.fromRGB]
     1213 LOADN                            R31 4
     1214 LOADN                            R32 175
     1215 LOADN                            R33 236
     1216 CALL                             R30 3 1
     1217 GETIMPORT                        R31 K280 [Color3.fromRGB]
     1219 LOADN                            R32 128
     1220 LOADN                            R33 187
     1221 LOADN                            R34 220
     1222 CALL                             R31 3 1
     1223 GETIMPORT                        R32 K280 [Color3.fromRGB]
     1225 LOADN                            R33 116
     1226 LOADN                            R34 134
     1227 LOADN                            R35 157
     1228 CALL                             R32 3 1
     1229 GETIMPORT                        R33 K280 [Color3.fromRGB]
     1231 LOADN                            R34 0
     1232 LOADN                            R35 143
     1233 LOADN                            R36 156
     1234 CALL                             R33 3 1
     1235 GETIMPORT                        R34 K280 [Color3.fromRGB]
     1237 LOADN                            R35 0
     1238 LOADN                            R36 255
     1239 LOADN                            R37 255
     1240 CALL                             R34 3 1
     1241 GETIMPORT                        R35 K280 [Color3.fromRGB]
     1243 LOADN                            R36 18
     1244 LOADN                            R37 238
     1245 LOADN                            R38 212
     1246 CALL                             R35 3 1
     1247 GETIMPORT                        R36 K280 [Color3.fromRGB]
     1249 LOADN                            R37 159
     1250 LOADN                            R38 243
     1251 LOADN                            R39 233
     1252 CALL                             R36 3 1
     1253 GETIMPORT                        R37 K280 [Color3.fromRGB]
     1255 LOADN                            R38 200
     1256 LOADN                            R39 245
     1257 LOADN                            R40 240
     1258 CALL                             R37 3 1
     1259 GETIMPORT                        R38 K280 [Color3.fromRGB]
     1261 LOADN                            R39 33
     1262 LOADN                            R40 84
     1263 LOADN                            R41 185
     1264 CALL                             R38 3 1
     1265 GETIMPORT                        R39 K280 [Color3.fromRGB]
     1267 LOADN                            R40 13
     1268 LOADN                            R41 105
     1269 LOADN                            R42 172
     1270 CALL                             R39 3 1
     1271 GETIMPORT                        R40 K280 [Color3.fromRGB]
     1273 LOADN                            R41 82
     1274 LOADN                            R42 124
     1275 LOADN                            R43 174
     1276 CALL                             R40 3 1
     1277 SETLIST                          R24 R25 16 [81]
     1279 GETIMPORT                        R25 K280 [Color3.fromRGB]
     1281 LOADN                            R26 97
     1282 LOADN                            R27 140
     1283 LOADN                            R28 189
     1284 CALL                             R25 3 1
     1285 GETIMPORT                        R26 K280 [Color3.fromRGB]
     1287 LOADN                            R27 110
     1288 LOADN                            R28 153
     1289 LOADN                            R29 202
     1290 CALL                             R26 3 1
     1291 GETIMPORT                        R27 K280 [Color3.fromRGB]
     1293 LOADN                            R28 175
     1294 LOADN                            R29 221
     1295 LOADN                            R30 255
     1296 CALL                             R27 3 1
     1297 GETIMPORT                        R28 K280 [Color3.fromRGB]
     1299 LOADN                            R29 180
     1300 LOADN                            R30 210
     1301 LOADN                            R31 228
     1302 CALL                             R28 3 1
     1303 GETIMPORT                        R29 K280 [Color3.fromRGB]
     1305 LOADN                            R30 255
     1306 LOADN                            R31 0
     1307 LOADN                            R32 191
     1308 CALL                             R29 3 1
     1309 GETIMPORT                        R30 K280 [Color3.fromRGB]
     1311 LOADN                            R31 255
     1312 LOADN                            R32 102
     1313 LOADN                            R33 204
     1314 CALL                             R30 3 1
     1315 GETIMPORT                        R31 K280 [Color3.fromRGB]
     1317 LOADN                            R32 255
     1318 LOADN                            R33 152
     1319 LOADN                            R34 220
     1320 CALL                             R31 3 1
     1321 GETIMPORT                        R32 K280 [Color3.fromRGB]
     1323 LOADN                            R33 255
     1324 LOADN                            R34 201
     1325 LOADN                            R35 201
     1326 CALL                             R32 3 1
     1327 GETIMPORT                        R33 K280 [Color3.fromRGB]
     1329 LOADN                            R34 232
     1330 LOADN                            R35 186
     1331 LOADN                            R36 200
     1332 CALL                             R33 3 1
     1333 GETIMPORT                        R34 K280 [Color3.fromRGB]
     1335 LOADN                            R35 98
     1336 LOADN                            R36 37
     1337 LOADN                            R37 209
     1338 CALL                             R34 3 1
     1339 GETIMPORT                        R35 K280 [Color3.fromRGB]
     1341 LOADN                            R36 180
     1342 LOADN                            R37 128
     1343 LOADN                            R38 255
     1344 CALL                             R35 3 1
     1345 GETIMPORT                        R36 K280 [Color3.fromRGB]
     1347 LOADN                            R37 177
     1348 LOADN                            R38 167
     1349 LOADN                            R39 255
     1350 CALL                             R36 3 1
     1351 GETIMPORT                        R37 K280 [Color3.fromRGB]
     1353 LOADN                            R38 107
     1354 LOADN                            R39 50
     1355 LOADN                            R40 124
     1356 CALL                             R37 3 1
     1357 GETIMPORT                        R38 K280 [Color3.fromRGB]
     1359 LOADN                            R39 124
     1360 LOADN                            R40 71
     1361 LOADN                            R41 142
     1362 CALL                             R38 3 1
     1363 GETIMPORT                        R39 K280 [Color3.fromRGB]
     1365 LOADN                            R40 140
     1366 LOADN                            R41 91
     1367 LOADN                            R42 159
     1368 CALL                             R39 3 1
     1369 GETIMPORT                        R40 K280 [Color3.fromRGB]
     1371 LOADN                            R41 170
     1372 LOADN                            R42 0
     1373 LOADN                            R43 170
     1374 CALL                             R40 3 1
     1375 SETLIST                          R24 R25 16 [97]
     1377 GETIMPORT                        R25 K280 [Color3.fromRGB]
     1379 LOADN                            R26 169
     1380 LOADN                            R27 47
     1381 LOADN                            R28 163
     1382 CALL                             R25 3 1
     1383 GETIMPORT                        R26 K280 [Color3.fromRGB]
     1385 LOADN                            R27 167
     1386 LOADN                            R28 94
     1387 LOADN                            R29 155
     1388 CALL                             R26 3 -1
     1389 SETLIST                          R24 R25 -1 [113]
     1391 MOVE                             R26 R4
     1392 CALL                             R26 0 1
     1393 JUMPIFNOT                        R26 ; [+2]
     1394 MOVE                             R25 R24
     1395 JUMP                             ; [+3]
     1396 MOVE                             R25 R22
     1397 MOVE                             R26 R23
     1398 CALL                             R25 1 1
     1399 SETTABLEKS                       R25 R5 K281 ["skinColors"]
     1401 RETURN                           R5 1
