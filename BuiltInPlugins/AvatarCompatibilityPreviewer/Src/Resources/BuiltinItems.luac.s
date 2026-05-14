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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["flatten"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarPreviewerMakeupDescription"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 32 0
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 DUPCLOSURE                       R6 K13 [PROTO_2]
       36 DUPCLOSURE                       R7 K14 [PROTO_3]
       37 DUPCLOSURE                       R8 K15 [PROTO_4]
       38 DUPCLOSURE                       R9 K16 [PROTO_5]
       39 LOADK                            R11 K17 ["HairAttachment"]
       40 NEWCLOSURE                       R10 P5
       41 CAPTURE                          VAL R11
       42 NEWTABLE                         R11 0 8
       44 MOVE                             R12 R10
       45 LOADK                            R13 K18 [13902886383]
       46 CALL                             R12 1 1
       47 MOVE                             R14 R10
       48 LOADK                            R15 K19 [11195420056]
       49 CALL                             R14 1 1
       50 LOADK                            R15 K20 ["layered"]
       51 SETTABLEKS                       R15 R14 K21 ["accessoryType"]
       53 MOVE                             R13 R14
       54 MOVE                             R14 R10
       55 LOADK                            R15 K22 [10966682388]
       56 CALL                             R14 1 1
       57 MOVE                             R15 R10
       58 LOADK                            R16 K23 [846803597]
       59 CALL                             R15 1 1
       60 MOVE                             R17 R10
       61 LOADK                            R18 K24 [9244114211]
       62 CALL                             R17 1 1
       63 LOADK                            R18 K20 ["layered"]
       64 SETTABLEKS                       R18 R17 K21 ["accessoryType"]
       66 MOVE                             R16 R17
       67 MOVE                             R18 R10
       68 LOADK                            R19 K25 [7193451306]
       69 CALL                             R18 1 1
       70 LOADK                            R19 K20 ["layered"]
       71 SETTABLEKS                       R19 R18 K21 ["accessoryType"]
       73 MOVE                             R17 R18
       74 MOVE                             R19 R10
       75 LOADK                            R20 K26 [7193386173]
       76 CALL                             R19 1 1
       77 LOADK                            R20 K20 ["layered"]
       78 SETTABLEKS                       R20 R19 K21 ["accessoryType"]
       80 MOVE                             R18 R19
       81 MOVE                             R20 R10
       82 LOADK                            R21 K27 [7193452166]
       83 CALL                             R20 1 1
       84 LOADK                            R21 K20 ["layered"]
       85 SETTABLEKS                       R21 R20 K21 ["accessoryType"]
       87 MOVE                             R19 R20
       88 SETLIST                          R11 R12 8 [1]
       90 SETTABLEKS                       R11 R4 K28 ["hair"]
       92 MOVE                             R11 R5
       93 LOADK                            R12 K29 ["HatAttachment"]
       94 NEWTABLE                         R13 0 4
       96 LOADK                            R14 K30 [9111390490]
       97 LOADK                            R15 K31 [16018338042]
       98 LOADK                            R16 K32 [1744330435]
       99 LOADK                            R17 K33 [3757852497]
      100 SETLIST                          R13 R14 4 [1]
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R4 K34 ["head"]
      105 LOADK                            R12 K35 ["FaceCenterAttachment"]
      106 NEWCLOSURE                       R11 P5
      107 CAPTURE                          VAL R12
      108 LOADK                            R13 K36 ["FaceFrontAttachment"]
      109 NEWCLOSURE                       R12 P5
      110 CAPTURE                          VAL R13
      111 NEWTABLE                         R13 0 12
      113 MOVE                             R14 R12
      114 LOADK                            R15 K37 [16640910727]
      115 CALL                             R14 1 1
      116 MOVE                             R15 R12
      117 LOADK                            R16 K38 [16648934240]
      118 CALL                             R15 1 1
      119 MOVE                             R16 R12
      120 LOADK                            R17 K39 [9992285857]
      121 CALL                             R16 1 1
      122 MOVE                             R17 R12
      123 LOADK                            R18 K40 [14179786408]
      124 CALL                             R17 1 1
      125 MOVE                             R19 R12
      126 LOADK                            R20 K41 [12794788453]
      127 CALL                             R19 1 1
      128 LOADK                            R20 K20 ["layered"]
      129 SETTABLEKS                       R20 R19 K21 ["accessoryType"]
      131 MOVE                             R18 R19
      132 MOVE                             R20 R12
      133 LOADK                            R21 K42 [12796340774]
      134 CALL                             R20 1 1
      135 LOADK                            R21 K20 ["layered"]
      136 SETTABLEKS                       R21 R20 K21 ["accessoryType"]
      138 MOVE                             R19 R20
      139 MOVE                             R21 R12
      140 LOADK                            R22 K43 [12794916165]
      141 CALL                             R21 1 1
      142 LOADK                            R22 K20 ["layered"]
      143 SETTABLEKS                       R22 R21 K21 ["accessoryType"]
      145 MOVE                             R20 R21
      146 MOVE                             R22 R12
      147 LOADK                            R23 K44 [12796163960]
      148 CALL                             R22 1 1
      149 LOADK                            R23 K20 ["layered"]
      150 SETTABLEKS                       R23 R22 K21 ["accessoryType"]
      152 MOVE                             R21 R22
      153 MOVE                             R22 R11
      154 LOADK                            R23 K45 [16648984941]
      155 CALL                             R22 1 1
      156 MOVE                             R23 R11
      157 LOADK                            R24 K46 [16649071525]
      158 CALL                             R23 1 1
      159 MOVE                             R24 R11
      160 LOADK                            R25 K47 [13538969595]
      161 CALL                             R24 1 1
      162 MOVE                             R25 R11
      163 LOADK                            R26 K48 [16648586095]
      164 CALL                             R25 1 -1
      165 SETLIST                          R13 R14 -1 [1]
      167 SETTABLEKS                       R13 R4 K49 ["face"]
      169 MOVE                             R13 R5
      170 LOADK                            R14 K50 ["BodyFrontAttachment"]
      171 NEWTABLE                         R15 0 4
      173 LOADK                            R16 K51 [16648690355]
      174 LOADK                            R17 K52 [16648652231]
      175 LOADK                            R18 K53 [16648706823]
      176 LOADK                            R19 K54 [16648698037]
      177 SETLIST                          R15 R16 4 [1]
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R4 K55 ["front"]
      182 MOVE                             R13 R5
      183 LOADK                            R14 K56 ["NeckAttachment"]
      184 NEWTABLE                         R15 0 4
      186 LOADK                            R16 K57 [16648958003]
      187 LOADK                            R17 K58 [16648625265]
      188 LOADK                            R18 K59 [3690490960]
      189 LOADK                            R19 K60 [15696295454]
      190 SETLIST                          R15 R16 4 [1]
      192 CALL                             R13 2 1
      193 SETTABLEKS                       R13 R4 K61 ["neck"]
      195 LOADK                            R14 K62 ["LeftCollarAttachment"]
      196 NEWCLOSURE                       R13 P5
      197 CAPTURE                          VAL R14
      198 LOADK                            R15 K63 ["RightCollarAttachment"]
      199 NEWCLOSURE                       R14 P5
      200 CAPTURE                          VAL R15
      201 LOADK                            R16 K64 ["LeftShoulderAttachment"]
      202 NEWCLOSURE                       R15 P5
      203 CAPTURE                          VAL R16
      204 LOADK                            R17 K65 ["RightShoulderAttachment"]
      205 NEWCLOSURE                       R16 P5
      206 CAPTURE                          VAL R17
      207 NEWTABLE                         R17 0 16
      209 MOVE                             R18 R15
      210 LOADK                            R19 K66 [16648897492]
      211 CALL                             R18 1 1
      212 MOVE                             R19 R16
      213 LOADK                            R20 K67 [16648905400]
      214 CALL                             R19 1 1
      215 MOVE                             R20 R15
      216 LOADK                            R21 K68 [16648604510]
      217 CALL                             R20 1 1
      218 MOVE                             R21 R16
      219 LOADK                            R22 K69 [16648615805]
      220 CALL                             R21 1 1
      221 MOVE                             R22 R15
      222 LOADK                            R23 K70 [16649028183]
      223 CALL                             R22 1 1
      224 MOVE                             R23 R16
      225 LOADK                            R24 K71 [16649036767]
      226 CALL                             R23 1 1
      227 MOVE                             R24 R15
      228 LOADK                            R25 K72 [9175325868]
      229 CALL                             R24 1 1
      230 MOVE                             R25 R16
      231 LOADK                            R26 K73 [9175327271]
      232 CALL                             R25 1 1
      233 MOVE                             R26 R13
      234 LOADK                            R27 K74 [16648502798]
      235 CALL                             R26 1 1
      236 MOVE                             R27 R14
      237 LOADK                            R28 K75 [16648553830]
      238 CALL                             R27 1 1
      239 MOVE                             R28 R13
      240 LOADK                            R29 K76 [16648441318]
      241 CALL                             R28 1 1
      242 MOVE                             R29 R14
      243 LOADK                            R30 K77 [16648488869]
      244 CALL                             R29 1 1
      245 MOVE                             R30 R13
      246 LOADK                            R31 K78 [16648993618]
      247 CALL                             R30 1 1
      248 MOVE                             R31 R14
      249 LOADK                            R32 K79 [16649003855]
      250 CALL                             R31 1 1
      251 MOVE                             R32 R13
      252 LOADK                            R33 K80 [16648866296]
      253 CALL                             R32 1 1
      254 MOVE                             R33 R14
      255 LOADK                            R34 K81 [16648873760]
      256 CALL                             R33 1 -1
      257 SETLIST                          R17 R18 -1 [1]
      259 SETTABLEKS                       R17 R4 K82 ["shoulder"]
      261 MOVE                             R17 R5
      262 LOADK                            R18 K83 ["BodyBackAttachment"]
      263 NEWTABLE                         R19 0 4
      265 LOADK                            R20 K84 [9111378574]
      266 LOADK                            R21 K85 [11774181392]
      267 LOADK                            R22 K86 [10685856744]
      268 LOADK                            R23 K87 [9175323644]
      269 SETLIST                          R19 R20 4 [1]
      271 CALL                             R17 2 1
      272 SETTABLEKS                       R17 R4 K88 ["back"]
      274 LOADK                            R18 K89 ["WaistBackAttachment"]
      275 NEWCLOSURE                       R17 P5
      276 CAPTURE                          VAL R18
      277 LOADK                            R19 K90 ["WaistCenterAttachment"]
      278 NEWCLOSURE                       R18 P5
      279 CAPTURE                          VAL R19
      280 LOADK                            R20 K91 ["WaistFrontAttachment"]
      281 NEWCLOSURE                       R19 P5
      282 CAPTURE                          VAL R20
      283 NEWTABLE                         R20 0 12
      285 MOVE                             R21 R19
      286 LOADK                            R22 K92 [16648852016]
      287 CALL                             R21 1 1
      288 MOVE                             R22 R19
      289 LOADK                            R23 K93 [16648681897]
      290 CALL                             R22 1 1
      291 MOVE                             R23 R19
      292 LOADK                            R24 K94 [7065897530]
      293 CALL                             R23 1 1
      294 MOVE                             R24 R19
      295 LOADK                            R25 K95 [6494274794]
      296 CALL                             R24 1 1
      297 MOVE                             R25 R18
      298 LOADK                            R26 K96 [16648672949]
      299 CALL                             R25 1 1
      300 MOVE                             R26 R18
      301 LOADK                            R27 K97 [16649078388]
      302 CALL                             R26 1 1
      303 MOVE                             R27 R18
      304 LOADK                            R28 K98 [8697885688]
      305 CALL                             R27 1 1
      306 MOVE                             R28 R18
      307 LOADK                            R29 K99 [3230476122]
      308 CALL                             R28 1 1
      309 MOVE                             R29 R17
      310 LOADK                            R30 K100 [10616839810]
      311 CALL                             R29 1 1
      312 MOVE                             R30 R17
      313 LOADK                            R31 K101 [13902900757]
      314 CALL                             R30 1 1
      315 MOVE                             R31 R17
      316 LOADK                            R32 K102 [13207223896]
      317 CALL                             R31 1 1
      318 MOVE                             R32 R17
      319 LOADK                            R33 K103 [4707869391]
      320 CALL                             R32 1 -1
      321 SETLIST                          R20 R21 -1 [1]
      323 SETTABLEKS                       R20 R4 K104 ["waist"]
      325 MOVE                             R20 R5
      326 LOADK                            R21 K105 ["LeftGripAttachment"]
      327 NEWTABLE                         R22 0 4
      329 LOADK                            R23 K106 [16648133530]
      330 LOADK                            R24 K107 [16649013455]
      331 LOADK                            R25 K108 [16649045008]
      332 LOADK                            R26 K109 [16648718579]
      333 SETLIST                          R22 R23 4 [1]
      335 CALL                             R20 2 1
      336 SETTABLEKS                       R20 R4 K110 ["gearLeft"]
      338 MOVE                             R20 R5
      339 LOADK                            R21 K111 ["RightGripAttachment"]
      340 NEWTABLE                         R22 0 4
      342 LOADK                            R23 K112 [16648471753]
      343 LOADK                            R24 K113 [16649019530]
      344 LOADK                            R25 K114 [16649053805]
      345 LOADK                            R26 K115 [16648843454]
      346 SETLIST                          R22 R23 4 [1]
      348 CALL                             R20 2 1
      349 SETTABLEKS                       R20 R4 K116 ["gearRight"]
      351 MOVE                             R20 R8
      352 NEWTABLE                         R21 0 6
      354 LOADK                            R22 K117 [7178736794]
      355 LOADK                            R23 K118 [7178735702]
      356 LOADK                            R24 K119 [6984729814]
      357 LOADK                            R25 K120 [7178740556]
      358 LOADK                            R26 K121 [9620950227]
      359 LOADK                            R27 K122 [9620976296]
      360 SETLIST                          R21 R22 6 [1]
      362 CALL                             R20 1 1
      363 SETTABLEKS                       R20 R4 K123 ["shirts"]
      365 MOVE                             R20 R8
      366 NEWTABLE                         R21 0 3
      368 LOADK                            R22 K124 [9112474888]
      369 LOADK                            R23 K117 [7178736794]
      370 LOADK                            R24 K125 [7178737816]
      371 SETLIST                          R21 R22 3 [1]
      373 CALL                             R20 1 1
      374 SETTABLEKS                       R20 R4 K126 ["tshirts"]
      376 MOVE                             R20 R8
      377 NEWTABLE                         R21 0 5
      379 LOADK                            R22 K127 [6984765766]
      380 LOADK                            R23 K128 [6984767443]
      381 LOADK                            R24 K129 [7272485361]
      382 LOADK                            R25 K130 [7192535654]
      383 LOADK                            R26 K131 [7192544729]
      384 SETLIST                          R21 R22 5 [1]
      386 CALL                             R20 1 1
      387 SETTABLEKS                       R20 R4 K132 ["jackets"]
      389 MOVE                             R20 R8
      390 NEWTABLE                         R21 0 8
      392 LOADK                            R22 K133 [9240758221]
      393 LOADK                            R23 K134 [9913119150]
      394 LOADK                            R24 K135 [9913110927]
      395 LOADK                            R25 K136 [9174379982]
      396 LOADK                            R26 K137 [6984769289]
      397 LOADK                            R27 K138 [6984771334]
      398 LOADK                            R28 K139 [9240757332]
      399 LOADK                            R29 K140 [9274353324]
      400 SETLIST                          R21 R22 8 [1]
      402 CALL                             R20 1 1
      403 SETTABLEKS                       R20 R4 K141 ["sweaters"]
      405 MOVE                             R20 R8
      406 NEWTABLE                         R21 0 5
      408 LOADK                            R22 K142 [6984763785]
      409 LOADK                            R23 K143 [6984740059]
      410 LOADK                            R24 K144 [7192673981]
      411 LOADK                            R25 K145 [7192681239]
      412 LOADK                            R26 K146 [7192679765]
      413 SETLIST                          R21 R22 5 [1]
      415 CALL                             R20 1 1
      416 SETTABLEKS                       R20 R4 K147 ["pants"]
      418 MOVE                             R20 R8
      419 NEWTABLE                         R21 0 3
      421 LOADK                            R22 K148 [6984773235]
      422 LOADK                            R23 K149 [7192683061]
      423 LOADK                            R24 K150 [7192685245]
      424 SETLIST                          R21 R22 3 [1]
      426 CALL                             R20 1 1
      427 SETTABLEKS                       R20 R4 K151 ["shorts"]
      429 MOVE                             R20 R8
      430 NEWTABLE                         R21 0 5
      432 LOADK                            R22 K152 [7192691582]
      433 LOADK                            R23 K153 [7192690731]
      434 LOADK                            R24 K154 [9284466791]
      435 LOADK                            R25 K155 [10278865927]
      436 LOADK                            R26 K156 [7192695838]
      437 SETLIST                          R21 R22 5 [1]
      439 CALL                             R20 1 1
      440 SETTABLEKS                       R20 R4 K157 ["skirts"]
      442 MOVE                             R20 R8
      443 NEWTABLE                         R21 0 3
      445 LOADK                            R22 K158 [8722031289]
      446 LOADK                            R23 K159 [7193170137]
      447 LOADK                            R24 K160 [7193104827]
      448 SETLIST                          R21 R22 3 [1]
      450 CALL                             R20 1 1
      451 SETTABLEKS                       R20 R4 K161 ["shoes"]
      453 MOVE                             R20 R8
      454 MOVE                             R22 R3
      455 CALL                             R22 0 1
      456 JUMPIFNOT                        R22 ; [+11]
      457 NEWTABLE                         R21 0 6
      459 LOADK                            R22 K162 [90228244352161]
      460 LOADK                            R23 K163 [120397398547192]
      461 LOADK                            R24 K164 [93336361109642]
      462 LOADK                            R25 K165 [82477874967872]
      463 LOADK                            R26 K166 [130003039476849]
      464 LOADK                            R27 K167 [79754923827217]
      465 SETLIST                          R21 R22 6 [1]
      467 JUMP                             ; [+5]
      468 NEWTABLE                         R21 0 1
      470 LOADK                            R22 K168 [11572097774]
      471 SETLIST                          R21 R22 1 [1]
      473 CALL                             R20 1 1
      474 SETTABLEKS                       R20 R4 K169 ["eyebrows"]
      476 MOVE                             R20 R8
      477 MOVE                             R22 R3
      478 CALL                             R22 0 1
      479 JUMPIFNOT                        R22 ; [+11]
      480 NEWTABLE                         R21 0 6
      482 LOADK                            R22 K170 [87627278462719]
      483 LOADK                            R23 K171 [99788116228594]
      484 LOADK                            R24 K172 [113182821313646]
      485 LOADK                            R25 K173 [89610303708933]
      486 LOADK                            R26 K174 [111175479479447]
      487 LOADK                            R27 K175 [116154465905462]
      488 SETLIST                          R21 R22 6 [1]
      490 JUMP                             ; [+5]
      491 NEWTABLE                         R21 0 1
      493 LOADK                            R22 K176 [11572100557]
      494 SETLIST                          R21 R22 1 [1]
      496 CALL                             R20 1 1
      497 SETTABLEKS                       R20 R4 K177 ["eyelashes"]
      499 MOVE                             R20 R9
      500 NEWTABLE                         R21 0 10
      502 LOADK                            R22 K178 [124907916662625]
      503 LOADK                            R23 K179 [83680514027582]
      504 LOADK                            R24 K180 [131554744089786]
      505 LOADK                            R25 K181 [115110380254480]
      506 LOADK                            R26 K182 [102522092102710]
      507 LOADK                            R27 K183 [125810748592920]
      508 LOADK                            R28 K184 [96752799518977]
      509 LOADK                            R29 K185 [102586991723042]
      510 LOADK                            R30 K186 [77679141505947]
      511 LOADK                            R31 K187 [72252917405514]
      512 SETLIST                          R21 R22 10 [1]
      514 CALL                             R20 1 1
      515 SETTABLEKS                       R20 R4 K188 ["faceMakeup"]
      517 MOVE                             R20 R9
      518 NEWTABLE                         R21 0 6
      520 LOADK                            R22 K189 [91215258040985]
      521 LOADK                            R23 K190 [106860126788672]
      522 LOADK                            R24 K191 [116602463707612]
      523 LOADK                            R25 K192 [87427894313112]
      524 LOADK                            R26 K193 [130700043557379]
      525 LOADK                            R27 K194 [109566218185317]
      526 SETLIST                          R21 R22 6 [1]
      528 CALL                             R20 1 1
      529 SETTABLEKS                       R20 R4 K195 ["lipMakeup"]
      531 MOVE                             R20 R9
      532 NEWTABLE                         R21 0 6
      534 LOADK                            R22 K196 [128355658815589]
      535 LOADK                            R23 K197 [124390911016506]
      536 LOADK                            R24 K198 [115181363529368]
      537 LOADK                            R25 K199 [90010535482282]
      538 LOADK                            R26 K200 [130365390192045]
      539 LOADK                            R27 K201 [113020962926328]
      540 SETLIST                          R21 R22 6 [1]
      542 CALL                             R20 1 1
      543 SETTABLEKS                       R20 R4 K202 ["eyeMakeup"]
      545 MOVE                             R20 R2
      546 GETTABLEKS                       R21 R4 K28 ["hair"]
      548 GETTABLEKS                       R22 R4 K34 ["head"]
      550 GETTABLEKS                       R23 R4 K49 ["face"]
      552 GETTABLEKS                       R24 R4 K55 ["front"]
      554 GETTABLEKS                       R25 R4 K61 ["neck"]
      556 GETTABLEKS                       R26 R4 K82 ["shoulder"]
      558 GETTABLEKS                       R27 R4 K88 ["back"]
      560 GETTABLEKS                       R28 R4 K104 ["waist"]
      562 GETTABLEKS                       R29 R4 K123 ["shirts"]
      564 GETTABLEKS                       R30 R4 K126 ["tshirts"]
      566 GETTABLEKS                       R31 R4 K132 ["jackets"]
      568 GETTABLEKS                       R32 R4 K141 ["sweaters"]
      570 GETTABLEKS                       R33 R4 K147 ["pants"]
      572 GETTABLEKS                       R34 R4 K151 ["shorts"]
      574 GETTABLEKS                       R35 R4 K157 ["skirts"]
      576 GETTABLEKS                       R36 R4 K161 ["shoes"]
      578 GETTABLEKS                       R37 R4 K169 ["eyebrows"]
      580 GETTABLEKS                       R38 R4 K177 ["eyelashes"]
      582 GETTABLEKS                       R39 R4 K110 ["gearLeft"]
      584 GETTABLEKS                       R40 R4 K116 ["gearRight"]
      586 GETTABLEKS                       R41 R4 K188 ["faceMakeup"]
      588 GETTABLEKS                       R42 R4 K195 ["lipMakeup"]
      590 GETTABLEKS                       R43 R4 K202 ["eyeMakeup"]
      592 CALL                             R20 23 1
      593 SETTABLEKS                       R20 R4 K203 ["allItems"]
      595 RETURN                           R4 1
