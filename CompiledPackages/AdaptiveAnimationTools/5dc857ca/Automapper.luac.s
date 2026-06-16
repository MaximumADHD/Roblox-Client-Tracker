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
       52 GETUPVAL                         R19 2
       53 GETTABLEKS                       R19 R19 K10 ["tokenLengthWeight"]
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
       80 GETUPVAL                         R15 2
       81 GETTABLEKS                       R15 R15 K10 ["tokenLengthWeight"]
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
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R7 R7 K15 ["sideLeftRightWeight"]
      110 ADD                              R2 R2 R7
      111 RETURN                           R2 1
      112 GETUPVAL                         R7 2
      113 GETTABLEKS                       R7 R7 K15 ["sideLeftRightWeight"]
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
        3 SUB                              R5 R4 R0
        4 GETTABLEKS                       R5 R5 K0 ["Magnitude"]
        6 MINUS                            R9 R5
        7 MUL                              R8 R9 R5
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R9 R9 K1 ["distanceSmoothingKernel"]
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
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K11 ["leftRightPositionThreshold"]
       42 JUMPIFNOTLT                      R8 R9 ; [+6]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K12 ["sideLeftRightWeight"]
       47 ADD                              R3 R3 R8
       48 RETURN                           R3 1
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K12 ["sideLeftRightWeight"]
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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 GETIMPORT                        R2 K2 [table.find]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 GETIMPORT                        R2 K2 [table.find]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 SETTABLE                         R3 R2 R0
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 1
        8 SETTABLE                         R3 R2 R1
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 3
       11 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R2 K2 [table.insert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R3 4
       18 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R2 K2 [table.insert]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

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
       52 GETUPVAL                         R3 2
       53 CALL                             R3 0 1
       54 JUMPIF                           R3 ; [+1]
       55 RETURN                           R0 0
       56 MOVE                             R3 R1
       57 LOADB                            R4 0
       58 LOADK                            R7 K12 ["Bone"]
       59 LOADB                            R8 1
       60 NAMECALL                         R5 R1 K2 ["FindFirstChildWhichIsA"]
       62 CALL                             R5 3 1
       63 JUMPIFNOT                        R5 ; [+23]
       64 LOADK                            R8 K13 ["Motor6D"]
       65 LOADB                            R9 1
       66 NAMECALL                         R6 R1 K2 ["FindFirstChildWhichIsA"]
       68 CALL                             R6 3 1
       69 JUMPIFNOT                        R6 ; [+17]
       70 GETUPVAL                         R6 3
       71 CALL                             R6 0 1
       72 JUMPIFNOT                        R6 ; [+12]
       73 JUMPIFNOT                        R2 ; [+8]
       74 GETTABLEKS                       R6 R2 K3 ["RigType"]
       76 GETIMPORT                        R7 K7 [Enum.HumanoidRigType.R15]
       78 JUMPIFNOTEQ                      R6 R7 ; [+3]
       80 LOADB                            R4 1
       81 JUMP                             ; [+5]
       82 GETTABLEKS                       R3 R5 K14 ["Parent"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R3 R5 K14 ["Parent"]
       87 NEWTABLE                         R6 0 0
       89 NEWTABLE                         R7 0 0
       91 NAMECALL                         R8 R3 K9 ["GetDescendants"]
       93 CALL                             R8 1 3
       94 FORGPREP                         R8
       95 GETUPVAL                         R14 2
       96 CALL                             R14 0 1
       97 JUMPIFNOT                        R14 ; [+6]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R13 R13 K11 ["isValidTJoint"]
      101 MOVE                             R14 R12
      102 CALL                             R13 1 1
      103 JUMP                             ; [+9]
      104 LOADK                            R15 K13 ["Motor6D"]
      105 NAMECALL                         R13 R12 K15 ["IsA"]
      107 CALL                             R13 2 1
      108 JUMPIF                           R13 ; [+4]
      109 LOADK                            R15 K12 ["Bone"]
      110 NAMECALL                         R13 R12 K15 ["IsA"]
      112 CALL                             R13 2 1
      113 JUMPIFNOT                        R13 ; [+34]
      114 JUMPIFNOT                        R4 ; [+5]
      115 LOADK                            R16 K12 ["Bone"]
      116 NAMECALL                         R14 R12 K15 ["IsA"]
      118 CALL                             R14 2 1
      119 JUMPIF                           R14 ; [+28]
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R14 R14 K16 ["getJointPosition"]
      123 MOVE                             R15 R12
      124 CALL                             R14 1 1
      125 DUPTABLE                         R15 K21 [{"joint", "name", "parent", "position"}]
      126 SETTABLEKS                       R12 R15 K17 ["joint"]
      128 GETTABLEKS                       R16 R12 K10 ["Name"]
      130 SETTABLEKS                       R16 R15 K18 ["name"]
      132 LOADNIL                          R16
      133 SETTABLEKS                       R16 R15 K19 ["parent"]
      135 SETTABLEKS                       R14 R15 K20 ["position"]
      137 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
      139 MOVE                             R17 R6
      140 MOVE                             R18 R15
      141 GETIMPORT                        R16 K24 [table.insert]
      143 CALL                             R16 2 0
      144 GETUPVAL                         R16 4
      145 CALL                             R16 0 1
      146 JUMPIFNOT                        R16 ; [+1]
      147 SETTABLE                         R15 R7 R12
      148 FORGLOOP                         R8 2 ; [-54]
      150 GETUPVAL                         R8 4
      151 CALL                             R8 0 1
      152 JUMPIFNOT                        R8 ; [+42]
      153 MOVE                             R8 R6
      154 LOADNIL                          R9
      155 LOADNIL                          R10
      156 FORGPREP                         R8
      157 GETTABLEKS                       R13 R12 K17 ["joint"]
      159 GETTABLEKS                       R13 R13 K14 ["Parent"]
      161 GETTABLEKS                       R14 R12 K17 ["joint"]
      163 LOADK                            R16 K13 ["Motor6D"]
      164 NAMECALL                         R14 R14 K15 ["IsA"]
      166 CALL                             R14 2 1
      167 JUMPIFNOT                        R14 ; [+11]
      168 GETTABLEKS                       R14 R12 K17 ["joint"]
      170 GETTABLEKS                       R14 R14 K25 ["Part0"]
      172 MOVE                             R15 R14
      173 JUMPIFNOT                        R15 ; [+4]
      174 LOADK                            R17 K13 ["Motor6D"]
      175 NAMECALL                         R15 R14 K2 ["FindFirstChildWhichIsA"]
      177 CALL                             R15 2 1
      178 MOVE                             R13 R15
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R15 R15 K11 ["isValidTJoint"]
      182 MOVE                             R16 R13
      183 CALL                             R15 1 1
      184 JUMPIFNOT                        R15 ; [+2]
      185 MOVE                             R14 R13
      186 JUMP                             ; [+1]
      187 LOADNIL                          R14
      188 JUMPIFNOT                        R14 ; [+3]
      189 GETTABLE                         R15 R7 R14
      190 SETTABLEKS                       R15 R12 K19 ["parent"]
      192 FORGLOOP                         R8 2 ; [-36]
      194 JUMP                             ; [+50]
      195 MOVE                             R8 R6
      196 LOADNIL                          R9
      197 LOADNIL                          R10
      198 FORGPREP                         R8
      199 MOVE                             R13 R6
      200 LOADNIL                          R14
      201 LOADNIL                          R15
      202 FORGPREP                         R13
      203 GETTABLEKS                       R18 R12 K17 ["joint"]
      205 GETTABLEKS                       R18 R18 K14 ["Parent"]
      207 GETTABLEKS                       R19 R12 K17 ["joint"]
      209 LOADK                            R21 K13 ["Motor6D"]
      210 NAMECALL                         R19 R19 K15 ["IsA"]
      212 CALL                             R19 2 1
      213 JUMPIFNOT                        R19 ; [+11]
      214 GETTABLEKS                       R19 R12 K17 ["joint"]
      216 GETTABLEKS                       R19 R19 K25 ["Part0"]
      218 MOVE                             R20 R19
      219 JUMPIFNOT                        R20 ; [+4]
      220 LOADK                            R22 K13 ["Motor6D"]
      221 NAMECALL                         R20 R19 K2 ["FindFirstChildWhichIsA"]
      223 CALL                             R20 2 1
      224 MOVE                             R18 R20
      225 GETUPVAL                         R20 1
      226 GETTABLEKS                       R20 R20 K11 ["isValidTJoint"]
      228 MOVE                             R21 R18
      229 CALL                             R20 1 1
      230 JUMPIFNOT                        R20 ; [+2]
      231 MOVE                             R19 R18
      232 JUMP                             ; [+1]
      233 LOADNIL                          R19
      234 GETTABLEKS                       R20 R17 K17 ["joint"]
      236 JUMPIFNOTEQ                      R19 R20 ; [+4]
      238 SETTABLEKS                       R17 R12 K19 ["parent"]
      240 JUMP                             ; [+2]
      241 FORGLOOP                         R13 2 ; [-39]
      243 FORGLOOP                         R8 2 ; [-45]
      245 NEWTABLE                         R8 0 0
      247 MOVE                             R9 R6
      248 LOADNIL                          R10
      249 LOADNIL                          R11
      250 FORGPREP                         R9
      251 GETIMPORT                        R14 K28 [Vector2.new]
      253 GETTABLEKS                       R15 R13 K20 ["position"]
      255 GETTABLEKS                       R15 R15 K29 ["X"]
      257 GETTABLEKS                       R16 R13 K20 ["position"]
      259 GETTABLEKS                       R16 R16 K30 ["Y"]
      261 CALL                             R14 2 1
      262 SETTABLE                         R14 R8 R12
      263 FORGLOOP                         R9 2 ; [-13]
      265 GETUPVAL                         R9 1
      266 GETTABLEKS                       R9 R9 K31 ["normalizePoints"]
      268 MOVE                             R10 R8
      269 CALL                             R9 1 0
      270 NEWTABLE                         R9 0 0
      272 MOVE                             R10 R6
      273 LOADNIL                          R11
      274 LOADNIL                          R12
      275 FORGPREP                         R10
      276 GETTABLEKS                       R17 R14 K18 ["name"]
      278 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      280 MOVE                             R16 R9
      281 GETIMPORT                        R15 K24 [table.insert]
      283 CALL                             R15 2 0
      284 FORGLOOP                         R10 2 ; [-9]
      286 GETUPVAL                         R10 1
      287 GETTABLEKS                       R10 R10 K32 ["commonPrefix"]
      289 MOVE                             R11 R9
      290 CALL                             R10 1 1
      291 GETUPVAL                         R11 1
      292 GETTABLEKS                       R11 R11 K33 ["commonSuffix"]
      294 MOVE                             R12 R9
      295 CALL                             R11 1 1
      296 MOVE                             R12 R6
      297 LOADNIL                          R13
      298 LOADNIL                          R14
      299 FORGPREP                         R12
      300 GETUPVAL                         R17 1
      301 GETTABLEKS                       R17 R17 K34 ["trimStart"]
      303 GETTABLEKS                       R18 R16 K18 ["name"]
      305 MOVE                             R19 R10
      306 CALL                             R17 2 1
      307 SETTABLEKS                       R17 R16 K18 ["name"]
      309 GETUPVAL                         R17 1
      310 GETTABLEKS                       R17 R17 K35 ["trimEnd"]
      312 GETTABLEKS                       R18 R16 K18 ["name"]
      314 MOVE                             R19 R11
      315 CALL                             R17 2 1
      316 SETTABLEKS                       R17 R16 K18 ["name"]
      318 FORGLOOP                         R12 2 ; [-19]
      320 NEWTABLE                         R12 0 0
      322 MOVE                             R13 R6
      323 LOADNIL                          R14
      324 LOADNIL                          R15
      325 FORGPREP                         R13
      326 GETIMPORT                        R18 K37 [table.find]
      328 MOVE                             R19 R12
      329 GETTABLEKS                       R20 R17 K18 ["name"]
      331 CALL                             R18 2 1
      332 JUMPIFNOT                        R18 ; [+4]
      333 GETIMPORT                        R18 K39 [warn]
      335 LOADK                            R19 K40 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      336 CALL                             R18 1 0
      337 GETTABLEKS                       R20 R17 K18 ["name"]
      339 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      341 MOVE                             R19 R12
      342 GETIMPORT                        R18 K24 [table.insert]
      344 CALL                             R18 2 0
      345 FORGLOOP                         R13 2 ; [-20]
      347 NEWTABLE                         R13 0 0
      349 NEWTABLE                         R14 0 0
      351 NEWTABLE                         R15 0 0
      353 GETUPVAL                         R16 4
      354 CALL                             R16 0 1
      355 JUMPIFNOT                        R16 ; [+54]
      356 MOVE                             R16 R6
      357 LOADNIL                          R17
      358 LOADNIL                          R18
      359 FORGPREP                         R16
      360 SETTABLE                         R19 R13 R20
      361 FORGLOOP                         R16 2 ; [-2]
      363 MOVE                             R16 R6
      364 LOADNIL                          R17
      365 LOADNIL                          R18
      366 FORGPREP                         R16
      367 NEWTABLE                         R21 0 0
      369 GETTABLEKS                       R22 R20 K17 ["joint"]
      371 NAMECALL                         R22 R22 K41 ["GetChildren"]
      373 CALL                             R22 1 3
      374 FORGPREP                         R22
      375 GETUPVAL                         R27 1
      376 GETTABLEKS                       R27 R27 K11 ["isValidTJoint"]
      378 MOVE                             R28 R26
      379 CALL                             R27 1 1
      380 JUMPIFNOT                        R27 ; [+7]
      381 FASTCALL2                        TABLE_INSERT R21 R26 ; [+5]
      383 MOVE                             R28 R21
      384 MOVE                             R29 R26
      385 GETIMPORT                        R27 K24 [table.insert]
      387 CALL                             R27 2 0
      388 FORGLOOP                         R22 2 ; [-14]
      390 GETTABLEKS                       R22 R20 K17 ["joint"]
      392 SETTABLE                         R21 R14 R22
      393 FORGLOOP                         R16 2 ; [-27]
      395 MOVE                             R16 R6
      396 LOADNIL                          R17
      397 LOADNIL                          R18
      398 FORGPREP                         R16
      399 GETTABLEKS                       R21 R20 K17 ["joint"]
      401 GETTABLEKS                       R23 R20 K17 ["joint"]
      403 NAMECALL                         R23 R23 K9 ["GetDescendants"]
      405 CALL                             R23 1 1
      406 LENGTH                           R22 R23
      407 SETTABLE                         R22 R15 R21
      408 FORGLOOP                         R16 2 ; [-10]
      410 NEWTABLE                         R16 0 0
      412 MOVE                             R17 R6
      413 LOADNIL                          R18
      414 LOADNIL                          R19
      415 FORGPREP                         R17
      416 GETTABLEKS                       R22 R21 K17 ["joint"]
      418 NEWTABLE                         R23 0 0
      420 SETTABLE                         R23 R16 R22
      421 LOADNIL                          R22
      422 GETUPVAL                         R23 4
      423 CALL                             R23 0 1
      424 JUMPIFNOT                        R23 ; [+3]
      425 GETTABLE                         R23 R13 R21
      426 GETTABLE                         R22 R8 R23
      427 JUMP                             ; [+12]
      428 GETIMPORT                        R23 K37 [table.find]
      430 MOVE                             R24 R6
      431 MOVE                             R25 R21
      432 CALL                             R23 2 1
      433 JUMPIF                           R23 ; [+5]
      434 GETIMPORT                        R24 K39 [warn]
      436 LOADK                            R25 K42 ["joint not found in jointRefs array"]
      437 CALL                             R24 1 0
      438 JUMP                             ; [+30]
      439 GETTABLE                         R22 R8 R23
      440 GETUPVAL                         R23 0
      441 LOADNIL                          R24
      442 LOADNIL                          R25
      443 FORGPREP                         R23
      444 GETTABLEKS                       R29 R21 K17 ["joint"]
      446 GETTABLE                         R28 R16 R29
      447 GETUPVAL                         R31 5
      448 GETTABLEKS                       R31 R31 K43 ["nameWeight"]
      450 GETUPVAL                         R32 6
      451 GETTABLEKS                       R33 R21 K18 ["name"]
      453 MOVE                             R34 R27
      454 CALL                             R32 2 1
      455 MUL                              R30 R31 R32
      456 GETUPVAL                         R32 5
      457 GETTABLEKS                       R32 R32 K44 ["positionWeight"]
      459 GETUPVAL                         R33 7
      460 MOVE                             R34 R22
      461 MOVE                             R35 R21
      462 MOVE                             R36 R27
      463 CALL                             R33 3 1
      464 MUL                              R31 R32 R33
      465 ADD                              R29 R30 R31
      466 SETTABLE                         R29 R28 R27
      467 FORGLOOP                         R23 2 ; [-24]
      469 FORGLOOP                         R17 2 ; [-54]
      471 MOVE                             R17 R6
      472 LOADNIL                          R18
      473 LOADNIL                          R19
      474 FORGPREP                         R17
      475 GETUPVAL                         R22 0
      476 LOADNIL                          R23
      477 LOADNIL                          R24
      478 FORGPREP                         R22
      479 GETUPVAL                         R28 8
      480 GETTABLE                         R27 R28 R26
      481 JUMPIFEQKNIL                     R27 ; [+49]
      483 GETTABLEKS                       R28 R21 K19 ["parent"]
      485 JUMPIFNOT                        R28 ; [+45]
      486 LOADB                            R28 1
      487 GETUPVAL                         R29 9
      488 CALL                             R29 0 1
      489 JUMPIFNOT                        R29 ; [+14]
      490 GETUPVAL                         R29 10
      491 JUMPIFEQ                         R26 R29 ; [+4]
      493 GETUPVAL                         R29 11
      494 JUMPIFNOTEQ                      R26 R29 ; [+9]
      496 GETUPVAL                         R29 12
      497 GETTABLEKS                       R30 R21 K19 ["parent"]
      499 GETTABLEKS                       R30 R30 K18 ["name"]
      501 MOVE                             R31 R27
      502 CALL                             R29 2 1
      503 MOVE                             R28 R29
      504 JUMPIFNOT                        R28 ; [+26]
      505 GETTABLEKS                       R30 R21 K19 ["parent"]
      507 GETTABLEKS                       R30 R30 K17 ["joint"]
      509 GETTABLE                         R29 R16 R30
      510 JUMPIFNOT                        R29 ; [+6]
      511 GETTABLEKS                       R31 R21 K19 ["parent"]
      513 GETTABLEKS                       R31 R31 K17 ["joint"]
      515 GETTABLE                         R30 R16 R31
      516 GETTABLE                         R29 R30 R27
      517 JUMPIFEQKNIL                     R29 ; [+13]
      519 GETTABLEKS                       R31 R21 K17 ["joint"]
      521 GETTABLE                         R30 R16 R31
      522 GETTABLE                         R31 R30 R26
      523 LOADN                            R33 1
      524 GETUPVAL                         R35 5
      525 GETTABLEKS                       R35 R35 K45 ["parentInfluenceWeight"]
      527 MUL                              R34 R35 R29
      528 ADD                              R32 R33 R34
      529 MUL                              R31 R31 R32
      530 SETTABLE                         R31 R30 R26
      531 GETUPVAL                         R29 13
      532 GETTABLE                         R28 R29 R26
      533 GETUPVAL                         R29 4
      534 CALL                             R29 0 1
      535 JUMPIFNOT                        R29 ; [+43]
      536 GETTABLEKS                       R30 R21 K17 ["joint"]
      538 GETTABLE                         R29 R14 R30
      539 JUMPIFEQKNIL                     R28 ; [+104]
      541 JUMPIFNOT                        R29 ; [+102]
      542 LENGTH                           R30 R29
      543 LOADN                            R31 0
      544 JUMPIFNOTLT                      R31 R30 ; [+99]
      546 LOADK                            R30 K46 [-∞]
      547 MOVE                             R31 R29
      548 LOADNIL                          R32
      549 LOADNIL                          R33
      550 FORGPREP                         R31
      551 GETTABLE                         R37 R16 R35
      552 GETTABLE                         R36 R37 R28
      553 JUMPIFNOT                        R36 ; [+8]
      554 FASTCALL2                        MATH_MAX R30 R36 ; [+5]
      556 MOVE                             R38 R30
      557 MOVE                             R39 R36
      558 GETIMPORT                        R37 K49 [math.max]
      560 CALL                             R37 2 1
      561 MOVE                             R30 R37
      562 FORGLOOP                         R31 2 ; [-12]
      564 JUMPIFEQKN                       R30 K46 [-∞] ; [+79]
      566 GETTABLEKS                       R32 R21 K17 ["joint"]
      568 GETTABLE                         R31 R16 R32
      569 GETTABLE                         R32 R31 R26
      570 LOADN                            R34 1
      571 GETUPVAL                         R36 5
      572 GETTABLEKS                       R36 R36 K50 ["childInfluenceWeight"]
      574 MUL                              R35 R36 R30
      575 ADD                              R33 R34 R35
      576 MUL                              R32 R32 R33
      577 SETTABLE                         R32 R31 R26
      578 JUMP                             ; [+65]
      579 GETTABLEKS                       R29 R21 K17 ["joint"]
      581 NAMECALL                         R29 R29 K41 ["GetChildren"]
      583 CALL                             R29 1 1
      584 JUMPIFEQKNIL                     R28 ; [+59]
      586 LENGTH                           R30 R29
      587 LOADN                            R31 0
      588 JUMPIFNOTLT                      R31 R30 ; [+55]
      590 LOADK                            R30 K46 [-∞]
      591 MOVE                             R31 R29
      592 LOADNIL                          R32
      593 LOADNIL                          R33
      594 FORGPREP                         R31
      595 GETUPVAL                         R37 2
      596 CALL                             R37 0 1
      597 JUMPIFNOT                        R37 ; [+6]
      598 GETUPVAL                         R36 1
      599 GETTABLEKS                       R36 R36 K11 ["isValidTJoint"]
      601 MOVE                             R37 R35
      602 CALL                             R36 1 1
      603 JUMP                             ; [+9]
      604 LOADK                            R38 K13 ["Motor6D"]
      605 NAMECALL                         R36 R35 K15 ["IsA"]
      607 CALL                             R36 2 1
      608 JUMPIF                           R36 ; [+4]
      609 LOADK                            R38 K12 ["Bone"]
      610 NAMECALL                         R36 R35 K15 ["IsA"]
      612 CALL                             R36 2 1
      613 JUMPIFNOT                        R36 ; [+14]
      614 GETTABLE                         R37 R16 R35
      615 JUMPIFNOT                        R37 ; [+2]
      616 GETTABLE                         R38 R16 R35
      617 GETTABLE                         R37 R38 R28
      618 JUMPIFEQKNIL                     R37 ; [+9]
      620 FASTCALL2                        MATH_MAX R30 R37 ; [+5]
      622 MOVE                             R39 R30
      623 MOVE                             R40 R37
      624 GETIMPORT                        R38 K49 [math.max]
      626 CALL                             R38 2 1
      627 MOVE                             R30 R38
      628 FORGLOOP                         R31 2 ; [-34]
      630 JUMPIFEQKN                       R30 K46 [-∞] ; [+13]
      632 GETTABLEKS                       R32 R21 K17 ["joint"]
      634 GETTABLE                         R31 R16 R32
      635 GETTABLE                         R32 R31 R26
      636 LOADN                            R34 1
      637 GETUPVAL                         R36 5
      638 GETTABLEKS                       R36 R36 K50 ["childInfluenceWeight"]
      640 MUL                              R35 R36 R30
      641 ADD                              R33 R34 R35
      642 MUL                              R32 R32 R33
      643 SETTABLE                         R32 R31 R26
      644 GETIMPORT                        R29 K53 [Enum.RigLabel.Root]
      646 JUMPIFNOTEQ                      R26 R29 ; [+20]
      648 GETUPVAL                         R30 1
      649 GETTABLEKS                       R30 R30 K55 ["getDepth"]
      651 GETTABLEKS                       R31 R21 K17 ["joint"]
      653 MOVE                             R32 R3
      654 CALL                             R30 2 1
      655 SUBK                             R29 R30 K54 [1]
      656 GETTABLEKS                       R31 R21 K17 ["joint"]
      658 GETTABLE                         R30 R16 R31
      659 GETTABLE                         R31 R30 R26
      660 GETUPVAL                         R33 5
      661 GETTABLEKS                       R33 R33 K56 ["rootDepthPenalty"]
      663 MUL                              R32 R29 R33
      664 SUB                              R31 R31 R32
      665 SETTABLE                         R31 R30 R26
      666 JUMP                             ; [+38]
      667 GETIMPORT                        R29 K58 [Enum.RigLabel.LeftWrist]
      669 JUMPIFEQ                         R26 R29 ; [+5]
      671 GETIMPORT                        R29 K60 [Enum.RigLabel.RightWrist]
      673 JUMPIFNOTEQ                      R26 R29 ; [+31]
      675 GETUPVAL                         R30 4
      676 CALL                             R30 0 1
      677 JUMPIFNOT                        R30 ; [+4]
      678 GETTABLEKS                       R30 R21 K17 ["joint"]
      680 GETTABLE                         R29 R15 R30
      681 JUMP                             ; [+6]
      682 GETTABLEKS                       R30 R21 K17 ["joint"]
      684 NAMECALL                         R30 R30 K9 ["GetDescendants"]
      686 CALL                             R30 1 1
      687 LENGTH                           R29 R30
      688 GETTABLEKS                       R31 R21 K17 ["joint"]
      690 GETTABLE                         R30 R16 R31
      691 GETTABLE                         R31 R30 R26
      692 FASTCALL2K                       MATH_MIN R29 K61 ; [+5]
      694 MOVE                             R34 R29
      695 LOADK                            R35 K61 [15]
      696 GETIMPORT                        R33 K63 [math.min]
      698 CALL                             R33 2 1
      699 GETUPVAL                         R34 5
      700 GETTABLEKS                       R34 R34 K64 ["handBoostPerDescendant"]
      702 MUL                              R32 R33 R34
      703 ADD                              R31 R31 R32
      704 SETTABLE                         R31 R30 R26
      705 FORGLOOP                         R22 2 ; [-227]
      707 FORGLOOP                         R17 2 ; [-233]
      709 GETUPVAL                         R17 14
      710 CALL                             R17 0 1
      711 JUMPIFNOT                        R17 ; [+29]
      712 MOVE                             R17 R6
      713 LOADNIL                          R18
      714 LOADNIL                          R19
      715 FORGPREP                         R17
      716 GETUPVAL                         R22 0
      717 LOADNIL                          R23
      718 LOADNIL                          R24
      719 FORGPREP                         R22
      720 GETTABLEKS                       R27 R21 K17 ["joint"]
      722 GETTABLEKS                       R27 R27 K10 ["Name"]
      724 GETTABLEKS                       R28 R26 K10 ["Name"]
      726 JUMPIFNOTEQ                      R27 R28 ; [+10]
      728 GETTABLEKS                       R28 R21 K17 ["joint"]
      730 GETTABLE                         R27 R16 R28
      731 GETTABLE                         R28 R27 R26
      732 GETUPVAL                         R29 5
      733 GETTABLEKS                       R29 R29 K65 ["exactNameMatchBonus"]
      735 ADD                              R28 R28 R29
      736 SETTABLE                         R28 R27 R26
      737 FORGLOOP                         R22 2 ; [-18]
      739 FORGLOOP                         R17 2 ; [-24]
      741 NEWTABLE                         R17 0 0
      743 MOVE                             R18 R6
      744 LOADNIL                          R19
      745 LOADNIL                          R20
      746 FORGPREP                         R18
      747 GETUPVAL                         R23 0
      748 LOADNIL                          R24
      749 LOADNIL                          R25
      750 FORGPREP                         R23
      751 DUPTABLE                         R30 K68 [{"joint", "rigLabel", "score"}]
      752 GETTABLEKS                       R31 R22 K17 ["joint"]
      754 SETTABLEKS                       R31 R30 K17 ["joint"]
      756 SETTABLEKS                       R27 R30 K66 ["rigLabel"]
      758 GETTABLEKS                       R33 R22 K17 ["joint"]
      760 GETTABLE                         R32 R16 R33
      761 GETTABLE                         R31 R32 R27
      762 SETTABLEKS                       R31 R30 K67 ["score"]
      764 FASTCALL2                        TABLE_INSERT R17 R30 ; [+4]
      766 MOVE                             R29 R17
      767 GETIMPORT                        R28 K24 [table.insert]
      769 CALL                             R28 2 0
      770 FORGLOOP                         R23 2 ; [-20]
      772 FORGLOOP                         R18 2 ; [-26]
      774 GETIMPORT                        R18 K70 [table.sort]
      776 MOVE                             R19 R17
      777 DUPCLOSURE                       R20 K71 [PROTO_4]
      778 CALL                             R18 2 0
      779 NEWTABLE                         R18 0 0
      781 NEWTABLE                         R19 0 0
      783 NEWTABLE                         R20 0 0
      785 NEWTABLE                         R21 0 0
      787 NEWCLOSURE                       R22 P1
      788 CAPTURE                          UPVAL U4
      789 CAPTURE                          VAL R20
      790 CAPTURE                          VAL R18
      791 NEWCLOSURE                       R23 P2
      792 CAPTURE                          UPVAL U4
      793 CAPTURE                          VAL R21
      794 CAPTURE                          VAL R19
      795 NEWCLOSURE                       R24 P3
      796 CAPTURE                          UPVAL U4
      797 CAPTURE                          VAL R20
      798 CAPTURE                          VAL R21
      799 CAPTURE                          VAL R18
      800 CAPTURE                          VAL R19
      801 GETUPVAL                         R25 2
      802 CALL                             R25 0 1
      803 JUMPIFNOT                        R25 ; [+33]
      804 GETUPVAL                         R25 0
      805 LOADNIL                          R26
      806 LOADNIL                          R27
      807 FORGPREP                         R25
      808 MOVE                             R32 R29
      809 NAMECALL                         R30 R0 K72 ["GetJoint"]
      811 CALL                             R30 2 1
      812 JUMPIFNOT                        R30 ; [+22]
      813 GETUPVAL                         R31 4
      814 CALL                             R31 0 1
      815 JUMPIFNOT                        R31 ; [+5]
      816 LOADB                            R31 1
      817 SETTABLE                         R31 R20 R30
      818 LOADB                            R31 1
      819 SETTABLE                         R31 R21 R29
      820 JUMP                             ; [+14]
      821 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      823 MOVE                             R32 R18
      824 MOVE                             R33 R30
      825 GETIMPORT                        R31 K24 [table.insert]
      827 CALL                             R31 2 0
      828 FASTCALL2                        TABLE_INSERT R19 R29 ; [+5]
      830 MOVE                             R32 R19
      831 MOVE                             R33 R29
      832 GETIMPORT                        R31 K24 [table.insert]
      834 CALL                             R31 2 0
      835 FORGLOOP                         R25 2 ; [-28]
      837 MOVE                             R25 R17
      838 LOADNIL                          R26
      839 LOADNIL                          R27
      840 FORGPREP                         R25
      841 GETTABLEKS                       R30 R29 K67 ["score"]
      843 GETUPVAL                         R31 5
      844 GETTABLEKS                       R31 R31 K73 ["minScoreThreshold"]
      846 JUMPIFLT                         R30 R31 ; [+78]
      848 GETTABLEKS                       R31 R29 K17 ["joint"]
      850 GETUPVAL                         R32 4
      851 CALL                             R32 0 1
      852 JUMPIFNOT                        R32 ; [+6]
      853 GETTABLE                         R32 R20 R31
      854 JUMPIFEQKB                       R32 TRUE ; [+2]
      856 LOADB                            R30 0 +1
      857 LOADB                            R30 1
      858 JUMP                             ; [+9]
      859 GETIMPORT                        R32 K37 [table.find]
      861 MOVE                             R33 R18
      862 MOVE                             R34 R31
      863 CALL                             R32 2 1
      864 JUMPIFNOTEQKNIL                  R32 ; [+2]
      866 LOADB                            R30 0 +1
      867 LOADB                            R30 1
      868 JUMPIF                           R30 ; [+54]
      869 GETTABLEKS                       R31 R29 K66 ["rigLabel"]
      871 GETUPVAL                         R32 4
      872 CALL                             R32 0 1
      873 JUMPIFNOT                        R32 ; [+6]
      874 GETTABLE                         R32 R21 R31
      875 JUMPIFEQKB                       R32 TRUE ; [+2]
      877 LOADB                            R30 0 +1
      878 LOADB                            R30 1
      879 JUMP                             ; [+9]
      880 GETIMPORT                        R32 K37 [table.find]
      882 MOVE                             R33 R19
      883 MOVE                             R34 R31
      884 CALL                             R32 2 1
      885 JUMPIFNOTEQKNIL                  R32 ; [+2]
      887 LOADB                            R30 0 +1
      888 LOADB                            R30 1
      889 JUMPIF                           R30 ; [+33]
      890 GETTABLEKS                       R30 R29 K17 ["joint"]
      892 GETTABLEKS                       R31 R29 K66 ["rigLabel"]
      894 GETUPVAL                         R32 4
      895 CALL                             R32 0 1
      896 JUMPIFNOT                        R32 ; [+5]
      897 LOADB                            R32 1
      898 SETTABLE                         R32 R20 R30
      899 LOADB                            R32 1
      900 SETTABLE                         R32 R21 R31
      901 JUMP                             ; [+14]
      902 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      904 MOVE                             R33 R18
      905 MOVE                             R34 R30
      906 GETIMPORT                        R32 K24 [table.insert]
      908 CALL                             R32 2 0
      909 FASTCALL2                        TABLE_INSERT R19 R31 ; [+5]
      911 MOVE                             R33 R19
      912 MOVE                             R34 R31
      913 GETIMPORT                        R32 K24 [table.insert]
      915 CALL                             R32 2 0
      916 GETTABLEKS                       R32 R29 K66 ["rigLabel"]
      918 GETTABLEKS                       R33 R29 K17 ["joint"]
      920 NAMECALL                         R30 R0 K0 ["SetJoint"]
      922 CALL                             R30 3 0
      923 FORGLOOP                         R25 2 ; [-83]
      925 GETUPVAL                         R25 3
      926 CALL                             R25 0 1
      927 JUMPIFNOT                        R25 ; [+1]
      928 RETURN                           R17 1
      929 LOADNIL                          R25
      930 RETURN                           R25 1

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
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Flags"]
       19 GETTABLEKS                       R4 R4 K8 ["getFFlagAdaptiveAnimationAutomapperFix"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K7 ["Flags"]
       26 GETTABLEKS                       R5 R5 K9 ["getFFlagAdaptiveAnimationAutomapperNonHumanoidFix"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K7 ["Flags"]
       33 GETTABLEKS                       R6 R6 K10 ["getFFlagAdaptiveAnimationAutomapperPenaltyFix"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K7 ["Flags"]
       40 GETTABLEKS                       R7 R7 K11 ["getFFlagAdaptiveAnimationAutomapperPerf"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K7 ["Flags"]
       47 GETTABLEKS                       R8 R8 K12 ["getFFlagAdaptiveAnimationBetaImprovements"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R2 K13 ["hasSpine"]
       52 GETTABLEKS                       R9 R2 K14 ["spineLabel"]
       54 GETTABLEKS                       R10 R2 K15 ["hasPelvis"]
       56 GETTABLEKS                       R11 R2 K16 ["LeftToeBase"]
       58 GETTABLEKS                       R12 R2 K17 ["RightToeBase"]
       60 DUPTABLE                         R13 K30 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant", "exactNameMatchBonus"}]
       61 LOADK                            R14 K31 [0.3]
       62 SETTABLEKS                       R14 R13 K18 ["tokenLengthWeight"]
       64 LOADN                            R14 1
       65 SETTABLEKS                       R14 R13 K19 ["sideLeftRightWeight"]
       67 LOADK                            R14 K31 [0.3]
       68 SETTABLEKS                       R14 R13 K20 ["parentInfluenceWeight"]
       70 LOADK                            R14 K32 [0.1]
       71 SETTABLEKS                       R14 R13 K21 ["childInfluenceWeight"]
       73 LOADK                            R14 K33 [0.02]
       74 SETTABLEKS                       R14 R13 K22 ["leftRightPositionThreshold"]
       76 LOADK                            R14 K32 [0.1]
       77 SETTABLEKS                       R14 R13 K23 ["distanceSmoothingKernel"]
       79 LOADK                            R14 K34 [0.5]
       80 SETTABLEKS                       R14 R13 K24 ["minScoreThreshold"]
       82 LOADN                            R14 3
       83 SETTABLEKS                       R14 R13 K25 ["nameWeight"]
       85 LOADK                            R14 K34 [0.5]
       86 SETTABLEKS                       R14 R13 K26 ["positionWeight"]
       88 LOADK                            R14 K34 [0.5]
       89 SETTABLEKS                       R14 R13 K27 ["rootDepthPenalty"]
       91 LOADK                            R14 K35 [0.05]
       92 SETTABLEKS                       R14 R13 K28 ["handBoostPerDescendant"]
       94 LOADN                            R14 100
       95 SETTABLEKS                       R14 R13 K29 ["exactNameMatchBonus"]
       97 NEWTABLE                         R14 32 0
       99 GETIMPORT                        R15 K39 [Enum.RigLabel.Root]
      101 NEWTABLE                         R16 0 6
      103 LOADK                            R17 K40 ["root"]
      104 LOADK                            R18 K41 ["torso"]
      105 LOADK                            R19 K42 ["lower-torso"]
      106 LOADK                            R20 K43 ["waist"]
      107 LOADK                            R21 K44 ["hips"]
      108 LOADK                            R22 K45 ["pelvis"]
      109 SETLIST                          R16 R17 6 [1]
      111 SETTABLE                         R16 R14 R15
      112 GETIMPORT                        R15 K47 [Enum.RigLabel.Waist]
      114 NEWTABLE                         R16 0 1
      116 LOADK                            R17 K48 ["chest"]
      117 SETLIST                          R16 R17 1 [1]
      119 SETTABLE                         R16 R14 R15
      120 GETIMPORT                        R15 K50 [Enum.RigLabel.Chest]
      122 NEWTABLE                         R16 0 5
      124 LOADK                            R17 K51 ["upper-torso"]
      125 LOADK                            R18 K41 ["torso"]
      126 LOADK                            R19 K52 ["spine"]
      127 LOADK                            R20 K53 ["upper-chest"]
      128 LOADK                            R21 K48 ["chest"]
      129 SETLIST                          R16 R17 5 [1]
      131 SETTABLE                         R16 R14 R15
      132 GETIMPORT                        R15 K55 [Enum.RigLabel.Neck]
      134 NEWTABLE                         R16 0 1
      136 LOADK                            R17 K56 ["neck"]
      137 SETLIST                          R16 R17 1 [1]
      139 SETTABLE                         R16 R14 R15
      140 GETIMPORT                        R15 K58 [Enum.RigLabel.HeadBase]
      142 NEWTABLE                         R16 0 1
      144 LOADK                            R17 K59 ["head"]
      145 SETLIST                          R16 R17 1 [1]
      147 SETTABLE                         R16 R14 R15
      148 GETIMPORT                        R15 K61 [Enum.RigLabel.LeftClavicle]
      150 NEWTABLE                         R16 0 3
      152 LOADK                            R17 K62 ["shoulder"]
      153 LOADK                            R18 K63 ["clavicle"]
      154 LOADK                            R19 K64 ["collar"]
      155 SETLIST                          R16 R17 3 [1]
      157 SETTABLE                         R16 R14 R15
      158 GETIMPORT                        R15 K66 [Enum.RigLabel.LeftShoulder]
      160 NEWTABLE                         R16 0 4
      162 LOADK                            R17 K62 ["shoulder"]
      163 LOADK                            R18 K67 ["arm"]
      164 LOADK                            R19 K68 ["upper-arm"]
      165 LOADK                            R20 K69 ["up-arm"]
      166 SETLIST                          R16 R17 4 [1]
      168 SETTABLE                         R16 R14 R15
      169 GETIMPORT                        R15 K71 [Enum.RigLabel.LeftElbow]
      171 NEWTABLE                         R16 0 6
      173 LOADK                            R17 K72 ["lower-arm"]
      174 LOADK                            R18 K73 ["elbow"]
      175 LOADK                            R19 K74 ["fore-arm"]
      176 LOADK                            R20 K75 ["down-arm"]
      177 LOADK                            R21 K67 ["arm"]
      178 LOADK                            R22 K76 ["lo-arm"]
      179 SETLIST                          R16 R17 6 [1]
      181 SETTABLE                         R16 R14 R15
      182 GETIMPORT                        R15 K78 [Enum.RigLabel.LeftWrist]
      184 NEWTABLE                         R16 0 2
      186 LOADK                            R17 K79 ["hand"]
      187 LOADK                            R18 K80 ["wrist"]
      188 SETLIST                          R16 R17 2 [1]
      190 SETTABLE                         R16 R14 R15
      191 GETIMPORT                        R15 K82 [Enum.RigLabel.LeftHip]
      193 NEWTABLE                         R16 0 5
      195 LOADK                            R17 K83 ["leg"]
      196 LOADK                            R18 K84 ["hip"]
      197 LOADK                            R19 K85 ["upper-leg"]
      198 LOADK                            R20 K86 ["up-leg"]
      199 LOADK                            R21 K87 ["thigh"]
      200 SETLIST                          R16 R17 5 [1]
      202 SETTABLE                         R16 R14 R15
      203 GETIMPORT                        R15 K89 [Enum.RigLabel.LeftKnee]
      205 NEWTABLE                         R16 0 7
      207 LOADK                            R17 K83 ["leg"]
      208 LOADK                            R18 K90 ["lower-leg"]
      209 LOADK                            R19 K91 ["knee"]
      210 LOADK                            R20 K92 ["calf"]
      211 LOADK                            R21 K93 ["down-leg"]
      212 LOADK                            R22 K94 ["lo-leg"]
      213 LOADK                            R23 K95 ["shin"]
      214 SETLIST                          R16 R17 7 [1]
      216 SETTABLE                         R16 R14 R15
      217 GETIMPORT                        R15 K97 [Enum.RigLabel.LeftAnkle]
      219 NEWTABLE                         R16 0 2
      221 LOADK                            R17 K98 ["foot"]
      222 LOADK                            R18 K99 ["ankle"]
      223 SETLIST                          R16 R17 2 [1]
      225 SETTABLE                         R16 R14 R15
      226 NEWTABLE                         R15 0 5
      228 LOADK                            R16 K100 ["toe-base"]
      229 LOADK                            R17 K101 ["toe"]
      230 LOADK                            R18 K102 ["toes"]
      231 LOADK                            R19 K98 ["foot"]
      232 LOADK                            R20 K103 ["ball"]
      233 SETLIST                          R15 R16 5 [1]
      235 SETTABLE                         R15 R14 R11
      236 GETIMPORT                        R15 K105 [Enum.RigLabel.RightClavicle]
      238 LOADNIL                          R16
      239 SETTABLE                         R16 R14 R15
      240 GETIMPORT                        R15 K107 [Enum.RigLabel.RightShoulder]
      242 LOADNIL                          R16
      243 SETTABLE                         R16 R14 R15
      244 GETIMPORT                        R15 K109 [Enum.RigLabel.RightElbow]
      246 LOADNIL                          R16
      247 SETTABLE                         R16 R14 R15
      248 GETIMPORT                        R15 K111 [Enum.RigLabel.RightWrist]
      250 LOADNIL                          R16
      251 SETTABLE                         R16 R14 R15
      252 GETIMPORT                        R15 K113 [Enum.RigLabel.RightHip]
      254 LOADNIL                          R16
      255 SETTABLE                         R16 R14 R15
      256 GETIMPORT                        R15 K115 [Enum.RigLabel.RightKnee]
      258 LOADNIL                          R16
      259 SETTABLE                         R16 R14 R15
      260 GETIMPORT                        R15 K117 [Enum.RigLabel.RightAnkle]
      262 LOADNIL                          R16
      263 SETTABLE                         R16 R14 R15
      264 LOADNIL                          R15
      265 SETTABLE                         R15 R14 R12
      266 JUMPIFNOT                        R8 ; [+7]
      267 NEWTABLE                         R15 0 1
      269 LOADK                            R16 K52 ["spine"]
      270 SETLIST                          R15 R16 1 [1]
      272 SETTABLE                         R15 R14 R9
      273 JUMP                             ; [+9]
      274 JUMPIFNOT                        R10 ; [+8]
      275 GETIMPORT                        R15 K119 [Enum.RigLabel.Pelvis]
      277 NEWTABLE                         R16 0 1
      279 LOADK                            R17 K52 ["spine"]
      280 SETLIST                          R16 R17 1 [1]
      282 SETTABLE                         R16 R14 R15
      283 NEWTABLE                         R15 0 8
      285 GETIMPORT                        R16 K61 [Enum.RigLabel.LeftClavicle]
      287 GETIMPORT                        R17 K66 [Enum.RigLabel.LeftShoulder]
      289 GETIMPORT                        R18 K71 [Enum.RigLabel.LeftElbow]
      291 GETIMPORT                        R19 K78 [Enum.RigLabel.LeftWrist]
      293 GETIMPORT                        R20 K82 [Enum.RigLabel.LeftHip]
      295 GETIMPORT                        R21 K89 [Enum.RigLabel.LeftKnee]
      297 GETIMPORT                        R22 K97 [Enum.RigLabel.LeftAnkle]
      299 MOVE                             R23 R11
      300 SETLIST                          R15 R16 8 [1]
      302 NEWTABLE                         R16 0 0
      304 NEWTABLE                         R17 8 0
      306 GETIMPORT                        R18 K61 [Enum.RigLabel.LeftClavicle]
      308 GETIMPORT                        R19 K105 [Enum.RigLabel.RightClavicle]
      310 SETTABLE                         R19 R17 R18
      311 GETIMPORT                        R18 K66 [Enum.RigLabel.LeftShoulder]
      313 GETIMPORT                        R19 K107 [Enum.RigLabel.RightShoulder]
      315 SETTABLE                         R19 R17 R18
      316 GETIMPORT                        R18 K71 [Enum.RigLabel.LeftElbow]
      318 GETIMPORT                        R19 K109 [Enum.RigLabel.RightElbow]
      320 SETTABLE                         R19 R17 R18
      321 GETIMPORT                        R18 K78 [Enum.RigLabel.LeftWrist]
      323 GETIMPORT                        R19 K111 [Enum.RigLabel.RightWrist]
      325 SETTABLE                         R19 R17 R18
      326 GETIMPORT                        R18 K82 [Enum.RigLabel.LeftHip]
      328 GETIMPORT                        R19 K113 [Enum.RigLabel.RightHip]
      330 SETTABLE                         R19 R17 R18
      331 GETIMPORT                        R18 K89 [Enum.RigLabel.LeftKnee]
      333 GETIMPORT                        R19 K115 [Enum.RigLabel.RightKnee]
      335 SETTABLE                         R19 R17 R18
      336 GETIMPORT                        R18 K97 [Enum.RigLabel.LeftAnkle]
      338 GETIMPORT                        R19 K117 [Enum.RigLabel.RightAnkle]
      340 SETTABLE                         R19 R17 R18
      341 SETTABLE                         R12 R17 R11
      342 MOVE                             R18 R17
      343 LOADNIL                          R19
      344 LOADNIL                          R20
      345 FORGPREP                         R18
      346 SETTABLE                         R21 R17 R22
      347 FORGLOOP                         R18 2 ; [-2]
      349 MOVE                             R18 R15
      350 LOADNIL                          R19
      351 LOADNIL                          R20
      352 FORGPREP                         R18
      353 LOADK                            R23 K120 ["left"]
      354 SETTABLE                         R23 R16 R22
      355 GETTABLE                         R23 R17 R22
      356 LOADK                            R24 K121 ["right"]
      357 SETTABLE                         R24 R16 R23
      358 FORGLOOP                         R18 2 ; [-6]
      360 NEWTABLE                         R18 16 0
      362 GETIMPORT                        R19 K39 [Enum.RigLabel.Root]
      364 GETIMPORT                        R20 K124 [Vector2.new]
      366 LOADN                            R21 0
      367 LOADK                            R22 K125 [0.199]
      368 CALL                             R20 2 1
      369 SETTABLE                         R20 R18 R19
      370 GETIMPORT                        R19 K47 [Enum.RigLabel.Waist]
      372 GETIMPORT                        R20 K124 [Vector2.new]
      374 LOADN                            R21 0
      375 LOADK                            R22 K126 [0.431]
      376 CALL                             R20 2 1
      377 SETTABLE                         R20 R18 R19
      378 GETIMPORT                        R19 K50 [Enum.RigLabel.Chest]
      380 GETIMPORT                        R20 K124 [Vector2.new]
      382 LOADN                            R21 0
      383 LOADK                            R22 K127 [0.669]
      384 CALL                             R20 2 1
      385 SETTABLE                         R20 R18 R19
      386 GETIMPORT                        R19 K55 [Enum.RigLabel.Neck]
      388 GETIMPORT                        R20 K124 [Vector2.new]
      390 LOADN                            R21 0
      391 LOADK                            R22 K128 [0.896]
      392 CALL                             R20 2 1
      393 SETTABLE                         R20 R18 R19
      394 GETIMPORT                        R19 K58 [Enum.RigLabel.HeadBase]
      396 GETIMPORT                        R20 K124 [Vector2.new]
      398 LOADN                            R21 0
      399 LOADN                            R22 1
      400 CALL                             R20 2 1
      401 SETTABLE                         R20 R18 R19
      402 GETIMPORT                        R19 K61 [Enum.RigLabel.LeftClavicle]
      404 GETIMPORT                        R20 K124 [Vector2.new]
      406 LOADK                            R21 K129 [-0.075]
      407 LOADK                            R22 K130 [0.783]
      408 CALL                             R20 2 1
      409 SETTABLE                         R20 R18 R19
      410 GETIMPORT                        R19 K66 [Enum.RigLabel.LeftShoulder]
      412 GETIMPORT                        R20 K124 [Vector2.new]
      414 LOADK                            R21 K131 [-0.365]
      415 LOADK                            R22 K132 [0.78]
      416 CALL                             R20 2 1
      417 SETTABLE                         R20 R18 R19
      418 GETIMPORT                        R19 K71 [Enum.RigLabel.LeftElbow]
      420 GETIMPORT                        R20 K124 [Vector2.new]
      422 LOADK                            R21 K133 [-0.722]
      423 LOADK                            R22 K134 [0.566]
      424 CALL                             R20 2 1
      425 SETTABLE                         R20 R18 R19
      426 GETIMPORT                        R19 K78 [Enum.RigLabel.LeftWrist]
      428 GETIMPORT                        R20 K124 [Vector2.new]
      430 LOADN                            R21 255
      431 LOADK                            R22 K135 [0.385]
      432 CALL                             R20 2 1
      433 SETTABLE                         R20 R18 R19
      434 GETIMPORT                        R19 K82 [Enum.RigLabel.LeftHip]
      436 GETIMPORT                        R20 K124 [Vector2.new]
      438 LOADK                            R21 K136 [-0.182]
      439 LOADK                            R22 K137 [0.118]
      440 CALL                             R20 2 1
      441 SETTABLE                         R20 R18 R19
      442 GETIMPORT                        R19 K89 [Enum.RigLabel.LeftKnee]
      444 GETIMPORT                        R20 K124 [Vector2.new]
      446 LOADK                            R21 K138 [-0.231]
      447 LOADK                            R22 K139 [-0.381]
      448 CALL                             R20 2 1
      449 SETTABLE                         R20 R18 R19
      450 GETIMPORT                        R19 K97 [Enum.RigLabel.LeftAnkle]
      452 GETIMPORT                        R20 K124 [Vector2.new]
      454 LOADK                            R21 K140 [-0.261]
      455 LOADK                            R22 K141 [-0.917]
      456 CALL                             R20 2 1
      457 SETTABLE                         R20 R18 R19
      458 GETIMPORT                        R19 K124 [Vector2.new]
      460 LOADK                            R20 K142 [-0.266]
      461 LOADN                            R21 255
      462 CALL                             R19 2 1
      463 SETTABLE                         R19 R18 R11
      464 MOVE                             R19 R15
      465 LOADNIL                          R20
      466 LOADNIL                          R21
      467 FORGPREP                         R19
      468 GETTABLE                         R24 R17 R23
      469 GETTABLE                         R25 R18 R23
      470 JUMPIFNOT                        R25 ; [+9]
      471 GETIMPORT                        R26 K124 [Vector2.new]
      473 GETTABLEKS                       R28 R25 K143 ["X"]
      475 MINUS                            R27 R28
      476 GETTABLEKS                       R28 R25 K144 ["Y"]
      478 CALL                             R26 2 1
      479 SETTABLE                         R26 R18 R24
      480 FORGLOOP                         R19 2 ; [-13]
      482 JUMPIFNOT                        R8 ; [+7]
      483 GETIMPORT                        R19 K124 [Vector2.new]
      485 LOADN                            R20 0
      486 LOADK                            R21 K145 [0.55]
      487 CALL                             R19 2 1
      488 SETTABLE                         R19 R18 R9
      489 JUMP                             ; [+9]
      490 JUMPIFNOT                        R10 ; [+8]
      491 GETIMPORT                        R19 K119 [Enum.RigLabel.Pelvis]
      493 GETIMPORT                        R20 K124 [Vector2.new]
      495 LOADN                            R21 0
      496 LOADK                            R22 K146 [0.28]
      497 CALL                             R20 2 1
      498 SETTABLE                         R20 R18 R19
      499 NEWTABLE                         R19 16 0
      501 GETIMPORT                        R20 K39 [Enum.RigLabel.Root]
      503 LOADNIL                          R21
      504 SETTABLE                         R21 R19 R20
      505 GETIMPORT                        R20 K55 [Enum.RigLabel.Neck]
      507 GETIMPORT                        R21 K50 [Enum.RigLabel.Chest]
      509 SETTABLE                         R21 R19 R20
      510 GETIMPORT                        R20 K58 [Enum.RigLabel.HeadBase]
      512 GETIMPORT                        R21 K55 [Enum.RigLabel.Neck]
      514 SETTABLE                         R21 R19 R20
      515 GETIMPORT                        R20 K61 [Enum.RigLabel.LeftClavicle]
      517 GETIMPORT                        R21 K50 [Enum.RigLabel.Chest]
      519 SETTABLE                         R21 R19 R20
      520 GETIMPORT                        R20 K66 [Enum.RigLabel.LeftShoulder]
      522 GETIMPORT                        R21 K61 [Enum.RigLabel.LeftClavicle]
      524 SETTABLE                         R21 R19 R20
      525 GETIMPORT                        R20 K71 [Enum.RigLabel.LeftElbow]
      527 GETIMPORT                        R21 K66 [Enum.RigLabel.LeftShoulder]
      529 SETTABLE                         R21 R19 R20
      530 GETIMPORT                        R20 K78 [Enum.RigLabel.LeftWrist]
      532 GETIMPORT                        R21 K71 [Enum.RigLabel.LeftElbow]
      534 SETTABLE                         R21 R19 R20
      535 GETIMPORT                        R20 K82 [Enum.RigLabel.LeftHip]
      537 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      539 SETTABLE                         R21 R19 R20
      540 GETIMPORT                        R20 K89 [Enum.RigLabel.LeftKnee]
      542 GETIMPORT                        R21 K82 [Enum.RigLabel.LeftHip]
      544 SETTABLE                         R21 R19 R20
      545 GETIMPORT                        R20 K97 [Enum.RigLabel.LeftAnkle]
      547 GETIMPORT                        R21 K89 [Enum.RigLabel.LeftKnee]
      549 SETTABLE                         R21 R19 R20
      550 GETIMPORT                        R20 K97 [Enum.RigLabel.LeftAnkle]
      552 SETTABLE                         R20 R19 R11
      553 MOVE                             R20 R15
      554 LOADNIL                          R21
      555 LOADNIL                          R22
      556 FORGPREP                         R20
      557 GETTABLE                         R25 R17 R24
      558 GETTABLE                         R26 R19 R24
      559 JUMPIFNOT                        R26 ; [+3]
      560 GETTABLE                         R28 R17 R26
      561 OR                               R27 R28 R26
      562 SETTABLE                         R27 R19 R25
      563 FORGLOOP                         R20 2 ; [-7]
      565 JUMPIFNOT                        R8 ; [+12]
      566 GETIMPORT                        R20 K47 [Enum.RigLabel.Waist]
      568 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      570 SETTABLE                         R21 R19 R20
      571 GETIMPORT                        R20 K47 [Enum.RigLabel.Waist]
      573 SETTABLE                         R20 R19 R9
      574 GETIMPORT                        R20 K50 [Enum.RigLabel.Chest]
      576 SETTABLE                         R9 R19 R20
      577 JUMP                             ; [+27]
      578 JUMPIFNOT                        R10 ; [+16]
      579 GETIMPORT                        R20 K119 [Enum.RigLabel.Pelvis]
      581 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      583 SETTABLE                         R21 R19 R20
      584 GETIMPORT                        R20 K47 [Enum.RigLabel.Waist]
      586 GETIMPORT                        R21 K119 [Enum.RigLabel.Pelvis]
      588 SETTABLE                         R21 R19 R20
      589 GETIMPORT                        R20 K50 [Enum.RigLabel.Chest]
      591 GETIMPORT                        R21 K47 [Enum.RigLabel.Waist]
      593 SETTABLE                         R21 R19 R20
      594 JUMP                             ; [+10]
      595 GETIMPORT                        R20 K47 [Enum.RigLabel.Waist]
      597 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      599 SETTABLE                         R21 R19 R20
      600 GETIMPORT                        R20 K50 [Enum.RigLabel.Chest]
      602 GETIMPORT                        R21 K47 [Enum.RigLabel.Waist]
      604 SETTABLE                         R21 R19 R20
      605 NEWTABLE                         R20 16 0
      607 GETIMPORT                        R21 K50 [Enum.RigLabel.Chest]
      609 GETIMPORT                        R22 K55 [Enum.RigLabel.Neck]
      611 SETTABLE                         R22 R20 R21
      612 GETIMPORT                        R21 K55 [Enum.RigLabel.Neck]
      614 GETIMPORT                        R22 K58 [Enum.RigLabel.HeadBase]
      616 SETTABLE                         R22 R20 R21
      617 GETIMPORT                        R21 K58 [Enum.RigLabel.HeadBase]
      619 LOADNIL                          R22
      620 SETTABLE                         R22 R20 R21
      621 GETIMPORT                        R21 K61 [Enum.RigLabel.LeftClavicle]
      623 GETIMPORT                        R22 K66 [Enum.RigLabel.LeftShoulder]
      625 SETTABLE                         R22 R20 R21
      626 GETIMPORT                        R21 K66 [Enum.RigLabel.LeftShoulder]
      628 GETIMPORT                        R22 K71 [Enum.RigLabel.LeftElbow]
      630 SETTABLE                         R22 R20 R21
      631 GETIMPORT                        R21 K71 [Enum.RigLabel.LeftElbow]
      633 GETIMPORT                        R22 K78 [Enum.RigLabel.LeftWrist]
      635 SETTABLE                         R22 R20 R21
      636 GETIMPORT                        R21 K78 [Enum.RigLabel.LeftWrist]
      638 LOADNIL                          R22
      639 SETTABLE                         R22 R20 R21
      640 GETIMPORT                        R21 K82 [Enum.RigLabel.LeftHip]
      642 GETIMPORT                        R22 K89 [Enum.RigLabel.LeftKnee]
      644 SETTABLE                         R22 R20 R21
      645 GETIMPORT                        R21 K89 [Enum.RigLabel.LeftKnee]
      647 GETIMPORT                        R22 K97 [Enum.RigLabel.LeftAnkle]
      649 SETTABLE                         R22 R20 R21
      650 GETIMPORT                        R21 K97 [Enum.RigLabel.LeftAnkle]
      652 SETTABLE                         R11 R20 R21
      653 LOADNIL                          R21
      654 SETTABLE                         R21 R20 R11
      655 MOVE                             R21 R15
      656 LOADNIL                          R22
      657 LOADNIL                          R23
      658 FORGPREP                         R21
      659 GETTABLE                         R26 R17 R25
      660 GETTABLE                         R27 R20 R25
      661 JUMPIFNOT                        R27 ; [+2]
      662 GETTABLE                         R28 R17 R27
      663 SETTABLE                         R28 R20 R26
      664 FORGLOOP                         R21 2 ; [-6]
      666 JUMPIFNOT                        R8 ; [+12]
      667 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      669 GETIMPORT                        R22 K47 [Enum.RigLabel.Waist]
      671 SETTABLE                         R22 R20 R21
      672 GETIMPORT                        R21 K47 [Enum.RigLabel.Waist]
      674 SETTABLE                         R9 R20 R21
      675 GETIMPORT                        R21 K50 [Enum.RigLabel.Chest]
      677 SETTABLE                         R21 R20 R9
      678 JUMP                             ; [+27]
      679 JUMPIFNOT                        R10 ; [+16]
      680 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      682 GETIMPORT                        R22 K119 [Enum.RigLabel.Pelvis]
      684 SETTABLE                         R22 R20 R21
      685 GETIMPORT                        R21 K119 [Enum.RigLabel.Pelvis]
      687 GETIMPORT                        R22 K47 [Enum.RigLabel.Waist]
      689 SETTABLE                         R22 R20 R21
      690 GETIMPORT                        R21 K47 [Enum.RigLabel.Waist]
      692 GETIMPORT                        R22 K50 [Enum.RigLabel.Chest]
      694 SETTABLE                         R22 R20 R21
      695 JUMP                             ; [+10]
      696 GETIMPORT                        R21 K39 [Enum.RigLabel.Root]
      698 GETIMPORT                        R22 K47 [Enum.RigLabel.Waist]
      700 SETTABLE                         R22 R20 R21
      701 GETIMPORT                        R21 K47 [Enum.RigLabel.Waist]
      703 GETIMPORT                        R22 K50 [Enum.RigLabel.Chest]
      705 SETTABLE                         R22 R20 R21
      706 GETTABLEKS                       R21 R2 K147 ["bodyRigLabels"]
      708 NEWTABLE                         R22 0 0
      710 MOVE                             R23 R15
      711 LOADNIL                          R24
      712 LOADNIL                          R25
      713 FORGPREP                         R23
      714 GETTABLE                         R28 R17 R27
      715 JUMPIFNOT                        R28 ; [+2]
      716 GETTABLE                         R29 R14 R27
      717 SETTABLE                         R29 R14 R28
      718 FORGLOOP                         R23 2 ; [-5]
      720 MOVE                             R23 R21
      721 LOADNIL                          R24
      722 LOADNIL                          R25
      723 FORGPREP                         R23
      724 GETTABLE                         R28 R14 R27
      725 JUMPIFNOT                        R28 ; [+10]
      726 MOVE                             R29 R28
      727 LOADNIL                          R30
      728 LOADNIL                          R31
      729 FORGPREP                         R29
      730 GETTABLE                         R36 R22 R33
      731 ORK                              R35 R36 K149 [0]
      732 ADDK                             R34 R35 K148 [1]
      733 SETTABLE                         R34 R22 R33
      734 FORGLOOP                         R29 2 ; [-5]
      736 FORGLOOP                         R23 2 ; [-13]
      738 MOVE                             R23 R22
      739 LOADNIL                          R24
      740 LOADNIL                          R25
      741 FORGPREP                         R23
      742 DIVRK                            R28 R148 K27 ["rootDepthPenalty"]
      743 SETTABLE                         R28 R22 R26
      744 FORGLOOP                         R23 2 ; [-3]
      746 DUPCLOSURE                       R23 K150 [PROTO_0]
      747 DUPCLOSURE                       R24 K151 [PROTO_1]
      748 CAPTURE                          VAL R14
      749 CAPTURE                          VAL R22
      750 CAPTURE                          VAL R13
      751 CAPTURE                          VAL R16
      752 CAPTURE                          VAL R23
      753 DUPCLOSURE                       R25 K152 [PROTO_2]
      754 CAPTURE                          VAL R14
      755 DUPCLOSURE                       R26 K153 [PROTO_3]
      756 CAPTURE                          VAL R18
      757 CAPTURE                          VAL R13
      758 NEWTABLE                         R27 8 0
      760 DUPCLOSURE                       R28 K154 [PROTO_8]
      761 CAPTURE                          VAL R21
      762 CAPTURE                          VAL R2
      763 CAPTURE                          VAL R7
      764 CAPTURE                          VAL R5
      765 CAPTURE                          VAL R6
      766 CAPTURE                          VAL R13
      767 CAPTURE                          VAL R24
      768 CAPTURE                          VAL R26
      769 CAPTURE                          VAL R19
      770 CAPTURE                          VAL R3
      771 CAPTURE                          VAL R11
      772 CAPTURE                          VAL R12
      773 CAPTURE                          VAL R25
      774 CAPTURE                          VAL R20
      775 CAPTURE                          VAL R4
      776 SETTABLEKS                       R28 R27 K155 ["setup"]
      778 SETTABLEKS                       R23 R27 K156 ["guessJointSide"]
      780 SETTABLEKS                       R24 R27 K157 ["nameScore"]
      782 SETTABLEKS                       R26 R27 K158 ["positionScore"]
      784 SETTABLEKS                       R17 R27 K159 ["symmetryCounterparts"]
      786 SETTABLEKS                       R19 R27 K160 ["parentRigLabel"]
      788 SETTABLEKS                       R20 R27 K161 ["directChildRigLabel"]
      790 RETURN                           R27 1
