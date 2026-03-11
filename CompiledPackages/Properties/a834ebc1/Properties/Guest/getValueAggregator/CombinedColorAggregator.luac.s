PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["R"]
        2 LOADN                            R3 0
        3 LOADN                            R4 1
        4 FASTCALL                         MATH_CLAMP ; [+2]
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R3 R0 K4 ["G"]
       10 LOADN                            R4 0
       11 LOADN                            R5 1
       12 FASTCALL                         MATH_CLAMP ; [+2]
       13 GETIMPORT                        R2 K3 [math.clamp]
       15 CALL                             R2 3 1
       16 GETTABLEKS                       R4 R0 K5 ["B"]
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R3 K3 [math.clamp]
       23 CALL                             R3 3 1
       24 GETIMPORT                        R4 K8 [Color3.new]
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 CALL                             R4 3 1
       30 NAMECALL                         R4 R4 K9 ["ToHSV"]
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_1:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETTABLEKS                       R5 R1 K0 ["color3"]
        5 JUMPIFEQKNIL                     R5 ; [+42]
        7 GETTABLEKS                       R8 R1 K0 ["color3"]
        9 GETTABLEKS                       R10 R8 K1 ["R"]
       11 LOADN                            R11 0
       12 LOADN                            R12 1
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R9 K4 [math.clamp]
       16 CALL                             R9 3 1
       17 GETTABLEKS                       R11 R8 K5 ["G"]
       19 LOADN                            R12 0
       20 LOADN                            R13 1
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R10 K4 [math.clamp]
       24 CALL                             R10 3 1
       25 GETTABLEKS                       R12 R8 K6 ["B"]
       27 LOADN                            R13 0
       28 LOADN                            R14 1
       29 FASTCALL                         MATH_CLAMP ; [+2]
       30 GETIMPORT                        R11 K4 [math.clamp]
       32 CALL                             R11 3 1
       33 GETIMPORT                        R12 K9 [Color3.new]
       35 MOVE                             R13 R9
       36 MOVE                             R14 R10
       37 MOVE                             R15 R11
       38 CALL                             R12 3 1
       39 NAMECALL                         R12 R12 K10 ["ToHSV"]
       41 CALL                             R12 1 3
       42 MOVE                             R5 R12
       43 MOVE                             R6 R13
       44 MOVE                             R7 R14
       45 MOVE                             R2 R5
       46 MOVE                             R3 R6
       47 MOVE                             R4 R7
       48 DUPTABLE                         R5 K20 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       49 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       50 SETTABLEKS                       R1 R6 K11 ["value"]
       52 LOADB                            R7 0
       53 SETTABLEKS                       R7 R6 K21 ["multiple"]
       55 SETTABLEKS                       R6 R5 K11 ["value"]
       57 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       58 GETTABLEKS                       R7 R1 K0 ["color3"]
       60 SETTABLEKS                       R7 R6 K11 ["value"]
       62 LOADB                            R7 0
       63 SETTABLEKS                       R7 R6 K21 ["multiple"]
       65 SETTABLEKS                       R6 R5 K0 ["color3"]
       67 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       68 GETTABLEKS                       R7 R1 K0 ["color3"]
       70 JUMPIFNOT                        R7 ; [+4]
       71 GETTABLEKS                       R8 R1 K0 ["color3"]
       73 GETTABLEKS                       R7 R8 K1 ["R"]
       75 SETTABLEKS                       R7 R6 K11 ["value"]
       77 LOADB                            R7 0
       78 SETTABLEKS                       R7 R6 K21 ["multiple"]
       80 SETTABLEKS                       R6 R5 K12 ["r"]
       82 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       83 GETTABLEKS                       R7 R1 K0 ["color3"]
       85 JUMPIFNOT                        R7 ; [+4]
       86 GETTABLEKS                       R8 R1 K0 ["color3"]
       88 GETTABLEKS                       R7 R8 K5 ["G"]
       90 SETTABLEKS                       R7 R6 K11 ["value"]
       92 LOADB                            R7 0
       93 SETTABLEKS                       R7 R6 K21 ["multiple"]
       95 SETTABLEKS                       R6 R5 K13 ["g"]
       97 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       98 GETTABLEKS                       R7 R1 K0 ["color3"]
      100 JUMPIFNOT                        R7 ; [+4]
      101 GETTABLEKS                       R8 R1 K0 ["color3"]
      103 GETTABLEKS                       R7 R8 K6 ["B"]
      105 SETTABLEKS                       R7 R6 K11 ["value"]
      107 LOADB                            R7 0
      108 SETTABLEKS                       R7 R6 K21 ["multiple"]
      110 SETTABLEKS                       R6 R5 K14 ["b"]
      112 DUPTABLE                         R6 K22 [{"value", "multiple"}]
      113 SETTABLEKS                       R2 R6 K11 ["value"]
      115 LOADB                            R7 0
      116 SETTABLEKS                       R7 R6 K21 ["multiple"]
      118 SETTABLEKS                       R6 R5 K15 ["h"]
      120 DUPTABLE                         R6 K22 [{"value", "multiple"}]
      121 SETTABLEKS                       R3 R6 K11 ["value"]
      123 LOADB                            R7 0
      124 SETTABLEKS                       R7 R6 K21 ["multiple"]
      126 SETTABLEKS                       R6 R5 K16 ["s"]
      128 DUPTABLE                         R6 K22 [{"value", "multiple"}]
      129 SETTABLEKS                       R4 R6 K11 ["value"]
      131 LOADB                            R7 0
      132 SETTABLEKS                       R7 R6 K21 ["multiple"]
      134 SETTABLEKS                       R6 R5 K17 ["v"]
      136 DUPTABLE                         R6 K22 [{"value", "multiple"}]
      137 GETTABLEKS                       R7 R1 K18 ["brickColor"]
      139 SETTABLEKS                       R7 R6 K11 ["value"]
      141 LOADB                            R7 0
      142 SETTABLEKS                       R7 R6 K21 ["multiple"]
      144 SETTABLEKS                       R6 R5 K18 ["brickColor"]
      146 DUPTABLE                         R6 K22 [{"value", "multiple"}]
      147 GETTABLEKS                       R7 R1 K19 ["transparency"]
      149 SETTABLEKS                       R7 R6 K11 ["value"]
      151 LOADB                            R7 0
      152 SETTABLEKS                       R7 R6 K21 ["multiple"]
      154 SETTABLEKS                       R6 R5 K19 ["transparency"]
      156 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R4 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+47]
        5 GETTABLEKS                       R4 R1 K2 ["color3"]
        7 GETTABLEKS                       R3 R4 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+42]
       10 GETTABLEKS                       R4 R1 K3 ["r"]
       12 GETTABLEKS                       R3 R4 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+37]
       15 GETTABLEKS                       R4 R1 K4 ["g"]
       17 GETTABLEKS                       R3 R4 K1 ["multiple"]
       19 JUMPIFNOT                        R3 ; [+32]
       20 GETTABLEKS                       R4 R1 K5 ["b"]
       22 GETTABLEKS                       R3 R4 K1 ["multiple"]
       24 JUMPIFNOT                        R3 ; [+27]
       25 GETTABLEKS                       R4 R1 K6 ["h"]
       27 GETTABLEKS                       R3 R4 K1 ["multiple"]
       29 JUMPIFNOT                        R3 ; [+22]
       30 GETTABLEKS                       R4 R1 K7 ["s"]
       32 GETTABLEKS                       R3 R4 K1 ["multiple"]
       34 JUMPIFNOT                        R3 ; [+17]
       35 GETTABLEKS                       R4 R1 K8 ["v"]
       37 GETTABLEKS                       R3 R4 K1 ["multiple"]
       39 JUMPIFNOT                        R3 ; [+12]
       40 GETTABLEKS                       R4 R1 K9 ["brickColor"]
       42 GETTABLEKS                       R3 R4 K1 ["multiple"]
       44 JUMPIFNOT                        R3 ; [+7]
       45 GETTABLEKS                       R4 R1 K10 ["transparency"]
       47 GETTABLEKS                       R3 R4 K1 ["multiple"]
       49 JUMPIFNOT                        R3 ; [+2]
       50 LOADB                            R3 1
       51 RETURN                           R3 1
       52 GETTABLEKS                       R4 R1 K2 ["color3"]
       54 GETTABLEKS                       R3 R4 K1 ["multiple"]
       56 JUMPIF                           R3 ; [+22]
       57 GETTABLEKS                       R3 R2 K2 ["color3"]
       59 JUMPIFEQKNIL                     R3 ; [+19]
       61 GETTABLEKS                       R3 R2 K2 ["color3"]
       63 GETTABLEKS                       R5 R1 K2 ["color3"]
       65 GETTABLEKS                       R4 R5 K0 ["value"]
       67 JUMPIFEQ                         R3 R4 ; [+11]
       69 GETTABLEKS                       R3 R1 K2 ["color3"]
       71 LOADB                            R4 1
       72 SETTABLEKS                       R4 R3 K1 ["multiple"]
       74 GETTABLEKS                       R3 R1 K0 ["value"]
       76 LOADB                            R4 1
       77 SETTABLEKS                       R4 R3 K1 ["multiple"]
       79 GETTABLEKS                       R4 R1 K3 ["r"]
       81 GETTABLEKS                       R3 R4 K1 ["multiple"]
       83 JUMPIF                           R3 ; [+24]
       84 GETTABLEKS                       R3 R2 K2 ["color3"]
       86 JUMPIFEQKNIL                     R3 ; [+21]
       88 GETTABLEKS                       R4 R2 K2 ["color3"]
       90 GETTABLEKS                       R3 R4 K11 ["R"]
       92 GETTABLEKS                       R5 R1 K3 ["r"]
       94 GETTABLEKS                       R4 R5 K0 ["value"]
       96 JUMPIFEQ                         R3 R4 ; [+11]
       98 GETTABLEKS                       R3 R1 K3 ["r"]
      100 LOADB                            R4 1
      101 SETTABLEKS                       R4 R3 K1 ["multiple"]
      103 GETTABLEKS                       R3 R1 K0 ["value"]
      105 LOADB                            R4 1
      106 SETTABLEKS                       R4 R3 K1 ["multiple"]
      108 GETTABLEKS                       R4 R1 K4 ["g"]
      110 GETTABLEKS                       R3 R4 K1 ["multiple"]
      112 JUMPIF                           R3 ; [+24]
      113 GETTABLEKS                       R3 R2 K2 ["color3"]
      115 JUMPIFEQKNIL                     R3 ; [+21]
      117 GETTABLEKS                       R4 R2 K2 ["color3"]
      119 GETTABLEKS                       R3 R4 K12 ["G"]
      121 GETTABLEKS                       R5 R1 K4 ["g"]
      123 GETTABLEKS                       R4 R5 K0 ["value"]
      125 JUMPIFEQ                         R3 R4 ; [+11]
      127 GETTABLEKS                       R3 R1 K4 ["g"]
      129 LOADB                            R4 1
      130 SETTABLEKS                       R4 R3 K1 ["multiple"]
      132 GETTABLEKS                       R3 R1 K0 ["value"]
      134 LOADB                            R4 1
      135 SETTABLEKS                       R4 R3 K1 ["multiple"]
      137 GETTABLEKS                       R4 R1 K5 ["b"]
      139 GETTABLEKS                       R3 R4 K1 ["multiple"]
      141 JUMPIF                           R3 ; [+24]
      142 GETTABLEKS                       R3 R2 K2 ["color3"]
      144 JUMPIFEQKNIL                     R3 ; [+21]
      146 GETTABLEKS                       R4 R2 K2 ["color3"]
      148 GETTABLEKS                       R3 R4 K13 ["B"]
      150 GETTABLEKS                       R5 R1 K5 ["b"]
      152 GETTABLEKS                       R4 R5 K0 ["value"]
      154 JUMPIFEQ                         R3 R4 ; [+11]
      156 GETTABLEKS                       R3 R1 K5 ["b"]
      158 LOADB                            R4 1
      159 SETTABLEKS                       R4 R3 K1 ["multiple"]
      161 GETTABLEKS                       R3 R1 K0 ["value"]
      163 LOADB                            R4 1
      164 SETTABLEKS                       R4 R3 K1 ["multiple"]
      166 GETTABLEKS                       R4 R1 K6 ["h"]
      168 GETTABLEKS                       R3 R4 K1 ["multiple"]
      170 JUMPIF                           R3 ; [+58]
      171 GETTABLEKS                       R3 R2 K2 ["color3"]
      173 JUMPIFEQKNIL                     R3 ; [+55]
      175 GETTABLEKS                       R6 R2 K2 ["color3"]
      177 GETTABLEKS                       R8 R6 K11 ["R"]
      179 LOADN                            R9 0
      180 LOADN                            R10 1
      181 FASTCALL                         MATH_CLAMP ; [+2]
      182 GETIMPORT                        R7 K16 [math.clamp]
      184 CALL                             R7 3 1
      185 GETTABLEKS                       R9 R6 K12 ["G"]
      187 LOADN                            R10 0
      188 LOADN                            R11 1
      189 FASTCALL                         MATH_CLAMP ; [+2]
      190 GETIMPORT                        R8 K16 [math.clamp]
      192 CALL                             R8 3 1
      193 GETTABLEKS                       R10 R6 K13 ["B"]
      195 LOADN                            R11 0
      196 LOADN                            R12 1
      197 FASTCALL                         MATH_CLAMP ; [+2]
      198 GETIMPORT                        R9 K16 [math.clamp]
      200 CALL                             R9 3 1
      201 GETIMPORT                        R10 K19 [Color3.new]
      203 MOVE                             R11 R7
      204 MOVE                             R12 R8
      205 MOVE                             R13 R9
      206 CALL                             R10 3 1
      207 NAMECALL                         R10 R10 K20 ["ToHSV"]
      209 CALL                             R10 1 3
      210 MOVE                             R3 R10
      211 MOVE                             R4 R11
      212 MOVE                             R5 R12
      213 GETTABLEKS                       R7 R1 K6 ["h"]
      215 GETTABLEKS                       R6 R7 K0 ["value"]
      217 JUMPIFEQ                         R3 R6 ; [+11]
      219 GETTABLEKS                       R6 R1 K6 ["h"]
      221 LOADB                            R7 1
      222 SETTABLEKS                       R7 R6 K1 ["multiple"]
      224 GETTABLEKS                       R6 R1 K0 ["value"]
      226 LOADB                            R7 1
      227 SETTABLEKS                       R7 R6 K1 ["multiple"]
      229 GETTABLEKS                       R4 R1 K7 ["s"]
      231 GETTABLEKS                       R3 R4 K1 ["multiple"]
      233 JUMPIF                           R3 ; [+58]
      234 GETTABLEKS                       R3 R2 K2 ["color3"]
      236 JUMPIFEQKNIL                     R3 ; [+55]
      238 GETTABLEKS                       R6 R2 K2 ["color3"]
      240 GETTABLEKS                       R8 R6 K11 ["R"]
      242 LOADN                            R9 0
      243 LOADN                            R10 1
      244 FASTCALL                         MATH_CLAMP ; [+2]
      245 GETIMPORT                        R7 K16 [math.clamp]
      247 CALL                             R7 3 1
      248 GETTABLEKS                       R9 R6 K12 ["G"]
      250 LOADN                            R10 0
      251 LOADN                            R11 1
      252 FASTCALL                         MATH_CLAMP ; [+2]
      253 GETIMPORT                        R8 K16 [math.clamp]
      255 CALL                             R8 3 1
      256 GETTABLEKS                       R10 R6 K13 ["B"]
      258 LOADN                            R11 0
      259 LOADN                            R12 1
      260 FASTCALL                         MATH_CLAMP ; [+2]
      261 GETIMPORT                        R9 K16 [math.clamp]
      263 CALL                             R9 3 1
      264 GETIMPORT                        R10 K19 [Color3.new]
      266 MOVE                             R11 R7
      267 MOVE                             R12 R8
      268 MOVE                             R13 R9
      269 CALL                             R10 3 1
      270 NAMECALL                         R10 R10 K20 ["ToHSV"]
      272 CALL                             R10 1 3
      273 MOVE                             R3 R10
      274 MOVE                             R4 R11
      275 MOVE                             R5 R12
      276 GETTABLEKS                       R7 R1 K7 ["s"]
      278 GETTABLEKS                       R6 R7 K0 ["value"]
      280 JUMPIFEQ                         R4 R6 ; [+11]
      282 GETTABLEKS                       R6 R1 K7 ["s"]
      284 LOADB                            R7 1
      285 SETTABLEKS                       R7 R6 K1 ["multiple"]
      287 GETTABLEKS                       R6 R1 K0 ["value"]
      289 LOADB                            R7 1
      290 SETTABLEKS                       R7 R6 K1 ["multiple"]
      292 GETTABLEKS                       R4 R1 K8 ["v"]
      294 GETTABLEKS                       R3 R4 K1 ["multiple"]
      296 JUMPIF                           R3 ; [+58]
      297 GETTABLEKS                       R3 R2 K2 ["color3"]
      299 JUMPIFEQKNIL                     R3 ; [+55]
      301 GETTABLEKS                       R6 R2 K2 ["color3"]
      303 GETTABLEKS                       R8 R6 K11 ["R"]
      305 LOADN                            R9 0
      306 LOADN                            R10 1
      307 FASTCALL                         MATH_CLAMP ; [+2]
      308 GETIMPORT                        R7 K16 [math.clamp]
      310 CALL                             R7 3 1
      311 GETTABLEKS                       R9 R6 K12 ["G"]
      313 LOADN                            R10 0
      314 LOADN                            R11 1
      315 FASTCALL                         MATH_CLAMP ; [+2]
      316 GETIMPORT                        R8 K16 [math.clamp]
      318 CALL                             R8 3 1
      319 GETTABLEKS                       R10 R6 K13 ["B"]
      321 LOADN                            R11 0
      322 LOADN                            R12 1
      323 FASTCALL                         MATH_CLAMP ; [+2]
      324 GETIMPORT                        R9 K16 [math.clamp]
      326 CALL                             R9 3 1
      327 GETIMPORT                        R10 K19 [Color3.new]
      329 MOVE                             R11 R7
      330 MOVE                             R12 R8
      331 MOVE                             R13 R9
      332 CALL                             R10 3 1
      333 NAMECALL                         R10 R10 K20 ["ToHSV"]
      335 CALL                             R10 1 3
      336 MOVE                             R3 R10
      337 MOVE                             R4 R11
      338 MOVE                             R5 R12
      339 GETTABLEKS                       R7 R1 K8 ["v"]
      341 GETTABLEKS                       R6 R7 K0 ["value"]
      343 JUMPIFEQ                         R5 R6 ; [+11]
      345 GETTABLEKS                       R6 R1 K8 ["v"]
      347 LOADB                            R7 1
      348 SETTABLEKS                       R7 R6 K1 ["multiple"]
      350 GETTABLEKS                       R6 R1 K0 ["value"]
      352 LOADB                            R7 1
      353 SETTABLEKS                       R7 R6 K1 ["multiple"]
      355 GETTABLEKS                       R4 R1 K9 ["brickColor"]
      357 GETTABLEKS                       R3 R4 K1 ["multiple"]
      359 JUMPIF                           R3 ; [+22]
      360 GETTABLEKS                       R3 R2 K9 ["brickColor"]
      362 JUMPIFEQKNIL                     R3 ; [+19]
      364 GETTABLEKS                       R3 R2 K9 ["brickColor"]
      366 GETTABLEKS                       R5 R1 K9 ["brickColor"]
      368 GETTABLEKS                       R4 R5 K0 ["value"]
      370 JUMPIFEQ                         R3 R4 ; [+11]
      372 GETTABLEKS                       R3 R1 K9 ["brickColor"]
      374 LOADB                            R4 1
      375 SETTABLEKS                       R4 R3 K1 ["multiple"]
      377 GETTABLEKS                       R3 R1 K0 ["value"]
      379 LOADB                            R4 1
      380 SETTABLEKS                       R4 R3 K1 ["multiple"]
      382 GETTABLEKS                       R4 R1 K10 ["transparency"]
      384 GETTABLEKS                       R3 R4 K1 ["multiple"]
      386 JUMPIF                           R3 ; [+22]
      387 GETTABLEKS                       R3 R2 K10 ["transparency"]
      389 JUMPIFEQKNIL                     R3 ; [+19]
      391 GETTABLEKS                       R3 R2 K10 ["transparency"]
      393 GETTABLEKS                       R5 R1 K10 ["transparency"]
      395 GETTABLEKS                       R4 R5 K0 ["value"]
      397 JUMPIFEQ                         R3 R4 ; [+11]
      399 GETTABLEKS                       R3 R1 K10 ["transparency"]
      401 LOADB                            R4 1
      402 SETTABLEKS                       R4 R3 K1 ["multiple"]
      404 GETTABLEKS                       R3 R1 K0 ["value"]
      406 LOADB                            R4 1
      407 SETTABLEKS                       R4 R3 K1 ["multiple"]
      409 GETTABLEKS                       R4 R1 K0 ["value"]
      411 GETTABLEKS                       R3 R4 K1 ["multiple"]
      413 JUMPIFNOT                        R3 ; [+44]
      414 GETTABLEKS                       R4 R1 K2 ["color3"]
      416 GETTABLEKS                       R3 R4 K1 ["multiple"]
      418 JUMPIFNOT                        R3 ; [+39]
      419 GETTABLEKS                       R4 R1 K3 ["r"]
      421 GETTABLEKS                       R3 R4 K1 ["multiple"]
      423 JUMPIFNOT                        R3 ; [+34]
      424 GETTABLEKS                       R4 R1 K4 ["g"]
      426 GETTABLEKS                       R3 R4 K1 ["multiple"]
      428 JUMPIFNOT                        R3 ; [+29]
      429 GETTABLEKS                       R4 R1 K5 ["b"]
      431 GETTABLEKS                       R3 R4 K1 ["multiple"]
      433 JUMPIFNOT                        R3 ; [+24]
      434 GETTABLEKS                       R4 R1 K6 ["h"]
      436 GETTABLEKS                       R3 R4 K1 ["multiple"]
      438 JUMPIFNOT                        R3 ; [+19]
      439 GETTABLEKS                       R4 R1 K7 ["s"]
      441 GETTABLEKS                       R3 R4 K1 ["multiple"]
      443 JUMPIFNOT                        R3 ; [+14]
      444 GETTABLEKS                       R4 R1 K8 ["v"]
      446 GETTABLEKS                       R3 R4 K1 ["multiple"]
      448 JUMPIFNOT                        R3 ; [+9]
      449 GETTABLEKS                       R4 R1 K10 ["transparency"]
      451 GETTABLEKS                       R3 R4 K1 ["multiple"]
      453 JUMPIFNOT                        R3 ; [+4]
      454 GETTABLEKS                       R4 R1 K9 ["brickColor"]
      456 GETTABLEKS                       R3 R4 K1 ["multiple"]
      458 RETURN                           R3 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R4 K0 ["value"] ; [+8]
        2 MOVE                             R8 R2
        3 MOVE                             R6 R3
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 SETTABLE                         R5 R1 R8
        7 FORNLOOP                         R6
        8 JUMP                             ; [+222]
        9 JUMPIFNOTEQKS                    R4 K1 ["color3"] ; [+24]
       11 MOVE                             R8 R2
       12 MOVE                             R6 R3
       13 LOADN                            R7 1
       14 FORNPREP                         R6
       15 GETIMPORT                        R9 K4 [table.clone]
       17 GETTABLE                         R10 R1 R8
       18 CALL                             R9 1 1
       19 SETTABLEKS                       R5 R9 K1 ["color3"]
       21 GETTABLEKS                       R10 R9 K5 ["brickColor"]
       23 JUMPIFEQKNIL                     R10 ; [+7]
       25 GETIMPORT                        R10 K8 [BrickColor.new]
       27 MOVE                             R11 R5
       28 CALL                             R10 1 1
       29 SETTABLEKS                       R10 R9 K5 ["brickColor"]
       31 SETTABLE                         R9 R1 R8
       32 FORNLOOP                         R6
       33 JUMP                             ; [+197]
       34 JUMPIFNOTEQKS                    R4 K5 ["brickColor"] ; [+22]
       36 MOVE                             R8 R2
       37 MOVE                             R6 R3
       38 LOADN                            R7 1
       39 FORNPREP                         R6
       40 GETIMPORT                        R9 K4 [table.clone]
       42 GETTABLE                         R10 R1 R8
       43 CALL                             R9 1 1
       44 SETTABLEKS                       R5 R9 K5 ["brickColor"]
       46 GETTABLEKS                       R10 R9 K1 ["color3"]
       48 JUMPIFEQKNIL                     R10 ; [+5]
       50 GETTABLEKS                       R10 R5 K9 ["Color"]
       52 SETTABLEKS                       R10 R9 K1 ["color3"]
       54 SETTABLE                         R9 R1 R8
       55 FORNLOOP                         R6
       56 JUMP                             ; [+174]
       57 JUMPIFNOTEQKS                    R4 K10 ["transparency"] ; [+14]
       59 MOVE                             R8 R2
       60 MOVE                             R6 R3
       61 LOADN                            R7 1
       62 FORNPREP                         R6
       63 GETIMPORT                        R9 K4 [table.clone]
       65 GETTABLE                         R10 R1 R8
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R5 R9 K10 ["transparency"]
       69 SETTABLE                         R9 R1 R8
       70 FORNLOOP                         R6
       71 JUMP                             ; [+159]
       72 JUMPIFNOTEQKS                    R4 K11 ["r"] ; [+49]
       74 MOVE                             R8 R2
       75 MOVE                             R6 R3
       76 LOADN                            R7 1
       77 FORNPREP                         R6
       78 GETIMPORT                        R9 K4 [table.clone]
       80 GETTABLE                         R10 R1 R8
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R12 R9 K1 ["color3"]
       84 JUMPIFNOTEQKNIL                  R12 ; [+2]
       86 LOADB                            R11 0 +1
       87 LOADB                            R11 1
       88 FASTCALL2K                       ASSERT R11 K12 ; [+4]
       90 LOADK                            R12 K12 ["Setting r on a CombinedColor without a color3"]
       91 GETIMPORT                        R10 K14 [assert]
       93 CALL                             R10 2 0
       94 GETIMPORT                        R10 K16 [Color3.new]
       96 MOVE                             R11 R5
       97 GETTABLEKS                       R13 R9 K1 ["color3"]
       99 GETTABLEKS                       R12 R13 K17 ["G"]
      101 GETTABLEKS                       R14 R9 K1 ["color3"]
      103 GETTABLEKS                       R13 R14 K18 ["B"]
      105 CALL                             R10 3 1
      106 SETTABLEKS                       R10 R9 K1 ["color3"]
      108 GETTABLEKS                       R10 R9 K5 ["brickColor"]
      110 JUMPIFEQKNIL                     R10 ; [+8]
      112 GETIMPORT                        R10 K8 [BrickColor.new]
      114 GETTABLEKS                       R11 R9 K1 ["color3"]
      116 CALL                             R10 1 1
      117 SETTABLEKS                       R10 R9 K5 ["brickColor"]
      119 SETTABLE                         R9 R1 R8
      120 FORNLOOP                         R6
      121 JUMP                             ; [+109]
      122 JUMPIFNOTEQKS                    R4 K19 ["g"] ; [+49]
      124 MOVE                             R8 R2
      125 MOVE                             R6 R3
      126 LOADN                            R7 1
      127 FORNPREP                         R6
      128 GETIMPORT                        R9 K4 [table.clone]
      130 GETTABLE                         R10 R1 R8
      131 CALL                             R9 1 1
      132 GETTABLEKS                       R12 R9 K1 ["color3"]
      134 JUMPIFNOTEQKNIL                  R12 ; [+2]
      136 LOADB                            R11 0 +1
      137 LOADB                            R11 1
      138 FASTCALL2K                       ASSERT R11 K20 ; [+4]
      140 LOADK                            R12 K20 ["Setting g on a CombinedColor without a color3"]
      141 GETIMPORT                        R10 K14 [assert]
      143 CALL                             R10 2 0
      144 GETIMPORT                        R10 K16 [Color3.new]
      146 GETTABLEKS                       R12 R9 K1 ["color3"]
      148 GETTABLEKS                       R11 R12 K21 ["R"]
      150 MOVE                             R12 R5
      151 GETTABLEKS                       R14 R9 K1 ["color3"]
      153 GETTABLEKS                       R13 R14 K18 ["B"]
      155 CALL                             R10 3 1
      156 SETTABLEKS                       R10 R9 K1 ["color3"]
      158 GETTABLEKS                       R10 R9 K5 ["brickColor"]
      160 JUMPIFEQKNIL                     R10 ; [+8]
      162 GETIMPORT                        R10 K8 [BrickColor.new]
      164 GETTABLEKS                       R11 R9 K1 ["color3"]
      166 CALL                             R10 1 1
      167 SETTABLEKS                       R10 R9 K5 ["brickColor"]
      169 SETTABLE                         R9 R1 R8
      170 FORNLOOP                         R6
      171 JUMP                             ; [+59]
      172 JUMPIFNOTEQKS                    R4 K22 ["b"] ; [+49]
      174 MOVE                             R8 R2
      175 MOVE                             R6 R3
      176 LOADN                            R7 1
      177 FORNPREP                         R6
      178 GETIMPORT                        R9 K4 [table.clone]
      180 GETTABLE                         R10 R1 R8
      181 CALL                             R9 1 1
      182 GETTABLEKS                       R12 R9 K1 ["color3"]
      184 JUMPIFNOTEQKNIL                  R12 ; [+2]
      186 LOADB                            R11 0 +1
      187 LOADB                            R11 1
      188 FASTCALL2K                       ASSERT R11 K23 ; [+4]
      190 LOADK                            R12 K23 ["Setting b on a CombinedColor without a color3"]
      191 GETIMPORT                        R10 K14 [assert]
      193 CALL                             R10 2 0
      194 GETIMPORT                        R10 K16 [Color3.new]
      196 GETTABLEKS                       R12 R9 K1 ["color3"]
      198 GETTABLEKS                       R11 R12 K21 ["R"]
      200 GETTABLEKS                       R13 R9 K1 ["color3"]
      202 GETTABLEKS                       R12 R13 K17 ["G"]
      204 MOVE                             R13 R5
      205 CALL                             R10 3 1
      206 SETTABLEKS                       R10 R9 K1 ["color3"]
      208 GETTABLEKS                       R10 R9 K5 ["brickColor"]
      210 JUMPIFEQKNIL                     R10 ; [+8]
      212 GETIMPORT                        R10 K8 [BrickColor.new]
      214 GETTABLEKS                       R11 R9 K1 ["color3"]
      216 CALL                             R10 1 1
      217 SETTABLEKS                       R10 R9 K5 ["brickColor"]
      219 SETTABLE                         R9 R1 R8
      220 FORNLOOP                         R6
      221 JUMP                             ; [+9]
      222 GETIMPORT                        R6 K25 [error]
      224 LOADK                            R8 K26 ["Unexpected CombinedColor part: %*"]
      225 MOVE                             R10 R4
      226 NAMECALL                         R8 R8 K27 ["format"]
      228 CALL                             R8 2 1
      229 MOVE                             R7 R8
      230 CALL                             R6 1 0
      231 LOADNIL                          R6
      232 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["RpcTypes"]
       21 CALL                             R3 1 1
       22 DUPCLOSURE                       R4 K9 [PROTO_0]
       23 DUPCLOSURE                       R5 K10 [PROTO_1]
       24 DUPCLOSURE                       R6 K11 [PROTO_2]
       25 DUPCLOSURE                       R7 K12 [PROTO_3]
       26 DUPTABLE                         R8 K16 [{"initParts", "addToAggregation", "setPart"}]
       27 SETTABLEKS                       R5 R8 K13 ["initParts"]
       29 SETTABLEKS                       R6 R8 K14 ["addToAggregation"]
       31 SETTABLEKS                       R7 R8 K15 ["setPart"]
       33 RETURN                           R8 1
