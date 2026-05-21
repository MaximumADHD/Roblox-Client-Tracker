PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 SETTABLE                         R8 R3 R7
        8 FORGLOOP                         R4 2 [inext] ; [-2]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SetParams"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["CompleteTransition"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R0
        9 MOVE                             R9 R5
       10 CALL                             R7 2 1
       11 FASTCALL1                        TYPE R7 ; [+3]
       12 MOVE                             R9 R7
       13 GETIMPORT                        R8 K3 [type]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+7]
       18 GETTABLEKS                       R8 R7 K5 ["router"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R8 R7 K5 ["router"]
       23 SETTABLE                         R8 R1 R5
       24 FORGLOOP                         R2 2 ; [-18]
       26 RETURN                           R1 1

PROTO_4:
        0 GETTABLE                         R3 R0 R1
        1 FASTCALL1                        TYPE R3 ; [+3]
        2 MOVE                             R5 R3
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+14]
        8 GETTABLEKS                       R4 R3 K3 ["params"]
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       14 GETTABLEKS                       R4 R4 K5 ["join"]
       16 GETTABLEKS                       R5 R3 K3 ["params"]
       18 MOVE                             R6 R2
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1
       21 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R4 R3 R0
        9 FASTCALL1                        TYPE R4 ; [+3]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K1 [type]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+15]
       16 GETTABLEKS                       R5 R4 K3 ["params"]
       18 JUMPIFNOT                        R5 ; [+11]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["Dictionary"]
       22 GETTABLEKS                       R5 R5 K5 ["join"]
       24 GETTABLEKS                       R6 R4 K3 ["params"]
       26 MOVE                             R7 R1
       27 CALL                             R5 2 1
       28 MOVE                             R2 R5
       29 JUMP                             ; [+1]
       30 MOVE                             R2 R1
       31 GETUPVAL                         R4 4
       32 GETTABLE                         R3 R4 R0
       33 JUMPIFNOT                        R3 ; [+22]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K6 ["init"]
       37 CALL                             R4 0 1
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K4 ["Dictionary"]
       41 GETTABLEKS                       R5 R5 K5 ["join"]
       43 GETTABLEKS                       R6 R3 K7 ["getStateForAction"]
       45 MOVE                             R7 R4
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K10 [{"key", "routeName", "params"}]
       48 SETTABLEKS                       R0 R7 K8 ["key"]
       50 SETTABLEKS                       R0 R7 K9 ["routeName"]
       52 SETTABLEKS                       R2 R7 K3 ["params"]
       54 CALL                             R5 2 -1
       55 RETURN                           R5 -1
       56 DUPTABLE                         R4 K10 [{"key", "routeName", "params"}]
       57 SETTABLEKS                       R0 R4 K8 ["key"]
       59 SETTABLEKS                       R0 R4 K9 ["routeName"]
       61 SETTABLEKS                       R2 R4 K3 ["params"]
       63 RETURN                           R4 1

PROTO_6:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 1
        2 GETTABLEKS                       R2 R0 K0 ["index"]
        4 GETTABLEKS                       R3 R1 K0 ["index"]
        6 JUMPIFEQ                         R2 R3 ; [+40]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+37]
       10 GETTABLEKS                       R3 R0 K1 ["routes"]
       12 GETTABLEKS                       R4 R0 K0 ["index"]
       14 GETTABLE                         R2 R3 R4
       15 GETTABLEKS                       R2 R2 K2 ["routeName"]
       17 GETTABLEKS                       R4 R1 K1 ["routes"]
       19 GETTABLEKS                       R5 R0 K0 ["index"]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R2
       23 CALL                             R6 1 1
       24 NEWTABLE                         R7 0 0
       26 GETIMPORT                        R8 K4 [ipairs]
       28 MOVE                             R9 R4
       29 CALL                             R8 1 3
       30 FORGPREP_INEXT                   R8
       31 SETTABLE                         R12 R7 R11
       32 FORGLOOP                         R8 2 [inext] ; [-2]
       34 SETTABLE                         R6 R7 R5
       35 MOVE                             R3 R7
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       39 GETTABLEKS                       R4 R4 K6 ["join"]
       41 MOVE                             R5 R1
       42 DUPTABLE                         R6 K7 [{"routes"}]
       43 SETTABLEKS                       R3 R6 K1 ["routes"]
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1
       47 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R0 K3 [{"routes", "index", "isTransitioning"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["List"]
        4 GETTABLEKS                       R1 R1 K5 ["map"]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K0 ["routes"]
       11 GETUPVAL                         R1 3
       12 SETTABLEKS                       R1 R0 K1 ["index"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K2 ["isTransitioning"]
       17 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["routeName"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+3]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+2]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       12 GETTABLEKS                       R2 R2 K2 ["join"]
       14 MOVE                             R3 R0
       15 DUPTABLE                         R4 K4 [{"params"}]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       19 GETTABLEKS                       R5 R5 K2 ["join"]
       21 GETTABLEKS                       R6 R0 K3 ["params"]
       23 GETUPVAL                         R7 3
       24 MOVE                             R8 R1
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K3 ["params"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 LOADNIL                          R2
       10 MOVE                             R3 R1
       11 JUMPIF                           R3 ; [+17]
       12 DUPTABLE                         R3 K5 [{"routes", "index", "isTransitioning"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["List"]
       16 GETTABLEKS                       R4 R4 K7 ["map"]
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K2 ["routes"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K3 ["index"]
       26 LOADB                            R4 0
       27 SETTABLEKS                       R4 R3 K4 ["isTransitioning"]
       29 GETTABLEKS                       R4 R3 K3 ["index"]
       31 GETTABLEKS                       R5 R0 K8 ["type"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K9 ["Init"]
       36 JUMPIFNOTEQ                      R5 R6 ; [+19]
       38 GETTABLEKS                       R5 R0 K10 ["params"]
       40 JUMPIFNOT                        R5 ; [+15]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K6 ["List"]
       44 GETTABLEKS                       R6 R6 K7 ["map"]
       46 GETTABLEKS                       R7 R3 K2 ["routes"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R5
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R3 K2 ["routes"]
       56 GETTABLEKS                       R6 R3 K2 ["routes"]
       58 GETTABLEKS                       R7 R3 K3 ["index"]
       60 GETTABLE                         R5 R6 R7
       61 GETUPVAL                         R7 7
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R10 R3 K3 ["index"]
       65 GETTABLE                         R8 R9 R10
       66 GETTABLE                         R6 R7 R8
       67 JUMPIFNOT                        R6 ; [+42]
       68 GETTABLEKS                       R7 R6 K11 ["getStateForAction"]
       70 MOVE                             R8 R0
       71 MOVE                             R9 R5
       72 CALL                             R7 2 1
       73 JUMPIF                           R7 ; [+3]
       74 JUMPIFNOT                        R1 ; [+2]
       75 LOADNIL                          R8
       76 RETURN                           R8 1
       77 JUMPIFNOT                        R7 ; [+32]
       78 JUMPIFEQ                         R7 R5 ; [+31]
       80 GETTABLEKS                       R9 R3 K2 ["routes"]
       82 GETTABLEKS                       R10 R3 K3 ["index"]
       84 NEWTABLE                         R11 0 0
       86 GETIMPORT                        R12 K13 [ipairs]
       88 MOVE                             R13 R9
       89 CALL                             R12 1 3
       90 FORGPREP_INEXT                   R12
       91 SETTABLE                         R16 R11 R15
       92 FORGLOOP                         R12 2 [inext] ; [-2]
       94 SETTABLE                         R7 R11 R10
       95 MOVE                             R8 R11
       96 GETUPVAL                         R9 8
       97 MOVE                             R10 R2
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K0 ["Dictionary"]
      101 GETTABLEKS                       R11 R11 K1 ["join"]
      103 MOVE                             R12 R3
      104 DUPTABLE                         R13 K14 [{"routes"}]
      105 SETTABLEKS                       R8 R13 K2 ["routes"]
      107 CALL                             R11 2 -1
      108 CALL                             R9 -1 -1
      109 RETURN                           R9 -1
      110 GETTABLEKS                       R8 R0 K15 ["key"]
      112 NOT                              R7 R8
      113 JUMPIF                           R7 ; [+8]
      114 GETTABLEKS                       R8 R0 K15 ["key"]
      116 GETTABLEKS                       R9 R5 K15 ["key"]
      118 JUMPIFEQ                         R8 R9 ; [+2]
      120 LOADB                            R7 0 +1
      121 LOADB                            R7 1
      122 GETTABLEKS                       R8 R0 K8 ["type"]
      124 GETUPVAL                         R9 4
      125 GETTABLEKS                       R9 R9 K16 ["Back"]
      127 JUMPIFNOTEQ                      R8 R9 ; [+7]
      129 JUMPIFNOT                        R7 ; [+4]
      130 GETUPVAL                         R8 9
      131 JUMPIFNOT                        R8 ; [+2]
      132 GETUPVAL                         R4 3
      133 JUMP                             ; [+1]
      134 RETURN                           R3 1
      135 LOADB                            R8 0
      136 GETTABLEKS                       R9 R0 K8 ["type"]
      138 GETUPVAL                         R10 4
      139 GETTABLEKS                       R10 R10 K17 ["Navigate"]
      141 JUMPIFNOTEQ                      R9 R10 ; [+107]
      143 GETIMPORT                        R9 K13 [ipairs]
      145 GETUPVAL                         R10 1
      146 CALL                             R9 1 3
      147 FORGPREP_INEXT                   R9
      148 GETTABLEKS                       R14 R0 K18 ["routeName"]
      150 JUMPIFNOTEQ                      R13 R14 ; [+4]
      152 MOVE                             R4 R12
      153 LOADB                            R8 1
      154 JUMP                             ; [+2]
      155 FORGLOOP                         R9 2 [inext] ; [-8]
      157 JUMPIFNOT                        R8 ; [+91]
      158 GETTABLEKS                       R10 R3 K2 ["routes"]
      160 GETTABLE                         R9 R10 R4
      161 GETUPVAL                         R11 7
      162 GETTABLEKS                       R12 R0 K18 ["routeName"]
      164 GETTABLE                         R10 R11 R12
      165 MOVE                             R11 R9
      166 GETTABLEKS                       R12 R0 K19 ["action"]
      168 JUMPIFNOT                        R12 ; [+9]
      169 JUMPIFNOT                        R10 ; [+8]
      170 GETTABLEKS                       R12 R10 K11 ["getStateForAction"]
      172 GETTABLEKS                       R13 R0 K19 ["action"]
      174 MOVE                             R14 R9
      175 CALL                             R12 2 1
      176 JUMPIFNOT                        R12 ; [+1]
      177 MOVE                             R11 R12
      178 GETTABLEKS                       R12 R0 K10 ["params"]
      180 JUMPIFNOT                        R12 ; [+24]
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K0 ["Dictionary"]
      184 GETTABLEKS                       R12 R12 K1 ["join"]
      186 MOVE                             R13 R11
      187 DUPTABLE                         R14 K20 [{"params"}]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K0 ["Dictionary"]
      191 GETTABLEKS                       R15 R15 K1 ["join"]
      193 GETTABLEKS                       R16 R11 K10 ["params"]
      195 JUMPIF                           R16 ; [+2]
      196 NEWTABLE                         R16 0 0
      198 GETTABLEKS                       R17 R0 K10 ["params"]
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K10 ["params"]
      203 CALL                             R12 2 1
      204 MOVE                             R11 R12
      205 JUMPIFEQ                         R11 R9 ; [+34]
      207 GETTABLEKS                       R13 R3 K2 ["routes"]
      209 MOVE                             R14 R4
      210 MOVE                             R15 R11
      211 NEWTABLE                         R16 0 0
      213 GETIMPORT                        R17 K13 [ipairs]
      215 MOVE                             R18 R13
      216 CALL                             R17 1 3
      217 FORGPREP_INEXT                   R17
      218 SETTABLE                         R21 R16 R20
      219 FORGLOOP                         R17 2 [inext] ; [-2]
      221 SETTABLE                         R15 R16 R14
      222 MOVE                             R12 R16
      223 GETUPVAL                         R13 0
      224 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      226 GETTABLEKS                       R13 R13 K1 ["join"]
      228 MOVE                             R14 R3
      229 DUPTABLE                         R15 K21 [{"routes", "index"}]
      230 SETTABLEKS                       R12 R15 K2 ["routes"]
      232 SETTABLEKS                       R4 R15 K3 ["index"]
      234 CALL                             R13 2 1
      235 GETUPVAL                         R14 8
      236 MOVE                             R15 R2
      237 MOVE                             R16 R13
      238 CALL                             R14 2 -1
      239 RETURN                           R14 -1
      240 JUMPIFNOTEQ                      R11 R9 ; [+8]
      242 GETTABLEKS                       R12 R3 K3 ["index"]
      244 JUMPIFNOTEQ                      R12 R4 ; [+4]
      246 JUMPIFNOT                        R2 ; [+2]
      247 LOADNIL                          R12
      248 RETURN                           R12 1
      249 GETTABLEKS                       R9 R0 K8 ["type"]
      251 GETUPVAL                         R10 4
      252 GETTABLEKS                       R10 R10 K22 ["SetParams"]
      254 JUMPIFNOTEQ                      R9 R10 ; [+73]
      256 GETTABLEKS                       R9 R0 K15 ["key"]
      258 LOADNIL                          R10
      259 LOADNIL                          R11
      260 GETIMPORT                        R12 K13 [ipairs]
      262 GETTABLEKS                       R13 R3 K2 ["routes"]
      264 CALL                             R12 1 3
      265 FORGPREP_INEXT                   R12
      266 GETTABLEKS                       R17 R16 K15 ["key"]
      268 JUMPIFNOTEQ                      R17 R9 ; [+4]
      270 MOVE                             R10 R15
      271 MOVE                             R11 R16
      272 JUMP                             ; [+2]
      273 FORGLOOP                         R12 2 [inext] ; [-8]
      275 JUMPIFNOT                        R11 ; [+52]
      276 GETUPVAL                         R12 0
      277 GETTABLEKS                       R12 R12 K0 ["Dictionary"]
      279 GETTABLEKS                       R12 R12 K1 ["join"]
      281 GETTABLEKS                       R13 R11 K10 ["params"]
      283 JUMPIF                           R13 ; [+2]
      284 NEWTABLE                         R13 0 0
      286 GETTABLEKS                       R14 R0 K10 ["params"]
      288 CALL                             R12 2 1
      289 GETUPVAL                         R13 0
      290 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      292 GETTABLEKS                       R13 R13 K1 ["join"]
      294 MOVE                             R14 R11
      295 DUPTABLE                         R15 K20 [{"params"}]
      296 SETTABLEKS                       R12 R15 K10 ["params"]
      298 CALL                             R13 2 1
      299 GETTABLEKS                       R15 R3 K2 ["routes"]
      301 MOVE                             R16 R10
      302 NEWTABLE                         R17 0 0
      304 GETIMPORT                        R18 K13 [ipairs]
      306 MOVE                             R19 R15
      307 CALL                             R18 1 3
      308 FORGPREP_INEXT                   R18
      309 SETTABLE                         R22 R17 R21
      310 FORGLOOP                         R18 2 [inext] ; [-2]
      312 SETTABLE                         R13 R17 R16
      313 MOVE                             R14 R17
      314 GETUPVAL                         R15 8
      315 MOVE                             R16 R2
      316 GETUPVAL                         R17 0
      317 GETTABLEKS                       R17 R17 K0 ["Dictionary"]
      319 GETTABLEKS                       R17 R17 K1 ["join"]
      321 MOVE                             R18 R3
      322 DUPTABLE                         R19 K14 [{"routes"}]
      323 SETTABLEKS                       R14 R19 K2 ["routes"]
      325 CALL                             R17 2 -1
      326 CALL                             R15 -1 -1
      327 RETURN                           R15 -1
      328 GETTABLEKS                       R9 R3 K3 ["index"]
      330 JUMPIFEQ                         R4 R9 ; [+15]
      332 GETUPVAL                         R9 8
      333 MOVE                             R10 R2
      334 GETUPVAL                         R11 0
      335 GETTABLEKS                       R11 R11 K0 ["Dictionary"]
      337 GETTABLEKS                       R11 R11 K1 ["join"]
      339 MOVE                             R12 R3
      340 DUPTABLE                         R13 K23 [{"index"}]
      341 SETTABLEKS                       R4 R13 K3 ["index"]
      343 CALL                             R11 2 -1
      344 CALL                             R9 -1 -1
      345 RETURN                           R9 -1
      346 JUMPIFNOT                        R8 ; [+2]
      347 JUMPIF                           R1 ; [+1]
      348 RETURN                           R3 1
      349 JUMPIFNOT                        R8 ; [+8]
      350 GETUPVAL                         R9 0
      351 GETTABLEKS                       R9 R9 K0 ["Dictionary"]
      353 GETTABLEKS                       R9 R9 K1 ["join"]
      355 MOVE                             R10 R3
      356 CALL                             R9 1 -1
      357 RETURN                           R9 -1
      358 GETTABLEKS                       R9 R3 K3 ["index"]
      360 GETTABLEKS                       R10 R3 K2 ["routes"]
      362 GETIMPORT                        R11 K13 [ipairs]
      364 GETUPVAL                         R12 1
      365 CALL                             R11 1 3
      366 FORGPREP_INEXT                   R11
      367 JUMPIFEQ                         R14 R9 ; [+33]
      369 GETUPVAL                         R17 7
      370 GETTABLE                         R16 R17 R15
      371 GETTABLE                         R17 R10 R14
      372 JUMPIFNOT                        R16 ; [+6]
      373 GETTABLEKS                       R18 R16 K11 ["getStateForAction"]
      375 MOVE                             R19 R0
      376 MOVE                             R20 R17
      377 CALL                             R18 2 1
      378 MOVE                             R17 R18
      379 JUMPIF                           R17 ; [+2]
      380 MOVE                             R9 R14
      381 JUMP                             ; [+21]
      382 GETTABLE                         R18 R10 R14
      383 JUMPIFEQ                         R17 R18 ; [+17]
      385 MOVE                             R18 R10
      386 MOVE                             R19 R17
      387 NEWTABLE                         R20 0 0
      389 GETIMPORT                        R21 K13 [ipairs]
      391 MOVE                             R22 R18
      392 CALL                             R21 1 3
      393 FORGPREP_INEXT                   R21
      394 SETTABLE                         R25 R20 R24
      395 FORGLOOP                         R21 2 [inext] ; [-2]
      397 SETTABLE                         R19 R20 R14
      398 MOVE                             R10 R20
      399 MOVE                             R9 R14
      400 JUMP                             ; [+2]
      401 FORGLOOP                         R11 2 [inext] ; [-35]
      403 GETTABLEKS                       R12 R0 K8 ["type"]
      405 LOADB                            R11 1
      406 GETUPVAL                         R13 4
      407 GETTABLEKS                       R13 R13 K22 ["SetParams"]
      409 JUMPIFEQ                         R12 R13 ; [+8]
      411 GETUPVAL                         R13 4
      412 GETTABLEKS                       R13 R13 K24 ["CompleteTransition"]
      414 JUMPIFEQ                         R12 R13 ; [+2]
      416 LOADB                            R11 0 +1
      417 LOADB                            R11 1
      418 JUMPIFNOT                        R11 ; [+2]
      419 GETTABLEKS                       R9 R3 K3 ["index"]
      421 GETTABLEKS                       R11 R3 K3 ["index"]
      423 JUMPIFNOTEQ                      R9 R11 ; [+5]
      425 GETTABLEKS                       R11 R3 K2 ["routes"]
      427 JUMPIFEQ                         R10 R11 ; [+17]
      429 GETUPVAL                         R11 8
      430 MOVE                             R12 R2
      431 GETUPVAL                         R13 0
      432 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      434 GETTABLEKS                       R13 R13 K1 ["join"]
      436 MOVE                             R14 R3
      437 DUPTABLE                         R15 K25 [{"index", "routes"}]
      438 SETTABLEKS                       R9 R15 K3 ["index"]
      440 SETTABLEKS                       R10 R15 K2 ["routes"]
      442 CALL                             R13 2 -1
      443 CALL                             R11 -1 -1
      444 RETURN                           R11 -1
      445 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 GETTABLEKS                       R3 R0 K1 ["index"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R1 K2 ["routeName"]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["There is no route defined for index '%d'. Make sure that you passed in a navigation state with a valid tab/screen index."]
       13 GETTABLEKS                       R6 R0 K1 ["index"]
       15 CALL                             R3 3 0
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R2
       18 JUMPIFNOT                        R3 ; [+9]
       19 GETTABLEKS                       R4 R3 K4 ["getComponentForState"]
       21 GETTABLEKS                       R6 R0 K0 ["routes"]
       23 GETTABLEKS                       R7 R0 K1 ["index"]
       25 GETTABLE                         R5 R6 R7
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R2
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 LOADK                            R3 K3 ["config must be a table"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K4 ["routes"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["order"]
       18 JUMPIF                           R2 ; [+7]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       22 GETTABLEKS                       R2 R2 K7 ["keys"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R3 R0 K8 ["getCustomActionCreators"]
       28 JUMPIF                           R3 ; [+1]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R4 R0 K9 ["initialRouteParams"]
       32 JUMPIF                           R4 ; [+2]
       33 NEWTABLE                         R4 0 0
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R6 R0 K10 ["initialRouteName"]
       38 LOADK                            R7 K11 ["initialRouteName must be provided"]
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R6 R0 K12 ["backBehavior"]
       42 JUMPIF                           R6 ; [+3]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K13 ["None"]
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R8 R8 K14 ["InitialRoute"]
       49 JUMPIFEQ                         R6 R8 ; [+2]
       51 LOADB                            R7 0 +1
       52 LOADB                            R7 1
       53 LOADB                            R8 1
       54 GETTABLEKS                       R10 R0 K15 ["resetOnBlur"]
       56 FASTCALL1                        TYPE R10 ; [+2]
       57 GETIMPORT                        R9 K1 [type]
       59 CALL                             R9 1 1
       60 JUMPIFNOTEQKS                    R9 K16 ["boolean"] ; [+3]
       62 GETTABLEKS                       R8 R0 K15 ["resetOnBlur"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K17 ["List"]
       67 GETTABLEKS                       R9 R9 K18 ["find"]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R5
       71 CALL                             R9 2 1
       72 JUMPIFNOTEQKNIL                  R9 ; [+23]
       74 LOADK                            R10 K19 [""]
       75 GETIMPORT                        R11 K21 [ipairs]
       77 MOVE                             R12 R2
       78 CALL                             R11 1 3
       79 FORGPREP_INEXT                   R11
       80 MOVE                             R16 R10
       81 MOVE                             R17 R15
       82 LOADK                            R18 K22 [","]
       83 CONCAT                           R10 R16 R18
       84 FORGLOOP                         R11 2 [inext] ; [-5]
       86 GETIMPORT                        R11 K24 [error]
       88 GETIMPORT                        R12 K27 [string.format]
       90 LOADK                            R13 K28 ["Invalid initialRouteName '%s'. Must be one of [%s]"]
       91 MOVE                             R14 R5
       92 MOVE                             R15 R10
       93 CALL                             R12 3 1
       94 LOADN                            R13 2
       95 CALL                             R11 2 0
       96 GETUPVAL                         R10 5
       97 MOVE                             R11 R1
       98 CALL                             R10 1 1
       99 NEWCLOSURE                       R11 P0
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R1
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          VAL R10
      105 CAPTURE                          UPVAL U6
      106 NEWCLOSURE                       R12 P1
      107 CAPTURE                          REF R8
      108 CAPTURE                          VAL R11
      109 CAPTURE                          UPVAL U2
      110 NEWCLOSURE                       R13 P2
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 DUPTABLE                         R14 K31 [{"childRouters", "getScreenOptions"}]
      116 SETTABLEKS                       R10 R14 K29 ["childRouters"]
      118 GETUPVAL                         R15 7
      119 MOVE                             R16 R1
      120 GETTABLEKS                       R17 R0 K32 ["defaultNavigationOptions"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K30 ["getScreenOptions"]
      125 NEWCLOSURE                       R15 P3
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R15 R14 K33 ["getActionCreators"]
      129 NEWCLOSURE                       R15 P4
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R9
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R7
      140 SETTABLEKS                       R15 R14 K34 ["getStateForAction"]
      142 NEWCLOSURE                       R15 P5
      143 CAPTURE                          UPVAL U0
      144 CAPTURE                          VAL R10
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R15 R14 K35 ["getComponentForState"]
      149 NEWCLOSURE                       R15 P6
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R1
      152 SETTABLEKS                       R15 R14 K36 ["getComponentForRouteName"]
      154 CLOSEUPVALS                      R8
      155 RETURN                           R14 1

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
       22 GETTABLEKS                       R2 R2 K6 ["NavigationActions"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R3 K3 [script]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K7 ["BackBehavior"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K8 ["getScreenForRouteName"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K9 ["createConfigGetter"]
       53 CALL                             R4 1 1
       54 GETIMPORT                        R5 K1 [require]
       56 GETIMPORT                        R6 K3 [script]
       58 GETTABLEKS                       R6 R6 K4 ["Parent"]
       60 GETTABLEKS                       R6 R6 K10 ["validateRouteConfigMap"]
       62 CALL                             R5 1 1
       63 GETIMPORT                        R6 K1 [require]
       65 GETIMPORT                        R7 K3 [script]
       67 GETTABLEKS                       R7 R7 K4 ["Parent"]
       69 GETTABLEKS                       R7 R7 K4 ["Parent"]
       71 GETTABLEKS                       R7 R7 K11 ["utils"]
       73 GETTABLEKS                       R7 R7 K12 ["validate"]
       75 CALL                             R6 1 1
       76 DUPCLOSURE                       R7 K13 [PROTO_0]
       77 DUPCLOSURE                       R8 K14 [PROTO_1]
       78 DUPCLOSURE                       R9 K15 [PROTO_2]
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R10 K16 [PROTO_3]
       81 CAPTURE                          VAL R3
       82 DUPCLOSURE                       R11 K17 [PROTO_4]
       83 CAPTURE                          VAL R0
       84 DUPCLOSURE                       R12 K18 [PROTO_13]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 RETURN                           R12 1
