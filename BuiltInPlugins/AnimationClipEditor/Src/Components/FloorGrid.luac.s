PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 LOADK                            R6 K1 ["LineHandleAdornment"]
        4 DUPTABLE                         R7 K8 [{["Thickness"] = 2, ["Color"], ["Adornee"], ["Length"], ["CFrame"]}]
        5 GETTABLEKS                       R8 R1 K9 ["lineColor"]
        7 SETTABLEKS                       R8 R7 K4 ["Color"]
        9 SETTABLEKS                       R2 R7 K5 ["Adornee"]
       11 SETTABLEKS                       R4 R7 K6 ["Length"]
       13 SETTABLEKS                       R3 R7 K7 ["CFrame"]
       15 CALL                             R5 2 -1
       16 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 NAMECALL                         R5 R2 K1 ["GetExtentsSize"]
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R8 R5 K3 ["X"]
        7 GETTABLEKS                       R9 R5 K4 ["Z"]
        9 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       11 GETIMPORT                        R7 K7 [math.max]
       13 CALL                             R7 2 1
       14 ADDK                             R6 R7 K2 [3]
       15 DIVK                             R7 R6 K8 [10]
       16 GETTABLEKS                       R10 R5 K10 ["Y"]
       18 MULK                             R9 R10 K9 [0.5]
       19 GETTABLEKS                       R11 R3 K11 ["Position"]
       21 GETTABLEKS                       R11 R11 K10 ["Y"]
       23 NAMECALL                         R12 R2 K12 ["GetModelCFrame"]
       25 CALL                             R12 1 1
       26 GETTABLEKS                       R12 R12 K13 ["p"]
       28 GETTABLEKS                       R12 R12 K10 ["Y"]
       30 SUB                              R10 R11 R12
       31 ADD                              R8 R9 R10
       32 LOADN                            R10 0
       33 MINUS                            R11 R8
       34 LOADN                            R12 0
       35 FASTCALL                         VECTOR ; [+2]
       36 GETIMPORT                        R9 K16 [Vector3.new]
       38 CALL                             R9 3 1
       39 GETTABLEKS                       R12 R4 K17 ["Speed"]
       41 GETTABLEKS                       R13 R4 K18 ["Playhead"]
       43 MUL                              R11 R12 R13
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K19 ["TICK_FREQUENCY"]
       47 DIV                              R10 R11 R12
       48 NEWTABLE                         R11 0 0
       50 LOADN                            R14 -5
       51 LOADN                            R12 5
       52 LOADN                            R13 1
       53 FORNPREP                         R12
       54 DIVK                             R16 R6 K20 [2]
       55 MOD                              R17 R10 R7
       56 ADD                              R15 R16 R17
       57 GETIMPORT                        R16 K22 [CFrame.new]
       59 MUL                              R19 R14 R7
       60 LOADN                            R20 0
       61 FASTCALL3                        VECTOR R19 R20 R15
       63 MOVE                             R21 R15
       64 GETIMPORT                        R18 K16 [Vector3.new]
       66 CALL                             R18 3 1
       67 ADD                              R17 R9 R18
       68 CALL                             R16 1 1
       69 MOVE                             R18 R11
       70 MOVE                             R21 R1
       71 MOVE                             R22 R3
       72 MOVE                             R23 R16
       73 MOVE                             R24 R6
       74 NAMECALL                         R19 R0 K23 ["renderLine"]
       76 CALL                             R19 5 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R17 K26 [table.insert]
       80 CALL                             R17 -1 0
       81 FORNLOOP                         R12
       82 LOADN                            R14 -5
       83 LOADN                            R12 5
       84 LOADN                            R13 1
       85 FORNPREP                         R12
       86 MUL                              R16 R14 R7
       87 MOD                              R17 R10 R7
       88 ADD                              R15 R16 R17
       89 GETIMPORT                        R17 K22 [CFrame.new]
       91 DIVK                             R20 R6 K20 [2]
       92 LOADN                            R21 0
       93 FASTCALL3                        VECTOR R20 R21 R15
       95 MOVE                             R22 R15
       96 GETIMPORT                        R19 K16 [Vector3.new]
       98 CALL                             R19 3 1
       99 ADD                              R18 R9 R19
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K28 [CFrame.Angles]
      103 LOADN                            R19 0
      104 LOADK                            R20 K29 [1.5707963267949]
      105 LOADN                            R21 0
      106 CALL                             R18 3 1
      107 MUL                              R16 R17 R18
      108 MOVE                             R18 R11
      109 MOVE                             R21 R1
      110 MOVE                             R22 R3
      111 MOVE                             R23 R16
      112 MOVE                             R24 R6
      113 NAMECALL                         R19 R0 K23 ["renderLine"]
      115 CALL                             R19 5 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R17 K26 [table.insert]
      119 CALL                             R17 -1 0
      120 FORNLOOP                         R12
      121 RETURN                           R11 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["gridTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Container"]
        8 JUMPIF                           R4 ; [+1]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R5 R1 K4 ["RootInstance"]
       12 GETUPVAL                         R7 1
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+6]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["getRootPart"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMP                             ; [+7]
       21 MOVE                             R6 R5
       22 JUMPIFNOT                        R6 ; [+5]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K6 ["findRootPart"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 JUMPIF                           R6 ; [+2]
       29 LOADNIL                          R7
       30 RETURN                           R7 1
       31 MOVE                             R9 R3
       32 MOVE                             R10 R5
       33 MOVE                             R11 R6
       34 NAMECALL                         R7 R0 K7 ["renderLines"]
       36 CALL                             R7 4 1
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K8 ["createElement"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K9 ["Portal"]
       43 DUPTABLE                         R10 K11 [{"target"}]
       44 SETTABLEKS                       R4 R10 K10 ["target"]
       46 DUPTABLE                         R11 K13 [{"GridLines"}]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K8 ["createElement"]
       50 LOADK                            R13 K14 ["Folder"]
       51 NEWTABLE                         R14 0 0
       53 MOVE                             R15 R7
       54 CALL                             R12 3 1
       55 SETTABLEKS                       R12 R11 K12 ["GridLines"]
       57 CALL                             R8 3 -1
       58 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["withContext"]
       31 GETTABLEKS                       R6 R1 K15 ["Src"]
       33 GETTABLEKS                       R6 R6 K16 ["Util"]
       35 GETIMPORT                        R7 K9 [require]
       37 GETTABLEKS                       R8 R6 K17 ["Constants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K9 [require]
       42 GETTABLEKS                       R9 R6 K18 ["RigInfo"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K9 [require]
       47 GETTABLEKS                       R10 R1 K19 ["LuaFlags"]
       49 GETTABLEKS                       R10 R10 K20 ["GetFFlagRootMotion"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R2 K21 ["PureComponent"]
       54 LOADK                            R12 K22 ["FloorGrid"]
       55 NAMECALL                         R10 R10 K23 ["extend"]
       57 CALL                             R10 2 1
       58 DUPCLOSURE                       R11 K24 [PROTO_0]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R11 R10 K25 ["renderLine"]
       62 DUPCLOSURE                       R11 K26 [PROTO_1]
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R11 R10 K27 ["renderLines"]
       66 DUPCLOSURE                       R11 K28 [PROTO_2]
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R11 R10 K29 ["render"]
       73 MOVE                             R11 R5
       74 DUPTABLE                         R12 K31 [{"Stylizer"}]
       75 GETTABLEKS                       R13 R4 K30 ["Stylizer"]
       77 SETTABLEKS                       R13 R12 K30 ["Stylizer"]
       79 CALL                             R11 1 1
       80 MOVE                             R12 R10
       81 CALL                             R11 1 1
       82 MOVE                             R10 R11
       83 RETURN                           R10 1
