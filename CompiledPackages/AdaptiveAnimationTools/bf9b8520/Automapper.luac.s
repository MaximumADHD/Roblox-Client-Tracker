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
       15 JUMPIFNOT                        R2 ; [+40]
       16 GETTABLEKS                       R3 R2 K3 ["RigType"]
       18 GETIMPORT                        R4 K7 [Enum.HumanoidRigType.R15]
       20 JUMPIFNOTEQ                      R3 R4 ; [+35]
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
       52 GETUPVAL                         R3 2
       53 CALL                             R3 0 1
       54 JUMPIF                           R3 ; [+1]
       55 RETURN                           R0 0
       56 MOVE                             R3 R1
       57 LOADK                            R6 K12 ["Bone"]
       58 LOADB                            R7 1
       59 NAMECALL                         R4 R1 K2 ["FindFirstChildWhichIsA"]
       61 CALL                             R4 3 1
       62 JUMPIFNOT                        R4 ; [+8]
       63 LOADK                            R7 K13 ["Motor6D"]
       64 LOADB                            R8 1
       65 NAMECALL                         R5 R1 K2 ["FindFirstChildWhichIsA"]
       67 CALL                             R5 3 1
       68 JUMPIFNOT                        R5 ; [+2]
       69 GETTABLEKS                       R3 R4 K14 ["Parent"]
       71 NEWTABLE                         R5 0 0
       73 NAMECALL                         R6 R3 K9 ["GetDescendants"]
       75 CALL                             R6 1 3
       76 FORGPREP                         R6
       77 GETUPVAL                         R12 2
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+6]
       80 GETUPVAL                         R12 1
       81 GETTABLEKS                       R11 R12 K11 ["isValidTJoint"]
       83 MOVE                             R12 R10
       84 CALL                             R11 1 1
       85 JUMP                             ; [+9]
       86 LOADK                            R13 K13 ["Motor6D"]
       87 NAMECALL                         R11 R10 K15 ["IsA"]
       89 CALL                             R11 2 1
       90 JUMPIF                           R11 ; [+4]
       91 LOADK                            R13 K12 ["Bone"]
       92 NAMECALL                         R11 R10 K15 ["IsA"]
       94 CALL                             R11 2 1
       95 JUMPIFNOT                        R11 ; [+62]
       96 GETTABLEKS                       R12 R10 K14 ["Parent"]
       98 LOADK                            R15 K13 ["Motor6D"]
       99 NAMECALL                         R13 R10 K15 ["IsA"]
      101 CALL                             R13 2 1
      102 JUMPIFNOT                        R13 ; [+10]
      103 GETTABLEKS                       R13 R10 K16 ["Part0"]
      105 JUMPIFNOT                        R13 ; [+5]
      106 LOADK                            R16 K13 ["Motor6D"]
      107 NAMECALL                         R14 R13 K2 ["FindFirstChildWhichIsA"]
      109 CALL                             R14 2 1
      110 JUMPIF                           R14 ; [+1]
      111 LOADNIL                          R14
      112 MOVE                             R12 R14
      113 JUMPIFEQKNIL                     R12 ; [+21]
      115 GETUPVAL                         R14 2
      116 CALL                             R14 0 1
      117 JUMPIFNOT                        R14 ; [+6]
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R13 R14 K11 ["isValidTJoint"]
      121 MOVE                             R14 R12
      122 CALL                             R13 1 1
      123 JUMP                             ; [+9]
      124 LOADK                            R15 K13 ["Motor6D"]
      125 NAMECALL                         R13 R12 K15 ["IsA"]
      127 CALL                             R13 2 1
      128 JUMPIF                           R13 ; [+4]
      129 LOADK                            R15 K12 ["Bone"]
      130 NAMECALL                         R13 R12 K15 ["IsA"]
      132 CALL                             R13 2 1
      133 JUMPIF                           R13 ; [+1]
      134 LOADNIL                          R12
      135 GETUPVAL                         R14 1
      136 GETTABLEKS                       R13 R14 K17 ["getJointPosition"]
      138 MOVE                             R14 R10
      139 CALL                             R13 1 1
      140 DUPTABLE                         R16 K22 [{"joint", "name", "parent", "position"}]
      141 SETTABLEKS                       R10 R16 K18 ["joint"]
      143 GETTABLEKS                       R17 R10 K10 ["Name"]
      145 SETTABLEKS                       R17 R16 K19 ["name"]
      147 LOADNIL                          R17
      148 SETTABLEKS                       R17 R16 K20 ["parent"]
      150 SETTABLEKS                       R13 R16 K21 ["position"]
      152 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
      154 MOVE                             R15 R5
      155 GETIMPORT                        R14 K25 [table.insert]
      157 CALL                             R14 2 0
      158 FORGLOOP                         R6 2 ; [-82]
      160 MOVE                             R6 R5
      161 LOADNIL                          R7
      162 LOADNIL                          R8
      163 FORGPREP                         R6
      164 MOVE                             R11 R5
      165 LOADNIL                          R12
      166 LOADNIL                          R13
      167 FORGPREP                         R11
      168 GETTABLEKS                       R17 R10 K18 ["joint"]
      170 GETTABLEKS                       R16 R17 K14 ["Parent"]
      172 GETTABLEKS                       R17 R10 K18 ["joint"]
      174 LOADK                            R19 K13 ["Motor6D"]
      175 NAMECALL                         R17 R17 K15 ["IsA"]
      177 CALL                             R17 2 1
      178 JUMPIFNOT                        R17 ; [+11]
      179 GETTABLEKS                       R18 R10 K18 ["joint"]
      181 GETTABLEKS                       R17 R18 K16 ["Part0"]
      183 MOVE                             R18 R17
      184 JUMPIFNOT                        R18 ; [+4]
      185 LOADK                            R20 K13 ["Motor6D"]
      186 NAMECALL                         R18 R17 K2 ["FindFirstChildWhichIsA"]
      188 CALL                             R18 2 1
      189 MOVE                             R16 R18
      190 GETUPVAL                         R19 1
      191 GETTABLEKS                       R18 R19 K11 ["isValidTJoint"]
      193 MOVE                             R19 R16
      194 CALL                             R18 1 1
      195 JUMPIFNOT                        R18 ; [+2]
      196 MOVE                             R17 R16
      197 JUMP                             ; [+1]
      198 LOADNIL                          R17
      199 GETTABLEKS                       R18 R15 K18 ["joint"]
      201 JUMPIFNOTEQ                      R17 R18 ; [+4]
      203 SETTABLEKS                       R15 R10 K20 ["parent"]
      205 JUMP                             ; [+2]
      206 FORGLOOP                         R11 2 ; [-39]
      208 FORGLOOP                         R6 2 ; [-45]
      210 NEWTABLE                         R6 0 0
      212 MOVE                             R7 R5
      213 LOADNIL                          R8
      214 LOADNIL                          R9
      215 FORGPREP                         R7
      216 GETIMPORT                        R12 K28 [Vector2.new]
      218 GETTABLEKS                       R14 R11 K21 ["position"]
      220 GETTABLEKS                       R13 R14 K29 ["X"]
      222 GETTABLEKS                       R15 R11 K21 ["position"]
      224 GETTABLEKS                       R14 R15 K30 ["Y"]
      226 CALL                             R12 2 1
      227 SETTABLE                         R12 R6 R10
      228 FORGLOOP                         R7 2 ; [-13]
      230 GETUPVAL                         R8 1
      231 GETTABLEKS                       R7 R8 K31 ["normalizePoints"]
      233 MOVE                             R8 R6
      234 CALL                             R7 1 0
      235 NEWTABLE                         R7 0 0
      237 MOVE                             R8 R5
      238 LOADNIL                          R9
      239 LOADNIL                          R10
      240 FORGPREP                         R8
      241 GETTABLEKS                       R15 R12 K19 ["name"]
      243 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      245 MOVE                             R14 R7
      246 GETIMPORT                        R13 K25 [table.insert]
      248 CALL                             R13 2 0
      249 FORGLOOP                         R8 2 ; [-9]
      251 GETUPVAL                         R9 1
      252 GETTABLEKS                       R8 R9 K32 ["commonPrefix"]
      254 MOVE                             R9 R7
      255 CALL                             R8 1 1
      256 GETUPVAL                         R10 1
      257 GETTABLEKS                       R9 R10 K33 ["commonSuffix"]
      259 MOVE                             R10 R7
      260 CALL                             R9 1 1
      261 MOVE                             R10 R5
      262 LOADNIL                          R11
      263 LOADNIL                          R12
      264 FORGPREP                         R10
      265 GETUPVAL                         R16 1
      266 GETTABLEKS                       R15 R16 K34 ["trimStart"]
      268 GETTABLEKS                       R16 R14 K19 ["name"]
      270 MOVE                             R17 R8
      271 CALL                             R15 2 1
      272 SETTABLEKS                       R15 R14 K19 ["name"]
      274 GETUPVAL                         R16 1
      275 GETTABLEKS                       R15 R16 K35 ["trimEnd"]
      277 GETTABLEKS                       R16 R14 K19 ["name"]
      279 MOVE                             R17 R9
      280 CALL                             R15 2 1
      281 SETTABLEKS                       R15 R14 K19 ["name"]
      283 FORGLOOP                         R10 2 ; [-19]
      285 NEWTABLE                         R10 0 0
      287 MOVE                             R11 R5
      288 LOADNIL                          R12
      289 LOADNIL                          R13
      290 FORGPREP                         R11
      291 GETIMPORT                        R16 K37 [table.find]
      293 MOVE                             R17 R10
      294 GETTABLEKS                       R18 R15 K19 ["name"]
      296 CALL                             R16 2 1
      297 JUMPIFNOT                        R16 ; [+4]
      298 GETIMPORT                        R16 K39 [warn]
      300 LOADK                            R17 K40 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      301 CALL                             R16 1 0
      302 GETTABLEKS                       R18 R15 K19 ["name"]
      304 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      306 MOVE                             R17 R10
      307 GETIMPORT                        R16 K25 [table.insert]
      309 CALL                             R16 2 0
      310 FORGLOOP                         R11 2 ; [-20]
      312 NEWTABLE                         R11 0 0
      314 MOVE                             R12 R5
      315 LOADNIL                          R13
      316 LOADNIL                          R14
      317 FORGPREP                         R12
      318 GETTABLEKS                       R17 R16 K18 ["joint"]
      320 NEWTABLE                         R18 0 0
      322 SETTABLE                         R18 R11 R17
      323 GETUPVAL                         R17 0
      324 LOADNIL                          R18
      325 LOADNIL                          R19
      326 FORGPREP                         R17
      327 GETIMPORT                        R22 K37 [table.find]
      329 MOVE                             R23 R5
      330 MOVE                             R24 R16
      331 CALL                             R22 2 1
      332 JUMPIF                           R22 ; [+5]
      333 GETIMPORT                        R23 K39 [warn]
      335 LOADK                            R24 K41 ["joint not found in jointRefs array"]
      336 CALL                             R23 1 0
      337 JUMP                             ; [+24]
      338 GETTABLE                         R23 R6 R22
      339 GETTABLEKS                       R25 R16 K18 ["joint"]
      341 GETTABLE                         R24 R11 R25
      342 GETUPVAL                         R28 3
      343 GETTABLEKS                       R27 R28 K42 ["nameWeight"]
      345 GETUPVAL                         R28 4
      346 GETTABLEKS                       R29 R16 K19 ["name"]
      348 MOVE                             R30 R21
      349 CALL                             R28 2 1
      350 MUL                              R26 R27 R28
      351 GETUPVAL                         R29 3
      352 GETTABLEKS                       R28 R29 K43 ["positionWeight"]
      354 GETUPVAL                         R29 5
      355 MOVE                             R30 R23
      356 MOVE                             R31 R16
      357 MOVE                             R32 R21
      358 CALL                             R29 3 1
      359 MUL                              R27 R28 R29
      360 ADD                              R25 R26 R27
      361 SETTABLE                         R25 R24 R21
      362 FORGLOOP                         R17 2 ; [-36]
      364 FORGLOOP                         R12 2 ; [-47]
      366 MOVE                             R12 R5
      367 LOADNIL                          R13
      368 LOADNIL                          R14
      369 FORGPREP                         R12
      370 GETUPVAL                         R17 0
      371 LOADNIL                          R18
      372 LOADNIL                          R19
      373 FORGPREP                         R17
      374 GETUPVAL                         R23 6
      375 GETTABLE                         R22 R23 R21
      376 JUMPIFEQKNIL                     R22 ; [+22]
      378 GETTABLEKS                       R23 R16 K20 ["parent"]
      380 JUMPIFNOT                        R23 ; [+18]
      381 GETTABLEKS                       R26 R16 K20 ["parent"]
      383 GETTABLEKS                       R25 R26 K18 ["joint"]
      385 GETTABLE                         R24 R11 R25
      386 GETTABLE                         R23 R24 R22
      387 GETTABLEKS                       R25 R16 K18 ["joint"]
      389 GETTABLE                         R24 R11 R25
      390 GETTABLE                         R25 R24 R21
      391 LOADN                            R27 1
      392 GETUPVAL                         R30 3
      393 GETTABLEKS                       R29 R30 K44 ["parentInfluenceWeight"]
      395 MUL                              R28 R29 R23
      396 ADD                              R26 R27 R28
      397 MUL                              R25 R25 R26
      398 SETTABLE                         R25 R24 R21
      399 GETUPVAL                         R24 7
      400 GETTABLE                         R23 R24 R21
      401 GETTABLEKS                       R24 R16 K18 ["joint"]
      403 NAMECALL                         R24 R24 K45 ["GetChildren"]
      405 CALL                             R24 1 1
      406 JUMPIFEQKNIL                     R23 ; [+55]
      408 LENGTH                           R25 R24
      409 LOADN                            R26 0
      410 JUMPIFNOTLT                      R26 R25 ; [+51]
      412 LOADK                            R25 K46 [-∞]
      413 MOVE                             R26 R24
      414 LOADNIL                          R27
      415 LOADNIL                          R28
      416 FORGPREP                         R26
      417 GETUPVAL                         R32 2
      418 CALL                             R32 0 1
      419 JUMPIFNOT                        R32 ; [+6]
      420 GETUPVAL                         R32 1
      421 GETTABLEKS                       R31 R32 K11 ["isValidTJoint"]
      423 MOVE                             R32 R30
      424 CALL                             R31 1 1
      425 JUMP                             ; [+9]
      426 LOADK                            R33 K13 ["Motor6D"]
      427 NAMECALL                         R31 R30 K15 ["IsA"]
      429 CALL                             R31 2 1
      430 JUMPIF                           R31 ; [+4]
      431 LOADK                            R33 K12 ["Bone"]
      432 NAMECALL                         R31 R30 K15 ["IsA"]
      434 CALL                             R31 2 1
      435 JUMPIFNOT                        R31 ; [+10]
      436 GETTABLE                         R33 R11 R30
      437 GETTABLE                         R32 R33 R23
      438 FASTCALL2                        MATH_MAX R25 R32 ; [+5]
      440 MOVE                             R34 R25
      441 MOVE                             R35 R32
      442 GETIMPORT                        R33 K49 [math.max]
      444 CALL                             R33 2 1
      445 MOVE                             R25 R33
      446 FORGLOOP                         R26 2 ; [-30]
      448 JUMPIFEQKN                       R25 K46 [-∞] ; [+13]
      450 GETTABLEKS                       R27 R16 K18 ["joint"]
      452 GETTABLE                         R26 R11 R27
      453 GETTABLE                         R27 R26 R21
      454 LOADN                            R29 1
      455 GETUPVAL                         R32 3
      456 GETTABLEKS                       R31 R32 K50 ["childInfluenceWeight"]
      458 MUL                              R30 R31 R25
      459 ADD                              R28 R29 R30
      460 MUL                              R27 R27 R28
      461 SETTABLE                         R27 R26 R21
      462 GETIMPORT                        R25 K53 [Enum.RigLabel.Root]
      464 JUMPIFNOTEQ                      R21 R25 ; [+20]
      466 GETUPVAL                         R27 1
      467 GETTABLEKS                       R26 R27 K55 ["getDepth"]
      469 GETTABLEKS                       R27 R16 K18 ["joint"]
      471 MOVE                             R28 R3
      472 CALL                             R26 2 1
      473 SUBK                             R25 R26 K54 [1]
      474 GETTABLEKS                       R27 R16 K18 ["joint"]
      476 GETTABLE                         R26 R11 R27
      477 GETTABLE                         R27 R26 R21
      478 GETUPVAL                         R30 3
      479 GETTABLEKS                       R29 R30 K56 ["rootDepthPenalty"]
      481 MUL                              R28 R25 R29
      482 SUB                              R27 R27 R28
      483 SETTABLE                         R27 R26 R21
      484 JUMP                             ; [+31]
      485 GETIMPORT                        R25 K58 [Enum.RigLabel.LeftWrist]
      487 JUMPIFEQ                         R21 R25 ; [+5]
      489 GETIMPORT                        R25 K60 [Enum.RigLabel.RightWrist]
      491 JUMPIFNOTEQ                      R21 R25 ; [+24]
      493 GETTABLEKS                       R26 R16 K18 ["joint"]
      495 NAMECALL                         R26 R26 K9 ["GetDescendants"]
      497 CALL                             R26 1 1
      498 LENGTH                           R25 R26
      499 GETTABLEKS                       R27 R16 K18 ["joint"]
      501 GETTABLE                         R26 R11 R27
      502 GETTABLE                         R27 R26 R21
      503 FASTCALL2K                       MATH_MIN R25 K61 ; [+5]
      505 MOVE                             R30 R25
      506 LOADK                            R31 K61 [15]
      507 GETIMPORT                        R29 K63 [math.min]
      509 CALL                             R29 2 1
      510 GETUPVAL                         R31 3
      511 GETTABLEKS                       R30 R31 K64 ["handBoostPerDescendant"]
      513 MUL                              R28 R29 R30
      514 ADD                              R27 R27 R28
      515 SETTABLE                         R27 R26 R21
      516 FORGLOOP                         R17 2 ; [-143]
      518 FORGLOOP                         R12 2 ; [-149]
      520 NEWTABLE                         R12 0 0
      522 MOVE                             R13 R5
      523 LOADNIL                          R14
      524 LOADNIL                          R15
      525 FORGPREP                         R13
      526 GETUPVAL                         R18 0
      527 LOADNIL                          R19
      528 LOADNIL                          R20
      529 FORGPREP                         R18
      530 DUPTABLE                         R25 K67 [{"joint", "rigLabel", "score"}]
      531 GETTABLEKS                       R26 R17 K18 ["joint"]
      533 SETTABLEKS                       R26 R25 K18 ["joint"]
      535 SETTABLEKS                       R22 R25 K65 ["rigLabel"]
      537 GETTABLEKS                       R28 R17 K18 ["joint"]
      539 GETTABLE                         R27 R11 R28
      540 GETTABLE                         R26 R27 R22
      541 SETTABLEKS                       R26 R25 K66 ["score"]
      543 FASTCALL2                        TABLE_INSERT R12 R25 ; [+4]
      545 MOVE                             R24 R12
      546 GETIMPORT                        R23 K25 [table.insert]
      548 CALL                             R23 2 0
      549 FORGLOOP                         R18 2 ; [-20]
      551 FORGLOOP                         R13 2 ; [-26]
      553 GETIMPORT                        R13 K69 [table.sort]
      555 MOVE                             R14 R12
      556 DUPCLOSURE                       R15 K70 [PROTO_3]
      557 CALL                             R13 2 0
      558 NEWTABLE                         R13 0 0
      560 NEWTABLE                         R14 0 0
      562 GETUPVAL                         R15 2
      563 CALL                             R15 0 1
      564 JUMPIFNOT                        R15 ; [+25]
      565 GETUPVAL                         R15 0
      566 LOADNIL                          R16
      567 LOADNIL                          R17
      568 FORGPREP                         R15
      569 MOVE                             R22 R19
      570 NAMECALL                         R20 R0 K71 ["GetJoint"]
      572 CALL                             R20 2 1
      573 JUMPIFNOT                        R20 ; [+14]
      574 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      576 MOVE                             R22 R14
      577 MOVE                             R23 R19
      578 GETIMPORT                        R21 K25 [table.insert]
      580 CALL                             R21 2 0
      581 FASTCALL2                        TABLE_INSERT R13 R20 ; [+5]
      583 MOVE                             R22 R13
      584 MOVE                             R23 R20
      585 GETIMPORT                        R21 K25 [table.insert]
      587 CALL                             R21 2 0
      588 FORGLOOP                         R15 2 ; [-20]
      590 MOVE                             R15 R12
      591 LOADNIL                          R16
      592 LOADNIL                          R17
      593 FORGPREP                         R15
      594 GETTABLEKS                       R20 R19 K66 ["score"]
      596 GETUPVAL                         R22 3
      597 GETTABLEKS                       R21 R22 K72 ["minScoreThreshold"]
      599 JUMPIFLT                         R20 R21 ; [+40]
      601 GETIMPORT                        R20 K37 [table.find]
      603 MOVE                             R21 R13
      604 GETTABLEKS                       R22 R19 K18 ["joint"]
      606 CALL                             R20 2 1
      607 JUMPIF                           R20 ; [+30]
      608 GETIMPORT                        R20 K37 [table.find]
      610 MOVE                             R21 R14
      611 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      613 CALL                             R20 2 1
      614 JUMPIF                           R20 ; [+23]
      615 GETTABLEKS                       R22 R19 K18 ["joint"]
      617 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
      619 MOVE                             R21 R13
      620 GETIMPORT                        R20 K25 [table.insert]
      622 CALL                             R20 2 0
      623 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      625 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
      627 MOVE                             R21 R14
      628 GETIMPORT                        R20 K25 [table.insert]
      630 CALL                             R20 2 0
      631 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      633 GETTABLEKS                       R23 R19 K18 ["joint"]
      635 NAMECALL                         R20 R0 K0 ["SetJoint"]
      637 CALL                             R20 3 0
      638 FORGLOOP                         R15 2 ; [-45]
      640 RETURN                           R0 0

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
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R5 R0 K7 ["Flags"]
       19 GETTABLEKS                       R4 R5 K8 ["getFFlagAdaptiveAnimationBetaImprovements"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R2 K9 ["hasSpine"]
       24 GETTABLEKS                       R5 R2 K10 ["spineLabel"]
       26 GETTABLEKS                       R6 R2 K11 ["hasPelvis"]
       28 GETTABLEKS                       R7 R2 K12 ["LeftToeBase"]
       30 GETTABLEKS                       R8 R2 K13 ["RightToeBase"]
       32 DUPTABLE                         R9 K25 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant"}]
       33 LOADK                            R10 K26 [0.3]
       34 SETTABLEKS                       R10 R9 K14 ["tokenLengthWeight"]
       36 LOADN                            R10 1
       37 SETTABLEKS                       R10 R9 K15 ["sideLeftRightWeight"]
       39 LOADK                            R10 K26 [0.3]
       40 SETTABLEKS                       R10 R9 K16 ["parentInfluenceWeight"]
       42 LOADK                            R10 K27 [0.1]
       43 SETTABLEKS                       R10 R9 K17 ["childInfluenceWeight"]
       45 LOADK                            R10 K28 [0.02]
       46 SETTABLEKS                       R10 R9 K18 ["leftRightPositionThreshold"]
       48 LOADK                            R10 K27 [0.1]
       49 SETTABLEKS                       R10 R9 K19 ["distanceSmoothingKernel"]
       51 LOADK                            R10 K29 [0.5]
       52 SETTABLEKS                       R10 R9 K20 ["minScoreThreshold"]
       54 LOADN                            R10 3
       55 SETTABLEKS                       R10 R9 K21 ["nameWeight"]
       57 LOADK                            R10 K29 [0.5]
       58 SETTABLEKS                       R10 R9 K22 ["positionWeight"]
       60 LOADK                            R10 K29 [0.5]
       61 SETTABLEKS                       R10 R9 K23 ["rootDepthPenalty"]
       63 LOADK                            R10 K30 [0.05]
       64 SETTABLEKS                       R10 R9 K24 ["handBoostPerDescendant"]
       66 NEWTABLE                         R10 32 0
       68 GETIMPORT                        R11 K34 [Enum.RigLabel.Root]
       70 NEWTABLE                         R12 0 6
       72 LOADK                            R13 K35 ["root"]
       73 LOADK                            R14 K36 ["torso"]
       74 LOADK                            R15 K37 ["lower-torso"]
       75 LOADK                            R16 K38 ["waist"]
       76 LOADK                            R17 K39 ["hips"]
       77 LOADK                            R18 K40 ["pelvis"]
       78 SETLIST                          R12 R13 6 [1]
       80 SETTABLE                         R12 R10 R11
       81 GETIMPORT                        R11 K42 [Enum.RigLabel.Waist]
       83 NEWTABLE                         R12 0 1
       85 LOADK                            R13 K43 ["chest"]
       86 SETLIST                          R12 R13 1 [1]
       88 SETTABLE                         R12 R10 R11
       89 GETIMPORT                        R11 K45 [Enum.RigLabel.Chest]
       91 NEWTABLE                         R12 0 5
       93 LOADK                            R13 K46 ["upper-torso"]
       94 LOADK                            R14 K36 ["torso"]
       95 LOADK                            R15 K47 ["spine"]
       96 LOADK                            R16 K48 ["upper-chest"]
       97 LOADK                            R17 K43 ["chest"]
       98 SETLIST                          R12 R13 5 [1]
      100 SETTABLE                         R12 R10 R11
      101 GETIMPORT                        R11 K50 [Enum.RigLabel.Neck]
      103 NEWTABLE                         R12 0 1
      105 LOADK                            R13 K51 ["neck"]
      106 SETLIST                          R12 R13 1 [1]
      108 SETTABLE                         R12 R10 R11
      109 GETIMPORT                        R11 K53 [Enum.RigLabel.HeadBase]
      111 NEWTABLE                         R12 0 1
      113 LOADK                            R13 K54 ["head"]
      114 SETLIST                          R12 R13 1 [1]
      116 SETTABLE                         R12 R10 R11
      117 GETIMPORT                        R11 K56 [Enum.RigLabel.LeftClavicle]
      119 NEWTABLE                         R12 0 3
      121 LOADK                            R13 K57 ["shoulder"]
      122 LOADK                            R14 K58 ["clavicle"]
      123 LOADK                            R15 K59 ["collar"]
      124 SETLIST                          R12 R13 3 [1]
      126 SETTABLE                         R12 R10 R11
      127 GETIMPORT                        R11 K61 [Enum.RigLabel.LeftShoulder]
      129 NEWTABLE                         R12 0 4
      131 LOADK                            R13 K57 ["shoulder"]
      132 LOADK                            R14 K62 ["arm"]
      133 LOADK                            R15 K63 ["upper-arm"]
      134 LOADK                            R16 K64 ["up-arm"]
      135 SETLIST                          R12 R13 4 [1]
      137 SETTABLE                         R12 R10 R11
      138 GETIMPORT                        R11 K66 [Enum.RigLabel.LeftElbow]
      140 NEWTABLE                         R12 0 6
      142 LOADK                            R13 K67 ["lower-arm"]
      143 LOADK                            R14 K68 ["elbow"]
      144 LOADK                            R15 K69 ["fore-arm"]
      145 LOADK                            R16 K70 ["down-arm"]
      146 LOADK                            R17 K62 ["arm"]
      147 LOADK                            R18 K71 ["lo-arm"]
      148 SETLIST                          R12 R13 6 [1]
      150 SETTABLE                         R12 R10 R11
      151 GETIMPORT                        R11 K73 [Enum.RigLabel.LeftWrist]
      153 NEWTABLE                         R12 0 2
      155 LOADK                            R13 K74 ["hand"]
      156 LOADK                            R14 K75 ["wrist"]
      157 SETLIST                          R12 R13 2 [1]
      159 SETTABLE                         R12 R10 R11
      160 GETIMPORT                        R11 K77 [Enum.RigLabel.LeftHip]
      162 NEWTABLE                         R12 0 5
      164 LOADK                            R13 K78 ["leg"]
      165 LOADK                            R14 K79 ["hip"]
      166 LOADK                            R15 K80 ["upper-leg"]
      167 LOADK                            R16 K81 ["up-leg"]
      168 LOADK                            R17 K82 ["thigh"]
      169 SETLIST                          R12 R13 5 [1]
      171 SETTABLE                         R12 R10 R11
      172 GETIMPORT                        R11 K84 [Enum.RigLabel.LeftKnee]
      174 NEWTABLE                         R12 0 7
      176 LOADK                            R13 K78 ["leg"]
      177 LOADK                            R14 K85 ["lower-leg"]
      178 LOADK                            R15 K86 ["knee"]
      179 LOADK                            R16 K87 ["calf"]
      180 LOADK                            R17 K88 ["down-leg"]
      181 LOADK                            R18 K89 ["lo-leg"]
      182 LOADK                            R19 K90 ["shin"]
      183 SETLIST                          R12 R13 7 [1]
      185 SETTABLE                         R12 R10 R11
      186 GETIMPORT                        R11 K92 [Enum.RigLabel.LeftAnkle]
      188 NEWTABLE                         R12 0 2
      190 LOADK                            R13 K93 ["foot"]
      191 LOADK                            R14 K94 ["ankle"]
      192 SETLIST                          R12 R13 2 [1]
      194 SETTABLE                         R12 R10 R11
      195 NEWTABLE                         R11 0 5
      197 LOADK                            R12 K95 ["toe-base"]
      198 LOADK                            R13 K96 ["toe"]
      199 LOADK                            R14 K97 ["toes"]
      200 LOADK                            R15 K93 ["foot"]
      201 LOADK                            R16 K98 ["ball"]
      202 SETLIST                          R11 R12 5 [1]
      204 SETTABLE                         R11 R10 R7
      205 GETIMPORT                        R11 K100 [Enum.RigLabel.RightClavicle]
      207 LOADNIL                          R12
      208 SETTABLE                         R12 R10 R11
      209 GETIMPORT                        R11 K102 [Enum.RigLabel.RightShoulder]
      211 LOADNIL                          R12
      212 SETTABLE                         R12 R10 R11
      213 GETIMPORT                        R11 K104 [Enum.RigLabel.RightElbow]
      215 LOADNIL                          R12
      216 SETTABLE                         R12 R10 R11
      217 GETIMPORT                        R11 K106 [Enum.RigLabel.RightWrist]
      219 LOADNIL                          R12
      220 SETTABLE                         R12 R10 R11
      221 GETIMPORT                        R11 K108 [Enum.RigLabel.RightHip]
      223 LOADNIL                          R12
      224 SETTABLE                         R12 R10 R11
      225 GETIMPORT                        R11 K110 [Enum.RigLabel.RightKnee]
      227 LOADNIL                          R12
      228 SETTABLE                         R12 R10 R11
      229 GETIMPORT                        R11 K112 [Enum.RigLabel.RightAnkle]
      231 LOADNIL                          R12
      232 SETTABLE                         R12 R10 R11
      233 LOADNIL                          R11
      234 SETTABLE                         R11 R10 R8
      235 JUMPIFNOT                        R4 ; [+7]
      236 NEWTABLE                         R11 0 1
      238 LOADK                            R12 K47 ["spine"]
      239 SETLIST                          R11 R12 1 [1]
      241 SETTABLE                         R11 R10 R5
      242 JUMP                             ; [+9]
      243 JUMPIFNOT                        R6 ; [+8]
      244 GETIMPORT                        R11 K114 [Enum.RigLabel.Pelvis]
      246 NEWTABLE                         R12 0 1
      248 LOADK                            R13 K47 ["spine"]
      249 SETLIST                          R12 R13 1 [1]
      251 SETTABLE                         R12 R10 R11
      252 NEWTABLE                         R11 0 8
      254 GETIMPORT                        R12 K56 [Enum.RigLabel.LeftClavicle]
      256 GETIMPORT                        R13 K61 [Enum.RigLabel.LeftShoulder]
      258 GETIMPORT                        R14 K66 [Enum.RigLabel.LeftElbow]
      260 GETIMPORT                        R15 K73 [Enum.RigLabel.LeftWrist]
      262 GETIMPORT                        R16 K77 [Enum.RigLabel.LeftHip]
      264 GETIMPORT                        R17 K84 [Enum.RigLabel.LeftKnee]
      266 GETIMPORT                        R18 K92 [Enum.RigLabel.LeftAnkle]
      268 MOVE                             R19 R7
      269 SETLIST                          R11 R12 8 [1]
      271 NEWTABLE                         R12 0 0
      273 NEWTABLE                         R13 8 0
      275 GETIMPORT                        R14 K56 [Enum.RigLabel.LeftClavicle]
      277 GETIMPORT                        R15 K100 [Enum.RigLabel.RightClavicle]
      279 SETTABLE                         R15 R13 R14
      280 GETIMPORT                        R14 K61 [Enum.RigLabel.LeftShoulder]
      282 GETIMPORT                        R15 K102 [Enum.RigLabel.RightShoulder]
      284 SETTABLE                         R15 R13 R14
      285 GETIMPORT                        R14 K66 [Enum.RigLabel.LeftElbow]
      287 GETIMPORT                        R15 K104 [Enum.RigLabel.RightElbow]
      289 SETTABLE                         R15 R13 R14
      290 GETIMPORT                        R14 K73 [Enum.RigLabel.LeftWrist]
      292 GETIMPORT                        R15 K106 [Enum.RigLabel.RightWrist]
      294 SETTABLE                         R15 R13 R14
      295 GETIMPORT                        R14 K77 [Enum.RigLabel.LeftHip]
      297 GETIMPORT                        R15 K108 [Enum.RigLabel.RightHip]
      299 SETTABLE                         R15 R13 R14
      300 GETIMPORT                        R14 K84 [Enum.RigLabel.LeftKnee]
      302 GETIMPORT                        R15 K110 [Enum.RigLabel.RightKnee]
      304 SETTABLE                         R15 R13 R14
      305 GETIMPORT                        R14 K92 [Enum.RigLabel.LeftAnkle]
      307 GETIMPORT                        R15 K112 [Enum.RigLabel.RightAnkle]
      309 SETTABLE                         R15 R13 R14
      310 SETTABLE                         R8 R13 R7
      311 MOVE                             R14 R13
      312 LOADNIL                          R15
      313 LOADNIL                          R16
      314 FORGPREP                         R14
      315 SETTABLE                         R17 R13 R18
      316 FORGLOOP                         R14 2 ; [-2]
      318 MOVE                             R14 R11
      319 LOADNIL                          R15
      320 LOADNIL                          R16
      321 FORGPREP                         R14
      322 LOADK                            R19 K115 ["left"]
      323 SETTABLE                         R19 R12 R18
      324 GETTABLE                         R19 R13 R18
      325 LOADK                            R20 K116 ["right"]
      326 SETTABLE                         R20 R12 R19
      327 FORGLOOP                         R14 2 ; [-6]
      329 NEWTABLE                         R14 16 0
      331 GETIMPORT                        R15 K34 [Enum.RigLabel.Root]
      333 GETIMPORT                        R16 K119 [Vector2.new]
      335 LOADN                            R17 0
      336 LOADK                            R18 K120 [0.199]
      337 CALL                             R16 2 1
      338 SETTABLE                         R16 R14 R15
      339 GETIMPORT                        R15 K42 [Enum.RigLabel.Waist]
      341 GETIMPORT                        R16 K119 [Vector2.new]
      343 LOADN                            R17 0
      344 LOADK                            R18 K121 [0.431]
      345 CALL                             R16 2 1
      346 SETTABLE                         R16 R14 R15
      347 GETIMPORT                        R15 K45 [Enum.RigLabel.Chest]
      349 GETIMPORT                        R16 K119 [Vector2.new]
      351 LOADN                            R17 0
      352 LOADK                            R18 K122 [0.669]
      353 CALL                             R16 2 1
      354 SETTABLE                         R16 R14 R15
      355 GETIMPORT                        R15 K50 [Enum.RigLabel.Neck]
      357 GETIMPORT                        R16 K119 [Vector2.new]
      359 LOADN                            R17 0
      360 LOADK                            R18 K123 [0.896]
      361 CALL                             R16 2 1
      362 SETTABLE                         R16 R14 R15
      363 GETIMPORT                        R15 K53 [Enum.RigLabel.HeadBase]
      365 GETIMPORT                        R16 K119 [Vector2.new]
      367 LOADN                            R17 0
      368 LOADN                            R18 1
      369 CALL                             R16 2 1
      370 SETTABLE                         R16 R14 R15
      371 GETIMPORT                        R15 K56 [Enum.RigLabel.LeftClavicle]
      373 GETIMPORT                        R16 K119 [Vector2.new]
      375 LOADK                            R17 K124 [-0.075]
      376 LOADK                            R18 K125 [0.783]
      377 CALL                             R16 2 1
      378 SETTABLE                         R16 R14 R15
      379 GETIMPORT                        R15 K61 [Enum.RigLabel.LeftShoulder]
      381 GETIMPORT                        R16 K119 [Vector2.new]
      383 LOADK                            R17 K126 [-0.365]
      384 LOADK                            R18 K127 [0.78]
      385 CALL                             R16 2 1
      386 SETTABLE                         R16 R14 R15
      387 GETIMPORT                        R15 K66 [Enum.RigLabel.LeftElbow]
      389 GETIMPORT                        R16 K119 [Vector2.new]
      391 LOADK                            R17 K128 [-0.722]
      392 LOADK                            R18 K129 [0.566]
      393 CALL                             R16 2 1
      394 SETTABLE                         R16 R14 R15
      395 GETIMPORT                        R15 K73 [Enum.RigLabel.LeftWrist]
      397 GETIMPORT                        R16 K119 [Vector2.new]
      399 LOADN                            R17 255
      400 LOADK                            R18 K130 [0.385]
      401 CALL                             R16 2 1
      402 SETTABLE                         R16 R14 R15
      403 GETIMPORT                        R15 K77 [Enum.RigLabel.LeftHip]
      405 GETIMPORT                        R16 K119 [Vector2.new]
      407 LOADK                            R17 K131 [-0.182]
      408 LOADK                            R18 K132 [0.118]
      409 CALL                             R16 2 1
      410 SETTABLE                         R16 R14 R15
      411 GETIMPORT                        R15 K84 [Enum.RigLabel.LeftKnee]
      413 GETIMPORT                        R16 K119 [Vector2.new]
      415 LOADK                            R17 K133 [-0.231]
      416 LOADK                            R18 K134 [-0.381]
      417 CALL                             R16 2 1
      418 SETTABLE                         R16 R14 R15
      419 GETIMPORT                        R15 K92 [Enum.RigLabel.LeftAnkle]
      421 GETIMPORT                        R16 K119 [Vector2.new]
      423 LOADK                            R17 K135 [-0.261]
      424 LOADK                            R18 K136 [-0.917]
      425 CALL                             R16 2 1
      426 SETTABLE                         R16 R14 R15
      427 GETIMPORT                        R15 K119 [Vector2.new]
      429 LOADK                            R16 K137 [-0.266]
      430 LOADN                            R17 255
      431 CALL                             R15 2 1
      432 SETTABLE                         R15 R14 R7
      433 MOVE                             R15 R11
      434 LOADNIL                          R16
      435 LOADNIL                          R17
      436 FORGPREP                         R15
      437 GETTABLE                         R20 R13 R19
      438 GETTABLE                         R21 R14 R19
      439 JUMPIFNOT                        R21 ; [+9]
      440 GETIMPORT                        R22 K119 [Vector2.new]
      442 GETTABLEKS                       R24 R21 K138 ["X"]
      444 MINUS                            R23 R24
      445 GETTABLEKS                       R24 R21 K139 ["Y"]
      447 CALL                             R22 2 1
      448 SETTABLE                         R22 R14 R20
      449 FORGLOOP                         R15 2 ; [-13]
      451 JUMPIFNOT                        R4 ; [+7]
      452 GETIMPORT                        R15 K119 [Vector2.new]
      454 LOADN                            R16 0
      455 LOADK                            R17 K140 [0.55]
      456 CALL                             R15 2 1
      457 SETTABLE                         R15 R14 R5
      458 JUMP                             ; [+9]
      459 JUMPIFNOT                        R6 ; [+8]
      460 GETIMPORT                        R15 K114 [Enum.RigLabel.Pelvis]
      462 GETIMPORT                        R16 K119 [Vector2.new]
      464 LOADN                            R17 0
      465 LOADK                            R18 K141 [0.28]
      466 CALL                             R16 2 1
      467 SETTABLE                         R16 R14 R15
      468 NEWTABLE                         R15 16 0
      470 GETIMPORT                        R16 K34 [Enum.RigLabel.Root]
      472 LOADNIL                          R17
      473 SETTABLE                         R17 R15 R16
      474 GETIMPORT                        R16 K50 [Enum.RigLabel.Neck]
      476 GETIMPORT                        R17 K45 [Enum.RigLabel.Chest]
      478 SETTABLE                         R17 R15 R16
      479 GETIMPORT                        R16 K53 [Enum.RigLabel.HeadBase]
      481 GETIMPORT                        R17 K50 [Enum.RigLabel.Neck]
      483 SETTABLE                         R17 R15 R16
      484 GETIMPORT                        R16 K56 [Enum.RigLabel.LeftClavicle]
      486 GETIMPORT                        R17 K45 [Enum.RigLabel.Chest]
      488 SETTABLE                         R17 R15 R16
      489 GETIMPORT                        R16 K61 [Enum.RigLabel.LeftShoulder]
      491 GETIMPORT                        R17 K56 [Enum.RigLabel.LeftClavicle]
      493 SETTABLE                         R17 R15 R16
      494 GETIMPORT                        R16 K66 [Enum.RigLabel.LeftElbow]
      496 GETIMPORT                        R17 K61 [Enum.RigLabel.LeftShoulder]
      498 SETTABLE                         R17 R15 R16
      499 GETIMPORT                        R16 K73 [Enum.RigLabel.LeftWrist]
      501 GETIMPORT                        R17 K66 [Enum.RigLabel.LeftElbow]
      503 SETTABLE                         R17 R15 R16
      504 GETIMPORT                        R16 K77 [Enum.RigLabel.LeftHip]
      506 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      508 SETTABLE                         R17 R15 R16
      509 GETIMPORT                        R16 K84 [Enum.RigLabel.LeftKnee]
      511 GETIMPORT                        R17 K77 [Enum.RigLabel.LeftHip]
      513 SETTABLE                         R17 R15 R16
      514 GETIMPORT                        R16 K92 [Enum.RigLabel.LeftAnkle]
      516 GETIMPORT                        R17 K84 [Enum.RigLabel.LeftKnee]
      518 SETTABLE                         R17 R15 R16
      519 GETIMPORT                        R16 K92 [Enum.RigLabel.LeftAnkle]
      521 SETTABLE                         R16 R15 R7
      522 MOVE                             R16 R11
      523 LOADNIL                          R17
      524 LOADNIL                          R18
      525 FORGPREP                         R16
      526 GETTABLE                         R21 R13 R20
      527 GETTABLE                         R22 R15 R20
      528 JUMPIFNOT                        R22 ; [+3]
      529 GETTABLE                         R24 R13 R22
      530 OR                               R23 R24 R22
      531 SETTABLE                         R23 R15 R21
      532 FORGLOOP                         R16 2 ; [-7]
      534 JUMPIFNOT                        R4 ; [+12]
      535 GETIMPORT                        R16 K42 [Enum.RigLabel.Waist]
      537 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      539 SETTABLE                         R17 R15 R16
      540 GETIMPORT                        R16 K42 [Enum.RigLabel.Waist]
      542 SETTABLE                         R16 R15 R5
      543 GETIMPORT                        R16 K45 [Enum.RigLabel.Chest]
      545 SETTABLE                         R5 R15 R16
      546 JUMP                             ; [+27]
      547 JUMPIFNOT                        R6 ; [+16]
      548 GETIMPORT                        R16 K114 [Enum.RigLabel.Pelvis]
      550 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      552 SETTABLE                         R17 R15 R16
      553 GETIMPORT                        R16 K42 [Enum.RigLabel.Waist]
      555 GETIMPORT                        R17 K114 [Enum.RigLabel.Pelvis]
      557 SETTABLE                         R17 R15 R16
      558 GETIMPORT                        R16 K45 [Enum.RigLabel.Chest]
      560 GETIMPORT                        R17 K42 [Enum.RigLabel.Waist]
      562 SETTABLE                         R17 R15 R16
      563 JUMP                             ; [+10]
      564 GETIMPORT                        R16 K42 [Enum.RigLabel.Waist]
      566 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      568 SETTABLE                         R17 R15 R16
      569 GETIMPORT                        R16 K45 [Enum.RigLabel.Chest]
      571 GETIMPORT                        R17 K42 [Enum.RigLabel.Waist]
      573 SETTABLE                         R17 R15 R16
      574 NEWTABLE                         R16 16 0
      576 GETIMPORT                        R17 K45 [Enum.RigLabel.Chest]
      578 GETIMPORT                        R18 K50 [Enum.RigLabel.Neck]
      580 SETTABLE                         R18 R16 R17
      581 GETIMPORT                        R17 K50 [Enum.RigLabel.Neck]
      583 GETIMPORT                        R18 K53 [Enum.RigLabel.HeadBase]
      585 SETTABLE                         R18 R16 R17
      586 GETIMPORT                        R17 K53 [Enum.RigLabel.HeadBase]
      588 LOADNIL                          R18
      589 SETTABLE                         R18 R16 R17
      590 GETIMPORT                        R17 K56 [Enum.RigLabel.LeftClavicle]
      592 GETIMPORT                        R18 K61 [Enum.RigLabel.LeftShoulder]
      594 SETTABLE                         R18 R16 R17
      595 GETIMPORT                        R17 K61 [Enum.RigLabel.LeftShoulder]
      597 GETIMPORT                        R18 K66 [Enum.RigLabel.LeftElbow]
      599 SETTABLE                         R18 R16 R17
      600 GETIMPORT                        R17 K66 [Enum.RigLabel.LeftElbow]
      602 GETIMPORT                        R18 K73 [Enum.RigLabel.LeftWrist]
      604 SETTABLE                         R18 R16 R17
      605 GETIMPORT                        R17 K73 [Enum.RigLabel.LeftWrist]
      607 LOADNIL                          R18
      608 SETTABLE                         R18 R16 R17
      609 GETIMPORT                        R17 K77 [Enum.RigLabel.LeftHip]
      611 GETIMPORT                        R18 K84 [Enum.RigLabel.LeftKnee]
      613 SETTABLE                         R18 R16 R17
      614 GETIMPORT                        R17 K84 [Enum.RigLabel.LeftKnee]
      616 GETIMPORT                        R18 K92 [Enum.RigLabel.LeftAnkle]
      618 SETTABLE                         R18 R16 R17
      619 GETIMPORT                        R17 K92 [Enum.RigLabel.LeftAnkle]
      621 SETTABLE                         R7 R16 R17
      622 LOADNIL                          R17
      623 SETTABLE                         R17 R16 R7
      624 MOVE                             R17 R11
      625 LOADNIL                          R18
      626 LOADNIL                          R19
      627 FORGPREP                         R17
      628 GETTABLE                         R22 R13 R21
      629 GETTABLE                         R23 R16 R21
      630 JUMPIFNOT                        R23 ; [+2]
      631 GETTABLE                         R24 R13 R23
      632 SETTABLE                         R24 R16 R22
      633 FORGLOOP                         R17 2 ; [-6]
      635 JUMPIFNOT                        R4 ; [+12]
      636 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      638 GETIMPORT                        R18 K42 [Enum.RigLabel.Waist]
      640 SETTABLE                         R18 R16 R17
      641 GETIMPORT                        R17 K42 [Enum.RigLabel.Waist]
      643 SETTABLE                         R5 R16 R17
      644 GETIMPORT                        R17 K45 [Enum.RigLabel.Chest]
      646 SETTABLE                         R17 R16 R5
      647 JUMP                             ; [+27]
      648 JUMPIFNOT                        R6 ; [+16]
      649 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      651 GETIMPORT                        R18 K114 [Enum.RigLabel.Pelvis]
      653 SETTABLE                         R18 R16 R17
      654 GETIMPORT                        R17 K114 [Enum.RigLabel.Pelvis]
      656 GETIMPORT                        R18 K42 [Enum.RigLabel.Waist]
      658 SETTABLE                         R18 R16 R17
      659 GETIMPORT                        R17 K42 [Enum.RigLabel.Waist]
      661 GETIMPORT                        R18 K45 [Enum.RigLabel.Chest]
      663 SETTABLE                         R18 R16 R17
      664 JUMP                             ; [+10]
      665 GETIMPORT                        R17 K34 [Enum.RigLabel.Root]
      667 GETIMPORT                        R18 K42 [Enum.RigLabel.Waist]
      669 SETTABLE                         R18 R16 R17
      670 GETIMPORT                        R17 K42 [Enum.RigLabel.Waist]
      672 GETIMPORT                        R18 K45 [Enum.RigLabel.Chest]
      674 SETTABLE                         R18 R16 R17
      675 GETTABLEKS                       R17 R2 K142 ["bodyRigLabels"]
      677 NEWTABLE                         R18 0 0
      679 MOVE                             R19 R11
      680 LOADNIL                          R20
      681 LOADNIL                          R21
      682 FORGPREP                         R19
      683 GETTABLE                         R24 R13 R23
      684 JUMPIFNOT                        R24 ; [+2]
      685 GETTABLE                         R25 R10 R23
      686 SETTABLE                         R25 R10 R24
      687 FORGLOOP                         R19 2 ; [-5]
      689 MOVE                             R19 R17
      690 LOADNIL                          R20
      691 LOADNIL                          R21
      692 FORGPREP                         R19
      693 GETTABLE                         R24 R10 R23
      694 JUMPIFNOT                        R24 ; [+10]
      695 MOVE                             R25 R24
      696 LOADNIL                          R26
      697 LOADNIL                          R27
      698 FORGPREP                         R25
      699 GETTABLE                         R32 R18 R29
      700 ORK                              R31 R32 K144 [0]
      701 ADDK                             R30 R31 K143 [1]
      702 SETTABLE                         R30 R18 R29
      703 FORGLOOP                         R25 2 ; [-5]
      705 FORGLOOP                         R19 2 ; [-13]
      707 MOVE                             R19 R18
      708 LOADNIL                          R20
      709 LOADNIL                          R21
      710 FORGPREP                         R19
      711 DIVRK                            R24 R143 K23 ["rootDepthPenalty"]
      712 SETTABLE                         R24 R18 R22
      713 FORGLOOP                         R19 2 ; [-3]
      715 DUPCLOSURE                       R19 K145 [PROTO_0]
      716 DUPCLOSURE                       R20 K146 [PROTO_1]
      717 CAPTURE                          VAL R10
      718 CAPTURE                          VAL R18
      719 CAPTURE                          VAL R9
      720 CAPTURE                          VAL R12
      721 CAPTURE                          VAL R19
      722 DUPCLOSURE                       R21 K147 [PROTO_2]
      723 CAPTURE                          VAL R14
      724 CAPTURE                          VAL R9
      725 NEWTABLE                         R22 8 0
      727 DUPCLOSURE                       R23 K148 [PROTO_4]
      728 CAPTURE                          VAL R17
      729 CAPTURE                          VAL R2
      730 CAPTURE                          VAL R3
      731 CAPTURE                          VAL R9
      732 CAPTURE                          VAL R20
      733 CAPTURE                          VAL R21
      734 CAPTURE                          VAL R15
      735 CAPTURE                          VAL R16
      736 SETTABLEKS                       R23 R22 K149 ["setup"]
      738 SETTABLEKS                       R19 R22 K150 ["guessJointSide"]
      740 SETTABLEKS                       R20 R22 K151 ["nameScore"]
      742 SETTABLEKS                       R21 R22 K152 ["positionScore"]
      744 SETTABLEKS                       R13 R22 K153 ["symmetryCounterparts"]
      746 SETTABLEKS                       R15 R22 K154 ["parentRigLabel"]
      748 SETTABLEKS                       R16 R22 K155 ["directChildRigLabel"]
      750 RETURN                           R22 1
