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
       59 JUMPIFNOT                        R5 ; [+23]
       60 LOADK                            R8 K13 ["Motor6D"]
       61 LOADB                            R9 1
       62 NAMECALL                         R6 R1 K2 ["FindFirstChildWhichIsA"]
       64 CALL                             R6 3 1
       65 JUMPIFNOT                        R6 ; [+17]
       66 GETUPVAL                         R6 2
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+12]
       69 JUMPIFNOT                        R2 ; [+8]
       70 GETTABLEKS                       R6 R2 K3 ["RigType"]
       72 GETIMPORT                        R7 K7 [Enum.HumanoidRigType.R15]
       74 JUMPIFNOTEQ                      R6 R7 ; [+3]
       76 LOADB                            R4 1
       77 JUMP                             ; [+5]
       78 GETTABLEKS                       R3 R5 K14 ["Parent"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R3 R5 K14 ["Parent"]
       83 NEWTABLE                         R6 0 0
       85 NEWTABLE                         R7 0 0
       87 NAMECALL                         R8 R3 K9 ["GetDescendants"]
       89 CALL                             R8 1 3
       90 FORGPREP                         R8
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K11 ["isValidTJoint"]
       94 MOVE                             R14 R12
       95 CALL                             R13 1 1
       96 JUMPIFNOT                        R13 ; [+31]
       97 JUMPIFNOT                        R4 ; [+5]
       98 LOADK                            R16 K12 ["Bone"]
       99 NAMECALL                         R14 R12 K15 ["IsA"]
      101 CALL                             R14 2 1
      102 JUMPIF                           R14 ; [+25]
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R14 R14 K16 ["getJointPosition"]
      106 MOVE                             R15 R12
      107 CALL                             R14 1 1
      108 DUPTABLE                         R15 K22 [{["joint"], ["name"], ["parent"] = , ["position"]}]
      109 SETTABLEKS                       R12 R15 K17 ["joint"]
      111 GETTABLEKS                       R16 R12 K10 ["Name"]
      113 SETTABLEKS                       R16 R15 K18 ["name"]
      115 SETTABLEKS                       R14 R15 K21 ["position"]
      117 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
      119 MOVE                             R17 R6
      120 MOVE                             R18 R15
      121 GETIMPORT                        R16 K25 [table.insert]
      123 CALL                             R16 2 0
      124 GETUPVAL                         R16 3
      125 CALL                             R16 0 1
      126 JUMPIFNOT                        R16 ; [+1]
      127 SETTABLE                         R15 R7 R12
      128 FORGLOOP                         R8 2 ; [-38]
      130 GETUPVAL                         R8 3
      131 CALL                             R8 0 1
      132 JUMPIFNOT                        R8 ; [+42]
      133 MOVE                             R8 R6
      134 LOADNIL                          R9
      135 LOADNIL                          R10
      136 FORGPREP                         R8
      137 GETTABLEKS                       R13 R12 K17 ["joint"]
      139 GETTABLEKS                       R13 R13 K14 ["Parent"]
      141 GETTABLEKS                       R14 R12 K17 ["joint"]
      143 LOADK                            R16 K13 ["Motor6D"]
      144 NAMECALL                         R14 R14 K15 ["IsA"]
      146 CALL                             R14 2 1
      147 JUMPIFNOT                        R14 ; [+11]
      148 GETTABLEKS                       R14 R12 K17 ["joint"]
      150 GETTABLEKS                       R14 R14 K26 ["Part0"]
      152 MOVE                             R15 R14
      153 JUMPIFNOT                        R15 ; [+4]
      154 LOADK                            R17 K13 ["Motor6D"]
      155 NAMECALL                         R15 R14 K2 ["FindFirstChildWhichIsA"]
      157 CALL                             R15 2 1
      158 MOVE                             R13 R15
      159 GETUPVAL                         R15 1
      160 GETTABLEKS                       R15 R15 K11 ["isValidTJoint"]
      162 MOVE                             R16 R13
      163 CALL                             R15 1 1
      164 JUMPIFNOT                        R15 ; [+2]
      165 MOVE                             R14 R13
      166 JUMP                             ; [+1]
      167 LOADNIL                          R14
      168 JUMPIFNOT                        R14 ; [+3]
      169 GETTABLE                         R15 R7 R14
      170 SETTABLEKS                       R15 R12 K19 ["parent"]
      172 FORGLOOP                         R8 2 ; [-36]
      174 JUMP                             ; [+50]
      175 MOVE                             R8 R6
      176 LOADNIL                          R9
      177 LOADNIL                          R10
      178 FORGPREP                         R8
      179 MOVE                             R13 R6
      180 LOADNIL                          R14
      181 LOADNIL                          R15
      182 FORGPREP                         R13
      183 GETTABLEKS                       R18 R12 K17 ["joint"]
      185 GETTABLEKS                       R18 R18 K14 ["Parent"]
      187 GETTABLEKS                       R19 R12 K17 ["joint"]
      189 LOADK                            R21 K13 ["Motor6D"]
      190 NAMECALL                         R19 R19 K15 ["IsA"]
      192 CALL                             R19 2 1
      193 JUMPIFNOT                        R19 ; [+11]
      194 GETTABLEKS                       R19 R12 K17 ["joint"]
      196 GETTABLEKS                       R19 R19 K26 ["Part0"]
      198 MOVE                             R20 R19
      199 JUMPIFNOT                        R20 ; [+4]
      200 LOADK                            R22 K13 ["Motor6D"]
      201 NAMECALL                         R20 R19 K2 ["FindFirstChildWhichIsA"]
      203 CALL                             R20 2 1
      204 MOVE                             R18 R20
      205 GETUPVAL                         R20 1
      206 GETTABLEKS                       R20 R20 K11 ["isValidTJoint"]
      208 MOVE                             R21 R18
      209 CALL                             R20 1 1
      210 JUMPIFNOT                        R20 ; [+2]
      211 MOVE                             R19 R18
      212 JUMP                             ; [+1]
      213 LOADNIL                          R19
      214 GETTABLEKS                       R20 R17 K17 ["joint"]
      216 JUMPIFNOTEQ                      R19 R20 ; [+4]
      218 SETTABLEKS                       R17 R12 K19 ["parent"]
      220 JUMP                             ; [+2]
      221 FORGLOOP                         R13 2 ; [-39]
      223 FORGLOOP                         R8 2 ; [-45]
      225 NEWTABLE                         R8 0 0
      227 MOVE                             R9 R6
      228 LOADNIL                          R10
      229 LOADNIL                          R11
      230 FORGPREP                         R9
      231 GETIMPORT                        R14 K29 [Vector2.new]
      233 GETTABLEKS                       R15 R13 K21 ["position"]
      235 GETTABLEKS                       R15 R15 K30 ["X"]
      237 GETTABLEKS                       R16 R13 K21 ["position"]
      239 GETTABLEKS                       R16 R16 K31 ["Y"]
      241 CALL                             R14 2 1
      242 SETTABLE                         R14 R8 R12
      243 FORGLOOP                         R9 2 ; [-13]
      245 GETUPVAL                         R9 1
      246 GETTABLEKS                       R9 R9 K32 ["normalizePoints"]
      248 MOVE                             R10 R8
      249 CALL                             R9 1 0
      250 NEWTABLE                         R9 0 0
      252 MOVE                             R10 R6
      253 LOADNIL                          R11
      254 LOADNIL                          R12
      255 FORGPREP                         R10
      256 GETTABLEKS                       R17 R14 K18 ["name"]
      258 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      260 MOVE                             R16 R9
      261 GETIMPORT                        R15 K25 [table.insert]
      263 CALL                             R15 2 0
      264 FORGLOOP                         R10 2 ; [-9]
      266 GETUPVAL                         R10 1
      267 GETTABLEKS                       R10 R10 K33 ["commonPrefix"]
      269 MOVE                             R11 R9
      270 CALL                             R10 1 1
      271 GETUPVAL                         R11 1
      272 GETTABLEKS                       R11 R11 K34 ["commonSuffix"]
      274 MOVE                             R12 R9
      275 CALL                             R11 1 1
      276 MOVE                             R12 R6
      277 LOADNIL                          R13
      278 LOADNIL                          R14
      279 FORGPREP                         R12
      280 GETUPVAL                         R17 1
      281 GETTABLEKS                       R17 R17 K35 ["trimStart"]
      283 GETTABLEKS                       R18 R16 K18 ["name"]
      285 MOVE                             R19 R10
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R16 K18 ["name"]
      289 GETUPVAL                         R17 1
      290 GETTABLEKS                       R17 R17 K36 ["trimEnd"]
      292 GETTABLEKS                       R18 R16 K18 ["name"]
      294 MOVE                             R19 R11
      295 CALL                             R17 2 1
      296 SETTABLEKS                       R17 R16 K18 ["name"]
      298 FORGLOOP                         R12 2 ; [-19]
      300 NEWTABLE                         R12 0 0
      302 MOVE                             R13 R6
      303 LOADNIL                          R14
      304 LOADNIL                          R15
      305 FORGPREP                         R13
      306 GETIMPORT                        R18 K38 [table.find]
      308 MOVE                             R19 R12
      309 GETTABLEKS                       R20 R17 K18 ["name"]
      311 CALL                             R18 2 1
      312 JUMPIFNOT                        R18 ; [+4]
      313 GETIMPORT                        R18 K40 [warn]
      315 LOADK                            R19 K41 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      316 CALL                             R18 1 0
      317 GETTABLEKS                       R20 R17 K18 ["name"]
      319 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      321 MOVE                             R19 R12
      322 GETIMPORT                        R18 K25 [table.insert]
      324 CALL                             R18 2 0
      325 FORGLOOP                         R13 2 ; [-20]
      327 NEWTABLE                         R13 0 0
      329 NEWTABLE                         R14 0 0
      331 NEWTABLE                         R15 0 0
      333 GETUPVAL                         R16 3
      334 CALL                             R16 0 1
      335 JUMPIFNOT                        R16 ; [+54]
      336 MOVE                             R16 R6
      337 LOADNIL                          R17
      338 LOADNIL                          R18
      339 FORGPREP                         R16
      340 SETTABLE                         R19 R13 R20
      341 FORGLOOP                         R16 2 ; [-2]
      343 MOVE                             R16 R6
      344 LOADNIL                          R17
      345 LOADNIL                          R18
      346 FORGPREP                         R16
      347 NEWTABLE                         R21 0 0
      349 GETTABLEKS                       R22 R20 K17 ["joint"]
      351 NAMECALL                         R22 R22 K42 ["GetChildren"]
      353 CALL                             R22 1 3
      354 FORGPREP                         R22
      355 GETUPVAL                         R27 1
      356 GETTABLEKS                       R27 R27 K11 ["isValidTJoint"]
      358 MOVE                             R28 R26
      359 CALL                             R27 1 1
      360 JUMPIFNOT                        R27 ; [+7]
      361 FASTCALL2                        TABLE_INSERT R21 R26 ; [+5]
      363 MOVE                             R28 R21
      364 MOVE                             R29 R26
      365 GETIMPORT                        R27 K25 [table.insert]
      367 CALL                             R27 2 0
      368 FORGLOOP                         R22 2 ; [-14]
      370 GETTABLEKS                       R22 R20 K17 ["joint"]
      372 SETTABLE                         R21 R14 R22
      373 FORGLOOP                         R16 2 ; [-27]
      375 MOVE                             R16 R6
      376 LOADNIL                          R17
      377 LOADNIL                          R18
      378 FORGPREP                         R16
      379 GETTABLEKS                       R21 R20 K17 ["joint"]
      381 GETTABLEKS                       R23 R20 K17 ["joint"]
      383 NAMECALL                         R23 R23 K9 ["GetDescendants"]
      385 CALL                             R23 1 1
      386 LENGTH                           R22 R23
      387 SETTABLE                         R22 R15 R21
      388 FORGLOOP                         R16 2 ; [-10]
      390 NEWTABLE                         R16 0 0
      392 MOVE                             R17 R6
      393 LOADNIL                          R18
      394 LOADNIL                          R19
      395 FORGPREP                         R17
      396 GETTABLEKS                       R22 R21 K17 ["joint"]
      398 NEWTABLE                         R23 0 0
      400 SETTABLE                         R23 R16 R22
      401 LOADNIL                          R22
      402 GETUPVAL                         R23 3
      403 CALL                             R23 0 1
      404 JUMPIFNOT                        R23 ; [+3]
      405 GETTABLE                         R23 R13 R21
      406 GETTABLE                         R22 R8 R23
      407 JUMP                             ; [+12]
      408 GETIMPORT                        R23 K38 [table.find]
      410 MOVE                             R24 R6
      411 MOVE                             R25 R21
      412 CALL                             R23 2 1
      413 JUMPIF                           R23 ; [+5]
      414 GETIMPORT                        R24 K40 [warn]
      416 LOADK                            R25 K43 ["joint not found in jointRefs array"]
      417 CALL                             R24 1 0
      418 JUMP                             ; [+76]
      419 GETTABLE                         R22 R8 R23
      420 GETUPVAL                         R23 0
      421 LOADNIL                          R24
      422 LOADNIL                          R25
      423 FORGPREP                         R23
      424 GETTABLEKS                       R29 R21 K17 ["joint"]
      426 GETTABLE                         R28 R16 R29
      427 LOADN                            R31 3
      428 GETUPVAL                         R32 4
      429 GETTABLEKS                       R33 R21 K18 ["name"]
      431 MOVE                             R34 R27
      432 CALL                             R32 2 1
      433 MUL                              R30 R31 R32
      434 LOADK                            R32 K44 [0.5]
      435 MOVE                             R34 R22
      436 LOADN                            R35 0
      437 GETUPVAL                         R37 5
      438 GETTABLE                         R36 R37 R27
      439 SUB                              R37 R36 R34
      440 GETTABLEKS                       R37 R37 K45 ["Magnitude"]
      442 MINUS                            R41 R37
      443 MUL                              R40 R41 R37
      444 GETUPVAL                         R41 6
      445 GETTABLEKS                       R41 R41 K46 ["distanceSmoothingKernel"]
      447 DIV                              R39 R40 R41
      448 FASTCALL1                        MATH_EXP R39 ; [+2]
      449 GETIMPORT                        R38 K49 [math.exp]
      451 CALL                             R38 1 1
      452 MOVE                             R35 R38
      453 GETTABLEKS                       R39 R36 K30 ["X"]
      455 FASTCALL1                        MATH_SIGN R39 ; [+2]
      456 GETIMPORT                        R38 K51 [math.sign]
      458 CALL                             R38 1 1
      459 GETTABLEKS                       R40 R34 K30 ["X"]
      461 FASTCALL1                        MATH_SIGN R40 ; [+2]
      462 GETIMPORT                        R39 K51 [math.sign]
      464 CALL                             R39 1 1
      465 JUMPIFEQ                         R38 R39 ; [+14]
      467 JUMPIFNOTEQKN                    R38 K52 [0] ; [+17]
      469 GETTABLEKS                       R41 R34 K30 ["X"]
      471 FASTCALL1                        MATH_ABS R41 ; [+2]
      472 GETIMPORT                        R40 K54 [math.abs]
      474 CALL                             R40 1 1
      475 GETUPVAL                         R41 6
      476 GETTABLEKS                       R41 R41 K55 ["leftRightPositionThreshold"]
      478 JUMPIFNOTLT                      R40 R41 ; [+6]
      480 GETUPVAL                         R40 6
      481 GETTABLEKS                       R40 R40 K56 ["sideLeftRightWeight"]
      483 ADD                              R35 R35 R40
      484 JUMP                             ; [+4]
      485 GETUPVAL                         R40 6
      486 GETTABLEKS                       R40 R40 K56 ["sideLeftRightWeight"]
      488 SUB                              R35 R35 R40
      489 MOVE                             R33 R35
      490 MUL                              R31 R32 R33
      491 ADD                              R29 R30 R31
      492 SETTABLE                         R29 R28 R27
      493 FORGLOOP                         R23 2 ; [-70]
      495 FORGLOOP                         R17 2 ; [-100]
      497 MOVE                             R17 R6
      498 LOADNIL                          R18
      499 LOADNIL                          R19
      500 FORGPREP                         R17
      501 GETUPVAL                         R22 0
      502 LOADNIL                          R23
      503 LOADNIL                          R24
      504 FORGPREP                         R22
      505 GETUPVAL                         R28 7
      506 GETTABLE                         R27 R28 R26
      507 JUMPIFEQKNIL                     R27 ; [+46]
      509 GETTABLEKS                       R28 R21 K19 ["parent"]
      511 JUMPIFNOT                        R28 ; [+42]
      512 LOADB                            R28 1
      513 GETIMPORT                        R29 K59 [Enum.RigLabel.LeftToeBase]
      515 JUMPIFEQ                         R26 R29 ; [+5]
      517 GETIMPORT                        R29 K61 [Enum.RigLabel.RightToeBase]
      519 JUMPIFNOTEQ                      R26 R29 ; [+9]
      521 GETUPVAL                         R29 8
      522 GETTABLEKS                       R30 R21 K19 ["parent"]
      524 GETTABLEKS                       R30 R30 K18 ["name"]
      526 MOVE                             R31 R27
      527 CALL                             R29 2 1
      528 MOVE                             R28 R29
      529 JUMPIFNOT                        R28 ; [+24]
      530 GETTABLEKS                       R30 R21 K19 ["parent"]
      532 GETTABLEKS                       R30 R30 K17 ["joint"]
      534 GETTABLE                         R29 R16 R30
      535 JUMPIFNOT                        R29 ; [+6]
      536 GETTABLEKS                       R31 R21 K19 ["parent"]
      538 GETTABLEKS                       R31 R31 K17 ["joint"]
      540 GETTABLE                         R30 R16 R31
      541 GETTABLE                         R29 R30 R27
      542 JUMPIFEQKNIL                     R29 ; [+11]
      544 GETTABLEKS                       R31 R21 K17 ["joint"]
      546 GETTABLE                         R30 R16 R31
      547 GETTABLE                         R31 R30 R26
      548 LOADN                            R33 1
      549 LOADK                            R35 K62 [0.3]
      550 MUL                              R34 R35 R29
      551 ADD                              R32 R33 R34
      552 MUL                              R31 R31 R32
      553 SETTABLE                         R31 R30 R26
      554 GETUPVAL                         R29 9
      555 GETTABLE                         R28 R29 R26
      556 GETUPVAL                         R29 3
      557 CALL                             R29 0 1
      558 JUMPIFNOT                        R29 ; [+41]
      559 GETTABLEKS                       R30 R21 K17 ["joint"]
      561 GETTABLE                         R29 R14 R30
      562 JUMPIFEQKNIL                     R28 ; [+87]
      564 JUMPIFNOT                        R29 ; [+85]
      565 LENGTH                           R30 R29
      566 LOADN                            R31 0
      567 JUMPIFNOTLT                      R31 R30 ; [+82]
      569 LOADK                            R30 K63 [-∞]
      570 MOVE                             R31 R29
      571 LOADNIL                          R32
      572 LOADNIL                          R33
      573 FORGPREP                         R31
      574 GETTABLE                         R37 R16 R35
      575 GETTABLE                         R36 R37 R28
      576 JUMPIFNOT                        R36 ; [+8]
      577 FASTCALL2                        MATH_MAX R30 R36 ; [+5]
      579 MOVE                             R38 R30
      580 MOVE                             R39 R36
      581 GETIMPORT                        R37 K65 [math.max]
      583 CALL                             R37 2 1
      584 MOVE                             R30 R37
      585 FORGLOOP                         R31 2 ; [-12]
      587 JUMPIFEQKN                       R30 K63 [-∞] ; [+62]
      589 GETTABLEKS                       R32 R21 K17 ["joint"]
      591 GETTABLE                         R31 R16 R32
      592 GETTABLE                         R32 R31 R26
      593 LOADN                            R34 1
      594 LOADK                            R36 K66 [0.1]
      595 MUL                              R35 R36 R30
      596 ADD                              R33 R34 R35
      597 MUL                              R32 R32 R33
      598 SETTABLE                         R32 R31 R26
      599 JUMP                             ; [+50]
      600 GETTABLEKS                       R29 R21 K17 ["joint"]
      602 NAMECALL                         R29 R29 K42 ["GetChildren"]
      604 CALL                             R29 1 1
      605 JUMPIFEQKNIL                     R28 ; [+44]
      607 LENGTH                           R30 R29
      608 LOADN                            R31 0
      609 JUMPIFNOTLT                      R31 R30 ; [+40]
      611 LOADK                            R30 K63 [-∞]
      612 MOVE                             R31 R29
      613 LOADNIL                          R32
      614 LOADNIL                          R33
      615 FORGPREP                         R31
      616 GETUPVAL                         R36 1
      617 GETTABLEKS                       R36 R36 K11 ["isValidTJoint"]
      619 MOVE                             R37 R35
      620 CALL                             R36 1 1
      621 JUMPIFNOT                        R36 ; [+14]
      622 GETTABLE                         R37 R16 R35
      623 JUMPIFNOT                        R37 ; [+2]
      624 GETTABLE                         R38 R16 R35
      625 GETTABLE                         R37 R38 R28
      626 JUMPIFEQKNIL                     R37 ; [+9]
      628 FASTCALL2                        MATH_MAX R30 R37 ; [+5]
      630 MOVE                             R39 R30
      631 MOVE                             R40 R37
      632 GETIMPORT                        R38 K65 [math.max]
      634 CALL                             R38 2 1
      635 MOVE                             R30 R38
      636 FORGLOOP                         R31 2 ; [-21]
      638 JUMPIFEQKN                       R30 K63 [-∞] ; [+11]
      640 GETTABLEKS                       R32 R21 K17 ["joint"]
      642 GETTABLE                         R31 R16 R32
      643 GETTABLE                         R32 R31 R26
      644 LOADN                            R34 1
      645 LOADK                            R36 K66 [0.1]
      646 MUL                              R35 R36 R30
      647 ADD                              R33 R34 R35
      648 MUL                              R32 R32 R33
      649 SETTABLE                         R32 R31 R26
      650 GETIMPORT                        R29 K68 [Enum.RigLabel.Root]
      652 JUMPIFNOTEQ                      R26 R29 ; [+17]
      654 GETUPVAL                         R30 1
      655 GETTABLEKS                       R30 R30 K70 ["getDepth"]
      657 GETTABLEKS                       R31 R21 K17 ["joint"]
      659 MOVE                             R32 R3
      660 CALL                             R30 2 1
      661 SUBK                             R29 R30 K69 [1]
      662 GETTABLEKS                       R31 R21 K17 ["joint"]
      664 GETTABLE                         R30 R16 R31
      665 GETTABLE                         R31 R30 R26
      666 MULK                             R32 R29 K44 [0.5]
      667 SUB                              R31 R31 R32
      668 SETTABLE                         R31 R30 R26
      669 JUMP                             ; [+35]
      670 GETIMPORT                        R29 K72 [Enum.RigLabel.LeftWrist]
      672 JUMPIFEQ                         R26 R29 ; [+5]
      674 GETIMPORT                        R29 K74 [Enum.RigLabel.RightWrist]
      676 JUMPIFNOTEQ                      R26 R29 ; [+28]
      678 GETUPVAL                         R30 3
      679 CALL                             R30 0 1
      680 JUMPIFNOT                        R30 ; [+4]
      681 GETTABLEKS                       R30 R21 K17 ["joint"]
      683 GETTABLE                         R29 R15 R30
      684 JUMP                             ; [+6]
      685 GETTABLEKS                       R30 R21 K17 ["joint"]
      687 NAMECALL                         R30 R30 K9 ["GetDescendants"]
      689 CALL                             R30 1 1
      690 LENGTH                           R29 R30
      691 GETTABLEKS                       R31 R21 K17 ["joint"]
      693 GETTABLE                         R30 R16 R31
      694 GETTABLE                         R31 R30 R26
      695 FASTCALL2K                       MATH_MIN R29 K76 ; [+5]
      697 MOVE                             R34 R29
      698 LOADK                            R35 K76 [15]
      699 GETIMPORT                        R33 K78 [math.min]
      701 CALL                             R33 2 1
      702 MULK                             R32 R33 K75 [0.05]
      703 ADD                              R31 R31 R32
      704 SETTABLE                         R31 R30 R26
      705 FORGLOOP                         R22 2 ; [-201]
      707 FORGLOOP                         R17 2 ; [-207]
      709 GETUPVAL                         R17 10
      710 CALL                             R17 0 1
      711 JUMPIFNOT                        R17 ; [+26]
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
      726 JUMPIFNOTEQ                      R27 R28 ; [+7]
      728 GETTABLEKS                       R28 R21 K17 ["joint"]
      730 GETTABLE                         R27 R16 R28
      731 GETTABLE                         R28 R27 R26
      732 ADDK                             R28 R28 K79 [100]
      733 SETTABLE                         R28 R27 R26
      734 FORGLOOP                         R22 2 ; [-15]
      736 FORGLOOP                         R17 2 ; [-21]
      738 NEWTABLE                         R17 0 0
      740 MOVE                             R18 R6
      741 LOADNIL                          R19
      742 LOADNIL                          R20
      743 FORGPREP                         R18
      744 GETUPVAL                         R23 0
      745 LOADNIL                          R24
      746 LOADNIL                          R25
      747 FORGPREP                         R23
      748 DUPTABLE                         R30 K82 [{"joint", "rigLabel", "score"}]
      749 GETTABLEKS                       R31 R22 K17 ["joint"]
      751 SETTABLEKS                       R31 R30 K17 ["joint"]
      753 SETTABLEKS                       R27 R30 K80 ["rigLabel"]
      755 GETTABLEKS                       R33 R22 K17 ["joint"]
      757 GETTABLE                         R32 R16 R33
      758 GETTABLE                         R31 R32 R27
      759 SETTABLEKS                       R31 R30 K81 ["score"]
      761 FASTCALL2                        TABLE_INSERT R17 R30 ; [+4]
      763 MOVE                             R29 R17
      764 GETIMPORT                        R28 K25 [table.insert]
      766 CALL                             R28 2 0
      767 FORGLOOP                         R23 2 ; [-20]
      769 FORGLOOP                         R18 2 ; [-26]
      771 GETIMPORT                        R18 K84 [table.sort]
      773 MOVE                             R19 R17
      774 DUPCLOSURE                       R20 K85 [PROTO_4]
      775 CALL                             R18 2 0
      776 NEWTABLE                         R18 0 0
      778 NEWTABLE                         R19 0 0
      780 NEWTABLE                         R20 0 0
      782 NEWTABLE                         R21 0 0
      784 NEWCLOSURE                       R22 P1
      785 CAPTURE                          UPVAL U3
      786 CAPTURE                          VAL R20
      787 CAPTURE                          VAL R18
      788 NEWCLOSURE                       R23 P2
      789 CAPTURE                          UPVAL U3
      790 CAPTURE                          VAL R21
      791 CAPTURE                          VAL R19
      792 NEWCLOSURE                       R24 P3
      793 CAPTURE                          UPVAL U3
      794 CAPTURE                          VAL R20
      795 CAPTURE                          VAL R21
      796 CAPTURE                          VAL R18
      797 CAPTURE                          VAL R19
      798 GETUPVAL                         R25 0
      799 LOADNIL                          R26
      800 LOADNIL                          R27
      801 FORGPREP                         R25
      802 MOVE                             R32 R29
      803 NAMECALL                         R30 R0 K86 ["GetJoint"]
      805 CALL                             R30 2 1
      806 JUMPIFNOT                        R30 ; [+22]
      807 GETUPVAL                         R31 3
      808 CALL                             R31 0 1
      809 JUMPIFNOT                        R31 ; [+5]
      810 LOADB                            R31 1
      811 SETTABLE                         R31 R20 R30
      812 LOADB                            R31 1
      813 SETTABLE                         R31 R21 R29
      814 JUMP                             ; [+14]
      815 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      817 MOVE                             R32 R18
      818 MOVE                             R33 R30
      819 GETIMPORT                        R31 K25 [table.insert]
      821 CALL                             R31 2 0
      822 FASTCALL2                        TABLE_INSERT R19 R29 ; [+5]
      824 MOVE                             R32 R19
      825 MOVE                             R33 R29
      826 GETIMPORT                        R31 K25 [table.insert]
      828 CALL                             R31 2 0
      829 FORGLOOP                         R25 2 ; [-28]
      831 MOVE                             R25 R17
      832 LOADNIL                          R26
      833 LOADNIL                          R27
      834 FORGPREP                         R25
      835 GETTABLEKS                       R30 R29 K81 ["score"]
      837 LOADK                            R31 K44 [0.5]
      838 JUMPIFLT                         R30 R31 ; [+78]
      840 GETTABLEKS                       R31 R29 K17 ["joint"]
      842 GETUPVAL                         R32 3
      843 CALL                             R32 0 1
      844 JUMPIFNOT                        R32 ; [+6]
      845 GETTABLE                         R32 R20 R31
      846 JUMPIFEQKB                       R32 TRUE ; [+2]
      848 LOADB                            R30 0 +1
      849 LOADB                            R30 1
      850 JUMP                             ; [+9]
      851 GETIMPORT                        R32 K38 [table.find]
      853 MOVE                             R33 R18
      854 MOVE                             R34 R31
      855 CALL                             R32 2 1
      856 JUMPIFNOTEQKNIL                  R32 ; [+2]
      858 LOADB                            R30 0 +1
      859 LOADB                            R30 1
      860 JUMPIF                           R30 ; [+54]
      861 GETTABLEKS                       R31 R29 K80 ["rigLabel"]
      863 GETUPVAL                         R32 3
      864 CALL                             R32 0 1
      865 JUMPIFNOT                        R32 ; [+6]
      866 GETTABLE                         R32 R21 R31
      867 JUMPIFEQKB                       R32 TRUE ; [+2]
      869 LOADB                            R30 0 +1
      870 LOADB                            R30 1
      871 JUMP                             ; [+9]
      872 GETIMPORT                        R32 K38 [table.find]
      874 MOVE                             R33 R19
      875 MOVE                             R34 R31
      876 CALL                             R32 2 1
      877 JUMPIFNOTEQKNIL                  R32 ; [+2]
      879 LOADB                            R30 0 +1
      880 LOADB                            R30 1
      881 JUMPIF                           R30 ; [+33]
      882 GETTABLEKS                       R30 R29 K17 ["joint"]
      884 GETTABLEKS                       R31 R29 K80 ["rigLabel"]
      886 GETUPVAL                         R32 3
      887 CALL                             R32 0 1
      888 JUMPIFNOT                        R32 ; [+5]
      889 LOADB                            R32 1
      890 SETTABLE                         R32 R20 R30
      891 LOADB                            R32 1
      892 SETTABLE                         R32 R21 R31
      893 JUMP                             ; [+14]
      894 FASTCALL2                        TABLE_INSERT R18 R30 ; [+5]
      896 MOVE                             R33 R18
      897 MOVE                             R34 R30
      898 GETIMPORT                        R32 K25 [table.insert]
      900 CALL                             R32 2 0
      901 FASTCALL2                        TABLE_INSERT R19 R31 ; [+5]
      903 MOVE                             R33 R19
      904 MOVE                             R34 R31
      905 GETIMPORT                        R32 K25 [table.insert]
      907 CALL                             R32 2 0
      908 GETTABLEKS                       R32 R29 K80 ["rigLabel"]
      910 GETTABLEKS                       R33 R29 K17 ["joint"]
      912 NAMECALL                         R30 R0 K0 ["SetJoint"]
      914 CALL                             R30 3 0
      915 FORGLOOP                         R25 2 ; [-81]
      917 GETUPVAL                         R25 2
      918 CALL                             R25 0 1
      919 JUMPIFNOT                        R25 ; [+1]
      920 RETURN                           R17 1
      921 LOADNIL                          R25
      922 RETURN                           R25 1

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
       19 GETTABLEKS                       R4 R4 K8 ["getFFlagAdaptiveAnimationAutomapperNonHumanoidFix"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K7 ["Flags"]
       26 GETTABLEKS                       R5 R5 K9 ["getFFlagAdaptiveAnimationAutomapperPenaltyFix"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K7 ["Flags"]
       33 GETTABLEKS                       R6 R6 K10 ["getFFlagAdaptiveAnimationAutomapperPerf"]
       35 CALL                             R5 1 1
       36 DUPTABLE                         R6 K31 [{["tokenLengthWeight"] = 0.3, ["sideLeftRightWeight"] = 1, ["parentInfluenceWeight"] = 0.3, ["childInfluenceWeight"] = 0.1, ["leftRightPositionThreshold"] = 0.02, ["distanceSmoothingKernel"] = 0.1, ["minScoreThreshold"] = 0.5, ["nameWeight"] = 3, ["positionWeight"] = 0.5, ["rootDepthPenalty"] = 0.5, ["handBoostPerDescendant"] = 0.05, ["exactNameMatchBonus"] = 100}]
       37 NEWTABLE                         R7 32 0
       39 GETIMPORT                        R8 K35 [Enum.RigLabel.Root]
       41 NEWTABLE                         R9 0 6
       43 LOADK                            R10 K36 ["root"]
       44 LOADK                            R11 K37 ["torso"]
       45 LOADK                            R12 K38 ["lower-torso"]
       46 LOADK                            R13 K39 ["waist"]
       47 LOADK                            R14 K40 ["hips"]
       48 LOADK                            R15 K41 ["pelvis"]
       49 SETLIST                          R9 R10 6 [1]
       51 SETTABLE                         R9 R7 R8
       52 GETIMPORT                        R8 K43 [Enum.RigLabel.Waist]
       54 NEWTABLE                         R9 0 1
       56 LOADK                            R10 K44 ["chest"]
       57 SETLIST                          R9 R10 1 [1]
       59 SETTABLE                         R9 R7 R8
       60 GETIMPORT                        R8 K46 [Enum.RigLabel.Chest]
       62 NEWTABLE                         R9 0 5
       64 LOADK                            R10 K47 ["upper-torso"]
       65 LOADK                            R11 K37 ["torso"]
       66 LOADK                            R12 K48 ["spine"]
       67 LOADK                            R13 K49 ["upper-chest"]
       68 LOADK                            R14 K44 ["chest"]
       69 SETLIST                          R9 R10 5 [1]
       71 SETTABLE                         R9 R7 R8
       72 GETIMPORT                        R8 K51 [Enum.RigLabel.Neck]
       74 NEWTABLE                         R9 0 1
       76 LOADK                            R10 K52 ["neck"]
       77 SETLIST                          R9 R10 1 [1]
       79 SETTABLE                         R9 R7 R8
       80 GETIMPORT                        R8 K54 [Enum.RigLabel.HeadBase]
       82 NEWTABLE                         R9 0 1
       84 LOADK                            R10 K55 ["head"]
       85 SETLIST                          R9 R10 1 [1]
       87 SETTABLE                         R9 R7 R8
       88 GETIMPORT                        R8 K57 [Enum.RigLabel.LeftClavicle]
       90 NEWTABLE                         R9 0 3
       92 LOADK                            R10 K58 ["shoulder"]
       93 LOADK                            R11 K59 ["clavicle"]
       94 LOADK                            R12 K60 ["collar"]
       95 SETLIST                          R9 R10 3 [1]
       97 SETTABLE                         R9 R7 R8
       98 GETIMPORT                        R8 K62 [Enum.RigLabel.LeftShoulder]
      100 NEWTABLE                         R9 0 4
      102 LOADK                            R10 K58 ["shoulder"]
      103 LOADK                            R11 K63 ["arm"]
      104 LOADK                            R12 K64 ["upper-arm"]
      105 LOADK                            R13 K65 ["up-arm"]
      106 SETLIST                          R9 R10 4 [1]
      108 SETTABLE                         R9 R7 R8
      109 GETIMPORT                        R8 K67 [Enum.RigLabel.LeftElbow]
      111 NEWTABLE                         R9 0 6
      113 LOADK                            R10 K68 ["lower-arm"]
      114 LOADK                            R11 K69 ["elbow"]
      115 LOADK                            R12 K70 ["fore-arm"]
      116 LOADK                            R13 K71 ["down-arm"]
      117 LOADK                            R14 K63 ["arm"]
      118 LOADK                            R15 K72 ["lo-arm"]
      119 SETLIST                          R9 R10 6 [1]
      121 SETTABLE                         R9 R7 R8
      122 GETIMPORT                        R8 K74 [Enum.RigLabel.LeftWrist]
      124 NEWTABLE                         R9 0 2
      126 LOADK                            R10 K75 ["hand"]
      127 LOADK                            R11 K76 ["wrist"]
      128 SETLIST                          R9 R10 2 [1]
      130 SETTABLE                         R9 R7 R8
      131 GETIMPORT                        R8 K78 [Enum.RigLabel.LeftHip]
      133 NEWTABLE                         R9 0 5
      135 LOADK                            R10 K79 ["leg"]
      136 LOADK                            R11 K80 ["hip"]
      137 LOADK                            R12 K81 ["upper-leg"]
      138 LOADK                            R13 K82 ["up-leg"]
      139 LOADK                            R14 K83 ["thigh"]
      140 SETLIST                          R9 R10 5 [1]
      142 SETTABLE                         R9 R7 R8
      143 GETIMPORT                        R8 K85 [Enum.RigLabel.LeftKnee]
      145 NEWTABLE                         R9 0 7
      147 LOADK                            R10 K79 ["leg"]
      148 LOADK                            R11 K86 ["lower-leg"]
      149 LOADK                            R12 K87 ["knee"]
      150 LOADK                            R13 K88 ["calf"]
      151 LOADK                            R14 K89 ["down-leg"]
      152 LOADK                            R15 K90 ["lo-leg"]
      153 LOADK                            R16 K91 ["shin"]
      154 SETLIST                          R9 R10 7 [1]
      156 SETTABLE                         R9 R7 R8
      157 GETIMPORT                        R8 K93 [Enum.RigLabel.LeftAnkle]
      159 NEWTABLE                         R9 0 2
      161 LOADK                            R10 K94 ["foot"]
      162 LOADK                            R11 K95 ["ankle"]
      163 SETLIST                          R9 R10 2 [1]
      165 SETTABLE                         R9 R7 R8
      166 GETIMPORT                        R8 K97 [Enum.RigLabel.LeftToeBase]
      168 NEWTABLE                         R9 0 5
      170 LOADK                            R10 K98 ["toe-base"]
      171 LOADK                            R11 K99 ["toe"]
      172 LOADK                            R12 K100 ["toes"]
      173 LOADK                            R13 K94 ["foot"]
      174 LOADK                            R14 K101 ["ball"]
      175 SETLIST                          R9 R10 5 [1]
      177 SETTABLE                         R9 R7 R8
      178 GETIMPORT                        R8 K103 [Enum.RigLabel.RightClavicle]
      180 LOADNIL                          R9
      181 SETTABLE                         R9 R7 R8
      182 GETIMPORT                        R8 K105 [Enum.RigLabel.RightShoulder]
      184 LOADNIL                          R9
      185 SETTABLE                         R9 R7 R8
      186 GETIMPORT                        R8 K107 [Enum.RigLabel.RightElbow]
      188 LOADNIL                          R9
      189 SETTABLE                         R9 R7 R8
      190 GETIMPORT                        R8 K109 [Enum.RigLabel.RightWrist]
      192 LOADNIL                          R9
      193 SETTABLE                         R9 R7 R8
      194 GETIMPORT                        R8 K111 [Enum.RigLabel.RightHip]
      196 LOADNIL                          R9
      197 SETTABLE                         R9 R7 R8
      198 GETIMPORT                        R8 K113 [Enum.RigLabel.RightKnee]
      200 LOADNIL                          R9
      201 SETTABLE                         R9 R7 R8
      202 GETIMPORT                        R8 K115 [Enum.RigLabel.RightAnkle]
      204 LOADNIL                          R9
      205 SETTABLE                         R9 R7 R8
      206 GETIMPORT                        R8 K117 [Enum.RigLabel.RightToeBase]
      208 LOADNIL                          R9
      209 SETTABLE                         R9 R7 R8
      210 GETIMPORT                        R8 K119 [Enum.RigLabel.Spine]
      212 NEWTABLE                         R9 0 1
      214 LOADK                            R10 K48 ["spine"]
      215 SETLIST                          R9 R10 1 [1]
      217 SETTABLE                         R9 R7 R8
      218 NEWTABLE                         R8 0 8
      220 GETIMPORT                        R9 K57 [Enum.RigLabel.LeftClavicle]
      222 GETIMPORT                        R10 K62 [Enum.RigLabel.LeftShoulder]
      224 GETIMPORT                        R11 K67 [Enum.RigLabel.LeftElbow]
      226 GETIMPORT                        R12 K74 [Enum.RigLabel.LeftWrist]
      228 GETIMPORT                        R13 K78 [Enum.RigLabel.LeftHip]
      230 GETIMPORT                        R14 K85 [Enum.RigLabel.LeftKnee]
      232 GETIMPORT                        R15 K93 [Enum.RigLabel.LeftAnkle]
      234 GETIMPORT                        R16 K97 [Enum.RigLabel.LeftToeBase]
      236 SETLIST                          R8 R9 8 [1]
      238 NEWTABLE                         R9 0 0
      240 NEWTABLE                         R10 8 0
      242 GETIMPORT                        R11 K57 [Enum.RigLabel.LeftClavicle]
      244 GETIMPORT                        R12 K103 [Enum.RigLabel.RightClavicle]
      246 SETTABLE                         R12 R10 R11
      247 GETIMPORT                        R11 K62 [Enum.RigLabel.LeftShoulder]
      249 GETIMPORT                        R12 K105 [Enum.RigLabel.RightShoulder]
      251 SETTABLE                         R12 R10 R11
      252 GETIMPORT                        R11 K67 [Enum.RigLabel.LeftElbow]
      254 GETIMPORT                        R12 K107 [Enum.RigLabel.RightElbow]
      256 SETTABLE                         R12 R10 R11
      257 GETIMPORT                        R11 K74 [Enum.RigLabel.LeftWrist]
      259 GETIMPORT                        R12 K109 [Enum.RigLabel.RightWrist]
      261 SETTABLE                         R12 R10 R11
      262 GETIMPORT                        R11 K78 [Enum.RigLabel.LeftHip]
      264 GETIMPORT                        R12 K111 [Enum.RigLabel.RightHip]
      266 SETTABLE                         R12 R10 R11
      267 GETIMPORT                        R11 K85 [Enum.RigLabel.LeftKnee]
      269 GETIMPORT                        R12 K113 [Enum.RigLabel.RightKnee]
      271 SETTABLE                         R12 R10 R11
      272 GETIMPORT                        R11 K93 [Enum.RigLabel.LeftAnkle]
      274 GETIMPORT                        R12 K115 [Enum.RigLabel.RightAnkle]
      276 SETTABLE                         R12 R10 R11
      277 GETIMPORT                        R11 K97 [Enum.RigLabel.LeftToeBase]
      279 GETIMPORT                        R12 K117 [Enum.RigLabel.RightToeBase]
      281 SETTABLE                         R12 R10 R11
      282 MOVE                             R11 R10
      283 LOADNIL                          R12
      284 LOADNIL                          R13
      285 FORGPREP                         R11
      286 SETTABLE                         R14 R10 R15
      287 FORGLOOP                         R11 2 ; [-2]
      289 MOVE                             R11 R8
      290 LOADNIL                          R12
      291 LOADNIL                          R13
      292 FORGPREP                         R11
      293 LOADK                            R16 K120 ["left"]
      294 SETTABLE                         R16 R9 R15
      295 GETTABLE                         R16 R10 R15
      296 LOADK                            R17 K121 ["right"]
      297 SETTABLE                         R17 R9 R16
      298 FORGLOOP                         R11 2 ; [-6]
      300 NEWTABLE                         R11 16 0
      302 GETIMPORT                        R12 K35 [Enum.RigLabel.Root]
      304 GETIMPORT                        R13 K124 [Vector2.new]
      306 LOADN                            R14 0
      307 LOADK                            R15 K125 [0.199]
      308 CALL                             R13 2 1
      309 SETTABLE                         R13 R11 R12
      310 GETIMPORT                        R12 K43 [Enum.RigLabel.Waist]
      312 GETIMPORT                        R13 K124 [Vector2.new]
      314 LOADN                            R14 0
      315 LOADK                            R15 K126 [0.431]
      316 CALL                             R13 2 1
      317 SETTABLE                         R13 R11 R12
      318 GETIMPORT                        R12 K46 [Enum.RigLabel.Chest]
      320 GETIMPORT                        R13 K124 [Vector2.new]
      322 LOADN                            R14 0
      323 LOADK                            R15 K127 [0.669]
      324 CALL                             R13 2 1
      325 SETTABLE                         R13 R11 R12
      326 GETIMPORT                        R12 K51 [Enum.RigLabel.Neck]
      328 GETIMPORT                        R13 K124 [Vector2.new]
      330 LOADN                            R14 0
      331 LOADK                            R15 K128 [0.896]
      332 CALL                             R13 2 1
      333 SETTABLE                         R13 R11 R12
      334 GETIMPORT                        R12 K54 [Enum.RigLabel.HeadBase]
      336 GETIMPORT                        R13 K124 [Vector2.new]
      338 LOADN                            R14 0
      339 LOADN                            R15 1
      340 CALL                             R13 2 1
      341 SETTABLE                         R13 R11 R12
      342 GETIMPORT                        R12 K57 [Enum.RigLabel.LeftClavicle]
      344 GETIMPORT                        R13 K124 [Vector2.new]
      346 LOADK                            R14 K129 [-0.075]
      347 LOADK                            R15 K130 [0.783]
      348 CALL                             R13 2 1
      349 SETTABLE                         R13 R11 R12
      350 GETIMPORT                        R12 K62 [Enum.RigLabel.LeftShoulder]
      352 GETIMPORT                        R13 K124 [Vector2.new]
      354 LOADK                            R14 K131 [-0.365]
      355 LOADK                            R15 K132 [0.78]
      356 CALL                             R13 2 1
      357 SETTABLE                         R13 R11 R12
      358 GETIMPORT                        R12 K67 [Enum.RigLabel.LeftElbow]
      360 GETIMPORT                        R13 K124 [Vector2.new]
      362 LOADK                            R14 K133 [-0.722]
      363 LOADK                            R15 K134 [0.566]
      364 CALL                             R13 2 1
      365 SETTABLE                         R13 R11 R12
      366 GETIMPORT                        R12 K74 [Enum.RigLabel.LeftWrist]
      368 GETIMPORT                        R13 K124 [Vector2.new]
      370 LOADN                            R14 -1
      371 LOADK                            R15 K135 [0.385]
      372 CALL                             R13 2 1
      373 SETTABLE                         R13 R11 R12
      374 GETIMPORT                        R12 K78 [Enum.RigLabel.LeftHip]
      376 GETIMPORT                        R13 K124 [Vector2.new]
      378 LOADK                            R14 K136 [-0.182]
      379 LOADK                            R15 K137 [0.118]
      380 CALL                             R13 2 1
      381 SETTABLE                         R13 R11 R12
      382 GETIMPORT                        R12 K85 [Enum.RigLabel.LeftKnee]
      384 GETIMPORT                        R13 K124 [Vector2.new]
      386 LOADK                            R14 K138 [-0.231]
      387 LOADK                            R15 K139 [-0.381]
      388 CALL                             R13 2 1
      389 SETTABLE                         R13 R11 R12
      390 GETIMPORT                        R12 K93 [Enum.RigLabel.LeftAnkle]
      392 GETIMPORT                        R13 K124 [Vector2.new]
      394 LOADK                            R14 K140 [-0.261]
      395 LOADK                            R15 K141 [-0.917]
      396 CALL                             R13 2 1
      397 SETTABLE                         R13 R11 R12
      398 GETIMPORT                        R12 K97 [Enum.RigLabel.LeftToeBase]
      400 GETIMPORT                        R13 K124 [Vector2.new]
      402 LOADK                            R14 K142 [-0.266]
      403 LOADN                            R15 -1
      404 CALL                             R13 2 1
      405 SETTABLE                         R13 R11 R12
      406 MOVE                             R12 R8
      407 LOADNIL                          R13
      408 LOADNIL                          R14
      409 FORGPREP                         R12
      410 GETTABLE                         R17 R10 R16
      411 GETTABLE                         R18 R11 R16
      412 JUMPIFNOT                        R18 ; [+9]
      413 GETIMPORT                        R19 K124 [Vector2.new]
      415 GETTABLEKS                       R21 R18 K143 ["X"]
      417 MINUS                            R20 R21
      418 GETTABLEKS                       R21 R18 K144 ["Y"]
      420 CALL                             R19 2 1
      421 SETTABLE                         R19 R11 R17
      422 FORGLOOP                         R12 2 ; [-13]
      424 GETIMPORT                        R12 K119 [Enum.RigLabel.Spine]
      426 GETIMPORT                        R13 K124 [Vector2.new]
      428 LOADN                            R14 0
      429 LOADK                            R15 K145 [0.55]
      430 CALL                             R13 2 1
      431 SETTABLE                         R13 R11 R12
      432 NEWTABLE                         R12 16 0
      434 GETIMPORT                        R13 K35 [Enum.RigLabel.Root]
      436 LOADNIL                          R14
      437 SETTABLE                         R14 R12 R13
      438 GETIMPORT                        R13 K43 [Enum.RigLabel.Waist]
      440 GETIMPORT                        R14 K35 [Enum.RigLabel.Root]
      442 SETTABLE                         R14 R12 R13
      443 GETIMPORT                        R13 K119 [Enum.RigLabel.Spine]
      445 GETIMPORT                        R14 K43 [Enum.RigLabel.Waist]
      447 SETTABLE                         R14 R12 R13
      448 GETIMPORT                        R13 K46 [Enum.RigLabel.Chest]
      450 GETIMPORT                        R14 K119 [Enum.RigLabel.Spine]
      452 SETTABLE                         R14 R12 R13
      453 GETIMPORT                        R13 K51 [Enum.RigLabel.Neck]
      455 GETIMPORT                        R14 K46 [Enum.RigLabel.Chest]
      457 SETTABLE                         R14 R12 R13
      458 GETIMPORT                        R13 K54 [Enum.RigLabel.HeadBase]
      460 GETIMPORT                        R14 K51 [Enum.RigLabel.Neck]
      462 SETTABLE                         R14 R12 R13
      463 GETIMPORT                        R13 K57 [Enum.RigLabel.LeftClavicle]
      465 GETIMPORT                        R14 K46 [Enum.RigLabel.Chest]
      467 SETTABLE                         R14 R12 R13
      468 GETIMPORT                        R13 K62 [Enum.RigLabel.LeftShoulder]
      470 GETIMPORT                        R14 K57 [Enum.RigLabel.LeftClavicle]
      472 SETTABLE                         R14 R12 R13
      473 GETIMPORT                        R13 K67 [Enum.RigLabel.LeftElbow]
      475 GETIMPORT                        R14 K62 [Enum.RigLabel.LeftShoulder]
      477 SETTABLE                         R14 R12 R13
      478 GETIMPORT                        R13 K74 [Enum.RigLabel.LeftWrist]
      480 GETIMPORT                        R14 K67 [Enum.RigLabel.LeftElbow]
      482 SETTABLE                         R14 R12 R13
      483 GETIMPORT                        R13 K78 [Enum.RigLabel.LeftHip]
      485 GETIMPORT                        R14 K35 [Enum.RigLabel.Root]
      487 SETTABLE                         R14 R12 R13
      488 GETIMPORT                        R13 K85 [Enum.RigLabel.LeftKnee]
      490 GETIMPORT                        R14 K78 [Enum.RigLabel.LeftHip]
      492 SETTABLE                         R14 R12 R13
      493 GETIMPORT                        R13 K93 [Enum.RigLabel.LeftAnkle]
      495 GETIMPORT                        R14 K85 [Enum.RigLabel.LeftKnee]
      497 SETTABLE                         R14 R12 R13
      498 GETIMPORT                        R13 K97 [Enum.RigLabel.LeftToeBase]
      500 GETIMPORT                        R14 K93 [Enum.RigLabel.LeftAnkle]
      502 SETTABLE                         R14 R12 R13
      503 MOVE                             R13 R8
      504 LOADNIL                          R14
      505 LOADNIL                          R15
      506 FORGPREP                         R13
      507 GETTABLE                         R18 R10 R17
      508 GETTABLE                         R19 R12 R17
      509 JUMPIFNOT                        R19 ; [+3]
      510 GETTABLE                         R21 R10 R19
      511 OR                               R20 R21 R19
      512 SETTABLE                         R20 R12 R18
      513 FORGLOOP                         R13 2 ; [-7]
      515 NEWTABLE                         R13 16 0
      517 GETIMPORT                        R14 K35 [Enum.RigLabel.Root]
      519 GETIMPORT                        R15 K43 [Enum.RigLabel.Waist]
      521 SETTABLE                         R15 R13 R14
      522 GETIMPORT                        R14 K43 [Enum.RigLabel.Waist]
      524 GETIMPORT                        R15 K119 [Enum.RigLabel.Spine]
      526 SETTABLE                         R15 R13 R14
      527 GETIMPORT                        R14 K119 [Enum.RigLabel.Spine]
      529 GETIMPORT                        R15 K46 [Enum.RigLabel.Chest]
      531 SETTABLE                         R15 R13 R14
      532 GETIMPORT                        R14 K46 [Enum.RigLabel.Chest]
      534 GETIMPORT                        R15 K51 [Enum.RigLabel.Neck]
      536 SETTABLE                         R15 R13 R14
      537 GETIMPORT                        R14 K51 [Enum.RigLabel.Neck]
      539 GETIMPORT                        R15 K54 [Enum.RigLabel.HeadBase]
      541 SETTABLE                         R15 R13 R14
      542 GETIMPORT                        R14 K54 [Enum.RigLabel.HeadBase]
      544 LOADNIL                          R15
      545 SETTABLE                         R15 R13 R14
      546 GETIMPORT                        R14 K57 [Enum.RigLabel.LeftClavicle]
      548 GETIMPORT                        R15 K62 [Enum.RigLabel.LeftShoulder]
      550 SETTABLE                         R15 R13 R14
      551 GETIMPORT                        R14 K62 [Enum.RigLabel.LeftShoulder]
      553 GETIMPORT                        R15 K67 [Enum.RigLabel.LeftElbow]
      555 SETTABLE                         R15 R13 R14
      556 GETIMPORT                        R14 K67 [Enum.RigLabel.LeftElbow]
      558 GETIMPORT                        R15 K74 [Enum.RigLabel.LeftWrist]
      560 SETTABLE                         R15 R13 R14
      561 GETIMPORT                        R14 K74 [Enum.RigLabel.LeftWrist]
      563 LOADNIL                          R15
      564 SETTABLE                         R15 R13 R14
      565 GETIMPORT                        R14 K78 [Enum.RigLabel.LeftHip]
      567 GETIMPORT                        R15 K85 [Enum.RigLabel.LeftKnee]
      569 SETTABLE                         R15 R13 R14
      570 GETIMPORT                        R14 K85 [Enum.RigLabel.LeftKnee]
      572 GETIMPORT                        R15 K93 [Enum.RigLabel.LeftAnkle]
      574 SETTABLE                         R15 R13 R14
      575 GETIMPORT                        R14 K93 [Enum.RigLabel.LeftAnkle]
      577 GETIMPORT                        R15 K97 [Enum.RigLabel.LeftToeBase]
      579 SETTABLE                         R15 R13 R14
      580 GETIMPORT                        R14 K97 [Enum.RigLabel.LeftToeBase]
      582 LOADNIL                          R15
      583 SETTABLE                         R15 R13 R14
      584 MOVE                             R14 R8
      585 LOADNIL                          R15
      586 LOADNIL                          R16
      587 FORGPREP                         R14
      588 GETTABLE                         R19 R10 R18
      589 GETTABLE                         R20 R13 R18
      590 JUMPIFNOT                        R20 ; [+2]
      591 GETTABLE                         R21 R10 R20
      592 SETTABLE                         R21 R13 R19
      593 FORGLOOP                         R14 2 ; [-6]
      595 GETTABLEKS                       R14 R2 K146 ["bodyRigLabels"]
      597 NEWTABLE                         R15 0 0
      599 MOVE                             R16 R8
      600 LOADNIL                          R17
      601 LOADNIL                          R18
      602 FORGPREP                         R16
      603 GETTABLE                         R21 R10 R20
      604 JUMPIFNOT                        R21 ; [+2]
      605 GETTABLE                         R22 R7 R20
      606 SETTABLE                         R22 R7 R21
      607 FORGLOOP                         R16 2 ; [-5]
      609 MOVE                             R16 R14
      610 LOADNIL                          R17
      611 LOADNIL                          R18
      612 FORGPREP                         R16
      613 GETTABLE                         R21 R7 R20
      614 JUMPIFNOT                        R21 ; [+10]
      615 MOVE                             R22 R21
      616 LOADNIL                          R23
      617 LOADNIL                          R24
      618 FORGPREP                         R22
      619 GETTABLE                         R29 R15 R26
      620 ORK                              R28 R29 K147 [0]
      621 ADDK                             R27 R28 K14 [1]
      622 SETTABLE                         R27 R15 R26
      623 FORGLOOP                         R22 2 ; [-5]
      625 FORGLOOP                         R16 2 ; [-13]
      627 MOVE                             R16 R15
      628 LOADNIL                          R17
      629 LOADNIL                          R18
      630 FORGPREP                         R16
      631 DIVRK                            R21 K14 [1] R20
      632 SETTABLE                         R21 R15 R19
      633 FORGLOOP                         R16 2 ; [-3]
      635 DUPCLOSURE                       R16 K148 [PROTO_0]
      636 DUPCLOSURE                       R17 K149 [PROTO_1]
      637 CAPTURE                          VAL R7
      638 CAPTURE                          VAL R15
      639 CAPTURE                          VAL R9
      640 CAPTURE                          VAL R16
      641 DUPCLOSURE                       R18 K150 [PROTO_2]
      642 CAPTURE                          VAL R7
      643 DUPCLOSURE                       R19 K151 [PROTO_3]
      644 CAPTURE                          VAL R11
      645 NEWTABLE                         R20 8 0
      647 DUPCLOSURE                       R21 K152 [PROTO_8]
      648 CAPTURE                          VAL R14
      649 CAPTURE                          VAL R2
      650 CAPTURE                          VAL R4
      651 CAPTURE                          VAL R5
      652 CAPTURE                          VAL R17
      653 CAPTURE                          VAL R11
      654 CAPTURE                          VAL R6
      655 CAPTURE                          VAL R12
      656 CAPTURE                          VAL R18
      657 CAPTURE                          VAL R13
      658 CAPTURE                          VAL R3
      659 SETTABLEKS                       R21 R20 K153 ["setup"]
      661 SETTABLEKS                       R16 R20 K154 ["guessJointSide"]
      663 SETTABLEKS                       R17 R20 K155 ["nameScore"]
      665 SETTABLEKS                       R19 R20 K156 ["positionScore"]
      667 SETTABLEKS                       R10 R20 K157 ["symmetryCounterparts"]
      669 SETTABLEKS                       R12 R20 K158 ["parentRigLabel"]
      671 SETTABLEKS                       R13 R20 K159 ["directChildRigLabel"]
      673 RETURN                           R20 1
