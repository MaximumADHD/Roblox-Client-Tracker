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
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K11 ["List"]
       58 GETTABLEKS                       R10 R10 K12 ["removeRange"]
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
       81 DUPTABLE                         R17 K16 [{["index"], ["isActive"] = False, ["isStale"] = False, ["key"], ["route"], ["descriptor"]}]
       82 SETTABLEKS                       R13 R17 K7 ["index"]
       84 SETTABLEKS                       R15 R17 K3 ["key"]
       86 SETTABLEKS                       R14 R17 K2 ["route"]
       88 SETTABLEKS                       R16 R17 K4 ["descriptor"]
       90 GETUPVAL                         R18 1
       91 GETTABLE                         R20 R7 R15
       92 NOT                              R19 R20
       93 LOADK                            R20 K17 ["navigation.state.routes[%d].key '%s' conflicts with another route!"]
       94 MOVE                             R21 R13
       95 MOVE                             R22 R15
       96 CALL                             R18 4 0
       97 LOADB                            R18 1
       98 SETTABLE                         R18 R7 R15
       99 GETTABLE                         R18 R6 R15
      100 JUMPIFNOT                        R18 ; [+2]
      101 LOADNIL                          R18
      102 SETTABLE                         R18 R6 R15
      103 SETTABLE                         R17 R5 R15
      104 FORGLOOP                         R10 2 [inext] ; [-34]
      106 JUMPIFNOT                        R2 ; [+70]
      107 GETTABLEKS                       R10 R2 K6 ["routes"]
      109 LENGTH                           R11 R10
      110 GETTABLEKS                       R12 R2 K7 ["index"]
      112 JUMPIFNOTLT                      R12 R11 ; [+16]
      114 GETIMPORT                        R12 K9 [print]
      116 LOADK                            R13 K18 ["StackRouter provided invalid state. Index should always be the top route."]
      117 CALL                             R12 1 0
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K11 ["List"]
      121 GETTABLEKS                       R12 R12 K12 ["removeRange"]
      123 MOVE                             R13 R10
      124 GETTABLEKS                       R14 R2 K7 ["index"]
      126 MOVE                             R15 R11
      127 CALL                             R12 3 1
      128 MOVE                             R10 R12
      129 GETIMPORT                        R12 K1 [ipairs]
      131 MOVE                             R13 R10
      132 CALL                             R12 1 3
      133 FORGPREP_INEXT                   R12
      134 LOADK                            R18 K13 ["scene_"]
      135 GETTABLEKS                       R19 R16 K3 ["key"]
      137 CONCAT                           R17 R18 R19
      138 GETTABLE                         R18 R5 R17
      139 JUMPIF                           R18 ; [+35]
      140 LOADNIL                          R18
      141 GETIMPORT                        R19 K1 [ipairs]
      143 MOVE                             R20 R0
      144 CALL                             R19 1 3
      145 FORGPREP_INEXT                   R19
      146 GETTABLEKS                       R24 R23 K2 ["route"]
      148 GETTABLEKS                       R24 R24 K3 ["key"]
      150 GETTABLEKS                       R25 R16 K3 ["key"]
      152 JUMPIFNOTEQ                      R24 R25 ; [+3]
      154 MOVE                             R18 R23
      155 JUMP                             ; [+2]
      156 FORGLOOP                         R19 2 [inext] ; [-11]
      158 GETTABLEKS                       R20 R16 K3 ["key"]
      160 GETTABLE                         R19 R3 R20
      161 JUMPIFNOT                        R18 ; [+2]
      162 GETTABLEKS                       R19 R18 K4 ["descriptor"]
      164 JUMPIFNOT                        R19 ; [+10]
      165 DUPTABLE                         R20 K20 [{["index"], ["isActive"] = False, ["isStale"] = True, ["key"], ["route"], ["descriptor"]}]
      166 SETTABLEKS                       R15 R20 K7 ["index"]
      168 SETTABLEKS                       R17 R20 K3 ["key"]
      170 SETTABLEKS                       R16 R20 K2 ["route"]
      172 SETTABLEKS                       R19 R20 K4 ["descriptor"]
      174 SETTABLE                         R20 R6 R17
      175 FORGLOOP                         R12 2 [inext] ; [-42]
      177 NEWTABLE                         R10 0 0
      179 NEWCLOSURE                       R11 P0
      180 CAPTURE                          VAL R4
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          VAL R10
      183 GETIMPORT                        R12 K22 [pairs]
      185 MOVE                             R13 R6
      186 CALL                             R12 1 3
      187 FORGPREP_NEXT                    R12
      188 GETTABLEKS                       R17 R16 K3 ["key"]
      190 GETTABLE                         R19 R4 R17
      191 ORK                              R18 R19 K23 []
      192 JUMPIFNOT                        R18 ; [+58]
      193 LOADB                            R19 0
      194 GETTABLEKS                       R20 R18 K3 ["key"]
      196 GETTABLEKS                       R21 R16 K3 ["key"]
      198 JUMPIFNOTEQ                      R20 R21 ; [+43]
      200 LOADB                            R19 0
      201 GETTABLEKS                       R20 R18 K7 ["index"]
      203 GETTABLEKS                       R21 R16 K7 ["index"]
      205 JUMPIFNOTEQ                      R20 R21 ; [+36]
      207 LOADB                            R19 0
      208 GETTABLEKS                       R20 R18 K5 ["isStale"]
      210 GETTABLEKS                       R21 R16 K5 ["isStale"]
      212 JUMPIFNOTEQ                      R20 R21 ; [+29]
      214 LOADB                            R19 0
      215 GETTABLEKS                       R20 R18 K14 ["isActive"]
      217 GETTABLEKS                       R21 R16 K14 ["isActive"]
      219 JUMPIFNOTEQ                      R20 R21 ; [+22]
      221 JUMPIFNOT                        R18 ; [+1]
      222 JUMPIF                           R16 ; [+5]
      223 JUMPIFEQ                         R18 R16 ; [+2]
      225 LOADB                            R19 0 +1
      226 LOADB                            R19 1
      227 JUMP                             ; [+14]
      228 GETTABLEKS                       R20 R18 K3 ["key"]
      230 GETTABLEKS                       R21 R16 K3 ["key"]
      232 JUMPIFEQ                         R20 R21 ; [+3]
      234 LOADB                            R19 0
      235 JUMP                             ; [+6]
      236 GETUPVAL                         R19 2
      237 GETTABLEKS                       R19 R19 K24 ["ShallowEqual"]
      239 MOVE                             R20 R18
      240 MOVE                             R21 R16
      241 CALL                             R19 2 1
      242 JUMPIFNOT                        R19 ; [+8]
      243 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      245 MOVE                             R20 R10
      246 MOVE                             R21 R18
      247 GETIMPORT                        R19 K27 [table.insert]
      249 CALL                             R19 2 0
      250 JUMP                             ; [+7]
      251 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      253 MOVE                             R20 R10
      254 MOVE                             R21 R16
      255 GETIMPORT                        R19 K27 [table.insert]
      257 CALL                             R19 2 0
      258 FORGLOOP                         R12 2 ; [-71]
      260 GETIMPORT                        R12 K22 [pairs]
      262 MOVE                             R13 R5
      263 CALL                             R12 1 3
      264 FORGPREP_NEXT                    R12
      265 GETTABLEKS                       R17 R16 K3 ["key"]
      267 GETTABLE                         R19 R4 R17
      268 ORK                              R18 R19 K23 []
      269 JUMPIFNOT                        R18 ; [+58]
      270 LOADB                            R19 0
      271 GETTABLEKS                       R20 R18 K3 ["key"]
      273 GETTABLEKS                       R21 R16 K3 ["key"]
      275 JUMPIFNOTEQ                      R20 R21 ; [+43]
      277 LOADB                            R19 0
      278 GETTABLEKS                       R20 R18 K7 ["index"]
      280 GETTABLEKS                       R21 R16 K7 ["index"]
      282 JUMPIFNOTEQ                      R20 R21 ; [+36]
      284 LOADB                            R19 0
      285 GETTABLEKS                       R20 R18 K5 ["isStale"]
      287 GETTABLEKS                       R21 R16 K5 ["isStale"]
      289 JUMPIFNOTEQ                      R20 R21 ; [+29]
      291 LOADB                            R19 0
      292 GETTABLEKS                       R20 R18 K14 ["isActive"]
      294 GETTABLEKS                       R21 R16 K14 ["isActive"]
      296 JUMPIFNOTEQ                      R20 R21 ; [+22]
      298 JUMPIFNOT                        R18 ; [+1]
      299 JUMPIF                           R16 ; [+5]
      300 JUMPIFEQ                         R18 R16 ; [+2]
      302 LOADB                            R19 0 +1
      303 LOADB                            R19 1
      304 JUMP                             ; [+14]
      305 GETTABLEKS                       R20 R18 K3 ["key"]
      307 GETTABLEKS                       R21 R16 K3 ["key"]
      309 JUMPIFEQ                         R20 R21 ; [+3]
      311 LOADB                            R19 0
      312 JUMP                             ; [+6]
      313 GETUPVAL                         R19 2
      314 GETTABLEKS                       R19 R19 K24 ["ShallowEqual"]
      316 MOVE                             R20 R18
      317 MOVE                             R21 R16
      318 CALL                             R19 2 1
      319 JUMPIFNOT                        R19 ; [+8]
      320 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      322 MOVE                             R20 R10
      323 MOVE                             R21 R18
      324 GETIMPORT                        R19 K27 [table.insert]
      326 CALL                             R19 2 0
      327 JUMP                             ; [+7]
      328 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      330 MOVE                             R20 R10
      331 MOVE                             R21 R16
      332 GETIMPORT                        R19 K27 [table.insert]
      334 CALL                             R19 2 0
      335 FORGLOOP                         R12 2 ; [-71]
      337 GETIMPORT                        R12 K29 [table.sort]
      339 MOVE                             R13 R10
      340 GETUPVAL                         R14 3
      341 CALL                             R12 2 0
      342 LOADN                            R12 0
      343 GETIMPORT                        R13 K1 [ipairs]
      345 MOVE                             R14 R10
      346 CALL                             R13 1 3
      347 FORGPREP_INEXT                   R13
      348 GETTABLEKS                       R19 R17 K5 ["isStale"]
      350 NOT                              R18 R19
      351 JUMPIFNOT                        R18 ; [+8]
      352 GETTABLEKS                       R19 R17 K7 ["index"]
      354 GETTABLEKS                       R20 R1 K7 ["index"]
      356 JUMPIFEQ                         R19 R20 ; [+2]
      358 LOADB                            R18 0 +1
      359 LOADB                            R18 1
      360 GETTABLEKS                       R19 R17 K14 ["isActive"]
      362 JUMPIFEQ                         R18 R19 ; [+12]
      364 GETUPVAL                         R19 0
      365 GETTABLEKS                       R19 R19 K30 ["Dictionary"]
      367 GETTABLEKS                       R19 R19 K31 ["join"]
      369 MOVE                             R20 R17
      370 DUPTABLE                         R21 K32 [{"isActive"}]
      371 SETTABLEKS                       R18 R21 K14 ["isActive"]
      373 CALL                             R19 2 1
      374 SETTABLE                         R19 R10 R16
      375 JUMPIFNOT                        R18 ; [+1]
      376 ADDK                             R12 R12 K33 [1]
      377 FORGLOOP                         R13 2 [inext] ; [-30]
      379 GETUPVAL                         R13 1
      380 JUMPIFEQKN                       R12 K33 [1] ; [+2]
      382 LOADB                            R14 0 +1
      383 LOADB                            R14 1
      384 LOADK                            R15 K34 ["There should only be one active scene, not %d"]
      385 MOVE                             R16 R12
      386 CALL                             R13 3 0
      387 LENGTH                           R13 R10
      388 LENGTH                           R14 R0
      389 JUMPIFEQ                         R13 R14 ; [+2]
      391 RETURN                           R10 1
      392 GETIMPORT                        R13 K1 [ipairs]
      394 MOVE                             R14 R10
      395 CALL                             R13 1 3
      396 FORGPREP_INEXT                   R13
      397 GETTABLE                         R19 R0 R16
      398 LOADB                            R18 0
      399 GETTABLEKS                       R20 R19 K3 ["key"]
      401 GETTABLEKS                       R21 R17 K3 ["key"]
      403 JUMPIFNOTEQ                      R20 R21 ; [+44]
      405 LOADB                            R18 0
      406 GETTABLEKS                       R20 R19 K7 ["index"]
      408 GETTABLEKS                       R21 R17 K7 ["index"]
      410 JUMPIFNOTEQ                      R20 R21 ; [+37]
      412 LOADB                            R18 0
      413 GETTABLEKS                       R20 R19 K5 ["isStale"]
      415 GETTABLEKS                       R21 R17 K5 ["isStale"]
      417 JUMPIFNOTEQ                      R20 R21 ; [+30]
      419 LOADB                            R18 0
      420 GETTABLEKS                       R20 R19 K14 ["isActive"]
      422 GETTABLEKS                       R21 R17 K14 ["isActive"]
      424 JUMPIFNOTEQ                      R20 R21 ; [+23]
      426 JUMPIFNOT                        R19 ; [+1]
      427 JUMPIF                           R17 ; [+5]
      428 JUMPIFEQ                         R19 R17 ; [+2]
      430 LOADB                            R18 0 +1
      431 LOADB                            R18 1
      432 JUMP                             ; [+15]
      433 GETTABLEKS                       R20 R19 K3 ["key"]
      435 GETTABLEKS                       R21 R17 K3 ["key"]
      437 JUMPIFEQ                         R20 R21 ; [+3]
      439 LOADB                            R18 0
      440 JUMP                             ; [+7]
      441 GETUPVAL                         R20 2
      442 GETTABLEKS                       R20 R20 K24 ["ShallowEqual"]
      444 MOVE                             R21 R19
      445 MOVE                             R22 R17
      446 CALL                             R20 2 1
      447 MOVE                             R18 R20
      448 JUMPIF                           R18 ; [+1]
      449 RETURN                           R10 1
      450 FORGLOOP                         R13 2 [inext] ; [-54]
      452 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["utils"]
       24 GETTABLEKS                       R2 R2 K7 ["TableUtilities"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K4 ["Parent"]
       35 GETTABLEKS                       R3 R3 K6 ["utils"]
       37 GETTABLEKS                       R3 R3 K8 ["validate"]
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
