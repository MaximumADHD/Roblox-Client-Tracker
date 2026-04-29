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
       73 NEWTABLE                         R6 0 0
       75 NAMECALL                         R7 R3 K9 ["GetDescendants"]
       77 CALL                             R7 1 3
       78 FORGPREP                         R7
       79 GETUPVAL                         R13 2
       80 CALL                             R13 0 1
       81 JUMPIFNOT                        R13 ; [+6]
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R12 R13 K11 ["isValidTJoint"]
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 JUMP                             ; [+9]
       88 LOADK                            R14 K13 ["Motor6D"]
       89 NAMECALL                         R12 R11 K15 ["IsA"]
       91 CALL                             R12 2 1
       92 JUMPIF                           R12 ; [+4]
       93 LOADK                            R14 K12 ["Bone"]
       94 NAMECALL                         R12 R11 K15 ["IsA"]
       96 CALL                             R12 2 1
       97 JUMPIFNOT                        R12 ; [+28]
       98 GETUPVAL                         R14 1
       99 GETTABLEKS                       R13 R14 K16 ["getJointPosition"]
      101 MOVE                             R14 R11
      102 CALL                             R13 1 1
      103 DUPTABLE                         R14 K21 [{"joint", "name", "parent", "position"}]
      104 SETTABLEKS                       R11 R14 K17 ["joint"]
      106 GETTABLEKS                       R15 R11 K10 ["Name"]
      108 SETTABLEKS                       R15 R14 K18 ["name"]
      110 LOADNIL                          R15
      111 SETTABLEKS                       R15 R14 K19 ["parent"]
      113 SETTABLEKS                       R13 R14 K20 ["position"]
      115 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
      117 MOVE                             R16 R5
      118 MOVE                             R17 R14
      119 GETIMPORT                        R15 K24 [table.insert]
      121 CALL                             R15 2 0
      122 GETUPVAL                         R15 3
      123 CALL                             R15 0 1
      124 JUMPIFNOT                        R15 ; [+1]
      125 SETTABLE                         R14 R6 R11
      126 FORGLOOP                         R7 2 ; [-48]
      128 GETUPVAL                         R7 3
      129 CALL                             R7 0 1
      130 JUMPIFNOT                        R7 ; [+42]
      131 MOVE                             R7 R5
      132 LOADNIL                          R8
      133 LOADNIL                          R9
      134 FORGPREP                         R7
      135 GETTABLEKS                       R13 R11 K17 ["joint"]
      137 GETTABLEKS                       R12 R13 K14 ["Parent"]
      139 GETTABLEKS                       R13 R11 K17 ["joint"]
      141 LOADK                            R15 K13 ["Motor6D"]
      142 NAMECALL                         R13 R13 K15 ["IsA"]
      144 CALL                             R13 2 1
      145 JUMPIFNOT                        R13 ; [+11]
      146 GETTABLEKS                       R14 R11 K17 ["joint"]
      148 GETTABLEKS                       R13 R14 K25 ["Part0"]
      150 MOVE                             R14 R13
      151 JUMPIFNOT                        R14 ; [+4]
      152 LOADK                            R16 K13 ["Motor6D"]
      153 NAMECALL                         R14 R13 K2 ["FindFirstChildWhichIsA"]
      155 CALL                             R14 2 1
      156 MOVE                             R12 R14
      157 GETUPVAL                         R15 1
      158 GETTABLEKS                       R14 R15 K11 ["isValidTJoint"]
      160 MOVE                             R15 R12
      161 CALL                             R14 1 1
      162 JUMPIFNOT                        R14 ; [+2]
      163 MOVE                             R13 R12
      164 JUMP                             ; [+1]
      165 LOADNIL                          R13
      166 JUMPIFNOT                        R13 ; [+3]
      167 GETTABLE                         R14 R6 R13
      168 SETTABLEKS                       R14 R11 K19 ["parent"]
      170 FORGLOOP                         R7 2 ; [-36]
      172 JUMP                             ; [+50]
      173 MOVE                             R7 R5
      174 LOADNIL                          R8
      175 LOADNIL                          R9
      176 FORGPREP                         R7
      177 MOVE                             R12 R5
      178 LOADNIL                          R13
      179 LOADNIL                          R14
      180 FORGPREP                         R12
      181 GETTABLEKS                       R18 R11 K17 ["joint"]
      183 GETTABLEKS                       R17 R18 K14 ["Parent"]
      185 GETTABLEKS                       R18 R11 K17 ["joint"]
      187 LOADK                            R20 K13 ["Motor6D"]
      188 NAMECALL                         R18 R18 K15 ["IsA"]
      190 CALL                             R18 2 1
      191 JUMPIFNOT                        R18 ; [+11]
      192 GETTABLEKS                       R19 R11 K17 ["joint"]
      194 GETTABLEKS                       R18 R19 K25 ["Part0"]
      196 MOVE                             R19 R18
      197 JUMPIFNOT                        R19 ; [+4]
      198 LOADK                            R21 K13 ["Motor6D"]
      199 NAMECALL                         R19 R18 K2 ["FindFirstChildWhichIsA"]
      201 CALL                             R19 2 1
      202 MOVE                             R17 R19
      203 GETUPVAL                         R20 1
      204 GETTABLEKS                       R19 R20 K11 ["isValidTJoint"]
      206 MOVE                             R20 R17
      207 CALL                             R19 1 1
      208 JUMPIFNOT                        R19 ; [+2]
      209 MOVE                             R18 R17
      210 JUMP                             ; [+1]
      211 LOADNIL                          R18
      212 GETTABLEKS                       R19 R16 K17 ["joint"]
      214 JUMPIFNOTEQ                      R18 R19 ; [+4]
      216 SETTABLEKS                       R16 R11 K19 ["parent"]
      218 JUMP                             ; [+2]
      219 FORGLOOP                         R12 2 ; [-39]
      221 FORGLOOP                         R7 2 ; [-45]
      223 NEWTABLE                         R7 0 0
      225 MOVE                             R8 R5
      226 LOADNIL                          R9
      227 LOADNIL                          R10
      228 FORGPREP                         R8
      229 GETIMPORT                        R13 K28 [Vector2.new]
      231 GETTABLEKS                       R15 R12 K20 ["position"]
      233 GETTABLEKS                       R14 R15 K29 ["X"]
      235 GETTABLEKS                       R16 R12 K20 ["position"]
      237 GETTABLEKS                       R15 R16 K30 ["Y"]
      239 CALL                             R13 2 1
      240 SETTABLE                         R13 R7 R11
      241 FORGLOOP                         R8 2 ; [-13]
      243 GETUPVAL                         R9 1
      244 GETTABLEKS                       R8 R9 K31 ["normalizePoints"]
      246 MOVE                             R9 R7
      247 CALL                             R8 1 0
      248 NEWTABLE                         R8 0 0
      250 MOVE                             R9 R5
      251 LOADNIL                          R10
      252 LOADNIL                          R11
      253 FORGPREP                         R9
      254 GETTABLEKS                       R16 R13 K18 ["name"]
      256 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      258 MOVE                             R15 R8
      259 GETIMPORT                        R14 K24 [table.insert]
      261 CALL                             R14 2 0
      262 FORGLOOP                         R9 2 ; [-9]
      264 GETUPVAL                         R10 1
      265 GETTABLEKS                       R9 R10 K32 ["commonPrefix"]
      267 MOVE                             R10 R8
      268 CALL                             R9 1 1
      269 GETUPVAL                         R11 1
      270 GETTABLEKS                       R10 R11 K33 ["commonSuffix"]
      272 MOVE                             R11 R8
      273 CALL                             R10 1 1
      274 MOVE                             R11 R5
      275 LOADNIL                          R12
      276 LOADNIL                          R13
      277 FORGPREP                         R11
      278 GETUPVAL                         R17 1
      279 GETTABLEKS                       R16 R17 K34 ["trimStart"]
      281 GETTABLEKS                       R17 R15 K18 ["name"]
      283 MOVE                             R18 R9
      284 CALL                             R16 2 1
      285 SETTABLEKS                       R16 R15 K18 ["name"]
      287 GETUPVAL                         R17 1
      288 GETTABLEKS                       R16 R17 K35 ["trimEnd"]
      290 GETTABLEKS                       R17 R15 K18 ["name"]
      292 MOVE                             R18 R10
      293 CALL                             R16 2 1
      294 SETTABLEKS                       R16 R15 K18 ["name"]
      296 FORGLOOP                         R11 2 ; [-19]
      298 NEWTABLE                         R11 0 0
      300 MOVE                             R12 R5
      301 LOADNIL                          R13
      302 LOADNIL                          R14
      303 FORGPREP                         R12
      304 GETIMPORT                        R17 K37 [table.find]
      306 MOVE                             R18 R11
      307 GETTABLEKS                       R19 R16 K18 ["name"]
      309 CALL                             R17 2 1
      310 JUMPIFNOT                        R17 ; [+4]
      311 GETIMPORT                        R17 K39 [warn]
      313 LOADK                            R18 K40 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      314 CALL                             R17 1 0
      315 GETTABLEKS                       R19 R16 K18 ["name"]
      317 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      319 MOVE                             R18 R11
      320 GETIMPORT                        R17 K24 [table.insert]
      322 CALL                             R17 2 0
      323 FORGLOOP                         R12 2 ; [-20]
      325 NEWTABLE                         R12 0 0
      327 NEWTABLE                         R13 0 0
      329 NEWTABLE                         R14 0 0
      331 GETUPVAL                         R15 3
      332 CALL                             R15 0 1
      333 JUMPIFNOT                        R15 ; [+54]
      334 MOVE                             R15 R5
      335 LOADNIL                          R16
      336 LOADNIL                          R17
      337 FORGPREP                         R15
      338 SETTABLE                         R18 R12 R19
      339 FORGLOOP                         R15 2 ; [-2]
      341 MOVE                             R15 R5
      342 LOADNIL                          R16
      343 LOADNIL                          R17
      344 FORGPREP                         R15
      345 NEWTABLE                         R20 0 0
      347 GETTABLEKS                       R21 R19 K17 ["joint"]
      349 NAMECALL                         R21 R21 K41 ["GetChildren"]
      351 CALL                             R21 1 3
      352 FORGPREP                         R21
      353 GETUPVAL                         R27 1
      354 GETTABLEKS                       R26 R27 K11 ["isValidTJoint"]
      356 MOVE                             R27 R25
      357 CALL                             R26 1 1
      358 JUMPIFNOT                        R26 ; [+7]
      359 FASTCALL2                        TABLE_INSERT R20 R25 ; [+5]
      361 MOVE                             R27 R20
      362 MOVE                             R28 R25
      363 GETIMPORT                        R26 K24 [table.insert]
      365 CALL                             R26 2 0
      366 FORGLOOP                         R21 2 ; [-14]
      368 GETTABLEKS                       R21 R19 K17 ["joint"]
      370 SETTABLE                         R20 R13 R21
      371 FORGLOOP                         R15 2 ; [-27]
      373 MOVE                             R15 R5
      374 LOADNIL                          R16
      375 LOADNIL                          R17
      376 FORGPREP                         R15
      377 GETTABLEKS                       R20 R19 K17 ["joint"]
      379 GETTABLEKS                       R22 R19 K17 ["joint"]
      381 NAMECALL                         R22 R22 K9 ["GetDescendants"]
      383 CALL                             R22 1 1
      384 LENGTH                           R21 R22
      385 SETTABLE                         R21 R14 R20
      386 FORGLOOP                         R15 2 ; [-10]
      388 NEWTABLE                         R15 0 0
      390 MOVE                             R16 R5
      391 LOADNIL                          R17
      392 LOADNIL                          R18
      393 FORGPREP                         R16
      394 GETTABLEKS                       R21 R20 K17 ["joint"]
      396 NEWTABLE                         R22 0 0
      398 SETTABLE                         R22 R15 R21
      399 LOADNIL                          R21
      400 GETUPVAL                         R22 3
      401 CALL                             R22 0 1
      402 JUMPIFNOT                        R22 ; [+3]
      403 GETTABLE                         R22 R12 R20
      404 GETTABLE                         R21 R7 R22
      405 JUMP                             ; [+12]
      406 GETIMPORT                        R22 K37 [table.find]
      408 MOVE                             R23 R5
      409 MOVE                             R24 R20
      410 CALL                             R22 2 1
      411 JUMPIF                           R22 ; [+5]
      412 GETIMPORT                        R23 K39 [warn]
      414 LOADK                            R24 K42 ["joint not found in jointRefs array"]
      415 CALL                             R23 1 0
      416 JUMP                             ; [+30]
      417 GETTABLE                         R21 R7 R22
      418 GETUPVAL                         R22 0
      419 LOADNIL                          R23
      420 LOADNIL                          R24
      421 FORGPREP                         R22
      422 GETTABLEKS                       R28 R20 K17 ["joint"]
      424 GETTABLE                         R27 R15 R28
      425 GETUPVAL                         R31 4
      426 GETTABLEKS                       R30 R31 K43 ["nameWeight"]
      428 GETUPVAL                         R31 5
      429 GETTABLEKS                       R32 R20 K18 ["name"]
      431 MOVE                             R33 R26
      432 CALL                             R31 2 1
      433 MUL                              R29 R30 R31
      434 GETUPVAL                         R32 4
      435 GETTABLEKS                       R31 R32 K44 ["positionWeight"]
      437 GETUPVAL                         R32 6
      438 MOVE                             R33 R21
      439 MOVE                             R34 R20
      440 MOVE                             R35 R26
      441 CALL                             R32 3 1
      442 MUL                              R30 R31 R32
      443 ADD                              R28 R29 R30
      444 SETTABLE                         R28 R27 R26
      445 FORGLOOP                         R22 2 ; [-24]
      447 FORGLOOP                         R16 2 ; [-54]
      449 MOVE                             R16 R5
      450 LOADNIL                          R17
      451 LOADNIL                          R18
      452 FORGPREP                         R16
      453 GETUPVAL                         R21 0
      454 LOADNIL                          R22
      455 LOADNIL                          R23
      456 FORGPREP                         R21
      457 GETUPVAL                         R27 7
      458 GETTABLE                         R26 R27 R25
      459 JUMPIFEQKNIL                     R26 ; [+49]
      461 GETTABLEKS                       R27 R20 K19 ["parent"]
      463 JUMPIFNOT                        R27 ; [+45]
      464 LOADB                            R27 1
      465 GETUPVAL                         R28 8
      466 CALL                             R28 0 1
      467 JUMPIFNOT                        R28 ; [+14]
      468 GETUPVAL                         R28 9
      469 JUMPIFEQ                         R25 R28 ; [+4]
      471 GETUPVAL                         R28 10
      472 JUMPIFNOTEQ                      R25 R28 ; [+9]
      474 GETUPVAL                         R28 11
      475 GETTABLEKS                       R30 R20 K19 ["parent"]
      477 GETTABLEKS                       R29 R30 K18 ["name"]
      479 MOVE                             R30 R26
      480 CALL                             R28 2 1
      481 MOVE                             R27 R28
      482 JUMPIFNOT                        R27 ; [+26]
      483 GETTABLEKS                       R30 R20 K19 ["parent"]
      485 GETTABLEKS                       R29 R30 K17 ["joint"]
      487 GETTABLE                         R28 R15 R29
      488 JUMPIFNOT                        R28 ; [+6]
      489 GETTABLEKS                       R31 R20 K19 ["parent"]
      491 GETTABLEKS                       R30 R31 K17 ["joint"]
      493 GETTABLE                         R29 R15 R30
      494 GETTABLE                         R28 R29 R26
      495 JUMPIFEQKNIL                     R28 ; [+13]
      497 GETTABLEKS                       R30 R20 K17 ["joint"]
      499 GETTABLE                         R29 R15 R30
      500 GETTABLE                         R30 R29 R25
      501 LOADN                            R32 1
      502 GETUPVAL                         R35 4
      503 GETTABLEKS                       R34 R35 K45 ["parentInfluenceWeight"]
      505 MUL                              R33 R34 R28
      506 ADD                              R31 R32 R33
      507 MUL                              R30 R30 R31
      508 SETTABLE                         R30 R29 R25
      509 GETUPVAL                         R28 12
      510 GETTABLE                         R27 R28 R25
      511 GETUPVAL                         R28 3
      512 CALL                             R28 0 1
      513 JUMPIFNOT                        R28 ; [+43]
      514 GETTABLEKS                       R29 R20 K17 ["joint"]
      516 GETTABLE                         R28 R13 R29
      517 JUMPIFEQKNIL                     R27 ; [+104]
      519 JUMPIFNOT                        R28 ; [+102]
      520 LENGTH                           R29 R28
      521 LOADN                            R30 0
      522 JUMPIFNOTLT                      R30 R29 ; [+99]
      524 LOADK                            R29 K46 [-∞]
      525 MOVE                             R30 R28
      526 LOADNIL                          R31
      527 LOADNIL                          R32
      528 FORGPREP                         R30
      529 GETTABLE                         R36 R15 R34
      530 GETTABLE                         R35 R36 R27
      531 JUMPIFNOT                        R35 ; [+8]
      532 FASTCALL2                        MATH_MAX R29 R35 ; [+5]
      534 MOVE                             R37 R29
      535 MOVE                             R38 R35
      536 GETIMPORT                        R36 K49 [math.max]
      538 CALL                             R36 2 1
      539 MOVE                             R29 R36
      540 FORGLOOP                         R30 2 ; [-12]
      542 JUMPIFEQKN                       R29 K46 [-∞] ; [+79]
      544 GETTABLEKS                       R31 R20 K17 ["joint"]
      546 GETTABLE                         R30 R15 R31
      547 GETTABLE                         R31 R30 R25
      548 LOADN                            R33 1
      549 GETUPVAL                         R36 4
      550 GETTABLEKS                       R35 R36 K50 ["childInfluenceWeight"]
      552 MUL                              R34 R35 R29
      553 ADD                              R32 R33 R34
      554 MUL                              R31 R31 R32
      555 SETTABLE                         R31 R30 R25
      556 JUMP                             ; [+65]
      557 GETTABLEKS                       R28 R20 K17 ["joint"]
      559 NAMECALL                         R28 R28 K41 ["GetChildren"]
      561 CALL                             R28 1 1
      562 JUMPIFEQKNIL                     R27 ; [+59]
      564 LENGTH                           R29 R28
      565 LOADN                            R30 0
      566 JUMPIFNOTLT                      R30 R29 ; [+55]
      568 LOADK                            R29 K46 [-∞]
      569 MOVE                             R30 R28
      570 LOADNIL                          R31
      571 LOADNIL                          R32
      572 FORGPREP                         R30
      573 GETUPVAL                         R36 2
      574 CALL                             R36 0 1
      575 JUMPIFNOT                        R36 ; [+6]
      576 GETUPVAL                         R36 1
      577 GETTABLEKS                       R35 R36 K11 ["isValidTJoint"]
      579 MOVE                             R36 R34
      580 CALL                             R35 1 1
      581 JUMP                             ; [+9]
      582 LOADK                            R37 K13 ["Motor6D"]
      583 NAMECALL                         R35 R34 K15 ["IsA"]
      585 CALL                             R35 2 1
      586 JUMPIF                           R35 ; [+4]
      587 LOADK                            R37 K12 ["Bone"]
      588 NAMECALL                         R35 R34 K15 ["IsA"]
      590 CALL                             R35 2 1
      591 JUMPIFNOT                        R35 ; [+14]
      592 GETTABLE                         R36 R15 R34
      593 JUMPIFNOT                        R36 ; [+2]
      594 GETTABLE                         R37 R15 R34
      595 GETTABLE                         R36 R37 R27
      596 JUMPIFEQKNIL                     R36 ; [+9]
      598 FASTCALL2                        MATH_MAX R29 R36 ; [+5]
      600 MOVE                             R38 R29
      601 MOVE                             R39 R36
      602 GETIMPORT                        R37 K49 [math.max]
      604 CALL                             R37 2 1
      605 MOVE                             R29 R37
      606 FORGLOOP                         R30 2 ; [-34]
      608 JUMPIFEQKN                       R29 K46 [-∞] ; [+13]
      610 GETTABLEKS                       R31 R20 K17 ["joint"]
      612 GETTABLE                         R30 R15 R31
      613 GETTABLE                         R31 R30 R25
      614 LOADN                            R33 1
      615 GETUPVAL                         R36 4
      616 GETTABLEKS                       R35 R36 K50 ["childInfluenceWeight"]
      618 MUL                              R34 R35 R29
      619 ADD                              R32 R33 R34
      620 MUL                              R31 R31 R32
      621 SETTABLE                         R31 R30 R25
      622 GETIMPORT                        R28 K53 [Enum.RigLabel.Root]
      624 JUMPIFNOTEQ                      R25 R28 ; [+20]
      626 GETUPVAL                         R30 1
      627 GETTABLEKS                       R29 R30 K55 ["getDepth"]
      629 GETTABLEKS                       R30 R20 K17 ["joint"]
      631 MOVE                             R31 R3
      632 CALL                             R29 2 1
      633 SUBK                             R28 R29 K54 [1]
      634 GETTABLEKS                       R30 R20 K17 ["joint"]
      636 GETTABLE                         R29 R15 R30
      637 GETTABLE                         R30 R29 R25
      638 GETUPVAL                         R33 4
      639 GETTABLEKS                       R32 R33 K56 ["rootDepthPenalty"]
      641 MUL                              R31 R28 R32
      642 SUB                              R30 R30 R31
      643 SETTABLE                         R30 R29 R25
      644 JUMP                             ; [+38]
      645 GETIMPORT                        R28 K58 [Enum.RigLabel.LeftWrist]
      647 JUMPIFEQ                         R25 R28 ; [+5]
      649 GETIMPORT                        R28 K60 [Enum.RigLabel.RightWrist]
      651 JUMPIFNOTEQ                      R25 R28 ; [+31]
      653 GETUPVAL                         R29 3
      654 CALL                             R29 0 1
      655 JUMPIFNOT                        R29 ; [+4]
      656 GETTABLEKS                       R29 R20 K17 ["joint"]
      658 GETTABLE                         R28 R14 R29
      659 JUMP                             ; [+6]
      660 GETTABLEKS                       R29 R20 K17 ["joint"]
      662 NAMECALL                         R29 R29 K9 ["GetDescendants"]
      664 CALL                             R29 1 1
      665 LENGTH                           R28 R29
      666 GETTABLEKS                       R30 R20 K17 ["joint"]
      668 GETTABLE                         R29 R15 R30
      669 GETTABLE                         R30 R29 R25
      670 FASTCALL2K                       MATH_MIN R28 K61 ; [+5]
      672 MOVE                             R33 R28
      673 LOADK                            R34 K61 [15]
      674 GETIMPORT                        R32 K63 [math.min]
      676 CALL                             R32 2 1
      677 GETUPVAL                         R34 4
      678 GETTABLEKS                       R33 R34 K64 ["handBoostPerDescendant"]
      680 MUL                              R31 R32 R33
      681 ADD                              R30 R30 R31
      682 SETTABLE                         R30 R29 R25
      683 FORGLOOP                         R21 2 ; [-227]
      685 FORGLOOP                         R16 2 ; [-233]
      687 GETUPVAL                         R16 13
      688 CALL                             R16 0 1
      689 JUMPIFNOT                        R16 ; [+29]
      690 MOVE                             R16 R5
      691 LOADNIL                          R17
      692 LOADNIL                          R18
      693 FORGPREP                         R16
      694 GETUPVAL                         R21 0
      695 LOADNIL                          R22
      696 LOADNIL                          R23
      697 FORGPREP                         R21
      698 GETTABLEKS                       R27 R20 K17 ["joint"]
      700 GETTABLEKS                       R26 R27 K10 ["Name"]
      702 GETTABLEKS                       R27 R25 K10 ["Name"]
      704 JUMPIFNOTEQ                      R26 R27 ; [+10]
      706 GETTABLEKS                       R27 R20 K17 ["joint"]
      708 GETTABLE                         R26 R15 R27
      709 GETTABLE                         R27 R26 R25
      710 GETUPVAL                         R29 4
      711 GETTABLEKS                       R28 R29 K65 ["exactNameMatchBonus"]
      713 ADD                              R27 R27 R28
      714 SETTABLE                         R27 R26 R25
      715 FORGLOOP                         R21 2 ; [-18]
      717 FORGLOOP                         R16 2 ; [-24]
      719 NEWTABLE                         R16 0 0
      721 MOVE                             R17 R5
      722 LOADNIL                          R18
      723 LOADNIL                          R19
      724 FORGPREP                         R17
      725 GETUPVAL                         R22 0
      726 LOADNIL                          R23
      727 LOADNIL                          R24
      728 FORGPREP                         R22
      729 DUPTABLE                         R29 K68 [{"joint", "rigLabel", "score"}]
      730 GETTABLEKS                       R30 R21 K17 ["joint"]
      732 SETTABLEKS                       R30 R29 K17 ["joint"]
      734 SETTABLEKS                       R26 R29 K66 ["rigLabel"]
      736 GETTABLEKS                       R32 R21 K17 ["joint"]
      738 GETTABLE                         R31 R15 R32
      739 GETTABLE                         R30 R31 R26
      740 SETTABLEKS                       R30 R29 K67 ["score"]
      742 FASTCALL2                        TABLE_INSERT R16 R29 ; [+4]
      744 MOVE                             R28 R16
      745 GETIMPORT                        R27 K24 [table.insert]
      747 CALL                             R27 2 0
      748 FORGLOOP                         R22 2 ; [-20]
      750 FORGLOOP                         R17 2 ; [-26]
      752 GETIMPORT                        R17 K70 [table.sort]
      754 MOVE                             R18 R16
      755 DUPCLOSURE                       R19 K71 [PROTO_4]
      756 CALL                             R17 2 0
      757 NEWTABLE                         R17 0 0
      759 NEWTABLE                         R18 0 0
      761 NEWTABLE                         R19 0 0
      763 NEWTABLE                         R20 0 0
      765 NEWCLOSURE                       R21 P1
      766 CAPTURE                          UPVAL U3
      767 CAPTURE                          VAL R19
      768 CAPTURE                          VAL R17
      769 NEWCLOSURE                       R22 P2
      770 CAPTURE                          UPVAL U3
      771 CAPTURE                          VAL R20
      772 CAPTURE                          VAL R18
      773 NEWCLOSURE                       R23 P3
      774 CAPTURE                          UPVAL U3
      775 CAPTURE                          VAL R19
      776 CAPTURE                          VAL R20
      777 CAPTURE                          VAL R17
      778 CAPTURE                          VAL R18
      779 GETUPVAL                         R24 2
      780 CALL                             R24 0 1
      781 JUMPIFNOT                        R24 ; [+33]
      782 GETUPVAL                         R24 0
      783 LOADNIL                          R25
      784 LOADNIL                          R26
      785 FORGPREP                         R24
      786 MOVE                             R31 R28
      787 NAMECALL                         R29 R0 K72 ["GetJoint"]
      789 CALL                             R29 2 1
      790 JUMPIFNOT                        R29 ; [+22]
      791 GETUPVAL                         R30 3
      792 CALL                             R30 0 1
      793 JUMPIFNOT                        R30 ; [+5]
      794 LOADB                            R30 1
      795 SETTABLE                         R30 R19 R29
      796 LOADB                            R30 1
      797 SETTABLE                         R30 R20 R28
      798 JUMP                             ; [+14]
      799 FASTCALL2                        TABLE_INSERT R17 R29 ; [+5]
      801 MOVE                             R31 R17
      802 MOVE                             R32 R29
      803 GETIMPORT                        R30 K24 [table.insert]
      805 CALL                             R30 2 0
      806 FASTCALL2                        TABLE_INSERT R18 R28 ; [+5]
      808 MOVE                             R31 R18
      809 MOVE                             R32 R28
      810 GETIMPORT                        R30 K24 [table.insert]
      812 CALL                             R30 2 0
      813 FORGLOOP                         R24 2 ; [-28]
      815 MOVE                             R24 R16
      816 LOADNIL                          R25
      817 LOADNIL                          R26
      818 FORGPREP                         R24
      819 GETTABLEKS                       R29 R28 K67 ["score"]
      821 GETUPVAL                         R31 4
      822 GETTABLEKS                       R30 R31 K73 ["minScoreThreshold"]
      824 JUMPIFLT                         R29 R30 ; [+78]
      826 GETTABLEKS                       R30 R28 K17 ["joint"]
      828 GETUPVAL                         R31 3
      829 CALL                             R31 0 1
      830 JUMPIFNOT                        R31 ; [+6]
      831 GETTABLE                         R31 R19 R30
      832 JUMPIFEQKB                       R31 TRUE ; [+2]
      834 LOADB                            R29 0 +1
      835 LOADB                            R29 1
      836 JUMP                             ; [+9]
      837 GETIMPORT                        R31 K37 [table.find]
      839 MOVE                             R32 R17
      840 MOVE                             R33 R30
      841 CALL                             R31 2 1
      842 JUMPIFNOTEQKNIL                  R31 ; [+2]
      844 LOADB                            R29 0 +1
      845 LOADB                            R29 1
      846 JUMPIF                           R29 ; [+54]
      847 GETTABLEKS                       R30 R28 K66 ["rigLabel"]
      849 GETUPVAL                         R31 3
      850 CALL                             R31 0 1
      851 JUMPIFNOT                        R31 ; [+6]
      852 GETTABLE                         R31 R20 R30
      853 JUMPIFEQKB                       R31 TRUE ; [+2]
      855 LOADB                            R29 0 +1
      856 LOADB                            R29 1
      857 JUMP                             ; [+9]
      858 GETIMPORT                        R31 K37 [table.find]
      860 MOVE                             R32 R18
      861 MOVE                             R33 R30
      862 CALL                             R31 2 1
      863 JUMPIFNOTEQKNIL                  R31 ; [+2]
      865 LOADB                            R29 0 +1
      866 LOADB                            R29 1
      867 JUMPIF                           R29 ; [+33]
      868 GETTABLEKS                       R29 R28 K17 ["joint"]
      870 GETTABLEKS                       R30 R28 K66 ["rigLabel"]
      872 GETUPVAL                         R31 3
      873 CALL                             R31 0 1
      874 JUMPIFNOT                        R31 ; [+5]
      875 LOADB                            R31 1
      876 SETTABLE                         R31 R19 R29
      877 LOADB                            R31 1
      878 SETTABLE                         R31 R20 R30
      879 JUMP                             ; [+14]
      880 FASTCALL2                        TABLE_INSERT R17 R29 ; [+5]
      882 MOVE                             R32 R17
      883 MOVE                             R33 R29
      884 GETIMPORT                        R31 K24 [table.insert]
      886 CALL                             R31 2 0
      887 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      889 MOVE                             R32 R18
      890 MOVE                             R33 R30
      891 GETIMPORT                        R31 K24 [table.insert]
      893 CALL                             R31 2 0
      894 GETTABLEKS                       R31 R28 K66 ["rigLabel"]
      896 GETTABLEKS                       R32 R28 K17 ["joint"]
      898 NAMECALL                         R29 R0 K0 ["SetJoint"]
      900 CALL                             R29 3 0
      901 FORGLOOP                         R24 2 ; [-83]
      903 RETURN                           R0 0

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
       26 GETTABLEKS                       R5 R6 K9 ["getFFlagAdaptiveAnimationAutomapperNonHumanoidFix"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Flags"]
       33 GETTABLEKS                       R6 R7 K10 ["getFFlagAdaptiveAnimationAutomapperPerf"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R8 R0 K7 ["Flags"]
       40 GETTABLEKS                       R7 R8 K11 ["getFFlagAdaptiveAnimationBetaImprovements"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K12 ["hasSpine"]
       45 GETTABLEKS                       R8 R2 K13 ["spineLabel"]
       47 GETTABLEKS                       R9 R2 K14 ["hasPelvis"]
       49 GETTABLEKS                       R10 R2 K15 ["LeftToeBase"]
       51 GETTABLEKS                       R11 R2 K16 ["RightToeBase"]
       53 DUPTABLE                         R12 K29 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant", "exactNameMatchBonus"}]
       54 LOADK                            R13 K30 [0.3]
       55 SETTABLEKS                       R13 R12 K17 ["tokenLengthWeight"]
       57 LOADN                            R13 1
       58 SETTABLEKS                       R13 R12 K18 ["sideLeftRightWeight"]
       60 LOADK                            R13 K30 [0.3]
       61 SETTABLEKS                       R13 R12 K19 ["parentInfluenceWeight"]
       63 LOADK                            R13 K31 [0.1]
       64 SETTABLEKS                       R13 R12 K20 ["childInfluenceWeight"]
       66 LOADK                            R13 K32 [0.02]
       67 SETTABLEKS                       R13 R12 K21 ["leftRightPositionThreshold"]
       69 LOADK                            R13 K31 [0.1]
       70 SETTABLEKS                       R13 R12 K22 ["distanceSmoothingKernel"]
       72 LOADK                            R13 K33 [0.5]
       73 SETTABLEKS                       R13 R12 K23 ["minScoreThreshold"]
       75 LOADN                            R13 3
       76 SETTABLEKS                       R13 R12 K24 ["nameWeight"]
       78 LOADK                            R13 K33 [0.5]
       79 SETTABLEKS                       R13 R12 K25 ["positionWeight"]
       81 LOADK                            R13 K33 [0.5]
       82 SETTABLEKS                       R13 R12 K26 ["rootDepthPenalty"]
       84 LOADK                            R13 K34 [0.05]
       85 SETTABLEKS                       R13 R12 K27 ["handBoostPerDescendant"]
       87 LOADN                            R13 100
       88 SETTABLEKS                       R13 R12 K28 ["exactNameMatchBonus"]
       90 NEWTABLE                         R13 32 0
       92 GETIMPORT                        R14 K38 [Enum.RigLabel.Root]
       94 NEWTABLE                         R15 0 6
       96 LOADK                            R16 K39 ["root"]
       97 LOADK                            R17 K40 ["torso"]
       98 LOADK                            R18 K41 ["lower-torso"]
       99 LOADK                            R19 K42 ["waist"]
      100 LOADK                            R20 K43 ["hips"]
      101 LOADK                            R21 K44 ["pelvis"]
      102 SETLIST                          R15 R16 6 [1]
      104 SETTABLE                         R15 R13 R14
      105 GETIMPORT                        R14 K46 [Enum.RigLabel.Waist]
      107 NEWTABLE                         R15 0 1
      109 LOADK                            R16 K47 ["chest"]
      110 SETLIST                          R15 R16 1 [1]
      112 SETTABLE                         R15 R13 R14
      113 GETIMPORT                        R14 K49 [Enum.RigLabel.Chest]
      115 NEWTABLE                         R15 0 5
      117 LOADK                            R16 K50 ["upper-torso"]
      118 LOADK                            R17 K40 ["torso"]
      119 LOADK                            R18 K51 ["spine"]
      120 LOADK                            R19 K52 ["upper-chest"]
      121 LOADK                            R20 K47 ["chest"]
      122 SETLIST                          R15 R16 5 [1]
      124 SETTABLE                         R15 R13 R14
      125 GETIMPORT                        R14 K54 [Enum.RigLabel.Neck]
      127 NEWTABLE                         R15 0 1
      129 LOADK                            R16 K55 ["neck"]
      130 SETLIST                          R15 R16 1 [1]
      132 SETTABLE                         R15 R13 R14
      133 GETIMPORT                        R14 K57 [Enum.RigLabel.HeadBase]
      135 NEWTABLE                         R15 0 1
      137 LOADK                            R16 K58 ["head"]
      138 SETLIST                          R15 R16 1 [1]
      140 SETTABLE                         R15 R13 R14
      141 GETIMPORT                        R14 K60 [Enum.RigLabel.LeftClavicle]
      143 NEWTABLE                         R15 0 3
      145 LOADK                            R16 K61 ["shoulder"]
      146 LOADK                            R17 K62 ["clavicle"]
      147 LOADK                            R18 K63 ["collar"]
      148 SETLIST                          R15 R16 3 [1]
      150 SETTABLE                         R15 R13 R14
      151 GETIMPORT                        R14 K65 [Enum.RigLabel.LeftShoulder]
      153 NEWTABLE                         R15 0 4
      155 LOADK                            R16 K61 ["shoulder"]
      156 LOADK                            R17 K66 ["arm"]
      157 LOADK                            R18 K67 ["upper-arm"]
      158 LOADK                            R19 K68 ["up-arm"]
      159 SETLIST                          R15 R16 4 [1]
      161 SETTABLE                         R15 R13 R14
      162 GETIMPORT                        R14 K70 [Enum.RigLabel.LeftElbow]
      164 NEWTABLE                         R15 0 6
      166 LOADK                            R16 K71 ["lower-arm"]
      167 LOADK                            R17 K72 ["elbow"]
      168 LOADK                            R18 K73 ["fore-arm"]
      169 LOADK                            R19 K74 ["down-arm"]
      170 LOADK                            R20 K66 ["arm"]
      171 LOADK                            R21 K75 ["lo-arm"]
      172 SETLIST                          R15 R16 6 [1]
      174 SETTABLE                         R15 R13 R14
      175 GETIMPORT                        R14 K77 [Enum.RigLabel.LeftWrist]
      177 NEWTABLE                         R15 0 2
      179 LOADK                            R16 K78 ["hand"]
      180 LOADK                            R17 K79 ["wrist"]
      181 SETLIST                          R15 R16 2 [1]
      183 SETTABLE                         R15 R13 R14
      184 GETIMPORT                        R14 K81 [Enum.RigLabel.LeftHip]
      186 NEWTABLE                         R15 0 5
      188 LOADK                            R16 K82 ["leg"]
      189 LOADK                            R17 K83 ["hip"]
      190 LOADK                            R18 K84 ["upper-leg"]
      191 LOADK                            R19 K85 ["up-leg"]
      192 LOADK                            R20 K86 ["thigh"]
      193 SETLIST                          R15 R16 5 [1]
      195 SETTABLE                         R15 R13 R14
      196 GETIMPORT                        R14 K88 [Enum.RigLabel.LeftKnee]
      198 NEWTABLE                         R15 0 7
      200 LOADK                            R16 K82 ["leg"]
      201 LOADK                            R17 K89 ["lower-leg"]
      202 LOADK                            R18 K90 ["knee"]
      203 LOADK                            R19 K91 ["calf"]
      204 LOADK                            R20 K92 ["down-leg"]
      205 LOADK                            R21 K93 ["lo-leg"]
      206 LOADK                            R22 K94 ["shin"]
      207 SETLIST                          R15 R16 7 [1]
      209 SETTABLE                         R15 R13 R14
      210 GETIMPORT                        R14 K96 [Enum.RigLabel.LeftAnkle]
      212 NEWTABLE                         R15 0 2
      214 LOADK                            R16 K97 ["foot"]
      215 LOADK                            R17 K98 ["ankle"]
      216 SETLIST                          R15 R16 2 [1]
      218 SETTABLE                         R15 R13 R14
      219 NEWTABLE                         R14 0 5
      221 LOADK                            R15 K99 ["toe-base"]
      222 LOADK                            R16 K100 ["toe"]
      223 LOADK                            R17 K101 ["toes"]
      224 LOADK                            R18 K97 ["foot"]
      225 LOADK                            R19 K102 ["ball"]
      226 SETLIST                          R14 R15 5 [1]
      228 SETTABLE                         R14 R13 R10
      229 GETIMPORT                        R14 K104 [Enum.RigLabel.RightClavicle]
      231 LOADNIL                          R15
      232 SETTABLE                         R15 R13 R14
      233 GETIMPORT                        R14 K106 [Enum.RigLabel.RightShoulder]
      235 LOADNIL                          R15
      236 SETTABLE                         R15 R13 R14
      237 GETIMPORT                        R14 K108 [Enum.RigLabel.RightElbow]
      239 LOADNIL                          R15
      240 SETTABLE                         R15 R13 R14
      241 GETIMPORT                        R14 K110 [Enum.RigLabel.RightWrist]
      243 LOADNIL                          R15
      244 SETTABLE                         R15 R13 R14
      245 GETIMPORT                        R14 K112 [Enum.RigLabel.RightHip]
      247 LOADNIL                          R15
      248 SETTABLE                         R15 R13 R14
      249 GETIMPORT                        R14 K114 [Enum.RigLabel.RightKnee]
      251 LOADNIL                          R15
      252 SETTABLE                         R15 R13 R14
      253 GETIMPORT                        R14 K116 [Enum.RigLabel.RightAnkle]
      255 LOADNIL                          R15
      256 SETTABLE                         R15 R13 R14
      257 LOADNIL                          R14
      258 SETTABLE                         R14 R13 R11
      259 JUMPIFNOT                        R7 ; [+7]
      260 NEWTABLE                         R14 0 1
      262 LOADK                            R15 K51 ["spine"]
      263 SETLIST                          R14 R15 1 [1]
      265 SETTABLE                         R14 R13 R8
      266 JUMP                             ; [+9]
      267 JUMPIFNOT                        R9 ; [+8]
      268 GETIMPORT                        R14 K118 [Enum.RigLabel.Pelvis]
      270 NEWTABLE                         R15 0 1
      272 LOADK                            R16 K51 ["spine"]
      273 SETLIST                          R15 R16 1 [1]
      275 SETTABLE                         R15 R13 R14
      276 NEWTABLE                         R14 0 8
      278 GETIMPORT                        R15 K60 [Enum.RigLabel.LeftClavicle]
      280 GETIMPORT                        R16 K65 [Enum.RigLabel.LeftShoulder]
      282 GETIMPORT                        R17 K70 [Enum.RigLabel.LeftElbow]
      284 GETIMPORT                        R18 K77 [Enum.RigLabel.LeftWrist]
      286 GETIMPORT                        R19 K81 [Enum.RigLabel.LeftHip]
      288 GETIMPORT                        R20 K88 [Enum.RigLabel.LeftKnee]
      290 GETIMPORT                        R21 K96 [Enum.RigLabel.LeftAnkle]
      292 MOVE                             R22 R10
      293 SETLIST                          R14 R15 8 [1]
      295 NEWTABLE                         R15 0 0
      297 NEWTABLE                         R16 8 0
      299 GETIMPORT                        R17 K60 [Enum.RigLabel.LeftClavicle]
      301 GETIMPORT                        R18 K104 [Enum.RigLabel.RightClavicle]
      303 SETTABLE                         R18 R16 R17
      304 GETIMPORT                        R17 K65 [Enum.RigLabel.LeftShoulder]
      306 GETIMPORT                        R18 K106 [Enum.RigLabel.RightShoulder]
      308 SETTABLE                         R18 R16 R17
      309 GETIMPORT                        R17 K70 [Enum.RigLabel.LeftElbow]
      311 GETIMPORT                        R18 K108 [Enum.RigLabel.RightElbow]
      313 SETTABLE                         R18 R16 R17
      314 GETIMPORT                        R17 K77 [Enum.RigLabel.LeftWrist]
      316 GETIMPORT                        R18 K110 [Enum.RigLabel.RightWrist]
      318 SETTABLE                         R18 R16 R17
      319 GETIMPORT                        R17 K81 [Enum.RigLabel.LeftHip]
      321 GETIMPORT                        R18 K112 [Enum.RigLabel.RightHip]
      323 SETTABLE                         R18 R16 R17
      324 GETIMPORT                        R17 K88 [Enum.RigLabel.LeftKnee]
      326 GETIMPORT                        R18 K114 [Enum.RigLabel.RightKnee]
      328 SETTABLE                         R18 R16 R17
      329 GETIMPORT                        R17 K96 [Enum.RigLabel.LeftAnkle]
      331 GETIMPORT                        R18 K116 [Enum.RigLabel.RightAnkle]
      333 SETTABLE                         R18 R16 R17
      334 SETTABLE                         R11 R16 R10
      335 MOVE                             R17 R16
      336 LOADNIL                          R18
      337 LOADNIL                          R19
      338 FORGPREP                         R17
      339 SETTABLE                         R20 R16 R21
      340 FORGLOOP                         R17 2 ; [-2]
      342 MOVE                             R17 R14
      343 LOADNIL                          R18
      344 LOADNIL                          R19
      345 FORGPREP                         R17
      346 LOADK                            R22 K119 ["left"]
      347 SETTABLE                         R22 R15 R21
      348 GETTABLE                         R22 R16 R21
      349 LOADK                            R23 K120 ["right"]
      350 SETTABLE                         R23 R15 R22
      351 FORGLOOP                         R17 2 ; [-6]
      353 NEWTABLE                         R17 16 0
      355 GETIMPORT                        R18 K38 [Enum.RigLabel.Root]
      357 GETIMPORT                        R19 K123 [Vector2.new]
      359 LOADN                            R20 0
      360 LOADK                            R21 K124 [0.199]
      361 CALL                             R19 2 1
      362 SETTABLE                         R19 R17 R18
      363 GETIMPORT                        R18 K46 [Enum.RigLabel.Waist]
      365 GETIMPORT                        R19 K123 [Vector2.new]
      367 LOADN                            R20 0
      368 LOADK                            R21 K125 [0.431]
      369 CALL                             R19 2 1
      370 SETTABLE                         R19 R17 R18
      371 GETIMPORT                        R18 K49 [Enum.RigLabel.Chest]
      373 GETIMPORT                        R19 K123 [Vector2.new]
      375 LOADN                            R20 0
      376 LOADK                            R21 K126 [0.669]
      377 CALL                             R19 2 1
      378 SETTABLE                         R19 R17 R18
      379 GETIMPORT                        R18 K54 [Enum.RigLabel.Neck]
      381 GETIMPORT                        R19 K123 [Vector2.new]
      383 LOADN                            R20 0
      384 LOADK                            R21 K127 [0.896]
      385 CALL                             R19 2 1
      386 SETTABLE                         R19 R17 R18
      387 GETIMPORT                        R18 K57 [Enum.RigLabel.HeadBase]
      389 GETIMPORT                        R19 K123 [Vector2.new]
      391 LOADN                            R20 0
      392 LOADN                            R21 1
      393 CALL                             R19 2 1
      394 SETTABLE                         R19 R17 R18
      395 GETIMPORT                        R18 K60 [Enum.RigLabel.LeftClavicle]
      397 GETIMPORT                        R19 K123 [Vector2.new]
      399 LOADK                            R20 K128 [-0.075]
      400 LOADK                            R21 K129 [0.783]
      401 CALL                             R19 2 1
      402 SETTABLE                         R19 R17 R18
      403 GETIMPORT                        R18 K65 [Enum.RigLabel.LeftShoulder]
      405 GETIMPORT                        R19 K123 [Vector2.new]
      407 LOADK                            R20 K130 [-0.365]
      408 LOADK                            R21 K131 [0.78]
      409 CALL                             R19 2 1
      410 SETTABLE                         R19 R17 R18
      411 GETIMPORT                        R18 K70 [Enum.RigLabel.LeftElbow]
      413 GETIMPORT                        R19 K123 [Vector2.new]
      415 LOADK                            R20 K132 [-0.722]
      416 LOADK                            R21 K133 [0.566]
      417 CALL                             R19 2 1
      418 SETTABLE                         R19 R17 R18
      419 GETIMPORT                        R18 K77 [Enum.RigLabel.LeftWrist]
      421 GETIMPORT                        R19 K123 [Vector2.new]
      423 LOADN                            R20 255
      424 LOADK                            R21 K134 [0.385]
      425 CALL                             R19 2 1
      426 SETTABLE                         R19 R17 R18
      427 GETIMPORT                        R18 K81 [Enum.RigLabel.LeftHip]
      429 GETIMPORT                        R19 K123 [Vector2.new]
      431 LOADK                            R20 K135 [-0.182]
      432 LOADK                            R21 K136 [0.118]
      433 CALL                             R19 2 1
      434 SETTABLE                         R19 R17 R18
      435 GETIMPORT                        R18 K88 [Enum.RigLabel.LeftKnee]
      437 GETIMPORT                        R19 K123 [Vector2.new]
      439 LOADK                            R20 K137 [-0.231]
      440 LOADK                            R21 K138 [-0.381]
      441 CALL                             R19 2 1
      442 SETTABLE                         R19 R17 R18
      443 GETIMPORT                        R18 K96 [Enum.RigLabel.LeftAnkle]
      445 GETIMPORT                        R19 K123 [Vector2.new]
      447 LOADK                            R20 K139 [-0.261]
      448 LOADK                            R21 K140 [-0.917]
      449 CALL                             R19 2 1
      450 SETTABLE                         R19 R17 R18
      451 GETIMPORT                        R18 K123 [Vector2.new]
      453 LOADK                            R19 K141 [-0.266]
      454 LOADN                            R20 255
      455 CALL                             R18 2 1
      456 SETTABLE                         R18 R17 R10
      457 MOVE                             R18 R14
      458 LOADNIL                          R19
      459 LOADNIL                          R20
      460 FORGPREP                         R18
      461 GETTABLE                         R23 R16 R22
      462 GETTABLE                         R24 R17 R22
      463 JUMPIFNOT                        R24 ; [+9]
      464 GETIMPORT                        R25 K123 [Vector2.new]
      466 GETTABLEKS                       R27 R24 K142 ["X"]
      468 MINUS                            R26 R27
      469 GETTABLEKS                       R27 R24 K143 ["Y"]
      471 CALL                             R25 2 1
      472 SETTABLE                         R25 R17 R23
      473 FORGLOOP                         R18 2 ; [-13]
      475 JUMPIFNOT                        R7 ; [+7]
      476 GETIMPORT                        R18 K123 [Vector2.new]
      478 LOADN                            R19 0
      479 LOADK                            R20 K144 [0.55]
      480 CALL                             R18 2 1
      481 SETTABLE                         R18 R17 R8
      482 JUMP                             ; [+9]
      483 JUMPIFNOT                        R9 ; [+8]
      484 GETIMPORT                        R18 K118 [Enum.RigLabel.Pelvis]
      486 GETIMPORT                        R19 K123 [Vector2.new]
      488 LOADN                            R20 0
      489 LOADK                            R21 K145 [0.28]
      490 CALL                             R19 2 1
      491 SETTABLE                         R19 R17 R18
      492 NEWTABLE                         R18 16 0
      494 GETIMPORT                        R19 K38 [Enum.RigLabel.Root]
      496 LOADNIL                          R20
      497 SETTABLE                         R20 R18 R19
      498 GETIMPORT                        R19 K54 [Enum.RigLabel.Neck]
      500 GETIMPORT                        R20 K49 [Enum.RigLabel.Chest]
      502 SETTABLE                         R20 R18 R19
      503 GETIMPORT                        R19 K57 [Enum.RigLabel.HeadBase]
      505 GETIMPORT                        R20 K54 [Enum.RigLabel.Neck]
      507 SETTABLE                         R20 R18 R19
      508 GETIMPORT                        R19 K60 [Enum.RigLabel.LeftClavicle]
      510 GETIMPORT                        R20 K49 [Enum.RigLabel.Chest]
      512 SETTABLE                         R20 R18 R19
      513 GETIMPORT                        R19 K65 [Enum.RigLabel.LeftShoulder]
      515 GETIMPORT                        R20 K60 [Enum.RigLabel.LeftClavicle]
      517 SETTABLE                         R20 R18 R19
      518 GETIMPORT                        R19 K70 [Enum.RigLabel.LeftElbow]
      520 GETIMPORT                        R20 K65 [Enum.RigLabel.LeftShoulder]
      522 SETTABLE                         R20 R18 R19
      523 GETIMPORT                        R19 K77 [Enum.RigLabel.LeftWrist]
      525 GETIMPORT                        R20 K70 [Enum.RigLabel.LeftElbow]
      527 SETTABLE                         R20 R18 R19
      528 GETIMPORT                        R19 K81 [Enum.RigLabel.LeftHip]
      530 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      532 SETTABLE                         R20 R18 R19
      533 GETIMPORT                        R19 K88 [Enum.RigLabel.LeftKnee]
      535 GETIMPORT                        R20 K81 [Enum.RigLabel.LeftHip]
      537 SETTABLE                         R20 R18 R19
      538 GETIMPORT                        R19 K96 [Enum.RigLabel.LeftAnkle]
      540 GETIMPORT                        R20 K88 [Enum.RigLabel.LeftKnee]
      542 SETTABLE                         R20 R18 R19
      543 GETIMPORT                        R19 K96 [Enum.RigLabel.LeftAnkle]
      545 SETTABLE                         R19 R18 R10
      546 MOVE                             R19 R14
      547 LOADNIL                          R20
      548 LOADNIL                          R21
      549 FORGPREP                         R19
      550 GETTABLE                         R24 R16 R23
      551 GETTABLE                         R25 R18 R23
      552 JUMPIFNOT                        R25 ; [+3]
      553 GETTABLE                         R27 R16 R25
      554 OR                               R26 R27 R25
      555 SETTABLE                         R26 R18 R24
      556 FORGLOOP                         R19 2 ; [-7]
      558 JUMPIFNOT                        R7 ; [+12]
      559 GETIMPORT                        R19 K46 [Enum.RigLabel.Waist]
      561 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      563 SETTABLE                         R20 R18 R19
      564 GETIMPORT                        R19 K46 [Enum.RigLabel.Waist]
      566 SETTABLE                         R19 R18 R8
      567 GETIMPORT                        R19 K49 [Enum.RigLabel.Chest]
      569 SETTABLE                         R8 R18 R19
      570 JUMP                             ; [+27]
      571 JUMPIFNOT                        R9 ; [+16]
      572 GETIMPORT                        R19 K118 [Enum.RigLabel.Pelvis]
      574 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      576 SETTABLE                         R20 R18 R19
      577 GETIMPORT                        R19 K46 [Enum.RigLabel.Waist]
      579 GETIMPORT                        R20 K118 [Enum.RigLabel.Pelvis]
      581 SETTABLE                         R20 R18 R19
      582 GETIMPORT                        R19 K49 [Enum.RigLabel.Chest]
      584 GETIMPORT                        R20 K46 [Enum.RigLabel.Waist]
      586 SETTABLE                         R20 R18 R19
      587 JUMP                             ; [+10]
      588 GETIMPORT                        R19 K46 [Enum.RigLabel.Waist]
      590 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      592 SETTABLE                         R20 R18 R19
      593 GETIMPORT                        R19 K49 [Enum.RigLabel.Chest]
      595 GETIMPORT                        R20 K46 [Enum.RigLabel.Waist]
      597 SETTABLE                         R20 R18 R19
      598 NEWTABLE                         R19 16 0
      600 GETIMPORT                        R20 K49 [Enum.RigLabel.Chest]
      602 GETIMPORT                        R21 K54 [Enum.RigLabel.Neck]
      604 SETTABLE                         R21 R19 R20
      605 GETIMPORT                        R20 K54 [Enum.RigLabel.Neck]
      607 GETIMPORT                        R21 K57 [Enum.RigLabel.HeadBase]
      609 SETTABLE                         R21 R19 R20
      610 GETIMPORT                        R20 K57 [Enum.RigLabel.HeadBase]
      612 LOADNIL                          R21
      613 SETTABLE                         R21 R19 R20
      614 GETIMPORT                        R20 K60 [Enum.RigLabel.LeftClavicle]
      616 GETIMPORT                        R21 K65 [Enum.RigLabel.LeftShoulder]
      618 SETTABLE                         R21 R19 R20
      619 GETIMPORT                        R20 K65 [Enum.RigLabel.LeftShoulder]
      621 GETIMPORT                        R21 K70 [Enum.RigLabel.LeftElbow]
      623 SETTABLE                         R21 R19 R20
      624 GETIMPORT                        R20 K70 [Enum.RigLabel.LeftElbow]
      626 GETIMPORT                        R21 K77 [Enum.RigLabel.LeftWrist]
      628 SETTABLE                         R21 R19 R20
      629 GETIMPORT                        R20 K77 [Enum.RigLabel.LeftWrist]
      631 LOADNIL                          R21
      632 SETTABLE                         R21 R19 R20
      633 GETIMPORT                        R20 K81 [Enum.RigLabel.LeftHip]
      635 GETIMPORT                        R21 K88 [Enum.RigLabel.LeftKnee]
      637 SETTABLE                         R21 R19 R20
      638 GETIMPORT                        R20 K88 [Enum.RigLabel.LeftKnee]
      640 GETIMPORT                        R21 K96 [Enum.RigLabel.LeftAnkle]
      642 SETTABLE                         R21 R19 R20
      643 GETIMPORT                        R20 K96 [Enum.RigLabel.LeftAnkle]
      645 SETTABLE                         R10 R19 R20
      646 LOADNIL                          R20
      647 SETTABLE                         R20 R19 R10
      648 MOVE                             R20 R14
      649 LOADNIL                          R21
      650 LOADNIL                          R22
      651 FORGPREP                         R20
      652 GETTABLE                         R25 R16 R24
      653 GETTABLE                         R26 R19 R24
      654 JUMPIFNOT                        R26 ; [+2]
      655 GETTABLE                         R27 R16 R26
      656 SETTABLE                         R27 R19 R25
      657 FORGLOOP                         R20 2 ; [-6]
      659 JUMPIFNOT                        R7 ; [+12]
      660 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      662 GETIMPORT                        R21 K46 [Enum.RigLabel.Waist]
      664 SETTABLE                         R21 R19 R20
      665 GETIMPORT                        R20 K46 [Enum.RigLabel.Waist]
      667 SETTABLE                         R8 R19 R20
      668 GETIMPORT                        R20 K49 [Enum.RigLabel.Chest]
      670 SETTABLE                         R20 R19 R8
      671 JUMP                             ; [+27]
      672 JUMPIFNOT                        R9 ; [+16]
      673 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      675 GETIMPORT                        R21 K118 [Enum.RigLabel.Pelvis]
      677 SETTABLE                         R21 R19 R20
      678 GETIMPORT                        R20 K118 [Enum.RigLabel.Pelvis]
      680 GETIMPORT                        R21 K46 [Enum.RigLabel.Waist]
      682 SETTABLE                         R21 R19 R20
      683 GETIMPORT                        R20 K46 [Enum.RigLabel.Waist]
      685 GETIMPORT                        R21 K49 [Enum.RigLabel.Chest]
      687 SETTABLE                         R21 R19 R20
      688 JUMP                             ; [+10]
      689 GETIMPORT                        R20 K38 [Enum.RigLabel.Root]
      691 GETIMPORT                        R21 K46 [Enum.RigLabel.Waist]
      693 SETTABLE                         R21 R19 R20
      694 GETIMPORT                        R20 K46 [Enum.RigLabel.Waist]
      696 GETIMPORT                        R21 K49 [Enum.RigLabel.Chest]
      698 SETTABLE                         R21 R19 R20
      699 GETTABLEKS                       R20 R2 K146 ["bodyRigLabels"]
      701 NEWTABLE                         R21 0 0
      703 MOVE                             R22 R14
      704 LOADNIL                          R23
      705 LOADNIL                          R24
      706 FORGPREP                         R22
      707 GETTABLE                         R27 R16 R26
      708 JUMPIFNOT                        R27 ; [+2]
      709 GETTABLE                         R28 R13 R26
      710 SETTABLE                         R28 R13 R27
      711 FORGLOOP                         R22 2 ; [-5]
      713 MOVE                             R22 R20
      714 LOADNIL                          R23
      715 LOADNIL                          R24
      716 FORGPREP                         R22
      717 GETTABLE                         R27 R13 R26
      718 JUMPIFNOT                        R27 ; [+10]
      719 MOVE                             R28 R27
      720 LOADNIL                          R29
      721 LOADNIL                          R30
      722 FORGPREP                         R28
      723 GETTABLE                         R35 R21 R32
      724 ORK                              R34 R35 K148 [0]
      725 ADDK                             R33 R34 K147 [1]
      726 SETTABLE                         R33 R21 R32
      727 FORGLOOP                         R28 2 ; [-5]
      729 FORGLOOP                         R22 2 ; [-13]
      731 MOVE                             R22 R21
      732 LOADNIL                          R23
      733 LOADNIL                          R24
      734 FORGPREP                         R22
      735 DIVRK                            R27 R147 K26 ["rootDepthPenalty"]
      736 SETTABLE                         R27 R21 R25
      737 FORGLOOP                         R22 2 ; [-3]
      739 DUPCLOSURE                       R22 K149 [PROTO_0]
      740 DUPCLOSURE                       R23 K150 [PROTO_1]
      741 CAPTURE                          VAL R13
      742 CAPTURE                          VAL R21
      743 CAPTURE                          VAL R12
      744 CAPTURE                          VAL R15
      745 CAPTURE                          VAL R22
      746 DUPCLOSURE                       R24 K151 [PROTO_2]
      747 CAPTURE                          VAL R13
      748 DUPCLOSURE                       R25 K152 [PROTO_3]
      749 CAPTURE                          VAL R17
      750 CAPTURE                          VAL R12
      751 NEWTABLE                         R26 8 0
      753 DUPCLOSURE                       R27 K153 [PROTO_8]
      754 CAPTURE                          VAL R20
      755 CAPTURE                          VAL R2
      756 CAPTURE                          VAL R6
      757 CAPTURE                          VAL R5
      758 CAPTURE                          VAL R12
      759 CAPTURE                          VAL R23
      760 CAPTURE                          VAL R25
      761 CAPTURE                          VAL R18
      762 CAPTURE                          VAL R3
      763 CAPTURE                          VAL R10
      764 CAPTURE                          VAL R11
      765 CAPTURE                          VAL R24
      766 CAPTURE                          VAL R19
      767 CAPTURE                          VAL R4
      768 SETTABLEKS                       R27 R26 K154 ["setup"]
      770 SETTABLEKS                       R22 R26 K155 ["guessJointSide"]
      772 SETTABLEKS                       R23 R26 K156 ["nameScore"]
      774 SETTABLEKS                       R25 R26 K157 ["positionScore"]
      776 SETTABLEKS                       R16 R26 K158 ["symmetryCounterparts"]
      778 SETTABLEKS                       R18 R26 K159 ["parentRigLabel"]
      780 SETTABLEKS                       R19 R26 K160 ["directChildRigLabel"]
      782 RETURN                           R26 1
