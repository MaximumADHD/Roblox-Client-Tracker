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
        0 NAMECALL                         R2 R0 K0 ["lower"]
        2 CALL                             R2 1 1
        3 MOVE                             R0 R2
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 MOVE                             R3 R2
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 LOADK                            R10 K1 ["-"]
       14 NAMECALL                         R8 R7 K2 ["find"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+25]
       18 LOADK                            R10 K3 ["([^%-]+)%-(.+)"]
       19 NAMECALL                         R8 R7 K4 ["match"]
       21 CALL                             R8 2 2
       22 JUMPIFNOT                        R8 ; [+27]
       23 JUMPIFNOT                        R9 ; [+26]
       24 MOVE                             R13 R8
       25 LOADK                            R14 K5 [".*"]
       26 MOVE                             R15 R9
       27 CONCAT                           R12 R13 R15
       28 NAMECALL                         R10 R0 K2 ["find"]
       30 CALL                             R10 2 1
       31 JUMPIF                           R10 ; [+8]
       32 MOVE                             R13 R9
       33 LOADK                            R14 K5 [".*"]
       34 MOVE                             R15 R8
       35 CONCAT                           R12 R13 R15
       36 NAMECALL                         R10 R0 K2 ["find"]
       38 CALL                             R10 2 1
       39 JUMPIFNOT                        R10 ; [+10]
       40 LOADB                            R10 1
       41 RETURN                           R10 1
       42 JUMP                             ; [+7]
       43 MOVE                             R10 R7
       44 NAMECALL                         R8 R0 K2 ["find"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+2]
       48 LOADB                            R8 1
       49 RETURN                           R8 1
       50 FORGLOOP                         R3 2 ; [-38]
       52 LOADB                            R3 0
       53 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["score"]
        2 GETTABLEKS                       R4 R1 K0 ["score"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
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
      376 JUMPIFEQKNIL                     R22 ; [+41]
      378 GETTABLEKS                       R23 R16 K20 ["parent"]
      380 JUMPIFNOT                        R23 ; [+37]
      381 LOADB                            R23 1
      382 GETUPVAL                         R24 7
      383 CALL                             R24 0 1
      384 JUMPIFNOT                        R24 ; [+14]
      385 GETUPVAL                         R24 8
      386 JUMPIFEQ                         R21 R24 ; [+4]
      388 GETUPVAL                         R24 9
      389 JUMPIFNOTEQ                      R21 R24 ; [+9]
      391 GETUPVAL                         R24 10
      392 GETTABLEKS                       R26 R16 K20 ["parent"]
      394 GETTABLEKS                       R25 R26 K19 ["name"]
      396 MOVE                             R26 R22
      397 CALL                             R24 2 1
      398 MOVE                             R23 R24
      399 JUMPIFNOT                        R23 ; [+18]
      400 GETTABLEKS                       R27 R16 K20 ["parent"]
      402 GETTABLEKS                       R26 R27 K18 ["joint"]
      404 GETTABLE                         R25 R11 R26
      405 GETTABLE                         R24 R25 R22
      406 GETTABLEKS                       R26 R16 K18 ["joint"]
      408 GETTABLE                         R25 R11 R26
      409 GETTABLE                         R26 R25 R21
      410 LOADN                            R28 1
      411 GETUPVAL                         R31 3
      412 GETTABLEKS                       R30 R31 K44 ["parentInfluenceWeight"]
      414 MUL                              R29 R30 R24
      415 ADD                              R27 R28 R29
      416 MUL                              R26 R26 R27
      417 SETTABLE                         R26 R25 R21
      418 GETUPVAL                         R24 11
      419 GETTABLE                         R23 R24 R21
      420 GETTABLEKS                       R24 R16 K18 ["joint"]
      422 NAMECALL                         R24 R24 K45 ["GetChildren"]
      424 CALL                             R24 1 1
      425 JUMPIFEQKNIL                     R23 ; [+55]
      427 LENGTH                           R25 R24
      428 LOADN                            R26 0
      429 JUMPIFNOTLT                      R26 R25 ; [+51]
      431 LOADK                            R25 K46 [-∞]
      432 MOVE                             R26 R24
      433 LOADNIL                          R27
      434 LOADNIL                          R28
      435 FORGPREP                         R26
      436 GETUPVAL                         R32 2
      437 CALL                             R32 0 1
      438 JUMPIFNOT                        R32 ; [+6]
      439 GETUPVAL                         R32 1
      440 GETTABLEKS                       R31 R32 K11 ["isValidTJoint"]
      442 MOVE                             R32 R30
      443 CALL                             R31 1 1
      444 JUMP                             ; [+9]
      445 LOADK                            R33 K13 ["Motor6D"]
      446 NAMECALL                         R31 R30 K15 ["IsA"]
      448 CALL                             R31 2 1
      449 JUMPIF                           R31 ; [+4]
      450 LOADK                            R33 K12 ["Bone"]
      451 NAMECALL                         R31 R30 K15 ["IsA"]
      453 CALL                             R31 2 1
      454 JUMPIFNOT                        R31 ; [+10]
      455 GETTABLE                         R33 R11 R30
      456 GETTABLE                         R32 R33 R23
      457 FASTCALL2                        MATH_MAX R25 R32 ; [+5]
      459 MOVE                             R34 R25
      460 MOVE                             R35 R32
      461 GETIMPORT                        R33 K49 [math.max]
      463 CALL                             R33 2 1
      464 MOVE                             R25 R33
      465 FORGLOOP                         R26 2 ; [-30]
      467 JUMPIFEQKN                       R25 K46 [-∞] ; [+13]
      469 GETTABLEKS                       R27 R16 K18 ["joint"]
      471 GETTABLE                         R26 R11 R27
      472 GETTABLE                         R27 R26 R21
      473 LOADN                            R29 1
      474 GETUPVAL                         R32 3
      475 GETTABLEKS                       R31 R32 K50 ["childInfluenceWeight"]
      477 MUL                              R30 R31 R25
      478 ADD                              R28 R29 R30
      479 MUL                              R27 R27 R28
      480 SETTABLE                         R27 R26 R21
      481 GETIMPORT                        R25 K53 [Enum.RigLabel.Root]
      483 JUMPIFNOTEQ                      R21 R25 ; [+20]
      485 GETUPVAL                         R27 1
      486 GETTABLEKS                       R26 R27 K55 ["getDepth"]
      488 GETTABLEKS                       R27 R16 K18 ["joint"]
      490 MOVE                             R28 R3
      491 CALL                             R26 2 1
      492 SUBK                             R25 R26 K54 [1]
      493 GETTABLEKS                       R27 R16 K18 ["joint"]
      495 GETTABLE                         R26 R11 R27
      496 GETTABLE                         R27 R26 R21
      497 GETUPVAL                         R30 3
      498 GETTABLEKS                       R29 R30 K56 ["rootDepthPenalty"]
      500 MUL                              R28 R25 R29
      501 SUB                              R27 R27 R28
      502 SETTABLE                         R27 R26 R21
      503 JUMP                             ; [+31]
      504 GETIMPORT                        R25 K58 [Enum.RigLabel.LeftWrist]
      506 JUMPIFEQ                         R21 R25 ; [+5]
      508 GETIMPORT                        R25 K60 [Enum.RigLabel.RightWrist]
      510 JUMPIFNOTEQ                      R21 R25 ; [+24]
      512 GETTABLEKS                       R26 R16 K18 ["joint"]
      514 NAMECALL                         R26 R26 K9 ["GetDescendants"]
      516 CALL                             R26 1 1
      517 LENGTH                           R25 R26
      518 GETTABLEKS                       R27 R16 K18 ["joint"]
      520 GETTABLE                         R26 R11 R27
      521 GETTABLE                         R27 R26 R21
      522 FASTCALL2K                       MATH_MIN R25 K61 ; [+5]
      524 MOVE                             R30 R25
      525 LOADK                            R31 K61 [15]
      526 GETIMPORT                        R29 K63 [math.min]
      528 CALL                             R29 2 1
      529 GETUPVAL                         R31 3
      530 GETTABLEKS                       R30 R31 K64 ["handBoostPerDescendant"]
      532 MUL                              R28 R29 R30
      533 ADD                              R27 R27 R28
      534 SETTABLE                         R27 R26 R21
      535 FORGLOOP                         R17 2 ; [-162]
      537 FORGLOOP                         R12 2 ; [-168]
      539 NEWTABLE                         R12 0 0
      541 MOVE                             R13 R5
      542 LOADNIL                          R14
      543 LOADNIL                          R15
      544 FORGPREP                         R13
      545 GETUPVAL                         R18 0
      546 LOADNIL                          R19
      547 LOADNIL                          R20
      548 FORGPREP                         R18
      549 DUPTABLE                         R25 K67 [{"joint", "rigLabel", "score"}]
      550 GETTABLEKS                       R26 R17 K18 ["joint"]
      552 SETTABLEKS                       R26 R25 K18 ["joint"]
      554 SETTABLEKS                       R22 R25 K65 ["rigLabel"]
      556 GETTABLEKS                       R28 R17 K18 ["joint"]
      558 GETTABLE                         R27 R11 R28
      559 GETTABLE                         R26 R27 R22
      560 SETTABLEKS                       R26 R25 K66 ["score"]
      562 FASTCALL2                        TABLE_INSERT R12 R25 ; [+4]
      564 MOVE                             R24 R12
      565 GETIMPORT                        R23 K25 [table.insert]
      567 CALL                             R23 2 0
      568 FORGLOOP                         R18 2 ; [-20]
      570 FORGLOOP                         R13 2 ; [-26]
      572 GETIMPORT                        R13 K69 [table.sort]
      574 MOVE                             R14 R12
      575 DUPCLOSURE                       R15 K70 [PROTO_4]
      576 CALL                             R13 2 0
      577 NEWTABLE                         R13 0 0
      579 NEWTABLE                         R14 0 0
      581 GETUPVAL                         R15 2
      582 CALL                             R15 0 1
      583 JUMPIFNOT                        R15 ; [+25]
      584 GETUPVAL                         R15 0
      585 LOADNIL                          R16
      586 LOADNIL                          R17
      587 FORGPREP                         R15
      588 MOVE                             R22 R19
      589 NAMECALL                         R20 R0 K71 ["GetJoint"]
      591 CALL                             R20 2 1
      592 JUMPIFNOT                        R20 ; [+14]
      593 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      595 MOVE                             R22 R14
      596 MOVE                             R23 R19
      597 GETIMPORT                        R21 K25 [table.insert]
      599 CALL                             R21 2 0
      600 FASTCALL2                        TABLE_INSERT R13 R20 ; [+5]
      602 MOVE                             R22 R13
      603 MOVE                             R23 R20
      604 GETIMPORT                        R21 K25 [table.insert]
      606 CALL                             R21 2 0
      607 FORGLOOP                         R15 2 ; [-20]
      609 MOVE                             R15 R12
      610 LOADNIL                          R16
      611 LOADNIL                          R17
      612 FORGPREP                         R15
      613 GETTABLEKS                       R20 R19 K66 ["score"]
      615 GETUPVAL                         R22 3
      616 GETTABLEKS                       R21 R22 K72 ["minScoreThreshold"]
      618 JUMPIFLT                         R20 R21 ; [+40]
      620 GETIMPORT                        R20 K37 [table.find]
      622 MOVE                             R21 R13
      623 GETTABLEKS                       R22 R19 K18 ["joint"]
      625 CALL                             R20 2 1
      626 JUMPIF                           R20 ; [+30]
      627 GETIMPORT                        R20 K37 [table.find]
      629 MOVE                             R21 R14
      630 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      632 CALL                             R20 2 1
      633 JUMPIF                           R20 ; [+23]
      634 GETTABLEKS                       R22 R19 K18 ["joint"]
      636 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
      638 MOVE                             R21 R13
      639 GETIMPORT                        R20 K25 [table.insert]
      641 CALL                             R20 2 0
      642 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      644 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
      646 MOVE                             R21 R14
      647 GETIMPORT                        R20 K25 [table.insert]
      649 CALL                             R20 2 0
      650 GETTABLEKS                       R22 R19 K65 ["rigLabel"]
      652 GETTABLEKS                       R23 R19 K18 ["joint"]
      654 NAMECALL                         R20 R0 K0 ["SetJoint"]
      656 CALL                             R20 3 0
      657 FORGLOOP                         R15 2 ; [-45]
      659 RETURN                           R0 0

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
       19 GETTABLEKS                       R4 R5 K8 ["getFFlagAdaptiveAnimationAutomapperFix"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R6 R0 K7 ["Flags"]
       26 GETTABLEKS                       R5 R6 K9 ["getFFlagAdaptiveAnimationBetaImprovements"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K10 ["hasSpine"]
       31 GETTABLEKS                       R6 R2 K11 ["spineLabel"]
       33 GETTABLEKS                       R7 R2 K12 ["hasPelvis"]
       35 GETTABLEKS                       R8 R2 K13 ["LeftToeBase"]
       37 GETTABLEKS                       R9 R2 K14 ["RightToeBase"]
       39 DUPTABLE                         R10 K26 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant"}]
       40 LOADK                            R11 K27 [0.3]
       41 SETTABLEKS                       R11 R10 K15 ["tokenLengthWeight"]
       43 LOADN                            R11 1
       44 SETTABLEKS                       R11 R10 K16 ["sideLeftRightWeight"]
       46 LOADK                            R11 K27 [0.3]
       47 SETTABLEKS                       R11 R10 K17 ["parentInfluenceWeight"]
       49 LOADK                            R11 K28 [0.1]
       50 SETTABLEKS                       R11 R10 K18 ["childInfluenceWeight"]
       52 LOADK                            R11 K29 [0.02]
       53 SETTABLEKS                       R11 R10 K19 ["leftRightPositionThreshold"]
       55 LOADK                            R11 K28 [0.1]
       56 SETTABLEKS                       R11 R10 K20 ["distanceSmoothingKernel"]
       58 LOADK                            R11 K30 [0.5]
       59 SETTABLEKS                       R11 R10 K21 ["minScoreThreshold"]
       61 LOADN                            R11 3
       62 SETTABLEKS                       R11 R10 K22 ["nameWeight"]
       64 LOADK                            R11 K30 [0.5]
       65 SETTABLEKS                       R11 R10 K23 ["positionWeight"]
       67 LOADK                            R11 K30 [0.5]
       68 SETTABLEKS                       R11 R10 K24 ["rootDepthPenalty"]
       70 LOADK                            R11 K31 [0.05]
       71 SETTABLEKS                       R11 R10 K25 ["handBoostPerDescendant"]
       73 NEWTABLE                         R11 32 0
       75 GETIMPORT                        R12 K35 [Enum.RigLabel.Root]
       77 NEWTABLE                         R13 0 6
       79 LOADK                            R14 K36 ["root"]
       80 LOADK                            R15 K37 ["torso"]
       81 LOADK                            R16 K38 ["lower-torso"]
       82 LOADK                            R17 K39 ["waist"]
       83 LOADK                            R18 K40 ["hips"]
       84 LOADK                            R19 K41 ["pelvis"]
       85 SETLIST                          R13 R14 6 [1]
       87 SETTABLE                         R13 R11 R12
       88 GETIMPORT                        R12 K43 [Enum.RigLabel.Waist]
       90 NEWTABLE                         R13 0 1
       92 LOADK                            R14 K44 ["chest"]
       93 SETLIST                          R13 R14 1 [1]
       95 SETTABLE                         R13 R11 R12
       96 GETIMPORT                        R12 K46 [Enum.RigLabel.Chest]
       98 NEWTABLE                         R13 0 5
      100 LOADK                            R14 K47 ["upper-torso"]
      101 LOADK                            R15 K37 ["torso"]
      102 LOADK                            R16 K48 ["spine"]
      103 LOADK                            R17 K49 ["upper-chest"]
      104 LOADK                            R18 K44 ["chest"]
      105 SETLIST                          R13 R14 5 [1]
      107 SETTABLE                         R13 R11 R12
      108 GETIMPORT                        R12 K51 [Enum.RigLabel.Neck]
      110 NEWTABLE                         R13 0 1
      112 LOADK                            R14 K52 ["neck"]
      113 SETLIST                          R13 R14 1 [1]
      115 SETTABLE                         R13 R11 R12
      116 GETIMPORT                        R12 K54 [Enum.RigLabel.HeadBase]
      118 NEWTABLE                         R13 0 1
      120 LOADK                            R14 K55 ["head"]
      121 SETLIST                          R13 R14 1 [1]
      123 SETTABLE                         R13 R11 R12
      124 GETIMPORT                        R12 K57 [Enum.RigLabel.LeftClavicle]
      126 NEWTABLE                         R13 0 3
      128 LOADK                            R14 K58 ["shoulder"]
      129 LOADK                            R15 K59 ["clavicle"]
      130 LOADK                            R16 K60 ["collar"]
      131 SETLIST                          R13 R14 3 [1]
      133 SETTABLE                         R13 R11 R12
      134 GETIMPORT                        R12 K62 [Enum.RigLabel.LeftShoulder]
      136 NEWTABLE                         R13 0 4
      138 LOADK                            R14 K58 ["shoulder"]
      139 LOADK                            R15 K63 ["arm"]
      140 LOADK                            R16 K64 ["upper-arm"]
      141 LOADK                            R17 K65 ["up-arm"]
      142 SETLIST                          R13 R14 4 [1]
      144 SETTABLE                         R13 R11 R12
      145 GETIMPORT                        R12 K67 [Enum.RigLabel.LeftElbow]
      147 NEWTABLE                         R13 0 6
      149 LOADK                            R14 K68 ["lower-arm"]
      150 LOADK                            R15 K69 ["elbow"]
      151 LOADK                            R16 K70 ["fore-arm"]
      152 LOADK                            R17 K71 ["down-arm"]
      153 LOADK                            R18 K63 ["arm"]
      154 LOADK                            R19 K72 ["lo-arm"]
      155 SETLIST                          R13 R14 6 [1]
      157 SETTABLE                         R13 R11 R12
      158 GETIMPORT                        R12 K74 [Enum.RigLabel.LeftWrist]
      160 NEWTABLE                         R13 0 2
      162 LOADK                            R14 K75 ["hand"]
      163 LOADK                            R15 K76 ["wrist"]
      164 SETLIST                          R13 R14 2 [1]
      166 SETTABLE                         R13 R11 R12
      167 GETIMPORT                        R12 K78 [Enum.RigLabel.LeftHip]
      169 NEWTABLE                         R13 0 5
      171 LOADK                            R14 K79 ["leg"]
      172 LOADK                            R15 K80 ["hip"]
      173 LOADK                            R16 K81 ["upper-leg"]
      174 LOADK                            R17 K82 ["up-leg"]
      175 LOADK                            R18 K83 ["thigh"]
      176 SETLIST                          R13 R14 5 [1]
      178 SETTABLE                         R13 R11 R12
      179 GETIMPORT                        R12 K85 [Enum.RigLabel.LeftKnee]
      181 NEWTABLE                         R13 0 7
      183 LOADK                            R14 K79 ["leg"]
      184 LOADK                            R15 K86 ["lower-leg"]
      185 LOADK                            R16 K87 ["knee"]
      186 LOADK                            R17 K88 ["calf"]
      187 LOADK                            R18 K89 ["down-leg"]
      188 LOADK                            R19 K90 ["lo-leg"]
      189 LOADK                            R20 K91 ["shin"]
      190 SETLIST                          R13 R14 7 [1]
      192 SETTABLE                         R13 R11 R12
      193 GETIMPORT                        R12 K93 [Enum.RigLabel.LeftAnkle]
      195 NEWTABLE                         R13 0 2
      197 LOADK                            R14 K94 ["foot"]
      198 LOADK                            R15 K95 ["ankle"]
      199 SETLIST                          R13 R14 2 [1]
      201 SETTABLE                         R13 R11 R12
      202 NEWTABLE                         R12 0 5
      204 LOADK                            R13 K96 ["toe-base"]
      205 LOADK                            R14 K97 ["toe"]
      206 LOADK                            R15 K98 ["toes"]
      207 LOADK                            R16 K94 ["foot"]
      208 LOADK                            R17 K99 ["ball"]
      209 SETLIST                          R12 R13 5 [1]
      211 SETTABLE                         R12 R11 R8
      212 GETIMPORT                        R12 K101 [Enum.RigLabel.RightClavicle]
      214 LOADNIL                          R13
      215 SETTABLE                         R13 R11 R12
      216 GETIMPORT                        R12 K103 [Enum.RigLabel.RightShoulder]
      218 LOADNIL                          R13
      219 SETTABLE                         R13 R11 R12
      220 GETIMPORT                        R12 K105 [Enum.RigLabel.RightElbow]
      222 LOADNIL                          R13
      223 SETTABLE                         R13 R11 R12
      224 GETIMPORT                        R12 K107 [Enum.RigLabel.RightWrist]
      226 LOADNIL                          R13
      227 SETTABLE                         R13 R11 R12
      228 GETIMPORT                        R12 K109 [Enum.RigLabel.RightHip]
      230 LOADNIL                          R13
      231 SETTABLE                         R13 R11 R12
      232 GETIMPORT                        R12 K111 [Enum.RigLabel.RightKnee]
      234 LOADNIL                          R13
      235 SETTABLE                         R13 R11 R12
      236 GETIMPORT                        R12 K113 [Enum.RigLabel.RightAnkle]
      238 LOADNIL                          R13
      239 SETTABLE                         R13 R11 R12
      240 LOADNIL                          R12
      241 SETTABLE                         R12 R11 R9
      242 JUMPIFNOT                        R5 ; [+7]
      243 NEWTABLE                         R12 0 1
      245 LOADK                            R13 K48 ["spine"]
      246 SETLIST                          R12 R13 1 [1]
      248 SETTABLE                         R12 R11 R6
      249 JUMP                             ; [+9]
      250 JUMPIFNOT                        R7 ; [+8]
      251 GETIMPORT                        R12 K115 [Enum.RigLabel.Pelvis]
      253 NEWTABLE                         R13 0 1
      255 LOADK                            R14 K48 ["spine"]
      256 SETLIST                          R13 R14 1 [1]
      258 SETTABLE                         R13 R11 R12
      259 NEWTABLE                         R12 0 8
      261 GETIMPORT                        R13 K57 [Enum.RigLabel.LeftClavicle]
      263 GETIMPORT                        R14 K62 [Enum.RigLabel.LeftShoulder]
      265 GETIMPORT                        R15 K67 [Enum.RigLabel.LeftElbow]
      267 GETIMPORT                        R16 K74 [Enum.RigLabel.LeftWrist]
      269 GETIMPORT                        R17 K78 [Enum.RigLabel.LeftHip]
      271 GETIMPORT                        R18 K85 [Enum.RigLabel.LeftKnee]
      273 GETIMPORT                        R19 K93 [Enum.RigLabel.LeftAnkle]
      275 MOVE                             R20 R8
      276 SETLIST                          R12 R13 8 [1]
      278 NEWTABLE                         R13 0 0
      280 NEWTABLE                         R14 8 0
      282 GETIMPORT                        R15 K57 [Enum.RigLabel.LeftClavicle]
      284 GETIMPORT                        R16 K101 [Enum.RigLabel.RightClavicle]
      286 SETTABLE                         R16 R14 R15
      287 GETIMPORT                        R15 K62 [Enum.RigLabel.LeftShoulder]
      289 GETIMPORT                        R16 K103 [Enum.RigLabel.RightShoulder]
      291 SETTABLE                         R16 R14 R15
      292 GETIMPORT                        R15 K67 [Enum.RigLabel.LeftElbow]
      294 GETIMPORT                        R16 K105 [Enum.RigLabel.RightElbow]
      296 SETTABLE                         R16 R14 R15
      297 GETIMPORT                        R15 K74 [Enum.RigLabel.LeftWrist]
      299 GETIMPORT                        R16 K107 [Enum.RigLabel.RightWrist]
      301 SETTABLE                         R16 R14 R15
      302 GETIMPORT                        R15 K78 [Enum.RigLabel.LeftHip]
      304 GETIMPORT                        R16 K109 [Enum.RigLabel.RightHip]
      306 SETTABLE                         R16 R14 R15
      307 GETIMPORT                        R15 K85 [Enum.RigLabel.LeftKnee]
      309 GETIMPORT                        R16 K111 [Enum.RigLabel.RightKnee]
      311 SETTABLE                         R16 R14 R15
      312 GETIMPORT                        R15 K93 [Enum.RigLabel.LeftAnkle]
      314 GETIMPORT                        R16 K113 [Enum.RigLabel.RightAnkle]
      316 SETTABLE                         R16 R14 R15
      317 SETTABLE                         R9 R14 R8
      318 MOVE                             R15 R14
      319 LOADNIL                          R16
      320 LOADNIL                          R17
      321 FORGPREP                         R15
      322 SETTABLE                         R18 R14 R19
      323 FORGLOOP                         R15 2 ; [-2]
      325 MOVE                             R15 R12
      326 LOADNIL                          R16
      327 LOADNIL                          R17
      328 FORGPREP                         R15
      329 LOADK                            R20 K116 ["left"]
      330 SETTABLE                         R20 R13 R19
      331 GETTABLE                         R20 R14 R19
      332 LOADK                            R21 K117 ["right"]
      333 SETTABLE                         R21 R13 R20
      334 FORGLOOP                         R15 2 ; [-6]
      336 NEWTABLE                         R15 16 0
      338 GETIMPORT                        R16 K35 [Enum.RigLabel.Root]
      340 GETIMPORT                        R17 K120 [Vector2.new]
      342 LOADN                            R18 0
      343 LOADK                            R19 K121 [0.199]
      344 CALL                             R17 2 1
      345 SETTABLE                         R17 R15 R16
      346 GETIMPORT                        R16 K43 [Enum.RigLabel.Waist]
      348 GETIMPORT                        R17 K120 [Vector2.new]
      350 LOADN                            R18 0
      351 LOADK                            R19 K122 [0.431]
      352 CALL                             R17 2 1
      353 SETTABLE                         R17 R15 R16
      354 GETIMPORT                        R16 K46 [Enum.RigLabel.Chest]
      356 GETIMPORT                        R17 K120 [Vector2.new]
      358 LOADN                            R18 0
      359 LOADK                            R19 K123 [0.669]
      360 CALL                             R17 2 1
      361 SETTABLE                         R17 R15 R16
      362 GETIMPORT                        R16 K51 [Enum.RigLabel.Neck]
      364 GETIMPORT                        R17 K120 [Vector2.new]
      366 LOADN                            R18 0
      367 LOADK                            R19 K124 [0.896]
      368 CALL                             R17 2 1
      369 SETTABLE                         R17 R15 R16
      370 GETIMPORT                        R16 K54 [Enum.RigLabel.HeadBase]
      372 GETIMPORT                        R17 K120 [Vector2.new]
      374 LOADN                            R18 0
      375 LOADN                            R19 1
      376 CALL                             R17 2 1
      377 SETTABLE                         R17 R15 R16
      378 GETIMPORT                        R16 K57 [Enum.RigLabel.LeftClavicle]
      380 GETIMPORT                        R17 K120 [Vector2.new]
      382 LOADK                            R18 K125 [-0.075]
      383 LOADK                            R19 K126 [0.783]
      384 CALL                             R17 2 1
      385 SETTABLE                         R17 R15 R16
      386 GETIMPORT                        R16 K62 [Enum.RigLabel.LeftShoulder]
      388 GETIMPORT                        R17 K120 [Vector2.new]
      390 LOADK                            R18 K127 [-0.365]
      391 LOADK                            R19 K128 [0.78]
      392 CALL                             R17 2 1
      393 SETTABLE                         R17 R15 R16
      394 GETIMPORT                        R16 K67 [Enum.RigLabel.LeftElbow]
      396 GETIMPORT                        R17 K120 [Vector2.new]
      398 LOADK                            R18 K129 [-0.722]
      399 LOADK                            R19 K130 [0.566]
      400 CALL                             R17 2 1
      401 SETTABLE                         R17 R15 R16
      402 GETIMPORT                        R16 K74 [Enum.RigLabel.LeftWrist]
      404 GETIMPORT                        R17 K120 [Vector2.new]
      406 LOADN                            R18 255
      407 LOADK                            R19 K131 [0.385]
      408 CALL                             R17 2 1
      409 SETTABLE                         R17 R15 R16
      410 GETIMPORT                        R16 K78 [Enum.RigLabel.LeftHip]
      412 GETIMPORT                        R17 K120 [Vector2.new]
      414 LOADK                            R18 K132 [-0.182]
      415 LOADK                            R19 K133 [0.118]
      416 CALL                             R17 2 1
      417 SETTABLE                         R17 R15 R16
      418 GETIMPORT                        R16 K85 [Enum.RigLabel.LeftKnee]
      420 GETIMPORT                        R17 K120 [Vector2.new]
      422 LOADK                            R18 K134 [-0.231]
      423 LOADK                            R19 K135 [-0.381]
      424 CALL                             R17 2 1
      425 SETTABLE                         R17 R15 R16
      426 GETIMPORT                        R16 K93 [Enum.RigLabel.LeftAnkle]
      428 GETIMPORT                        R17 K120 [Vector2.new]
      430 LOADK                            R18 K136 [-0.261]
      431 LOADK                            R19 K137 [-0.917]
      432 CALL                             R17 2 1
      433 SETTABLE                         R17 R15 R16
      434 GETIMPORT                        R16 K120 [Vector2.new]
      436 LOADK                            R17 K138 [-0.266]
      437 LOADN                            R18 255
      438 CALL                             R16 2 1
      439 SETTABLE                         R16 R15 R8
      440 MOVE                             R16 R12
      441 LOADNIL                          R17
      442 LOADNIL                          R18
      443 FORGPREP                         R16
      444 GETTABLE                         R21 R14 R20
      445 GETTABLE                         R22 R15 R20
      446 JUMPIFNOT                        R22 ; [+9]
      447 GETIMPORT                        R23 K120 [Vector2.new]
      449 GETTABLEKS                       R25 R22 K139 ["X"]
      451 MINUS                            R24 R25
      452 GETTABLEKS                       R25 R22 K140 ["Y"]
      454 CALL                             R23 2 1
      455 SETTABLE                         R23 R15 R21
      456 FORGLOOP                         R16 2 ; [-13]
      458 JUMPIFNOT                        R5 ; [+7]
      459 GETIMPORT                        R16 K120 [Vector2.new]
      461 LOADN                            R17 0
      462 LOADK                            R18 K141 [0.55]
      463 CALL                             R16 2 1
      464 SETTABLE                         R16 R15 R6
      465 JUMP                             ; [+9]
      466 JUMPIFNOT                        R7 ; [+8]
      467 GETIMPORT                        R16 K115 [Enum.RigLabel.Pelvis]
      469 GETIMPORT                        R17 K120 [Vector2.new]
      471 LOADN                            R18 0
      472 LOADK                            R19 K142 [0.28]
      473 CALL                             R17 2 1
      474 SETTABLE                         R17 R15 R16
      475 NEWTABLE                         R16 16 0
      477 GETIMPORT                        R17 K35 [Enum.RigLabel.Root]
      479 LOADNIL                          R18
      480 SETTABLE                         R18 R16 R17
      481 GETIMPORT                        R17 K51 [Enum.RigLabel.Neck]
      483 GETIMPORT                        R18 K46 [Enum.RigLabel.Chest]
      485 SETTABLE                         R18 R16 R17
      486 GETIMPORT                        R17 K54 [Enum.RigLabel.HeadBase]
      488 GETIMPORT                        R18 K51 [Enum.RigLabel.Neck]
      490 SETTABLE                         R18 R16 R17
      491 GETIMPORT                        R17 K57 [Enum.RigLabel.LeftClavicle]
      493 GETIMPORT                        R18 K46 [Enum.RigLabel.Chest]
      495 SETTABLE                         R18 R16 R17
      496 GETIMPORT                        R17 K62 [Enum.RigLabel.LeftShoulder]
      498 GETIMPORT                        R18 K57 [Enum.RigLabel.LeftClavicle]
      500 SETTABLE                         R18 R16 R17
      501 GETIMPORT                        R17 K67 [Enum.RigLabel.LeftElbow]
      503 GETIMPORT                        R18 K62 [Enum.RigLabel.LeftShoulder]
      505 SETTABLE                         R18 R16 R17
      506 GETIMPORT                        R17 K74 [Enum.RigLabel.LeftWrist]
      508 GETIMPORT                        R18 K67 [Enum.RigLabel.LeftElbow]
      510 SETTABLE                         R18 R16 R17
      511 GETIMPORT                        R17 K78 [Enum.RigLabel.LeftHip]
      513 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      515 SETTABLE                         R18 R16 R17
      516 GETIMPORT                        R17 K85 [Enum.RigLabel.LeftKnee]
      518 GETIMPORT                        R18 K78 [Enum.RigLabel.LeftHip]
      520 SETTABLE                         R18 R16 R17
      521 GETIMPORT                        R17 K93 [Enum.RigLabel.LeftAnkle]
      523 GETIMPORT                        R18 K85 [Enum.RigLabel.LeftKnee]
      525 SETTABLE                         R18 R16 R17
      526 GETIMPORT                        R17 K93 [Enum.RigLabel.LeftAnkle]
      528 SETTABLE                         R17 R16 R8
      529 MOVE                             R17 R12
      530 LOADNIL                          R18
      531 LOADNIL                          R19
      532 FORGPREP                         R17
      533 GETTABLE                         R22 R14 R21
      534 GETTABLE                         R23 R16 R21
      535 JUMPIFNOT                        R23 ; [+3]
      536 GETTABLE                         R25 R14 R23
      537 OR                               R24 R25 R23
      538 SETTABLE                         R24 R16 R22
      539 FORGLOOP                         R17 2 ; [-7]
      541 JUMPIFNOT                        R5 ; [+12]
      542 GETIMPORT                        R17 K43 [Enum.RigLabel.Waist]
      544 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      546 SETTABLE                         R18 R16 R17
      547 GETIMPORT                        R17 K43 [Enum.RigLabel.Waist]
      549 SETTABLE                         R17 R16 R6
      550 GETIMPORT                        R17 K46 [Enum.RigLabel.Chest]
      552 SETTABLE                         R6 R16 R17
      553 JUMP                             ; [+27]
      554 JUMPIFNOT                        R7 ; [+16]
      555 GETIMPORT                        R17 K115 [Enum.RigLabel.Pelvis]
      557 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      559 SETTABLE                         R18 R16 R17
      560 GETIMPORT                        R17 K43 [Enum.RigLabel.Waist]
      562 GETIMPORT                        R18 K115 [Enum.RigLabel.Pelvis]
      564 SETTABLE                         R18 R16 R17
      565 GETIMPORT                        R17 K46 [Enum.RigLabel.Chest]
      567 GETIMPORT                        R18 K43 [Enum.RigLabel.Waist]
      569 SETTABLE                         R18 R16 R17
      570 JUMP                             ; [+10]
      571 GETIMPORT                        R17 K43 [Enum.RigLabel.Waist]
      573 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      575 SETTABLE                         R18 R16 R17
      576 GETIMPORT                        R17 K46 [Enum.RigLabel.Chest]
      578 GETIMPORT                        R18 K43 [Enum.RigLabel.Waist]
      580 SETTABLE                         R18 R16 R17
      581 NEWTABLE                         R17 16 0
      583 GETIMPORT                        R18 K46 [Enum.RigLabel.Chest]
      585 GETIMPORT                        R19 K51 [Enum.RigLabel.Neck]
      587 SETTABLE                         R19 R17 R18
      588 GETIMPORT                        R18 K51 [Enum.RigLabel.Neck]
      590 GETIMPORT                        R19 K54 [Enum.RigLabel.HeadBase]
      592 SETTABLE                         R19 R17 R18
      593 GETIMPORT                        R18 K54 [Enum.RigLabel.HeadBase]
      595 LOADNIL                          R19
      596 SETTABLE                         R19 R17 R18
      597 GETIMPORT                        R18 K57 [Enum.RigLabel.LeftClavicle]
      599 GETIMPORT                        R19 K62 [Enum.RigLabel.LeftShoulder]
      601 SETTABLE                         R19 R17 R18
      602 GETIMPORT                        R18 K62 [Enum.RigLabel.LeftShoulder]
      604 GETIMPORT                        R19 K67 [Enum.RigLabel.LeftElbow]
      606 SETTABLE                         R19 R17 R18
      607 GETIMPORT                        R18 K67 [Enum.RigLabel.LeftElbow]
      609 GETIMPORT                        R19 K74 [Enum.RigLabel.LeftWrist]
      611 SETTABLE                         R19 R17 R18
      612 GETIMPORT                        R18 K74 [Enum.RigLabel.LeftWrist]
      614 LOADNIL                          R19
      615 SETTABLE                         R19 R17 R18
      616 GETIMPORT                        R18 K78 [Enum.RigLabel.LeftHip]
      618 GETIMPORT                        R19 K85 [Enum.RigLabel.LeftKnee]
      620 SETTABLE                         R19 R17 R18
      621 GETIMPORT                        R18 K85 [Enum.RigLabel.LeftKnee]
      623 GETIMPORT                        R19 K93 [Enum.RigLabel.LeftAnkle]
      625 SETTABLE                         R19 R17 R18
      626 GETIMPORT                        R18 K93 [Enum.RigLabel.LeftAnkle]
      628 SETTABLE                         R8 R17 R18
      629 LOADNIL                          R18
      630 SETTABLE                         R18 R17 R8
      631 MOVE                             R18 R12
      632 LOADNIL                          R19
      633 LOADNIL                          R20
      634 FORGPREP                         R18
      635 GETTABLE                         R23 R14 R22
      636 GETTABLE                         R24 R17 R22
      637 JUMPIFNOT                        R24 ; [+2]
      638 GETTABLE                         R25 R14 R24
      639 SETTABLE                         R25 R17 R23
      640 FORGLOOP                         R18 2 ; [-6]
      642 JUMPIFNOT                        R5 ; [+12]
      643 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      645 GETIMPORT                        R19 K43 [Enum.RigLabel.Waist]
      647 SETTABLE                         R19 R17 R18
      648 GETIMPORT                        R18 K43 [Enum.RigLabel.Waist]
      650 SETTABLE                         R6 R17 R18
      651 GETIMPORT                        R18 K46 [Enum.RigLabel.Chest]
      653 SETTABLE                         R18 R17 R6
      654 JUMP                             ; [+27]
      655 JUMPIFNOT                        R7 ; [+16]
      656 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      658 GETIMPORT                        R19 K115 [Enum.RigLabel.Pelvis]
      660 SETTABLE                         R19 R17 R18
      661 GETIMPORT                        R18 K115 [Enum.RigLabel.Pelvis]
      663 GETIMPORT                        R19 K43 [Enum.RigLabel.Waist]
      665 SETTABLE                         R19 R17 R18
      666 GETIMPORT                        R18 K43 [Enum.RigLabel.Waist]
      668 GETIMPORT                        R19 K46 [Enum.RigLabel.Chest]
      670 SETTABLE                         R19 R17 R18
      671 JUMP                             ; [+10]
      672 GETIMPORT                        R18 K35 [Enum.RigLabel.Root]
      674 GETIMPORT                        R19 K43 [Enum.RigLabel.Waist]
      676 SETTABLE                         R19 R17 R18
      677 GETIMPORT                        R18 K43 [Enum.RigLabel.Waist]
      679 GETIMPORT                        R19 K46 [Enum.RigLabel.Chest]
      681 SETTABLE                         R19 R17 R18
      682 GETTABLEKS                       R18 R2 K143 ["bodyRigLabels"]
      684 NEWTABLE                         R19 0 0
      686 MOVE                             R20 R12
      687 LOADNIL                          R21
      688 LOADNIL                          R22
      689 FORGPREP                         R20
      690 GETTABLE                         R25 R14 R24
      691 JUMPIFNOT                        R25 ; [+2]
      692 GETTABLE                         R26 R11 R24
      693 SETTABLE                         R26 R11 R25
      694 FORGLOOP                         R20 2 ; [-5]
      696 MOVE                             R20 R18
      697 LOADNIL                          R21
      698 LOADNIL                          R22
      699 FORGPREP                         R20
      700 GETTABLE                         R25 R11 R24
      701 JUMPIFNOT                        R25 ; [+10]
      702 MOVE                             R26 R25
      703 LOADNIL                          R27
      704 LOADNIL                          R28
      705 FORGPREP                         R26
      706 GETTABLE                         R33 R19 R30
      707 ORK                              R32 R33 K145 [0]
      708 ADDK                             R31 R32 K144 [1]
      709 SETTABLE                         R31 R19 R30
      710 FORGLOOP                         R26 2 ; [-5]
      712 FORGLOOP                         R20 2 ; [-13]
      714 MOVE                             R20 R19
      715 LOADNIL                          R21
      716 LOADNIL                          R22
      717 FORGPREP                         R20
      718 DIVRK                            R25 R144 K24 ["rootDepthPenalty"]
      719 SETTABLE                         R25 R19 R23
      720 FORGLOOP                         R20 2 ; [-3]
      722 DUPCLOSURE                       R20 K146 [PROTO_0]
      723 DUPCLOSURE                       R21 K147 [PROTO_1]
      724 CAPTURE                          VAL R11
      725 CAPTURE                          VAL R19
      726 CAPTURE                          VAL R10
      727 CAPTURE                          VAL R13
      728 CAPTURE                          VAL R20
      729 DUPCLOSURE                       R22 K148 [PROTO_2]
      730 CAPTURE                          VAL R11
      731 DUPCLOSURE                       R23 K149 [PROTO_3]
      732 CAPTURE                          VAL R15
      733 CAPTURE                          VAL R10
      734 NEWTABLE                         R24 8 0
      736 DUPCLOSURE                       R25 K150 [PROTO_5]
      737 CAPTURE                          VAL R18
      738 CAPTURE                          VAL R2
      739 CAPTURE                          VAL R4
      740 CAPTURE                          VAL R10
      741 CAPTURE                          VAL R21
      742 CAPTURE                          VAL R23
      743 CAPTURE                          VAL R16
      744 CAPTURE                          VAL R3
      745 CAPTURE                          VAL R8
      746 CAPTURE                          VAL R9
      747 CAPTURE                          VAL R22
      748 CAPTURE                          VAL R17
      749 SETTABLEKS                       R25 R24 K151 ["setup"]
      751 SETTABLEKS                       R20 R24 K152 ["guessJointSide"]
      753 SETTABLEKS                       R21 R24 K153 ["nameScore"]
      755 SETTABLEKS                       R23 R24 K154 ["positionScore"]
      757 SETTABLEKS                       R14 R24 K155 ["symmetryCounterparts"]
      759 SETTABLEKS                       R16 R24 K156 ["parentRigLabel"]
      761 SETTABLEKS                       R17 R24 K157 ["directChildRigLabel"]
      763 RETURN                           R24 1
