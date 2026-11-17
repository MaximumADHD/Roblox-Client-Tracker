PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K4 [{[1], ["attachment"], ["accessoryType"] = "rigid"}]
        7 SETTABLEKS                       R7 R10 K0 ["id"]
        9 SETTABLEKS                       R0 R10 K1 ["attachment"]
       11 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K7 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1], ["attachment"], ["accessoryType"] = "rigid"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["attachment"]
        6 RETURN                           R1 1

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
        6 DUPTABLE                         R9 K3 [{[1], ["accessoryType"] = "layered"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K6 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K3 [{[1], ["accessoryType"] = "makeup"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K6 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K3 [{[1], ["accessoryType"] = "classic"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K6 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

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
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 32 0
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 DUPCLOSURE                       R6 K13 [PROTO_2]
       36 DUPCLOSURE                       R7 K14 [PROTO_3]
       37 DUPCLOSURE                       R8 K15 [PROTO_4]
       38 DUPCLOSURE                       R9 K16 [PROTO_5]
       39 DUPCLOSURE                       R10 K17 [PROTO_6]
       40 LOADK                            R12 K18 ["HairAttachment"]
       41 NEWCLOSURE                       R11 P6
       42 CAPTURE                          VAL R12
       43 NEWTABLE                         R12 0 8
       45 MOVE                             R13 R11
       46 LOADK                            R14 K19 [13902886383]
       47 CALL                             R13 1 1
       48 MOVE                             R14 R11
       49 LOADK                            R15 K20 [11195420056]
       50 CALL                             R14 1 1
       51 LOADK                            R15 K21 ["layered"]
       52 SETTABLEKS                       R15 R14 K22 ["accessoryType"]
       54 MOVE                             R15 R11
       55 LOADK                            R16 K23 [10966682388]
       56 CALL                             R15 1 1
       57 MOVE                             R16 R11
       58 LOADK                            R17 K24 [846803597]
       59 CALL                             R16 1 1
       60 MOVE                             R17 R11
       61 LOADK                            R18 K25 [9244114211]
       62 CALL                             R17 1 1
       63 LOADK                            R18 K21 ["layered"]
       64 SETTABLEKS                       R18 R17 K22 ["accessoryType"]
       66 MOVE                             R18 R11
       67 LOADK                            R19 K26 [7193451306]
       68 CALL                             R18 1 1
       69 LOADK                            R19 K21 ["layered"]
       70 SETTABLEKS                       R19 R18 K22 ["accessoryType"]
       72 MOVE                             R19 R11
       73 LOADK                            R20 K27 [7193386173]
       74 CALL                             R19 1 1
       75 LOADK                            R20 K21 ["layered"]
       76 SETTABLEKS                       R20 R19 K22 ["accessoryType"]
       78 MOVE                             R20 R11
       79 LOADK                            R21 K28 [7193452166]
       80 CALL                             R20 1 1
       81 LOADK                            R21 K21 ["layered"]
       82 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
       84 SETLIST                          R12 R13 8 [1]
       86 SETTABLEKS                       R12 R4 K29 ["hair"]
       88 MOVE                             R12 R5
       89 LOADK                            R13 K30 ["HatAttachment"]
       90 NEWTABLE                         R14 0 4
       92 LOADK                            R15 K31 [9111390490]
       93 LOADK                            R16 K32 [16018338042]
       94 LOADK                            R17 K33 [1744330435]
       95 LOADK                            R18 K34 [3757852497]
       96 SETLIST                          R14 R15 4 [1]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R4 K35 ["head"]
      101 LOADK                            R13 K36 ["FaceCenterAttachment"]
      102 NEWCLOSURE                       R12 P6
      103 CAPTURE                          VAL R13
      104 LOADK                            R14 K37 ["FaceFrontAttachment"]
      105 NEWCLOSURE                       R13 P6
      106 CAPTURE                          VAL R14
      107 NEWTABLE                         R14 0 12
      109 MOVE                             R15 R13
      110 LOADK                            R16 K38 [16640910727]
      111 CALL                             R15 1 1
      112 MOVE                             R16 R13
      113 LOADK                            R17 K39 [16648934240]
      114 CALL                             R16 1 1
      115 MOVE                             R17 R13
      116 LOADK                            R18 K40 [9992285857]
      117 CALL                             R17 1 1
      118 MOVE                             R18 R13
      119 LOADK                            R19 K41 [14179786408]
      120 CALL                             R18 1 1
      121 MOVE                             R19 R13
      122 LOADK                            R20 K42 [12794788453]
      123 CALL                             R19 1 1
      124 LOADK                            R20 K21 ["layered"]
      125 SETTABLEKS                       R20 R19 K22 ["accessoryType"]
      127 MOVE                             R20 R13
      128 LOADK                            R21 K43 [12796340774]
      129 CALL                             R20 1 1
      130 LOADK                            R21 K21 ["layered"]
      131 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
      133 MOVE                             R21 R13
      134 LOADK                            R22 K44 [12794916165]
      135 CALL                             R21 1 1
      136 LOADK                            R22 K21 ["layered"]
      137 SETTABLEKS                       R22 R21 K22 ["accessoryType"]
      139 MOVE                             R22 R13
      140 LOADK                            R23 K45 [12796163960]
      141 CALL                             R22 1 1
      142 LOADK                            R23 K21 ["layered"]
      143 SETTABLEKS                       R23 R22 K22 ["accessoryType"]
      145 MOVE                             R23 R12
      146 LOADK                            R24 K46 [16648984941]
      147 CALL                             R23 1 1
      148 MOVE                             R24 R12
      149 LOADK                            R25 K47 [16649071525]
      150 CALL                             R24 1 1
      151 MOVE                             R25 R12
      152 LOADK                            R26 K48 [13538969595]
      153 CALL                             R25 1 1
      154 MOVE                             R26 R12
      155 LOADK                            R27 K49 [16648586095]
      156 CALL                             R26 1 -1
      157 SETLIST                          R14 R15 -1 [1]
      159 SETTABLEKS                       R14 R4 K50 ["face"]
      161 MOVE                             R14 R5
      162 LOADK                            R15 K51 ["BodyFrontAttachment"]
      163 NEWTABLE                         R16 0 4
      165 LOADK                            R17 K52 [16648690355]
      166 LOADK                            R18 K53 [16648652231]
      167 LOADK                            R19 K54 [16648706823]
      168 LOADK                            R20 K55 [16648698037]
      169 SETLIST                          R16 R17 4 [1]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R4 K56 ["front"]
      174 MOVE                             R14 R5
      175 LOADK                            R15 K57 ["NeckAttachment"]
      176 NEWTABLE                         R16 0 4
      178 LOADK                            R17 K58 [16648958003]
      179 LOADK                            R18 K59 [16648625265]
      180 LOADK                            R19 K60 [3690490960]
      181 LOADK                            R20 K61 [15696295454]
      182 SETLIST                          R16 R17 4 [1]
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R4 K62 ["neck"]
      187 LOADK                            R15 K63 ["LeftCollarAttachment"]
      188 NEWCLOSURE                       R14 P6
      189 CAPTURE                          VAL R15
      190 LOADK                            R16 K64 ["RightCollarAttachment"]
      191 NEWCLOSURE                       R15 P6
      192 CAPTURE                          VAL R16
      193 LOADK                            R17 K65 ["LeftShoulderAttachment"]
      194 NEWCLOSURE                       R16 P6
      195 CAPTURE                          VAL R17
      196 LOADK                            R18 K66 ["RightShoulderAttachment"]
      197 NEWCLOSURE                       R17 P6
      198 CAPTURE                          VAL R18
      199 NEWTABLE                         R18 0 16
      201 MOVE                             R19 R16
      202 LOADK                            R20 K67 [16648897492]
      203 CALL                             R19 1 1
      204 MOVE                             R20 R17
      205 LOADK                            R21 K68 [16648905400]
      206 CALL                             R20 1 1
      207 MOVE                             R21 R16
      208 LOADK                            R22 K69 [16648604510]
      209 CALL                             R21 1 1
      210 MOVE                             R22 R17
      211 LOADK                            R23 K70 [16648615805]
      212 CALL                             R22 1 1
      213 MOVE                             R23 R16
      214 LOADK                            R24 K71 [16649028183]
      215 CALL                             R23 1 1
      216 MOVE                             R24 R17
      217 LOADK                            R25 K72 [16649036767]
      218 CALL                             R24 1 1
      219 MOVE                             R25 R16
      220 LOADK                            R26 K73 [9175325868]
      221 CALL                             R25 1 1
      222 MOVE                             R26 R17
      223 LOADK                            R27 K74 [9175327271]
      224 CALL                             R26 1 1
      225 MOVE                             R27 R14
      226 LOADK                            R28 K75 [16648502798]
      227 CALL                             R27 1 1
      228 MOVE                             R28 R15
      229 LOADK                            R29 K76 [16648553830]
      230 CALL                             R28 1 1
      231 MOVE                             R29 R14
      232 LOADK                            R30 K77 [16648441318]
      233 CALL                             R29 1 1
      234 MOVE                             R30 R15
      235 LOADK                            R31 K78 [16648488869]
      236 CALL                             R30 1 1
      237 MOVE                             R31 R14
      238 LOADK                            R32 K79 [16648993618]
      239 CALL                             R31 1 1
      240 MOVE                             R32 R15
      241 LOADK                            R33 K80 [16649003855]
      242 CALL                             R32 1 1
      243 MOVE                             R33 R14
      244 LOADK                            R34 K81 [16648866296]
      245 CALL                             R33 1 1
      246 MOVE                             R34 R15
      247 LOADK                            R35 K82 [16648873760]
      248 CALL                             R34 1 -1
      249 SETLIST                          R18 R19 -1 [1]
      251 SETTABLEKS                       R18 R4 K83 ["shoulder"]
      253 MOVE                             R18 R5
      254 LOADK                            R19 K84 ["BodyBackAttachment"]
      255 NEWTABLE                         R20 0 4
      257 LOADK                            R21 K85 [9111378574]
      258 LOADK                            R22 K86 [11774181392]
      259 LOADK                            R23 K87 [10685856744]
      260 LOADK                            R24 K88 [9175323644]
      261 SETLIST                          R20 R21 4 [1]
      263 CALL                             R18 2 1
      264 SETTABLEKS                       R18 R4 K89 ["back"]
      266 LOADK                            R19 K90 ["WaistBackAttachment"]
      267 NEWCLOSURE                       R18 P6
      268 CAPTURE                          VAL R19
      269 LOADK                            R20 K91 ["WaistCenterAttachment"]
      270 NEWCLOSURE                       R19 P6
      271 CAPTURE                          VAL R20
      272 LOADK                            R21 K92 ["WaistFrontAttachment"]
      273 NEWCLOSURE                       R20 P6
      274 CAPTURE                          VAL R21
      275 NEWTABLE                         R21 0 12
      277 MOVE                             R22 R20
      278 LOADK                            R23 K93 [16648852016]
      279 CALL                             R22 1 1
      280 MOVE                             R23 R20
      281 LOADK                            R24 K94 [16648681897]
      282 CALL                             R23 1 1
      283 MOVE                             R24 R20
      284 LOADK                            R25 K95 [7065897530]
      285 CALL                             R24 1 1
      286 MOVE                             R25 R20
      287 LOADK                            R26 K96 [6494274794]
      288 CALL                             R25 1 1
      289 MOVE                             R26 R19
      290 LOADK                            R27 K97 [16648672949]
      291 CALL                             R26 1 1
      292 MOVE                             R27 R19
      293 LOADK                            R28 K98 [16649078388]
      294 CALL                             R27 1 1
      295 MOVE                             R28 R19
      296 LOADK                            R29 K99 [8697885688]
      297 CALL                             R28 1 1
      298 MOVE                             R29 R19
      299 LOADK                            R30 K100 [3230476122]
      300 CALL                             R29 1 1
      301 MOVE                             R30 R18
      302 LOADK                            R31 K101 [10616839810]
      303 CALL                             R30 1 1
      304 MOVE                             R31 R18
      305 LOADK                            R32 K102 [13902900757]
      306 CALL                             R31 1 1
      307 MOVE                             R32 R18
      308 LOADK                            R33 K103 [13207223896]
      309 CALL                             R32 1 1
      310 MOVE                             R33 R18
      311 LOADK                            R34 K104 [4707869391]
      312 CALL                             R33 1 -1
      313 SETLIST                          R21 R22 -1 [1]
      315 SETTABLEKS                       R21 R4 K105 ["waist"]
      317 MOVE                             R21 R5
      318 LOADK                            R22 K106 ["LeftGripAttachment"]
      319 NEWTABLE                         R23 0 4
      321 LOADK                            R24 K107 [16648133530]
      322 LOADK                            R25 K108 [16649013455]
      323 LOADK                            R26 K109 [16649045008]
      324 LOADK                            R27 K110 [16648718579]
      325 SETLIST                          R23 R24 4 [1]
      327 CALL                             R21 2 1
      328 SETTABLEKS                       R21 R4 K111 ["gearLeft"]
      330 MOVE                             R21 R5
      331 LOADK                            R22 K112 ["RightGripAttachment"]
      332 NEWTABLE                         R23 0 4
      334 LOADK                            R24 K113 [16648471753]
      335 LOADK                            R25 K114 [16649019530]
      336 LOADK                            R26 K115 [16649053805]
      337 LOADK                            R27 K116 [16648843454]
      338 SETLIST                          R23 R24 4 [1]
      340 CALL                             R21 2 1
      341 SETTABLEKS                       R21 R4 K117 ["gearRight"]
      343 MOVE                             R21 R8
      344 NEWTABLE                         R22 0 6
      346 LOADK                            R23 K118 [7178736794]
      347 LOADK                            R24 K119 [7178735702]
      348 LOADK                            R25 K120 [6984729814]
      349 LOADK                            R26 K121 [7178740556]
      350 LOADK                            R27 K122 [9620950227]
      351 LOADK                            R28 K123 [9620976296]
      352 SETLIST                          R22 R23 6 [1]
      354 CALL                             R21 1 1
      355 SETTABLEKS                       R21 R4 K124 ["shirts"]
      357 MOVE                             R21 R8
      358 NEWTABLE                         R22 0 3
      360 LOADK                            R23 K125 [9112474888]
      361 LOADK                            R24 K118 [7178736794]
      362 LOADK                            R25 K126 [7178737816]
      363 SETLIST                          R22 R23 3 [1]
      365 CALL                             R21 1 1
      366 SETTABLEKS                       R21 R4 K127 ["tshirts"]
      368 MOVE                             R21 R8
      369 NEWTABLE                         R22 0 5
      371 LOADK                            R23 K128 [6984765766]
      372 LOADK                            R24 K129 [6984767443]
      373 LOADK                            R25 K130 [7272485361]
      374 LOADK                            R26 K131 [7192535654]
      375 LOADK                            R27 K132 [7192544729]
      376 SETLIST                          R22 R23 5 [1]
      378 CALL                             R21 1 1
      379 SETTABLEKS                       R21 R4 K133 ["jackets"]
      381 MOVE                             R21 R8
      382 NEWTABLE                         R22 0 8
      384 LOADK                            R23 K134 [9240758221]
      385 LOADK                            R24 K135 [9913119150]
      386 LOADK                            R25 K136 [9913110927]
      387 LOADK                            R26 K137 [9174379982]
      388 LOADK                            R27 K138 [6984769289]
      389 LOADK                            R28 K139 [6984771334]
      390 LOADK                            R29 K140 [9240757332]
      391 LOADK                            R30 K141 [9274353324]
      392 SETLIST                          R22 R23 8 [1]
      394 CALL                             R21 1 1
      395 SETTABLEKS                       R21 R4 K142 ["sweaters"]
      397 MOVE                             R21 R8
      398 NEWTABLE                         R22 0 5
      400 LOADK                            R23 K143 [6984763785]
      401 LOADK                            R24 K144 [6984740059]
      402 LOADK                            R25 K145 [7192673981]
      403 LOADK                            R26 K146 [7192681239]
      404 LOADK                            R27 K147 [7192679765]
      405 SETLIST                          R22 R23 5 [1]
      407 CALL                             R21 1 1
      408 SETTABLEKS                       R21 R4 K148 ["pants"]
      410 MOVE                             R21 R8
      411 NEWTABLE                         R22 0 3
      413 LOADK                            R23 K149 [6984773235]
      414 LOADK                            R24 K150 [7192683061]
      415 LOADK                            R25 K151 [7192685245]
      416 SETLIST                          R22 R23 3 [1]
      418 CALL                             R21 1 1
      419 SETTABLEKS                       R21 R4 K152 ["shorts"]
      421 MOVE                             R21 R8
      422 NEWTABLE                         R22 0 5
      424 LOADK                            R23 K153 [7192691582]
      425 LOADK                            R24 K154 [7192690731]
      426 LOADK                            R25 K155 [9284466791]
      427 LOADK                            R26 K156 [10278865927]
      428 LOADK                            R27 K157 [7192695838]
      429 SETLIST                          R22 R23 5 [1]
      431 CALL                             R21 1 1
      432 SETTABLEKS                       R21 R4 K158 ["skirts"]
      434 MOVE                             R21 R8
      435 NEWTABLE                         R22 0 3
      437 LOADK                            R23 K159 [8722031289]
      438 LOADK                            R24 K160 [7193170137]
      439 LOADK                            R25 K161 [7193104827]
      440 SETLIST                          R22 R23 3 [1]
      442 CALL                             R21 1 1
      443 SETTABLEKS                       R21 R4 K162 ["shoes"]
      445 MOVE                             R21 R8
      446 NEWTABLE                         R22 0 6
      448 LOADK                            R23 K163 [90228244352161]
      449 LOADK                            R24 K164 [120397398547192]
      450 LOADK                            R25 K165 [93336361109642]
      451 LOADK                            R26 K166 [82477874967872]
      452 LOADK                            R27 K167 [130003039476849]
      453 LOADK                            R28 K168 [79754923827217]
      454 SETLIST                          R22 R23 6 [1]
      456 CALL                             R21 1 1
      457 SETTABLEKS                       R21 R4 K169 ["eyebrows"]
      459 MOVE                             R21 R8
      460 NEWTABLE                         R22 0 6
      462 LOADK                            R23 K170 [87627278462719]
      463 LOADK                            R24 K171 [99788116228594]
      464 LOADK                            R25 K172 [113182821313646]
      465 LOADK                            R26 K173 [89610303708933]
      466 LOADK                            R27 K174 [111175479479447]
      467 LOADK                            R28 K175 [116154465905462]
      468 SETLIST                          R22 R23 6 [1]
      470 CALL                             R21 1 1
      471 SETTABLEKS                       R21 R4 K176 ["eyelashes"]
      473 MOVE                             R21 R9
      474 NEWTABLE                         R22 0 10
      476 LOADK                            R23 K177 [124907916662625]
      477 LOADK                            R24 K178 [83680514027582]
      478 LOADK                            R25 K179 [131554744089786]
      479 LOADK                            R26 K180 [115110380254480]
      480 LOADK                            R27 K181 [102522092102710]
      481 LOADK                            R28 K182 [125810748592920]
      482 LOADK                            R29 K183 [96752799518977]
      483 LOADK                            R30 K184 [102586991723042]
      484 LOADK                            R31 K185 [77679141505947]
      485 LOADK                            R32 K186 [72252917405514]
      486 SETLIST                          R22 R23 10 [1]
      488 CALL                             R21 1 1
      489 SETTABLEKS                       R21 R4 K187 ["faceMakeup"]
      491 MOVE                             R21 R9
      492 NEWTABLE                         R22 0 6
      494 LOADK                            R23 K188 [91215258040985]
      495 LOADK                            R24 K189 [106860126788672]
      496 LOADK                            R25 K190 [116602463707612]
      497 LOADK                            R26 K191 [87427894313112]
      498 LOADK                            R27 K192 [130700043557379]
      499 LOADK                            R28 K193 [109566218185317]
      500 SETLIST                          R22 R23 6 [1]
      502 CALL                             R21 1 1
      503 SETTABLEKS                       R21 R4 K194 ["lipMakeup"]
      505 MOVE                             R21 R9
      506 NEWTABLE                         R22 0 6
      508 LOADK                            R23 K195 [128355658815589]
      509 LOADK                            R24 K196 [124390911016506]
      510 LOADK                            R25 K197 [115181363529368]
      511 LOADK                            R26 K198 [90010535482282]
      512 LOADK                            R27 K199 [130365390192045]
      513 LOADK                            R28 K200 [113020962926328]
      514 SETLIST                          R22 R23 6 [1]
      516 CALL                             R21 1 1
      517 SETTABLEKS                       R21 R4 K201 ["eyeMakeup"]
      519 MOVE                             R21 R10
      520 NEWTABLE                         R22 0 14
      522 LOADK                            R23 K202 [607785314]
      523 LOADK                            R24 K203 [144076358]
      524 LOADK                            R25 K204 [3670737444]
      525 LOADK                            R26 K205 [398633584]
      526 LOADK                            R27 K206 [382538059]
      527 LOADK                            R28 K207 [398635081]
      528 LOADK                            R29 K208 [398634295]
      529 LOADK                            R30 K209 [4047884939]
      530 LOADK                            R31 K210 [4047886060]
      531 LOADK                            R32 K211 [4047884046]
      532 LOADK                            R33 K212 [144076436]
      533 LOADK                            R34 K213 [382537702]
      534 LOADK                            R35 K214 [382537085]
      535 LOADK                            R36 K215 [382538295]
      536 SETLIST                          R22 R23 14 [1]
      538 CALL                             R21 1 1
      539 SETTABLEKS                       R21 R4 K216 ["classicShirts"]
      541 MOVE                             R21 R10
      542 NEWTABLE                         R22 0 3
      544 LOADK                            R23 K217 [1036727]
      545 LOADK                            R24 K218 [1031862]
      546 LOADK                            R25 K219 [1031864]
      547 SETLIST                          R22 R23 3 [1]
      549 CALL                             R21 1 1
      550 SETTABLEKS                       R21 R4 K220 ["classicTShirts"]
      552 MOVE                             R21 R10
      553 NEWTABLE                         R22 0 11
      555 LOADK                            R23 K221 [398633812]
      556 LOADK                            R24 K222 [398635338]
      557 LOADK                            R25 K223 [398634487]
      558 LOADK                            R26 K224 [144076760]
      559 LOADK                            R27 K225 [382538503]
      560 LOADK                            R28 K226 [382537950]
      561 LOADK                            R29 K227 [382537569]
      562 LOADK                            R30 K228 [382537806]
      563 LOADK                            R31 K229 [129458426]
      564 LOADK                            R32 K230 [129459077]
      565 LOADK                            R33 K231 [7231091126]
      566 SETLIST                          R22 R23 11 [1]
      568 CALL                             R21 1 1
      569 SETTABLEKS                       R21 R4 K232 ["classicPants"]
      571 MOVE                             R21 R2
      572 GETTABLEKS                       R22 R4 K29 ["hair"]
      574 GETTABLEKS                       R23 R4 K35 ["head"]
      576 GETTABLEKS                       R24 R4 K50 ["face"]
      578 GETTABLEKS                       R25 R4 K56 ["front"]
      580 GETTABLEKS                       R26 R4 K62 ["neck"]
      582 GETTABLEKS                       R27 R4 K83 ["shoulder"]
      584 GETTABLEKS                       R28 R4 K89 ["back"]
      586 GETTABLEKS                       R29 R4 K105 ["waist"]
      588 GETTABLEKS                       R30 R4 K124 ["shirts"]
      590 GETTABLEKS                       R31 R4 K127 ["tshirts"]
      592 GETTABLEKS                       R32 R4 K133 ["jackets"]
      594 GETTABLEKS                       R33 R4 K142 ["sweaters"]
      596 GETTABLEKS                       R34 R4 K148 ["pants"]
      598 GETTABLEKS                       R35 R4 K152 ["shorts"]
      600 GETTABLEKS                       R36 R4 K158 ["skirts"]
      602 GETTABLEKS                       R37 R4 K162 ["shoes"]
      604 GETTABLEKS                       R38 R4 K169 ["eyebrows"]
      606 GETTABLEKS                       R39 R4 K176 ["eyelashes"]
      608 GETTABLEKS                       R40 R4 K111 ["gearLeft"]
      610 GETTABLEKS                       R41 R4 K117 ["gearRight"]
      612 GETTABLEKS                       R42 R4 K187 ["faceMakeup"]
      614 GETTABLEKS                       R43 R4 K194 ["lipMakeup"]
      616 GETTABLEKS                       R44 R4 K201 ["eyeMakeup"]
      618 MOVE                             R46 R3
      619 CALL                             R46 0 1
      620 JUMPIFNOT                        R46 ; [+3]
      621 GETTABLEKS                       R45 R4 K216 ["classicShirts"]
      623 JUMP                             ; [+2]
      624 NEWTABLE                         R45 0 0
      626 MOVE                             R47 R3
      627 CALL                             R47 0 1
      628 JUMPIFNOT                        R47 ; [+3]
      629 GETTABLEKS                       R46 R4 K220 ["classicTShirts"]
      631 JUMP                             ; [+2]
      632 NEWTABLE                         R46 0 0
      634 MOVE                             R48 R3
      635 CALL                             R48 0 1
      636 JUMPIFNOT                        R48 ; [+3]
      637 GETTABLEKS                       R47 R4 K232 ["classicPants"]
      639 JUMP                             ; [+2]
      640 NEWTABLE                         R47 0 0
      642 CALL                             R21 26 1
      643 SETTABLEKS                       R21 R4 K233 ["allItems"]
      645 RETURN                           R4 1
