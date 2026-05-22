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
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"id", "accessoryType"}]
        7 SETTABLEKS                       R6 R9 K0 ["id"]
        9 LOADK                            R10 K3 ["classic"]
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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 32 0
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 DUPCLOSURE                       R7 K14 [PROTO_2]
       45 DUPCLOSURE                       R8 K15 [PROTO_3]
       46 DUPCLOSURE                       R9 K16 [PROTO_4]
       47 DUPCLOSURE                       R10 K17 [PROTO_5]
       48 DUPCLOSURE                       R11 K18 [PROTO_6]
       49 LOADK                            R13 K19 ["HairAttachment"]
       50 NEWCLOSURE                       R12 P6
       51 CAPTURE                          VAL R13
       52 NEWTABLE                         R13 0 8
       54 MOVE                             R14 R12
       55 LOADK                            R15 K20 [13902886383]
       56 CALL                             R14 1 1
       57 MOVE                             R16 R12
       58 LOADK                            R17 K21 [11195420056]
       59 CALL                             R16 1 1
       60 LOADK                            R17 K22 ["layered"]
       61 SETTABLEKS                       R17 R16 K23 ["accessoryType"]
       63 MOVE                             R15 R16
       64 MOVE                             R16 R12
       65 LOADK                            R17 K24 [10966682388]
       66 CALL                             R16 1 1
       67 MOVE                             R17 R12
       68 LOADK                            R18 K25 [846803597]
       69 CALL                             R17 1 1
       70 MOVE                             R19 R12
       71 LOADK                            R20 K26 [9244114211]
       72 CALL                             R19 1 1
       73 LOADK                            R20 K22 ["layered"]
       74 SETTABLEKS                       R20 R19 K23 ["accessoryType"]
       76 MOVE                             R18 R19
       77 MOVE                             R20 R12
       78 LOADK                            R21 K27 [7193451306]
       79 CALL                             R20 1 1
       80 LOADK                            R21 K22 ["layered"]
       81 SETTABLEKS                       R21 R20 K23 ["accessoryType"]
       83 MOVE                             R19 R20
       84 MOVE                             R21 R12
       85 LOADK                            R22 K28 [7193386173]
       86 CALL                             R21 1 1
       87 LOADK                            R22 K22 ["layered"]
       88 SETTABLEKS                       R22 R21 K23 ["accessoryType"]
       90 MOVE                             R20 R21
       91 MOVE                             R22 R12
       92 LOADK                            R23 K29 [7193452166]
       93 CALL                             R22 1 1
       94 LOADK                            R23 K22 ["layered"]
       95 SETTABLEKS                       R23 R22 K23 ["accessoryType"]
       97 MOVE                             R21 R22
       98 SETLIST                          R13 R14 8 [1]
      100 SETTABLEKS                       R13 R5 K30 ["hair"]
      102 MOVE                             R13 R6
      103 LOADK                            R14 K31 ["HatAttachment"]
      104 NEWTABLE                         R15 0 4
      106 LOADK                            R16 K32 [9111390490]
      107 LOADK                            R17 K33 [16018338042]
      108 LOADK                            R18 K34 [1744330435]
      109 LOADK                            R19 K35 [3757852497]
      110 SETLIST                          R15 R16 4 [1]
      112 CALL                             R13 2 1
      113 SETTABLEKS                       R13 R5 K36 ["head"]
      115 LOADK                            R14 K37 ["FaceCenterAttachment"]
      116 NEWCLOSURE                       R13 P6
      117 CAPTURE                          VAL R14
      118 LOADK                            R15 K38 ["FaceFrontAttachment"]
      119 NEWCLOSURE                       R14 P6
      120 CAPTURE                          VAL R15
      121 NEWTABLE                         R15 0 12
      123 MOVE                             R16 R14
      124 LOADK                            R17 K39 [16640910727]
      125 CALL                             R16 1 1
      126 MOVE                             R17 R14
      127 LOADK                            R18 K40 [16648934240]
      128 CALL                             R17 1 1
      129 MOVE                             R18 R14
      130 LOADK                            R19 K41 [9992285857]
      131 CALL                             R18 1 1
      132 MOVE                             R19 R14
      133 LOADK                            R20 K42 [14179786408]
      134 CALL                             R19 1 1
      135 MOVE                             R21 R14
      136 LOADK                            R22 K43 [12794788453]
      137 CALL                             R21 1 1
      138 LOADK                            R22 K22 ["layered"]
      139 SETTABLEKS                       R22 R21 K23 ["accessoryType"]
      141 MOVE                             R20 R21
      142 MOVE                             R22 R14
      143 LOADK                            R23 K44 [12796340774]
      144 CALL                             R22 1 1
      145 LOADK                            R23 K22 ["layered"]
      146 SETTABLEKS                       R23 R22 K23 ["accessoryType"]
      148 MOVE                             R21 R22
      149 MOVE                             R23 R14
      150 LOADK                            R24 K45 [12794916165]
      151 CALL                             R23 1 1
      152 LOADK                            R24 K22 ["layered"]
      153 SETTABLEKS                       R24 R23 K23 ["accessoryType"]
      155 MOVE                             R22 R23
      156 MOVE                             R24 R14
      157 LOADK                            R25 K46 [12796163960]
      158 CALL                             R24 1 1
      159 LOADK                            R25 K22 ["layered"]
      160 SETTABLEKS                       R25 R24 K23 ["accessoryType"]
      162 MOVE                             R23 R24
      163 MOVE                             R24 R13
      164 LOADK                            R25 K47 [16648984941]
      165 CALL                             R24 1 1
      166 MOVE                             R25 R13
      167 LOADK                            R26 K48 [16649071525]
      168 CALL                             R25 1 1
      169 MOVE                             R26 R13
      170 LOADK                            R27 K49 [13538969595]
      171 CALL                             R26 1 1
      172 MOVE                             R27 R13
      173 LOADK                            R28 K50 [16648586095]
      174 CALL                             R27 1 -1
      175 SETLIST                          R15 R16 -1 [1]
      177 SETTABLEKS                       R15 R5 K51 ["face"]
      179 MOVE                             R15 R6
      180 LOADK                            R16 K52 ["BodyFrontAttachment"]
      181 NEWTABLE                         R17 0 4
      183 LOADK                            R18 K53 [16648690355]
      184 LOADK                            R19 K54 [16648652231]
      185 LOADK                            R20 K55 [16648706823]
      186 LOADK                            R21 K56 [16648698037]
      187 SETLIST                          R17 R18 4 [1]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R5 K57 ["front"]
      192 MOVE                             R15 R6
      193 LOADK                            R16 K58 ["NeckAttachment"]
      194 NEWTABLE                         R17 0 4
      196 LOADK                            R18 K59 [16648958003]
      197 LOADK                            R19 K60 [16648625265]
      198 LOADK                            R20 K61 [3690490960]
      199 LOADK                            R21 K62 [15696295454]
      200 SETLIST                          R17 R18 4 [1]
      202 CALL                             R15 2 1
      203 SETTABLEKS                       R15 R5 K63 ["neck"]
      205 LOADK                            R16 K64 ["LeftCollarAttachment"]
      206 NEWCLOSURE                       R15 P6
      207 CAPTURE                          VAL R16
      208 LOADK                            R17 K65 ["RightCollarAttachment"]
      209 NEWCLOSURE                       R16 P6
      210 CAPTURE                          VAL R17
      211 LOADK                            R18 K66 ["LeftShoulderAttachment"]
      212 NEWCLOSURE                       R17 P6
      213 CAPTURE                          VAL R18
      214 LOADK                            R19 K67 ["RightShoulderAttachment"]
      215 NEWCLOSURE                       R18 P6
      216 CAPTURE                          VAL R19
      217 NEWTABLE                         R19 0 16
      219 MOVE                             R20 R17
      220 LOADK                            R21 K68 [16648897492]
      221 CALL                             R20 1 1
      222 MOVE                             R21 R18
      223 LOADK                            R22 K69 [16648905400]
      224 CALL                             R21 1 1
      225 MOVE                             R22 R17
      226 LOADK                            R23 K70 [16648604510]
      227 CALL                             R22 1 1
      228 MOVE                             R23 R18
      229 LOADK                            R24 K71 [16648615805]
      230 CALL                             R23 1 1
      231 MOVE                             R24 R17
      232 LOADK                            R25 K72 [16649028183]
      233 CALL                             R24 1 1
      234 MOVE                             R25 R18
      235 LOADK                            R26 K73 [16649036767]
      236 CALL                             R25 1 1
      237 MOVE                             R26 R17
      238 LOADK                            R27 K74 [9175325868]
      239 CALL                             R26 1 1
      240 MOVE                             R27 R18
      241 LOADK                            R28 K75 [9175327271]
      242 CALL                             R27 1 1
      243 MOVE                             R28 R15
      244 LOADK                            R29 K76 [16648502798]
      245 CALL                             R28 1 1
      246 MOVE                             R29 R16
      247 LOADK                            R30 K77 [16648553830]
      248 CALL                             R29 1 1
      249 MOVE                             R30 R15
      250 LOADK                            R31 K78 [16648441318]
      251 CALL                             R30 1 1
      252 MOVE                             R31 R16
      253 LOADK                            R32 K79 [16648488869]
      254 CALL                             R31 1 1
      255 MOVE                             R32 R15
      256 LOADK                            R33 K80 [16648993618]
      257 CALL                             R32 1 1
      258 MOVE                             R33 R16
      259 LOADK                            R34 K81 [16649003855]
      260 CALL                             R33 1 1
      261 MOVE                             R34 R15
      262 LOADK                            R35 K82 [16648866296]
      263 CALL                             R34 1 1
      264 MOVE                             R35 R16
      265 LOADK                            R36 K83 [16648873760]
      266 CALL                             R35 1 -1
      267 SETLIST                          R19 R20 -1 [1]
      269 SETTABLEKS                       R19 R5 K84 ["shoulder"]
      271 MOVE                             R19 R6
      272 LOADK                            R20 K85 ["BodyBackAttachment"]
      273 NEWTABLE                         R21 0 4
      275 LOADK                            R22 K86 [9111378574]
      276 LOADK                            R23 K87 [11774181392]
      277 LOADK                            R24 K88 [10685856744]
      278 LOADK                            R25 K89 [9175323644]
      279 SETLIST                          R21 R22 4 [1]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R5 K90 ["back"]
      284 LOADK                            R20 K91 ["WaistBackAttachment"]
      285 NEWCLOSURE                       R19 P6
      286 CAPTURE                          VAL R20
      287 LOADK                            R21 K92 ["WaistCenterAttachment"]
      288 NEWCLOSURE                       R20 P6
      289 CAPTURE                          VAL R21
      290 LOADK                            R22 K93 ["WaistFrontAttachment"]
      291 NEWCLOSURE                       R21 P6
      292 CAPTURE                          VAL R22
      293 NEWTABLE                         R22 0 12
      295 MOVE                             R23 R21
      296 LOADK                            R24 K94 [16648852016]
      297 CALL                             R23 1 1
      298 MOVE                             R24 R21
      299 LOADK                            R25 K95 [16648681897]
      300 CALL                             R24 1 1
      301 MOVE                             R25 R21
      302 LOADK                            R26 K96 [7065897530]
      303 CALL                             R25 1 1
      304 MOVE                             R26 R21
      305 LOADK                            R27 K97 [6494274794]
      306 CALL                             R26 1 1
      307 MOVE                             R27 R20
      308 LOADK                            R28 K98 [16648672949]
      309 CALL                             R27 1 1
      310 MOVE                             R28 R20
      311 LOADK                            R29 K99 [16649078388]
      312 CALL                             R28 1 1
      313 MOVE                             R29 R20
      314 LOADK                            R30 K100 [8697885688]
      315 CALL                             R29 1 1
      316 MOVE                             R30 R20
      317 LOADK                            R31 K101 [3230476122]
      318 CALL                             R30 1 1
      319 MOVE                             R31 R19
      320 LOADK                            R32 K102 [10616839810]
      321 CALL                             R31 1 1
      322 MOVE                             R32 R19
      323 LOADK                            R33 K103 [13902900757]
      324 CALL                             R32 1 1
      325 MOVE                             R33 R19
      326 LOADK                            R34 K104 [13207223896]
      327 CALL                             R33 1 1
      328 MOVE                             R34 R19
      329 LOADK                            R35 K105 [4707869391]
      330 CALL                             R34 1 -1
      331 SETLIST                          R22 R23 -1 [1]
      333 SETTABLEKS                       R22 R5 K106 ["waist"]
      335 MOVE                             R22 R6
      336 LOADK                            R23 K107 ["LeftGripAttachment"]
      337 NEWTABLE                         R24 0 4
      339 LOADK                            R25 K108 [16648133530]
      340 LOADK                            R26 K109 [16649013455]
      341 LOADK                            R27 K110 [16649045008]
      342 LOADK                            R28 K111 [16648718579]
      343 SETLIST                          R24 R25 4 [1]
      345 CALL                             R22 2 1
      346 SETTABLEKS                       R22 R5 K112 ["gearLeft"]
      348 MOVE                             R22 R6
      349 LOADK                            R23 K113 ["RightGripAttachment"]
      350 NEWTABLE                         R24 0 4
      352 LOADK                            R25 K114 [16648471753]
      353 LOADK                            R26 K115 [16649019530]
      354 LOADK                            R27 K116 [16649053805]
      355 LOADK                            R28 K117 [16648843454]
      356 SETLIST                          R24 R25 4 [1]
      358 CALL                             R22 2 1
      359 SETTABLEKS                       R22 R5 K118 ["gearRight"]
      361 MOVE                             R22 R9
      362 NEWTABLE                         R23 0 6
      364 LOADK                            R24 K119 [7178736794]
      365 LOADK                            R25 K120 [7178735702]
      366 LOADK                            R26 K121 [6984729814]
      367 LOADK                            R27 K122 [7178740556]
      368 LOADK                            R28 K123 [9620950227]
      369 LOADK                            R29 K124 [9620976296]
      370 SETLIST                          R23 R24 6 [1]
      372 CALL                             R22 1 1
      373 SETTABLEKS                       R22 R5 K125 ["shirts"]
      375 MOVE                             R22 R9
      376 NEWTABLE                         R23 0 3
      378 LOADK                            R24 K126 [9112474888]
      379 LOADK                            R25 K119 [7178736794]
      380 LOADK                            R26 K127 [7178737816]
      381 SETLIST                          R23 R24 3 [1]
      383 CALL                             R22 1 1
      384 SETTABLEKS                       R22 R5 K128 ["tshirts"]
      386 MOVE                             R22 R9
      387 NEWTABLE                         R23 0 5
      389 LOADK                            R24 K129 [6984765766]
      390 LOADK                            R25 K130 [6984767443]
      391 LOADK                            R26 K131 [7272485361]
      392 LOADK                            R27 K132 [7192535654]
      393 LOADK                            R28 K133 [7192544729]
      394 SETLIST                          R23 R24 5 [1]
      396 CALL                             R22 1 1
      397 SETTABLEKS                       R22 R5 K134 ["jackets"]
      399 MOVE                             R22 R9
      400 NEWTABLE                         R23 0 8
      402 LOADK                            R24 K135 [9240758221]
      403 LOADK                            R25 K136 [9913119150]
      404 LOADK                            R26 K137 [9913110927]
      405 LOADK                            R27 K138 [9174379982]
      406 LOADK                            R28 K139 [6984769289]
      407 LOADK                            R29 K140 [6984771334]
      408 LOADK                            R30 K141 [9240757332]
      409 LOADK                            R31 K142 [9274353324]
      410 SETLIST                          R23 R24 8 [1]
      412 CALL                             R22 1 1
      413 SETTABLEKS                       R22 R5 K143 ["sweaters"]
      415 MOVE                             R22 R9
      416 NEWTABLE                         R23 0 5
      418 LOADK                            R24 K144 [6984763785]
      419 LOADK                            R25 K145 [6984740059]
      420 LOADK                            R26 K146 [7192673981]
      421 LOADK                            R27 K147 [7192681239]
      422 LOADK                            R28 K148 [7192679765]
      423 SETLIST                          R23 R24 5 [1]
      425 CALL                             R22 1 1
      426 SETTABLEKS                       R22 R5 K149 ["pants"]
      428 MOVE                             R22 R9
      429 NEWTABLE                         R23 0 3
      431 LOADK                            R24 K150 [6984773235]
      432 LOADK                            R25 K151 [7192683061]
      433 LOADK                            R26 K152 [7192685245]
      434 SETLIST                          R23 R24 3 [1]
      436 CALL                             R22 1 1
      437 SETTABLEKS                       R22 R5 K153 ["shorts"]
      439 MOVE                             R22 R9
      440 NEWTABLE                         R23 0 5
      442 LOADK                            R24 K154 [7192691582]
      443 LOADK                            R25 K155 [7192690731]
      444 LOADK                            R26 K156 [9284466791]
      445 LOADK                            R27 K157 [10278865927]
      446 LOADK                            R28 K158 [7192695838]
      447 SETLIST                          R23 R24 5 [1]
      449 CALL                             R22 1 1
      450 SETTABLEKS                       R22 R5 K159 ["skirts"]
      452 MOVE                             R22 R9
      453 NEWTABLE                         R23 0 3
      455 LOADK                            R24 K160 [8722031289]
      456 LOADK                            R25 K161 [7193170137]
      457 LOADK                            R26 K162 [7193104827]
      458 SETLIST                          R23 R24 3 [1]
      460 CALL                             R22 1 1
      461 SETTABLEKS                       R22 R5 K163 ["shoes"]
      463 MOVE                             R22 R9
      464 MOVE                             R24 R3
      465 CALL                             R24 0 1
      466 JUMPIFNOT                        R24 ; [+11]
      467 NEWTABLE                         R23 0 6
      469 LOADK                            R24 K164 [90228244352161]
      470 LOADK                            R25 K165 [120397398547192]
      471 LOADK                            R26 K166 [93336361109642]
      472 LOADK                            R27 K167 [82477874967872]
      473 LOADK                            R28 K168 [130003039476849]
      474 LOADK                            R29 K169 [79754923827217]
      475 SETLIST                          R23 R24 6 [1]
      477 JUMP                             ; [+5]
      478 NEWTABLE                         R23 0 1
      480 LOADK                            R24 K170 [11572097774]
      481 SETLIST                          R23 R24 1 [1]
      483 CALL                             R22 1 1
      484 SETTABLEKS                       R22 R5 K171 ["eyebrows"]
      486 MOVE                             R22 R9
      487 MOVE                             R24 R3
      488 CALL                             R24 0 1
      489 JUMPIFNOT                        R24 ; [+11]
      490 NEWTABLE                         R23 0 6
      492 LOADK                            R24 K172 [87627278462719]
      493 LOADK                            R25 K173 [99788116228594]
      494 LOADK                            R26 K174 [113182821313646]
      495 LOADK                            R27 K175 [89610303708933]
      496 LOADK                            R28 K176 [111175479479447]
      497 LOADK                            R29 K177 [116154465905462]
      498 SETLIST                          R23 R24 6 [1]
      500 JUMP                             ; [+5]
      501 NEWTABLE                         R23 0 1
      503 LOADK                            R24 K178 [11572100557]
      504 SETLIST                          R23 R24 1 [1]
      506 CALL                             R22 1 1
      507 SETTABLEKS                       R22 R5 K179 ["eyelashes"]
      509 MOVE                             R22 R10
      510 NEWTABLE                         R23 0 10
      512 LOADK                            R24 K180 [124907916662625]
      513 LOADK                            R25 K181 [83680514027582]
      514 LOADK                            R26 K182 [131554744089786]
      515 LOADK                            R27 K183 [115110380254480]
      516 LOADK                            R28 K184 [102522092102710]
      517 LOADK                            R29 K185 [125810748592920]
      518 LOADK                            R30 K186 [96752799518977]
      519 LOADK                            R31 K187 [102586991723042]
      520 LOADK                            R32 K188 [77679141505947]
      521 LOADK                            R33 K189 [72252917405514]
      522 SETLIST                          R23 R24 10 [1]
      524 CALL                             R22 1 1
      525 SETTABLEKS                       R22 R5 K190 ["faceMakeup"]
      527 MOVE                             R22 R10
      528 NEWTABLE                         R23 0 6
      530 LOADK                            R24 K191 [91215258040985]
      531 LOADK                            R25 K192 [106860126788672]
      532 LOADK                            R26 K193 [116602463707612]
      533 LOADK                            R27 K194 [87427894313112]
      534 LOADK                            R28 K195 [130700043557379]
      535 LOADK                            R29 K196 [109566218185317]
      536 SETLIST                          R23 R24 6 [1]
      538 CALL                             R22 1 1
      539 SETTABLEKS                       R22 R5 K197 ["lipMakeup"]
      541 MOVE                             R22 R10
      542 NEWTABLE                         R23 0 6
      544 LOADK                            R24 K198 [128355658815589]
      545 LOADK                            R25 K199 [124390911016506]
      546 LOADK                            R26 K200 [115181363529368]
      547 LOADK                            R27 K201 [90010535482282]
      548 LOADK                            R28 K202 [130365390192045]
      549 LOADK                            R29 K203 [113020962926328]
      550 SETLIST                          R23 R24 6 [1]
      552 CALL                             R22 1 1
      553 SETTABLEKS                       R22 R5 K204 ["eyeMakeup"]
      555 MOVE                             R22 R11
      556 NEWTABLE                         R23 0 14
      558 LOADK                            R24 K205 [607785314]
      559 LOADK                            R25 K206 [144076358]
      560 LOADK                            R26 K207 [3670737444]
      561 LOADK                            R27 K208 [398633584]
      562 LOADK                            R28 K209 [382538059]
      563 LOADK                            R29 K210 [398635081]
      564 LOADK                            R30 K211 [398634295]
      565 LOADK                            R31 K212 [4047884939]
      566 LOADK                            R32 K213 [4047886060]
      567 LOADK                            R33 K214 [4047884046]
      568 LOADK                            R34 K215 [144076436]
      569 LOADK                            R35 K216 [382537702]
      570 LOADK                            R36 K217 [382537085]
      571 LOADK                            R37 K218 [382538295]
      572 SETLIST                          R23 R24 14 [1]
      574 CALL                             R22 1 1
      575 SETTABLEKS                       R22 R5 K219 ["classicShirts"]
      577 MOVE                             R22 R11
      578 NEWTABLE                         R23 0 3
      580 LOADK                            R24 K220 [1036727]
      581 LOADK                            R25 K221 [1031862]
      582 LOADK                            R26 K222 [1031864]
      583 SETLIST                          R23 R24 3 [1]
      585 CALL                             R22 1 1
      586 SETTABLEKS                       R22 R5 K223 ["classicTShirts"]
      588 MOVE                             R22 R11
      589 NEWTABLE                         R23 0 11
      591 LOADK                            R24 K224 [398633812]
      592 LOADK                            R25 K225 [398635338]
      593 LOADK                            R26 K226 [398634487]
      594 LOADK                            R27 K227 [144076760]
      595 LOADK                            R28 K228 [382538503]
      596 LOADK                            R29 K229 [382537950]
      597 LOADK                            R30 K230 [382537569]
      598 LOADK                            R31 K231 [382537806]
      599 LOADK                            R32 K232 [129458426]
      600 LOADK                            R33 K233 [129459077]
      601 LOADK                            R34 K234 [7231091126]
      602 SETLIST                          R23 R24 11 [1]
      604 CALL                             R22 1 1
      605 SETTABLEKS                       R22 R5 K235 ["classicPants"]
      607 MOVE                             R22 R2
      608 GETTABLEKS                       R23 R5 K30 ["hair"]
      610 GETTABLEKS                       R24 R5 K36 ["head"]
      612 GETTABLEKS                       R25 R5 K51 ["face"]
      614 GETTABLEKS                       R26 R5 K57 ["front"]
      616 GETTABLEKS                       R27 R5 K63 ["neck"]
      618 GETTABLEKS                       R28 R5 K84 ["shoulder"]
      620 GETTABLEKS                       R29 R5 K90 ["back"]
      622 GETTABLEKS                       R30 R5 K106 ["waist"]
      624 GETTABLEKS                       R31 R5 K125 ["shirts"]
      626 GETTABLEKS                       R32 R5 K128 ["tshirts"]
      628 GETTABLEKS                       R33 R5 K134 ["jackets"]
      630 GETTABLEKS                       R34 R5 K143 ["sweaters"]
      632 GETTABLEKS                       R35 R5 K149 ["pants"]
      634 GETTABLEKS                       R36 R5 K153 ["shorts"]
      636 GETTABLEKS                       R37 R5 K159 ["skirts"]
      638 GETTABLEKS                       R38 R5 K163 ["shoes"]
      640 GETTABLEKS                       R39 R5 K171 ["eyebrows"]
      642 GETTABLEKS                       R40 R5 K179 ["eyelashes"]
      644 GETTABLEKS                       R41 R5 K112 ["gearLeft"]
      646 GETTABLEKS                       R42 R5 K118 ["gearRight"]
      648 GETTABLEKS                       R43 R5 K190 ["faceMakeup"]
      650 GETTABLEKS                       R44 R5 K197 ["lipMakeup"]
      652 GETTABLEKS                       R45 R5 K204 ["eyeMakeup"]
      654 MOVE                             R47 R4
      655 CALL                             R47 0 1
      656 JUMPIFNOT                        R47 ; [+3]
      657 GETTABLEKS                       R46 R5 K219 ["classicShirts"]
      659 JUMP                             ; [+2]
      660 NEWTABLE                         R46 0 0
      662 MOVE                             R48 R4
      663 CALL                             R48 0 1
      664 JUMPIFNOT                        R48 ; [+3]
      665 GETTABLEKS                       R47 R5 K223 ["classicTShirts"]
      667 JUMP                             ; [+2]
      668 NEWTABLE                         R47 0 0
      670 MOVE                             R49 R4
      671 CALL                             R49 0 1
      672 JUMPIFNOT                        R49 ; [+3]
      673 GETTABLEKS                       R48 R5 K235 ["classicPants"]
      675 JUMP                             ; [+2]
      676 NEWTABLE                         R48 0 0
      678 CALL                             R22 26 1
      679 SETTABLEKS                       R22 R5 K236 ["allItems"]
      681 RETURN                           R5 1
