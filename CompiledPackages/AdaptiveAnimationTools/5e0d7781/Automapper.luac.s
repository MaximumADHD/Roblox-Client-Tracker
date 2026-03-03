PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 LOADK                            R4 K1 ["left"]
        4 NAMECALL                         R2 R1 K2 ["find"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADK                            R2 K1 ["left"]
        9 RETURN                           R2 1
       10 LOADK                            R4 K3 ["right"]
       11 NAMECALL                         R2 R1 K2 ["find"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADK                            R2 K3 ["right"]
       16 RETURN                           R2 1
       17 LOADK                            R4 K4 ["[^%s%p]+"]
       18 NAMECALL                         R2 R1 K5 ["gmatch"]
       20 CALL                             R2 2 3
       21 FORGPREP                         R2
       22 JUMPIFNOTEQKS                    R5 K6 ["l"] ; [+3]
       24 LOADK                            R7 K1 ["left"]
       25 RETURN                           R7 1
       26 JUMPIFNOTEQKS                    R5 K7 ["r"] ; [+3]
       28 LOADK                            R7 K3 ["right"]
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 1 ; [-9]
       32 LOADNIL                          R2
       33 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R0 K0 ["lower"]
        3 CALL                             R3 1 1
        4 MOVE                             R0 R3
        5 LOADK                            R6 K1 ["%W"]
        6 LOADK                            R7 K2 [""]
        7 NAMECALL                         R4 R0 K3 ["gsub"]
        9 CALL                             R4 3 1
       10 LENGTH                           R3 R4
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R5 R1
       13 JUMPIF                           R4 ; [+1]
       14 RETURN                           R2 1
       15 MOVE                             R5 R4
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 LOADK                            R12 K4 ["-"]
       20 NAMECALL                         R10 R9 K5 ["find"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+47]
       24 LOADK                            R12 K6 ["([^%-]+)%-(.+)"]
       25 NAMECALL                         R10 R9 K7 ["match"]
       27 CALL                             R10 2 2
       28 JUMPIFNOT                        R10 ; [+69]
       29 JUMPIFNOT                        R11 ; [+68]
       30 MOVE                             R13 R10
       31 LOADK                            R14 K8 [".*"]
       32 MOVE                             R15 R11
       33 CONCAT                           R12 R13 R15
       34 MOVE                             R14 R11
       35 LOADK                            R15 K8 [".*"]
       36 MOVE                             R16 R10
       37 CONCAT                           R13 R14 R16
       38 MOVE                             R16 R12
       39 NAMECALL                         R14 R0 K5 ["find"]
       41 CALL                             R14 2 1
       42 JUMPIF                           R14 ; [+5]
       43 MOVE                             R16 R13
       44 NAMECALL                         R14 R0 K5 ["find"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+50]
       48 GETUPVAL                         R17 1
       49 GETTABLE                         R16 R17 R9
       50 ORK                              R15 R16 K9 [0]
       51 LOADN                            R17 1
       52 GETUPVAL                         R20 2
       53 GETTABLEKS                       R19 R20 K10 ["tokenLengthWeight"]
       55 LENGTH                           R21 R9
       56 FASTCALL2K                       MATH_MAX R3 K11 ; [+5]
       58 MOVE                             R23 R3
       59 LOADK                            R24 K11 [1]
       60 GETIMPORT                        R22 K14 [math.max]
       62 CALL                             R22 2 1
       63 DIV                              R20 R21 R22
       64 MUL                              R18 R19 R20
       65 ADD                              R16 R17 R18
       66 MUL                              R14 R15 R16
       67 JUMPIFNOTLT                      R2 R14 ; [+30]
       69 MOVE                             R2 R14
       70 JUMP                             ; [+27]
       71 MOVE                             R12 R9
       72 NAMECALL                         R10 R0 K5 ["find"]
       74 CALL                             R10 2 1
       75 JUMPIFNOT                        R10 ; [+22]
       76 GETUPVAL                         R13 1
       77 GETTABLE                         R12 R13 R9
       78 ORK                              R11 R12 K9 [0]
       79 LOADN                            R13 1
       80 GETUPVAL                         R16 2
       81 GETTABLEKS                       R15 R16 K10 ["tokenLengthWeight"]
       83 LENGTH                           R17 R9
       84 FASTCALL2K                       MATH_MAX R3 K11 ; [+5]
       86 MOVE                             R19 R3
       87 LOADK                            R20 K11 [1]
       88 GETIMPORT                        R18 K14 [math.max]
       90 CALL                             R18 2 1
       91 DIV                              R16 R17 R18
       92 MUL                              R14 R15 R16
       93 ADD                              R12 R13 R14
       94 MUL                              R10 R11 R12
       95 JUMPIFNOTLT                      R2 R10 ; [+2]
       97 MOVE                             R2 R10
       98 FORGLOOP                         R5 2 ; [-80]
      100 GETUPVAL                         R6 3
      101 GETTABLE                         R5 R6 R1
      102 GETUPVAL                         R6 4
      103 MOVE                             R7 R0
      104 CALL                             R6 1 1
      105 JUMPIFNOTEQ                      R5 R6 ; [+6]
      107 GETUPVAL                         R8 2
      108 GETTABLEKS                       R7 R8 K15 ["sideLeftRightWeight"]
      110 ADD                              R2 R2 R7
      111 RETURN                           R2 1
      112 GETUPVAL                         R8 2
      113 GETTABLEKS                       R7 R8 K15 ["sideLeftRightWeight"]
      115 SUB                              R2 R2 R7
      116 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R3 0
        1 GETUPVAL                         R5 0
        2 GETTABLE                         R4 R5 R2
        3 SUB                              R6 R4 R0
        4 GETTABLEKS                       R5 R6 K0 ["Magnitude"]
        6 MINUS                            R9 R5
        7 MUL                              R8 R9 R5
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K1 ["distanceSmoothingKernel"]
       11 DIV                              R7 R8 R9
       12 FASTCALL1                        MATH_EXP R7 ; [+2]
       13 GETIMPORT                        R6 K4 [math.exp]
       15 CALL                             R6 1 1
       16 MOVE                             R3 R6
       17 GETTABLEKS                       R7 R4 K5 ["X"]
       19 FASTCALL1                        MATH_SIGN R7 ; [+2]
       20 GETIMPORT                        R6 K7 [math.sign]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R8 R0 K5 ["X"]
       25 FASTCALL1                        MATH_SIGN R8 ; [+2]
       26 GETIMPORT                        R7 K7 [math.sign]
       28 CALL                             R7 1 1
       29 JUMPIFEQ                         R6 R7 ; [+14]
       31 JUMPIFNOTEQKN                    R6 K8 [0] ; [+17]
       33 GETTABLEKS                       R9 R0 K5 ["X"]
       35 FASTCALL1                        MATH_ABS R9 ; [+2]
       36 GETIMPORT                        R8 K10 [math.abs]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K11 ["leftRightPositionThreshold"]
       42 JUMPIFNOTLT                      R8 R9 ; [+6]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K12 ["sideLeftRightWeight"]
       47 ADD                              R3 R3 R8
       48 RETURN                           R3 1
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K12 ["sideLeftRightWeight"]
       52 SUB                              R3 R3 R8
       53 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["score"]
        2 GETTABLEKS                       R4 R1 K0 ["score"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R6
        5 LOADNIL                          R10
        6 NAMECALL                         R7 R0 K0 ["SetJoint"]
        8 CALL                             R7 3 0
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADK                            R4 K1 ["Humanoid"]
       12 NAMECALL                         R2 R1 K2 ["FindFirstChildWhichIsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+37]
       16 GETTABLEKS                       R3 R2 K3 ["RigType"]
       18 GETIMPORT                        R4 K7 [Enum.HumanoidRigType.R15]
       20 JUMPIFNOTEQ                      R3 R4 ; [+32]
       22 NAMECALL                         R3 R0 K8 ["GetR15JointLabels"]
       24 CALL                             R3 1 3
       25 FORGPREP                         R3
       26 NAMECALL                         R8 R1 K9 ["GetDescendants"]
       28 CALL                             R8 1 3
       29 FORGPREP                         R8
       30 GETTABLEKS                       R13 R12 K10 ["Name"]
       32 GETTABLEKS                       R14 R7 K10 ["Name"]
       34 JUMPIFNOTEQ                      R13 R14 ; [+13]
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R13 R14 K11 ["isValidTJoint"]
       39 MOVE                             R14 R12
       40 CALL                             R13 1 1
       41 JUMPIFNOT                        R13 ; [+6]
       42 MOVE                             R15 R7
       43 MOVE                             R16 R12
       44 NAMECALL                         R13 R0 K0 ["SetJoint"]
       46 CALL                             R13 3 0
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R8 2 ; [-19]
       50 FORGLOOP                         R3 2 ; [-25]
       52 RETURN                           R0 0
       53 MOVE                             R3 R1
       54 LOADK                            R6 K12 ["Bone"]
       55 LOADB                            R7 1
       56 NAMECALL                         R4 R1 K2 ["FindFirstChildWhichIsA"]
       58 CALL                             R4 3 1
       59 JUMPIFNOT                        R4 ; [+8]
       60 LOADK                            R7 K13 ["Motor6D"]
       61 LOADB                            R8 1
       62 NAMECALL                         R5 R1 K2 ["FindFirstChildWhichIsA"]
       64 CALL                             R5 3 1
       65 JUMPIFNOT                        R5 ; [+2]
       66 GETTABLEKS                       R3 R4 K14 ["Parent"]
       68 NEWTABLE                         R5 0 0
       70 NAMECALL                         R6 R3 K9 ["GetDescendants"]
       72 CALL                             R6 1 3
       73 FORGPREP                         R6
       74 LOADK                            R13 K13 ["Motor6D"]
       75 NAMECALL                         R11 R10 K15 ["IsA"]
       77 CALL                             R11 2 1
       78 JUMPIF                           R11 ; [+5]
       79 LOADK                            R13 K12 ["Bone"]
       80 NAMECALL                         R11 R10 K15 ["IsA"]
       82 CALL                             R11 2 1
       83 JUMPIFNOT                        R11 ; [+53]
       84 GETTABLEKS                       R11 R10 K14 ["Parent"]
       86 LOADK                            R14 K13 ["Motor6D"]
       87 NAMECALL                         R12 R10 K15 ["IsA"]
       89 CALL                             R12 2 1
       90 JUMPIFNOT                        R12 ; [+10]
       91 GETTABLEKS                       R12 R10 K16 ["Part0"]
       93 JUMPIFNOT                        R12 ; [+5]
       94 LOADK                            R15 K13 ["Motor6D"]
       95 NAMECALL                         R13 R12 K2 ["FindFirstChildWhichIsA"]
       97 CALL                             R13 2 1
       98 JUMPIF                           R13 ; [+1]
       99 LOADNIL                          R13
      100 MOVE                             R11 R13
      101 JUMPIFEQKNIL                     R11 ; [+12]
      103 LOADK                            R14 K13 ["Motor6D"]
      104 NAMECALL                         R12 R11 K15 ["IsA"]
      106 CALL                             R12 2 1
      107 JUMPIF                           R12 ; [+6]
      108 LOADK                            R14 K12 ["Bone"]
      109 NAMECALL                         R12 R11 K15 ["IsA"]
      111 CALL                             R12 2 1
      112 JUMPIF                           R12 ; [+1]
      113 LOADNIL                          R11
      114 GETUPVAL                         R13 1
      115 GETTABLEKS                       R12 R13 K17 ["getJointPosition"]
      117 MOVE                             R13 R10
      118 CALL                             R12 1 1
      119 DUPTABLE                         R15 K22 [{"joint", "name", "parent", "position"}]
      120 SETTABLEKS                       R10 R15 K18 ["joint"]
      122 GETTABLEKS                       R16 R10 K10 ["Name"]
      124 SETTABLEKS                       R16 R15 K19 ["name"]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R15 K20 ["parent"]
      129 SETTABLEKS                       R12 R15 K21 ["position"]
      131 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
      133 MOVE                             R14 R5
      134 GETIMPORT                        R13 K25 [table.insert]
      136 CALL                             R13 2 0
      137 FORGLOOP                         R6 2 ; [-64]
      139 MOVE                             R6 R5
      140 LOADNIL                          R7
      141 LOADNIL                          R8
      142 FORGPREP                         R6
      143 MOVE                             R11 R5
      144 LOADNIL                          R12
      145 LOADNIL                          R13
      146 FORGPREP                         R11
      147 GETTABLEKS                       R17 R10 K18 ["joint"]
      149 GETTABLEKS                       R16 R17 K14 ["Parent"]
      151 GETTABLEKS                       R17 R10 K18 ["joint"]
      153 LOADK                            R19 K13 ["Motor6D"]
      154 NAMECALL                         R17 R17 K15 ["IsA"]
      156 CALL                             R17 2 1
      157 JUMPIFNOT                        R17 ; [+11]
      158 GETTABLEKS                       R18 R10 K18 ["joint"]
      160 GETTABLEKS                       R17 R18 K16 ["Part0"]
      162 MOVE                             R18 R17
      163 JUMPIFNOT                        R18 ; [+4]
      164 LOADK                            R20 K13 ["Motor6D"]
      165 NAMECALL                         R18 R17 K2 ["FindFirstChildWhichIsA"]
      167 CALL                             R18 2 1
      168 MOVE                             R16 R18
      169 GETUPVAL                         R19 1
      170 GETTABLEKS                       R18 R19 K11 ["isValidTJoint"]
      172 MOVE                             R19 R16
      173 CALL                             R18 1 1
      174 JUMPIFNOT                        R18 ; [+2]
      175 MOVE                             R17 R16
      176 JUMP                             ; [+1]
      177 LOADNIL                          R17
      178 GETTABLEKS                       R18 R15 K18 ["joint"]
      180 JUMPIFNOTEQ                      R17 R18 ; [+4]
      182 SETTABLEKS                       R15 R10 K20 ["parent"]
      184 JUMP                             ; [+2]
      185 FORGLOOP                         R11 2 ; [-39]
      187 FORGLOOP                         R6 2 ; [-45]
      189 NEWTABLE                         R6 0 0
      191 MOVE                             R7 R5
      192 LOADNIL                          R8
      193 LOADNIL                          R9
      194 FORGPREP                         R7
      195 GETIMPORT                        R12 K28 [Vector2.new]
      197 GETTABLEKS                       R14 R11 K21 ["position"]
      199 GETTABLEKS                       R13 R14 K29 ["X"]
      201 GETTABLEKS                       R15 R11 K21 ["position"]
      203 GETTABLEKS                       R14 R15 K30 ["Y"]
      205 CALL                             R12 2 1
      206 SETTABLE                         R12 R6 R10
      207 FORGLOOP                         R7 2 ; [-13]
      209 GETUPVAL                         R8 1
      210 GETTABLEKS                       R7 R8 K31 ["normalizePoints"]
      212 MOVE                             R8 R6
      213 CALL                             R7 1 0
      214 NEWTABLE                         R7 0 0
      216 MOVE                             R8 R5
      217 LOADNIL                          R9
      218 LOADNIL                          R10
      219 FORGPREP                         R8
      220 GETTABLEKS                       R15 R12 K19 ["name"]
      222 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      224 MOVE                             R14 R7
      225 GETIMPORT                        R13 K25 [table.insert]
      227 CALL                             R13 2 0
      228 FORGLOOP                         R8 2 ; [-9]
      230 GETUPVAL                         R9 1
      231 GETTABLEKS                       R8 R9 K32 ["commonPrefix"]
      233 MOVE                             R9 R7
      234 CALL                             R8 1 1
      235 GETUPVAL                         R10 1
      236 GETTABLEKS                       R9 R10 K33 ["commonSuffix"]
      238 MOVE                             R10 R7
      239 CALL                             R9 1 1
      240 MOVE                             R10 R5
      241 LOADNIL                          R11
      242 LOADNIL                          R12
      243 FORGPREP                         R10
      244 GETUPVAL                         R16 1
      245 GETTABLEKS                       R15 R16 K34 ["trimStart"]
      247 GETTABLEKS                       R16 R14 K19 ["name"]
      249 MOVE                             R17 R8
      250 CALL                             R15 2 1
      251 SETTABLEKS                       R15 R14 K19 ["name"]
      253 GETUPVAL                         R16 1
      254 GETTABLEKS                       R15 R16 K35 ["trimEnd"]
      256 GETTABLEKS                       R16 R14 K19 ["name"]
      258 MOVE                             R17 R9
      259 CALL                             R15 2 1
      260 SETTABLEKS                       R15 R14 K19 ["name"]
      262 FORGLOOP                         R10 2 ; [-19]
      264 NEWTABLE                         R10 0 0
      266 MOVE                             R11 R5
      267 LOADNIL                          R12
      268 LOADNIL                          R13
      269 FORGPREP                         R11
      270 GETIMPORT                        R16 K37 [table.find]
      272 MOVE                             R17 R10
      273 GETTABLEKS                       R18 R15 K19 ["name"]
      275 CALL                             R16 2 1
      276 JUMPIFNOT                        R16 ; [+4]
      277 GETIMPORT                        R16 K39 [warn]
      279 LOADK                            R17 K40 ["duplicate name: {joint.name} this might cause unexpected issues"]
      280 CALL                             R16 1 0
      281 GETTABLEKS                       R18 R15 K19 ["name"]
      283 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      285 MOVE                             R17 R10
      286 GETIMPORT                        R16 K25 [table.insert]
      288 CALL                             R16 2 0
      289 FORGLOOP                         R11 2 ; [-20]
      291 NEWTABLE                         R11 0 0
      293 MOVE                             R12 R5
      294 LOADNIL                          R13
      295 LOADNIL                          R14
      296 FORGPREP                         R12
      297 GETTABLEKS                       R17 R16 K18 ["joint"]
      299 NEWTABLE                         R18 0 0
      301 SETTABLE                         R18 R11 R17
      302 GETUPVAL                         R17 0
      303 LOADNIL                          R18
      304 LOADNIL                          R19
      305 FORGPREP                         R17
      306 GETIMPORT                        R22 K37 [table.find]
      308 MOVE                             R23 R5
      309 MOVE                             R24 R16
      310 CALL                             R22 2 1
      311 JUMPIF                           R22 ; [+5]
      312 GETIMPORT                        R23 K39 [warn]
      314 LOADK                            R24 K41 ["joint not found in jointRefs array"]
      315 CALL                             R23 1 0
      316 JUMP                             ; [+24]
      317 GETTABLE                         R23 R6 R22
      318 GETTABLEKS                       R25 R16 K18 ["joint"]
      320 GETTABLE                         R24 R11 R25
      321 GETUPVAL                         R28 2
      322 GETTABLEKS                       R27 R28 K42 ["nameWeight"]
      324 GETUPVAL                         R28 3
      325 GETTABLEKS                       R29 R16 K19 ["name"]
      327 MOVE                             R30 R21
      328 CALL                             R28 2 1
      329 MUL                              R26 R27 R28
      330 GETUPVAL                         R29 2
      331 GETTABLEKS                       R28 R29 K43 ["positionWeight"]
      333 GETUPVAL                         R29 4
      334 MOVE                             R30 R23
      335 MOVE                             R31 R16
      336 MOVE                             R32 R21
      337 CALL                             R29 3 1
      338 MUL                              R27 R28 R29
      339 ADD                              R25 R26 R27
      340 SETTABLE                         R25 R24 R21
      341 FORGLOOP                         R17 2 ; [-36]
      343 FORGLOOP                         R12 2 ; [-47]
      345 MOVE                             R12 R5
      346 LOADNIL                          R13
      347 LOADNIL                          R14
      348 FORGPREP                         R12
      349 GETUPVAL                         R17 0
      350 LOADNIL                          R18
      351 LOADNIL                          R19
      352 FORGPREP                         R17
      353 GETUPVAL                         R23 5
      354 GETTABLE                         R22 R23 R21
      355 JUMPIFEQKNIL                     R22 ; [+22]
      357 GETTABLEKS                       R23 R16 K20 ["parent"]
      359 JUMPIFNOT                        R23 ; [+18]
      360 GETTABLEKS                       R26 R16 K20 ["parent"]
      362 GETTABLEKS                       R25 R26 K18 ["joint"]
      364 GETTABLE                         R24 R11 R25
      365 GETTABLE                         R23 R24 R22
      366 GETTABLEKS                       R25 R16 K18 ["joint"]
      368 GETTABLE                         R24 R11 R25
      369 GETTABLE                         R25 R24 R21
      370 LOADN                            R27 1
      371 GETUPVAL                         R30 2
      372 GETTABLEKS                       R29 R30 K44 ["parentInfluenceWeight"]
      374 MUL                              R28 R29 R23
      375 ADD                              R26 R27 R28
      376 MUL                              R25 R25 R26
      377 SETTABLE                         R25 R24 R21
      378 GETUPVAL                         R24 6
      379 GETTABLE                         R23 R24 R21
      380 GETTABLEKS                       R24 R16 K18 ["joint"]
      382 NAMECALL                         R24 R24 K45 ["GetChildren"]
      384 CALL                             R24 1 1
      385 JUMPIFEQKNIL                     R23 ; [+46]
      387 LENGTH                           R25 R24
      388 LOADN                            R26 0
      389 JUMPIFNOTLT                      R26 R25 ; [+42]
      391 LOADK                            R25 K46 [-∞]
      392 MOVE                             R26 R24
      393 LOADNIL                          R27
      394 LOADNIL                          R28
      395 FORGPREP                         R26
      396 LOADK                            R33 K13 ["Motor6D"]
      397 NAMECALL                         R31 R30 K15 ["IsA"]
      399 CALL                             R31 2 1
      400 JUMPIF                           R31 ; [+5]
      401 LOADK                            R33 K12 ["Bone"]
      402 NAMECALL                         R31 R30 K15 ["IsA"]
      404 CALL                             R31 2 1
      405 JUMPIFNOT                        R31 ; [+10]
      406 GETTABLE                         R32 R11 R30
      407 GETTABLE                         R31 R32 R23
      408 FASTCALL2                        MATH_MAX R25 R31 ; [+5]
      410 MOVE                             R33 R25
      411 MOVE                             R34 R31
      412 GETIMPORT                        R32 K49 [math.max]
      414 CALL                             R32 2 1
      415 MOVE                             R25 R32
      416 FORGLOOP                         R26 2 ; [-21]
      418 JUMPIFEQKN                       R25 K46 [-∞] ; [+13]
      420 GETTABLEKS                       R27 R16 K18 ["joint"]
      422 GETTABLE                         R26 R11 R27
      423 GETTABLE                         R27 R26 R21
      424 LOADN                            R29 1
      425 GETUPVAL                         R32 2
      426 GETTABLEKS                       R31 R32 K50 ["childInfluenceWeight"]
      428 MUL                              R30 R31 R25
      429 ADD                              R28 R29 R30
      430 MUL                              R27 R27 R28
      431 SETTABLE                         R27 R26 R21
      432 GETIMPORT                        R25 K53 [Enum.RigLabel.Root]
      434 JUMPIFNOTEQ                      R21 R25 ; [+20]
      436 GETUPVAL                         R27 1
      437 GETTABLEKS                       R26 R27 K55 ["getDepth"]
      439 GETTABLEKS                       R27 R16 K18 ["joint"]
      441 MOVE                             R28 R3
      442 CALL                             R26 2 1
      443 SUBK                             R25 R26 K54 [1]
      444 GETTABLEKS                       R27 R16 K18 ["joint"]
      446 GETTABLE                         R26 R11 R27
      447 GETTABLE                         R27 R26 R21
      448 GETUPVAL                         R30 2
      449 GETTABLEKS                       R29 R30 K56 ["rootDepthPenalty"]
      451 MUL                              R28 R25 R29
      452 SUB                              R27 R27 R28
      453 SETTABLE                         R27 R26 R21
      454 JUMP                             ; [+31]
      455 GETIMPORT                        R25 K58 [Enum.RigLabel.LeftWrist]
      457 JUMPIFEQ                         R21 R25 ; [+5]
      459 GETIMPORT                        R25 K60 [Enum.RigLabel.RightWrist]
      461 JUMPIFNOTEQ                      R21 R25 ; [+24]
      463 GETTABLEKS                       R26 R16 K18 ["joint"]
      465 NAMECALL                         R26 R26 K9 ["GetDescendants"]
      467 CALL                             R26 1 1
      468 LENGTH                           R25 R26
      469 GETTABLEKS                       R27 R16 K18 ["joint"]
      471 GETTABLE                         R26 R11 R27
      472 GETTABLE                         R27 R26 R21
      473 FASTCALL2K                       MATH_MIN R25 K61 ; [+5]
      475 MOVE                             R30 R25
      476 LOADK                            R31 K61 [15]
      477 GETIMPORT                        R29 K63 [math.min]
      479 CALL                             R29 2 1
      480 GETUPVAL                         R31 2
      481 GETTABLEKS                       R30 R31 K64 ["handBoostPerDescendant"]
      483 MUL                              R28 R29 R30
      484 ADD                              R27 R27 R28
      485 SETTABLE                         R27 R26 R21
      486 FORGLOOP                         R17 2 ; [-134]
      488 FORGLOOP                         R12 2 ; [-140]
      490 NEWTABLE                         R12 0 0
      492 MOVE                             R13 R5
      493 LOADNIL                          R14
      494 LOADNIL                          R15
      495 FORGPREP                         R13
      496 GETUPVAL                         R18 0
      497 LOADNIL                          R19
      498 LOADNIL                          R20
      499 FORGPREP                         R18
      500 DUPTABLE                         R25 K67 [{"joint", "rigLabel", "score"}]
      501 GETTABLEKS                       R26 R17 K18 ["joint"]
      503 SETTABLEKS                       R26 R25 K18 ["joint"]
      505 SETTABLEKS                       R22 R25 K65 ["rigLabel"]
      507 GETTABLEKS                       R28 R17 K18 ["joint"]
      509 GETTABLE                         R27 R11 R28
      510 GETTABLE                         R26 R27 R22
      511 SETTABLEKS                       R26 R25 K66 ["score"]
      513 FASTCALL2                        TABLE_INSERT R12 R25 ; [+4]
      515 MOVE                             R24 R12
      516 GETIMPORT                        R23 K25 [table.insert]
      518 CALL                             R23 2 0
      519 FORGLOOP                         R18 2 ; [-20]
      521 FORGLOOP                         R13 2 ; [-26]
      523 GETIMPORT                        R13 K69 [table.sort]
      525 MOVE                             R14 R12
      526 DUPCLOSURE                       R15 K70 [PROTO_3]
      527 CALL                             R13 2 0
      528 NEWTABLE                         R13 0 0
      530 NEWTABLE                         R14 0 0
      532 MOVE                             R15 R12
      533 LOADNIL                          R16
      534 LOADNIL                          R17
      535 FORGPREP                         R15
      536 GETTABLEKS                       R20 R19 K66 ["score"]
      538 GETUPVAL                         R22 2
      539 GETTABLEKS                       R21 R22 K71 ["minScoreThreshold"]
      541 JUMPIFLT                         R20 R21 ; [+40]
      543 GETIMPORT                        R20 K37 [table.find]
      545 MOVE                             R21 R13
      546 GETTABLEKS                       R22 R19 K18 ["joint"]
      548 CALL                             R20 2 1
      549 JUMPIF                           R20 ; [+30]
      550 GETIMPORT                        R20 K37 [table.find]
      552 MOVE                             R21 R14
      553 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      555 CALL                             R20 2 1
      556 JUMPIF                           R20 ; [+23]
      557 GETTABLEKS                       R22 R19 K18 ["joint"]
      559 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
      561 MOVE                             R21 R13
      562 GETIMPORT                        R20 K25 [table.insert]
      564 CALL                             R20 2 0
      565 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      567 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
      569 MOVE                             R21 R14
      570 GETIMPORT                        R20 K25 [table.insert]
      572 CALL                             R20 2 0
      573 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      575 GETTABLEKS                       R23 R19 K18 ["joint"]
      577 NAMECALL                         R20 R0 K0 ["SetJoint"]
      579 CALL                             R20 3 0
      580 FORGLOOP                         R15 2 ; [-45]
      582 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Utils"]
       14 CALL                             R2 1 1
       15 DUPTABLE                         R3 K18 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant"}]
       16 LOADK                            R4 K19 [0.3]
       17 SETTABLEKS                       R4 R3 K7 ["tokenLengthWeight"]
       19 LOADN                            R4 1
       20 SETTABLEKS                       R4 R3 K8 ["sideLeftRightWeight"]
       22 LOADK                            R4 K19 [0.3]
       23 SETTABLEKS                       R4 R3 K9 ["parentInfluenceWeight"]
       25 LOADK                            R4 K20 [0.1]
       26 SETTABLEKS                       R4 R3 K10 ["childInfluenceWeight"]
       28 LOADK                            R4 K21 [0.02]
       29 SETTABLEKS                       R4 R3 K11 ["leftRightPositionThreshold"]
       31 LOADK                            R4 K20 [0.1]
       32 SETTABLEKS                       R4 R3 K12 ["distanceSmoothingKernel"]
       34 LOADK                            R4 K22 [0.5]
       35 SETTABLEKS                       R4 R3 K13 ["minScoreThreshold"]
       37 LOADN                            R4 3
       38 SETTABLEKS                       R4 R3 K14 ["nameWeight"]
       40 LOADK                            R4 K22 [0.5]
       41 SETTABLEKS                       R4 R3 K15 ["positionWeight"]
       43 LOADK                            R4 K22 [0.5]
       44 SETTABLEKS                       R4 R3 K16 ["rootDepthPenalty"]
       46 LOADK                            R4 K23 [0.05]
       47 SETTABLEKS                       R4 R3 K17 ["handBoostPerDescendant"]
       49 NEWTABLE                         R4 32 0
       51 GETIMPORT                        R5 K27 [Enum.RigLabel.Root]
       53 NEWTABLE                         R6 0 6
       55 LOADK                            R7 K28 ["root"]
       56 LOADK                            R8 K29 ["torso"]
       57 LOADK                            R9 K30 ["lower-torso"]
       58 LOADK                            R10 K31 ["waist"]
       59 LOADK                            R11 K32 ["hips"]
       60 LOADK                            R12 K33 ["pelvis"]
       61 SETLIST                          R6 R7 6 [1]
       63 SETTABLE                         R6 R4 R5
       64 GETIMPORT                        R5 K35 [Enum.RigLabel.Pelvis]
       66 NEWTABLE                         R6 0 1
       68 LOADK                            R7 K36 ["spine"]
       69 SETLIST                          R6 R7 1 [1]
       71 SETTABLE                         R6 R4 R5
       72 GETIMPORT                        R5 K38 [Enum.RigLabel.Waist]
       74 NEWTABLE                         R6 0 2
       76 LOADK                            R7 K39 ["chest"]
       77 LOADK                            R8 K36 ["spine"]
       78 SETLIST                          R6 R7 2 [1]
       80 SETTABLE                         R6 R4 R5
       81 GETIMPORT                        R5 K41 [Enum.RigLabel.Chest]
       83 NEWTABLE                         R6 0 5
       85 LOADK                            R7 K42 ["upper-torso"]
       86 LOADK                            R8 K29 ["torso"]
       87 LOADK                            R9 K36 ["spine"]
       88 LOADK                            R10 K43 ["upper-chest"]
       89 LOADK                            R11 K39 ["chest"]
       90 SETLIST                          R6 R7 5 [1]
       92 SETTABLE                         R6 R4 R5
       93 GETIMPORT                        R5 K45 [Enum.RigLabel.Neck]
       95 NEWTABLE                         R6 0 1
       97 LOADK                            R7 K46 ["neck"]
       98 SETLIST                          R6 R7 1 [1]
      100 SETTABLE                         R6 R4 R5
      101 GETIMPORT                        R5 K48 [Enum.RigLabel.HeadBase]
      103 NEWTABLE                         R6 0 1
      105 LOADK                            R7 K49 ["head"]
      106 SETLIST                          R6 R7 1 [1]
      108 SETTABLE                         R6 R4 R5
      109 GETIMPORT                        R5 K51 [Enum.RigLabel.LeftClavicle]
      111 NEWTABLE                         R6 0 3
      113 LOADK                            R7 K52 ["shoulder"]
      114 LOADK                            R8 K53 ["clavicle"]
      115 LOADK                            R9 K54 ["collar"]
      116 SETLIST                          R6 R7 3 [1]
      118 SETTABLE                         R6 R4 R5
      119 GETIMPORT                        R5 K56 [Enum.RigLabel.LeftShoulder]
      121 NEWTABLE                         R6 0 4
      123 LOADK                            R7 K52 ["shoulder"]
      124 LOADK                            R8 K57 ["arm"]
      125 LOADK                            R9 K58 ["upper-arm"]
      126 LOADK                            R10 K59 ["up-arm"]
      127 SETLIST                          R6 R7 4 [1]
      129 SETTABLE                         R6 R4 R5
      130 GETIMPORT                        R5 K61 [Enum.RigLabel.LeftElbow]
      132 NEWTABLE                         R6 0 6
      134 LOADK                            R7 K62 ["lower-arm"]
      135 LOADK                            R8 K63 ["elbow"]
      136 LOADK                            R9 K64 ["fore-arm"]
      137 LOADK                            R10 K65 ["down-arm"]
      138 LOADK                            R11 K57 ["arm"]
      139 LOADK                            R12 K66 ["lo-arm"]
      140 SETLIST                          R6 R7 6 [1]
      142 SETTABLE                         R6 R4 R5
      143 GETIMPORT                        R5 K68 [Enum.RigLabel.LeftWrist]
      145 NEWTABLE                         R6 0 2
      147 LOADK                            R7 K69 ["hand"]
      148 LOADK                            R8 K70 ["wrist"]
      149 SETLIST                          R6 R7 2 [1]
      151 SETTABLE                         R6 R4 R5
      152 GETIMPORT                        R5 K72 [Enum.RigLabel.LeftHip]
      154 NEWTABLE                         R6 0 5
      156 LOADK                            R7 K73 ["leg"]
      157 LOADK                            R8 K74 ["hip"]
      158 LOADK                            R9 K75 ["upper-leg"]
      159 LOADK                            R10 K76 ["up-leg"]
      160 LOADK                            R11 K77 ["thigh"]
      161 SETLIST                          R6 R7 5 [1]
      163 SETTABLE                         R6 R4 R5
      164 GETIMPORT                        R5 K79 [Enum.RigLabel.LeftKnee]
      166 NEWTABLE                         R6 0 7
      168 LOADK                            R7 K73 ["leg"]
      169 LOADK                            R8 K80 ["lower-leg"]
      170 LOADK                            R9 K81 ["knee"]
      171 LOADK                            R10 K82 ["calf"]
      172 LOADK                            R11 K83 ["down-leg"]
      173 LOADK                            R12 K84 ["lo-leg"]
      174 LOADK                            R13 K85 ["shin"]
      175 SETLIST                          R6 R7 7 [1]
      177 SETTABLE                         R6 R4 R5
      178 GETIMPORT                        R5 K87 [Enum.RigLabel.LeftAnkle]
      180 NEWTABLE                         R6 0 2
      182 LOADK                            R7 K88 ["foot"]
      183 LOADK                            R8 K89 ["ankle"]
      184 SETLIST                          R6 R7 2 [1]
      186 SETTABLE                         R6 R4 R5
      187 GETIMPORT                        R5 K91 [Enum.RigLabel.LeftToes]
      189 NEWTABLE                         R6 0 5
      191 LOADK                            R7 K92 ["toe-base"]
      192 LOADK                            R8 K93 ["toe"]
      193 LOADK                            R9 K94 ["toes"]
      194 LOADK                            R10 K88 ["foot"]
      195 LOADK                            R11 K95 ["ball"]
      196 SETLIST                          R6 R7 5 [1]
      198 SETTABLE                         R6 R4 R5
      199 GETIMPORT                        R5 K97 [Enum.RigLabel.RightClavicle]
      201 LOADNIL                          R6
      202 SETTABLE                         R6 R4 R5
      203 GETIMPORT                        R5 K99 [Enum.RigLabel.RightShoulder]
      205 LOADNIL                          R6
      206 SETTABLE                         R6 R4 R5
      207 GETIMPORT                        R5 K101 [Enum.RigLabel.RightElbow]
      209 LOADNIL                          R6
      210 SETTABLE                         R6 R4 R5
      211 GETIMPORT                        R5 K103 [Enum.RigLabel.RightWrist]
      213 LOADNIL                          R6
      214 SETTABLE                         R6 R4 R5
      215 GETIMPORT                        R5 K105 [Enum.RigLabel.RightHip]
      217 LOADNIL                          R6
      218 SETTABLE                         R6 R4 R5
      219 GETIMPORT                        R5 K107 [Enum.RigLabel.RightKnee]
      221 LOADNIL                          R6
      222 SETTABLE                         R6 R4 R5
      223 GETIMPORT                        R5 K109 [Enum.RigLabel.RightAnkle]
      225 LOADNIL                          R6
      226 SETTABLE                         R6 R4 R5
      227 GETIMPORT                        R5 K111 [Enum.RigLabel.RightToes]
      229 LOADNIL                          R6
      230 SETTABLE                         R6 R4 R5
      231 NEWTABLE                         R5 0 8
      233 GETIMPORT                        R6 K51 [Enum.RigLabel.LeftClavicle]
      235 GETIMPORT                        R7 K56 [Enum.RigLabel.LeftShoulder]
      237 GETIMPORT                        R8 K61 [Enum.RigLabel.LeftElbow]
      239 GETIMPORT                        R9 K68 [Enum.RigLabel.LeftWrist]
      241 GETIMPORT                        R10 K72 [Enum.RigLabel.LeftHip]
      243 GETIMPORT                        R11 K79 [Enum.RigLabel.LeftKnee]
      245 GETIMPORT                        R12 K87 [Enum.RigLabel.LeftAnkle]
      247 GETIMPORT                        R13 K91 [Enum.RigLabel.LeftToes]
      249 SETLIST                          R5 R6 8 [1]
      251 NEWTABLE                         R6 0 0
      253 NEWTABLE                         R7 8 0
      255 GETIMPORT                        R8 K51 [Enum.RigLabel.LeftClavicle]
      257 GETIMPORT                        R9 K97 [Enum.RigLabel.RightClavicle]
      259 SETTABLE                         R9 R7 R8
      260 GETIMPORT                        R8 K56 [Enum.RigLabel.LeftShoulder]
      262 GETIMPORT                        R9 K99 [Enum.RigLabel.RightShoulder]
      264 SETTABLE                         R9 R7 R8
      265 GETIMPORT                        R8 K61 [Enum.RigLabel.LeftElbow]
      267 GETIMPORT                        R9 K101 [Enum.RigLabel.RightElbow]
      269 SETTABLE                         R9 R7 R8
      270 GETIMPORT                        R8 K68 [Enum.RigLabel.LeftWrist]
      272 GETIMPORT                        R9 K103 [Enum.RigLabel.RightWrist]
      274 SETTABLE                         R9 R7 R8
      275 GETIMPORT                        R8 K72 [Enum.RigLabel.LeftHip]
      277 GETIMPORT                        R9 K105 [Enum.RigLabel.RightHip]
      279 SETTABLE                         R9 R7 R8
      280 GETIMPORT                        R8 K79 [Enum.RigLabel.LeftKnee]
      282 GETIMPORT                        R9 K107 [Enum.RigLabel.RightKnee]
      284 SETTABLE                         R9 R7 R8
      285 GETIMPORT                        R8 K87 [Enum.RigLabel.LeftAnkle]
      287 GETIMPORT                        R9 K109 [Enum.RigLabel.RightAnkle]
      289 SETTABLE                         R9 R7 R8
      290 GETIMPORT                        R8 K91 [Enum.RigLabel.LeftToes]
      292 GETIMPORT                        R9 K111 [Enum.RigLabel.RightToes]
      294 SETTABLE                         R9 R7 R8
      295 MOVE                             R8 R7
      296 LOADNIL                          R9
      297 LOADNIL                          R10
      298 FORGPREP                         R8
      299 SETTABLE                         R11 R7 R12
      300 FORGLOOP                         R8 2 ; [-2]
      302 MOVE                             R8 R5
      303 LOADNIL                          R9
      304 LOADNIL                          R10
      305 FORGPREP                         R8
      306 LOADK                            R13 K112 ["left"]
      307 SETTABLE                         R13 R6 R12
      308 GETTABLE                         R13 R7 R12
      309 LOADK                            R14 K113 ["right"]
      310 SETTABLE                         R14 R6 R13
      311 FORGLOOP                         R8 2 ; [-6]
      313 NEWTABLE                         R8 16 0
      315 GETIMPORT                        R9 K27 [Enum.RigLabel.Root]
      317 GETIMPORT                        R10 K116 [Vector2.new]
      319 LOADN                            R11 0
      320 LOADK                            R12 K117 [0.199]
      321 CALL                             R10 2 1
      322 SETTABLE                         R10 R8 R9
      323 GETIMPORT                        R9 K35 [Enum.RigLabel.Pelvis]
      325 GETIMPORT                        R10 K116 [Vector2.new]
      327 LOADN                            R11 0
      328 LOADK                            R12 K118 [0.28]
      329 CALL                             R10 2 1
      330 SETTABLE                         R10 R8 R9
      331 GETIMPORT                        R9 K38 [Enum.RigLabel.Waist]
      333 GETIMPORT                        R10 K116 [Vector2.new]
      335 LOADN                            R11 0
      336 LOADK                            R12 K119 [0.431]
      337 CALL                             R10 2 1
      338 SETTABLE                         R10 R8 R9
      339 GETIMPORT                        R9 K41 [Enum.RigLabel.Chest]
      341 GETIMPORT                        R10 K116 [Vector2.new]
      343 LOADN                            R11 0
      344 LOADK                            R12 K120 [0.669]
      345 CALL                             R10 2 1
      346 SETTABLE                         R10 R8 R9
      347 GETIMPORT                        R9 K45 [Enum.RigLabel.Neck]
      349 GETIMPORT                        R10 K116 [Vector2.new]
      351 LOADN                            R11 0
      352 LOADK                            R12 K121 [0.896]
      353 CALL                             R10 2 1
      354 SETTABLE                         R10 R8 R9
      355 GETIMPORT                        R9 K48 [Enum.RigLabel.HeadBase]
      357 GETIMPORT                        R10 K116 [Vector2.new]
      359 LOADN                            R11 0
      360 LOADN                            R12 1
      361 CALL                             R10 2 1
      362 SETTABLE                         R10 R8 R9
      363 GETIMPORT                        R9 K51 [Enum.RigLabel.LeftClavicle]
      365 GETIMPORT                        R10 K116 [Vector2.new]
      367 LOADK                            R11 K122 [-0.075]
      368 LOADK                            R12 K123 [0.783]
      369 CALL                             R10 2 1
      370 SETTABLE                         R10 R8 R9
      371 GETIMPORT                        R9 K56 [Enum.RigLabel.LeftShoulder]
      373 GETIMPORT                        R10 K116 [Vector2.new]
      375 LOADK                            R11 K124 [-0.365]
      376 LOADK                            R12 K125 [0.78]
      377 CALL                             R10 2 1
      378 SETTABLE                         R10 R8 R9
      379 GETIMPORT                        R9 K61 [Enum.RigLabel.LeftElbow]
      381 GETIMPORT                        R10 K116 [Vector2.new]
      383 LOADK                            R11 K126 [-0.722]
      384 LOADK                            R12 K127 [0.566]
      385 CALL                             R10 2 1
      386 SETTABLE                         R10 R8 R9
      387 GETIMPORT                        R9 K68 [Enum.RigLabel.LeftWrist]
      389 GETIMPORT                        R10 K116 [Vector2.new]
      391 LOADN                            R11 255
      392 LOADK                            R12 K128 [0.385]
      393 CALL                             R10 2 1
      394 SETTABLE                         R10 R8 R9
      395 GETIMPORT                        R9 K72 [Enum.RigLabel.LeftHip]
      397 GETIMPORT                        R10 K116 [Vector2.new]
      399 LOADK                            R11 K129 [-0.182]
      400 LOADK                            R12 K130 [0.118]
      401 CALL                             R10 2 1
      402 SETTABLE                         R10 R8 R9
      403 GETIMPORT                        R9 K79 [Enum.RigLabel.LeftKnee]
      405 GETIMPORT                        R10 K116 [Vector2.new]
      407 LOADK                            R11 K131 [-0.231]
      408 LOADK                            R12 K132 [-0.381]
      409 CALL                             R10 2 1
      410 SETTABLE                         R10 R8 R9
      411 GETIMPORT                        R9 K87 [Enum.RigLabel.LeftAnkle]
      413 GETIMPORT                        R10 K116 [Vector2.new]
      415 LOADK                            R11 K133 [-0.261]
      416 LOADK                            R12 K134 [-0.917]
      417 CALL                             R10 2 1
      418 SETTABLE                         R10 R8 R9
      419 GETIMPORT                        R9 K91 [Enum.RigLabel.LeftToes]
      421 GETIMPORT                        R10 K116 [Vector2.new]
      423 LOADK                            R11 K135 [-0.266]
      424 LOADN                            R12 255
      425 CALL                             R10 2 1
      426 SETTABLE                         R10 R8 R9
      427 MOVE                             R9 R5
      428 LOADNIL                          R10
      429 LOADNIL                          R11
      430 FORGPREP                         R9
      431 GETTABLE                         R14 R7 R13
      432 GETTABLE                         R15 R8 R13
      433 JUMPIFNOT                        R15 ; [+9]
      434 GETIMPORT                        R16 K116 [Vector2.new]
      436 GETTABLEKS                       R18 R15 K136 ["X"]
      438 MINUS                            R17 R18
      439 GETTABLEKS                       R18 R15 K137 ["Y"]
      441 CALL                             R16 2 1
      442 SETTABLE                         R16 R8 R14
      443 FORGLOOP                         R9 2 ; [-13]
      445 NEWTABLE                         R9 16 0
      447 GETIMPORT                        R10 K27 [Enum.RigLabel.Root]
      449 LOADNIL                          R11
      450 SETTABLE                         R11 R9 R10
      451 GETIMPORT                        R10 K35 [Enum.RigLabel.Pelvis]
      453 GETIMPORT                        R11 K27 [Enum.RigLabel.Root]
      455 SETTABLE                         R11 R9 R10
      456 GETIMPORT                        R10 K38 [Enum.RigLabel.Waist]
      458 GETIMPORT                        R11 K35 [Enum.RigLabel.Pelvis]
      460 SETTABLE                         R11 R9 R10
      461 GETIMPORT                        R10 K41 [Enum.RigLabel.Chest]
      463 GETIMPORT                        R11 K38 [Enum.RigLabel.Waist]
      465 SETTABLE                         R11 R9 R10
      466 GETIMPORT                        R10 K45 [Enum.RigLabel.Neck]
      468 GETIMPORT                        R11 K41 [Enum.RigLabel.Chest]
      470 SETTABLE                         R11 R9 R10
      471 GETIMPORT                        R10 K48 [Enum.RigLabel.HeadBase]
      473 GETIMPORT                        R11 K45 [Enum.RigLabel.Neck]
      475 SETTABLE                         R11 R9 R10
      476 GETIMPORT                        R10 K51 [Enum.RigLabel.LeftClavicle]
      478 GETIMPORT                        R11 K41 [Enum.RigLabel.Chest]
      480 SETTABLE                         R11 R9 R10
      481 GETIMPORT                        R10 K56 [Enum.RigLabel.LeftShoulder]
      483 GETIMPORT                        R11 K51 [Enum.RigLabel.LeftClavicle]
      485 SETTABLE                         R11 R9 R10
      486 GETIMPORT                        R10 K61 [Enum.RigLabel.LeftElbow]
      488 GETIMPORT                        R11 K56 [Enum.RigLabel.LeftShoulder]
      490 SETTABLE                         R11 R9 R10
      491 GETIMPORT                        R10 K68 [Enum.RigLabel.LeftWrist]
      493 GETIMPORT                        R11 K61 [Enum.RigLabel.LeftElbow]
      495 SETTABLE                         R11 R9 R10
      496 GETIMPORT                        R10 K72 [Enum.RigLabel.LeftHip]
      498 GETIMPORT                        R11 K27 [Enum.RigLabel.Root]
      500 SETTABLE                         R11 R9 R10
      501 GETIMPORT                        R10 K79 [Enum.RigLabel.LeftKnee]
      503 GETIMPORT                        R11 K72 [Enum.RigLabel.LeftHip]
      505 SETTABLE                         R11 R9 R10
      506 GETIMPORT                        R10 K87 [Enum.RigLabel.LeftAnkle]
      508 GETIMPORT                        R11 K79 [Enum.RigLabel.LeftKnee]
      510 SETTABLE                         R11 R9 R10
      511 GETIMPORT                        R10 K91 [Enum.RigLabel.LeftToes]
      513 GETIMPORT                        R11 K87 [Enum.RigLabel.LeftAnkle]
      515 SETTABLE                         R11 R9 R10
      516 MOVE                             R10 R5
      517 LOADNIL                          R11
      518 LOADNIL                          R12
      519 FORGPREP                         R10
      520 GETTABLE                         R15 R7 R14
      521 GETTABLE                         R16 R9 R14
      522 JUMPIFNOT                        R16 ; [+3]
      523 GETTABLE                         R18 R7 R16
      524 OR                               R17 R18 R16
      525 SETTABLE                         R17 R9 R15
      526 FORGLOOP                         R10 2 ; [-7]
      528 NEWTABLE                         R10 16 0
      530 GETIMPORT                        R11 K27 [Enum.RigLabel.Root]
      532 GETIMPORT                        R12 K35 [Enum.RigLabel.Pelvis]
      534 SETTABLE                         R12 R10 R11
      535 GETIMPORT                        R11 K35 [Enum.RigLabel.Pelvis]
      537 GETIMPORT                        R12 K38 [Enum.RigLabel.Waist]
      539 SETTABLE                         R12 R10 R11
      540 GETIMPORT                        R11 K38 [Enum.RigLabel.Waist]
      542 GETIMPORT                        R12 K41 [Enum.RigLabel.Chest]
      544 SETTABLE                         R12 R10 R11
      545 GETIMPORT                        R11 K41 [Enum.RigLabel.Chest]
      547 GETIMPORT                        R12 K45 [Enum.RigLabel.Neck]
      549 SETTABLE                         R12 R10 R11
      550 GETIMPORT                        R11 K45 [Enum.RigLabel.Neck]
      552 GETIMPORT                        R12 K48 [Enum.RigLabel.HeadBase]
      554 SETTABLE                         R12 R10 R11
      555 GETIMPORT                        R11 K48 [Enum.RigLabel.HeadBase]
      557 LOADNIL                          R12
      558 SETTABLE                         R12 R10 R11
      559 GETIMPORT                        R11 K51 [Enum.RigLabel.LeftClavicle]
      561 GETIMPORT                        R12 K56 [Enum.RigLabel.LeftShoulder]
      563 SETTABLE                         R12 R10 R11
      564 GETIMPORT                        R11 K56 [Enum.RigLabel.LeftShoulder]
      566 GETIMPORT                        R12 K61 [Enum.RigLabel.LeftElbow]
      568 SETTABLE                         R12 R10 R11
      569 GETIMPORT                        R11 K61 [Enum.RigLabel.LeftElbow]
      571 GETIMPORT                        R12 K68 [Enum.RigLabel.LeftWrist]
      573 SETTABLE                         R12 R10 R11
      574 GETIMPORT                        R11 K68 [Enum.RigLabel.LeftWrist]
      576 LOADNIL                          R12
      577 SETTABLE                         R12 R10 R11
      578 GETIMPORT                        R11 K72 [Enum.RigLabel.LeftHip]
      580 GETIMPORT                        R12 K79 [Enum.RigLabel.LeftKnee]
      582 SETTABLE                         R12 R10 R11
      583 GETIMPORT                        R11 K79 [Enum.RigLabel.LeftKnee]
      585 GETIMPORT                        R12 K87 [Enum.RigLabel.LeftAnkle]
      587 SETTABLE                         R12 R10 R11
      588 GETIMPORT                        R11 K87 [Enum.RigLabel.LeftAnkle]
      590 GETIMPORT                        R12 K91 [Enum.RigLabel.LeftToes]
      592 SETTABLE                         R12 R10 R11
      593 GETIMPORT                        R11 K91 [Enum.RigLabel.LeftToes]
      595 LOADNIL                          R12
      596 SETTABLE                         R12 R10 R11
      597 MOVE                             R11 R5
      598 LOADNIL                          R12
      599 LOADNIL                          R13
      600 FORGPREP                         R11
      601 GETTABLE                         R16 R7 R15
      602 GETTABLE                         R17 R10 R15
      603 JUMPIFNOT                        R17 ; [+2]
      604 GETTABLE                         R18 R7 R17
      605 SETTABLE                         R18 R10 R16
      606 FORGLOOP                         R11 2 ; [-6]
      608 GETTABLEKS                       R11 R2 K138 ["bodyRigLabels"]
      610 NEWTABLE                         R12 0 0
      612 MOVE                             R13 R5
      613 LOADNIL                          R14
      614 LOADNIL                          R15
      615 FORGPREP                         R13
      616 GETTABLE                         R18 R7 R17
      617 JUMPIFNOT                        R18 ; [+2]
      618 GETTABLE                         R19 R4 R17
      619 SETTABLE                         R19 R4 R18
      620 FORGLOOP                         R13 2 ; [-5]
      622 MOVE                             R13 R11
      623 LOADNIL                          R14
      624 LOADNIL                          R15
      625 FORGPREP                         R13
      626 GETTABLE                         R18 R4 R17
      627 JUMPIFNOT                        R18 ; [+10]
      628 MOVE                             R19 R18
      629 LOADNIL                          R20
      630 LOADNIL                          R21
      631 FORGPREP                         R19
      632 GETTABLE                         R26 R12 R23
      633 ORK                              R25 R26 K140 [0]
      634 ADDK                             R24 R25 K139 [1]
      635 SETTABLE                         R24 R12 R23
      636 FORGLOOP                         R19 2 ; [-5]
      638 FORGLOOP                         R13 2 ; [-13]
      640 MOVE                             R13 R12
      641 LOADNIL                          R14
      642 LOADNIL                          R15
      643 FORGPREP                         R13
      644 DIVRK                            R18 R139 K17 ["handBoostPerDescendant"]
      645 SETTABLE                         R18 R12 R16
      646 FORGLOOP                         R13 2 ; [-3]
      648 DUPCLOSURE                       R13 K141 [PROTO_0]
      649 DUPCLOSURE                       R14 K142 [PROTO_1]
      650 CAPTURE                          VAL R4
      651 CAPTURE                          VAL R12
      652 CAPTURE                          VAL R3
      653 CAPTURE                          VAL R6
      654 CAPTURE                          VAL R13
      655 DUPCLOSURE                       R15 K143 [PROTO_2]
      656 CAPTURE                          VAL R8
      657 CAPTURE                          VAL R3
      658 NEWTABLE                         R16 8 0
      660 DUPCLOSURE                       R17 K144 [PROTO_4]
      661 CAPTURE                          VAL R11
      662 CAPTURE                          VAL R2
      663 CAPTURE                          VAL R3
      664 CAPTURE                          VAL R14
      665 CAPTURE                          VAL R15
      666 CAPTURE                          VAL R9
      667 CAPTURE                          VAL R10
      668 SETTABLEKS                       R17 R16 K145 ["setup"]
      670 SETTABLEKS                       R13 R16 K146 ["guessJointSide"]
      672 SETTABLEKS                       R14 R16 K147 ["nameScore"]
      674 SETTABLEKS                       R15 R16 K148 ["positionScore"]
      676 SETTABLEKS                       R7 R16 K149 ["symmetryCounterparts"]
      678 SETTABLEKS                       R9 R16 K150 ["parentRigLabel"]
      680 RETURN                           R16 1
