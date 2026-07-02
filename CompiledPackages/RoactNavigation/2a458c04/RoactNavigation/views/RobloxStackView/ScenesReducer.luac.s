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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["ShallowEqual"]
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
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K4 ["ShallowEqual"]
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
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K5 ["ShallowEqual"]
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
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K9 ["slice"]
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
       76 DUPTABLE                         R17 K13 [{["index"], ["isActive"] = False, ["isStale"] = False, ["key"], [5], ["descriptor"]}]
       77 SETTABLEKS                       R13 R17 K5 ["index"]
       79 SETTABLEKS                       R15 R17 K1 ["key"]
       81 SETTABLEKS                       R14 R17 K0 ["route"]
       83 SETTABLEKS                       R16 R17 K2 ["descriptor"]
       85 GETUPVAL                         R18 1
       86 GETTABLE                         R20 R7 R15
       87 NOT                              R19 R20
       88 LOADK                            R20 K14 ["navigation.state.routes[%d].key '%s' conflicts with another route!"]
       89 MOVE                             R21 R13
       90 MOVE                             R22 R15
       91 CALL                             R18 4 0
       92 LOADB                            R18 1
       93 SETTABLE                         R18 R7 R15
       94 GETTABLE                         R18 R6 R15
       95 JUMPIFNOT                        R18 ; [+2]
       96 LOADNIL                          R18
       97 SETTABLE                         R18 R6 R15
       98 SETTABLE                         R17 R5 R15
       99 FORGLOOP                         R10 2 ; [-34]
      101 JUMPIFNOT                        R2 ; [+66]
      102 GETTABLEKS                       R10 R2 K4 ["routes"]
      104 LENGTH                           R11 R10
      105 GETTABLEKS                       R12 R2 K5 ["index"]
      107 JUMPIFNOTLT                      R12 R11 ; [+14]
      109 GETIMPORT                        R12 K7 [print]
      111 LOADK                            R13 K15 ["StackRouter provided invalid state. Index should always be the top route."]
      112 CALL                             R12 1 0
      113 GETUPVAL                         R12 0
      114 GETTABLEKS                       R12 R12 K9 ["slice"]
      116 MOVE                             R13 R10
      117 LOADN                            R14 1
      118 GETTABLEKS                       R15 R2 K5 ["index"]
      120 CALL                             R12 3 1
      121 MOVE                             R10 R12
      122 MOVE                             R12 R10
      123 LOADNIL                          R13
      124 LOADNIL                          R14
      125 FORGPREP                         R12
      126 LOADK                            R18 K10 ["scene_"]
      127 GETTABLEKS                       R19 R16 K1 ["key"]
      129 CONCAT                           R17 R18 R19
      130 GETTABLE                         R18 R5 R17
      131 JUMPIF                           R18 ; [+34]
      132 LOADNIL                          R18
      133 MOVE                             R19 R0
      134 LOADNIL                          R20
      135 LOADNIL                          R21
      136 FORGPREP                         R19
      137 GETTABLEKS                       R24 R23 K0 ["route"]
      139 GETTABLEKS                       R24 R24 K1 ["key"]
      141 GETTABLEKS                       R25 R16 K1 ["key"]
      143 JUMPIFNOTEQ                      R24 R25 ; [+3]
      145 MOVE                             R18 R23
      146 JUMP                             ; [+2]
      147 FORGLOOP                         R19 2 ; [-11]
      149 GETTABLEKS                       R20 R16 K1 ["key"]
      151 GETTABLE                         R19 R3 R20
      152 JUMPIFNOT                        R18 ; [+2]
      153 GETTABLEKS                       R19 R18 K2 ["descriptor"]
      155 JUMPIFNOT                        R19 ; [+10]
      156 DUPTABLE                         R20 K17 [{["index"], ["isActive"] = False, ["isStale"] = True, ["key"], [5], ["descriptor"]}]
      157 SETTABLEKS                       R15 R20 K5 ["index"]
      159 SETTABLEKS                       R17 R20 K1 ["key"]
      161 SETTABLEKS                       R16 R20 K0 ["route"]
      163 SETTABLEKS                       R19 R20 K2 ["descriptor"]
      165 SETTABLE                         R20 R6 R17
      166 FORGLOOP                         R12 2 ; [-41]
      168 NEWTABLE                         R10 0 0
      170 NEWCLOSURE                       R11 P0
      171 CAPTURE                          VAL R4
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R10
      174 MOVE                             R12 R6
      175 LOADNIL                          R13
      176 LOADNIL                          R14
      177 FORGPREP                         R12
      178 GETTABLEKS                       R17 R16 K1 ["key"]
      180 GETTABLE                         R19 R4 R17
      181 ORK                              R18 R19 K18 []
      182 JUMPIFNOT                        R18 ; [+58]
      183 LOADB                            R19 0
      184 GETTABLEKS                       R20 R18 K1 ["key"]
      186 GETTABLEKS                       R21 R16 K1 ["key"]
      188 JUMPIFNOTEQ                      R20 R21 ; [+43]
      190 LOADB                            R19 0
      191 GETTABLEKS                       R20 R18 K5 ["index"]
      193 GETTABLEKS                       R21 R16 K5 ["index"]
      195 JUMPIFNOTEQ                      R20 R21 ; [+36]
      197 LOADB                            R19 0
      198 GETTABLEKS                       R20 R18 K3 ["isStale"]
      200 GETTABLEKS                       R21 R16 K3 ["isStale"]
      202 JUMPIFNOTEQ                      R20 R21 ; [+29]
      204 LOADB                            R19 0
      205 GETTABLEKS                       R20 R18 K11 ["isActive"]
      207 GETTABLEKS                       R21 R16 K11 ["isActive"]
      209 JUMPIFNOTEQ                      R20 R21 ; [+22]
      211 JUMPIFNOT                        R18 ; [+1]
      212 JUMPIF                           R16 ; [+5]
      213 JUMPIFEQ                         R18 R16 ; [+2]
      215 LOADB                            R19 0 +1
      216 LOADB                            R19 1
      217 JUMP                             ; [+14]
      218 GETTABLEKS                       R20 R18 K1 ["key"]
      220 GETTABLEKS                       R21 R16 K1 ["key"]
      222 JUMPIFEQ                         R20 R21 ; [+3]
      224 LOADB                            R19 0
      225 JUMP                             ; [+6]
      226 GETUPVAL                         R19 2
      227 GETTABLEKS                       R19 R19 K19 ["ShallowEqual"]
      229 MOVE                             R20 R18
      230 MOVE                             R21 R16
      231 CALL                             R19 2 1
      232 JUMPIFNOT                        R19 ; [+8]
      233 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      235 MOVE                             R20 R10
      236 MOVE                             R21 R18
      237 GETIMPORT                        R19 K22 [table.insert]
      239 CALL                             R19 2 0
      240 JUMP                             ; [+7]
      241 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      243 MOVE                             R20 R10
      244 MOVE                             R21 R16
      245 GETIMPORT                        R19 K22 [table.insert]
      247 CALL                             R19 2 0
      248 FORGLOOP                         R12 2 ; [-71]
      250 MOVE                             R12 R5
      251 LOADNIL                          R13
      252 LOADNIL                          R14
      253 FORGPREP                         R12
      254 GETTABLEKS                       R17 R16 K1 ["key"]
      256 GETTABLE                         R19 R4 R17
      257 ORK                              R18 R19 K18 []
      258 JUMPIFNOT                        R18 ; [+58]
      259 LOADB                            R19 0
      260 GETTABLEKS                       R20 R18 K1 ["key"]
      262 GETTABLEKS                       R21 R16 K1 ["key"]
      264 JUMPIFNOTEQ                      R20 R21 ; [+43]
      266 LOADB                            R19 0
      267 GETTABLEKS                       R20 R18 K5 ["index"]
      269 GETTABLEKS                       R21 R16 K5 ["index"]
      271 JUMPIFNOTEQ                      R20 R21 ; [+36]
      273 LOADB                            R19 0
      274 GETTABLEKS                       R20 R18 K3 ["isStale"]
      276 GETTABLEKS                       R21 R16 K3 ["isStale"]
      278 JUMPIFNOTEQ                      R20 R21 ; [+29]
      280 LOADB                            R19 0
      281 GETTABLEKS                       R20 R18 K11 ["isActive"]
      283 GETTABLEKS                       R21 R16 K11 ["isActive"]
      285 JUMPIFNOTEQ                      R20 R21 ; [+22]
      287 JUMPIFNOT                        R18 ; [+1]
      288 JUMPIF                           R16 ; [+5]
      289 JUMPIFEQ                         R18 R16 ; [+2]
      291 LOADB                            R19 0 +1
      292 LOADB                            R19 1
      293 JUMP                             ; [+14]
      294 GETTABLEKS                       R20 R18 K1 ["key"]
      296 GETTABLEKS                       R21 R16 K1 ["key"]
      298 JUMPIFEQ                         R20 R21 ; [+3]
      300 LOADB                            R19 0
      301 JUMP                             ; [+6]
      302 GETUPVAL                         R19 2
      303 GETTABLEKS                       R19 R19 K19 ["ShallowEqual"]
      305 MOVE                             R20 R18
      306 MOVE                             R21 R16
      307 CALL                             R19 2 1
      308 JUMPIFNOT                        R19 ; [+8]
      309 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      311 MOVE                             R20 R10
      312 MOVE                             R21 R18
      313 GETIMPORT                        R19 K22 [table.insert]
      315 CALL                             R19 2 0
      316 JUMP                             ; [+7]
      317 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      319 MOVE                             R20 R10
      320 MOVE                             R21 R16
      321 GETIMPORT                        R19 K22 [table.insert]
      323 CALL                             R19 2 0
      324 FORGLOOP                         R12 2 ; [-71]
      326 GETIMPORT                        R12 K24 [table.sort]
      328 MOVE                             R13 R10
      329 GETUPVAL                         R14 3
      330 CALL                             R12 2 0
      331 LOADN                            R12 0
      332 MOVE                             R13 R10
      333 LOADNIL                          R14
      334 LOADNIL                          R15
      335 FORGPREP                         R13
      336 GETTABLEKS                       R19 R17 K3 ["isStale"]
      338 NOT                              R18 R19
      339 JUMPIFNOT                        R18 ; [+8]
      340 GETTABLEKS                       R19 R17 K5 ["index"]
      342 GETTABLEKS                       R20 R1 K5 ["index"]
      344 JUMPIFEQ                         R19 R20 ; [+2]
      346 LOADB                            R18 0 +1
      347 LOADB                            R18 1
      348 GETTABLEKS                       R19 R17 K11 ["isActive"]
      350 JUMPIFEQ                         R18 R19 ; [+13]
      352 GETUPVAL                         R19 4
      353 GETTABLEKS                       R19 R19 K25 ["assign"]
      355 GETIMPORT                        R20 K27 [table.clone]
      357 MOVE                             R21 R17
      358 CALL                             R20 1 1
      359 DUPTABLE                         R21 K28 [{"isActive"}]
      360 SETTABLEKS                       R18 R21 K11 ["isActive"]
      362 CALL                             R19 2 1
      363 SETTABLE                         R19 R10 R16
      364 JUMPIFNOT                        R18 ; [+1]
      365 ADDK                             R12 R12 K29 [1]
      366 FORGLOOP                         R13 2 ; [-31]
      368 GETUPVAL                         R13 1
      369 JUMPIFEQKN                       R12 K29 [1] ; [+2]
      371 LOADB                            R14 0 +1
      372 LOADB                            R14 1
      373 LOADK                            R15 K30 ["There should only be one active scene, not %d"]
      374 MOVE                             R16 R12
      375 CALL                             R13 3 0
      376 LENGTH                           R13 R10
      377 LENGTH                           R14 R0
      378 JUMPIFEQ                         R13 R14 ; [+2]
      380 RETURN                           R10 1
      381 MOVE                             R13 R10
      382 LOADNIL                          R14
      383 LOADNIL                          R15
      384 FORGPREP                         R13
      385 GETTABLE                         R19 R0 R16
      386 LOADB                            R18 0
      387 GETTABLEKS                       R20 R19 K1 ["key"]
      389 GETTABLEKS                       R21 R17 K1 ["key"]
      391 JUMPIFNOTEQ                      R20 R21 ; [+44]
      393 LOADB                            R18 0
      394 GETTABLEKS                       R20 R19 K5 ["index"]
      396 GETTABLEKS                       R21 R17 K5 ["index"]
      398 JUMPIFNOTEQ                      R20 R21 ; [+37]
      400 LOADB                            R18 0
      401 GETTABLEKS                       R20 R19 K3 ["isStale"]
      403 GETTABLEKS                       R21 R17 K3 ["isStale"]
      405 JUMPIFNOTEQ                      R20 R21 ; [+30]
      407 LOADB                            R18 0
      408 GETTABLEKS                       R20 R19 K11 ["isActive"]
      410 GETTABLEKS                       R21 R17 K11 ["isActive"]
      412 JUMPIFNOTEQ                      R20 R21 ; [+23]
      414 JUMPIFNOT                        R19 ; [+1]
      415 JUMPIF                           R17 ; [+5]
      416 JUMPIFEQ                         R19 R17 ; [+2]
      418 LOADB                            R18 0 +1
      419 LOADB                            R18 1
      420 JUMP                             ; [+15]
      421 GETTABLEKS                       R20 R19 K1 ["key"]
      423 GETTABLEKS                       R21 R17 K1 ["key"]
      425 JUMPIFEQ                         R20 R21 ; [+3]
      427 LOADB                            R18 0
      428 JUMP                             ; [+7]
      429 GETUPVAL                         R20 2
      430 GETTABLEKS                       R20 R20 K19 ["ShallowEqual"]
      432 MOVE                             R21 R19
      433 MOVE                             R22 R17
      434 CALL                             R20 2 1
      435 MOVE                             R18 R20
      436 JUMPIF                           R18 ; [+1]
      437 RETURN                           R10 1
      438 FORGLOOP                         R13 2 ; [-54]
      440 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Object"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R0 K8 ["utils"]
       24 GETTABLEKS                       R6 R6 K9 ["TableUtilities"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K8 ["utils"]
       31 GETTABLEKS                       R7 R7 K10 ["invariant"]
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
