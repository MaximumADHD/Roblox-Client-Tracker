PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R1 K0 ["index"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+25]
        6 GETTABLEKS                       R4 R0 K1 ["key"]
        8 LENGTH                           R3 R4
        9 GETTABLEKS                       R5 R1 K1 ["key"]
       11 LENGTH                           R4 R5
       12 SUB                              R2 R3 R4
       13 JUMPIFNOTEQKN                    R2 K2 [0] ; [+10]
       15 GETTABLEKS                       R4 R0 K1 ["key"]
       17 GETTABLEKS                       R5 R1 K1 ["key"]
       19 JUMPIFLT                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 LOADN                            R4 0
       25 JUMPIFLT                         R2 R4 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 RETURN                           R3 1
       30 GETTABLEKS                       R3 R0 K0 ["index"]
       32 GETTABLEKS                       R4 R1 K0 ["index"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+5]
        2 JUMPIFEQ                         R0 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K0 ["key"]
        9 GETTABLEKS                       R3 R1 K0 ["key"]
       11 JUMPIFEQ                         R2 R3 ; [+3]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K1 ["ShallowEqual"]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["key"]
        3 GETTABLEKS                       R4 R1 K0 ["key"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+43]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["index"]
       10 GETTABLEKS                       R4 R1 K1 ["index"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+36]
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K2 ["isStale"]
       17 GETTABLEKS                       R4 R1 K2 ["isStale"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+29]
       21 LOADB                            R2 0
       22 GETTABLEKS                       R3 R0 K3 ["isActive"]
       24 GETTABLEKS                       R4 R1 K3 ["isActive"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+22]
       28 JUMPIFNOT                        R0 ; [+1]
       29 JUMPIF                           R1 ; [+5]
       30 JUMPIFEQ                         R0 R1 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1
       35 GETTABLEKS                       R3 R0 K0 ["key"]
       37 GETTABLEKS                       R4 R1 K0 ["key"]
       39 JUMPIFEQ                         R3 R4 ; [+3]
       41 LOADB                            R2 0
       42 RETURN                           R2 1
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R2 R3 K4 ["ShallowEqual"]
       46 MOVE                             R3 R0
       47 MOVE                             R4 R1
       48 CALL                             R2 2 1
       49 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["key"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 ORK                              R2 R3 K1 []
        5 JUMPIFNOT                        R2 ; [+58]
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R2 K0 ["key"]
        9 GETTABLEKS                       R5 R0 K0 ["key"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+43]
       13 LOADB                            R3 0
       14 GETTABLEKS                       R4 R2 K2 ["index"]
       16 GETTABLEKS                       R5 R0 K2 ["index"]
       18 JUMPIFNOTEQ                      R4 R5 ; [+36]
       20 LOADB                            R3 0
       21 GETTABLEKS                       R4 R2 K3 ["isStale"]
       23 GETTABLEKS                       R5 R0 K3 ["isStale"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+29]
       27 LOADB                            R3 0
       28 GETTABLEKS                       R4 R2 K4 ["isActive"]
       30 GETTABLEKS                       R5 R0 K4 ["isActive"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+22]
       34 JUMPIFNOT                        R2 ; [+1]
       35 JUMPIF                           R0 ; [+5]
       36 JUMPIFEQ                         R2 R0 ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 JUMP                             ; [+14]
       41 GETTABLEKS                       R4 R2 K0 ["key"]
       43 GETTABLEKS                       R5 R0 K0 ["key"]
       45 JUMPIFEQ                         R4 R5 ; [+3]
       47 LOADB                            R3 0
       48 JUMP                             ; [+6]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R3 R4 K5 ["ShallowEqual"]
       52 MOVE                             R4 R2
       53 MOVE                             R5 R0
       54 CALL                             R3 2 1
       55 JUMPIFNOT                        R3 ; [+8]
       56 GETUPVAL                         R4 2
       57 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       59 MOVE                             R5 R2
       60 GETIMPORT                        R3 K8 [table.insert]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R4 2
       65 FASTCALL2                        TABLE_INSERT R4 R0 ; [+4]
       67 MOVE                             R5 R0
       68 GETIMPORT                        R3 K8 [table.insert]
       70 CALL                             R3 2 0
       71 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R4 R0
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 GETTABLEKS                       R9 R8 K0 ["route"]
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETTABLEKS                       R11 R9 K1 ["key"]
        9 GETTABLE                         R10 R3 R11
       10 JUMPIFNOT                        R10 ; [+5]
       11 GETTABLEKS                       R11 R9 K1 ["key"]
       13 GETTABLE                         R10 R3 R11
       14 SETTABLEKS                       R10 R8 K2 ["descriptor"]
       16 FORGLOOP                         R4 2 ; [-13]
       18 JUMPIFNOTEQ                      R2 R1 ; [+2]
       20 RETURN                           R0 1
       21 NEWTABLE                         R4 0 0
       23 NEWTABLE                         R5 0 0
       25 NEWTABLE                         R6 0 0
       27 MOVE                             R7 R0
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 GETTABLEKS                       R12 R11 K1 ["key"]
       33 GETTABLEKS                       R13 R11 K3 ["isStale"]
       35 JUMPIFNOT                        R13 ; [+1]
       36 SETTABLE                         R11 R6 R12
       37 SETTABLE                         R11 R4 R12
       38 FORGLOOP                         R7 2 ; [-8]
       40 NEWTABLE                         R7 0 0
       42 GETTABLEKS                       R8 R1 K4 ["routes"]
       44 LENGTH                           R9 R8
       45 GETTABLEKS                       R10 R1 K5 ["index"]
       47 JUMPIFNOTLT                      R10 R9 ; [+14]
       49 GETIMPORT                        R10 K7 [print]
       51 LOADK                            R11 K8 ["Warning: StackRouter provided invalid state. Index should always be the top route"]
       52 CALL                             R10 1 0
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R10 R11 K9 ["slice"]
       56 MOVE                             R11 R8
       57 LOADN                            R12 1
       58 GETTABLEKS                       R13 R1 K5 ["index"]
       60 CALL                             R10 3 1
       61 MOVE                             R8 R10
       62 MOVE                             R10 R8
       63 LOADNIL                          R11
       64 LOADNIL                          R12
       65 FORGPREP                         R10
       66 LOADK                            R16 K10 ["scene_"]
       67 GETTABLEKS                       R17 R14 K1 ["key"]
       69 CONCAT                           R15 R16 R17
       70 JUMPIFNOT                        R3 ; [+4]
       71 GETTABLEKS                       R17 R14 K1 ["key"]
       73 GETTABLE                         R16 R3 R17
       74 JUMP                             ; [+1]
       75 LOADNIL                          R16
       76 DUPTABLE                         R17 K12 [{"index", "isActive", "isStale", "key", "route", "descriptor"}]
       77 SETTABLEKS                       R13 R17 K5 ["index"]
       79 LOADB                            R18 0
       80 SETTABLEKS                       R18 R17 K11 ["isActive"]
       82 LOADB                            R18 0
       83 SETTABLEKS                       R18 R17 K3 ["isStale"]
       85 SETTABLEKS                       R15 R17 K1 ["key"]
       87 SETTABLEKS                       R14 R17 K0 ["route"]
       89 SETTABLEKS                       R16 R17 K2 ["descriptor"]
       91 GETUPVAL                         R18 1
       92 GETTABLE                         R20 R7 R15
       93 NOT                              R19 R20
       94 LOADK                            R20 K13 ["navigation.state.routes[%d].key '%s' conflicts with another route!"]
       95 MOVE                             R21 R13
       96 MOVE                             R22 R15
       97 CALL                             R18 4 0
       98 LOADB                            R18 1
       99 SETTABLE                         R18 R7 R15
      100 GETTABLE                         R18 R6 R15
      101 JUMPIFNOT                        R18 ; [+2]
      102 LOADNIL                          R18
      103 SETTABLE                         R18 R6 R15
      104 SETTABLE                         R17 R5 R15
      105 FORGLOOP                         R10 2 ; [-40]
      107 JUMPIFNOT                        R2 ; [+72]
      108 GETTABLEKS                       R10 R2 K4 ["routes"]
      110 LENGTH                           R11 R10
      111 GETTABLEKS                       R12 R2 K5 ["index"]
      113 JUMPIFNOTLT                      R12 R11 ; [+14]
      115 GETIMPORT                        R12 K7 [print]
      117 LOADK                            R13 K14 ["StackRouter provided invalid state. Index should always be the top route."]
      118 CALL                             R12 1 0
      119 GETUPVAL                         R13 0
      120 GETTABLEKS                       R12 R13 K9 ["slice"]
      122 MOVE                             R13 R10
      123 LOADN                            R14 1
      124 GETTABLEKS                       R15 R2 K5 ["index"]
      126 CALL                             R12 3 1
      127 MOVE                             R10 R12
      128 MOVE                             R12 R10
      129 LOADNIL                          R13
      130 LOADNIL                          R14
      131 FORGPREP                         R12
      132 LOADK                            R18 K10 ["scene_"]
      133 GETTABLEKS                       R19 R16 K1 ["key"]
      135 CONCAT                           R17 R18 R19
      136 GETTABLE                         R18 R5 R17
      137 JUMPIF                           R18 ; [+40]
      138 LOADNIL                          R18
      139 MOVE                             R19 R0
      140 LOADNIL                          R20
      141 LOADNIL                          R21
      142 FORGPREP                         R19
      143 GETTABLEKS                       R25 R23 K0 ["route"]
      145 GETTABLEKS                       R24 R25 K1 ["key"]
      147 GETTABLEKS                       R25 R16 K1 ["key"]
      149 JUMPIFNOTEQ                      R24 R25 ; [+3]
      151 MOVE                             R18 R23
      152 JUMP                             ; [+2]
      153 FORGLOOP                         R19 2 ; [-11]
      155 GETTABLEKS                       R20 R16 K1 ["key"]
      157 GETTABLE                         R19 R3 R20
      158 JUMPIFNOT                        R18 ; [+2]
      159 GETTABLEKS                       R19 R18 K2 ["descriptor"]
      161 JUMPIFNOT                        R19 ; [+16]
      162 DUPTABLE                         R20 K12 [{"index", "isActive", "isStale", "key", "route", "descriptor"}]
      163 SETTABLEKS                       R15 R20 K5 ["index"]
      165 LOADB                            R21 0
      166 SETTABLEKS                       R21 R20 K11 ["isActive"]
      168 LOADB                            R21 1
      169 SETTABLEKS                       R21 R20 K3 ["isStale"]
      171 SETTABLEKS                       R17 R20 K1 ["key"]
      173 SETTABLEKS                       R16 R20 K0 ["route"]
      175 SETTABLEKS                       R19 R20 K2 ["descriptor"]
      177 SETTABLE                         R20 R6 R17
      178 FORGLOOP                         R12 2 ; [-47]
      180 NEWTABLE                         R10 0 0
      182 NEWCLOSURE                       R11 P0
      183 CAPTURE                          VAL R4
      184 CAPTURE                          UPVAL U2
      185 CAPTURE                          VAL R10
      186 MOVE                             R12 R6
      187 LOADNIL                          R13
      188 LOADNIL                          R14
      189 FORGPREP                         R12
      190 GETTABLEKS                       R17 R16 K1 ["key"]
      192 GETTABLE                         R19 R4 R17
      193 ORK                              R18 R19 K15 []
      194 JUMPIFNOT                        R18 ; [+58]
      195 LOADB                            R19 0
      196 GETTABLEKS                       R20 R18 K1 ["key"]
      198 GETTABLEKS                       R21 R16 K1 ["key"]
      200 JUMPIFNOTEQ                      R20 R21 ; [+43]
      202 LOADB                            R19 0
      203 GETTABLEKS                       R20 R18 K5 ["index"]
      205 GETTABLEKS                       R21 R16 K5 ["index"]
      207 JUMPIFNOTEQ                      R20 R21 ; [+36]
      209 LOADB                            R19 0
      210 GETTABLEKS                       R20 R18 K3 ["isStale"]
      212 GETTABLEKS                       R21 R16 K3 ["isStale"]
      214 JUMPIFNOTEQ                      R20 R21 ; [+29]
      216 LOADB                            R19 0
      217 GETTABLEKS                       R20 R18 K11 ["isActive"]
      219 GETTABLEKS                       R21 R16 K11 ["isActive"]
      221 JUMPIFNOTEQ                      R20 R21 ; [+22]
      223 JUMPIFNOT                        R18 ; [+1]
      224 JUMPIF                           R16 ; [+5]
      225 JUMPIFEQ                         R18 R16 ; [+2]
      227 LOADB                            R19 0 +1
      228 LOADB                            R19 1
      229 JUMP                             ; [+14]
      230 GETTABLEKS                       R20 R18 K1 ["key"]
      232 GETTABLEKS                       R21 R16 K1 ["key"]
      234 JUMPIFEQ                         R20 R21 ; [+3]
      236 LOADB                            R19 0
      237 JUMP                             ; [+6]
      238 GETUPVAL                         R20 2
      239 GETTABLEKS                       R19 R20 K16 ["ShallowEqual"]
      241 MOVE                             R20 R18
      242 MOVE                             R21 R16
      243 CALL                             R19 2 1
      244 JUMPIFNOT                        R19 ; [+8]
      245 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      247 MOVE                             R20 R10
      248 MOVE                             R21 R18
      249 GETIMPORT                        R19 K19 [table.insert]
      251 CALL                             R19 2 0
      252 JUMP                             ; [+7]
      253 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      255 MOVE                             R20 R10
      256 MOVE                             R21 R16
      257 GETIMPORT                        R19 K19 [table.insert]
      259 CALL                             R19 2 0
      260 FORGLOOP                         R12 2 ; [-71]
      262 MOVE                             R12 R5
      263 LOADNIL                          R13
      264 LOADNIL                          R14
      265 FORGPREP                         R12
      266 GETTABLEKS                       R17 R16 K1 ["key"]
      268 GETTABLE                         R19 R4 R17
      269 ORK                              R18 R19 K15 []
      270 JUMPIFNOT                        R18 ; [+58]
      271 LOADB                            R19 0
      272 GETTABLEKS                       R20 R18 K1 ["key"]
      274 GETTABLEKS                       R21 R16 K1 ["key"]
      276 JUMPIFNOTEQ                      R20 R21 ; [+43]
      278 LOADB                            R19 0
      279 GETTABLEKS                       R20 R18 K5 ["index"]
      281 GETTABLEKS                       R21 R16 K5 ["index"]
      283 JUMPIFNOTEQ                      R20 R21 ; [+36]
      285 LOADB                            R19 0
      286 GETTABLEKS                       R20 R18 K3 ["isStale"]
      288 GETTABLEKS                       R21 R16 K3 ["isStale"]
      290 JUMPIFNOTEQ                      R20 R21 ; [+29]
      292 LOADB                            R19 0
      293 GETTABLEKS                       R20 R18 K11 ["isActive"]
      295 GETTABLEKS                       R21 R16 K11 ["isActive"]
      297 JUMPIFNOTEQ                      R20 R21 ; [+22]
      299 JUMPIFNOT                        R18 ; [+1]
      300 JUMPIF                           R16 ; [+5]
      301 JUMPIFEQ                         R18 R16 ; [+2]
      303 LOADB                            R19 0 +1
      304 LOADB                            R19 1
      305 JUMP                             ; [+14]
      306 GETTABLEKS                       R20 R18 K1 ["key"]
      308 GETTABLEKS                       R21 R16 K1 ["key"]
      310 JUMPIFEQ                         R20 R21 ; [+3]
      312 LOADB                            R19 0
      313 JUMP                             ; [+6]
      314 GETUPVAL                         R20 2
      315 GETTABLEKS                       R19 R20 K16 ["ShallowEqual"]
      317 MOVE                             R20 R18
      318 MOVE                             R21 R16
      319 CALL                             R19 2 1
      320 JUMPIFNOT                        R19 ; [+8]
      321 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      323 MOVE                             R20 R10
      324 MOVE                             R21 R18
      325 GETIMPORT                        R19 K19 [table.insert]
      327 CALL                             R19 2 0
      328 JUMP                             ; [+7]
      329 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      331 MOVE                             R20 R10
      332 MOVE                             R21 R16
      333 GETIMPORT                        R19 K19 [table.insert]
      335 CALL                             R19 2 0
      336 FORGLOOP                         R12 2 ; [-71]
      338 GETIMPORT                        R12 K21 [table.sort]
      340 MOVE                             R13 R10
      341 GETUPVAL                         R14 3
      342 CALL                             R12 2 0
      343 LOADN                            R12 0
      344 MOVE                             R13 R10
      345 LOADNIL                          R14
      346 LOADNIL                          R15
      347 FORGPREP                         R13
      348 GETTABLEKS                       R19 R17 K3 ["isStale"]
      350 NOT                              R18 R19
      351 JUMPIFNOT                        R18 ; [+8]
      352 GETTABLEKS                       R19 R17 K5 ["index"]
      354 GETTABLEKS                       R20 R1 K5 ["index"]
      356 JUMPIFEQ                         R19 R20 ; [+2]
      358 LOADB                            R18 0 +1
      359 LOADB                            R18 1
      360 GETTABLEKS                       R19 R17 K11 ["isActive"]
      362 JUMPIFEQ                         R18 R19 ; [+13]
      364 GETUPVAL                         R20 4
      365 GETTABLEKS                       R19 R20 K22 ["assign"]
      367 GETIMPORT                        R20 K24 [table.clone]
      369 MOVE                             R21 R17
      370 CALL                             R20 1 1
      371 DUPTABLE                         R21 K25 [{"isActive"}]
      372 SETTABLEKS                       R18 R21 K11 ["isActive"]
      374 CALL                             R19 2 1
      375 SETTABLE                         R19 R10 R16
      376 JUMPIFNOT                        R18 ; [+1]
      377 ADDK                             R12 R12 K26 [1]
      378 FORGLOOP                         R13 2 ; [-31]
      380 GETUPVAL                         R13 1
      381 JUMPIFEQKN                       R12 K26 [1] ; [+2]
      383 LOADB                            R14 0 +1
      384 LOADB                            R14 1
      385 LOADK                            R15 K27 ["There should only be one active scene, not %d"]
      386 MOVE                             R16 R12
      387 CALL                             R13 3 0
      388 LENGTH                           R13 R10
      389 LENGTH                           R14 R0
      390 JUMPIFEQ                         R13 R14 ; [+2]
      392 RETURN                           R10 1
      393 MOVE                             R13 R10
      394 LOADNIL                          R14
      395 LOADNIL                          R15
      396 FORGPREP                         R13
      397 GETTABLE                         R19 R0 R16
      398 LOADB                            R18 0
      399 GETTABLEKS                       R20 R19 K1 ["key"]
      401 GETTABLEKS                       R21 R17 K1 ["key"]
      403 JUMPIFNOTEQ                      R20 R21 ; [+44]
      405 LOADB                            R18 0
      406 GETTABLEKS                       R20 R19 K5 ["index"]
      408 GETTABLEKS                       R21 R17 K5 ["index"]
      410 JUMPIFNOTEQ                      R20 R21 ; [+37]
      412 LOADB                            R18 0
      413 GETTABLEKS                       R20 R19 K3 ["isStale"]
      415 GETTABLEKS                       R21 R17 K3 ["isStale"]
      417 JUMPIFNOTEQ                      R20 R21 ; [+30]
      419 LOADB                            R18 0
      420 GETTABLEKS                       R20 R19 K11 ["isActive"]
      422 GETTABLEKS                       R21 R17 K11 ["isActive"]
      424 JUMPIFNOTEQ                      R20 R21 ; [+23]
      426 JUMPIFNOT                        R19 ; [+1]
      427 JUMPIF                           R17 ; [+5]
      428 JUMPIFEQ                         R19 R17 ; [+2]
      430 LOADB                            R18 0 +1
      431 LOADB                            R18 1
      432 JUMP                             ; [+15]
      433 GETTABLEKS                       R20 R19 K1 ["key"]
      435 GETTABLEKS                       R21 R17 K1 ["key"]
      437 JUMPIFEQ                         R20 R21 ; [+3]
      439 LOADB                            R18 0
      440 JUMP                             ; [+7]
      441 GETUPVAL                         R21 2
      442 GETTABLEKS                       R20 R21 K16 ["ShallowEqual"]
      444 MOVE                             R21 R19
      445 MOVE                             R22 R17
      446 CALL                             R20 2 1
      447 MOVE                             R18 R20
      448 JUMPIF                           R18 ; [+1]
      449 RETURN                           R10 1
      450 FORGLOOP                         R13 2 ; [-54]
      452 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Object"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R7 R0 K8 ["utils"]
       24 GETTABLEKS                       R6 R7 K9 ["TableUtilities"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R8 R0 K8 ["utils"]
       31 GETTABLEKS                       R7 R8 K10 ["invariant"]
       33 CALL                             R6 1 1
       34 DUPCLOSURE                       R7 K11 [PROTO_0]
       35 DUPCLOSURE                       R8 K12 [PROTO_1]
       36 CAPTURE                          VAL R5
       37 DUPCLOSURE                       R9 K13 [PROTO_2]
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R10 K14 [PROTO_4]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 RETURN                           R10 1
