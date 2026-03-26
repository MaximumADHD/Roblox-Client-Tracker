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
       15 GETTABLEKS                       R3 R2 K7 ["hasSpine"]
       17 GETTABLEKS                       R4 R2 K8 ["spineLabel"]
       19 GETTABLEKS                       R5 R2 K9 ["hasPelvis"]
       21 GETTABLEKS                       R6 R2 K10 ["LeftToeBase"]
       23 GETTABLEKS                       R7 R2 K11 ["RightToeBase"]
       25 DUPTABLE                         R8 K23 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant"}]
       26 LOADK                            R9 K24 [0.3]
       27 SETTABLEKS                       R9 R8 K12 ["tokenLengthWeight"]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K13 ["sideLeftRightWeight"]
       32 LOADK                            R9 K24 [0.3]
       33 SETTABLEKS                       R9 R8 K14 ["parentInfluenceWeight"]
       35 LOADK                            R9 K25 [0.1]
       36 SETTABLEKS                       R9 R8 K15 ["childInfluenceWeight"]
       38 LOADK                            R9 K26 [0.02]
       39 SETTABLEKS                       R9 R8 K16 ["leftRightPositionThreshold"]
       41 LOADK                            R9 K25 [0.1]
       42 SETTABLEKS                       R9 R8 K17 ["distanceSmoothingKernel"]
       44 LOADK                            R9 K27 [0.5]
       45 SETTABLEKS                       R9 R8 K18 ["minScoreThreshold"]
       47 LOADN                            R9 3
       48 SETTABLEKS                       R9 R8 K19 ["nameWeight"]
       50 LOADK                            R9 K27 [0.5]
       51 SETTABLEKS                       R9 R8 K20 ["positionWeight"]
       53 LOADK                            R9 K27 [0.5]
       54 SETTABLEKS                       R9 R8 K21 ["rootDepthPenalty"]
       56 LOADK                            R9 K28 [0.05]
       57 SETTABLEKS                       R9 R8 K22 ["handBoostPerDescendant"]
       59 NEWTABLE                         R9 32 0
       61 GETIMPORT                        R10 K32 [Enum.RigLabel.Root]
       63 NEWTABLE                         R11 0 6
       65 LOADK                            R12 K33 ["root"]
       66 LOADK                            R13 K34 ["torso"]
       67 LOADK                            R14 K35 ["lower-torso"]
       68 LOADK                            R15 K36 ["waist"]
       69 LOADK                            R16 K37 ["hips"]
       70 LOADK                            R17 K38 ["pelvis"]
       71 SETLIST                          R11 R12 6 [1]
       73 SETTABLE                         R11 R9 R10
       74 GETIMPORT                        R10 K40 [Enum.RigLabel.Waist]
       76 NEWTABLE                         R11 0 1
       78 LOADK                            R12 K41 ["chest"]
       79 SETLIST                          R11 R12 1 [1]
       81 SETTABLE                         R11 R9 R10
       82 GETIMPORT                        R10 K43 [Enum.RigLabel.Chest]
       84 NEWTABLE                         R11 0 5
       86 LOADK                            R12 K44 ["upper-torso"]
       87 LOADK                            R13 K34 ["torso"]
       88 LOADK                            R14 K45 ["spine"]
       89 LOADK                            R15 K46 ["upper-chest"]
       90 LOADK                            R16 K41 ["chest"]
       91 SETLIST                          R11 R12 5 [1]
       93 SETTABLE                         R11 R9 R10
       94 GETIMPORT                        R10 K48 [Enum.RigLabel.Neck]
       96 NEWTABLE                         R11 0 1
       98 LOADK                            R12 K49 ["neck"]
       99 SETLIST                          R11 R12 1 [1]
      101 SETTABLE                         R11 R9 R10
      102 GETIMPORT                        R10 K51 [Enum.RigLabel.HeadBase]
      104 NEWTABLE                         R11 0 1
      106 LOADK                            R12 K52 ["head"]
      107 SETLIST                          R11 R12 1 [1]
      109 SETTABLE                         R11 R9 R10
      110 GETIMPORT                        R10 K54 [Enum.RigLabel.LeftClavicle]
      112 NEWTABLE                         R11 0 3
      114 LOADK                            R12 K55 ["shoulder"]
      115 LOADK                            R13 K56 ["clavicle"]
      116 LOADK                            R14 K57 ["collar"]
      117 SETLIST                          R11 R12 3 [1]
      119 SETTABLE                         R11 R9 R10
      120 GETIMPORT                        R10 K59 [Enum.RigLabel.LeftShoulder]
      122 NEWTABLE                         R11 0 4
      124 LOADK                            R12 K55 ["shoulder"]
      125 LOADK                            R13 K60 ["arm"]
      126 LOADK                            R14 K61 ["upper-arm"]
      127 LOADK                            R15 K62 ["up-arm"]
      128 SETLIST                          R11 R12 4 [1]
      130 SETTABLE                         R11 R9 R10
      131 GETIMPORT                        R10 K64 [Enum.RigLabel.LeftElbow]
      133 NEWTABLE                         R11 0 6
      135 LOADK                            R12 K65 ["lower-arm"]
      136 LOADK                            R13 K66 ["elbow"]
      137 LOADK                            R14 K67 ["fore-arm"]
      138 LOADK                            R15 K68 ["down-arm"]
      139 LOADK                            R16 K60 ["arm"]
      140 LOADK                            R17 K69 ["lo-arm"]
      141 SETLIST                          R11 R12 6 [1]
      143 SETTABLE                         R11 R9 R10
      144 GETIMPORT                        R10 K71 [Enum.RigLabel.LeftWrist]
      146 NEWTABLE                         R11 0 2
      148 LOADK                            R12 K72 ["hand"]
      149 LOADK                            R13 K73 ["wrist"]
      150 SETLIST                          R11 R12 2 [1]
      152 SETTABLE                         R11 R9 R10
      153 GETIMPORT                        R10 K75 [Enum.RigLabel.LeftHip]
      155 NEWTABLE                         R11 0 5
      157 LOADK                            R12 K76 ["leg"]
      158 LOADK                            R13 K77 ["hip"]
      159 LOADK                            R14 K78 ["upper-leg"]
      160 LOADK                            R15 K79 ["up-leg"]
      161 LOADK                            R16 K80 ["thigh"]
      162 SETLIST                          R11 R12 5 [1]
      164 SETTABLE                         R11 R9 R10
      165 GETIMPORT                        R10 K82 [Enum.RigLabel.LeftKnee]
      167 NEWTABLE                         R11 0 7
      169 LOADK                            R12 K76 ["leg"]
      170 LOADK                            R13 K83 ["lower-leg"]
      171 LOADK                            R14 K84 ["knee"]
      172 LOADK                            R15 K85 ["calf"]
      173 LOADK                            R16 K86 ["down-leg"]
      174 LOADK                            R17 K87 ["lo-leg"]
      175 LOADK                            R18 K88 ["shin"]
      176 SETLIST                          R11 R12 7 [1]
      178 SETTABLE                         R11 R9 R10
      179 GETIMPORT                        R10 K90 [Enum.RigLabel.LeftAnkle]
      181 NEWTABLE                         R11 0 2
      183 LOADK                            R12 K91 ["foot"]
      184 LOADK                            R13 K92 ["ankle"]
      185 SETLIST                          R11 R12 2 [1]
      187 SETTABLE                         R11 R9 R10
      188 NEWTABLE                         R10 0 5
      190 LOADK                            R11 K93 ["toe-base"]
      191 LOADK                            R12 K94 ["toe"]
      192 LOADK                            R13 K95 ["toes"]
      193 LOADK                            R14 K91 ["foot"]
      194 LOADK                            R15 K96 ["ball"]
      195 SETLIST                          R10 R11 5 [1]
      197 SETTABLE                         R10 R9 R6
      198 GETIMPORT                        R10 K98 [Enum.RigLabel.RightClavicle]
      200 LOADNIL                          R11
      201 SETTABLE                         R11 R9 R10
      202 GETIMPORT                        R10 K100 [Enum.RigLabel.RightShoulder]
      204 LOADNIL                          R11
      205 SETTABLE                         R11 R9 R10
      206 GETIMPORT                        R10 K102 [Enum.RigLabel.RightElbow]
      208 LOADNIL                          R11
      209 SETTABLE                         R11 R9 R10
      210 GETIMPORT                        R10 K104 [Enum.RigLabel.RightWrist]
      212 LOADNIL                          R11
      213 SETTABLE                         R11 R9 R10
      214 GETIMPORT                        R10 K106 [Enum.RigLabel.RightHip]
      216 LOADNIL                          R11
      217 SETTABLE                         R11 R9 R10
      218 GETIMPORT                        R10 K108 [Enum.RigLabel.RightKnee]
      220 LOADNIL                          R11
      221 SETTABLE                         R11 R9 R10
      222 GETIMPORT                        R10 K110 [Enum.RigLabel.RightAnkle]
      224 LOADNIL                          R11
      225 SETTABLE                         R11 R9 R10
      226 LOADNIL                          R10
      227 SETTABLE                         R10 R9 R7
      228 JUMPIFNOT                        R3 ; [+7]
      229 NEWTABLE                         R10 0 1
      231 LOADK                            R11 K45 ["spine"]
      232 SETLIST                          R10 R11 1 [1]
      234 SETTABLE                         R10 R9 R4
      235 JUMP                             ; [+9]
      236 JUMPIFNOT                        R5 ; [+8]
      237 GETIMPORT                        R10 K112 [Enum.RigLabel.Pelvis]
      239 NEWTABLE                         R11 0 1
      241 LOADK                            R12 K45 ["spine"]
      242 SETLIST                          R11 R12 1 [1]
      244 SETTABLE                         R11 R9 R10
      245 NEWTABLE                         R10 0 8
      247 GETIMPORT                        R11 K54 [Enum.RigLabel.LeftClavicle]
      249 GETIMPORT                        R12 K59 [Enum.RigLabel.LeftShoulder]
      251 GETIMPORT                        R13 K64 [Enum.RigLabel.LeftElbow]
      253 GETIMPORT                        R14 K71 [Enum.RigLabel.LeftWrist]
      255 GETIMPORT                        R15 K75 [Enum.RigLabel.LeftHip]
      257 GETIMPORT                        R16 K82 [Enum.RigLabel.LeftKnee]
      259 GETIMPORT                        R17 K90 [Enum.RigLabel.LeftAnkle]
      261 MOVE                             R18 R6
      262 SETLIST                          R10 R11 8 [1]
      264 NEWTABLE                         R11 0 0
      266 NEWTABLE                         R12 8 0
      268 GETIMPORT                        R13 K54 [Enum.RigLabel.LeftClavicle]
      270 GETIMPORT                        R14 K98 [Enum.RigLabel.RightClavicle]
      272 SETTABLE                         R14 R12 R13
      273 GETIMPORT                        R13 K59 [Enum.RigLabel.LeftShoulder]
      275 GETIMPORT                        R14 K100 [Enum.RigLabel.RightShoulder]
      277 SETTABLE                         R14 R12 R13
      278 GETIMPORT                        R13 K64 [Enum.RigLabel.LeftElbow]
      280 GETIMPORT                        R14 K102 [Enum.RigLabel.RightElbow]
      282 SETTABLE                         R14 R12 R13
      283 GETIMPORT                        R13 K71 [Enum.RigLabel.LeftWrist]
      285 GETIMPORT                        R14 K104 [Enum.RigLabel.RightWrist]
      287 SETTABLE                         R14 R12 R13
      288 GETIMPORT                        R13 K75 [Enum.RigLabel.LeftHip]
      290 GETIMPORT                        R14 K106 [Enum.RigLabel.RightHip]
      292 SETTABLE                         R14 R12 R13
      293 GETIMPORT                        R13 K82 [Enum.RigLabel.LeftKnee]
      295 GETIMPORT                        R14 K108 [Enum.RigLabel.RightKnee]
      297 SETTABLE                         R14 R12 R13
      298 GETIMPORT                        R13 K90 [Enum.RigLabel.LeftAnkle]
      300 GETIMPORT                        R14 K110 [Enum.RigLabel.RightAnkle]
      302 SETTABLE                         R14 R12 R13
      303 SETTABLE                         R7 R12 R6
      304 MOVE                             R13 R12
      305 LOADNIL                          R14
      306 LOADNIL                          R15
      307 FORGPREP                         R13
      308 SETTABLE                         R16 R12 R17
      309 FORGLOOP                         R13 2 ; [-2]
      311 MOVE                             R13 R10
      312 LOADNIL                          R14
      313 LOADNIL                          R15
      314 FORGPREP                         R13
      315 LOADK                            R18 K113 ["left"]
      316 SETTABLE                         R18 R11 R17
      317 GETTABLE                         R18 R12 R17
      318 LOADK                            R19 K114 ["right"]
      319 SETTABLE                         R19 R11 R18
      320 FORGLOOP                         R13 2 ; [-6]
      322 NEWTABLE                         R13 16 0
      324 GETIMPORT                        R14 K32 [Enum.RigLabel.Root]
      326 GETIMPORT                        R15 K117 [Vector2.new]
      328 LOADN                            R16 0
      329 LOADK                            R17 K118 [0.199]
      330 CALL                             R15 2 1
      331 SETTABLE                         R15 R13 R14
      332 GETIMPORT                        R14 K40 [Enum.RigLabel.Waist]
      334 GETIMPORT                        R15 K117 [Vector2.new]
      336 LOADN                            R16 0
      337 LOADK                            R17 K119 [0.431]
      338 CALL                             R15 2 1
      339 SETTABLE                         R15 R13 R14
      340 GETIMPORT                        R14 K43 [Enum.RigLabel.Chest]
      342 GETIMPORT                        R15 K117 [Vector2.new]
      344 LOADN                            R16 0
      345 LOADK                            R17 K120 [0.669]
      346 CALL                             R15 2 1
      347 SETTABLE                         R15 R13 R14
      348 GETIMPORT                        R14 K48 [Enum.RigLabel.Neck]
      350 GETIMPORT                        R15 K117 [Vector2.new]
      352 LOADN                            R16 0
      353 LOADK                            R17 K121 [0.896]
      354 CALL                             R15 2 1
      355 SETTABLE                         R15 R13 R14
      356 GETIMPORT                        R14 K51 [Enum.RigLabel.HeadBase]
      358 GETIMPORT                        R15 K117 [Vector2.new]
      360 LOADN                            R16 0
      361 LOADN                            R17 1
      362 CALL                             R15 2 1
      363 SETTABLE                         R15 R13 R14
      364 GETIMPORT                        R14 K54 [Enum.RigLabel.LeftClavicle]
      366 GETIMPORT                        R15 K117 [Vector2.new]
      368 LOADK                            R16 K122 [-0.075]
      369 LOADK                            R17 K123 [0.783]
      370 CALL                             R15 2 1
      371 SETTABLE                         R15 R13 R14
      372 GETIMPORT                        R14 K59 [Enum.RigLabel.LeftShoulder]
      374 GETIMPORT                        R15 K117 [Vector2.new]
      376 LOADK                            R16 K124 [-0.365]
      377 LOADK                            R17 K125 [0.78]
      378 CALL                             R15 2 1
      379 SETTABLE                         R15 R13 R14
      380 GETIMPORT                        R14 K64 [Enum.RigLabel.LeftElbow]
      382 GETIMPORT                        R15 K117 [Vector2.new]
      384 LOADK                            R16 K126 [-0.722]
      385 LOADK                            R17 K127 [0.566]
      386 CALL                             R15 2 1
      387 SETTABLE                         R15 R13 R14
      388 GETIMPORT                        R14 K71 [Enum.RigLabel.LeftWrist]
      390 GETIMPORT                        R15 K117 [Vector2.new]
      392 LOADN                            R16 255
      393 LOADK                            R17 K128 [0.385]
      394 CALL                             R15 2 1
      395 SETTABLE                         R15 R13 R14
      396 GETIMPORT                        R14 K75 [Enum.RigLabel.LeftHip]
      398 GETIMPORT                        R15 K117 [Vector2.new]
      400 LOADK                            R16 K129 [-0.182]
      401 LOADK                            R17 K130 [0.118]
      402 CALL                             R15 2 1
      403 SETTABLE                         R15 R13 R14
      404 GETIMPORT                        R14 K82 [Enum.RigLabel.LeftKnee]
      406 GETIMPORT                        R15 K117 [Vector2.new]
      408 LOADK                            R16 K131 [-0.231]
      409 LOADK                            R17 K132 [-0.381]
      410 CALL                             R15 2 1
      411 SETTABLE                         R15 R13 R14
      412 GETIMPORT                        R14 K90 [Enum.RigLabel.LeftAnkle]
      414 GETIMPORT                        R15 K117 [Vector2.new]
      416 LOADK                            R16 K133 [-0.261]
      417 LOADK                            R17 K134 [-0.917]
      418 CALL                             R15 2 1
      419 SETTABLE                         R15 R13 R14
      420 GETIMPORT                        R14 K117 [Vector2.new]
      422 LOADK                            R15 K135 [-0.266]
      423 LOADN                            R16 255
      424 CALL                             R14 2 1
      425 SETTABLE                         R14 R13 R6
      426 MOVE                             R14 R10
      427 LOADNIL                          R15
      428 LOADNIL                          R16
      429 FORGPREP                         R14
      430 GETTABLE                         R19 R12 R18
      431 GETTABLE                         R20 R13 R18
      432 JUMPIFNOT                        R20 ; [+9]
      433 GETIMPORT                        R21 K117 [Vector2.new]
      435 GETTABLEKS                       R23 R20 K136 ["X"]
      437 MINUS                            R22 R23
      438 GETTABLEKS                       R23 R20 K137 ["Y"]
      440 CALL                             R21 2 1
      441 SETTABLE                         R21 R13 R19
      442 FORGLOOP                         R14 2 ; [-13]
      444 JUMPIFNOT                        R3 ; [+7]
      445 GETIMPORT                        R14 K117 [Vector2.new]
      447 LOADN                            R15 0
      448 LOADK                            R16 K138 [0.55]
      449 CALL                             R14 2 1
      450 SETTABLE                         R14 R13 R4
      451 JUMP                             ; [+9]
      452 JUMPIFNOT                        R5 ; [+8]
      453 GETIMPORT                        R14 K112 [Enum.RigLabel.Pelvis]
      455 GETIMPORT                        R15 K117 [Vector2.new]
      457 LOADN                            R16 0
      458 LOADK                            R17 K139 [0.28]
      459 CALL                             R15 2 1
      460 SETTABLE                         R15 R13 R14
      461 NEWTABLE                         R14 16 0
      463 GETIMPORT                        R15 K32 [Enum.RigLabel.Root]
      465 LOADNIL                          R16
      466 SETTABLE                         R16 R14 R15
      467 GETIMPORT                        R15 K48 [Enum.RigLabel.Neck]
      469 GETIMPORT                        R16 K43 [Enum.RigLabel.Chest]
      471 SETTABLE                         R16 R14 R15
      472 GETIMPORT                        R15 K51 [Enum.RigLabel.HeadBase]
      474 GETIMPORT                        R16 K48 [Enum.RigLabel.Neck]
      476 SETTABLE                         R16 R14 R15
      477 GETIMPORT                        R15 K54 [Enum.RigLabel.LeftClavicle]
      479 GETIMPORT                        R16 K43 [Enum.RigLabel.Chest]
      481 SETTABLE                         R16 R14 R15
      482 GETIMPORT                        R15 K59 [Enum.RigLabel.LeftShoulder]
      484 GETIMPORT                        R16 K54 [Enum.RigLabel.LeftClavicle]
      486 SETTABLE                         R16 R14 R15
      487 GETIMPORT                        R15 K64 [Enum.RigLabel.LeftElbow]
      489 GETIMPORT                        R16 K59 [Enum.RigLabel.LeftShoulder]
      491 SETTABLE                         R16 R14 R15
      492 GETIMPORT                        R15 K71 [Enum.RigLabel.LeftWrist]
      494 GETIMPORT                        R16 K64 [Enum.RigLabel.LeftElbow]
      496 SETTABLE                         R16 R14 R15
      497 GETIMPORT                        R15 K75 [Enum.RigLabel.LeftHip]
      499 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      501 SETTABLE                         R16 R14 R15
      502 GETIMPORT                        R15 K82 [Enum.RigLabel.LeftKnee]
      504 GETIMPORT                        R16 K75 [Enum.RigLabel.LeftHip]
      506 SETTABLE                         R16 R14 R15
      507 GETIMPORT                        R15 K90 [Enum.RigLabel.LeftAnkle]
      509 GETIMPORT                        R16 K82 [Enum.RigLabel.LeftKnee]
      511 SETTABLE                         R16 R14 R15
      512 GETIMPORT                        R15 K90 [Enum.RigLabel.LeftAnkle]
      514 SETTABLE                         R15 R14 R6
      515 MOVE                             R15 R10
      516 LOADNIL                          R16
      517 LOADNIL                          R17
      518 FORGPREP                         R15
      519 GETTABLE                         R20 R12 R19
      520 GETTABLE                         R21 R14 R19
      521 JUMPIFNOT                        R21 ; [+3]
      522 GETTABLE                         R23 R12 R21
      523 OR                               R22 R23 R21
      524 SETTABLE                         R22 R14 R20
      525 FORGLOOP                         R15 2 ; [-7]
      527 JUMPIFNOT                        R3 ; [+12]
      528 GETIMPORT                        R15 K40 [Enum.RigLabel.Waist]
      530 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      532 SETTABLE                         R16 R14 R15
      533 GETIMPORT                        R15 K40 [Enum.RigLabel.Waist]
      535 SETTABLE                         R15 R14 R4
      536 GETIMPORT                        R15 K43 [Enum.RigLabel.Chest]
      538 SETTABLE                         R4 R14 R15
      539 JUMP                             ; [+27]
      540 JUMPIFNOT                        R5 ; [+16]
      541 GETIMPORT                        R15 K112 [Enum.RigLabel.Pelvis]
      543 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      545 SETTABLE                         R16 R14 R15
      546 GETIMPORT                        R15 K40 [Enum.RigLabel.Waist]
      548 GETIMPORT                        R16 K112 [Enum.RigLabel.Pelvis]
      550 SETTABLE                         R16 R14 R15
      551 GETIMPORT                        R15 K43 [Enum.RigLabel.Chest]
      553 GETIMPORT                        R16 K40 [Enum.RigLabel.Waist]
      555 SETTABLE                         R16 R14 R15
      556 JUMP                             ; [+10]
      557 GETIMPORT                        R15 K40 [Enum.RigLabel.Waist]
      559 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      561 SETTABLE                         R16 R14 R15
      562 GETIMPORT                        R15 K43 [Enum.RigLabel.Chest]
      564 GETIMPORT                        R16 K40 [Enum.RigLabel.Waist]
      566 SETTABLE                         R16 R14 R15
      567 NEWTABLE                         R15 16 0
      569 GETIMPORT                        R16 K43 [Enum.RigLabel.Chest]
      571 GETIMPORT                        R17 K48 [Enum.RigLabel.Neck]
      573 SETTABLE                         R17 R15 R16
      574 GETIMPORT                        R16 K48 [Enum.RigLabel.Neck]
      576 GETIMPORT                        R17 K51 [Enum.RigLabel.HeadBase]
      578 SETTABLE                         R17 R15 R16
      579 GETIMPORT                        R16 K51 [Enum.RigLabel.HeadBase]
      581 LOADNIL                          R17
      582 SETTABLE                         R17 R15 R16
      583 GETIMPORT                        R16 K54 [Enum.RigLabel.LeftClavicle]
      585 GETIMPORT                        R17 K59 [Enum.RigLabel.LeftShoulder]
      587 SETTABLE                         R17 R15 R16
      588 GETIMPORT                        R16 K59 [Enum.RigLabel.LeftShoulder]
      590 GETIMPORT                        R17 K64 [Enum.RigLabel.LeftElbow]
      592 SETTABLE                         R17 R15 R16
      593 GETIMPORT                        R16 K64 [Enum.RigLabel.LeftElbow]
      595 GETIMPORT                        R17 K71 [Enum.RigLabel.LeftWrist]
      597 SETTABLE                         R17 R15 R16
      598 GETIMPORT                        R16 K71 [Enum.RigLabel.LeftWrist]
      600 LOADNIL                          R17
      601 SETTABLE                         R17 R15 R16
      602 GETIMPORT                        R16 K75 [Enum.RigLabel.LeftHip]
      604 GETIMPORT                        R17 K82 [Enum.RigLabel.LeftKnee]
      606 SETTABLE                         R17 R15 R16
      607 GETIMPORT                        R16 K82 [Enum.RigLabel.LeftKnee]
      609 GETIMPORT                        R17 K90 [Enum.RigLabel.LeftAnkle]
      611 SETTABLE                         R17 R15 R16
      612 GETIMPORT                        R16 K90 [Enum.RigLabel.LeftAnkle]
      614 SETTABLE                         R6 R15 R16
      615 LOADNIL                          R16
      616 SETTABLE                         R16 R15 R6
      617 MOVE                             R16 R10
      618 LOADNIL                          R17
      619 LOADNIL                          R18
      620 FORGPREP                         R16
      621 GETTABLE                         R21 R12 R20
      622 GETTABLE                         R22 R15 R20
      623 JUMPIFNOT                        R22 ; [+2]
      624 GETTABLE                         R23 R12 R22
      625 SETTABLE                         R23 R15 R21
      626 FORGLOOP                         R16 2 ; [-6]
      628 JUMPIFNOT                        R3 ; [+12]
      629 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      631 GETIMPORT                        R17 K40 [Enum.RigLabel.Waist]
      633 SETTABLE                         R17 R15 R16
      634 GETIMPORT                        R16 K40 [Enum.RigLabel.Waist]
      636 SETTABLE                         R4 R15 R16
      637 GETIMPORT                        R16 K43 [Enum.RigLabel.Chest]
      639 SETTABLE                         R16 R15 R4
      640 JUMP                             ; [+27]
      641 JUMPIFNOT                        R5 ; [+16]
      642 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      644 GETIMPORT                        R17 K112 [Enum.RigLabel.Pelvis]
      646 SETTABLE                         R17 R15 R16
      647 GETIMPORT                        R16 K112 [Enum.RigLabel.Pelvis]
      649 GETIMPORT                        R17 K40 [Enum.RigLabel.Waist]
      651 SETTABLE                         R17 R15 R16
      652 GETIMPORT                        R16 K40 [Enum.RigLabel.Waist]
      654 GETIMPORT                        R17 K43 [Enum.RigLabel.Chest]
      656 SETTABLE                         R17 R15 R16
      657 JUMP                             ; [+10]
      658 GETIMPORT                        R16 K32 [Enum.RigLabel.Root]
      660 GETIMPORT                        R17 K40 [Enum.RigLabel.Waist]
      662 SETTABLE                         R17 R15 R16
      663 GETIMPORT                        R16 K40 [Enum.RigLabel.Waist]
      665 GETIMPORT                        R17 K43 [Enum.RigLabel.Chest]
      667 SETTABLE                         R17 R15 R16
      668 GETTABLEKS                       R16 R2 K140 ["bodyRigLabels"]
      670 NEWTABLE                         R17 0 0
      672 MOVE                             R18 R10
      673 LOADNIL                          R19
      674 LOADNIL                          R20
      675 FORGPREP                         R18
      676 GETTABLE                         R23 R12 R22
      677 JUMPIFNOT                        R23 ; [+2]
      678 GETTABLE                         R24 R9 R22
      679 SETTABLE                         R24 R9 R23
      680 FORGLOOP                         R18 2 ; [-5]
      682 MOVE                             R18 R16
      683 LOADNIL                          R19
      684 LOADNIL                          R20
      685 FORGPREP                         R18
      686 GETTABLE                         R23 R9 R22
      687 JUMPIFNOT                        R23 ; [+10]
      688 MOVE                             R24 R23
      689 LOADNIL                          R25
      690 LOADNIL                          R26
      691 FORGPREP                         R24
      692 GETTABLE                         R31 R17 R28
      693 ORK                              R30 R31 K142 [0]
      694 ADDK                             R29 R30 K141 [1]
      695 SETTABLE                         R29 R17 R28
      696 FORGLOOP                         R24 2 ; [-5]
      698 FORGLOOP                         R18 2 ; [-13]
      700 MOVE                             R18 R17
      701 LOADNIL                          R19
      702 LOADNIL                          R20
      703 FORGPREP                         R18
      704 DIVRK                            R23 R141 K22 ["handBoostPerDescendant"]
      705 SETTABLE                         R23 R17 R21
      706 FORGLOOP                         R18 2 ; [-3]
      708 DUPCLOSURE                       R18 K143 [PROTO_0]
      709 DUPCLOSURE                       R19 K144 [PROTO_1]
      710 CAPTURE                          VAL R9
      711 CAPTURE                          VAL R17
      712 CAPTURE                          VAL R8
      713 CAPTURE                          VAL R11
      714 CAPTURE                          VAL R18
      715 DUPCLOSURE                       R20 K145 [PROTO_2]
      716 CAPTURE                          VAL R13
      717 CAPTURE                          VAL R8
      718 NEWTABLE                         R21 8 0
      720 DUPCLOSURE                       R22 K146 [PROTO_4]
      721 CAPTURE                          VAL R16
      722 CAPTURE                          VAL R2
      723 CAPTURE                          VAL R8
      724 CAPTURE                          VAL R19
      725 CAPTURE                          VAL R20
      726 CAPTURE                          VAL R14
      727 CAPTURE                          VAL R15
      728 SETTABLEKS                       R22 R21 K147 ["setup"]
      730 SETTABLEKS                       R18 R21 K148 ["guessJointSide"]
      732 SETTABLEKS                       R19 R21 K149 ["nameScore"]
      734 SETTABLEKS                       R20 R21 K150 ["positionScore"]
      736 SETTABLEKS                       R12 R21 K151 ["symmetryCounterparts"]
      738 SETTABLEKS                       R14 R21 K152 ["parentRigLabel"]
      740 SETTABLEKS                       R15 R21 K153 ["directChildRigLabel"]
      742 RETURN                           R21 1
