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
        0 GETTABLEKS                       R5 R1 K0 ["color3"]
        2 GETTABLEKS                       R7 R5 K1 ["R"]
        4 LOADN                            R8 0
        5 LOADN                            R9 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R6 K4 [math.clamp]
        9 CALL                             R6 3 1
       10 GETTABLEKS                       R8 R5 K5 ["G"]
       12 LOADN                            R9 0
       13 LOADN                            R10 1
       14 FASTCALL                         MATH_CLAMP ; [+2]
       15 GETIMPORT                        R7 K4 [math.clamp]
       17 CALL                             R7 3 1
       18 GETTABLEKS                       R9 R5 K6 ["B"]
       20 LOADN                            R10 0
       21 LOADN                            R11 1
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R8 K4 [math.clamp]
       25 CALL                             R8 3 1
       26 GETIMPORT                        R9 K9 [Color3.new]
       28 MOVE                             R10 R6
       29 MOVE                             R11 R7
       30 MOVE                             R12 R8
       31 CALL                             R9 3 1
       32 NAMECALL                         R9 R9 K10 ["ToHSV"]
       34 CALL                             R9 1 3
       35 MOVE                             R2 R9
       36 MOVE                             R3 R10
       37 MOVE                             R4 R11
       38 DUPTABLE                         R5 K20 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       39 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       40 SETTABLEKS                       R1 R6 K11 ["value"]
       42 SETTABLEKS                       R6 R5 K11 ["value"]
       44 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       45 GETTABLEKS                       R7 R1 K0 ["color3"]
       47 SETTABLEKS                       R7 R6 K11 ["value"]
       49 SETTABLEKS                       R6 R5 K0 ["color3"]
       51 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       52 GETTABLEKS                       R7 R1 K0 ["color3"]
       54 JUMPIFNOT                        R7 ; [+4]
       55 GETTABLEKS                       R7 R1 K0 ["color3"]
       57 GETTABLEKS                       R7 R7 K1 ["R"]
       59 SETTABLEKS                       R7 R6 K11 ["value"]
       61 SETTABLEKS                       R6 R5 K12 ["r"]
       63 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       64 GETTABLEKS                       R7 R1 K0 ["color3"]
       66 JUMPIFNOT                        R7 ; [+4]
       67 GETTABLEKS                       R7 R1 K0 ["color3"]
       69 GETTABLEKS                       R7 R7 K5 ["G"]
       71 SETTABLEKS                       R7 R6 K11 ["value"]
       73 SETTABLEKS                       R6 R5 K13 ["g"]
       75 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       76 GETTABLEKS                       R7 R1 K0 ["color3"]
       78 JUMPIFNOT                        R7 ; [+4]
       79 GETTABLEKS                       R7 R1 K0 ["color3"]
       81 GETTABLEKS                       R7 R7 K6 ["B"]
       83 SETTABLEKS                       R7 R6 K11 ["value"]
       85 SETTABLEKS                       R6 R5 K14 ["b"]
       87 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       88 SETTABLEKS                       R2 R6 K11 ["value"]
       90 SETTABLEKS                       R6 R5 K15 ["h"]
       92 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       93 SETTABLEKS                       R3 R6 K11 ["value"]
       95 SETTABLEKS                       R6 R5 K16 ["s"]
       97 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
       98 SETTABLEKS                       R4 R6 K11 ["value"]
      100 SETTABLEKS                       R6 R5 K17 ["v"]
      102 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
      103 GETIMPORT                        R7 K25 [BrickColor.new]
      105 GETTABLEKS                       R8 R1 K0 ["color3"]
      107 CALL                             R7 1 1
      108 SETTABLEKS                       R7 R6 K11 ["value"]
      110 SETTABLEKS                       R6 R5 K18 ["brickColor"]
      112 DUPTABLE                         R6 K23 [{["value"], ["multiple"] = False}]
      113 GETTABLEKS                       R7 R1 K19 ["transparency"]
      115 SETTABLEKS                       R7 R6 K11 ["value"]
      117 SETTABLEKS                       R6 R5 K19 ["transparency"]
      119 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R3 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+47]
        5 GETTABLEKS                       R3 R1 K2 ["color3"]
        7 GETTABLEKS                       R3 R3 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+42]
       10 GETTABLEKS                       R3 R1 K3 ["r"]
       12 GETTABLEKS                       R3 R3 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+37]
       15 GETTABLEKS                       R3 R1 K4 ["g"]
       17 GETTABLEKS                       R3 R3 K1 ["multiple"]
       19 JUMPIFNOT                        R3 ; [+32]
       20 GETTABLEKS                       R3 R1 K5 ["b"]
       22 GETTABLEKS                       R3 R3 K1 ["multiple"]
       24 JUMPIFNOT                        R3 ; [+27]
       25 GETTABLEKS                       R3 R1 K6 ["h"]
       27 GETTABLEKS                       R3 R3 K1 ["multiple"]
       29 JUMPIFNOT                        R3 ; [+22]
       30 GETTABLEKS                       R3 R1 K7 ["s"]
       32 GETTABLEKS                       R3 R3 K1 ["multiple"]
       34 JUMPIFNOT                        R3 ; [+17]
       35 GETTABLEKS                       R3 R1 K8 ["v"]
       37 GETTABLEKS                       R3 R3 K1 ["multiple"]
       39 JUMPIFNOT                        R3 ; [+12]
       40 GETTABLEKS                       R3 R1 K9 ["brickColor"]
       42 GETTABLEKS                       R3 R3 K1 ["multiple"]
       44 JUMPIFNOT                        R3 ; [+7]
       45 GETTABLEKS                       R3 R1 K10 ["transparency"]
       47 GETTABLEKS                       R3 R3 K1 ["multiple"]
       49 JUMPIFNOT                        R3 ; [+2]
       50 LOADB                            R3 1
       51 RETURN                           R3 1
       52 GETTABLEKS                       R3 R1 K2 ["color3"]
       54 GETTABLEKS                       R3 R3 K1 ["multiple"]
       56 JUMPIF                           R3 ; [+14]
       57 GETTABLEKS                       R3 R2 K2 ["color3"]
       59 GETTABLEKS                       R4 R1 K2 ["color3"]
       61 GETTABLEKS                       R4 R4 K0 ["value"]
       63 JUMPIFEQ                         R3 R4 ; [+7]
       65 GETUPVAL                         R3 0
       66 SETTABLEKS                       R3 R1 K2 ["color3"]
       68 GETUPVAL                         R3 0
       69 SETTABLEKS                       R3 R1 K0 ["value"]
       71 GETTABLEKS                       R3 R1 K3 ["r"]
       73 GETTABLEKS                       R3 R3 K1 ["multiple"]
       75 JUMPIF                           R3 ; [+16]
       76 GETTABLEKS                       R3 R2 K2 ["color3"]
       78 GETTABLEKS                       R3 R3 K11 ["R"]
       80 GETTABLEKS                       R4 R1 K3 ["r"]
       82 GETTABLEKS                       R4 R4 K0 ["value"]
       84 JUMPIFEQ                         R3 R4 ; [+7]
       86 GETUPVAL                         R3 0
       87 SETTABLEKS                       R3 R1 K3 ["r"]
       89 GETUPVAL                         R3 0
       90 SETTABLEKS                       R3 R1 K0 ["value"]
       92 GETTABLEKS                       R3 R1 K4 ["g"]
       94 GETTABLEKS                       R3 R3 K1 ["multiple"]
       96 JUMPIF                           R3 ; [+16]
       97 GETTABLEKS                       R3 R2 K2 ["color3"]
       99 GETTABLEKS                       R3 R3 K12 ["G"]
      101 GETTABLEKS                       R4 R1 K4 ["g"]
      103 GETTABLEKS                       R4 R4 K0 ["value"]
      105 JUMPIFEQ                         R3 R4 ; [+7]
      107 GETUPVAL                         R3 0
      108 SETTABLEKS                       R3 R1 K4 ["g"]
      110 GETUPVAL                         R3 0
      111 SETTABLEKS                       R3 R1 K0 ["value"]
      113 GETTABLEKS                       R3 R1 K5 ["b"]
      115 GETTABLEKS                       R3 R3 K1 ["multiple"]
      117 JUMPIF                           R3 ; [+16]
      118 GETTABLEKS                       R3 R2 K2 ["color3"]
      120 GETTABLEKS                       R3 R3 K13 ["B"]
      122 GETTABLEKS                       R4 R1 K5 ["b"]
      124 GETTABLEKS                       R4 R4 K0 ["value"]
      126 JUMPIFEQ                         R3 R4 ; [+7]
      128 GETUPVAL                         R3 0
      129 SETTABLEKS                       R3 R1 K5 ["b"]
      131 GETUPVAL                         R3 0
      132 SETTABLEKS                       R3 R1 K0 ["value"]
      134 GETTABLEKS                       R3 R1 K6 ["h"]
      136 GETTABLEKS                       R3 R3 K1 ["multiple"]
      138 JUMPIF                           R3 ; [+50]
      139 GETTABLEKS                       R6 R2 K2 ["color3"]
      141 GETTABLEKS                       R8 R6 K11 ["R"]
      143 LOADN                            R9 0
      144 LOADN                            R10 1
      145 FASTCALL                         MATH_CLAMP ; [+2]
      146 GETIMPORT                        R7 K16 [math.clamp]
      148 CALL                             R7 3 1
      149 GETTABLEKS                       R9 R6 K12 ["G"]
      151 LOADN                            R10 0
      152 LOADN                            R11 1
      153 FASTCALL                         MATH_CLAMP ; [+2]
      154 GETIMPORT                        R8 K16 [math.clamp]
      156 CALL                             R8 3 1
      157 GETTABLEKS                       R10 R6 K13 ["B"]
      159 LOADN                            R11 0
      160 LOADN                            R12 1
      161 FASTCALL                         MATH_CLAMP ; [+2]
      162 GETIMPORT                        R9 K16 [math.clamp]
      164 CALL                             R9 3 1
      165 GETIMPORT                        R10 K19 [Color3.new]
      167 MOVE                             R11 R7
      168 MOVE                             R12 R8
      169 MOVE                             R13 R9
      170 CALL                             R10 3 1
      171 NAMECALL                         R10 R10 K20 ["ToHSV"]
      173 CALL                             R10 1 3
      174 MOVE                             R3 R10
      175 MOVE                             R4 R11
      176 MOVE                             R5 R12
      177 GETTABLEKS                       R6 R1 K6 ["h"]
      179 GETTABLEKS                       R6 R6 K0 ["value"]
      181 JUMPIFEQ                         R3 R6 ; [+7]
      183 GETUPVAL                         R6 0
      184 SETTABLEKS                       R6 R1 K6 ["h"]
      186 GETUPVAL                         R6 0
      187 SETTABLEKS                       R6 R1 K0 ["value"]
      189 GETTABLEKS                       R3 R1 K7 ["s"]
      191 GETTABLEKS                       R3 R3 K1 ["multiple"]
      193 JUMPIF                           R3 ; [+50]
      194 GETTABLEKS                       R6 R2 K2 ["color3"]
      196 GETTABLEKS                       R8 R6 K11 ["R"]
      198 LOADN                            R9 0
      199 LOADN                            R10 1
      200 FASTCALL                         MATH_CLAMP ; [+2]
      201 GETIMPORT                        R7 K16 [math.clamp]
      203 CALL                             R7 3 1
      204 GETTABLEKS                       R9 R6 K12 ["G"]
      206 LOADN                            R10 0
      207 LOADN                            R11 1
      208 FASTCALL                         MATH_CLAMP ; [+2]
      209 GETIMPORT                        R8 K16 [math.clamp]
      211 CALL                             R8 3 1
      212 GETTABLEKS                       R10 R6 K13 ["B"]
      214 LOADN                            R11 0
      215 LOADN                            R12 1
      216 FASTCALL                         MATH_CLAMP ; [+2]
      217 GETIMPORT                        R9 K16 [math.clamp]
      219 CALL                             R9 3 1
      220 GETIMPORT                        R10 K19 [Color3.new]
      222 MOVE                             R11 R7
      223 MOVE                             R12 R8
      224 MOVE                             R13 R9
      225 CALL                             R10 3 1
      226 NAMECALL                         R10 R10 K20 ["ToHSV"]
      228 CALL                             R10 1 3
      229 MOVE                             R3 R10
      230 MOVE                             R4 R11
      231 MOVE                             R5 R12
      232 GETTABLEKS                       R6 R1 K7 ["s"]
      234 GETTABLEKS                       R6 R6 K0 ["value"]
      236 JUMPIFEQ                         R4 R6 ; [+7]
      238 GETUPVAL                         R6 0
      239 SETTABLEKS                       R6 R1 K7 ["s"]
      241 GETUPVAL                         R6 0
      242 SETTABLEKS                       R6 R1 K0 ["value"]
      244 GETTABLEKS                       R3 R1 K8 ["v"]
      246 GETTABLEKS                       R3 R3 K1 ["multiple"]
      248 JUMPIF                           R3 ; [+50]
      249 GETTABLEKS                       R6 R2 K2 ["color3"]
      251 GETTABLEKS                       R8 R6 K11 ["R"]
      253 LOADN                            R9 0
      254 LOADN                            R10 1
      255 FASTCALL                         MATH_CLAMP ; [+2]
      256 GETIMPORT                        R7 K16 [math.clamp]
      258 CALL                             R7 3 1
      259 GETTABLEKS                       R9 R6 K12 ["G"]
      261 LOADN                            R10 0
      262 LOADN                            R11 1
      263 FASTCALL                         MATH_CLAMP ; [+2]
      264 GETIMPORT                        R8 K16 [math.clamp]
      266 CALL                             R8 3 1
      267 GETTABLEKS                       R10 R6 K13 ["B"]
      269 LOADN                            R11 0
      270 LOADN                            R12 1
      271 FASTCALL                         MATH_CLAMP ; [+2]
      272 GETIMPORT                        R9 K16 [math.clamp]
      274 CALL                             R9 3 1
      275 GETIMPORT                        R10 K19 [Color3.new]
      277 MOVE                             R11 R7
      278 MOVE                             R12 R8
      279 MOVE                             R13 R9
      280 CALL                             R10 3 1
      281 NAMECALL                         R10 R10 K20 ["ToHSV"]
      283 CALL                             R10 1 3
      284 MOVE                             R3 R10
      285 MOVE                             R4 R11
      286 MOVE                             R5 R12
      287 GETTABLEKS                       R6 R1 K8 ["v"]
      289 GETTABLEKS                       R6 R6 K0 ["value"]
      291 JUMPIFEQ                         R5 R6 ; [+7]
      293 GETUPVAL                         R6 0
      294 SETTABLEKS                       R6 R1 K8 ["v"]
      296 GETUPVAL                         R6 0
      297 SETTABLEKS                       R6 R1 K0 ["value"]
      299 GETTABLEKS                       R3 R1 K9 ["brickColor"]
      301 GETTABLEKS                       R3 R3 K1 ["multiple"]
      303 JUMPIF                           R3 ; [+17]
      304 GETIMPORT                        R3 K22 [BrickColor.new]
      306 GETTABLEKS                       R4 R2 K2 ["color3"]
      308 CALL                             R3 1 1
      309 GETTABLEKS                       R4 R1 K9 ["brickColor"]
      311 GETTABLEKS                       R4 R4 K0 ["value"]
      313 JUMPIFEQ                         R3 R4 ; [+7]
      315 GETUPVAL                         R3 0
      316 SETTABLEKS                       R3 R1 K9 ["brickColor"]
      318 GETUPVAL                         R3 0
      319 SETTABLEKS                       R3 R1 K0 ["value"]
      321 GETTABLEKS                       R3 R1 K10 ["transparency"]
      323 GETTABLEKS                       R3 R3 K1 ["multiple"]
      325 JUMPIF                           R3 ; [+14]
      326 GETTABLEKS                       R3 R2 K10 ["transparency"]
      328 GETTABLEKS                       R4 R1 K10 ["transparency"]
      330 GETTABLEKS                       R4 R4 K0 ["value"]
      332 JUMPIFEQ                         R3 R4 ; [+7]
      334 GETUPVAL                         R3 0
      335 SETTABLEKS                       R3 R1 K10 ["transparency"]
      337 GETUPVAL                         R3 0
      338 SETTABLEKS                       R3 R1 K0 ["value"]
      340 GETTABLEKS                       R3 R1 K0 ["value"]
      342 GETTABLEKS                       R3 R3 K1 ["multiple"]
      344 JUMPIFNOT                        R3 ; [+44]
      345 GETTABLEKS                       R3 R1 K2 ["color3"]
      347 GETTABLEKS                       R3 R3 K1 ["multiple"]
      349 JUMPIFNOT                        R3 ; [+39]
      350 GETTABLEKS                       R3 R1 K3 ["r"]
      352 GETTABLEKS                       R3 R3 K1 ["multiple"]
      354 JUMPIFNOT                        R3 ; [+34]
      355 GETTABLEKS                       R3 R1 K4 ["g"]
      357 GETTABLEKS                       R3 R3 K1 ["multiple"]
      359 JUMPIFNOT                        R3 ; [+29]
      360 GETTABLEKS                       R3 R1 K5 ["b"]
      362 GETTABLEKS                       R3 R3 K1 ["multiple"]
      364 JUMPIFNOT                        R3 ; [+24]
      365 GETTABLEKS                       R3 R1 K6 ["h"]
      367 GETTABLEKS                       R3 R3 K1 ["multiple"]
      369 JUMPIFNOT                        R3 ; [+19]
      370 GETTABLEKS                       R3 R1 K7 ["s"]
      372 GETTABLEKS                       R3 R3 K1 ["multiple"]
      374 JUMPIFNOT                        R3 ; [+14]
      375 GETTABLEKS                       R3 R1 K8 ["v"]
      377 GETTABLEKS                       R3 R3 K1 ["multiple"]
      379 JUMPIFNOT                        R3 ; [+9]
      380 GETTABLEKS                       R3 R1 K10 ["transparency"]
      382 GETTABLEKS                       R3 R3 K1 ["multiple"]
      384 JUMPIFNOT                        R3 ; [+4]
      385 GETTABLEKS                       R3 R1 K9 ["brickColor"]
      387 GETTABLEKS                       R3 R3 K1 ["multiple"]
      389 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 LOADB                            R5 0
       14 GETTABLEKS                       R7 R3 K5 ["color3"]
       16 FASTCALL1                        TYPEOF R7 ; [+2]
       17 GETIMPORT                        R6 K1 [typeof]
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKS                    R6 K6 ["Color3"] ; [+11]
       22 GETTABLEKS                       R7 R3 K7 ["transparency"]
       24 FASTCALL1                        TYPEOF R7 ; [+2]
       25 GETIMPORT                        R6 K1 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFEQKS                       R6 K8 ["number"] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 FASTCALL1                        ASSERT R5 ; [+2]
       33 GETIMPORT                        R4 K4 [assert]
       35 CALL                             R4 1 0
       36 MOVE                             R6 R1
       37 MOVE                             R4 R2
       38 LOADN                            R5 1
       39 FORNPREP                         R4
       40 SETTABLE                         R3 R0 R6
       41 FORNLOOP                         R4
       42 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["Color3"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 SETTABLEKS                       R3 R7 K8 ["color3"]
       23 SETTABLE                         R7 R0 R6
       24 FORNLOOP                         R4
       25 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 MOVE                             R8 R3
       22 GETTABLEKS                       R9 R7 K8 ["color3"]
       24 GETTABLEKS                       R9 R9 K9 ["G"]
       26 GETTABLEKS                       R10 R7 K8 ["color3"]
       28 GETTABLEKS                       R10 R10 K10 ["B"]
       30 GETIMPORT                        R11 K13 [Color3.new]
       32 MOVE                             R12 R8
       33 MOVE                             R13 R9
       34 MOVE                             R14 R10
       35 CALL                             R11 3 1
       36 SETTABLEKS                       R11 R7 K8 ["color3"]
       38 SETTABLE                         R7 R0 R6
       39 FORNLOOP                         R4
       40 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K8 ["color3"]
       23 GETTABLEKS                       R8 R8 K9 ["R"]
       25 MOVE                             R9 R3
       26 GETTABLEKS                       R10 R7 K8 ["color3"]
       28 GETTABLEKS                       R10 R10 K10 ["B"]
       30 GETIMPORT                        R11 K13 [Color3.new]
       32 MOVE                             R12 R8
       33 MOVE                             R13 R9
       34 MOVE                             R14 R10
       35 CALL                             R11 3 1
       36 SETTABLEKS                       R11 R7 K8 ["color3"]
       38 SETTABLE                         R7 R0 R6
       39 FORNLOOP                         R4
       40 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K8 ["color3"]
       23 GETTABLEKS                       R8 R8 K9 ["R"]
       25 GETTABLEKS                       R9 R7 K8 ["color3"]
       27 GETTABLEKS                       R9 R9 K10 ["G"]
       29 MOVE                             R10 R3
       30 GETIMPORT                        R11 K13 [Color3.new]
       32 MOVE                             R12 R8
       33 MOVE                             R13 R9
       34 MOVE                             R14 R10
       35 CALL                             R11 3 1
       36 SETTABLEKS                       R11 R7 K8 ["color3"]
       38 SETTABLE                         R7 R0 R6
       39 FORNLOOP                         R4
       40 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K8 ["color3"]
       23 NAMECALL                         R8 R8 K9 ["ToHSV"]
       25 CALL                             R8 1 3
       26 GETIMPORT                        R11 K12 [Color3.new]
       28 MOVE                             R12 R3
       29 MOVE                             R13 R9
       30 MOVE                             R14 R10
       31 CALL                             R11 3 1
       32 SETTABLEKS                       R11 R7 K8 ["color3"]
       34 SETTABLE                         R7 R0 R6
       35 FORNLOOP                         R4
       36 RETURN                           R0 0

PROTO_9:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K8 ["color3"]
       23 NAMECALL                         R8 R8 K9 ["ToHSV"]
       25 CALL                             R8 1 3
       26 GETIMPORT                        R11 K12 [Color3.new]
       28 MOVE                             R12 R8
       29 MOVE                             R13 R3
       30 MOVE                             R14 R10
       31 CALL                             R11 3 1
       32 SETTABLEKS                       R11 R7 K8 ["color3"]
       34 SETTABLE                         R7 R0 R6
       35 FORNLOOP                         R4
       36 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K8 ["color3"]
       23 NAMECALL                         R8 R8 K9 ["ToHSV"]
       25 CALL                             R8 1 3
       26 GETIMPORT                        R11 K12 [Color3.new]
       28 MOVE                             R12 R8
       29 MOVE                             R13 R9
       30 MOVE                             R14 R3
       31 CALL                             R11 3 1
       32 SETTABLEKS                       R11 R7 K8 ["color3"]
       34 SETTABLE                         R7 R0 R6
       35 FORNLOOP                         R4
       36 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["BrickColor"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R3 K8 ["Color"]
       23 SETTABLEKS                       R8 R7 K9 ["color3"]
       25 SETTABLE                         R7 R0 R6
       26 FORNLOOP                         R4
       27 RETURN                           R0 0

PROTO_12:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 MOVE                             R6 R1
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETIMPORT                        R7 K7 [table.clone]
       19 GETTABLE                         R8 R0 R6
       20 CALL                             R7 1 1
       21 SETTABLEKS                       R3 R7 K8 ["transparency"]
       23 SETTABLE                         R7 R0 R6
       24 FORNLOOP                         R4
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R4
        2 JUMPIFEQKNIL                     R6 ; [+8]
        4 MOVE                             R7 R6
        5 MOVE                             R8 R1
        6 MOVE                             R9 R2
        7 MOVE                             R10 R3
        8 MOVE                             R11 R5
        9 CALL                             R7 4 0
       10 JUMP                             ; [+9]
       11 GETIMPORT                        R7 K1 [error]
       13 LOADK                            R9 K2 ["Unexpected CombinedColor part: %*"]
       14 MOVE                             R11 R4
       15 NAMECALL                         R9 R9 K3 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 CALL                             R7 1 0
       20 LOADNIL                          R7
       21 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["getAggregateParts"]
       13 GETTABLEKS                       R2 R2 K8 ["AggregatePartsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["PropertyInteraction"]
       42 GETTABLEKS                       R7 R7 K14 ["genericMultiplePart"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K15 [PROTO_0]
       46 DUPCLOSURE                       R8 K16 [PROTO_1]
       47 DUPCLOSURE                       R9 K17 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 DUPTABLE                         R10 K28 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       50 DUPCLOSURE                       R11 K29 [PROTO_3]
       51 SETTABLEKS                       R11 R10 K18 ["value"]
       53 DUPCLOSURE                       R11 K30 [PROTO_4]
       54 SETTABLEKS                       R11 R10 K19 ["color3"]
       56 DUPCLOSURE                       R11 K31 [PROTO_5]
       57 SETTABLEKS                       R11 R10 K20 ["r"]
       59 DUPCLOSURE                       R11 K32 [PROTO_6]
       60 SETTABLEKS                       R11 R10 K21 ["g"]
       62 DUPCLOSURE                       R11 K33 [PROTO_7]
       63 SETTABLEKS                       R11 R10 K22 ["b"]
       65 DUPCLOSURE                       R11 K34 [PROTO_8]
       66 SETTABLEKS                       R11 R10 K23 ["h"]
       68 DUPCLOSURE                       R11 K35 [PROTO_9]
       69 SETTABLEKS                       R11 R10 K24 ["s"]
       71 DUPCLOSURE                       R11 K36 [PROTO_10]
       72 SETTABLEKS                       R11 R10 K25 ["v"]
       74 DUPCLOSURE                       R11 K37 [PROTO_11]
       75 SETTABLEKS                       R11 R10 K26 ["brickColor"]
       77 DUPCLOSURE                       R11 K38 [PROTO_12]
       78 SETTABLEKS                       R11 R10 K27 ["transparency"]
       80 DUPCLOSURE                       R11 K39 [PROTO_13]
       81 CAPTURE                          VAL R10
       82 DUPTABLE                         R12 K42 [{"fromValue", "allMultiple"}]
       83 GETTABLEKS                       R13 R4 K43 ["createUnimplemented"]
       85 LOADK                            R14 K44 ["CombinedColorAggregator.aggregateParts.fromValue"]
       86 CALL                             R13 1 1
       87 SETTABLEKS                       R13 R12 K40 ["fromValue"]
       89 DUPTABLE                         R13 K28 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       90 SETTABLEKS                       R6 R13 K18 ["value"]
       92 SETTABLEKS                       R6 R13 K19 ["color3"]
       94 SETTABLEKS                       R6 R13 K20 ["r"]
       96 SETTABLEKS                       R6 R13 K21 ["g"]
       98 SETTABLEKS                       R6 R13 K22 ["b"]
      100 SETTABLEKS                       R6 R13 K23 ["h"]
      102 SETTABLEKS                       R6 R13 K24 ["s"]
      104 SETTABLEKS                       R6 R13 K25 ["v"]
      106 SETTABLEKS                       R6 R13 K26 ["brickColor"]
      108 SETTABLEKS                       R6 R13 K27 ["transparency"]
      110 SETTABLEKS                       R13 R12 K41 ["allMultiple"]
      112 DUPTABLE                         R13 K49 [{"initParts", "addToAggregation", "setPart", "aggregateParts"}]
      113 SETTABLEKS                       R8 R13 K45 ["initParts"]
      115 SETTABLEKS                       R9 R13 K46 ["addToAggregation"]
      117 SETTABLEKS                       R11 R13 K47 ["setPart"]
      119 SETTABLEKS                       R12 R13 K48 ["aggregateParts"]
      121 RETURN                           R13 1
