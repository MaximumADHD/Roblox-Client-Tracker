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
      459 JUMPIFEQKNIL                     R26 ; [+41]
      461 GETTABLEKS                       R27 R20 K19 ["parent"]
      463 JUMPIFNOT                        R27 ; [+37]
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
      482 JUMPIFNOT                        R27 ; [+18]
      483 GETTABLEKS                       R31 R20 K19 ["parent"]
      485 GETTABLEKS                       R30 R31 K17 ["joint"]
      487 GETTABLE                         R29 R15 R30
      488 GETTABLE                         R28 R29 R26
      489 GETTABLEKS                       R30 R20 K17 ["joint"]
      491 GETTABLE                         R29 R15 R30
      492 GETTABLE                         R30 R29 R25
      493 LOADN                            R32 1
      494 GETUPVAL                         R35 4
      495 GETTABLEKS                       R34 R35 K45 ["parentInfluenceWeight"]
      497 MUL                              R33 R34 R28
      498 ADD                              R31 R32 R33
      499 MUL                              R30 R30 R31
      500 SETTABLE                         R30 R29 R25
      501 GETUPVAL                         R28 12
      502 GETTABLE                         R27 R28 R25
      503 GETUPVAL                         R28 3
      504 CALL                             R28 0 1
      505 JUMPIFNOT                        R28 ; [+43]
      506 GETTABLEKS                       R29 R20 K17 ["joint"]
      508 GETTABLE                         R28 R13 R29
      509 JUMPIFEQKNIL                     R27 ; [+100]
      511 JUMPIFNOT                        R28 ; [+98]
      512 LENGTH                           R29 R28
      513 LOADN                            R30 0
      514 JUMPIFNOTLT                      R30 R29 ; [+95]
      516 LOADK                            R29 K46 [-∞]
      517 MOVE                             R30 R28
      518 LOADNIL                          R31
      519 LOADNIL                          R32
      520 FORGPREP                         R30
      521 GETTABLE                         R36 R15 R34
      522 GETTABLE                         R35 R36 R27
      523 JUMPIFNOT                        R35 ; [+8]
      524 FASTCALL2                        MATH_MAX R29 R35 ; [+5]
      526 MOVE                             R37 R29
      527 MOVE                             R38 R35
      528 GETIMPORT                        R36 K49 [math.max]
      530 CALL                             R36 2 1
      531 MOVE                             R29 R36
      532 FORGLOOP                         R30 2 ; [-12]
      534 JUMPIFEQKN                       R29 K46 [-∞] ; [+75]
      536 GETTABLEKS                       R31 R20 K17 ["joint"]
      538 GETTABLE                         R30 R15 R31
      539 GETTABLE                         R31 R30 R25
      540 LOADN                            R33 1
      541 GETUPVAL                         R36 4
      542 GETTABLEKS                       R35 R36 K50 ["childInfluenceWeight"]
      544 MUL                              R34 R35 R29
      545 ADD                              R32 R33 R34
      546 MUL                              R31 R31 R32
      547 SETTABLE                         R31 R30 R25
      548 JUMP                             ; [+61]
      549 GETTABLEKS                       R28 R20 K17 ["joint"]
      551 NAMECALL                         R28 R28 K41 ["GetChildren"]
      553 CALL                             R28 1 1
      554 JUMPIFEQKNIL                     R27 ; [+55]
      556 LENGTH                           R29 R28
      557 LOADN                            R30 0
      558 JUMPIFNOTLT                      R30 R29 ; [+51]
      560 LOADK                            R29 K46 [-∞]
      561 MOVE                             R30 R28
      562 LOADNIL                          R31
      563 LOADNIL                          R32
      564 FORGPREP                         R30
      565 GETUPVAL                         R36 2
      566 CALL                             R36 0 1
      567 JUMPIFNOT                        R36 ; [+6]
      568 GETUPVAL                         R36 1
      569 GETTABLEKS                       R35 R36 K11 ["isValidTJoint"]
      571 MOVE                             R36 R34
      572 CALL                             R35 1 1
      573 JUMP                             ; [+9]
      574 LOADK                            R37 K13 ["Motor6D"]
      575 NAMECALL                         R35 R34 K15 ["IsA"]
      577 CALL                             R35 2 1
      578 JUMPIF                           R35 ; [+4]
      579 LOADK                            R37 K12 ["Bone"]
      580 NAMECALL                         R35 R34 K15 ["IsA"]
      582 CALL                             R35 2 1
      583 JUMPIFNOT                        R35 ; [+10]
      584 GETTABLE                         R37 R15 R34
      585 GETTABLE                         R36 R37 R27
      586 FASTCALL2                        MATH_MAX R29 R36 ; [+5]
      588 MOVE                             R38 R29
      589 MOVE                             R39 R36
      590 GETIMPORT                        R37 K49 [math.max]
      592 CALL                             R37 2 1
      593 MOVE                             R29 R37
      594 FORGLOOP                         R30 2 ; [-30]
      596 JUMPIFEQKN                       R29 K46 [-∞] ; [+13]
      598 GETTABLEKS                       R31 R20 K17 ["joint"]
      600 GETTABLE                         R30 R15 R31
      601 GETTABLE                         R31 R30 R25
      602 LOADN                            R33 1
      603 GETUPVAL                         R36 4
      604 GETTABLEKS                       R35 R36 K50 ["childInfluenceWeight"]
      606 MUL                              R34 R35 R29
      607 ADD                              R32 R33 R34
      608 MUL                              R31 R31 R32
      609 SETTABLE                         R31 R30 R25
      610 GETIMPORT                        R28 K53 [Enum.RigLabel.Root]
      612 JUMPIFNOTEQ                      R25 R28 ; [+20]
      614 GETUPVAL                         R30 1
      615 GETTABLEKS                       R29 R30 K55 ["getDepth"]
      617 GETTABLEKS                       R30 R20 K17 ["joint"]
      619 MOVE                             R31 R3
      620 CALL                             R29 2 1
      621 SUBK                             R28 R29 K54 [1]
      622 GETTABLEKS                       R30 R20 K17 ["joint"]
      624 GETTABLE                         R29 R15 R30
      625 GETTABLE                         R30 R29 R25
      626 GETUPVAL                         R33 4
      627 GETTABLEKS                       R32 R33 K56 ["rootDepthPenalty"]
      629 MUL                              R31 R28 R32
      630 SUB                              R30 R30 R31
      631 SETTABLE                         R30 R29 R25
      632 JUMP                             ; [+38]
      633 GETIMPORT                        R28 K58 [Enum.RigLabel.LeftWrist]
      635 JUMPIFEQ                         R25 R28 ; [+5]
      637 GETIMPORT                        R28 K60 [Enum.RigLabel.RightWrist]
      639 JUMPIFNOTEQ                      R25 R28 ; [+31]
      641 GETUPVAL                         R29 3
      642 CALL                             R29 0 1
      643 JUMPIFNOT                        R29 ; [+4]
      644 GETTABLEKS                       R29 R20 K17 ["joint"]
      646 GETTABLE                         R28 R14 R29
      647 JUMP                             ; [+6]
      648 GETTABLEKS                       R29 R20 K17 ["joint"]
      650 NAMECALL                         R29 R29 K9 ["GetDescendants"]
      652 CALL                             R29 1 1
      653 LENGTH                           R28 R29
      654 GETTABLEKS                       R30 R20 K17 ["joint"]
      656 GETTABLE                         R29 R15 R30
      657 GETTABLE                         R30 R29 R25
      658 FASTCALL2K                       MATH_MIN R28 K61 ; [+5]
      660 MOVE                             R33 R28
      661 LOADK                            R34 K61 [15]
      662 GETIMPORT                        R32 K63 [math.min]
      664 CALL                             R32 2 1
      665 GETUPVAL                         R34 4
      666 GETTABLEKS                       R33 R34 K64 ["handBoostPerDescendant"]
      668 MUL                              R31 R32 R33
      669 ADD                              R30 R30 R31
      670 SETTABLE                         R30 R29 R25
      671 FORGLOOP                         R21 2 ; [-215]
      673 FORGLOOP                         R16 2 ; [-221]
      675 NEWTABLE                         R16 0 0
      677 MOVE                             R17 R5
      678 LOADNIL                          R18
      679 LOADNIL                          R19
      680 FORGPREP                         R17
      681 GETUPVAL                         R22 0
      682 LOADNIL                          R23
      683 LOADNIL                          R24
      684 FORGPREP                         R22
      685 DUPTABLE                         R29 K67 [{"joint", "rigLabel", "score"}]
      686 GETTABLEKS                       R30 R21 K17 ["joint"]
      688 SETTABLEKS                       R30 R29 K17 ["joint"]
      690 SETTABLEKS                       R26 R29 K65 ["rigLabel"]
      692 GETTABLEKS                       R32 R21 K17 ["joint"]
      694 GETTABLE                         R31 R15 R32
      695 GETTABLE                         R30 R31 R26
      696 SETTABLEKS                       R30 R29 K66 ["score"]
      698 FASTCALL2                        TABLE_INSERT R16 R29 ; [+4]
      700 MOVE                             R28 R16
      701 GETIMPORT                        R27 K24 [table.insert]
      703 CALL                             R27 2 0
      704 FORGLOOP                         R22 2 ; [-20]
      706 FORGLOOP                         R17 2 ; [-26]
      708 GETIMPORT                        R17 K69 [table.sort]
      710 MOVE                             R18 R16
      711 DUPCLOSURE                       R19 K70 [PROTO_4]
      712 CALL                             R17 2 0
      713 NEWTABLE                         R17 0 0
      715 NEWTABLE                         R18 0 0
      717 NEWTABLE                         R19 0 0
      719 NEWTABLE                         R20 0 0
      721 NEWCLOSURE                       R21 P1
      722 CAPTURE                          UPVAL U3
      723 CAPTURE                          VAL R19
      724 CAPTURE                          VAL R17
      725 NEWCLOSURE                       R22 P2
      726 CAPTURE                          UPVAL U3
      727 CAPTURE                          VAL R20
      728 CAPTURE                          VAL R18
      729 NEWCLOSURE                       R23 P3
      730 CAPTURE                          UPVAL U3
      731 CAPTURE                          VAL R19
      732 CAPTURE                          VAL R20
      733 CAPTURE                          VAL R17
      734 CAPTURE                          VAL R18
      735 GETUPVAL                         R24 2
      736 CALL                             R24 0 1
      737 JUMPIFNOT                        R24 ; [+33]
      738 GETUPVAL                         R24 0
      739 LOADNIL                          R25
      740 LOADNIL                          R26
      741 FORGPREP                         R24
      742 MOVE                             R31 R28
      743 NAMECALL                         R29 R0 K71 ["GetJoint"]
      745 CALL                             R29 2 1
      746 JUMPIFNOT                        R29 ; [+22]
      747 GETUPVAL                         R30 3
      748 CALL                             R30 0 1
      749 JUMPIFNOT                        R30 ; [+5]
      750 LOADB                            R30 1
      751 SETTABLE                         R30 R19 R29
      752 LOADB                            R30 1
      753 SETTABLE                         R30 R20 R28
      754 JUMP                             ; [+14]
      755 FASTCALL2                        TABLE_INSERT R17 R29 ; [+5]
      757 MOVE                             R31 R17
      758 MOVE                             R32 R29
      759 GETIMPORT                        R30 K24 [table.insert]
      761 CALL                             R30 2 0
      762 FASTCALL2                        TABLE_INSERT R18 R28 ; [+5]
      764 MOVE                             R31 R18
      765 MOVE                             R32 R28
      766 GETIMPORT                        R30 K24 [table.insert]
      768 CALL                             R30 2 0
      769 FORGLOOP                         R24 2 ; [-28]
      771 MOVE                             R24 R16
      772 LOADNIL                          R25
      773 LOADNIL                          R26
      774 FORGPREP                         R24
      775 GETTABLEKS                       R29 R28 K66 ["score"]
      777 GETUPVAL                         R31 4
      778 GETTABLEKS                       R30 R31 K72 ["minScoreThreshold"]
      780 JUMPIFLT                         R29 R30 ; [+78]
      782 GETTABLEKS                       R30 R28 K17 ["joint"]
      784 GETUPVAL                         R31 3
      785 CALL                             R31 0 1
      786 JUMPIFNOT                        R31 ; [+6]
      787 GETTABLE                         R31 R19 R30
      788 JUMPIFEQKB                       R31 TRUE ; [+2]
      790 LOADB                            R29 0 +1
      791 LOADB                            R29 1
      792 JUMP                             ; [+9]
      793 GETIMPORT                        R31 K37 [table.find]
      795 MOVE                             R32 R17
      796 MOVE                             R33 R30
      797 CALL                             R31 2 1
      798 JUMPIFNOTEQKNIL                  R31 ; [+2]
      800 LOADB                            R29 0 +1
      801 LOADB                            R29 1
      802 JUMPIF                           R29 ; [+54]
      803 GETTABLEKS                       R30 R28 K65 ["rigLabel"]
      805 GETUPVAL                         R31 3
      806 CALL                             R31 0 1
      807 JUMPIFNOT                        R31 ; [+6]
      808 GETTABLE                         R31 R20 R30
      809 JUMPIFEQKB                       R31 TRUE ; [+2]
      811 LOADB                            R29 0 +1
      812 LOADB                            R29 1
      813 JUMP                             ; [+9]
      814 GETIMPORT                        R31 K37 [table.find]
      816 MOVE                             R32 R18
      817 MOVE                             R33 R30
      818 CALL                             R31 2 1
      819 JUMPIFNOTEQKNIL                  R31 ; [+2]
      821 LOADB                            R29 0 +1
      822 LOADB                            R29 1
      823 JUMPIF                           R29 ; [+33]
      824 GETTABLEKS                       R29 R28 K17 ["joint"]
      826 GETTABLEKS                       R30 R28 K65 ["rigLabel"]
      828 GETUPVAL                         R31 3
      829 CALL                             R31 0 1
      830 JUMPIFNOT                        R31 ; [+5]
      831 LOADB                            R31 1
      832 SETTABLE                         R31 R19 R29
      833 LOADB                            R31 1
      834 SETTABLE                         R31 R20 R30
      835 JUMP                             ; [+14]
      836 FASTCALL2                        TABLE_INSERT R17 R29 ; [+5]
      838 MOVE                             R32 R17
      839 MOVE                             R33 R29
      840 GETIMPORT                        R31 K24 [table.insert]
      842 CALL                             R31 2 0
      843 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      845 MOVE                             R32 R18
      846 MOVE                             R33 R30
      847 GETIMPORT                        R31 K24 [table.insert]
      849 CALL                             R31 2 0
      850 GETTABLEKS                       R31 R28 K65 ["rigLabel"]
      852 GETTABLEKS                       R32 R28 K17 ["joint"]
      854 NAMECALL                         R29 R0 K0 ["SetJoint"]
      856 CALL                             R29 3 0
      857 FORGLOOP                         R24 2 ; [-83]
      859 RETURN                           R0 0

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
       26 GETTABLEKS                       R5 R6 K9 ["getFFlagAdaptiveAnimationAutomapperPerf"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Flags"]
       33 GETTABLEKS                       R6 R7 K10 ["getFFlagAdaptiveAnimationBetaImprovements"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R2 K11 ["hasSpine"]
       38 GETTABLEKS                       R7 R2 K12 ["spineLabel"]
       40 GETTABLEKS                       R8 R2 K13 ["hasPelvis"]
       42 GETTABLEKS                       R9 R2 K14 ["LeftToeBase"]
       44 GETTABLEKS                       R10 R2 K15 ["RightToeBase"]
       46 DUPTABLE                         R11 K27 [{"tokenLengthWeight", "sideLeftRightWeight", "parentInfluenceWeight", "childInfluenceWeight", "leftRightPositionThreshold", "distanceSmoothingKernel", "minScoreThreshold", "nameWeight", "positionWeight", "rootDepthPenalty", "handBoostPerDescendant"}]
       47 LOADK                            R12 K28 [0.3]
       48 SETTABLEKS                       R12 R11 K16 ["tokenLengthWeight"]
       50 LOADN                            R12 1
       51 SETTABLEKS                       R12 R11 K17 ["sideLeftRightWeight"]
       53 LOADK                            R12 K28 [0.3]
       54 SETTABLEKS                       R12 R11 K18 ["parentInfluenceWeight"]
       56 LOADK                            R12 K29 [0.1]
       57 SETTABLEKS                       R12 R11 K19 ["childInfluenceWeight"]
       59 LOADK                            R12 K30 [0.02]
       60 SETTABLEKS                       R12 R11 K20 ["leftRightPositionThreshold"]
       62 LOADK                            R12 K29 [0.1]
       63 SETTABLEKS                       R12 R11 K21 ["distanceSmoothingKernel"]
       65 LOADK                            R12 K31 [0.5]
       66 SETTABLEKS                       R12 R11 K22 ["minScoreThreshold"]
       68 LOADN                            R12 3
       69 SETTABLEKS                       R12 R11 K23 ["nameWeight"]
       71 LOADK                            R12 K31 [0.5]
       72 SETTABLEKS                       R12 R11 K24 ["positionWeight"]
       74 LOADK                            R12 K31 [0.5]
       75 SETTABLEKS                       R12 R11 K25 ["rootDepthPenalty"]
       77 LOADK                            R12 K32 [0.05]
       78 SETTABLEKS                       R12 R11 K26 ["handBoostPerDescendant"]
       80 NEWTABLE                         R12 32 0
       82 GETIMPORT                        R13 K36 [Enum.RigLabel.Root]
       84 NEWTABLE                         R14 0 6
       86 LOADK                            R15 K37 ["root"]
       87 LOADK                            R16 K38 ["torso"]
       88 LOADK                            R17 K39 ["lower-torso"]
       89 LOADK                            R18 K40 ["waist"]
       90 LOADK                            R19 K41 ["hips"]
       91 LOADK                            R20 K42 ["pelvis"]
       92 SETLIST                          R14 R15 6 [1]
       94 SETTABLE                         R14 R12 R13
       95 GETIMPORT                        R13 K44 [Enum.RigLabel.Waist]
       97 NEWTABLE                         R14 0 1
       99 LOADK                            R15 K45 ["chest"]
      100 SETLIST                          R14 R15 1 [1]
      102 SETTABLE                         R14 R12 R13
      103 GETIMPORT                        R13 K47 [Enum.RigLabel.Chest]
      105 NEWTABLE                         R14 0 5
      107 LOADK                            R15 K48 ["upper-torso"]
      108 LOADK                            R16 K38 ["torso"]
      109 LOADK                            R17 K49 ["spine"]
      110 LOADK                            R18 K50 ["upper-chest"]
      111 LOADK                            R19 K45 ["chest"]
      112 SETLIST                          R14 R15 5 [1]
      114 SETTABLE                         R14 R12 R13
      115 GETIMPORT                        R13 K52 [Enum.RigLabel.Neck]
      117 NEWTABLE                         R14 0 1
      119 LOADK                            R15 K53 ["neck"]
      120 SETLIST                          R14 R15 1 [1]
      122 SETTABLE                         R14 R12 R13
      123 GETIMPORT                        R13 K55 [Enum.RigLabel.HeadBase]
      125 NEWTABLE                         R14 0 1
      127 LOADK                            R15 K56 ["head"]
      128 SETLIST                          R14 R15 1 [1]
      130 SETTABLE                         R14 R12 R13
      131 GETIMPORT                        R13 K58 [Enum.RigLabel.LeftClavicle]
      133 NEWTABLE                         R14 0 3
      135 LOADK                            R15 K59 ["shoulder"]
      136 LOADK                            R16 K60 ["clavicle"]
      137 LOADK                            R17 K61 ["collar"]
      138 SETLIST                          R14 R15 3 [1]
      140 SETTABLE                         R14 R12 R13
      141 GETIMPORT                        R13 K63 [Enum.RigLabel.LeftShoulder]
      143 NEWTABLE                         R14 0 4
      145 LOADK                            R15 K59 ["shoulder"]
      146 LOADK                            R16 K64 ["arm"]
      147 LOADK                            R17 K65 ["upper-arm"]
      148 LOADK                            R18 K66 ["up-arm"]
      149 SETLIST                          R14 R15 4 [1]
      151 SETTABLE                         R14 R12 R13
      152 GETIMPORT                        R13 K68 [Enum.RigLabel.LeftElbow]
      154 NEWTABLE                         R14 0 6
      156 LOADK                            R15 K69 ["lower-arm"]
      157 LOADK                            R16 K70 ["elbow"]
      158 LOADK                            R17 K71 ["fore-arm"]
      159 LOADK                            R18 K72 ["down-arm"]
      160 LOADK                            R19 K64 ["arm"]
      161 LOADK                            R20 K73 ["lo-arm"]
      162 SETLIST                          R14 R15 6 [1]
      164 SETTABLE                         R14 R12 R13
      165 GETIMPORT                        R13 K75 [Enum.RigLabel.LeftWrist]
      167 NEWTABLE                         R14 0 2
      169 LOADK                            R15 K76 ["hand"]
      170 LOADK                            R16 K77 ["wrist"]
      171 SETLIST                          R14 R15 2 [1]
      173 SETTABLE                         R14 R12 R13
      174 GETIMPORT                        R13 K79 [Enum.RigLabel.LeftHip]
      176 NEWTABLE                         R14 0 5
      178 LOADK                            R15 K80 ["leg"]
      179 LOADK                            R16 K81 ["hip"]
      180 LOADK                            R17 K82 ["upper-leg"]
      181 LOADK                            R18 K83 ["up-leg"]
      182 LOADK                            R19 K84 ["thigh"]
      183 SETLIST                          R14 R15 5 [1]
      185 SETTABLE                         R14 R12 R13
      186 GETIMPORT                        R13 K86 [Enum.RigLabel.LeftKnee]
      188 NEWTABLE                         R14 0 7
      190 LOADK                            R15 K80 ["leg"]
      191 LOADK                            R16 K87 ["lower-leg"]
      192 LOADK                            R17 K88 ["knee"]
      193 LOADK                            R18 K89 ["calf"]
      194 LOADK                            R19 K90 ["down-leg"]
      195 LOADK                            R20 K91 ["lo-leg"]
      196 LOADK                            R21 K92 ["shin"]
      197 SETLIST                          R14 R15 7 [1]
      199 SETTABLE                         R14 R12 R13
      200 GETIMPORT                        R13 K94 [Enum.RigLabel.LeftAnkle]
      202 NEWTABLE                         R14 0 2
      204 LOADK                            R15 K95 ["foot"]
      205 LOADK                            R16 K96 ["ankle"]
      206 SETLIST                          R14 R15 2 [1]
      208 SETTABLE                         R14 R12 R13
      209 NEWTABLE                         R13 0 5
      211 LOADK                            R14 K97 ["toe-base"]
      212 LOADK                            R15 K98 ["toe"]
      213 LOADK                            R16 K99 ["toes"]
      214 LOADK                            R17 K95 ["foot"]
      215 LOADK                            R18 K100 ["ball"]
      216 SETLIST                          R13 R14 5 [1]
      218 SETTABLE                         R13 R12 R9
      219 GETIMPORT                        R13 K102 [Enum.RigLabel.RightClavicle]
      221 LOADNIL                          R14
      222 SETTABLE                         R14 R12 R13
      223 GETIMPORT                        R13 K104 [Enum.RigLabel.RightShoulder]
      225 LOADNIL                          R14
      226 SETTABLE                         R14 R12 R13
      227 GETIMPORT                        R13 K106 [Enum.RigLabel.RightElbow]
      229 LOADNIL                          R14
      230 SETTABLE                         R14 R12 R13
      231 GETIMPORT                        R13 K108 [Enum.RigLabel.RightWrist]
      233 LOADNIL                          R14
      234 SETTABLE                         R14 R12 R13
      235 GETIMPORT                        R13 K110 [Enum.RigLabel.RightHip]
      237 LOADNIL                          R14
      238 SETTABLE                         R14 R12 R13
      239 GETIMPORT                        R13 K112 [Enum.RigLabel.RightKnee]
      241 LOADNIL                          R14
      242 SETTABLE                         R14 R12 R13
      243 GETIMPORT                        R13 K114 [Enum.RigLabel.RightAnkle]
      245 LOADNIL                          R14
      246 SETTABLE                         R14 R12 R13
      247 LOADNIL                          R13
      248 SETTABLE                         R13 R12 R10
      249 JUMPIFNOT                        R6 ; [+7]
      250 NEWTABLE                         R13 0 1
      252 LOADK                            R14 K49 ["spine"]
      253 SETLIST                          R13 R14 1 [1]
      255 SETTABLE                         R13 R12 R7
      256 JUMP                             ; [+9]
      257 JUMPIFNOT                        R8 ; [+8]
      258 GETIMPORT                        R13 K116 [Enum.RigLabel.Pelvis]
      260 NEWTABLE                         R14 0 1
      262 LOADK                            R15 K49 ["spine"]
      263 SETLIST                          R14 R15 1 [1]
      265 SETTABLE                         R14 R12 R13
      266 NEWTABLE                         R13 0 8
      268 GETIMPORT                        R14 K58 [Enum.RigLabel.LeftClavicle]
      270 GETIMPORT                        R15 K63 [Enum.RigLabel.LeftShoulder]
      272 GETIMPORT                        R16 K68 [Enum.RigLabel.LeftElbow]
      274 GETIMPORT                        R17 K75 [Enum.RigLabel.LeftWrist]
      276 GETIMPORT                        R18 K79 [Enum.RigLabel.LeftHip]
      278 GETIMPORT                        R19 K86 [Enum.RigLabel.LeftKnee]
      280 GETIMPORT                        R20 K94 [Enum.RigLabel.LeftAnkle]
      282 MOVE                             R21 R9
      283 SETLIST                          R13 R14 8 [1]
      285 NEWTABLE                         R14 0 0
      287 NEWTABLE                         R15 8 0
      289 GETIMPORT                        R16 K58 [Enum.RigLabel.LeftClavicle]
      291 GETIMPORT                        R17 K102 [Enum.RigLabel.RightClavicle]
      293 SETTABLE                         R17 R15 R16
      294 GETIMPORT                        R16 K63 [Enum.RigLabel.LeftShoulder]
      296 GETIMPORT                        R17 K104 [Enum.RigLabel.RightShoulder]
      298 SETTABLE                         R17 R15 R16
      299 GETIMPORT                        R16 K68 [Enum.RigLabel.LeftElbow]
      301 GETIMPORT                        R17 K106 [Enum.RigLabel.RightElbow]
      303 SETTABLE                         R17 R15 R16
      304 GETIMPORT                        R16 K75 [Enum.RigLabel.LeftWrist]
      306 GETIMPORT                        R17 K108 [Enum.RigLabel.RightWrist]
      308 SETTABLE                         R17 R15 R16
      309 GETIMPORT                        R16 K79 [Enum.RigLabel.LeftHip]
      311 GETIMPORT                        R17 K110 [Enum.RigLabel.RightHip]
      313 SETTABLE                         R17 R15 R16
      314 GETIMPORT                        R16 K86 [Enum.RigLabel.LeftKnee]
      316 GETIMPORT                        R17 K112 [Enum.RigLabel.RightKnee]
      318 SETTABLE                         R17 R15 R16
      319 GETIMPORT                        R16 K94 [Enum.RigLabel.LeftAnkle]
      321 GETIMPORT                        R17 K114 [Enum.RigLabel.RightAnkle]
      323 SETTABLE                         R17 R15 R16
      324 SETTABLE                         R10 R15 R9
      325 MOVE                             R16 R15
      326 LOADNIL                          R17
      327 LOADNIL                          R18
      328 FORGPREP                         R16
      329 SETTABLE                         R19 R15 R20
      330 FORGLOOP                         R16 2 ; [-2]
      332 MOVE                             R16 R13
      333 LOADNIL                          R17
      334 LOADNIL                          R18
      335 FORGPREP                         R16
      336 LOADK                            R21 K117 ["left"]
      337 SETTABLE                         R21 R14 R20
      338 GETTABLE                         R21 R15 R20
      339 LOADK                            R22 K118 ["right"]
      340 SETTABLE                         R22 R14 R21
      341 FORGLOOP                         R16 2 ; [-6]
      343 NEWTABLE                         R16 16 0
      345 GETIMPORT                        R17 K36 [Enum.RigLabel.Root]
      347 GETIMPORT                        R18 K121 [Vector2.new]
      349 LOADN                            R19 0
      350 LOADK                            R20 K122 [0.199]
      351 CALL                             R18 2 1
      352 SETTABLE                         R18 R16 R17
      353 GETIMPORT                        R17 K44 [Enum.RigLabel.Waist]
      355 GETIMPORT                        R18 K121 [Vector2.new]
      357 LOADN                            R19 0
      358 LOADK                            R20 K123 [0.431]
      359 CALL                             R18 2 1
      360 SETTABLE                         R18 R16 R17
      361 GETIMPORT                        R17 K47 [Enum.RigLabel.Chest]
      363 GETIMPORT                        R18 K121 [Vector2.new]
      365 LOADN                            R19 0
      366 LOADK                            R20 K124 [0.669]
      367 CALL                             R18 2 1
      368 SETTABLE                         R18 R16 R17
      369 GETIMPORT                        R17 K52 [Enum.RigLabel.Neck]
      371 GETIMPORT                        R18 K121 [Vector2.new]
      373 LOADN                            R19 0
      374 LOADK                            R20 K125 [0.896]
      375 CALL                             R18 2 1
      376 SETTABLE                         R18 R16 R17
      377 GETIMPORT                        R17 K55 [Enum.RigLabel.HeadBase]
      379 GETIMPORT                        R18 K121 [Vector2.new]
      381 LOADN                            R19 0
      382 LOADN                            R20 1
      383 CALL                             R18 2 1
      384 SETTABLE                         R18 R16 R17
      385 GETIMPORT                        R17 K58 [Enum.RigLabel.LeftClavicle]
      387 GETIMPORT                        R18 K121 [Vector2.new]
      389 LOADK                            R19 K126 [-0.075]
      390 LOADK                            R20 K127 [0.783]
      391 CALL                             R18 2 1
      392 SETTABLE                         R18 R16 R17
      393 GETIMPORT                        R17 K63 [Enum.RigLabel.LeftShoulder]
      395 GETIMPORT                        R18 K121 [Vector2.new]
      397 LOADK                            R19 K128 [-0.365]
      398 LOADK                            R20 K129 [0.78]
      399 CALL                             R18 2 1
      400 SETTABLE                         R18 R16 R17
      401 GETIMPORT                        R17 K68 [Enum.RigLabel.LeftElbow]
      403 GETIMPORT                        R18 K121 [Vector2.new]
      405 LOADK                            R19 K130 [-0.722]
      406 LOADK                            R20 K131 [0.566]
      407 CALL                             R18 2 1
      408 SETTABLE                         R18 R16 R17
      409 GETIMPORT                        R17 K75 [Enum.RigLabel.LeftWrist]
      411 GETIMPORT                        R18 K121 [Vector2.new]
      413 LOADN                            R19 255
      414 LOADK                            R20 K132 [0.385]
      415 CALL                             R18 2 1
      416 SETTABLE                         R18 R16 R17
      417 GETIMPORT                        R17 K79 [Enum.RigLabel.LeftHip]
      419 GETIMPORT                        R18 K121 [Vector2.new]
      421 LOADK                            R19 K133 [-0.182]
      422 LOADK                            R20 K134 [0.118]
      423 CALL                             R18 2 1
      424 SETTABLE                         R18 R16 R17
      425 GETIMPORT                        R17 K86 [Enum.RigLabel.LeftKnee]
      427 GETIMPORT                        R18 K121 [Vector2.new]
      429 LOADK                            R19 K135 [-0.231]
      430 LOADK                            R20 K136 [-0.381]
      431 CALL                             R18 2 1
      432 SETTABLE                         R18 R16 R17
      433 GETIMPORT                        R17 K94 [Enum.RigLabel.LeftAnkle]
      435 GETIMPORT                        R18 K121 [Vector2.new]
      437 LOADK                            R19 K137 [-0.261]
      438 LOADK                            R20 K138 [-0.917]
      439 CALL                             R18 2 1
      440 SETTABLE                         R18 R16 R17
      441 GETIMPORT                        R17 K121 [Vector2.new]
      443 LOADK                            R18 K139 [-0.266]
      444 LOADN                            R19 255
      445 CALL                             R17 2 1
      446 SETTABLE                         R17 R16 R9
      447 MOVE                             R17 R13
      448 LOADNIL                          R18
      449 LOADNIL                          R19
      450 FORGPREP                         R17
      451 GETTABLE                         R22 R15 R21
      452 GETTABLE                         R23 R16 R21
      453 JUMPIFNOT                        R23 ; [+9]
      454 GETIMPORT                        R24 K121 [Vector2.new]
      456 GETTABLEKS                       R26 R23 K140 ["X"]
      458 MINUS                            R25 R26
      459 GETTABLEKS                       R26 R23 K141 ["Y"]
      461 CALL                             R24 2 1
      462 SETTABLE                         R24 R16 R22
      463 FORGLOOP                         R17 2 ; [-13]
      465 JUMPIFNOT                        R6 ; [+7]
      466 GETIMPORT                        R17 K121 [Vector2.new]
      468 LOADN                            R18 0
      469 LOADK                            R19 K142 [0.55]
      470 CALL                             R17 2 1
      471 SETTABLE                         R17 R16 R7
      472 JUMP                             ; [+9]
      473 JUMPIFNOT                        R8 ; [+8]
      474 GETIMPORT                        R17 K116 [Enum.RigLabel.Pelvis]
      476 GETIMPORT                        R18 K121 [Vector2.new]
      478 LOADN                            R19 0
      479 LOADK                            R20 K143 [0.28]
      480 CALL                             R18 2 1
      481 SETTABLE                         R18 R16 R17
      482 NEWTABLE                         R17 16 0
      484 GETIMPORT                        R18 K36 [Enum.RigLabel.Root]
      486 LOADNIL                          R19
      487 SETTABLE                         R19 R17 R18
      488 GETIMPORT                        R18 K52 [Enum.RigLabel.Neck]
      490 GETIMPORT                        R19 K47 [Enum.RigLabel.Chest]
      492 SETTABLE                         R19 R17 R18
      493 GETIMPORT                        R18 K55 [Enum.RigLabel.HeadBase]
      495 GETIMPORT                        R19 K52 [Enum.RigLabel.Neck]
      497 SETTABLE                         R19 R17 R18
      498 GETIMPORT                        R18 K58 [Enum.RigLabel.LeftClavicle]
      500 GETIMPORT                        R19 K47 [Enum.RigLabel.Chest]
      502 SETTABLE                         R19 R17 R18
      503 GETIMPORT                        R18 K63 [Enum.RigLabel.LeftShoulder]
      505 GETIMPORT                        R19 K58 [Enum.RigLabel.LeftClavicle]
      507 SETTABLE                         R19 R17 R18
      508 GETIMPORT                        R18 K68 [Enum.RigLabel.LeftElbow]
      510 GETIMPORT                        R19 K63 [Enum.RigLabel.LeftShoulder]
      512 SETTABLE                         R19 R17 R18
      513 GETIMPORT                        R18 K75 [Enum.RigLabel.LeftWrist]
      515 GETIMPORT                        R19 K68 [Enum.RigLabel.LeftElbow]
      517 SETTABLE                         R19 R17 R18
      518 GETIMPORT                        R18 K79 [Enum.RigLabel.LeftHip]
      520 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      522 SETTABLE                         R19 R17 R18
      523 GETIMPORT                        R18 K86 [Enum.RigLabel.LeftKnee]
      525 GETIMPORT                        R19 K79 [Enum.RigLabel.LeftHip]
      527 SETTABLE                         R19 R17 R18
      528 GETIMPORT                        R18 K94 [Enum.RigLabel.LeftAnkle]
      530 GETIMPORT                        R19 K86 [Enum.RigLabel.LeftKnee]
      532 SETTABLE                         R19 R17 R18
      533 GETIMPORT                        R18 K94 [Enum.RigLabel.LeftAnkle]
      535 SETTABLE                         R18 R17 R9
      536 MOVE                             R18 R13
      537 LOADNIL                          R19
      538 LOADNIL                          R20
      539 FORGPREP                         R18
      540 GETTABLE                         R23 R15 R22
      541 GETTABLE                         R24 R17 R22
      542 JUMPIFNOT                        R24 ; [+3]
      543 GETTABLE                         R26 R15 R24
      544 OR                               R25 R26 R24
      545 SETTABLE                         R25 R17 R23
      546 FORGLOOP                         R18 2 ; [-7]
      548 JUMPIFNOT                        R6 ; [+12]
      549 GETIMPORT                        R18 K44 [Enum.RigLabel.Waist]
      551 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      553 SETTABLE                         R19 R17 R18
      554 GETIMPORT                        R18 K44 [Enum.RigLabel.Waist]
      556 SETTABLE                         R18 R17 R7
      557 GETIMPORT                        R18 K47 [Enum.RigLabel.Chest]
      559 SETTABLE                         R7 R17 R18
      560 JUMP                             ; [+27]
      561 JUMPIFNOT                        R8 ; [+16]
      562 GETIMPORT                        R18 K116 [Enum.RigLabel.Pelvis]
      564 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      566 SETTABLE                         R19 R17 R18
      567 GETIMPORT                        R18 K44 [Enum.RigLabel.Waist]
      569 GETIMPORT                        R19 K116 [Enum.RigLabel.Pelvis]
      571 SETTABLE                         R19 R17 R18
      572 GETIMPORT                        R18 K47 [Enum.RigLabel.Chest]
      574 GETIMPORT                        R19 K44 [Enum.RigLabel.Waist]
      576 SETTABLE                         R19 R17 R18
      577 JUMP                             ; [+10]
      578 GETIMPORT                        R18 K44 [Enum.RigLabel.Waist]
      580 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      582 SETTABLE                         R19 R17 R18
      583 GETIMPORT                        R18 K47 [Enum.RigLabel.Chest]
      585 GETIMPORT                        R19 K44 [Enum.RigLabel.Waist]
      587 SETTABLE                         R19 R17 R18
      588 NEWTABLE                         R18 16 0
      590 GETIMPORT                        R19 K47 [Enum.RigLabel.Chest]
      592 GETIMPORT                        R20 K52 [Enum.RigLabel.Neck]
      594 SETTABLE                         R20 R18 R19
      595 GETIMPORT                        R19 K52 [Enum.RigLabel.Neck]
      597 GETIMPORT                        R20 K55 [Enum.RigLabel.HeadBase]
      599 SETTABLE                         R20 R18 R19
      600 GETIMPORT                        R19 K55 [Enum.RigLabel.HeadBase]
      602 LOADNIL                          R20
      603 SETTABLE                         R20 R18 R19
      604 GETIMPORT                        R19 K58 [Enum.RigLabel.LeftClavicle]
      606 GETIMPORT                        R20 K63 [Enum.RigLabel.LeftShoulder]
      608 SETTABLE                         R20 R18 R19
      609 GETIMPORT                        R19 K63 [Enum.RigLabel.LeftShoulder]
      611 GETIMPORT                        R20 K68 [Enum.RigLabel.LeftElbow]
      613 SETTABLE                         R20 R18 R19
      614 GETIMPORT                        R19 K68 [Enum.RigLabel.LeftElbow]
      616 GETIMPORT                        R20 K75 [Enum.RigLabel.LeftWrist]
      618 SETTABLE                         R20 R18 R19
      619 GETIMPORT                        R19 K75 [Enum.RigLabel.LeftWrist]
      621 LOADNIL                          R20
      622 SETTABLE                         R20 R18 R19
      623 GETIMPORT                        R19 K79 [Enum.RigLabel.LeftHip]
      625 GETIMPORT                        R20 K86 [Enum.RigLabel.LeftKnee]
      627 SETTABLE                         R20 R18 R19
      628 GETIMPORT                        R19 K86 [Enum.RigLabel.LeftKnee]
      630 GETIMPORT                        R20 K94 [Enum.RigLabel.LeftAnkle]
      632 SETTABLE                         R20 R18 R19
      633 GETIMPORT                        R19 K94 [Enum.RigLabel.LeftAnkle]
      635 SETTABLE                         R9 R18 R19
      636 LOADNIL                          R19
      637 SETTABLE                         R19 R18 R9
      638 MOVE                             R19 R13
      639 LOADNIL                          R20
      640 LOADNIL                          R21
      641 FORGPREP                         R19
      642 GETTABLE                         R24 R15 R23
      643 GETTABLE                         R25 R18 R23
      644 JUMPIFNOT                        R25 ; [+2]
      645 GETTABLE                         R26 R15 R25
      646 SETTABLE                         R26 R18 R24
      647 FORGLOOP                         R19 2 ; [-6]
      649 JUMPIFNOT                        R6 ; [+12]
      650 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      652 GETIMPORT                        R20 K44 [Enum.RigLabel.Waist]
      654 SETTABLE                         R20 R18 R19
      655 GETIMPORT                        R19 K44 [Enum.RigLabel.Waist]
      657 SETTABLE                         R7 R18 R19
      658 GETIMPORT                        R19 K47 [Enum.RigLabel.Chest]
      660 SETTABLE                         R19 R18 R7
      661 JUMP                             ; [+27]
      662 JUMPIFNOT                        R8 ; [+16]
      663 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      665 GETIMPORT                        R20 K116 [Enum.RigLabel.Pelvis]
      667 SETTABLE                         R20 R18 R19
      668 GETIMPORT                        R19 K116 [Enum.RigLabel.Pelvis]
      670 GETIMPORT                        R20 K44 [Enum.RigLabel.Waist]
      672 SETTABLE                         R20 R18 R19
      673 GETIMPORT                        R19 K44 [Enum.RigLabel.Waist]
      675 GETIMPORT                        R20 K47 [Enum.RigLabel.Chest]
      677 SETTABLE                         R20 R18 R19
      678 JUMP                             ; [+10]
      679 GETIMPORT                        R19 K36 [Enum.RigLabel.Root]
      681 GETIMPORT                        R20 K44 [Enum.RigLabel.Waist]
      683 SETTABLE                         R20 R18 R19
      684 GETIMPORT                        R19 K44 [Enum.RigLabel.Waist]
      686 GETIMPORT                        R20 K47 [Enum.RigLabel.Chest]
      688 SETTABLE                         R20 R18 R19
      689 GETTABLEKS                       R19 R2 K144 ["bodyRigLabels"]
      691 NEWTABLE                         R20 0 0
      693 MOVE                             R21 R13
      694 LOADNIL                          R22
      695 LOADNIL                          R23
      696 FORGPREP                         R21
      697 GETTABLE                         R26 R15 R25
      698 JUMPIFNOT                        R26 ; [+2]
      699 GETTABLE                         R27 R12 R25
      700 SETTABLE                         R27 R12 R26
      701 FORGLOOP                         R21 2 ; [-5]
      703 MOVE                             R21 R19
      704 LOADNIL                          R22
      705 LOADNIL                          R23
      706 FORGPREP                         R21
      707 GETTABLE                         R26 R12 R25
      708 JUMPIFNOT                        R26 ; [+10]
      709 MOVE                             R27 R26
      710 LOADNIL                          R28
      711 LOADNIL                          R29
      712 FORGPREP                         R27
      713 GETTABLE                         R34 R20 R31
      714 ORK                              R33 R34 K146 [0]
      715 ADDK                             R32 R33 K145 [1]
      716 SETTABLE                         R32 R20 R31
      717 FORGLOOP                         R27 2 ; [-5]
      719 FORGLOOP                         R21 2 ; [-13]
      721 MOVE                             R21 R20
      722 LOADNIL                          R22
      723 LOADNIL                          R23
      724 FORGPREP                         R21
      725 DIVRK                            R26 R145 K25 ["rootDepthPenalty"]
      726 SETTABLE                         R26 R20 R24
      727 FORGLOOP                         R21 2 ; [-3]
      729 DUPCLOSURE                       R21 K147 [PROTO_0]
      730 DUPCLOSURE                       R22 K148 [PROTO_1]
      731 CAPTURE                          VAL R12
      732 CAPTURE                          VAL R20
      733 CAPTURE                          VAL R11
      734 CAPTURE                          VAL R14
      735 CAPTURE                          VAL R21
      736 DUPCLOSURE                       R23 K149 [PROTO_2]
      737 CAPTURE                          VAL R12
      738 DUPCLOSURE                       R24 K150 [PROTO_3]
      739 CAPTURE                          VAL R16
      740 CAPTURE                          VAL R11
      741 NEWTABLE                         R25 8 0
      743 DUPCLOSURE                       R26 K151 [PROTO_8]
      744 CAPTURE                          VAL R19
      745 CAPTURE                          VAL R2
      746 CAPTURE                          VAL R5
      747 CAPTURE                          VAL R4
      748 CAPTURE                          VAL R11
      749 CAPTURE                          VAL R22
      750 CAPTURE                          VAL R24
      751 CAPTURE                          VAL R17
      752 CAPTURE                          VAL R3
      753 CAPTURE                          VAL R9
      754 CAPTURE                          VAL R10
      755 CAPTURE                          VAL R23
      756 CAPTURE                          VAL R18
      757 SETTABLEKS                       R26 R25 K152 ["setup"]
      759 SETTABLEKS                       R21 R25 K153 ["guessJointSide"]
      761 SETTABLEKS                       R22 R25 K154 ["nameScore"]
      763 SETTABLEKS                       R24 R25 K155 ["positionScore"]
      765 SETTABLEKS                       R15 R25 K156 ["symmetryCounterparts"]
      767 SETTABLEKS                       R17 R25 K157 ["parentRigLabel"]
      769 SETTABLEKS                       R18 R25 K158 ["directChildRigLabel"]
      771 RETURN                           R25 1
