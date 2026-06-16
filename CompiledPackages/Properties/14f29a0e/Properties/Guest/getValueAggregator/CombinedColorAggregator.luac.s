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
       71 GETTABLEKS                       R7 R1 K0 ["color3"]
       73 GETTABLEKS                       R7 R7 K1 ["R"]
       75 SETTABLEKS                       R7 R6 K11 ["value"]
       77 LOADB                            R7 0
       78 SETTABLEKS                       R7 R6 K21 ["multiple"]
       80 SETTABLEKS                       R6 R5 K12 ["r"]
       82 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       83 GETTABLEKS                       R7 R1 K0 ["color3"]
       85 JUMPIFNOT                        R7 ; [+4]
       86 GETTABLEKS                       R7 R1 K0 ["color3"]
       88 GETTABLEKS                       R7 R7 K5 ["G"]
       90 SETTABLEKS                       R7 R6 K11 ["value"]
       92 LOADB                            R7 0
       93 SETTABLEKS                       R7 R6 K21 ["multiple"]
       95 SETTABLEKS                       R6 R5 K13 ["g"]
       97 DUPTABLE                         R6 K22 [{"value", "multiple"}]
       98 GETTABLEKS                       R7 R1 K0 ["color3"]
      100 JUMPIFNOT                        R7 ; [+4]
      101 GETTABLEKS                       R7 R1 K0 ["color3"]
      103 GETTABLEKS                       R7 R7 K6 ["B"]
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
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R4 R1 K1 ["transparency"]
        4 GETTABLEKS                       R5 R3 K2 ["multiple"]
        6 JUMPIFNOT                        R5 ; [+45]
        7 GETTABLEKS                       R5 R1 K3 ["color3"]
        9 GETTABLEKS                       R5 R5 K2 ["multiple"]
       11 JUMPIFNOT                        R5 ; [+40]
       12 GETTABLEKS                       R5 R1 K4 ["r"]
       14 GETTABLEKS                       R5 R5 K2 ["multiple"]
       16 JUMPIFNOT                        R5 ; [+35]
       17 GETTABLEKS                       R5 R1 K5 ["g"]
       19 GETTABLEKS                       R5 R5 K2 ["multiple"]
       21 JUMPIFNOT                        R5 ; [+30]
       22 GETTABLEKS                       R5 R1 K6 ["b"]
       24 GETTABLEKS                       R5 R5 K2 ["multiple"]
       26 JUMPIFNOT                        R5 ; [+25]
       27 GETTABLEKS                       R5 R1 K7 ["h"]
       29 GETTABLEKS                       R5 R5 K2 ["multiple"]
       31 JUMPIFNOT                        R5 ; [+20]
       32 GETTABLEKS                       R5 R1 K8 ["s"]
       34 GETTABLEKS                       R5 R5 K2 ["multiple"]
       36 JUMPIFNOT                        R5 ; [+15]
       37 GETTABLEKS                       R5 R1 K9 ["v"]
       39 GETTABLEKS                       R5 R5 K2 ["multiple"]
       41 JUMPIFNOT                        R5 ; [+10]
       42 GETTABLEKS                       R5 R1 K10 ["brickColor"]
       44 GETTABLEKS                       R5 R5 K2 ["multiple"]
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETTABLEKS                       R5 R4 K2 ["multiple"]
       49 JUMPIFNOT                        R5 ; [+2]
       50 LOADB                            R5 1
       51 RETURN                           R5 1
       52 GETTABLEKS                       R5 R1 K3 ["color3"]
       54 GETTABLEKS                       R5 R5 K2 ["multiple"]
       56 JUMPIF                           R5 ; [+20]
       57 GETTABLEKS                       R5 R2 K3 ["color3"]
       59 JUMPIFEQKNIL                     R5 ; [+17]
       61 GETTABLEKS                       R5 R2 K3 ["color3"]
       63 GETTABLEKS                       R6 R1 K3 ["color3"]
       65 GETTABLEKS                       R6 R6 K0 ["value"]
       67 JUMPIFEQ                         R5 R6 ; [+9]
       69 GETTABLEKS                       R5 R1 K3 ["color3"]
       71 LOADB                            R6 1
       72 SETTABLEKS                       R6 R5 K2 ["multiple"]
       74 LOADB                            R5 1
       75 SETTABLEKS                       R5 R3 K2 ["multiple"]
       77 GETTABLEKS                       R5 R1 K4 ["r"]
       79 GETTABLEKS                       R5 R5 K2 ["multiple"]
       81 JUMPIF                           R5 ; [+22]
       82 GETTABLEKS                       R5 R2 K3 ["color3"]
       84 JUMPIFEQKNIL                     R5 ; [+19]
       86 GETTABLEKS                       R5 R2 K3 ["color3"]
       88 GETTABLEKS                       R5 R5 K11 ["R"]
       90 GETTABLEKS                       R6 R1 K4 ["r"]
       92 GETTABLEKS                       R6 R6 K0 ["value"]
       94 JUMPIFEQ                         R5 R6 ; [+9]
       96 GETTABLEKS                       R5 R1 K4 ["r"]
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R5 K2 ["multiple"]
      101 LOADB                            R5 1
      102 SETTABLEKS                       R5 R3 K2 ["multiple"]
      104 GETTABLEKS                       R5 R1 K5 ["g"]
      106 GETTABLEKS                       R5 R5 K2 ["multiple"]
      108 JUMPIF                           R5 ; [+22]
      109 GETTABLEKS                       R5 R2 K3 ["color3"]
      111 JUMPIFEQKNIL                     R5 ; [+19]
      113 GETTABLEKS                       R5 R2 K3 ["color3"]
      115 GETTABLEKS                       R5 R5 K12 ["G"]
      117 GETTABLEKS                       R6 R1 K5 ["g"]
      119 GETTABLEKS                       R6 R6 K0 ["value"]
      121 JUMPIFEQ                         R5 R6 ; [+9]
      123 GETTABLEKS                       R5 R1 K5 ["g"]
      125 LOADB                            R6 1
      126 SETTABLEKS                       R6 R5 K2 ["multiple"]
      128 LOADB                            R5 1
      129 SETTABLEKS                       R5 R3 K2 ["multiple"]
      131 GETTABLEKS                       R5 R1 K6 ["b"]
      133 GETTABLEKS                       R5 R5 K2 ["multiple"]
      135 JUMPIF                           R5 ; [+22]
      136 GETTABLEKS                       R5 R2 K3 ["color3"]
      138 JUMPIFEQKNIL                     R5 ; [+19]
      140 GETTABLEKS                       R5 R2 K3 ["color3"]
      142 GETTABLEKS                       R5 R5 K13 ["B"]
      144 GETTABLEKS                       R6 R1 K6 ["b"]
      146 GETTABLEKS                       R6 R6 K0 ["value"]
      148 JUMPIFEQ                         R5 R6 ; [+9]
      150 GETTABLEKS                       R5 R1 K6 ["b"]
      152 LOADB                            R6 1
      153 SETTABLEKS                       R6 R5 K2 ["multiple"]
      155 LOADB                            R5 1
      156 SETTABLEKS                       R5 R3 K2 ["multiple"]
      158 GETTABLEKS                       R5 R1 K7 ["h"]
      160 GETTABLEKS                       R5 R5 K2 ["multiple"]
      162 JUMPIF                           R5 ; [+56]
      163 GETTABLEKS                       R5 R2 K3 ["color3"]
      165 JUMPIFEQKNIL                     R5 ; [+53]
      167 GETTABLEKS                       R8 R2 K3 ["color3"]
      169 GETTABLEKS                       R10 R8 K11 ["R"]
      171 LOADN                            R11 0
      172 LOADN                            R12 1
      173 FASTCALL                         MATH_CLAMP ; [+2]
      174 GETIMPORT                        R9 K16 [math.clamp]
      176 CALL                             R9 3 1
      177 GETTABLEKS                       R11 R8 K12 ["G"]
      179 LOADN                            R12 0
      180 LOADN                            R13 1
      181 FASTCALL                         MATH_CLAMP ; [+2]
      182 GETIMPORT                        R10 K16 [math.clamp]
      184 CALL                             R10 3 1
      185 GETTABLEKS                       R12 R8 K13 ["B"]
      187 LOADN                            R13 0
      188 LOADN                            R14 1
      189 FASTCALL                         MATH_CLAMP ; [+2]
      190 GETIMPORT                        R11 K16 [math.clamp]
      192 CALL                             R11 3 1
      193 GETIMPORT                        R12 K19 [Color3.new]
      195 MOVE                             R13 R9
      196 MOVE                             R14 R10
      197 MOVE                             R15 R11
      198 CALL                             R12 3 1
      199 NAMECALL                         R12 R12 K20 ["ToHSV"]
      201 CALL                             R12 1 3
      202 MOVE                             R5 R12
      203 MOVE                             R6 R13
      204 MOVE                             R7 R14
      205 GETTABLEKS                       R8 R1 K7 ["h"]
      207 GETTABLEKS                       R8 R8 K0 ["value"]
      209 JUMPIFEQ                         R5 R8 ; [+9]
      211 GETTABLEKS                       R8 R1 K7 ["h"]
      213 LOADB                            R9 1
      214 SETTABLEKS                       R9 R8 K2 ["multiple"]
      216 LOADB                            R8 1
      217 SETTABLEKS                       R8 R3 K2 ["multiple"]
      219 GETTABLEKS                       R5 R1 K8 ["s"]
      221 GETTABLEKS                       R5 R5 K2 ["multiple"]
      223 JUMPIF                           R5 ; [+56]
      224 GETTABLEKS                       R5 R2 K3 ["color3"]
      226 JUMPIFEQKNIL                     R5 ; [+53]
      228 GETTABLEKS                       R8 R2 K3 ["color3"]
      230 GETTABLEKS                       R10 R8 K11 ["R"]
      232 LOADN                            R11 0
      233 LOADN                            R12 1
      234 FASTCALL                         MATH_CLAMP ; [+2]
      235 GETIMPORT                        R9 K16 [math.clamp]
      237 CALL                             R9 3 1
      238 GETTABLEKS                       R11 R8 K12 ["G"]
      240 LOADN                            R12 0
      241 LOADN                            R13 1
      242 FASTCALL                         MATH_CLAMP ; [+2]
      243 GETIMPORT                        R10 K16 [math.clamp]
      245 CALL                             R10 3 1
      246 GETTABLEKS                       R12 R8 K13 ["B"]
      248 LOADN                            R13 0
      249 LOADN                            R14 1
      250 FASTCALL                         MATH_CLAMP ; [+2]
      251 GETIMPORT                        R11 K16 [math.clamp]
      253 CALL                             R11 3 1
      254 GETIMPORT                        R12 K19 [Color3.new]
      256 MOVE                             R13 R9
      257 MOVE                             R14 R10
      258 MOVE                             R15 R11
      259 CALL                             R12 3 1
      260 NAMECALL                         R12 R12 K20 ["ToHSV"]
      262 CALL                             R12 1 3
      263 MOVE                             R5 R12
      264 MOVE                             R6 R13
      265 MOVE                             R7 R14
      266 GETTABLEKS                       R8 R1 K8 ["s"]
      268 GETTABLEKS                       R8 R8 K0 ["value"]
      270 JUMPIFEQ                         R6 R8 ; [+9]
      272 GETTABLEKS                       R8 R1 K8 ["s"]
      274 LOADB                            R9 1
      275 SETTABLEKS                       R9 R8 K2 ["multiple"]
      277 LOADB                            R8 1
      278 SETTABLEKS                       R8 R3 K2 ["multiple"]
      280 GETTABLEKS                       R5 R1 K9 ["v"]
      282 GETTABLEKS                       R5 R5 K2 ["multiple"]
      284 JUMPIF                           R5 ; [+56]
      285 GETTABLEKS                       R5 R2 K3 ["color3"]
      287 JUMPIFEQKNIL                     R5 ; [+53]
      289 GETTABLEKS                       R8 R2 K3 ["color3"]
      291 GETTABLEKS                       R10 R8 K11 ["R"]
      293 LOADN                            R11 0
      294 LOADN                            R12 1
      295 FASTCALL                         MATH_CLAMP ; [+2]
      296 GETIMPORT                        R9 K16 [math.clamp]
      298 CALL                             R9 3 1
      299 GETTABLEKS                       R11 R8 K12 ["G"]
      301 LOADN                            R12 0
      302 LOADN                            R13 1
      303 FASTCALL                         MATH_CLAMP ; [+2]
      304 GETIMPORT                        R10 K16 [math.clamp]
      306 CALL                             R10 3 1
      307 GETTABLEKS                       R12 R8 K13 ["B"]
      309 LOADN                            R13 0
      310 LOADN                            R14 1
      311 FASTCALL                         MATH_CLAMP ; [+2]
      312 GETIMPORT                        R11 K16 [math.clamp]
      314 CALL                             R11 3 1
      315 GETIMPORT                        R12 K19 [Color3.new]
      317 MOVE                             R13 R9
      318 MOVE                             R14 R10
      319 MOVE                             R15 R11
      320 CALL                             R12 3 1
      321 NAMECALL                         R12 R12 K20 ["ToHSV"]
      323 CALL                             R12 1 3
      324 MOVE                             R5 R12
      325 MOVE                             R6 R13
      326 MOVE                             R7 R14
      327 GETTABLEKS                       R8 R1 K9 ["v"]
      329 GETTABLEKS                       R8 R8 K0 ["value"]
      331 JUMPIFEQ                         R7 R8 ; [+9]
      333 GETTABLEKS                       R8 R1 K9 ["v"]
      335 LOADB                            R9 1
      336 SETTABLEKS                       R9 R8 K2 ["multiple"]
      338 LOADB                            R8 1
      339 SETTABLEKS                       R8 R3 K2 ["multiple"]
      341 GETTABLEKS                       R5 R1 K10 ["brickColor"]
      343 GETTABLEKS                       R5 R5 K2 ["multiple"]
      345 JUMPIF                           R5 ; [+20]
      346 GETTABLEKS                       R5 R2 K10 ["brickColor"]
      348 JUMPIFEQKNIL                     R5 ; [+17]
      350 GETTABLEKS                       R5 R2 K10 ["brickColor"]
      352 GETTABLEKS                       R6 R1 K10 ["brickColor"]
      354 GETTABLEKS                       R6 R6 K0 ["value"]
      356 JUMPIFEQ                         R5 R6 ; [+9]
      358 GETTABLEKS                       R5 R1 K10 ["brickColor"]
      360 LOADB                            R6 1
      361 SETTABLEKS                       R6 R5 K2 ["multiple"]
      363 LOADB                            R5 1
      364 SETTABLEKS                       R5 R3 K2 ["multiple"]
      366 GETTABLEKS                       R5 R4 K2 ["multiple"]
      368 JUMPIF                           R5 ; [+16]
      369 GETTABLEKS                       R5 R2 K1 ["transparency"]
      371 JUMPIFEQKNIL                     R5 ; [+13]
      373 GETTABLEKS                       R5 R2 K1 ["transparency"]
      375 GETTABLEKS                       R6 R4 K0 ["value"]
      377 JUMPIFEQ                         R5 R6 ; [+7]
      379 LOADB                            R5 1
      380 SETTABLEKS                       R5 R4 K2 ["multiple"]
      382 LOADB                            R5 1
      383 SETTABLEKS                       R5 R3 K2 ["multiple"]
      385 GETTABLEKS                       R5 R3 K2 ["multiple"]
      387 JUMPIFNOT                        R5 ; [+42]
      388 GETTABLEKS                       R5 R1 K3 ["color3"]
      390 GETTABLEKS                       R5 R5 K2 ["multiple"]
      392 JUMPIFNOT                        R5 ; [+37]
      393 GETTABLEKS                       R5 R1 K4 ["r"]
      395 GETTABLEKS                       R5 R5 K2 ["multiple"]
      397 JUMPIFNOT                        R5 ; [+32]
      398 GETTABLEKS                       R5 R1 K5 ["g"]
      400 GETTABLEKS                       R5 R5 K2 ["multiple"]
      402 JUMPIFNOT                        R5 ; [+27]
      403 GETTABLEKS                       R5 R1 K6 ["b"]
      405 GETTABLEKS                       R5 R5 K2 ["multiple"]
      407 JUMPIFNOT                        R5 ; [+22]
      408 GETTABLEKS                       R5 R1 K7 ["h"]
      410 GETTABLEKS                       R5 R5 K2 ["multiple"]
      412 JUMPIFNOT                        R5 ; [+17]
      413 GETTABLEKS                       R5 R1 K8 ["s"]
      415 GETTABLEKS                       R5 R5 K2 ["multiple"]
      417 JUMPIFNOT                        R5 ; [+12]
      418 GETTABLEKS                       R5 R1 K9 ["v"]
      420 GETTABLEKS                       R5 R5 K2 ["multiple"]
      422 JUMPIFNOT                        R5 ; [+7]
      423 GETTABLEKS                       R5 R4 K2 ["multiple"]
      425 JUMPIFNOT                        R5 ; [+4]
      426 GETTABLEKS                       R5 R1 K10 ["brickColor"]
      428 GETTABLEKS                       R5 R5 K2 ["multiple"]
      430 RETURN                           R5 1

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
       97 GETTABLEKS                       R12 R9 K1 ["color3"]
       99 GETTABLEKS                       R12 R12 K17 ["G"]
      101 GETTABLEKS                       R13 R9 K1 ["color3"]
      103 GETTABLEKS                       R13 R13 K18 ["B"]
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
      146 GETTABLEKS                       R11 R9 K1 ["color3"]
      148 GETTABLEKS                       R11 R11 K21 ["R"]
      150 MOVE                             R12 R5
      151 GETTABLEKS                       R13 R9 K1 ["color3"]
      153 GETTABLEKS                       R13 R13 K18 ["B"]
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
      196 GETTABLEKS                       R11 R9 K1 ["color3"]
      198 GETTABLEKS                       R11 R11 K21 ["R"]
      200 GETTABLEKS                       R12 R9 K1 ["color3"]
      202 GETTABLEKS                       R12 R12 K17 ["G"]
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
