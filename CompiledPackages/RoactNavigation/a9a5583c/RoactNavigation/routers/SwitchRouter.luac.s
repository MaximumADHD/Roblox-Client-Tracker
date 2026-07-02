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
        0 DUPTABLE                         R0 K4 [{[1], ["index"], ["isTransitioning"] = False}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["List"]
        4 GETTABLEKS                       R1 R1 K6 ["map"]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K0 ["routes"]
       11 GETUPVAL                         R1 3
       12 SETTABLEKS                       R1 R0 K1 ["index"]
       14 RETURN                           R0 1

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
       11 JUMPIF                           R3 ; [+14]
       12 DUPTABLE                         R3 K6 [{["routes"], ["index"], ["isTransitioning"] = False}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["List"]
       16 GETTABLEKS                       R4 R4 K8 ["map"]
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K2 ["routes"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K3 ["index"]
       26 GETTABLEKS                       R4 R3 K3 ["index"]
       28 GETTABLEKS                       R5 R0 K9 ["type"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K10 ["Init"]
       33 JUMPIFNOTEQ                      R5 R6 ; [+19]
       35 GETTABLEKS                       R5 R0 K11 ["params"]
       37 JUMPIFNOT                        R5 ; [+15]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K7 ["List"]
       41 GETTABLEKS                       R6 R6 K8 ["map"]
       43 GETTABLEKS                       R7 R3 K2 ["routes"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R5
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R3 K2 ["routes"]
       53 GETTABLEKS                       R6 R3 K2 ["routes"]
       55 GETTABLEKS                       R7 R3 K3 ["index"]
       57 GETTABLE                         R5 R6 R7
       58 GETUPVAL                         R7 7
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R10 R3 K3 ["index"]
       62 GETTABLE                         R8 R9 R10
       63 GETTABLE                         R6 R7 R8
       64 JUMPIFNOT                        R6 ; [+42]
       65 GETTABLEKS                       R7 R6 K12 ["getStateForAction"]
       67 MOVE                             R8 R0
       68 MOVE                             R9 R5
       69 CALL                             R7 2 1
       70 JUMPIF                           R7 ; [+3]
       71 JUMPIFNOT                        R1 ; [+2]
       72 LOADNIL                          R8
       73 RETURN                           R8 1
       74 JUMPIFNOT                        R7 ; [+32]
       75 JUMPIFEQ                         R7 R5 ; [+31]
       77 GETTABLEKS                       R9 R3 K2 ["routes"]
       79 GETTABLEKS                       R10 R3 K3 ["index"]
       81 NEWTABLE                         R11 0 0
       83 GETIMPORT                        R12 K14 [ipairs]
       85 MOVE                             R13 R9
       86 CALL                             R12 1 3
       87 FORGPREP_INEXT                   R12
       88 SETTABLE                         R16 R11 R15
       89 FORGLOOP                         R12 2 [inext] ; [-2]
       91 SETTABLE                         R7 R11 R10
       92 MOVE                             R8 R11
       93 GETUPVAL                         R9 8
       94 MOVE                             R10 R2
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K0 ["Dictionary"]
       98 GETTABLEKS                       R11 R11 K1 ["join"]
      100 MOVE                             R12 R3
      101 DUPTABLE                         R13 K15 [{"routes"}]
      102 SETTABLEKS                       R8 R13 K2 ["routes"]
      104 CALL                             R11 2 -1
      105 CALL                             R9 -1 -1
      106 RETURN                           R9 -1
      107 GETTABLEKS                       R8 R0 K16 ["key"]
      109 NOT                              R7 R8
      110 JUMPIF                           R7 ; [+8]
      111 GETTABLEKS                       R8 R0 K16 ["key"]
      113 GETTABLEKS                       R9 R5 K16 ["key"]
      115 JUMPIFEQ                         R8 R9 ; [+2]
      117 LOADB                            R7 0 +1
      118 LOADB                            R7 1
      119 GETTABLEKS                       R8 R0 K9 ["type"]
      121 GETUPVAL                         R9 4
      122 GETTABLEKS                       R9 R9 K17 ["Back"]
      124 JUMPIFNOTEQ                      R8 R9 ; [+7]
      126 JUMPIFNOT                        R7 ; [+4]
      127 GETUPVAL                         R8 9
      128 JUMPIFNOT                        R8 ; [+2]
      129 GETUPVAL                         R4 3
      130 JUMP                             ; [+1]
      131 RETURN                           R3 1
      132 LOADB                            R8 0
      133 GETTABLEKS                       R9 R0 K9 ["type"]
      135 GETUPVAL                         R10 4
      136 GETTABLEKS                       R10 R10 K18 ["Navigate"]
      138 JUMPIFNOTEQ                      R9 R10 ; [+107]
      140 GETIMPORT                        R9 K14 [ipairs]
      142 GETUPVAL                         R10 1
      143 CALL                             R9 1 3
      144 FORGPREP_INEXT                   R9
      145 GETTABLEKS                       R14 R0 K19 ["routeName"]
      147 JUMPIFNOTEQ                      R13 R14 ; [+4]
      149 MOVE                             R4 R12
      150 LOADB                            R8 1
      151 JUMP                             ; [+2]
      152 FORGLOOP                         R9 2 [inext] ; [-8]
      154 JUMPIFNOT                        R8 ; [+91]
      155 GETTABLEKS                       R10 R3 K2 ["routes"]
      157 GETTABLE                         R9 R10 R4
      158 GETUPVAL                         R11 7
      159 GETTABLEKS                       R12 R0 K19 ["routeName"]
      161 GETTABLE                         R10 R11 R12
      162 MOVE                             R11 R9
      163 GETTABLEKS                       R12 R0 K20 ["action"]
      165 JUMPIFNOT                        R12 ; [+9]
      166 JUMPIFNOT                        R10 ; [+8]
      167 GETTABLEKS                       R12 R10 K12 ["getStateForAction"]
      169 GETTABLEKS                       R13 R0 K20 ["action"]
      171 MOVE                             R14 R9
      172 CALL                             R12 2 1
      173 JUMPIFNOT                        R12 ; [+1]
      174 MOVE                             R11 R12
      175 GETTABLEKS                       R12 R0 K11 ["params"]
      177 JUMPIFNOT                        R12 ; [+24]
      178 GETUPVAL                         R12 0
      179 GETTABLEKS                       R12 R12 K0 ["Dictionary"]
      181 GETTABLEKS                       R12 R12 K1 ["join"]
      183 MOVE                             R13 R11
      184 DUPTABLE                         R14 K21 [{"params"}]
      185 GETUPVAL                         R15 0
      186 GETTABLEKS                       R15 R15 K0 ["Dictionary"]
      188 GETTABLEKS                       R15 R15 K1 ["join"]
      190 GETTABLEKS                       R16 R11 K11 ["params"]
      192 JUMPIF                           R16 ; [+2]
      193 NEWTABLE                         R16 0 0
      195 GETTABLEKS                       R17 R0 K11 ["params"]
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K11 ["params"]
      200 CALL                             R12 2 1
      201 MOVE                             R11 R12
      202 JUMPIFEQ                         R11 R9 ; [+34]
      204 GETTABLEKS                       R13 R3 K2 ["routes"]
      206 MOVE                             R14 R4
      207 MOVE                             R15 R11
      208 NEWTABLE                         R16 0 0
      210 GETIMPORT                        R17 K14 [ipairs]
      212 MOVE                             R18 R13
      213 CALL                             R17 1 3
      214 FORGPREP_INEXT                   R17
      215 SETTABLE                         R21 R16 R20
      216 FORGLOOP                         R17 2 [inext] ; [-2]
      218 SETTABLE                         R15 R16 R14
      219 MOVE                             R12 R16
      220 GETUPVAL                         R13 0
      221 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      223 GETTABLEKS                       R13 R13 K1 ["join"]
      225 MOVE                             R14 R3
      226 DUPTABLE                         R15 K22 [{"routes", "index"}]
      227 SETTABLEKS                       R12 R15 K2 ["routes"]
      229 SETTABLEKS                       R4 R15 K3 ["index"]
      231 CALL                             R13 2 1
      232 GETUPVAL                         R14 8
      233 MOVE                             R15 R2
      234 MOVE                             R16 R13
      235 CALL                             R14 2 -1
      236 RETURN                           R14 -1
      237 JUMPIFNOTEQ                      R11 R9 ; [+8]
      239 GETTABLEKS                       R12 R3 K3 ["index"]
      241 JUMPIFNOTEQ                      R12 R4 ; [+4]
      243 JUMPIFNOT                        R2 ; [+2]
      244 LOADNIL                          R12
      245 RETURN                           R12 1
      246 GETTABLEKS                       R9 R0 K9 ["type"]
      248 GETUPVAL                         R10 4
      249 GETTABLEKS                       R10 R10 K23 ["SetParams"]
      251 JUMPIFNOTEQ                      R9 R10 ; [+73]
      253 GETTABLEKS                       R9 R0 K16 ["key"]
      255 LOADNIL                          R10
      256 LOADNIL                          R11
      257 GETIMPORT                        R12 K14 [ipairs]
      259 GETTABLEKS                       R13 R3 K2 ["routes"]
      261 CALL                             R12 1 3
      262 FORGPREP_INEXT                   R12
      263 GETTABLEKS                       R17 R16 K16 ["key"]
      265 JUMPIFNOTEQ                      R17 R9 ; [+4]
      267 MOVE                             R10 R15
      268 MOVE                             R11 R16
      269 JUMP                             ; [+2]
      270 FORGLOOP                         R12 2 [inext] ; [-8]
      272 JUMPIFNOT                        R11 ; [+52]
      273 GETUPVAL                         R12 0
      274 GETTABLEKS                       R12 R12 K0 ["Dictionary"]
      276 GETTABLEKS                       R12 R12 K1 ["join"]
      278 GETTABLEKS                       R13 R11 K11 ["params"]
      280 JUMPIF                           R13 ; [+2]
      281 NEWTABLE                         R13 0 0
      283 GETTABLEKS                       R14 R0 K11 ["params"]
      285 CALL                             R12 2 1
      286 GETUPVAL                         R13 0
      287 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      289 GETTABLEKS                       R13 R13 K1 ["join"]
      291 MOVE                             R14 R11
      292 DUPTABLE                         R15 K21 [{"params"}]
      293 SETTABLEKS                       R12 R15 K11 ["params"]
      295 CALL                             R13 2 1
      296 GETTABLEKS                       R15 R3 K2 ["routes"]
      298 MOVE                             R16 R10
      299 NEWTABLE                         R17 0 0
      301 GETIMPORT                        R18 K14 [ipairs]
      303 MOVE                             R19 R15
      304 CALL                             R18 1 3
      305 FORGPREP_INEXT                   R18
      306 SETTABLE                         R22 R17 R21
      307 FORGLOOP                         R18 2 [inext] ; [-2]
      309 SETTABLE                         R13 R17 R16
      310 MOVE                             R14 R17
      311 GETUPVAL                         R15 8
      312 MOVE                             R16 R2
      313 GETUPVAL                         R17 0
      314 GETTABLEKS                       R17 R17 K0 ["Dictionary"]
      316 GETTABLEKS                       R17 R17 K1 ["join"]
      318 MOVE                             R18 R3
      319 DUPTABLE                         R19 K15 [{"routes"}]
      320 SETTABLEKS                       R14 R19 K2 ["routes"]
      322 CALL                             R17 2 -1
      323 CALL                             R15 -1 -1
      324 RETURN                           R15 -1
      325 GETTABLEKS                       R9 R3 K3 ["index"]
      327 JUMPIFEQ                         R4 R9 ; [+15]
      329 GETUPVAL                         R9 8
      330 MOVE                             R10 R2
      331 GETUPVAL                         R11 0
      332 GETTABLEKS                       R11 R11 K0 ["Dictionary"]
      334 GETTABLEKS                       R11 R11 K1 ["join"]
      336 MOVE                             R12 R3
      337 DUPTABLE                         R13 K24 [{"index"}]
      338 SETTABLEKS                       R4 R13 K3 ["index"]
      340 CALL                             R11 2 -1
      341 CALL                             R9 -1 -1
      342 RETURN                           R9 -1
      343 JUMPIFNOT                        R8 ; [+2]
      344 JUMPIF                           R1 ; [+1]
      345 RETURN                           R3 1
      346 JUMPIFNOT                        R8 ; [+8]
      347 GETUPVAL                         R9 0
      348 GETTABLEKS                       R9 R9 K0 ["Dictionary"]
      350 GETTABLEKS                       R9 R9 K1 ["join"]
      352 MOVE                             R10 R3
      353 CALL                             R9 1 -1
      354 RETURN                           R9 -1
      355 GETTABLEKS                       R9 R3 K3 ["index"]
      357 GETTABLEKS                       R10 R3 K2 ["routes"]
      359 GETIMPORT                        R11 K14 [ipairs]
      361 GETUPVAL                         R12 1
      362 CALL                             R11 1 3
      363 FORGPREP_INEXT                   R11
      364 JUMPIFEQ                         R14 R9 ; [+33]
      366 GETUPVAL                         R17 7
      367 GETTABLE                         R16 R17 R15
      368 GETTABLE                         R17 R10 R14
      369 JUMPIFNOT                        R16 ; [+6]
      370 GETTABLEKS                       R18 R16 K12 ["getStateForAction"]
      372 MOVE                             R19 R0
      373 MOVE                             R20 R17
      374 CALL                             R18 2 1
      375 MOVE                             R17 R18
      376 JUMPIF                           R17 ; [+2]
      377 MOVE                             R9 R14
      378 JUMP                             ; [+21]
      379 GETTABLE                         R18 R10 R14
      380 JUMPIFEQ                         R17 R18 ; [+17]
      382 MOVE                             R18 R10
      383 MOVE                             R19 R17
      384 NEWTABLE                         R20 0 0
      386 GETIMPORT                        R21 K14 [ipairs]
      388 MOVE                             R22 R18
      389 CALL                             R21 1 3
      390 FORGPREP_INEXT                   R21
      391 SETTABLE                         R25 R20 R24
      392 FORGLOOP                         R21 2 [inext] ; [-2]
      394 SETTABLE                         R19 R20 R14
      395 MOVE                             R10 R20
      396 MOVE                             R9 R14
      397 JUMP                             ; [+2]
      398 FORGLOOP                         R11 2 [inext] ; [-35]
      400 GETTABLEKS                       R12 R0 K9 ["type"]
      402 LOADB                            R11 1
      403 GETUPVAL                         R13 4
      404 GETTABLEKS                       R13 R13 K23 ["SetParams"]
      406 JUMPIFEQ                         R12 R13 ; [+8]
      408 GETUPVAL                         R13 4
      409 GETTABLEKS                       R13 R13 K25 ["CompleteTransition"]
      411 JUMPIFEQ                         R12 R13 ; [+2]
      413 LOADB                            R11 0 +1
      414 LOADB                            R11 1
      415 JUMPIFNOT                        R11 ; [+2]
      416 GETTABLEKS                       R9 R3 K3 ["index"]
      418 GETTABLEKS                       R11 R3 K3 ["index"]
      420 JUMPIFNOTEQ                      R9 R11 ; [+5]
      422 GETTABLEKS                       R11 R3 K2 ["routes"]
      424 JUMPIFEQ                         R10 R11 ; [+17]
      426 GETUPVAL                         R11 8
      427 MOVE                             R12 R2
      428 GETUPVAL                         R13 0
      429 GETTABLEKS                       R13 R13 K0 ["Dictionary"]
      431 GETTABLEKS                       R13 R13 K1 ["join"]
      433 MOVE                             R14 R3
      434 DUPTABLE                         R15 K26 [{"index", "routes"}]
      435 SETTABLEKS                       R9 R15 K3 ["index"]
      437 SETTABLEKS                       R10 R15 K2 ["routes"]
      439 CALL                             R13 2 -1
      440 CALL                             R11 -1 -1
      441 RETURN                           R11 -1
      442 RETURN                           R3 1

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
