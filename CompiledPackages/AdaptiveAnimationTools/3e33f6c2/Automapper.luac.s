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
      162 GETUPVAL                         R8 1
      163 GETTABLEKS                       R8 R8 K27 ["getCharacterRotation"]
      165 MOVE                             R9 R1
      166 CALL                             R8 1 1
      167 NEWTABLE                         R9 0 0
      169 MOVE                             R10 R6
      170 LOADNIL                          R11
      171 LOADNIL                          R12
      172 FORGPREP                         R10
      173 GETTABLEKS                       R17 R14 K21 ["position"]
      175 NAMECALL                         R15 R8 K28 ["PointToObjectSpace"]
      177 CALL                             R15 2 1
      178 GETIMPORT                        R16 K31 [Vector2.new]
      180 GETTABLEKS                       R17 R15 K32 ["X"]
      182 GETTABLEKS                       R18 R15 K33 ["Y"]
      184 CALL                             R16 2 1
      185 SETTABLE                         R16 R9 R13
      186 FORGLOOP                         R10 2 ; [-14]
      188 GETUPVAL                         R10 1
      189 GETTABLEKS                       R10 R10 K34 ["normalizePoints"]
      191 MOVE                             R11 R9
      192 CALL                             R10 1 0
      193 NEWTABLE                         R10 0 0
      195 MOVE                             R11 R6
      196 LOADNIL                          R12
      197 LOADNIL                          R13
      198 FORGPREP                         R11
      199 GETTABLEKS                       R18 R15 K18 ["name"]
      201 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      203 MOVE                             R17 R10
      204 GETIMPORT                        R16 K25 [table.insert]
      206 CALL                             R16 2 0
      207 FORGLOOP                         R11 2 ; [-9]
      209 GETUPVAL                         R11 1
      210 GETTABLEKS                       R11 R11 K35 ["commonPrefix"]
      212 MOVE                             R12 R10
      213 CALL                             R11 1 1
      214 GETUPVAL                         R12 1
      215 GETTABLEKS                       R12 R12 K36 ["commonSuffix"]
      217 MOVE                             R13 R10
      218 CALL                             R12 1 1
      219 MOVE                             R13 R6
      220 LOADNIL                          R14
      221 LOADNIL                          R15
      222 FORGPREP                         R13
      223 GETUPVAL                         R18 1
      224 GETTABLEKS                       R18 R18 K37 ["trimStart"]
      226 GETTABLEKS                       R19 R17 K18 ["name"]
      228 MOVE                             R20 R11
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K18 ["name"]
      232 GETUPVAL                         R18 1
      233 GETTABLEKS                       R18 R18 K38 ["trimEnd"]
      235 GETTABLEKS                       R19 R17 K18 ["name"]
      237 MOVE                             R20 R12
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K18 ["name"]
      241 FORGLOOP                         R13 2 ; [-19]
      243 NEWTABLE                         R13 0 0
      245 MOVE                             R14 R6
      246 LOADNIL                          R15
      247 LOADNIL                          R16
      248 FORGPREP                         R14
      249 GETIMPORT                        R19 K40 [table.find]
      251 MOVE                             R20 R13
      252 GETTABLEKS                       R21 R18 K18 ["name"]
      254 CALL                             R19 2 1
      255 JUMPIFNOT                        R19 ; [+4]
      256 GETIMPORT                        R19 K42 [warn]
      258 LOADK                            R20 K43 ["duplicate name: `{jointRef.name}` this might cause unexpected issues"]
      259 CALL                             R19 1 0
      260 GETTABLEKS                       R21 R18 K18 ["name"]
      262 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      264 MOVE                             R20 R13
      265 GETIMPORT                        R19 K25 [table.insert]
      267 CALL                             R19 2 0
      268 FORGLOOP                         R14 2 ; [-20]
      270 NEWTABLE                         R14 0 0
      272 NEWTABLE                         R15 0 0
      274 NEWTABLE                         R16 0 0
      276 MOVE                             R17 R6
      277 LOADNIL                          R18
      278 LOADNIL                          R19
      279 FORGPREP                         R17
      280 SETTABLE                         R20 R14 R21
      281 FORGLOOP                         R17 2 ; [-2]
      283 MOVE                             R17 R6
      284 LOADNIL                          R18
      285 LOADNIL                          R19
      286 FORGPREP                         R17
      287 NEWTABLE                         R22 0 0
      289 GETTABLEKS                       R23 R21 K17 ["joint"]
      291 NAMECALL                         R23 R23 K44 ["GetChildren"]
      293 CALL                             R23 1 3
      294 FORGPREP                         R23
      295 GETUPVAL                         R28 1
      296 GETTABLEKS                       R28 R28 K11 ["isValidTJoint"]
      298 MOVE                             R29 R27
      299 CALL                             R28 1 1
      300 JUMPIFNOT                        R28 ; [+7]
      301 FASTCALL2                        TABLE_INSERT R22 R27 ; [+5]
      303 MOVE                             R29 R22
      304 MOVE                             R30 R27
      305 GETIMPORT                        R28 K25 [table.insert]
      307 CALL                             R28 2 0
      308 FORGLOOP                         R23 2 ; [-14]
      310 GETTABLEKS                       R23 R21 K17 ["joint"]
      312 SETTABLE                         R22 R15 R23
      313 FORGLOOP                         R17 2 ; [-27]
      315 MOVE                             R17 R6
      316 LOADNIL                          R18
      317 LOADNIL                          R19
      318 FORGPREP                         R17
      319 GETTABLEKS                       R22 R21 K17 ["joint"]
      321 GETTABLEKS                       R24 R21 K17 ["joint"]
      323 NAMECALL                         R24 R24 K9 ["GetDescendants"]
      325 CALL                             R24 1 1
      326 LENGTH                           R23 R24
      327 SETTABLE                         R23 R16 R22
      328 FORGLOOP                         R17 2 ; [-10]
      330 NEWTABLE                         R17 0 0
      332 MOVE                             R18 R6
      333 LOADNIL                          R19
      334 LOADNIL                          R20
      335 FORGPREP                         R18
      336 GETTABLEKS                       R23 R22 K17 ["joint"]
      338 NEWTABLE                         R24 0 0
      340 SETTABLE                         R24 R17 R23
      341 GETTABLE                         R24 R14 R22
      342 GETTABLE                         R23 R9 R24
      343 GETUPVAL                         R24 0
      344 LOADNIL                          R25
      345 LOADNIL                          R26
      346 FORGPREP                         R24
      347 GETTABLEKS                       R30 R22 K17 ["joint"]
      349 GETTABLE                         R29 R17 R30
      350 LOADN                            R32 3
      351 GETUPVAL                         R33 2
      352 GETTABLEKS                       R34 R22 K18 ["name"]
      354 MOVE                             R35 R28
      355 CALL                             R33 2 1
      356 MUL                              R31 R32 R33
      357 LOADK                            R33 K45 [0.5]
      358 LOADN                            R35 0
      359 GETUPVAL                         R37 3
      360 GETTABLE                         R36 R37 R28
      361 SUB                              R37 R36 R23
      362 GETTABLEKS                       R37 R37 K46 ["Magnitude"]
      364 MINUS                            R41 R37
      365 MUL                              R40 R41 R37
      366 GETUPVAL                         R41 4
      367 GETTABLEKS                       R41 R41 K47 ["distanceSmoothingKernel"]
      369 DIV                              R39 R40 R41
      370 FASTCALL1                        MATH_EXP R39 ; [+2]
      371 GETIMPORT                        R38 K50 [math.exp]
      373 CALL                             R38 1 1
      374 MOVE                             R35 R38
      375 GETTABLEKS                       R39 R36 K32 ["X"]
      377 FASTCALL1                        MATH_SIGN R39 ; [+2]
      378 GETIMPORT                        R38 K52 [math.sign]
      380 CALL                             R38 1 1
      381 GETTABLEKS                       R40 R23 K32 ["X"]
      383 FASTCALL1                        MATH_SIGN R40 ; [+2]
      384 GETIMPORT                        R39 K52 [math.sign]
      386 CALL                             R39 1 1
      387 JUMPIFEQ                         R38 R39 ; [+14]
      389 JUMPIFNOTEQKN                    R38 K53 [0] ; [+17]
      391 GETTABLEKS                       R41 R23 K32 ["X"]
      393 FASTCALL1                        MATH_ABS R41 ; [+2]
      394 GETIMPORT                        R40 K55 [math.abs]
      396 CALL                             R40 1 1
      397 GETUPVAL                         R41 4
      398 GETTABLEKS                       R41 R41 K56 ["leftRightPositionThreshold"]
      400 JUMPIFNOTLT                      R40 R41 ; [+6]
      402 GETUPVAL                         R40 4
      403 GETTABLEKS                       R40 R40 K57 ["sideLeftRightWeight"]
      405 ADD                              R35 R35 R40
      406 JUMP                             ; [+4]
      407 GETUPVAL                         R40 4
      408 GETTABLEKS                       R40 R40 K57 ["sideLeftRightWeight"]
      410 SUB                              R35 R35 R40
      411 MOVE                             R34 R35
      412 MUL                              R32 R33 R34
      413 ADD                              R30 R31 R32
      414 SETTABLE                         R30 R29 R28
      415 FORGLOOP                         R24 2 ; [-69]
      417 FORGLOOP                         R18 2 ; [-82]
      419 MOVE                             R18 R6
      420 LOADNIL                          R19
      421 LOADNIL                          R20
      422 FORGPREP                         R18
      423 GETUPVAL                         R23 0
      424 LOADNIL                          R24
      425 LOADNIL                          R25
      426 FORGPREP                         R23
      427 GETUPVAL                         R29 5
      428 GETTABLE                         R28 R29 R27
      429 JUMPIFEQKNIL                     R28 ; [+46]
      431 GETTABLEKS                       R29 R22 K19 ["parent"]
      433 JUMPIFNOT                        R29 ; [+42]
      434 LOADB                            R29 1
      435 GETIMPORT                        R30 K60 [Enum.RigLabel.LeftToeBase]
      437 JUMPIFEQ                         R27 R30 ; [+5]
      439 GETIMPORT                        R30 K62 [Enum.RigLabel.RightToeBase]
      441 JUMPIFNOTEQ                      R27 R30 ; [+9]
      443 GETUPVAL                         R30 6
      444 GETTABLEKS                       R31 R22 K19 ["parent"]
      446 GETTABLEKS                       R31 R31 K18 ["name"]
      448 MOVE                             R32 R28
      449 CALL                             R30 2 1
      450 MOVE                             R29 R30
      451 JUMPIFNOT                        R29 ; [+24]
      452 GETTABLEKS                       R31 R22 K19 ["parent"]
      454 GETTABLEKS                       R31 R31 K17 ["joint"]
      456 GETTABLE                         R30 R17 R31
      457 JUMPIFNOT                        R30 ; [+6]
      458 GETTABLEKS                       R32 R22 K19 ["parent"]
      460 GETTABLEKS                       R32 R32 K17 ["joint"]
      462 GETTABLE                         R31 R17 R32
      463 GETTABLE                         R30 R31 R28
      464 JUMPIFEQKNIL                     R30 ; [+11]
      466 GETTABLEKS                       R32 R22 K17 ["joint"]
      468 GETTABLE                         R31 R17 R32
      469 GETTABLE                         R32 R31 R27
      470 LOADN                            R34 1
      471 LOADK                            R36 K63 [0.3]
      472 MUL                              R35 R36 R30
      473 ADD                              R33 R34 R35
      474 MUL                              R32 R32 R33
      475 SETTABLE                         R32 R31 R27
      476 GETUPVAL                         R30 7
      477 GETTABLE                         R29 R30 R27
      478 GETTABLEKS                       R31 R22 K17 ["joint"]
      480 GETTABLE                         R30 R15 R31
      481 JUMPIFEQKNIL                     R29 ; [+36]
      483 JUMPIFNOT                        R30 ; [+34]
      484 LENGTH                           R31 R30
      485 LOADN                            R32 0
      486 JUMPIFNOTLT                      R32 R31 ; [+31]
      488 LOADK                            R31 K64 [-Infinity]
      489 MOVE                             R32 R30
      490 LOADNIL                          R33
      491 LOADNIL                          R34
      492 FORGPREP                         R32
      493 GETTABLE                         R38 R17 R36
      494 GETTABLE                         R37 R38 R29
      495 JUMPIFNOT                        R37 ; [+8]
      496 FASTCALL2                        MATH_MAX R31 R37 ; [+5]
      498 MOVE                             R39 R31
      499 MOVE                             R40 R37
      500 GETIMPORT                        R38 K66 [math.max]
      502 CALL                             R38 2 1
      503 MOVE                             R31 R38
      504 FORGLOOP                         R32 2 ; [-12]
      506 JUMPIFEQKN                       R31 K64 [-Infinity] ; [+11]
      508 GETTABLEKS                       R33 R22 K17 ["joint"]
      510 GETTABLE                         R32 R17 R33
      511 GETTABLE                         R33 R32 R27
      512 LOADN                            R35 1
      513 LOADK                            R37 K67 [0.1]
      514 MUL                              R36 R37 R31
      515 ADD                              R34 R35 R36
      516 MUL                              R33 R33 R34
      517 SETTABLE                         R33 R32 R27
      518 GETIMPORT                        R31 K69 [Enum.RigLabel.Root]
      520 JUMPIFNOTEQ                      R27 R31 ; [+17]
      522 GETUPVAL                         R32 1
      523 GETTABLEKS                       R32 R32 K71 ["getDepth"]
      525 GETTABLEKS                       R33 R22 K17 ["joint"]
      527 MOVE                             R34 R3
      528 CALL                             R32 2 1
      529 SUBK                             R31 R32 K70 [1]
      530 GETTABLEKS                       R33 R22 K17 ["joint"]
      532 GETTABLE                         R32 R17 R33
      533 GETTABLE                         R33 R32 R27
      534 MULK                             R34 R31 K45 [0.5]
      535 SUB                              R33 R33 R34
      536 SETTABLE                         R33 R32 R27
      537 JUMP                             ; [+25]
      538 GETIMPORT                        R31 K73 [Enum.RigLabel.LeftWrist]
      540 JUMPIFEQ                         R27 R31 ; [+5]
      542 GETIMPORT                        R31 K75 [Enum.RigLabel.RightWrist]
      544 JUMPIFNOTEQ                      R27 R31 ; [+18]
      546 GETTABLEKS                       R32 R22 K17 ["joint"]
      548 GETTABLE                         R31 R16 R32
      549 GETTABLEKS                       R33 R22 K17 ["joint"]
      551 GETTABLE                         R32 R17 R33
      552 GETTABLE                         R33 R32 R27
      553 FASTCALL2K                       MATH_MIN R31 K77 ; [+5]
      555 MOVE                             R36 R31
      556 LOADK                            R37 K77 [15]
      557 GETIMPORT                        R35 K79 [math.min]
      559 CALL                             R35 2 1
      560 MULK                             R34 R35 K76 [0.05]
      561 ADD                              R33 R33 R34
      562 SETTABLE                         R33 R32 R27
      563 FORGLOOP                         R23 2 ; [-137]
      565 FORGLOOP                         R18 2 ; [-143]
      567 MOVE                             R18 R6
      568 LOADNIL                          R19
      569 LOADNIL                          R20
      570 FORGPREP                         R18
      571 GETUPVAL                         R23 0
      572 LOADNIL                          R24
      573 LOADNIL                          R25
      574 FORGPREP                         R23
      575 GETTABLEKS                       R28 R22 K17 ["joint"]
      577 GETTABLEKS                       R28 R28 K10 ["Name"]
      579 GETTABLEKS                       R29 R27 K10 ["Name"]
      581 JUMPIFNOTEQ                      R28 R29 ; [+7]
      583 GETTABLEKS                       R29 R22 K17 ["joint"]
      585 GETTABLE                         R28 R17 R29
      586 GETTABLE                         R29 R28 R27
      587 ADDK                             R29 R29 K80 [100]
      588 SETTABLE                         R29 R28 R27
      589 FORGLOOP                         R23 2 ; [-15]
      591 FORGLOOP                         R18 2 ; [-21]
      593 NEWTABLE                         R18 0 0
      595 MOVE                             R19 R6
      596 LOADNIL                          R20
      597 LOADNIL                          R21
      598 FORGPREP                         R19
      599 GETUPVAL                         R24 0
      600 LOADNIL                          R25
      601 LOADNIL                          R26
      602 FORGPREP                         R24
      603 DUPTABLE                         R31 K83 [{"joint", "rigLabel", "score"}]
      604 GETTABLEKS                       R32 R23 K17 ["joint"]
      606 SETTABLEKS                       R32 R31 K17 ["joint"]
      608 SETTABLEKS                       R28 R31 K81 ["rigLabel"]
      610 GETTABLEKS                       R34 R23 K17 ["joint"]
      612 GETTABLE                         R33 R17 R34
      613 GETTABLE                         R32 R33 R28
      614 SETTABLEKS                       R32 R31 K82 ["score"]
      616 FASTCALL2                        TABLE_INSERT R18 R31 ; [+4]
      618 MOVE                             R30 R18
      619 GETIMPORT                        R29 K25 [table.insert]
      621 CALL                             R29 2 0
      622 FORGLOOP                         R24 2 ; [-20]
      624 FORGLOOP                         R19 2 ; [-26]
      626 GETIMPORT                        R19 K85 [table.sort]
      628 MOVE                             R20 R18
      629 DUPCLOSURE                       R21 K86 [PROTO_4]
      630 CALL                             R19 2 0
      631 NEWTABLE                         R19 0 0
      633 NEWTABLE                         R20 0 0
      635 NEWCLOSURE                       R21 P1
      636 CAPTURE                          VAL R19
      637 NEWCLOSURE                       R22 P2
      638 CAPTURE                          VAL R20
      639 NEWCLOSURE                       R23 P3
      640 CAPTURE                          VAL R19
      641 CAPTURE                          VAL R20
      642 GETUPVAL                         R24 0
      643 LOADNIL                          R25
      644 LOADNIL                          R26
      645 FORGPREP                         R24
      646 MOVE                             R31 R28
      647 NAMECALL                         R29 R0 K87 ["GetJoint"]
      649 CALL                             R29 2 1
      650 JUMPIFNOT                        R29 ; [+4]
      651 LOADB                            R30 1
      652 SETTABLE                         R30 R19 R29
      653 LOADB                            R30 1
      654 SETTABLE                         R30 R20 R28
      655 FORGLOOP                         R24 2 ; [-10]
      657 MOVE                             R24 R18
      658 LOADNIL                          R25
      659 LOADNIL                          R26
      660 FORGPREP                         R24
      661 GETTABLEKS                       R29 R28 K82 ["score"]
      663 LOADK                            R30 K45 [0.5]
      664 JUMPIFLT                         R29 R30 ; [+34]
      666 GETTABLEKS                       R30 R28 K17 ["joint"]
      668 GETTABLE                         R31 R19 R30
      669 JUMPIFEQKB                       R31 TRUE ; [+2]
      671 LOADB                            R29 0 +1
      672 LOADB                            R29 1
      673 JUMPIF                           R29 ; [+23]
      674 GETTABLEKS                       R30 R28 K81 ["rigLabel"]
      676 GETTABLE                         R31 R20 R30
      677 JUMPIFEQKB                       R31 TRUE ; [+2]
      679 LOADB                            R29 0 +1
      680 LOADB                            R29 1
      681 JUMPIF                           R29 ; [+15]
      682 GETTABLEKS                       R29 R28 K17 ["joint"]
      684 GETTABLEKS                       R30 R28 K81 ["rigLabel"]
      686 LOADB                            R31 1
      687 SETTABLE                         R31 R19 R29
      688 LOADB                            R31 1
      689 SETTABLE                         R31 R20 R30
      690 GETTABLEKS                       R31 R28 K81 ["rigLabel"]
      692 GETTABLEKS                       R32 R28 K17 ["joint"]
      694 NAMECALL                         R29 R0 K0 ["SetJoint"]
      696 CALL                             R29 3 0
      697 FORGLOOP                         R24 2 ; [-37]
      699 RETURN                           R18 1

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
