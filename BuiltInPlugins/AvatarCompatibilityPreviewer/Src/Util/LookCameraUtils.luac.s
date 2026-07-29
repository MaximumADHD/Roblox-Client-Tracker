PROTO_0:
        0 LOADK                            R3 K0 ["Torso"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["UpperTorso"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 LOADK                            R4 K3 ["BasePart"]
       11 NAMECALL                         R2 R1 K4 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R1 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R5
        7 NAMECALL                         R7 R0 K0 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+12]
       11 LOADK                            R10 K1 ["BasePart"]
       12 NAMECALL                         R8 R7 K2 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K5 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R5 R2 K1 ["Size"]
        2 DIVK                             R4 R5 K0 [2]
        3 LOADN                            R7 -1
        4 LOADN                            R5 1
        5 LOADN                            R6 2
        6 FORNPREP                         R5
        7 LOADN                            R10 -1
        8 LOADN                            R8 1
        9 LOADN                            R9 2
       10 FORNPREP                         R8
       11 LOADN                            R13 -1
       12 LOADN                            R11 1
       13 LOADN                            R12 2
       14 FORNPREP                         R11
       15 GETTABLEKS                       R15 R2 K2 ["CFrame"]
       17 GETTABLEKS                       R18 R4 K3 ["X"]
       19 MUL                              R17 R7 R18
       20 GETTABLEKS                       R19 R4 K4 ["Y"]
       22 MUL                              R18 R10 R19
       23 GETTABLEKS                       R20 R4 K5 ["Z"]
       25 MUL                              R19 R13 R20
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R16 K8 [Vector3.new]
       29 CALL                             R16 3 1
       30 MUL                              R14 R15 R16
       31 MUL                              R14 R3 R14
       32 GETTABLEKS                       R17 R14 K3 ["X"]
       34 GETTABLEKS                       R18 R0 K3 ["X"]
       36 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
       38 GETIMPORT                        R16 K11 [math.min]
       40 CALL                             R16 2 1
       41 GETTABLEKS                       R18 R14 K4 ["Y"]
       43 GETTABLEKS                       R19 R0 K4 ["Y"]
       45 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       47 GETIMPORT                        R17 K11 [math.min]
       49 CALL                             R17 2 1
       50 GETTABLEKS                       R19 R14 K5 ["Z"]
       52 GETTABLEKS                       R20 R0 K5 ["Z"]
       54 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
       56 GETIMPORT                        R18 K11 [math.min]
       58 CALL                             R18 2 1
       59 FASTCALL                         VECTOR ; [+2]
       60 GETIMPORT                        R15 K8 [Vector3.new]
       62 CALL                             R15 3 1
       63 MOVE                             R0 R15
       64 GETTABLEKS                       R17 R14 K3 ["X"]
       66 GETTABLEKS                       R18 R1 K3 ["X"]
       68 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
       70 GETIMPORT                        R16 K13 [math.max]
       72 CALL                             R16 2 1
       73 GETTABLEKS                       R18 R14 K4 ["Y"]
       75 GETTABLEKS                       R19 R1 K4 ["Y"]
       77 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       79 GETIMPORT                        R17 K13 [math.max]
       81 CALL                             R17 2 1
       82 GETTABLEKS                       R19 R14 K5 ["Z"]
       84 GETTABLEKS                       R20 R1 K5 ["Z"]
       86 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
       88 GETIMPORT                        R18 K13 [math.max]
       90 CALL                             R18 2 1
       91 FASTCALL                         VECTOR ; [+2]
       92 GETIMPORT                        R15 K8 [Vector3.new]
       94 CALL                             R15 3 1
       95 MOVE                             R1 R15
       96 FORNLOOP                         R11
       97 FORNLOOP                         R8
       98 FORNLOOP                         R5
       99 RETURN                           R0 2

PROTO_3:
        0 LOADK                            R2 K0 [{∞, ∞, ∞}]
        1 LOADK                            R3 K1 [{-∞, -∞, -∞}]
        2 NAMECALL                         R4 R0 K2 ["Inverse"]
        4 CALL                             R4 1 1
        5 MOVE                             R5 R1
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R10 0
       10 MOVE                             R11 R2
       11 MOVE                             R12 R3
       12 MOVE                             R13 R9
       13 MOVE                             R14 R4
       14 CALL                             R10 4 2
       15 MOVE                             R2 R10
       16 MOVE                             R3 R11
       17 FORGLOOP                         R5 2 ; [-9]
       19 RETURN                           R2 2

PROTO_4:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 LOADK                            R5 K2 ["Torso"]
        8 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+4]
       12 LOADK                            R5 K4 ["UpperTorso"]
       13 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 LOADK                            R6 K5 ["BasePart"]
       18 NAMECALL                         R4 R3 K6 ["IsA"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 JUMPIF                           R2 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 LOADK                            R5 K7 ["Head"]
       29 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+5]
       33 LOADK                            R6 K5 ["BasePart"]
       34 NAMECALL                         R4 R3 K6 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIF                           R4 ; [+2]
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETTABLEKS                       R4 R2 K8 ["CFrame"]
       42 GETTABLEKS                       R5 R4 K9 ["LookVector"]
       44 GETTABLEKS                       R6 R4 K10 ["UpVector"]
       46 GETTABLEKS                       R7 R3 K8 ["CFrame"]
       48 NAMECALL                         R7 R7 K11 ["ToEulerAnglesXYZ"]
       50 CALL                             R7 1 3
       51 GETUPVAL                         R10 0
       52 MOVE                             R11 R0
       53 CALL                             R10 1 1
       54 LENGTH                           R11 R10
       55 JUMPIFNOTEQKN                    R11 K12 [0] ; [+3]
       57 LOADNIL                          R11
       58 RETURN                           R11 1
       59 GETUPVAL                         R11 1
       60 MOVE                             R12 R4
       61 MOVE                             R13 R10
       62 CALL                             R11 2 2
       63 MOVE                             R15 R12
       64 LOADK                            R16 K13 [0.618]
       65 NAMECALL                         R13 R11 K14 ["Lerp"]
       67 CALL                             R13 3 1
       68 MOVE                             R16 R12
       69 LOADK                            R17 K15 [0.5]
       70 NAMECALL                         R14 R11 K14 ["Lerp"]
       72 CALL                             R14 3 1
       73 GETTABLEKS                       R16 R14 K16 ["X"]
       75 GETTABLEKS                       R17 R13 K17 ["Y"]
       77 GETTABLEKS                       R18 R14 K18 ["Z"]
       79 FASTCALL                         VECTOR ; [+2]
       80 GETIMPORT                        R15 K21 [Vector3.new]
       82 CALL                             R15 3 1
       83 MOVE                             R18 R15
       84 NAMECALL                         R16 R4 K22 ["PointToWorldSpace"]
       86 CALL                             R16 2 1
       87 GETIMPORT                        R17 K24 [CFrame.fromEulerAnglesXYZ]
       89 MOVE                             R18 R7
       90 MOVE                             R19 R8
       91 MOVE                             R20 R9
       92 CALL                             R17 3 1
       93 GETTABLEKS                       R20 R17 K25 ["Position"]
       95 SUB                              R19 R17 R20
       96 ADD                              R18 R19 R16
       97 GETTABLEKS                       R21 R15 K16 ["X"]
       99 GETTABLEKS                       R22 R11 K16 ["X"]
      101 SUB                              R20 R21 R22
      102 GETTABLEKS                       R22 R15 K17 ["Y"]
      104 GETTABLEKS                       R23 R11 K17 ["Y"]
      106 SUB                              R21 R22 R23
      107 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
      109 GETIMPORT                        R19 K28 [math.max]
      111 CALL                             R19 2 1
      112 GETTABLEKS                       R22 R12 K16 ["X"]
      114 GETTABLEKS                       R23 R15 K16 ["X"]
      116 SUB                              R21 R22 R23
      117 GETTABLEKS                       R23 R12 K17 ["Y"]
      119 GETTABLEKS                       R24 R15 K17 ["Y"]
      121 SUB                              R22 R23 R24
      122 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      124 GETIMPORT                        R20 K28 [math.max]
      126 CALL                             R20 2 1
      127 MULK                             R22 R19 K30 [1.1]
      128 DIVK                             R21 R22 K29 [0.531709431661479]
      129 MULK                             R23 R20 K30 [1.1]
      130 DIVK                             R22 R23 K29 [0.531709431661479]
      131 MOVE                             R23 R21
      132 GETTABLEKS                       R25 R6 K17 ["Y"]
      134 LOADK                            R26 K31 [-0.6]
      135 JUMPIFLT                         R25 R26 ; [+2]
      137 LOADB                            R24 0 +1
      138 LOADB                            R24 1
      139 GETTABLEKS                       R26 R6 K16 ["X"]
      141 LOADK                            R27 K31 [-0.6]
      142 JUMPIFLT                         R26 R27 ; [+2]
      144 LOADB                            R25 0 +1
      145 LOADB                            R25 1
      146 JUMPIF                           R24 ; [+1]
      147 JUMPIFNOT                        R25 ; [+8]
      148 FASTCALL2                        MATH_MAX R21 R22 ; [+5]
      150 MOVE                             R27 R21
      151 MOVE                             R28 R22
      152 GETIMPORT                        R26 K28 [math.max]
      154 CALL                             R26 2 1
      155 MOVE                             R23 R26
      156 MULK                             R23 R23 K32 [1]
      157 MUL                              R26 R23 R5
      158 MUL                              R27 R18 R26
      159 GETTABLEKS                       R28 R18 K25 ["Position"]
      161 DUPTABLE                         R29 K37 [{["cframe"], ["focus"], ["fov"] = 56}]
      162 GETIMPORT                        R30 K39 [CFrame.lookAt]
      164 MOVE                             R31 R27
      165 MOVE                             R32 R28
      166 CALL                             R30 2 1
      167 SETTABLEKS                       R30 R29 K33 ["cframe"]
      169 GETIMPORT                        R30 K40 [CFrame.new]
      171 MOVE                             R31 R28
      172 CALL                             R30 1 1
      173 SETTABLEKS                       R30 R29 K34 ["focus"]
      175 RETURN                           R29 1

PROTO_5:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R4 K2 ["BasePart"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K4 ["CFrame"]
       14 GETTABLEKS                       R5 R1 K6 ["Size"]
       16 GETTABLEKS                       R5 R5 K7 ["X"]
       18 GETTABLEKS                       R6 R1 K6 ["Size"]
       20 GETTABLEKS                       R6 R6 K8 ["Y"]
       22 GETTABLEKS                       R7 R1 K6 ["Size"]
       24 GETTABLEKS                       R7 R7 K9 ["Z"]
       26 FASTCALL                         MATH_MAX ; [+2]
       27 GETIMPORT                        R4 K12 [math.max]
       29 CALL                             R4 3 1
       30 DIVK                             R3 R4 K5 [2]
       31 MULK                             R5 R3 K14 [1.6]
       32 DIVK                             R4 R5 K13 [0.176326980708465]
       33 GETTABLEKS                       R6 R1 K15 ["Position"]
       35 GETTABLEKS                       R8 R2 K16 ["LookVector"]
       37 MUL                              R7 R8 R4
       38 ADD                              R5 R6 R7
       39 DUPTABLE                         R6 K21 [{["cframe"], ["focus"], ["fov"] = 20}]
       40 GETIMPORT                        R7 K23 [CFrame.lookAt]
       42 MOVE                             R8 R5
       43 GETTABLEKS                       R9 R1 K15 ["Position"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K17 ["cframe"]
       48 GETIMPORT                        R7 K25 [CFrame.new]
       50 GETTABLEKS                       R8 R1 K15 ["Position"]
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K18 ["focus"]
       55 RETURN                           R6 1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["MakeupLook"] ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["computeMakeupLookCamera"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["computeAvatarLookCamera"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R1 K10 ["LIMBS"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R3 R8
       32 FORGLOOP                         R4 2 ; [-3]
       34 DUPCLOSURE                       R4 K11 [PROTO_0]
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 DUPCLOSURE                       R6 K13 [PROTO_2]
       38 DUPCLOSURE                       R7 K14 [PROTO_3]
       39 CAPTURE                          VAL R6
       40 NEWTABLE                         R8 4 0
       42 DUPCLOSURE                       R9 K15 [PROTO_4]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 SETTABLEKS                       R9 R8 K16 ["computeAvatarLookCamera"]
       47 DUPCLOSURE                       R9 K17 [PROTO_5]
       48 SETTABLEKS                       R9 R8 K18 ["computeMakeupLookCamera"]
       50 DUPCLOSURE                       R9 K19 [PROTO_6]
       51 CAPTURE                          VAL R8
       52 SETTABLEKS                       R9 R8 K20 ["computeLookCamera"]
       54 RETURN                           R8 1
