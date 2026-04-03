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
        0 GETIMPORT                        R4 K1 [ipairs]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 3
        4 FORGPREP_INEXT                   R4
        5 GETTABLEKS                       R9 R8 K2 ["route"]
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETTABLEKS                       R11 R9 K3 ["key"]
       10 GETTABLE                         R10 R3 R11
       11 JUMPIFNOT                        R10 ; [+5]
       12 GETTABLEKS                       R11 R9 K3 ["key"]
       14 GETTABLE                         R10 R3 R11
       15 SETTABLEKS                       R10 R8 K4 ["descriptor"]
       17 FORGLOOP                         R4 2 [inext] ; [-13]
       19 JUMPIFNOTEQ                      R2 R1 ; [+2]
       21 RETURN                           R0 1
       22 NEWTABLE                         R4 0 0
       24 NEWTABLE                         R5 0 0
       26 NEWTABLE                         R6 0 0
       28 GETIMPORT                        R7 K1 [ipairs]
       30 MOVE                             R8 R0
       31 CALL                             R7 1 3
       32 FORGPREP_INEXT                   R7
       33 GETTABLEKS                       R12 R11 K3 ["key"]
       35 GETTABLEKS                       R13 R11 K5 ["isStale"]
       37 JUMPIFNOT                        R13 ; [+1]
       38 SETTABLE                         R11 R6 R12
       39 SETTABLE                         R11 R4 R12
       40 FORGLOOP                         R7 2 [inext] ; [-8]
       42 NEWTABLE                         R7 0 0
       44 GETTABLEKS                       R8 R1 K6 ["routes"]
       46 LENGTH                           R9 R8
       47 GETTABLEKS                       R10 R1 K7 ["index"]
       49 JUMPIFNOTLT                      R10 R9 ; [+16]
       51 GETIMPORT                        R10 K9 [print]
       53 LOADK                            R11 K10 ["Warning: StackRouter provided invalid state. Index should always be the top route"]
       54 CALL                             R10 1 0
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R11 R12 K11 ["List"]
       58 GETTABLEKS                       R10 R11 K12 ["removeRange"]
       60 MOVE                             R11 R8
       61 GETTABLEKS                       R12 R1 K7 ["index"]
       63 MOVE                             R13 R9
       64 CALL                             R10 3 1
       65 MOVE                             R8 R10
       66 GETIMPORT                        R10 K1 [ipairs]
       68 MOVE                             R11 R8
       69 CALL                             R10 1 3
       70 FORGPREP_INEXT                   R10
       71 LOADK                            R16 K13 ["scene_"]
       72 GETTABLEKS                       R17 R14 K3 ["key"]
       74 CONCAT                           R15 R16 R17
       75 JUMPIFNOT                        R3 ; [+4]
       76 GETTABLEKS                       R17 R14 K3 ["key"]
       78 GETTABLE                         R16 R3 R17
       79 JUMPIF                           R16 ; [+1]
       80 LOADNIL                          R16
       81 DUPTABLE                         R17 K15 [{"index", "isActive", "isStale", "key", "route", "descriptor"}]
       82 SETTABLEKS                       R13 R17 K7 ["index"]
       84 LOADB                            R18 0
       85 SETTABLEKS                       R18 R17 K14 ["isActive"]
       87 LOADB                            R18 0
       88 SETTABLEKS                       R18 R17 K5 ["isStale"]
       90 SETTABLEKS                       R15 R17 K3 ["key"]
       92 SETTABLEKS                       R14 R17 K2 ["route"]
       94 SETTABLEKS                       R16 R17 K4 ["descriptor"]
       96 GETUPVAL                         R18 1
       97 GETTABLE                         R20 R7 R15
       98 NOT                              R19 R20
       99 LOADK                            R20 K16 ["navigation.state.routes[%d].key '%s' conflicts with another route!"]
      100 MOVE                             R21 R13
      101 MOVE                             R22 R15
      102 CALL                             R18 4 0
      103 LOADB                            R18 1
      104 SETTABLE                         R18 R7 R15
      105 GETTABLE                         R18 R6 R15
      106 JUMPIFNOT                        R18 ; [+2]
      107 LOADNIL                          R18
      108 SETTABLE                         R18 R6 R15
      109 SETTABLE                         R17 R5 R15
      110 FORGLOOP                         R10 2 [inext] ; [-40]
      112 JUMPIFNOT                        R2 ; [+76]
      113 GETTABLEKS                       R10 R2 K6 ["routes"]
      115 LENGTH                           R11 R10
      116 GETTABLEKS                       R12 R2 K7 ["index"]
      118 JUMPIFNOTLT                      R12 R11 ; [+16]
      120 GETIMPORT                        R12 K9 [print]
      122 LOADK                            R13 K17 ["StackRouter provided invalid state. Index should always be the top route."]
      123 CALL                             R12 1 0
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R13 R14 K11 ["List"]
      127 GETTABLEKS                       R12 R13 K12 ["removeRange"]
      129 MOVE                             R13 R10
      130 GETTABLEKS                       R14 R2 K7 ["index"]
      132 MOVE                             R15 R11
      133 CALL                             R12 3 1
      134 MOVE                             R10 R12
      135 GETIMPORT                        R12 K1 [ipairs]
      137 MOVE                             R13 R10
      138 CALL                             R12 1 3
      139 FORGPREP_INEXT                   R12
      140 LOADK                            R18 K13 ["scene_"]
      141 GETTABLEKS                       R19 R16 K3 ["key"]
      143 CONCAT                           R17 R18 R19
      144 GETTABLE                         R18 R5 R17
      145 JUMPIF                           R18 ; [+41]
      146 LOADNIL                          R18
      147 GETIMPORT                        R19 K1 [ipairs]
      149 MOVE                             R20 R0
      150 CALL                             R19 1 3
      151 FORGPREP_INEXT                   R19
      152 GETTABLEKS                       R25 R23 K2 ["route"]
      154 GETTABLEKS                       R24 R25 K3 ["key"]
      156 GETTABLEKS                       R25 R16 K3 ["key"]
      158 JUMPIFNOTEQ                      R24 R25 ; [+3]
      160 MOVE                             R18 R23
      161 JUMP                             ; [+2]
      162 FORGLOOP                         R19 2 [inext] ; [-11]
      164 GETTABLEKS                       R20 R16 K3 ["key"]
      166 GETTABLE                         R19 R3 R20
      167 JUMPIFNOT                        R18 ; [+2]
      168 GETTABLEKS                       R19 R18 K4 ["descriptor"]
      170 JUMPIFNOT                        R19 ; [+16]
      171 DUPTABLE                         R20 K15 [{"index", "isActive", "isStale", "key", "route", "descriptor"}]
      172 SETTABLEKS                       R15 R20 K7 ["index"]
      174 LOADB                            R21 0
      175 SETTABLEKS                       R21 R20 K14 ["isActive"]
      177 LOADB                            R21 1
      178 SETTABLEKS                       R21 R20 K5 ["isStale"]
      180 SETTABLEKS                       R17 R20 K3 ["key"]
      182 SETTABLEKS                       R16 R20 K2 ["route"]
      184 SETTABLEKS                       R19 R20 K4 ["descriptor"]
      186 SETTABLE                         R20 R6 R17
      187 FORGLOOP                         R12 2 [inext] ; [-48]
      189 NEWTABLE                         R10 0 0
      191 NEWCLOSURE                       R11 P0
      192 CAPTURE                          VAL R4
      193 CAPTURE                          UPVAL U2
      194 CAPTURE                          VAL R10
      195 GETIMPORT                        R12 K19 [pairs]
      197 MOVE                             R13 R6
      198 CALL                             R12 1 3
      199 FORGPREP_NEXT                    R12
      200 GETTABLEKS                       R17 R16 K3 ["key"]
      202 GETTABLE                         R19 R4 R17
      203 ORK                              R18 R19 K20 []
      204 JUMPIFNOT                        R18 ; [+58]
      205 LOADB                            R19 0
      206 GETTABLEKS                       R20 R18 K3 ["key"]
      208 GETTABLEKS                       R21 R16 K3 ["key"]
      210 JUMPIFNOTEQ                      R20 R21 ; [+43]
      212 LOADB                            R19 0
      213 GETTABLEKS                       R20 R18 K7 ["index"]
      215 GETTABLEKS                       R21 R16 K7 ["index"]
      217 JUMPIFNOTEQ                      R20 R21 ; [+36]
      219 LOADB                            R19 0
      220 GETTABLEKS                       R20 R18 K5 ["isStale"]
      222 GETTABLEKS                       R21 R16 K5 ["isStale"]
      224 JUMPIFNOTEQ                      R20 R21 ; [+29]
      226 LOADB                            R19 0
      227 GETTABLEKS                       R20 R18 K14 ["isActive"]
      229 GETTABLEKS                       R21 R16 K14 ["isActive"]
      231 JUMPIFNOTEQ                      R20 R21 ; [+22]
      233 JUMPIFNOT                        R18 ; [+1]
      234 JUMPIF                           R16 ; [+5]
      235 JUMPIFEQ                         R18 R16 ; [+2]
      237 LOADB                            R19 0 +1
      238 LOADB                            R19 1
      239 JUMP                             ; [+14]
      240 GETTABLEKS                       R20 R18 K3 ["key"]
      242 GETTABLEKS                       R21 R16 K3 ["key"]
      244 JUMPIFEQ                         R20 R21 ; [+3]
      246 LOADB                            R19 0
      247 JUMP                             ; [+6]
      248 GETUPVAL                         R20 2
      249 GETTABLEKS                       R19 R20 K21 ["ShallowEqual"]
      251 MOVE                             R20 R18
      252 MOVE                             R21 R16
      253 CALL                             R19 2 1
      254 JUMPIFNOT                        R19 ; [+8]
      255 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      257 MOVE                             R20 R10
      258 MOVE                             R21 R18
      259 GETIMPORT                        R19 K24 [table.insert]
      261 CALL                             R19 2 0
      262 JUMP                             ; [+7]
      263 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      265 MOVE                             R20 R10
      266 MOVE                             R21 R16
      267 GETIMPORT                        R19 K24 [table.insert]
      269 CALL                             R19 2 0
      270 FORGLOOP                         R12 2 ; [-71]
      272 GETIMPORT                        R12 K19 [pairs]
      274 MOVE                             R13 R5
      275 CALL                             R12 1 3
      276 FORGPREP_NEXT                    R12
      277 GETTABLEKS                       R17 R16 K3 ["key"]
      279 GETTABLE                         R19 R4 R17
      280 ORK                              R18 R19 K20 []
      281 JUMPIFNOT                        R18 ; [+58]
      282 LOADB                            R19 0
      283 GETTABLEKS                       R20 R18 K3 ["key"]
      285 GETTABLEKS                       R21 R16 K3 ["key"]
      287 JUMPIFNOTEQ                      R20 R21 ; [+43]
      289 LOADB                            R19 0
      290 GETTABLEKS                       R20 R18 K7 ["index"]
      292 GETTABLEKS                       R21 R16 K7 ["index"]
      294 JUMPIFNOTEQ                      R20 R21 ; [+36]
      296 LOADB                            R19 0
      297 GETTABLEKS                       R20 R18 K5 ["isStale"]
      299 GETTABLEKS                       R21 R16 K5 ["isStale"]
      301 JUMPIFNOTEQ                      R20 R21 ; [+29]
      303 LOADB                            R19 0
      304 GETTABLEKS                       R20 R18 K14 ["isActive"]
      306 GETTABLEKS                       R21 R16 K14 ["isActive"]
      308 JUMPIFNOTEQ                      R20 R21 ; [+22]
      310 JUMPIFNOT                        R18 ; [+1]
      311 JUMPIF                           R16 ; [+5]
      312 JUMPIFEQ                         R18 R16 ; [+2]
      314 LOADB                            R19 0 +1
      315 LOADB                            R19 1
      316 JUMP                             ; [+14]
      317 GETTABLEKS                       R20 R18 K3 ["key"]
      319 GETTABLEKS                       R21 R16 K3 ["key"]
      321 JUMPIFEQ                         R20 R21 ; [+3]
      323 LOADB                            R19 0
      324 JUMP                             ; [+6]
      325 GETUPVAL                         R20 2
      326 GETTABLEKS                       R19 R20 K21 ["ShallowEqual"]
      328 MOVE                             R20 R18
      329 MOVE                             R21 R16
      330 CALL                             R19 2 1
      331 JUMPIFNOT                        R19 ; [+8]
      332 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      334 MOVE                             R20 R10
      335 MOVE                             R21 R18
      336 GETIMPORT                        R19 K24 [table.insert]
      338 CALL                             R19 2 0
      339 JUMP                             ; [+7]
      340 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      342 MOVE                             R20 R10
      343 MOVE                             R21 R16
      344 GETIMPORT                        R19 K24 [table.insert]
      346 CALL                             R19 2 0
      347 FORGLOOP                         R12 2 ; [-71]
      349 GETIMPORT                        R12 K26 [table.sort]
      351 MOVE                             R13 R10
      352 GETUPVAL                         R14 3
      353 CALL                             R12 2 0
      354 LOADN                            R12 0
      355 GETIMPORT                        R13 K1 [ipairs]
      357 MOVE                             R14 R10
      358 CALL                             R13 1 3
      359 FORGPREP_INEXT                   R13
      360 GETTABLEKS                       R19 R17 K5 ["isStale"]
      362 NOT                              R18 R19
      363 JUMPIFNOT                        R18 ; [+8]
      364 GETTABLEKS                       R19 R17 K7 ["index"]
      366 GETTABLEKS                       R20 R1 K7 ["index"]
      368 JUMPIFEQ                         R19 R20 ; [+2]
      370 LOADB                            R18 0 +1
      371 LOADB                            R18 1
      372 GETTABLEKS                       R19 R17 K14 ["isActive"]
      374 JUMPIFEQ                         R18 R19 ; [+12]
      376 GETUPVAL                         R21 0
      377 GETTABLEKS                       R20 R21 K27 ["Dictionary"]
      379 GETTABLEKS                       R19 R20 K28 ["join"]
      381 MOVE                             R20 R17
      382 DUPTABLE                         R21 K29 [{"isActive"}]
      383 SETTABLEKS                       R18 R21 K14 ["isActive"]
      385 CALL                             R19 2 1
      386 SETTABLE                         R19 R10 R16
      387 JUMPIFNOT                        R18 ; [+1]
      388 ADDK                             R12 R12 K30 [1]
      389 FORGLOOP                         R13 2 [inext] ; [-30]
      391 GETUPVAL                         R13 1
      392 JUMPIFEQKN                       R12 K30 [1] ; [+2]
      394 LOADB                            R14 0 +1
      395 LOADB                            R14 1
      396 LOADK                            R15 K31 ["There should only be one active scene, not %d"]
      397 MOVE                             R16 R12
      398 CALL                             R13 3 0
      399 LENGTH                           R13 R10
      400 LENGTH                           R14 R0
      401 JUMPIFEQ                         R13 R14 ; [+2]
      403 RETURN                           R10 1
      404 GETIMPORT                        R13 K1 [ipairs]
      406 MOVE                             R14 R10
      407 CALL                             R13 1 3
      408 FORGPREP_INEXT                   R13
      409 GETTABLE                         R19 R0 R16
      410 LOADB                            R18 0
      411 GETTABLEKS                       R20 R19 K3 ["key"]
      413 GETTABLEKS                       R21 R17 K3 ["key"]
      415 JUMPIFNOTEQ                      R20 R21 ; [+44]
      417 LOADB                            R18 0
      418 GETTABLEKS                       R20 R19 K7 ["index"]
      420 GETTABLEKS                       R21 R17 K7 ["index"]
      422 JUMPIFNOTEQ                      R20 R21 ; [+37]
      424 LOADB                            R18 0
      425 GETTABLEKS                       R20 R19 K5 ["isStale"]
      427 GETTABLEKS                       R21 R17 K5 ["isStale"]
      429 JUMPIFNOTEQ                      R20 R21 ; [+30]
      431 LOADB                            R18 0
      432 GETTABLEKS                       R20 R19 K14 ["isActive"]
      434 GETTABLEKS                       R21 R17 K14 ["isActive"]
      436 JUMPIFNOTEQ                      R20 R21 ; [+23]
      438 JUMPIFNOT                        R19 ; [+1]
      439 JUMPIF                           R17 ; [+5]
      440 JUMPIFEQ                         R19 R17 ; [+2]
      442 LOADB                            R18 0 +1
      443 LOADB                            R18 1
      444 JUMP                             ; [+15]
      445 GETTABLEKS                       R20 R19 K3 ["key"]
      447 GETTABLEKS                       R21 R17 K3 ["key"]
      449 JUMPIFEQ                         R20 R21 ; [+3]
      451 LOADB                            R18 0
      452 JUMP                             ; [+7]
      453 GETUPVAL                         R21 2
      454 GETTABLEKS                       R20 R21 K21 ["ShallowEqual"]
      456 MOVE                             R21 R19
      457 MOVE                             R22 R17
      458 CALL                             R20 2 1
      459 MOVE                             R18 R20
      460 JUMPIF                           R18 ; [+1]
      461 RETURN                           R10 1
      462 FORGLOOP                         R13 2 [inext] ; [-54]
      464 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K6 ["utils"]
       24 GETTABLEKS                       R2 R3 K7 ["TableUtilities"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K6 ["utils"]
       37 GETTABLEKS                       R3 R4 K8 ["validate"]
       39 CALL                             R2 1 1
       40 DUPCLOSURE                       R3 K9 [PROTO_0]
       41 DUPCLOSURE                       R4 K10 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 DUPCLOSURE                       R5 K11 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R6 K12 [PROTO_4]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 RETURN                           R6 1
