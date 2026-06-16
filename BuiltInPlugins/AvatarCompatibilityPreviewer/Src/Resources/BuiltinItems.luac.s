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
       48 MOVE                             R15 R11
       49 LOADK                            R16 K20 [11195420056]
       50 CALL                             R15 1 1
       51 LOADK                            R16 K21 ["layered"]
       52 SETTABLEKS                       R16 R15 K22 ["accessoryType"]
       54 MOVE                             R14 R15
       55 MOVE                             R15 R11
       56 LOADK                            R16 K23 [10966682388]
       57 CALL                             R15 1 1
       58 MOVE                             R16 R11
       59 LOADK                            R17 K24 [846803597]
       60 CALL                             R16 1 1
       61 MOVE                             R18 R11
       62 LOADK                            R19 K25 [9244114211]
       63 CALL                             R18 1 1
       64 LOADK                            R19 K21 ["layered"]
       65 SETTABLEKS                       R19 R18 K22 ["accessoryType"]
       67 MOVE                             R17 R18
       68 MOVE                             R19 R11
       69 LOADK                            R20 K26 [7193451306]
       70 CALL                             R19 1 1
       71 LOADK                            R20 K21 ["layered"]
       72 SETTABLEKS                       R20 R19 K22 ["accessoryType"]
       74 MOVE                             R18 R19
       75 MOVE                             R20 R11
       76 LOADK                            R21 K27 [7193386173]
       77 CALL                             R20 1 1
       78 LOADK                            R21 K21 ["layered"]
       79 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
       81 MOVE                             R19 R20
       82 MOVE                             R21 R11
       83 LOADK                            R22 K28 [7193452166]
       84 CALL                             R21 1 1
       85 LOADK                            R22 K21 ["layered"]
       86 SETTABLEKS                       R22 R21 K22 ["accessoryType"]
       88 MOVE                             R20 R21
       89 SETLIST                          R12 R13 8 [1]
       91 SETTABLEKS                       R12 R4 K29 ["hair"]
       93 MOVE                             R12 R5
       94 LOADK                            R13 K30 ["HatAttachment"]
       95 NEWTABLE                         R14 0 4
       97 LOADK                            R15 K31 [9111390490]
       98 LOADK                            R16 K32 [16018338042]
       99 LOADK                            R17 K33 [1744330435]
      100 LOADK                            R18 K34 [3757852497]
      101 SETLIST                          R14 R15 4 [1]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R4 K35 ["head"]
      106 LOADK                            R13 K36 ["FaceCenterAttachment"]
      107 NEWCLOSURE                       R12 P6
      108 CAPTURE                          VAL R13
      109 LOADK                            R14 K37 ["FaceFrontAttachment"]
      110 NEWCLOSURE                       R13 P6
      111 CAPTURE                          VAL R14
      112 NEWTABLE                         R14 0 12
      114 MOVE                             R15 R13
      115 LOADK                            R16 K38 [16640910727]
      116 CALL                             R15 1 1
      117 MOVE                             R16 R13
      118 LOADK                            R17 K39 [16648934240]
      119 CALL                             R16 1 1
      120 MOVE                             R17 R13
      121 LOADK                            R18 K40 [9992285857]
      122 CALL                             R17 1 1
      123 MOVE                             R18 R13
      124 LOADK                            R19 K41 [14179786408]
      125 CALL                             R18 1 1
      126 MOVE                             R20 R13
      127 LOADK                            R21 K42 [12794788453]
      128 CALL                             R20 1 1
      129 LOADK                            R21 K21 ["layered"]
      130 SETTABLEKS                       R21 R20 K22 ["accessoryType"]
      132 MOVE                             R19 R20
      133 MOVE                             R21 R13
      134 LOADK                            R22 K43 [12796340774]
      135 CALL                             R21 1 1
      136 LOADK                            R22 K21 ["layered"]
      137 SETTABLEKS                       R22 R21 K22 ["accessoryType"]
      139 MOVE                             R20 R21
      140 MOVE                             R22 R13
      141 LOADK                            R23 K44 [12794916165]
      142 CALL                             R22 1 1
      143 LOADK                            R23 K21 ["layered"]
      144 SETTABLEKS                       R23 R22 K22 ["accessoryType"]
      146 MOVE                             R21 R22
      147 MOVE                             R23 R13
      148 LOADK                            R24 K45 [12796163960]
      149 CALL                             R23 1 1
      150 LOADK                            R24 K21 ["layered"]
      151 SETTABLEKS                       R24 R23 K22 ["accessoryType"]
      153 MOVE                             R22 R23
      154 MOVE                             R23 R12
      155 LOADK                            R24 K46 [16648984941]
      156 CALL                             R23 1 1
      157 MOVE                             R24 R12
      158 LOADK                            R25 K47 [16649071525]
      159 CALL                             R24 1 1
      160 MOVE                             R25 R12
      161 LOADK                            R26 K48 [13538969595]
      162 CALL                             R25 1 1
      163 MOVE                             R26 R12
      164 LOADK                            R27 K49 [16648586095]
      165 CALL                             R26 1 -1
      166 SETLIST                          R14 R15 -1 [1]
      168 SETTABLEKS                       R14 R4 K50 ["face"]
      170 MOVE                             R14 R5
      171 LOADK                            R15 K51 ["BodyFrontAttachment"]
      172 NEWTABLE                         R16 0 4
      174 LOADK                            R17 K52 [16648690355]
      175 LOADK                            R18 K53 [16648652231]
      176 LOADK                            R19 K54 [16648706823]
      177 LOADK                            R20 K55 [16648698037]
      178 SETLIST                          R16 R17 4 [1]
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R4 K56 ["front"]
      183 MOVE                             R14 R5
      184 LOADK                            R15 K57 ["NeckAttachment"]
      185 NEWTABLE                         R16 0 4
      187 LOADK                            R17 K58 [16648958003]
      188 LOADK                            R18 K59 [16648625265]
      189 LOADK                            R19 K60 [3690490960]
      190 LOADK                            R20 K61 [15696295454]
      191 SETLIST                          R16 R17 4 [1]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R4 K62 ["neck"]
      196 LOADK                            R15 K63 ["LeftCollarAttachment"]
      197 NEWCLOSURE                       R14 P6
      198 CAPTURE                          VAL R15
      199 LOADK                            R16 K64 ["RightCollarAttachment"]
      200 NEWCLOSURE                       R15 P6
      201 CAPTURE                          VAL R16
      202 LOADK                            R17 K65 ["LeftShoulderAttachment"]
      203 NEWCLOSURE                       R16 P6
      204 CAPTURE                          VAL R17
      205 LOADK                            R18 K66 ["RightShoulderAttachment"]
      206 NEWCLOSURE                       R17 P6
      207 CAPTURE                          VAL R18
      208 NEWTABLE                         R18 0 16
      210 MOVE                             R19 R16
      211 LOADK                            R20 K67 [16648897492]
      212 CALL                             R19 1 1
      213 MOVE                             R20 R17
      214 LOADK                            R21 K68 [16648905400]
      215 CALL                             R20 1 1
      216 MOVE                             R21 R16
      217 LOADK                            R22 K69 [16648604510]
      218 CALL                             R21 1 1
      219 MOVE                             R22 R17
      220 LOADK                            R23 K70 [16648615805]
      221 CALL                             R22 1 1
      222 MOVE                             R23 R16
      223 LOADK                            R24 K71 [16649028183]
      224 CALL                             R23 1 1
      225 MOVE                             R24 R17
      226 LOADK                            R25 K72 [16649036767]
      227 CALL                             R24 1 1
      228 MOVE                             R25 R16
      229 LOADK                            R26 K73 [9175325868]
      230 CALL                             R25 1 1
      231 MOVE                             R26 R17
      232 LOADK                            R27 K74 [9175327271]
      233 CALL                             R26 1 1
      234 MOVE                             R27 R14
      235 LOADK                            R28 K75 [16648502798]
      236 CALL                             R27 1 1
      237 MOVE                             R28 R15
      238 LOADK                            R29 K76 [16648553830]
      239 CALL                             R28 1 1
      240 MOVE                             R29 R14
      241 LOADK                            R30 K77 [16648441318]
      242 CALL                             R29 1 1
      243 MOVE                             R30 R15
      244 LOADK                            R31 K78 [16648488869]
      245 CALL                             R30 1 1
      246 MOVE                             R31 R14
      247 LOADK                            R32 K79 [16648993618]
      248 CALL                             R31 1 1
      249 MOVE                             R32 R15
      250 LOADK                            R33 K80 [16649003855]
      251 CALL                             R32 1 1
      252 MOVE                             R33 R14
      253 LOADK                            R34 K81 [16648866296]
      254 CALL                             R33 1 1
      255 MOVE                             R34 R15
      256 LOADK                            R35 K82 [16648873760]
      257 CALL                             R34 1 -1
      258 SETLIST                          R18 R19 -1 [1]
      260 SETTABLEKS                       R18 R4 K83 ["shoulder"]
      262 MOVE                             R18 R5
      263 LOADK                            R19 K84 ["BodyBackAttachment"]
      264 NEWTABLE                         R20 0 4
      266 LOADK                            R21 K85 [9111378574]
      267 LOADK                            R22 K86 [11774181392]
      268 LOADK                            R23 K87 [10685856744]
      269 LOADK                            R24 K88 [9175323644]
      270 SETLIST                          R20 R21 4 [1]
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R4 K89 ["back"]
      275 LOADK                            R19 K90 ["WaistBackAttachment"]
      276 NEWCLOSURE                       R18 P6
      277 CAPTURE                          VAL R19
      278 LOADK                            R20 K91 ["WaistCenterAttachment"]
      279 NEWCLOSURE                       R19 P6
      280 CAPTURE                          VAL R20
      281 LOADK                            R21 K92 ["WaistFrontAttachment"]
      282 NEWCLOSURE                       R20 P6
      283 CAPTURE                          VAL R21
      284 NEWTABLE                         R21 0 12
      286 MOVE                             R22 R20
      287 LOADK                            R23 K93 [16648852016]
      288 CALL                             R22 1 1
      289 MOVE                             R23 R20
      290 LOADK                            R24 K94 [16648681897]
      291 CALL                             R23 1 1
      292 MOVE                             R24 R20
      293 LOADK                            R25 K95 [7065897530]
      294 CALL                             R24 1 1
      295 MOVE                             R25 R20
      296 LOADK                            R26 K96 [6494274794]
      297 CALL                             R25 1 1
      298 MOVE                             R26 R19
      299 LOADK                            R27 K97 [16648672949]
      300 CALL                             R26 1 1
      301 MOVE                             R27 R19
      302 LOADK                            R28 K98 [16649078388]
      303 CALL                             R27 1 1
      304 MOVE                             R28 R19
      305 LOADK                            R29 K99 [8697885688]
      306 CALL                             R28 1 1
      307 MOVE                             R29 R19
      308 LOADK                            R30 K100 [3230476122]
      309 CALL                             R29 1 1
      310 MOVE                             R30 R18
      311 LOADK                            R31 K101 [10616839810]
      312 CALL                             R30 1 1
      313 MOVE                             R31 R18
      314 LOADK                            R32 K102 [13902900757]
      315 CALL                             R31 1 1
      316 MOVE                             R32 R18
      317 LOADK                            R33 K103 [13207223896]
      318 CALL                             R32 1 1
      319 MOVE                             R33 R18
      320 LOADK                            R34 K104 [4707869391]
      321 CALL                             R33 1 -1
      322 SETLIST                          R21 R22 -1 [1]
      324 SETTABLEKS                       R21 R4 K105 ["waist"]
      326 MOVE                             R21 R5
      327 LOADK                            R22 K106 ["LeftGripAttachment"]
      328 NEWTABLE                         R23 0 4
      330 LOADK                            R24 K107 [16648133530]
      331 LOADK                            R25 K108 [16649013455]
      332 LOADK                            R26 K109 [16649045008]
      333 LOADK                            R27 K110 [16648718579]
      334 SETLIST                          R23 R24 4 [1]
      336 CALL                             R21 2 1
      337 SETTABLEKS                       R21 R4 K111 ["gearLeft"]
      339 MOVE                             R21 R5
      340 LOADK                            R22 K112 ["RightGripAttachment"]
      341 NEWTABLE                         R23 0 4
      343 LOADK                            R24 K113 [16648471753]
      344 LOADK                            R25 K114 [16649019530]
      345 LOADK                            R26 K115 [16649053805]
      346 LOADK                            R27 K116 [16648843454]
      347 SETLIST                          R23 R24 4 [1]
      349 CALL                             R21 2 1
      350 SETTABLEKS                       R21 R4 K117 ["gearRight"]
      352 MOVE                             R21 R8
      353 NEWTABLE                         R22 0 6
      355 LOADK                            R23 K118 [7178736794]
      356 LOADK                            R24 K119 [7178735702]
      357 LOADK                            R25 K120 [6984729814]
      358 LOADK                            R26 K121 [7178740556]
      359 LOADK                            R27 K122 [9620950227]
      360 LOADK                            R28 K123 [9620976296]
      361 SETLIST                          R22 R23 6 [1]
      363 CALL                             R21 1 1
      364 SETTABLEKS                       R21 R4 K124 ["shirts"]
      366 MOVE                             R21 R8
      367 NEWTABLE                         R22 0 3
      369 LOADK                            R23 K125 [9112474888]
      370 LOADK                            R24 K118 [7178736794]
      371 LOADK                            R25 K126 [7178737816]
      372 SETLIST                          R22 R23 3 [1]
      374 CALL                             R21 1 1
      375 SETTABLEKS                       R21 R4 K127 ["tshirts"]
      377 MOVE                             R21 R8
      378 NEWTABLE                         R22 0 5
      380 LOADK                            R23 K128 [6984765766]
      381 LOADK                            R24 K129 [6984767443]
      382 LOADK                            R25 K130 [7272485361]
      383 LOADK                            R26 K131 [7192535654]
      384 LOADK                            R27 K132 [7192544729]
      385 SETLIST                          R22 R23 5 [1]
      387 CALL                             R21 1 1
      388 SETTABLEKS                       R21 R4 K133 ["jackets"]
      390 MOVE                             R21 R8
      391 NEWTABLE                         R22 0 8
      393 LOADK                            R23 K134 [9240758221]
      394 LOADK                            R24 K135 [9913119150]
      395 LOADK                            R25 K136 [9913110927]
      396 LOADK                            R26 K137 [9174379982]
      397 LOADK                            R27 K138 [6984769289]
      398 LOADK                            R28 K139 [6984771334]
      399 LOADK                            R29 K140 [9240757332]
      400 LOADK                            R30 K141 [9274353324]
      401 SETLIST                          R22 R23 8 [1]
      403 CALL                             R21 1 1
      404 SETTABLEKS                       R21 R4 K142 ["sweaters"]
      406 MOVE                             R21 R8
      407 NEWTABLE                         R22 0 5
      409 LOADK                            R23 K143 [6984763785]
      410 LOADK                            R24 K144 [6984740059]
      411 LOADK                            R25 K145 [7192673981]
      412 LOADK                            R26 K146 [7192681239]
      413 LOADK                            R27 K147 [7192679765]
      414 SETLIST                          R22 R23 5 [1]
      416 CALL                             R21 1 1
      417 SETTABLEKS                       R21 R4 K148 ["pants"]
      419 MOVE                             R21 R8
      420 NEWTABLE                         R22 0 3
      422 LOADK                            R23 K149 [6984773235]
      423 LOADK                            R24 K150 [7192683061]
      424 LOADK                            R25 K151 [7192685245]
      425 SETLIST                          R22 R23 3 [1]
      427 CALL                             R21 1 1
      428 SETTABLEKS                       R21 R4 K152 ["shorts"]
      430 MOVE                             R21 R8
      431 NEWTABLE                         R22 0 5
      433 LOADK                            R23 K153 [7192691582]
      434 LOADK                            R24 K154 [7192690731]
      435 LOADK                            R25 K155 [9284466791]
      436 LOADK                            R26 K156 [10278865927]
      437 LOADK                            R27 K157 [7192695838]
      438 SETLIST                          R22 R23 5 [1]
      440 CALL                             R21 1 1
      441 SETTABLEKS                       R21 R4 K158 ["skirts"]
      443 MOVE                             R21 R8
      444 NEWTABLE                         R22 0 3
      446 LOADK                            R23 K159 [8722031289]
      447 LOADK                            R24 K160 [7193170137]
      448 LOADK                            R25 K161 [7193104827]
      449 SETLIST                          R22 R23 3 [1]
      451 CALL                             R21 1 1
      452 SETTABLEKS                       R21 R4 K162 ["shoes"]
      454 MOVE                             R21 R8
      455 NEWTABLE                         R22 0 6
      457 LOADK                            R23 K163 [90228244352161]
      458 LOADK                            R24 K164 [120397398547192]
      459 LOADK                            R25 K165 [93336361109642]
      460 LOADK                            R26 K166 [82477874967872]
      461 LOADK                            R27 K167 [130003039476849]
      462 LOADK                            R28 K168 [79754923827217]
      463 SETLIST                          R22 R23 6 [1]
      465 CALL                             R21 1 1
      466 SETTABLEKS                       R21 R4 K169 ["eyebrows"]
      468 MOVE                             R21 R8
      469 NEWTABLE                         R22 0 6
      471 LOADK                            R23 K170 [87627278462719]
      472 LOADK                            R24 K171 [99788116228594]
      473 LOADK                            R25 K172 [113182821313646]
      474 LOADK                            R26 K173 [89610303708933]
      475 LOADK                            R27 K174 [111175479479447]
      476 LOADK                            R28 K175 [116154465905462]
      477 SETLIST                          R22 R23 6 [1]
      479 CALL                             R21 1 1
      480 SETTABLEKS                       R21 R4 K176 ["eyelashes"]
      482 MOVE                             R21 R9
      483 NEWTABLE                         R22 0 10
      485 LOADK                            R23 K177 [124907916662625]
      486 LOADK                            R24 K178 [83680514027582]
      487 LOADK                            R25 K179 [131554744089786]
      488 LOADK                            R26 K180 [115110380254480]
      489 LOADK                            R27 K181 [102522092102710]
      490 LOADK                            R28 K182 [125810748592920]
      491 LOADK                            R29 K183 [96752799518977]
      492 LOADK                            R30 K184 [102586991723042]
      493 LOADK                            R31 K185 [77679141505947]
      494 LOADK                            R32 K186 [72252917405514]
      495 SETLIST                          R22 R23 10 [1]
      497 CALL                             R21 1 1
      498 SETTABLEKS                       R21 R4 K187 ["faceMakeup"]
      500 MOVE                             R21 R9
      501 NEWTABLE                         R22 0 6
      503 LOADK                            R23 K188 [91215258040985]
      504 LOADK                            R24 K189 [106860126788672]
      505 LOADK                            R25 K190 [116602463707612]
      506 LOADK                            R26 K191 [87427894313112]
      507 LOADK                            R27 K192 [130700043557379]
      508 LOADK                            R28 K193 [109566218185317]
      509 SETLIST                          R22 R23 6 [1]
      511 CALL                             R21 1 1
      512 SETTABLEKS                       R21 R4 K194 ["lipMakeup"]
      514 MOVE                             R21 R9
      515 NEWTABLE                         R22 0 6
      517 LOADK                            R23 K195 [128355658815589]
      518 LOADK                            R24 K196 [124390911016506]
      519 LOADK                            R25 K197 [115181363529368]
      520 LOADK                            R26 K198 [90010535482282]
      521 LOADK                            R27 K199 [130365390192045]
      522 LOADK                            R28 K200 [113020962926328]
      523 SETLIST                          R22 R23 6 [1]
      525 CALL                             R21 1 1
      526 SETTABLEKS                       R21 R4 K201 ["eyeMakeup"]
      528 MOVE                             R21 R10
      529 NEWTABLE                         R22 0 14
      531 LOADK                            R23 K202 [607785314]
      532 LOADK                            R24 K203 [144076358]
      533 LOADK                            R25 K204 [3670737444]
      534 LOADK                            R26 K205 [398633584]
      535 LOADK                            R27 K206 [382538059]
      536 LOADK                            R28 K207 [398635081]
      537 LOADK                            R29 K208 [398634295]
      538 LOADK                            R30 K209 [4047884939]
      539 LOADK                            R31 K210 [4047886060]
      540 LOADK                            R32 K211 [4047884046]
      541 LOADK                            R33 K212 [144076436]
      542 LOADK                            R34 K213 [382537702]
      543 LOADK                            R35 K214 [382537085]
      544 LOADK                            R36 K215 [382538295]
      545 SETLIST                          R22 R23 14 [1]
      547 CALL                             R21 1 1
      548 SETTABLEKS                       R21 R4 K216 ["classicShirts"]
      550 MOVE                             R21 R10
      551 NEWTABLE                         R22 0 3
      553 LOADK                            R23 K217 [1036727]
      554 LOADK                            R24 K218 [1031862]
      555 LOADK                            R25 K219 [1031864]
      556 SETLIST                          R22 R23 3 [1]
      558 CALL                             R21 1 1
      559 SETTABLEKS                       R21 R4 K220 ["classicTShirts"]
      561 MOVE                             R21 R10
      562 NEWTABLE                         R22 0 11
      564 LOADK                            R23 K221 [398633812]
      565 LOADK                            R24 K222 [398635338]
      566 LOADK                            R25 K223 [398634487]
      567 LOADK                            R26 K224 [144076760]
      568 LOADK                            R27 K225 [382538503]
      569 LOADK                            R28 K226 [382537950]
      570 LOADK                            R29 K227 [382537569]
      571 LOADK                            R30 K228 [382537806]
      572 LOADK                            R31 K229 [129458426]
      573 LOADK                            R32 K230 [129459077]
      574 LOADK                            R33 K231 [7231091126]
      575 SETLIST                          R22 R23 11 [1]
      577 CALL                             R21 1 1
      578 SETTABLEKS                       R21 R4 K232 ["classicPants"]
      580 MOVE                             R21 R2
      581 GETTABLEKS                       R22 R4 K29 ["hair"]
      583 GETTABLEKS                       R23 R4 K35 ["head"]
      585 GETTABLEKS                       R24 R4 K50 ["face"]
      587 GETTABLEKS                       R25 R4 K56 ["front"]
      589 GETTABLEKS                       R26 R4 K62 ["neck"]
      591 GETTABLEKS                       R27 R4 K83 ["shoulder"]
      593 GETTABLEKS                       R28 R4 K89 ["back"]
      595 GETTABLEKS                       R29 R4 K105 ["waist"]
      597 GETTABLEKS                       R30 R4 K124 ["shirts"]
      599 GETTABLEKS                       R31 R4 K127 ["tshirts"]
      601 GETTABLEKS                       R32 R4 K133 ["jackets"]
      603 GETTABLEKS                       R33 R4 K142 ["sweaters"]
      605 GETTABLEKS                       R34 R4 K148 ["pants"]
      607 GETTABLEKS                       R35 R4 K152 ["shorts"]
      609 GETTABLEKS                       R36 R4 K158 ["skirts"]
      611 GETTABLEKS                       R37 R4 K162 ["shoes"]
      613 GETTABLEKS                       R38 R4 K169 ["eyebrows"]
      615 GETTABLEKS                       R39 R4 K176 ["eyelashes"]
      617 GETTABLEKS                       R40 R4 K111 ["gearLeft"]
      619 GETTABLEKS                       R41 R4 K117 ["gearRight"]
      621 GETTABLEKS                       R42 R4 K187 ["faceMakeup"]
      623 GETTABLEKS                       R43 R4 K194 ["lipMakeup"]
      625 GETTABLEKS                       R44 R4 K201 ["eyeMakeup"]
      627 MOVE                             R46 R3
      628 CALL                             R46 0 1
      629 JUMPIFNOT                        R46 ; [+3]
      630 GETTABLEKS                       R45 R4 K216 ["classicShirts"]
      632 JUMP                             ; [+2]
      633 NEWTABLE                         R45 0 0
      635 MOVE                             R47 R3
      636 CALL                             R47 0 1
      637 JUMPIFNOT                        R47 ; [+3]
      638 GETTABLEKS                       R46 R4 K220 ["classicTShirts"]
      640 JUMP                             ; [+2]
      641 NEWTABLE                         R46 0 0
      643 MOVE                             R48 R3
      644 CALL                             R48 0 1
      645 JUMPIFNOT                        R48 ; [+3]
      646 GETTABLEKS                       R47 R4 K232 ["classicPants"]
      648 JUMP                             ; [+2]
      649 NEWTABLE                         R47 0 0
      651 CALL                             R21 26 1
      652 SETTABLEKS                       R21 R4 K233 ["allItems"]
      654 RETURN                           R4 1
