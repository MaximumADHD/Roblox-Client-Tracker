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
       23 JUMPIFNOT                        R10 ; [+45]
       24 LOADK                            R12 K6 ["([^%-]+)%-(.+)"]
       25 NAMECALL                         R10 R9 K7 ["match"]
       27 CALL                             R10 2 2
       28 JUMPIFNOT                        R10 ; [+65]
       29 JUMPIFNOT                        R11 ; [+64]
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
       47 JUMPIFNOT                        R14 ; [+46]
       48 GETUPVAL                         R17 1
       49 GETTABLE                         R16 R17 R9
       50 ORK                              R15 R16 K9 [0]
       51 LOADN                            R17 1
       52 LOADK                            R19 K10 [0.3]
       53 LENGTH                           R21 R9
       54 FASTCALL2K                       MATH_MAX R3 K11 ; [+5]
       56 MOVE                             R23 R3
       57 LOADK                            R24 K11 [1]
       58 GETIMPORT                        R22 K14 [math.max]
       60 CALL                             R22 2 1
       61 DIV                              R20 R21 R22
       62 MUL                              R18 R19 R20
       63 ADD                              R16 R17 R18
       64 MUL                              R14 R15 R16
       65 JUMPIFNOTLT                      R2 R14 ; [+28]
       67 MOVE                             R2 R14
       68 JUMP                             ; [+25]
       69 MOVE                             R12 R9
       70 NAMECALL                         R10 R0 K5 ["find"]
       72 CALL                             R10 2 1
       73 JUMPIFNOT                        R10 ; [+20]
       74 GETUPVAL                         R13 1
       75 GETTABLE                         R12 R13 R9
       76 ORK                              R11 R12 K9 [0]
       77 LOADN                            R13 1
       78 LOADK                            R15 K10 [0.3]
       79 LENGTH                           R17 R9
       80 FASTCALL2K                       MATH_MAX R3 K11 ; [+5]
       82 MOVE                             R19 R3
       83 LOADK                            R20 K11 [1]
       84 GETIMPORT                        R18 K14 [math.max]
       86 CALL                             R18 2 1
       87 DIV                              R16 R17 R18
       88 MUL                              R14 R15 R16
       89 ADD                              R12 R13 R14
       90 MUL                              R10 R11 R12
       91 JUMPIFNOTLT                      R2 R10 ; [+2]
       93 MOVE                             R2 R10
       94 FORGLOOP                         R5 2 ; [-76]
       96 GETUPVAL                         R6 2
       97 GETTABLE                         R5 R6 R1
       98 GETUPVAL                         R6 3
       99 MOVE                             R7 R0
      100 CALL                             R6 1 1
      101 JUMPIFNOTEQ                      R5 R6 ; [+3]
      103 ADDK                             R2 R2 K11 [1]
      104 RETURN                           R2 1
      105 SUBK                             R2 R2 K11 [1]
      106 RETURN                           R2 1

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
        3 SUB                              R5 R4 R0
        4 GETTABLEKS                       R5 R5 K0 ["Magnitude"]
        6 MINUS                            R9 R5
        7 MUL                              R8 R9 R5
        8 DIVK                             R7 R8 K1 [0.1]
        9 FASTCALL1                        MATH_EXP R7 ; [+2]
       10 GETIMPORT                        R6 K4 [math.exp]
       12 CALL                             R6 1 1
       13 MOVE                             R3 R6
       14 GETTABLEKS                       R7 R4 K5 ["X"]
       16 FASTCALL1                        MATH_SIGN R7 ; [+2]
       17 GETIMPORT                        R6 K7 [math.sign]
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R8 R0 K5 ["X"]
       22 FASTCALL1                        MATH_SIGN R8 ; [+2]
       23 GETIMPORT                        R7 K7 [math.sign]
       25 CALL                             R7 1 1
       26 JUMPIFEQ                         R6 R7 ; [+12]
       28 JUMPIFNOTEQKN                    R6 K8 [0] ; [+12]
       30 GETTABLEKS                       R9 R0 K5 ["X"]
       32 FASTCALL1                        MATH_ABS R9 ; [+2]
       33 GETIMPORT                        R8 K10 [math.abs]
       35 CALL                             R8 1 1
       36 LOADK                            R9 K11 [0.02]
       37 JUMPIFNOTLT                      R8 R9 ; [+3]
       39 ADDK                             R3 R3 K12 [1]
       40 RETURN                           R3 1
       41 SUBK                             R3 R3 K12 [1]
       42 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["score"]
        2 GETTABLEKS                       R4 R1 K0 ["score"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLE                         R3 R2 R0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 SETTABLE                         R3 R2 R1
        6 RETURN                           R0 0

PROTO_8:
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
       15 JUMPIFNOT                        R2 ; [+36]
       16 GETTABLEKS                       R3 R2 K3 ["RigType"]
       18 GETIMPORT                        R4 K7 [Enum.HumanoidRigType.R15]
       20 JUMPIFNOTEQ                      R3 R4 ; [+31]
       22 NAMECALL                         R3 R0 K8 ["GetR15JointLabels"]
       24 CALL                             R3 1 3
       25 FORGPREP                         R3
       26 NAMECALL                         R8 R1 K9 ["GetDescendants"]
       28 CALL                             R8 1 3
       29 FORGPREP                         R8
       30 GETTABLEKS                       R13 R12 K10 ["Name"]
       32 GETTABLEKS                       R14 R7 K10 ["Name"]
       34 JUMPIFNOTEQ                      R13 R14 ; [+13]
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R13 R13 K11 ["isValidTJoint"]
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
       52 MOVE                             R3 R1
       53 LOADB                            R4 0
       54 LOADK                            R7 K12 ["Bone"]
       55 LOADB                            R8 1
       56 NAMECALL                         R5 R1 K2 ["FindFirstChildWhichIsA"]
       58 CALL                             R5 3 1
       59 JUMPIFNOT                        R5 ; [+17]
       60 LOADK                            R8 K13 ["Motor6D"]
       61 LOADB                            R9 1
       62 NAMECALL                         R6 R1 K2 ["FindFirstChildWhichIsA"]
       64 CALL                             R6 3 1
       65 JUMPIFNOT                        R6 ; [+11]
       66 JUMPIFNOT                        R2 ; [+8]
       67 GETTABLEKS                       R6 R2 K3 ["RigType"]
       69 GETIMPORT                        R7 K7 [Enum.HumanoidRigType.R15]
       71 JUMPIFNOTEQ                      R6 R7 ; [+3]
       73 LOADB                            R4 1
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R3 R5 K14 ["Parent"]
       77 NEWTABLE                         R6 0 0
       79 NEWTABLE                         R7 0 0
       81 NAMECALL                         R8 R3 K9 ["GetDescendants"]
       83 CALL                             R8 1 3
       84 FORGPREP                         R8
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R13 R13 K11 ["isValidTJoint"]
       88 MOVE                             R14 R12
       89 CALL                             R13 1 1
       90 JUMPIFNOT                        R13 ; [+28]
       91 JUMPIFNOT                        R4 ; [+5]
       92 LOADK                            R16 K12 ["Bone"]
       93 NAMECALL                         R14 R12 K15 ["IsA"]
       95 CALL                             R14 2 1
       96 JUMPIF                           R14 ; [+22]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K16 ["getJointPosition"]
      100 MOVE                             R15 R12
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K22 [{["joint"], ["name"], ["parent"] = , ["position"]}]
      103 SETTABLEKS                       R12 R15 K17 ["joint"]
      105 GETTABLEKS                       R16 R12 K10 ["Name"]
      107 SETTABLEKS                       R16 R15 K18 ["name"]
      109 SETTABLEKS                       R14 R15 K21 ["position"]
      111 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
      113 MOVE                             R17 R6
      114 MOVE                             R18 R15
      115 GETIMPORT                        R16 K25 [table.insert]
      117 CALL                             R16 2 0
      118 SETTABLE                         R15 R7 R12
      119 FORGLOOP                         R8 2 ; [-35]
      121 MOVE                             R8 R6
      122 LOADNIL                          R9
      123 LOADNIL                          R10
      124 FORGPREP                         R8
      125 GETTABLEKS                       R13 R12 K17 ["joint"]
      127 GETTABLEKS                       R13 R13 K14 ["Parent"]
      129 GETTABLEKS                       R14 R12 K17 ["joint"]
      131 LOADK                            R16 K13 ["Motor6D"]
      132 NAMECALL                         R14 R14 K15 ["IsA"]
      134 CALL                             R14 2 1
      135 JUMPIFNOT                        R14 ; [+11]
      136 GETTABLEKS                       R14 R12 K17 ["joint"]
      138 GETTABLEKS                       R14 R14 K26 ["Part0"]
      140 MOVE                             R15 R14
      141 JUMPIFNOT                        R15 ; [+4]
      142 LOADK                            R17 K13 ["Motor6D"]
      143 NAMECALL                         R15 R14 K2 ["FindFirstChildWhichIsA"]
      145 CALL                             R15 2 1
      146 MOVE                             R13 R15
      147 GETUPVAL                         R15 1
      148 GETTABLEKS                       R15 R15 K11 ["isValidTJoint"]
      150 MOVE                             R16 R13
      151 CALL                             R15 1 1
      152 JUMPIFNOT                        R15 ; [+2]
      153 MOVE                             R14 R13
      154 JUMP                             ; [+1]
      155 LOADNIL                          R14
      156 JUMPIFNOT                        R14 ; [+3]
      157 GETTABLE                         R15 R7 R14
      158 SETTABLEKS                       R15 R12 K19 ["parent"]
      160 FORGLOOP                         R8 2 ; [-36]
      162 NEWTABLE                         R8 0 0
      164 MOVE                             R9 R6
      165 LOADNIL                          R10
      166 LOADNIL                          R11
      167 FORGPREP                         R9
      168 GETIMPORT                        R14 K29 [Vector2.new]
      170 GETTABLEKS                       R15 R13 K21 ["position"]
      172 GETTABLEKS                       R15 R15 K30 ["X"]
      174 GETTABLEKS                       R16 R13 K21 ["position"]
      176 GETTABLEKS                       R16 R16 K31 ["Y"]
      178 CALL                             R14 2 1
      179 SETTABLE                         R14 R8 R12
      180 FORGLOOP                         R9 2 ; [-13]
      182 GETUPVAL                         R9 1
      183 GETTABLEKS                       R9 R9 K32 ["normalizePoints"]
      185 MOVE                             R10 R8
      186 CALL                             R9 1 0
      187 NEWTABLE                         R9 0 0
      189 MOVE                             R10 R6
      190 LOADNIL                          R11
      191 LOADNIL                          R12
      192 FORGPREP                         R10
      193 GETTABLEKS                       R17 R14 K18 ["name"]
      195 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      197 MOVE                             R16 R9
      198 GETIMPORT                        R15 K25 [table.insert]
      200 CALL                             R15 2 0
      201 FORGLOOP                         R10 2 ; [-9]
      203 GETUPVAL                         R10 1
      204 GETTABLEKS                       R10 R10 K33 ["commonPrefix"]
      206 MOVE                             R11 R9
      207 CALL                             R10 1 1
      208 GETUPVAL                         R11 1
      209 GETTABLEKS                       R11 R11 K34 ["commonSuffix"]
      211 MOVE                             R12 R9
      212 CALL                             R11 1 1
      213 MOVE                             R12 R6
      214 LOADNIL                          R13
      215 LOADNIL                          R14
      216 FORGPREP                         R12
      217 GETUPVAL                         R17 1
      218 GETTABLEKS                       R17 R17 K35 ["trimStart"]
      220 GETTABLEKS                       R18 R16 K18 ["name"]
      222 MOVE                             R19 R10
      223 CALL                             R17 2 1
      224 SETTABLEKS                       R17 R16 K18 ["name"]
      226 GETUPVAL                         R17 1
      227 GETTABLEKS                       R17 R17 K36 ["trimEnd"]
      229 GETTABLEKS                       R18 R16 K18 ["name"]
      231 MOVE                             R19 R11
      232 CALL                             R17 2 1
      233 SETTABLEKS                       R17 R16 K18 ["name"]
      235 FORGLOOP                         R12 2 ; [-19]
      237 NEWTABLE                         R12 0 0
      239 MOVE                             R13 R6
      240 LOADNIL                          R14
      241 LOADNIL                          R15
      242 FORGPREP                         R13
      243 GETIMPORT                        R18 K38 [table.find]
      245 MOVE                             R19 R12
      246 GETTABLEKS                       R20 R17 K18 ["name"]
      248 CALL                             R18 2 1
      249 JUMPIFNOT                        R18 ; [+4]
      250 GETIMPORT                        R18 K40 [warn]
      252 LOADK                            R19 K41 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      253 CALL                             R18 1 0
      254 GETTABLEKS                       R20 R17 K18 ["name"]
      256 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      258 MOVE                             R19 R12
      259 GETIMPORT                        R18 K25 [table.insert]
      261 CALL                             R18 2 0
      262 FORGLOOP                         R13 2 ; [-20]
      264 NEWTABLE                         R13 0 0
      266 NEWTABLE                         R14 0 0
      268 NEWTABLE                         R15 0 0
      270 MOVE                             R16 R6
      271 LOADNIL                          R17
      272 LOADNIL                          R18
      273 FORGPREP                         R16
      274 SETTABLE                         R19 R13 R20
      275 FORGLOOP                         R16 2 ; [-2]
      277 MOVE                             R16 R6
      278 LOADNIL                          R17
      279 LOADNIL                          R18
      280 FORGPREP                         R16
      281 NEWTABLE                         R21 0 0
      283 GETTABLEKS                       R22 R20 K17 ["joint"]
      285 NAMECALL                         R22 R22 K42 ["GetChildren"]
      287 CALL                             R22 1 3
      288 FORGPREP                         R22
      289 GETUPVAL                         R27 1
      290 GETTABLEKS                       R27 R27 K11 ["isValidTJoint"]
      292 MOVE                             R28 R26
      293 CALL                             R27 1 1
      294 JUMPIFNOT                        R27 ; [+7]
      295 FASTCALL2                        TABLE_INSERT R21 R26 ; [+5]
      297 MOVE                             R28 R21
      298 MOVE                             R29 R26
      299 GETIMPORT                        R27 K25 [table.insert]
      301 CALL                             R27 2 0
      302 FORGLOOP                         R22 2 ; [-14]
      304 GETTABLEKS                       R22 R20 K17 ["joint"]
      306 SETTABLE                         R21 R14 R22
      307 FORGLOOP                         R16 2 ; [-27]
      309 MOVE                             R16 R6
      310 LOADNIL                          R17
      311 LOADNIL                          R18
      312 FORGPREP                         R16
      313 GETTABLEKS                       R21 R20 K17 ["joint"]
      315 GETTABLEKS                       R23 R20 K17 ["joint"]
      317 NAMECALL                         R23 R23 K9 ["GetDescendants"]
      319 CALL                             R23 1 1
      320 LENGTH                           R22 R23
      321 SETTABLE                         R22 R15 R21
      322 FORGLOOP                         R16 2 ; [-10]
      324 NEWTABLE                         R16 0 0
      326 MOVE                             R17 R6
      327 LOADNIL                          R18
      328 LOADNIL                          R19
      329 FORGPREP                         R17
      330 GETTABLEKS                       R22 R21 K17 ["joint"]
      332 NEWTABLE                         R23 0 0
      334 SETTABLE                         R23 R16 R22
      335 GETTABLE                         R23 R13 R21
      336 GETTABLE                         R22 R8 R23
      337 GETUPVAL                         R23 0
      338 LOADNIL                          R24
      339 LOADNIL                          R25
      340 FORGPREP                         R23
      341 GETTABLEKS                       R29 R21 K17 ["joint"]
      343 GETTABLE                         R28 R16 R29
      344 LOADN                            R31 3
      345 GETUPVAL                         R32 2
      346 GETTABLEKS                       R33 R21 K18 ["name"]
      348 MOVE                             R34 R27
      349 CALL                             R32 2 1
      350 MUL                              R30 R31 R32
      351 LOADK                            R32 K43 [0.5]
      352 LOADN                            R34 0
      353 GETUPVAL                         R36 3
      354 GETTABLE                         R35 R36 R27
      355 SUB                              R36 R35 R22
      356 GETTABLEKS                       R36 R36 K44 ["Magnitude"]
      358 MINUS                            R40 R36
      359 MUL                              R39 R40 R36
      360 GETUPVAL                         R40 4
      361 GETTABLEKS                       R40 R40 K45 ["distanceSmoothingKernel"]
      363 DIV                              R38 R39 R40
      364 FASTCALL1                        MATH_EXP R38 ; [+2]
      365 GETIMPORT                        R37 K48 [math.exp]
      367 CALL                             R37 1 1
      368 MOVE                             R34 R37
      369 GETTABLEKS                       R38 R35 K30 ["X"]
      371 FASTCALL1                        MATH_SIGN R38 ; [+2]
      372 GETIMPORT                        R37 K50 [math.sign]
      374 CALL                             R37 1 1
      375 GETTABLEKS                       R39 R22 K30 ["X"]
      377 FASTCALL1                        MATH_SIGN R39 ; [+2]
      378 GETIMPORT                        R38 K50 [math.sign]
      380 CALL                             R38 1 1
      381 JUMPIFEQ                         R37 R38 ; [+14]
      383 JUMPIFNOTEQKN                    R37 K51 [0] ; [+17]
      385 GETTABLEKS                       R40 R22 K30 ["X"]
      387 FASTCALL1                        MATH_ABS R40 ; [+2]
      388 GETIMPORT                        R39 K53 [math.abs]
      390 CALL                             R39 1 1
      391 GETUPVAL                         R40 4
      392 GETTABLEKS                       R40 R40 K54 ["leftRightPositionThreshold"]
      394 JUMPIFNOTLT                      R39 R40 ; [+6]
      396 GETUPVAL                         R39 4
      397 GETTABLEKS                       R39 R39 K55 ["sideLeftRightWeight"]
      399 ADD                              R34 R34 R39
      400 JUMP                             ; [+4]
      401 GETUPVAL                         R39 4
      402 GETTABLEKS                       R39 R39 K55 ["sideLeftRightWeight"]
      404 SUB                              R34 R34 R39
      405 MOVE                             R33 R34
      406 MUL                              R31 R32 R33
      407 ADD                              R29 R30 R31
      408 SETTABLE                         R29 R28 R27
      409 FORGLOOP                         R23 2 ; [-69]
      411 FORGLOOP                         R17 2 ; [-82]
      413 MOVE                             R17 R6
      414 LOADNIL                          R18
      415 LOADNIL                          R19
      416 FORGPREP                         R17
      417 GETUPVAL                         R22 0
      418 LOADNIL                          R23
      419 LOADNIL                          R24
      420 FORGPREP                         R22
      421 GETUPVAL                         R28 5
      422 GETTABLE                         R27 R28 R26
      423 JUMPIFEQKNIL                     R27 ; [+46]
      425 GETTABLEKS                       R28 R21 K19 ["parent"]
      427 JUMPIFNOT                        R28 ; [+42]
      428 LOADB                            R28 1
      429 GETIMPORT                        R29 K58 [Enum.RigLabel.LeftToeBase]
      431 JUMPIFEQ                         R26 R29 ; [+5]
      433 GETIMPORT                        R29 K60 [Enum.RigLabel.RightToeBase]
      435 JUMPIFNOTEQ                      R26 R29 ; [+9]
      437 GETUPVAL                         R29 6
      438 GETTABLEKS                       R30 R21 K19 ["parent"]
      440 GETTABLEKS                       R30 R30 K18 ["name"]
      442 MOVE                             R31 R27
      443 CALL                             R29 2 1
      444 MOVE                             R28 R29
      445 JUMPIFNOT                        R28 ; [+24]
      446 GETTABLEKS                       R30 R21 K19 ["parent"]
      448 GETTABLEKS                       R30 R30 K17 ["joint"]
      450 GETTABLE                         R29 R16 R30
      451 JUMPIFNOT                        R29 ; [+6]
      452 GETTABLEKS                       R31 R21 K19 ["parent"]
      454 GETTABLEKS                       R31 R31 K17 ["joint"]
      456 GETTABLE                         R30 R16 R31
      457 GETTABLE                         R29 R30 R27
      458 JUMPIFEQKNIL                     R29 ; [+11]
      460 GETTABLEKS                       R31 R21 K17 ["joint"]
      462 GETTABLE                         R30 R16 R31
      463 GETTABLE                         R31 R30 R26
      464 LOADN                            R33 1
      465 LOADK                            R35 K61 [0.3]
      466 MUL                              R34 R35 R29
      467 ADD                              R32 R33 R34
      468 MUL                              R31 R31 R32
      469 SETTABLE                         R31 R30 R26
      470 GETUPVAL                         R29 7
      471 GETTABLE                         R28 R29 R26
      472 GETTABLEKS                       R30 R21 K17 ["joint"]
      474 GETTABLE                         R29 R14 R30
      475 JUMPIFEQKNIL                     R28 ; [+36]
      477 JUMPIFNOT                        R29 ; [+34]
      478 LENGTH                           R30 R29
      479 LOADN                            R31 0
      480 JUMPIFNOTLT                      R31 R30 ; [+31]
      482 LOADK                            R30 K62 [-Infinity]
      483 MOVE                             R31 R29
      484 LOADNIL                          R32
      485 LOADNIL                          R33
      486 FORGPREP                         R31
      487 GETTABLE                         R37 R16 R35
      488 GETTABLE                         R36 R37 R28
      489 JUMPIFNOT                        R36 ; [+8]
      490 FASTCALL2                        MATH_MAX R30 R36 ; [+5]
      492 MOVE                             R38 R30
      493 MOVE                             R39 R36
      494 GETIMPORT                        R37 K64 [math.max]
      496 CALL                             R37 2 1
      497 MOVE                             R30 R37
      498 FORGLOOP                         R31 2 ; [-12]
      500 JUMPIFEQKN                       R30 K62 [-Infinity] ; [+11]
      502 GETTABLEKS                       R32 R21 K17 ["joint"]
      504 GETTABLE                         R31 R16 R32
      505 GETTABLE                         R32 R31 R26
      506 LOADN                            R34 1
      507 LOADK                            R36 K65 [0.1]
      508 MUL                              R35 R36 R30
      509 ADD                              R33 R34 R35
      510 MUL                              R32 R32 R33
      511 SETTABLE                         R32 R31 R26
      512 GETIMPORT                        R30 K67 [Enum.RigLabel.Root]
      514 JUMPIFNOTEQ                      R26 R30 ; [+17]
      516 GETUPVAL                         R31 1
      517 GETTABLEKS                       R31 R31 K69 ["getDepth"]
      519 GETTABLEKS                       R32 R21 K17 ["joint"]
      521 MOVE                             R33 R3
      522 CALL                             R31 2 1
      523 SUBK                             R30 R31 K68 [1]
      524 GETTABLEKS                       R32 R21 K17 ["joint"]
      526 GETTABLE                         R31 R16 R32
      527 GETTABLE                         R32 R31 R26
      528 MULK                             R33 R30 K43 [0.5]
      529 SUB                              R32 R32 R33
      530 SETTABLE                         R32 R31 R26
      531 JUMP                             ; [+25]
      532 GETIMPORT                        R30 K71 [Enum.RigLabel.LeftWrist]
      534 JUMPIFEQ                         R26 R30 ; [+5]
      536 GETIMPORT                        R30 K73 [Enum.RigLabel.RightWrist]
      538 JUMPIFNOTEQ                      R26 R30 ; [+18]
      540 GETTABLEKS                       R31 R21 K17 ["joint"]
      542 GETTABLE                         R30 R15 R31
      543 GETTABLEKS                       R32 R21 K17 ["joint"]
      545 GETTABLE                         R31 R16 R32
      546 GETTABLE                         R32 R31 R26
      547 FASTCALL2K                       MATH_MIN R30 K75 ; [+5]
      549 MOVE                             R35 R30
      550 LOADK                            R36 K75 [15]
      551 GETIMPORT                        R34 K77 [math.min]
      553 CALL                             R34 2 1
      554 MULK                             R33 R34 K74 [0.05]
      555 ADD                              R32 R32 R33
      556 SETTABLE                         R32 R31 R26
      557 FORGLOOP                         R22 2 ; [-137]
      559 FORGLOOP                         R17 2 ; [-143]
      561 MOVE                             R17 R6
      562 LOADNIL                          R18
      563 LOADNIL                          R19
      564 FORGPREP                         R17
      565 GETUPVAL                         R22 0
      566 LOADNIL                          R23
      567 LOADNIL                          R24
      568 FORGPREP                         R22
      569 GETTABLEKS                       R27 R21 K17 ["joint"]
      571 GETTABLEKS                       R27 R27 K10 ["Name"]
      573 GETTABLEKS                       R28 R26 K10 ["Name"]
      575 JUMPIFNOTEQ                      R27 R28 ; [+7]
      577 GETTABLEKS                       R28 R21 K17 ["joint"]
      579 GETTABLE                         R27 R16 R28
      580 GETTABLE                         R28 R27 R26
      581 ADDK                             R28 R28 K78 [100]
      582 SETTABLE                         R28 R27 R26
      583 FORGLOOP                         R22 2 ; [-15]
      585 FORGLOOP                         R17 2 ; [-21]
      587 NEWTABLE                         R17 0 0
      589 MOVE                             R18 R6
      590 LOADNIL                          R19
      591 LOADNIL                          R20
      592 FORGPREP                         R18
      593 GETUPVAL                         R23 0
      594 LOADNIL                          R24
      595 LOADNIL                          R25
      596 FORGPREP                         R23
      597 DUPTABLE                         R30 K81 [{"joint", "rigLabel", "score"}]
      598 GETTABLEKS                       R31 R22 K17 ["joint"]
      600 SETTABLEKS                       R31 R30 K17 ["joint"]
      602 SETTABLEKS                       R27 R30 K79 ["rigLabel"]
      604 GETTABLEKS                       R33 R22 K17 ["joint"]
      606 GETTABLE                         R32 R16 R33
      607 GETTABLE                         R31 R32 R27
      608 SETTABLEKS                       R31 R30 K80 ["score"]
      610 FASTCALL2                        TABLE_INSERT R17 R30 ; [+4]
      612 MOVE                             R29 R17
      613 GETIMPORT                        R28 K25 [table.insert]
      615 CALL                             R28 2 0
      616 FORGLOOP                         R23 2 ; [-20]
      618 FORGLOOP                         R18 2 ; [-26]
      620 GETIMPORT                        R18 K83 [table.sort]
      622 MOVE                             R19 R17
      623 DUPCLOSURE                       R20 K84 [PROTO_4]
      624 CALL                             R18 2 0
      625 NEWTABLE                         R18 0 0
      627 NEWTABLE                         R19 0 0
      629 NEWCLOSURE                       R20 P1
      630 CAPTURE                          VAL R18
      631 NEWCLOSURE                       R21 P2
      632 CAPTURE                          VAL R19
      633 NEWCLOSURE                       R22 P3
      634 CAPTURE                          VAL R18
      635 CAPTURE                          VAL R19
      636 GETUPVAL                         R23 0
      637 LOADNIL                          R24
      638 LOADNIL                          R25
      639 FORGPREP                         R23
      640 MOVE                             R30 R27
      641 NAMECALL                         R28 R0 K85 ["GetJoint"]
      643 CALL                             R28 2 1
      644 JUMPIFNOT                        R28 ; [+4]
      645 LOADB                            R29 1
      646 SETTABLE                         R29 R18 R28
      647 LOADB                            R29 1
      648 SETTABLE                         R29 R19 R27
      649 FORGLOOP                         R23 2 ; [-10]
      651 MOVE                             R23 R17
      652 LOADNIL                          R24
      653 LOADNIL                          R25
      654 FORGPREP                         R23
      655 GETTABLEKS                       R28 R27 K80 ["score"]
      657 LOADK                            R29 K43 [0.5]
      658 JUMPIFLT                         R28 R29 ; [+34]
      660 GETTABLEKS                       R29 R27 K17 ["joint"]
      662 GETTABLE                         R30 R18 R29
      663 JUMPIFEQKB                       R30 TRUE ; [+2]
      665 LOADB                            R28 0 +1
      666 LOADB                            R28 1
      667 JUMPIF                           R28 ; [+23]
      668 GETTABLEKS                       R29 R27 K79 ["rigLabel"]
      670 GETTABLE                         R30 R19 R29
      671 JUMPIFEQKB                       R30 TRUE ; [+2]
      673 LOADB                            R28 0 +1
      674 LOADB                            R28 1
      675 JUMPIF                           R28 ; [+15]
      676 GETTABLEKS                       R28 R27 K17 ["joint"]
      678 GETTABLEKS                       R29 R27 K79 ["rigLabel"]
      680 LOADB                            R30 1
      681 SETTABLE                         R30 R18 R28
      682 LOADB                            R30 1
      683 SETTABLE                         R30 R19 R29
      684 GETTABLEKS                       R30 R27 K79 ["rigLabel"]
      686 GETTABLEKS                       R31 R27 K17 ["joint"]
      688 NAMECALL                         R28 R0 K0 ["SetJoint"]
      690 CALL                             R28 3 0
      691 FORGLOOP                         R23 2 ; [-37]
      693 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Utils"]
       14 CALL                             R2 1 1
       15 DUPTABLE                         R3 K27 [{["tokenLengthWeight"] = 0.3, ["sideLeftRightWeight"] = 1, ["parentInfluenceWeight"] = 0.3, ["childInfluenceWeight"] = 0.1, ["leftRightPositionThreshold"] = 0.02, ["distanceSmoothingKernel"] = 0.1, ["minScoreThreshold"] = 0.5, ["nameWeight"] = 3, ["positionWeight"] = 0.5, ["rootDepthPenalty"] = 0.5, ["handBoostPerDescendant"] = 0.05, ["exactNameMatchBonus"] = 100}]
       16 NEWTABLE                         R4 32 0
       18 GETIMPORT                        R5 K31 [Enum.RigLabel.Root]
       20 NEWTABLE                         R6 0 6
       22 LOADK                            R7 K32 ["root"]
       23 LOADK                            R8 K33 ["torso"]
       24 LOADK                            R9 K34 ["lower-torso"]
       25 LOADK                            R10 K35 ["waist"]
       26 LOADK                            R11 K36 ["hips"]
       27 LOADK                            R12 K37 ["pelvis"]
       28 SETLIST                          R6 R7 6 [1]
       30 SETTABLE                         R6 R4 R5
       31 GETIMPORT                        R5 K39 [Enum.RigLabel.Waist]
       33 NEWTABLE                         R6 0 1
       35 LOADK                            R7 K40 ["chest"]
       36 SETLIST                          R6 R7 1 [1]
       38 SETTABLE                         R6 R4 R5
       39 GETIMPORT                        R5 K42 [Enum.RigLabel.Chest]
       41 NEWTABLE                         R6 0 5
       43 LOADK                            R7 K43 ["upper-torso"]
       44 LOADK                            R8 K33 ["torso"]
       45 LOADK                            R9 K44 ["spine"]
       46 LOADK                            R10 K45 ["upper-chest"]
       47 LOADK                            R11 K40 ["chest"]
       48 SETLIST                          R6 R7 5 [1]
       50 SETTABLE                         R6 R4 R5
       51 GETIMPORT                        R5 K47 [Enum.RigLabel.Neck]
       53 NEWTABLE                         R6 0 1
       55 LOADK                            R7 K48 ["neck"]
       56 SETLIST                          R6 R7 1 [1]
       58 SETTABLE                         R6 R4 R5
       59 GETIMPORT                        R5 K50 [Enum.RigLabel.HeadBase]
       61 NEWTABLE                         R6 0 1
       63 LOADK                            R7 K51 ["head"]
       64 SETLIST                          R6 R7 1 [1]
       66 SETTABLE                         R6 R4 R5
       67 GETIMPORT                        R5 K53 [Enum.RigLabel.LeftClavicle]
       69 NEWTABLE                         R6 0 3
       71 LOADK                            R7 K54 ["shoulder"]
       72 LOADK                            R8 K55 ["clavicle"]
       73 LOADK                            R9 K56 ["collar"]
       74 SETLIST                          R6 R7 3 [1]
       76 SETTABLE                         R6 R4 R5
       77 GETIMPORT                        R5 K58 [Enum.RigLabel.LeftShoulder]
       79 NEWTABLE                         R6 0 4
       81 LOADK                            R7 K54 ["shoulder"]
       82 LOADK                            R8 K59 ["arm"]
       83 LOADK                            R9 K60 ["upper-arm"]
       84 LOADK                            R10 K61 ["up-arm"]
       85 SETLIST                          R6 R7 4 [1]
       87 SETTABLE                         R6 R4 R5
       88 GETIMPORT                        R5 K63 [Enum.RigLabel.LeftElbow]
       90 NEWTABLE                         R6 0 6
       92 LOADK                            R7 K64 ["lower-arm"]
       93 LOADK                            R8 K65 ["elbow"]
       94 LOADK                            R9 K66 ["fore-arm"]
       95 LOADK                            R10 K67 ["down-arm"]
       96 LOADK                            R11 K59 ["arm"]
       97 LOADK                            R12 K68 ["lo-arm"]
       98 SETLIST                          R6 R7 6 [1]
      100 SETTABLE                         R6 R4 R5
      101 GETIMPORT                        R5 K70 [Enum.RigLabel.LeftWrist]
      103 NEWTABLE                         R6 0 2
      105 LOADK                            R7 K71 ["hand"]
      106 LOADK                            R8 K72 ["wrist"]
      107 SETLIST                          R6 R7 2 [1]
      109 SETTABLE                         R6 R4 R5
      110 GETIMPORT                        R5 K74 [Enum.RigLabel.LeftHip]
      112 NEWTABLE                         R6 0 5
      114 LOADK                            R7 K75 ["leg"]
      115 LOADK                            R8 K76 ["hip"]
      116 LOADK                            R9 K77 ["upper-leg"]
      117 LOADK                            R10 K78 ["up-leg"]
      118 LOADK                            R11 K79 ["thigh"]
      119 SETLIST                          R6 R7 5 [1]
      121 SETTABLE                         R6 R4 R5
      122 GETIMPORT                        R5 K81 [Enum.RigLabel.LeftKnee]
      124 NEWTABLE                         R6 0 7
      126 LOADK                            R7 K75 ["leg"]
      127 LOADK                            R8 K82 ["lower-leg"]
      128 LOADK                            R9 K83 ["knee"]
      129 LOADK                            R10 K84 ["calf"]
      130 LOADK                            R11 K85 ["down-leg"]
      131 LOADK                            R12 K86 ["lo-leg"]
      132 LOADK                            R13 K87 ["shin"]
      133 SETLIST                          R6 R7 7 [1]
      135 SETTABLE                         R6 R4 R5
      136 GETIMPORT                        R5 K89 [Enum.RigLabel.LeftAnkle]
      138 NEWTABLE                         R6 0 2
      140 LOADK                            R7 K90 ["foot"]
      141 LOADK                            R8 K91 ["ankle"]
      142 SETLIST                          R6 R7 2 [1]
      144 SETTABLE                         R6 R4 R5
      145 GETIMPORT                        R5 K93 [Enum.RigLabel.LeftToeBase]
      147 NEWTABLE                         R6 0 5
      149 LOADK                            R7 K94 ["toe-base"]
      150 LOADK                            R8 K95 ["toe"]
      151 LOADK                            R9 K96 ["toes"]
      152 LOADK                            R10 K90 ["foot"]
      153 LOADK                            R11 K97 ["ball"]
      154 SETLIST                          R6 R7 5 [1]
      156 SETTABLE                         R6 R4 R5
      157 GETIMPORT                        R5 K99 [Enum.RigLabel.RightClavicle]
      159 LOADNIL                          R6
      160 SETTABLE                         R6 R4 R5
      161 GETIMPORT                        R5 K101 [Enum.RigLabel.RightShoulder]
      163 LOADNIL                          R6
      164 SETTABLE                         R6 R4 R5
      165 GETIMPORT                        R5 K103 [Enum.RigLabel.RightElbow]
      167 LOADNIL                          R6
      168 SETTABLE                         R6 R4 R5
      169 GETIMPORT                        R5 K105 [Enum.RigLabel.RightWrist]
      171 LOADNIL                          R6
      172 SETTABLE                         R6 R4 R5
      173 GETIMPORT                        R5 K107 [Enum.RigLabel.RightHip]
      175 LOADNIL                          R6
      176 SETTABLE                         R6 R4 R5
      177 GETIMPORT                        R5 K109 [Enum.RigLabel.RightKnee]
      179 LOADNIL                          R6
      180 SETTABLE                         R6 R4 R5
      181 GETIMPORT                        R5 K111 [Enum.RigLabel.RightAnkle]
      183 LOADNIL                          R6
      184 SETTABLE                         R6 R4 R5
      185 GETIMPORT                        R5 K113 [Enum.RigLabel.RightToeBase]
      187 LOADNIL                          R6
      188 SETTABLE                         R6 R4 R5
      189 GETIMPORT                        R5 K115 [Enum.RigLabel.Spine]
      191 NEWTABLE                         R6 0 1
      193 LOADK                            R7 K44 ["spine"]
      194 SETLIST                          R6 R7 1 [1]
      196 SETTABLE                         R6 R4 R5
      197 NEWTABLE                         R5 0 8
      199 GETIMPORT                        R6 K53 [Enum.RigLabel.LeftClavicle]
      201 GETIMPORT                        R7 K58 [Enum.RigLabel.LeftShoulder]
      203 GETIMPORT                        R8 K63 [Enum.RigLabel.LeftElbow]
      205 GETIMPORT                        R9 K70 [Enum.RigLabel.LeftWrist]
      207 GETIMPORT                        R10 K74 [Enum.RigLabel.LeftHip]
      209 GETIMPORT                        R11 K81 [Enum.RigLabel.LeftKnee]
      211 GETIMPORT                        R12 K89 [Enum.RigLabel.LeftAnkle]
      213 GETIMPORT                        R13 K93 [Enum.RigLabel.LeftToeBase]
      215 SETLIST                          R5 R6 8 [1]
      217 NEWTABLE                         R6 0 0
      219 NEWTABLE                         R7 8 0
      221 GETIMPORT                        R8 K53 [Enum.RigLabel.LeftClavicle]
      223 GETIMPORT                        R9 K99 [Enum.RigLabel.RightClavicle]
      225 SETTABLE                         R9 R7 R8
      226 GETIMPORT                        R8 K58 [Enum.RigLabel.LeftShoulder]
      228 GETIMPORT                        R9 K101 [Enum.RigLabel.RightShoulder]
      230 SETTABLE                         R9 R7 R8
      231 GETIMPORT                        R8 K63 [Enum.RigLabel.LeftElbow]
      233 GETIMPORT                        R9 K103 [Enum.RigLabel.RightElbow]
      235 SETTABLE                         R9 R7 R8
      236 GETIMPORT                        R8 K70 [Enum.RigLabel.LeftWrist]
      238 GETIMPORT                        R9 K105 [Enum.RigLabel.RightWrist]
      240 SETTABLE                         R9 R7 R8
      241 GETIMPORT                        R8 K74 [Enum.RigLabel.LeftHip]
      243 GETIMPORT                        R9 K107 [Enum.RigLabel.RightHip]
      245 SETTABLE                         R9 R7 R8
      246 GETIMPORT                        R8 K81 [Enum.RigLabel.LeftKnee]
      248 GETIMPORT                        R9 K109 [Enum.RigLabel.RightKnee]
      250 SETTABLE                         R9 R7 R8
      251 GETIMPORT                        R8 K89 [Enum.RigLabel.LeftAnkle]
      253 GETIMPORT                        R9 K111 [Enum.RigLabel.RightAnkle]
      255 SETTABLE                         R9 R7 R8
      256 GETIMPORT                        R8 K93 [Enum.RigLabel.LeftToeBase]
      258 GETIMPORT                        R9 K113 [Enum.RigLabel.RightToeBase]
      260 SETTABLE                         R9 R7 R8
      261 MOVE                             R8 R7
      262 LOADNIL                          R9
      263 LOADNIL                          R10
      264 FORGPREP                         R8
      265 SETTABLE                         R11 R7 R12
      266 FORGLOOP                         R8 2 ; [-2]
      268 MOVE                             R8 R5
      269 LOADNIL                          R9
      270 LOADNIL                          R10
      271 FORGPREP                         R8
      272 LOADK                            R13 K116 ["left"]
      273 SETTABLE                         R13 R6 R12
      274 GETTABLE                         R13 R7 R12
      275 LOADK                            R14 K117 ["right"]
      276 SETTABLE                         R14 R6 R13
      277 FORGLOOP                         R8 2 ; [-6]
      279 NEWTABLE                         R8 16 0
      281 GETIMPORT                        R9 K31 [Enum.RigLabel.Root]
      283 GETIMPORT                        R10 K120 [Vector2.new]
      285 LOADN                            R11 0
      286 LOADK                            R12 K121 [0.199]
      287 CALL                             R10 2 1
      288 SETTABLE                         R10 R8 R9
      289 GETIMPORT                        R9 K39 [Enum.RigLabel.Waist]
      291 GETIMPORT                        R10 K120 [Vector2.new]
      293 LOADN                            R11 0
      294 LOADK                            R12 K122 [0.431]
      295 CALL                             R10 2 1
      296 SETTABLE                         R10 R8 R9
      297 GETIMPORT                        R9 K42 [Enum.RigLabel.Chest]
      299 GETIMPORT                        R10 K120 [Vector2.new]
      301 LOADN                            R11 0
      302 LOADK                            R12 K123 [0.669]
      303 CALL                             R10 2 1
      304 SETTABLE                         R10 R8 R9
      305 GETIMPORT                        R9 K47 [Enum.RigLabel.Neck]
      307 GETIMPORT                        R10 K120 [Vector2.new]
      309 LOADN                            R11 0
      310 LOADK                            R12 K124 [0.896]
      311 CALL                             R10 2 1
      312 SETTABLE                         R10 R8 R9
      313 GETIMPORT                        R9 K50 [Enum.RigLabel.HeadBase]
      315 GETIMPORT                        R10 K120 [Vector2.new]
      317 LOADN                            R11 0
      318 LOADN                            R12 1
      319 CALL                             R10 2 1
      320 SETTABLE                         R10 R8 R9
      321 GETIMPORT                        R9 K53 [Enum.RigLabel.LeftClavicle]
      323 GETIMPORT                        R10 K120 [Vector2.new]
      325 LOADK                            R11 K125 [-0.075]
      326 LOADK                            R12 K126 [0.783]
      327 CALL                             R10 2 1
      328 SETTABLE                         R10 R8 R9
      329 GETIMPORT                        R9 K58 [Enum.RigLabel.LeftShoulder]
      331 GETIMPORT                        R10 K120 [Vector2.new]
      333 LOADK                            R11 K127 [-0.365]
      334 LOADK                            R12 K128 [0.78]
      335 CALL                             R10 2 1
      336 SETTABLE                         R10 R8 R9
      337 GETIMPORT                        R9 K63 [Enum.RigLabel.LeftElbow]
      339 GETIMPORT                        R10 K120 [Vector2.new]
      341 LOADK                            R11 K129 [-0.722]
      342 LOADK                            R12 K130 [0.566]
      343 CALL                             R10 2 1
      344 SETTABLE                         R10 R8 R9
      345 GETIMPORT                        R9 K70 [Enum.RigLabel.LeftWrist]
      347 GETIMPORT                        R10 K120 [Vector2.new]
      349 LOADN                            R11 -1
      350 LOADK                            R12 K131 [0.385]
      351 CALL                             R10 2 1
      352 SETTABLE                         R10 R8 R9
      353 GETIMPORT                        R9 K74 [Enum.RigLabel.LeftHip]
      355 GETIMPORT                        R10 K120 [Vector2.new]
      357 LOADK                            R11 K132 [-0.182]
      358 LOADK                            R12 K133 [0.118]
      359 CALL                             R10 2 1
      360 SETTABLE                         R10 R8 R9
      361 GETIMPORT                        R9 K81 [Enum.RigLabel.LeftKnee]
      363 GETIMPORT                        R10 K120 [Vector2.new]
      365 LOADK                            R11 K134 [-0.231]
      366 LOADK                            R12 K135 [-0.381]
      367 CALL                             R10 2 1
      368 SETTABLE                         R10 R8 R9
      369 GETIMPORT                        R9 K89 [Enum.RigLabel.LeftAnkle]
      371 GETIMPORT                        R10 K120 [Vector2.new]
      373 LOADK                            R11 K136 [-0.261]
      374 LOADK                            R12 K137 [-0.917]
      375 CALL                             R10 2 1
      376 SETTABLE                         R10 R8 R9
      377 GETIMPORT                        R9 K93 [Enum.RigLabel.LeftToeBase]
      379 GETIMPORT                        R10 K120 [Vector2.new]
      381 LOADK                            R11 K138 [-0.266]
      382 LOADN                            R12 -1
      383 CALL                             R10 2 1
      384 SETTABLE                         R10 R8 R9
      385 MOVE                             R9 R5
      386 LOADNIL                          R10
      387 LOADNIL                          R11
      388 FORGPREP                         R9
      389 GETTABLE                         R14 R7 R13
      390 GETTABLE                         R15 R8 R13
      391 JUMPIFNOT                        R15 ; [+9]
      392 GETIMPORT                        R16 K120 [Vector2.new]
      394 GETTABLEKS                       R18 R15 K139 ["X"]
      396 MINUS                            R17 R18
      397 GETTABLEKS                       R18 R15 K140 ["Y"]
      399 CALL                             R16 2 1
      400 SETTABLE                         R16 R8 R14
      401 FORGLOOP                         R9 2 ; [-13]
      403 GETIMPORT                        R9 K115 [Enum.RigLabel.Spine]
      405 GETIMPORT                        R10 K120 [Vector2.new]
      407 LOADN                            R11 0
      408 LOADK                            R12 K141 [0.55]
      409 CALL                             R10 2 1
      410 SETTABLE                         R10 R8 R9
      411 NEWTABLE                         R9 16 0
      413 GETIMPORT                        R10 K31 [Enum.RigLabel.Root]
      415 LOADNIL                          R11
      416 SETTABLE                         R11 R9 R10
      417 GETIMPORT                        R10 K39 [Enum.RigLabel.Waist]
      419 GETIMPORT                        R11 K31 [Enum.RigLabel.Root]
      421 SETTABLE                         R11 R9 R10
      422 GETIMPORT                        R10 K115 [Enum.RigLabel.Spine]
      424 GETIMPORT                        R11 K39 [Enum.RigLabel.Waist]
      426 SETTABLE                         R11 R9 R10
      427 GETIMPORT                        R10 K42 [Enum.RigLabel.Chest]
      429 GETIMPORT                        R11 K115 [Enum.RigLabel.Spine]
      431 SETTABLE                         R11 R9 R10
      432 GETIMPORT                        R10 K47 [Enum.RigLabel.Neck]
      434 GETIMPORT                        R11 K42 [Enum.RigLabel.Chest]
      436 SETTABLE                         R11 R9 R10
      437 GETIMPORT                        R10 K50 [Enum.RigLabel.HeadBase]
      439 GETIMPORT                        R11 K47 [Enum.RigLabel.Neck]
      441 SETTABLE                         R11 R9 R10
      442 GETIMPORT                        R10 K53 [Enum.RigLabel.LeftClavicle]
      444 GETIMPORT                        R11 K42 [Enum.RigLabel.Chest]
      446 SETTABLE                         R11 R9 R10
      447 GETIMPORT                        R10 K58 [Enum.RigLabel.LeftShoulder]
      449 GETIMPORT                        R11 K53 [Enum.RigLabel.LeftClavicle]
      451 SETTABLE                         R11 R9 R10
      452 GETIMPORT                        R10 K63 [Enum.RigLabel.LeftElbow]
      454 GETIMPORT                        R11 K58 [Enum.RigLabel.LeftShoulder]
      456 SETTABLE                         R11 R9 R10
      457 GETIMPORT                        R10 K70 [Enum.RigLabel.LeftWrist]
      459 GETIMPORT                        R11 K63 [Enum.RigLabel.LeftElbow]
      461 SETTABLE                         R11 R9 R10
      462 GETIMPORT                        R10 K74 [Enum.RigLabel.LeftHip]
      464 GETIMPORT                        R11 K31 [Enum.RigLabel.Root]
      466 SETTABLE                         R11 R9 R10
      467 GETIMPORT                        R10 K81 [Enum.RigLabel.LeftKnee]
      469 GETIMPORT                        R11 K74 [Enum.RigLabel.LeftHip]
      471 SETTABLE                         R11 R9 R10
      472 GETIMPORT                        R10 K89 [Enum.RigLabel.LeftAnkle]
      474 GETIMPORT                        R11 K81 [Enum.RigLabel.LeftKnee]
      476 SETTABLE                         R11 R9 R10
      477 GETIMPORT                        R10 K93 [Enum.RigLabel.LeftToeBase]
      479 GETIMPORT                        R11 K89 [Enum.RigLabel.LeftAnkle]
      481 SETTABLE                         R11 R9 R10
      482 MOVE                             R10 R5
      483 LOADNIL                          R11
      484 LOADNIL                          R12
      485 FORGPREP                         R10
      486 GETTABLE                         R15 R7 R14
      487 GETTABLE                         R16 R9 R14
      488 JUMPIFNOT                        R16 ; [+3]
      489 GETTABLE                         R18 R7 R16
      490 OR                               R17 R18 R16
      491 SETTABLE                         R17 R9 R15
      492 FORGLOOP                         R10 2 ; [-7]
      494 NEWTABLE                         R10 16 0
      496 GETIMPORT                        R11 K31 [Enum.RigLabel.Root]
      498 GETIMPORT                        R12 K39 [Enum.RigLabel.Waist]
      500 SETTABLE                         R12 R10 R11
      501 GETIMPORT                        R11 K39 [Enum.RigLabel.Waist]
      503 GETIMPORT                        R12 K115 [Enum.RigLabel.Spine]
      505 SETTABLE                         R12 R10 R11
      506 GETIMPORT                        R11 K115 [Enum.RigLabel.Spine]
      508 GETIMPORT                        R12 K42 [Enum.RigLabel.Chest]
      510 SETTABLE                         R12 R10 R11
      511 GETIMPORT                        R11 K42 [Enum.RigLabel.Chest]
      513 GETIMPORT                        R12 K47 [Enum.RigLabel.Neck]
      515 SETTABLE                         R12 R10 R11
      516 GETIMPORT                        R11 K47 [Enum.RigLabel.Neck]
      518 GETIMPORT                        R12 K50 [Enum.RigLabel.HeadBase]
      520 SETTABLE                         R12 R10 R11
      521 GETIMPORT                        R11 K50 [Enum.RigLabel.HeadBase]
      523 LOADNIL                          R12
      524 SETTABLE                         R12 R10 R11
      525 GETIMPORT                        R11 K53 [Enum.RigLabel.LeftClavicle]
      527 GETIMPORT                        R12 K58 [Enum.RigLabel.LeftShoulder]
      529 SETTABLE                         R12 R10 R11
      530 GETIMPORT                        R11 K58 [Enum.RigLabel.LeftShoulder]
      532 GETIMPORT                        R12 K63 [Enum.RigLabel.LeftElbow]
      534 SETTABLE                         R12 R10 R11
      535 GETIMPORT                        R11 K63 [Enum.RigLabel.LeftElbow]
      537 GETIMPORT                        R12 K70 [Enum.RigLabel.LeftWrist]
      539 SETTABLE                         R12 R10 R11
      540 GETIMPORT                        R11 K70 [Enum.RigLabel.LeftWrist]
      542 LOADNIL                          R12
      543 SETTABLE                         R12 R10 R11
      544 GETIMPORT                        R11 K74 [Enum.RigLabel.LeftHip]
      546 GETIMPORT                        R12 K81 [Enum.RigLabel.LeftKnee]
      548 SETTABLE                         R12 R10 R11
      549 GETIMPORT                        R11 K81 [Enum.RigLabel.LeftKnee]
      551 GETIMPORT                        R12 K89 [Enum.RigLabel.LeftAnkle]
      553 SETTABLE                         R12 R10 R11
      554 GETIMPORT                        R11 K89 [Enum.RigLabel.LeftAnkle]
      556 GETIMPORT                        R12 K93 [Enum.RigLabel.LeftToeBase]
      558 SETTABLE                         R12 R10 R11
      559 GETIMPORT                        R11 K93 [Enum.RigLabel.LeftToeBase]
      561 LOADNIL                          R12
      562 SETTABLE                         R12 R10 R11
      563 MOVE                             R11 R5
      564 LOADNIL                          R12
      565 LOADNIL                          R13
      566 FORGPREP                         R11
      567 GETTABLE                         R16 R7 R15
      568 GETTABLE                         R17 R10 R15
      569 JUMPIFNOT                        R17 ; [+2]
      570 GETTABLE                         R18 R7 R17
      571 SETTABLE                         R18 R10 R16
      572 FORGLOOP                         R11 2 ; [-6]
      574 GETTABLEKS                       R11 R2 K142 ["bodyRigLabels"]
      576 NEWTABLE                         R12 0 0
      578 MOVE                             R13 R5
      579 LOADNIL                          R14
      580 LOADNIL                          R15
      581 FORGPREP                         R13
      582 GETTABLE                         R18 R7 R17
      583 JUMPIFNOT                        R18 ; [+2]
      584 GETTABLE                         R19 R4 R17
      585 SETTABLE                         R19 R4 R18
      586 FORGLOOP                         R13 2 ; [-5]
      588 MOVE                             R13 R11
      589 LOADNIL                          R14
      590 LOADNIL                          R15
      591 FORGPREP                         R13
      592 GETTABLE                         R18 R4 R17
      593 JUMPIFNOT                        R18 ; [+10]
      594 MOVE                             R19 R18
      595 LOADNIL                          R20
      596 LOADNIL                          R21
      597 FORGPREP                         R19
      598 GETTABLE                         R26 R12 R23
      599 ORK                              R25 R26 K143 [0]
      600 ADDK                             R24 R25 K10 [1]
      601 SETTABLE                         R24 R12 R23
      602 FORGLOOP                         R19 2 ; [-5]
      604 FORGLOOP                         R13 2 ; [-13]
      606 MOVE                             R13 R12
      607 LOADNIL                          R14
      608 LOADNIL                          R15
      609 FORGPREP                         R13
      610 DIVRK                            R18 K10 [1] R17
      611 SETTABLE                         R18 R12 R16
      612 FORGLOOP                         R13 2 ; [-3]
      614 DUPCLOSURE                       R13 K144 [PROTO_0]
      615 DUPCLOSURE                       R14 K145 [PROTO_1]
      616 CAPTURE                          VAL R4
      617 CAPTURE                          VAL R12
      618 CAPTURE                          VAL R6
      619 CAPTURE                          VAL R13
      620 DUPCLOSURE                       R15 K146 [PROTO_2]
      621 CAPTURE                          VAL R4
      622 DUPCLOSURE                       R16 K147 [PROTO_3]
      623 CAPTURE                          VAL R8
      624 NEWTABLE                         R17 8 0
      626 DUPCLOSURE                       R18 K148 [PROTO_8]
      627 CAPTURE                          VAL R11
      628 CAPTURE                          VAL R2
      629 CAPTURE                          VAL R14
      630 CAPTURE                          VAL R8
      631 CAPTURE                          VAL R3
      632 CAPTURE                          VAL R9
      633 CAPTURE                          VAL R15
      634 CAPTURE                          VAL R10
      635 SETTABLEKS                       R18 R17 K149 ["setup"]
      637 SETTABLEKS                       R13 R17 K150 ["guessJointSide"]
      639 SETTABLEKS                       R14 R17 K151 ["nameScore"]
      641 SETTABLEKS                       R16 R17 K152 ["positionScore"]
      643 SETTABLEKS                       R7 R17 K153 ["symmetryCounterparts"]
      645 SETTABLEKS                       R9 R17 K154 ["parentRigLabel"]
      647 SETTABLEKS                       R10 R17 K155 ["directChildRigLabel"]
      649 RETURN                           R17 1
