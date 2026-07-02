PROTO_0:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["Humanoid not found in avatar"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["avatarRules"]
       14 CALL                             R4 0 -1
       15 NAMECALL                         R2 R1 K6 ["ApplyAvatarRules"]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R1
       20 MOVE                             R4 R0
       21 CALL                             R2 2 2
       22 RETURN                           R2 2

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["XVector"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADN                            R4 -1
        4 JUMP                             ; [+1]
        5 LOADN                            R4 1
        6 MUL                              R2 R3 R4
        7 LOADK                            R5 K1 [{0, 1, 0}]
        8 NAMECALL                         R3 R2 K2 ["Cross"]
       10 CALL                             R3 2 1
       11 GETIMPORT                        R4 K5 [CFrame.fromMatrix]
       13 GETTABLEKS                       R5 R0 K6 ["Position"]
       15 MOVE                             R6 R2
       16 LOADK                            R7 K1 [{0, 1, 0}]
       17 MOVE                             R8 R3
       18 CALL                             R4 4 -1
       19 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R5 R0 K1 ["XVector"]
        2 MULK                             R4 R5 K0 [1]
        3 LOADK                            R7 K2 [{0, 1, 0}]
        4 NAMECALL                         R5 R4 K3 ["Cross"]
        6 CALL                             R5 2 1
        7 GETIMPORT                        R6 K6 [CFrame.fromMatrix]
        9 GETTABLEKS                       R7 R0 K7 ["Position"]
       11 MOVE                             R8 R4
       12 LOADK                            R9 K2 [{0, 1, 0}]
       13 MOVE                             R10 R5
       14 CALL                             R6 4 1
       15 MOVE                             R3 R6
       16 GETTABLEKS                       R5 R0 K7 ["Position"]
       18 GETTABLEKS                       R5 R5 K8 ["X"]
       20 GETTABLEKS                       R7 R1 K7 ["Position"]
       22 GETTABLEKS                       R7 R7 K9 ["Y"]
       24 GETTABLEKS                       R9 R2 K9 ["Y"]
       26 DIVK                             R8 R9 K10 [2]
       27 ADD                              R6 R7 R8
       28 GETTABLEKS                       R7 R0 K7 ["Position"]
       30 GETTABLEKS                       R7 R7 K11 ["Z"]
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R4 K14 [Vector3.new]
       35 CALL                             R4 3 1
       36 GETTABLEKS                       R6 R1 K7 ["Position"]
       38 SUB                              R5 R6 R4
       39 GETTABLEKS                       R10 R3 K15 ["LookVector"]
       41 NAMECALL                         R8 R5 K16 ["Dot"]
       43 CALL                             R8 2 1
       44 GETTABLEKS                       R9 R3 K15 ["LookVector"]
       46 MUL                              R7 R8 R9
       47 ADD                              R6 R4 R7
       48 RETURN                           R6 1

PROTO_3:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 LOADN                            R3 0
        3 LOADN                            R4 0
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 LOADK                            R16 K0 ["Humanoid"]
       11 NAMECALL                         R14 R11 K1 ["FindFirstChildWhichIsA"]
       13 CALL                             R14 2 1
       14 FASTCALL2K                       ASSERT R14 K2 ; [+5]
       16 MOVE                             R16 R14
       17 LOADK                            R17 K2 ["Humanoid not found in avatar"]
       18 GETIMPORT                        R15 K4 [assert]
       20 CALL                             R15 2 0
       21 GETUPVAL                         R17 0
       22 GETTABLEKS                       R17 R17 K5 ["avatarRules"]
       24 CALL                             R17 0 -1
       25 NAMECALL                         R15 R14 K6 ["ApplyAvatarRules"]
       27 CALL                             R15 -1 0
       28 GETUPVAL                         R15 1
       29 MOVE                             R16 R14
       30 MOVE                             R17 R11
       31 CALL                             R15 2 2
       32 MOVE                             R12 R15
       33 MOVE                             R13 R16
       34 GETTABLEKS                       R15 R12 K7 ["Position"]
       36 NAMECALL                         R16 R11 K8 ["GetPivot"]
       38 CALL                             R16 1 1
       39 GETTABLEKS                       R16 R16 K7 ["Position"]
       41 SUB                              R14 R15 R16
       42 DIVK                             R15 R13 K9 [2]
       43 DIVK                             R19 R2 K9 [2]
       44 ADD                              R18 R1 R19
       45 GETTABLEKS                       R19 R15 K10 ["X"]
       47 ADD                              R17 R18 R19
       48 JUMPIFEQKN                       R10 K11 [1] ; [+5]
       50 GETUPVAL                         R18 2
       51 GETTABLEKS                       R18 R18 K12 ["AvatarSpacing"]
       53 JUMP                             ; [+1]
       54 LOADN                            R18 0
       55 ADD                              R16 R17 R18
       56 GETTABLEKS                       R20 R15 K13 ["Y"]
       58 LOADN                            R21 0
       59 FASTCALL3                        VECTOR R16 R20 R21
       61 MOVE                             R19 R16
       62 GETIMPORT                        R18 K16 [Vector3.new]
       64 CALL                             R18 3 1
       65 SUB                              R17 R18 R14
       66 GETIMPORT                        R20 K18 [CFrame.new]
       68 MOVE                             R21 R17
       69 CALL                             R20 1 -1
       70 NAMECALL                         R18 R11 K19 ["PivotTo"]
       72 CALL                             R18 -1 0
       73 GETTABLEKS                       R20 R15 K10 ["X"]
       75 SUB                              R19 R16 R20
       76 FASTCALL2                        MATH_MIN R19 R3 ; [+4]
       78 MOVE                             R20 R3
       79 GETIMPORT                        R18 K22 [math.min]
       81 CALL                             R18 2 1
       82 MOVE                             R3 R18
       83 GETTABLEKS                       R20 R15 K10 ["X"]
       85 ADD                              R19 R16 R20
       86 FASTCALL2                        MATH_MAX R19 R4 ; [+4]
       88 MOVE                             R20 R4
       89 GETIMPORT                        R18 K24 [math.max]
       91 CALL                             R18 2 1
       92 MOVE                             R4 R18
       93 GETTABLEKS                       R19 R13 K13 ["Y"]
       95 FASTCALL2                        MATH_MAX R19 R5 ; [+4]
       97 MOVE                             R20 R5
       98 GETIMPORT                        R18 K24 [math.max]
      100 CALL                             R18 2 1
      101 MOVE                             R5 R18
      102 GETTABLEKS                       R20 R13 K25 ["Z"]
      104 FASTCALL2                        MATH_MAX R6 R20 ; [+4]
      106 MOVE                             R19 R6
      107 GETIMPORT                        R18 K24 [math.max]
      109 CALL                             R18 2 1
      110 MOVE                             R6 R18
      111 MOVE                             R1 R16
      112 GETTABLEKS                       R2 R13 K10 ["X"]
      114 FORGLOOP                         R7 2 ; [-105]
      116 SUB                              R8 R4 R3
      117 FASTCALL3                        VECTOR R8 R5 R6
      119 MOVE                             R9 R5
      120 MOVE                             R10 R6
      121 GETIMPORT                        R7 K16 [Vector3.new]
      123 CALL                             R7 3 1
      124 RETURN                           R7 1

PROTO_4:
        0 DIVK                             R3 R2 K0 [2]
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 GETTABLEKS                       R13 R8 K1 ["WorldPivot"]
        7 MUL                              R12 R1 R13
        8 GETIMPORT                        R13 K4 [CFrame.new]
       10 MINUS                            R14 R3
       11 CALL                             R13 1 1
       12 MUL                              R11 R12 R13
       13 NAMECALL                         R9 R8 K5 ["PivotTo"]
       15 CALL                             R9 2 0
       16 FORGLOOP                         R4 2 ; [-12]
       18 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R2 ; [+1]
        1 RETURN                           R0 1
        2 GETTABLEKS                       R3 R2 K0 ["Distance"]
        4 GETTABLEKS                       R5 R1 K2 ["Y"]
        6 DIVK                             R4 R5 K1 [2]
        7 JUMPIFLT                         R3 R4 ; [+2]
        9 RETURN                           R0 1
       10 GETTABLEKS                       R6 R2 K3 ["Normal"]
       12 GETTABLEKS                       R6 R6 K2 ["Y"]
       14 LOADN                            R7 0
       15 JUMPIFLE                         R7 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 LOADN                            R9 0
       20 SUB                              R11 R4 R3
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R12 R12 K4 ["BLOCKCAST_VERTICAL_PADDING"]
       24 ADD                              R10 R11 R12
       25 LOADN                            R11 0
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R8 K7 [Vector3.new]
       29 CALL                             R8 3 1
       30 JUMPIFNOT                        R5 ; [+2]
       31 LOADN                            R9 1
       32 JUMP                             ; [+1]
       33 LOADN                            R9 -1
       34 MUL                              R7 R8 R9
       35 ADD                              R6 R0 R7
       36 RETURN                           R6 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["CurrentCamera should exist"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K0 ["CurrentCamera"]
       15 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       17 GETTABLEKS                       R5 R2 K6 ["XVector"]
       19 MULK                             R4 R5 K5 [-1]
       20 LOADK                            R7 K7 [{0, 1, 0}]
       21 NAMECALL                         R5 R4 K8 ["Cross"]
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K10 [CFrame.fromMatrix]
       26 GETTABLEKS                       R7 R2 K11 ["Position"]
       28 MOVE                             R8 R4
       29 LOADK                            R9 K7 [{0, 1, 0}]
       30 MOVE                             R10 R5
       31 CALL                             R6 4 1
       32 MOVE                             R3 R6
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R6 R2 K11 ["Position"]
       36 LOADK                            R8 K12 [{0, -1, 0}]
       37 GETTABLEKS                       R10 R1 K14 ["Y"]
       39 DIVK                             R9 R10 K13 [2]
       40 MUL                              R7 R8 R9
       41 NAMECALL                         R4 R4 K15 ["Raycast"]
       43 CALL                             R4 3 1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K16 ["adjustBlockcastCFramePosition_DEPRECATED"]
       47 MOVE                             R6 R3
       48 MOVE                             R7 R1
       49 MOVE                             R8 R4
       50 CALL                             R5 3 1
       51 GETUPVAL                         R6 1
       52 MOVE                             R8 R5
       53 MOVE                             R9 R1
       54 GETTABLEKS                       R11 R2 K17 ["LookVector"]
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R12 R12 K18 ["MaxPreviewPlacementDistance"]
       59 MUL                              R10 R11 R12
       60 NAMECALL                         R6 R6 K19 ["Blockcast"]
       62 CALL                             R6 4 1
       63 GETTABLEKS                       R8 R2 K11 ["Position"]
       65 GETTABLEKS                       R10 R2 K17 ["LookVector"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K18 ["MaxPreviewPlacementDistance"]
       70 MUL                              R9 R10 R11
       71 ADD                              R7 R8 R9
       72 JUMPIFNOT                        R6 ; [+48]
       73 GETTABLEKS                       R10 R2 K6 ["XVector"]
       75 MULK                             R9 R10 K20 [1]
       76 LOADK                            R12 K7 [{0, 1, 0}]
       77 NAMECALL                         R10 R9 K8 ["Cross"]
       79 CALL                             R10 2 1
       80 GETIMPORT                        R11 K10 [CFrame.fromMatrix]
       82 GETTABLEKS                       R12 R2 K11 ["Position"]
       84 MOVE                             R13 R9
       85 LOADK                            R14 K7 [{0, 1, 0}]
       86 MOVE                             R15 R10
       87 CALL                             R11 4 1
       88 MOVE                             R8 R11
       89 GETTABLEKS                       R10 R2 K11 ["Position"]
       91 GETTABLEKS                       R10 R10 K21 ["X"]
       93 GETTABLEKS                       R12 R6 K11 ["Position"]
       95 GETTABLEKS                       R12 R12 K14 ["Y"]
       97 GETTABLEKS                       R14 R1 K14 ["Y"]
       99 DIVK                             R13 R14 K13 [2]
      100 ADD                              R11 R12 R13
      101 GETTABLEKS                       R12 R2 K11 ["Position"]
      103 GETTABLEKS                       R12 R12 K22 ["Z"]
      105 FASTCALL                         VECTOR ; [+2]
      106 GETIMPORT                        R9 K25 [Vector3.new]
      108 CALL                             R9 3 1
      109 GETTABLEKS                       R11 R6 K11 ["Position"]
      111 SUB                              R10 R11 R9
      112 GETTABLEKS                       R14 R8 K17 ["LookVector"]
      114 NAMECALL                         R12 R10 K26 ["Dot"]
      116 CALL                             R12 2 1
      117 GETTABLEKS                       R13 R8 K17 ["LookVector"]
      119 MUL                              R11 R12 R13
      120 ADD                              R7 R9 R11
      121 GETIMPORT                        R9 K27 [CFrame.new]
      123 MOVE                             R10 R7
      124 CALL                             R9 1 1
      125 GETTABLEKS                       R10 R3 K28 ["Rotation"]
      127 MUL                              R8 R9 R10
      128 GETUPVAL                         R9 4
      129 MOVE                             R10 R0
      130 MOVE                             R11 R8
      131 MOVE                             R12 R1
      132 CALL                             R9 3 0
      133 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K2 ["Humanoid not found in avatar"]
        8 GETIMPORT                        R3 K4 [assert]
       10 CALL                             R3 2 0
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["avatarRules"]
       15 CALL                             R5 0 -1
       16 NAMECALL                         R3 R2 K6 ["ApplyAvatarRules"]
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 MOVE                             R5 R0
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K0 ["X"]
        4 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [math.min]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R5 R0 K4 ["Y"]
       11 GETTABLEKS                       R6 R1 K4 ["Y"]
       13 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       15 GETIMPORT                        R4 K3 [math.min]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R6 R0 K5 ["Z"]
       20 GETTABLEKS                       R7 R1 K5 ["Z"]
       22 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       24 GETIMPORT                        R5 K3 [math.min]
       26 CALL                             R5 2 1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K8 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K0 ["X"]
        4 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [math.max]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R5 R0 K4 ["Y"]
       11 GETTABLEKS                       R6 R1 K4 ["Y"]
       13 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       15 GETIMPORT                        R4 K3 [math.max]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R6 R0 K5 ["Z"]
       20 GETTABLEKS                       R7 R1 K5 ["Z"]
       22 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       24 GETIMPORT                        R5 K3 [math.max]
       26 CALL                             R5 2 1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K8 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_10:
        0 LOADN                            R1 0
        1 NEWTABLE                         R2 0 2
        3 LOADK                            R3 K0 [{0, 0, 0}]
        4 LOADK                            R4 K0 [{0, 0, 0}]
        5 SETLIST                          R2 R3 2 [1]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADK                            R12 K1 ["Humanoid"]
       12 NAMECALL                         R10 R7 K2 ["FindFirstChildWhichIsA"]
       14 CALL                             R10 2 1
       15 FASTCALL2K                       ASSERT R10 K3 ; [+5]
       17 MOVE                             R12 R10
       18 LOADK                            R13 K3 ["Humanoid not found in avatar"]
       19 GETIMPORT                        R11 K5 [assert]
       21 CALL                             R11 2 0
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K6 ["avatarRules"]
       25 CALL                             R13 0 -1
       26 NAMECALL                         R11 R10 K7 ["ApplyAvatarRules"]
       28 CALL                             R11 -1 0
       29 GETUPVAL                         R11 1
       30 MOVE                             R12 R10
       31 MOVE                             R13 R7
       32 CALL                             R11 2 2
       33 MOVE                             R8 R11
       34 MOVE                             R9 R12
       35 LOADNIL                          R10
       36 GETTABLEKS                       R11 R7 K8 ["PrimaryPart"]
       38 JUMPIFNOT                        R11 ; [+9]
       39 NAMECALL                         R11 R8 K9 ["Inverse"]
       41 CALL                             R11 1 1
       42 GETTABLEKS                       R12 R7 K8 ["PrimaryPart"]
       44 GETTABLEKS                       R12 R12 K10 ["Position"]
       46 MUL                              R10 R11 R12
       47 JUMP                             ; [+9]
       48 NAMECALL                         R11 R8 K9 ["Inverse"]
       50 CALL                             R11 1 1
       51 NAMECALL                         R12 R7 K11 ["GetPivot"]
       53 CALL                             R12 1 1
       54 GETTABLEKS                       R12 R12 K10 ["Position"]
       56 MUL                              R10 R11 R12
       57 GETIMPORT                        R13 K14 [CFrame.new]
       59 MOVE                             R14 R1
       60 GETTABLEKS                       R17 R9 K16 ["Y"]
       62 DIVK                             R16 R17 K15 [2]
       63 GETTABLEKS                       R17 R10 K16 ["Y"]
       65 ADD                              R15 R16 R17
       66 LOADN                            R16 0
       67 CALL                             R13 3 -1
       68 NAMECALL                         R11 R7 K17 ["PivotTo"]
       70 CALL                             R11 -1 0
       71 LOADK                            R15 K1 ["Humanoid"]
       72 NAMECALL                         R13 R7 K2 ["FindFirstChildWhichIsA"]
       74 CALL                             R13 2 1
       75 FASTCALL2K                       ASSERT R13 K3 ; [+5]
       77 MOVE                             R15 R13
       78 LOADK                            R16 K3 ["Humanoid not found in avatar"]
       79 GETIMPORT                        R14 K5 [assert]
       81 CALL                             R14 2 0
       82 GETUPVAL                         R14 1
       83 MOVE                             R15 R13
       84 MOVE                             R16 R7
       85 CALL                             R14 2 2
       86 MOVE                             R11 R14
       87 MOVE                             R12 R15
       88 MOVE                             R8 R11
       89 MOVE                             R9 R12
       90 GETTABLEN                        R11 R2 1
       91 LOADK                            R12 K0 [{0, 0, 0}]
       92 JUMPIFNOTEQ                      R11 R12 ; [+16]
       94 GETTABLEN                        R11 R2 2
       95 LOADK                            R12 K0 [{0, 0, 0}]
       96 JUMPIFNOTEQ                      R11 R12 ; [+12]
       98 GETTABLEKS                       R12 R8 K10 ["Position"]
      100 DIVK                             R13 R9 K15 [2]
      101 SUB                              R11 R12 R13
      102 SETTABLEN                        R11 R2 1
      103 GETTABLEKS                       R12 R8 K10 ["Position"]
      105 DIVK                             R13 R9 K15 [2]
      106 ADD                              R11 R12 R13
      107 SETTABLEN                        R11 R2 2
      108 JUMP                             ; [+76]
      109 GETTABLEN                        R12 R2 1
      110 GETTABLEKS                       R14 R8 K10 ["Position"]
      112 DIVK                             R15 R9 K15 [2]
      113 SUB                              R13 R14 R15
      114 GETTABLEKS                       R16 R12 K18 ["X"]
      116 GETTABLEKS                       R17 R13 K18 ["X"]
      118 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      120 GETIMPORT                        R15 K21 [math.min]
      122 CALL                             R15 2 1
      123 GETTABLEKS                       R17 R12 K16 ["Y"]
      125 GETTABLEKS                       R18 R13 K16 ["Y"]
      127 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
      129 GETIMPORT                        R16 K21 [math.min]
      131 CALL                             R16 2 1
      132 GETTABLEKS                       R18 R12 K22 ["Z"]
      134 GETTABLEKS                       R19 R13 K22 ["Z"]
      136 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      138 GETIMPORT                        R17 K21 [math.min]
      140 CALL                             R17 2 1
      141 FASTCALL                         VECTOR ; [+2]
      142 GETIMPORT                        R14 K24 [Vector3.new]
      144 CALL                             R14 3 1
      145 MOVE                             R11 R14
      146 SETTABLEN                        R11 R2 1
      147 GETTABLEN                        R12 R2 2
      148 GETTABLEKS                       R14 R8 K10 ["Position"]
      150 DIVK                             R15 R9 K15 [2]
      151 ADD                              R13 R14 R15
      152 GETTABLEKS                       R16 R12 K18 ["X"]
      154 GETTABLEKS                       R17 R13 K18 ["X"]
      156 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      158 GETIMPORT                        R15 K26 [math.max]
      160 CALL                             R15 2 1
      161 GETTABLEKS                       R17 R12 K16 ["Y"]
      163 GETTABLEKS                       R18 R13 K16 ["Y"]
      165 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      167 GETIMPORT                        R16 K26 [math.max]
      169 CALL                             R16 2 1
      170 GETTABLEKS                       R18 R12 K22 ["Z"]
      172 GETTABLEKS                       R19 R13 K22 ["Z"]
      174 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
      176 GETIMPORT                        R17 K26 [math.max]
      178 CALL                             R17 2 1
      179 FASTCALL                         VECTOR ; [+2]
      180 GETIMPORT                        R14 K24 [Vector3.new]
      182 CALL                             R14 3 1
      183 MOVE                             R11 R14
      184 SETTABLEN                        R11 R2 2
      185 GETTABLEKS                       R12 R9 K18 ["X"]
      187 ADD                              R11 R1 R12
      188 GETUPVAL                         R12 2
      189 GETTABLEKS                       R12 R12 K27 ["AvatarSpacing"]
      191 ADD                              R1 R11 R12
      192 FORGLOOP                         R3 2 ; [-182]
      194 GETIMPORT                        R3 K14 [CFrame.new]
      196 GETTABLEN                        R6 R2 1
      197 GETTABLEN                        R7 R2 2
      198 ADD                              R5 R6 R7
      199 DIVK                             R4 R5 K15 [2]
      200 CALL                             R3 1 1
      201 GETTABLEN                        R5 R2 2
      202 GETTABLEN                        R6 R2 1
      203 SUB                              R4 R5 R6
      204 RETURN                           R3 2

PROTO_11:
        0 LOADK                            R1 K0 [-∞]
        1 LENGTH                           R4 R0
        2 LOADN                            R5 0
        3 JUMPIFLT                         R5 R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        9 LOADK                            R4 K1 ["Instances should not be empty"]
       10 GETIMPORT                        R2 K3 [assert]
       12 CALL                             R2 2 0
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R7 R6 K4 ["CFrame"]
       19 GETTABLEKS                       R8 R6 K5 ["Size"]
       21 NEWTABLE                         R9 0 8
       23 GETIMPORT                        R11 K7 [CFrame.new]
       25 GETTABLEKS                       R13 R8 K9 ["X"]
       27 DIVK                             R12 R13 K8 [2]
       28 GETTABLEKS                       R14 R8 K10 ["Y"]
       30 DIVK                             R13 R14 K8 [2]
       31 GETTABLEKS                       R15 R8 K11 ["Z"]
       33 DIVK                             R14 R15 K8 [2]
       34 CALL                             R11 3 1
       35 MUL                              R10 R7 R11
       36 GETIMPORT                        R12 K7 [CFrame.new]
       38 GETTABLEKS                       R14 R8 K9 ["X"]
       40 DIVK                             R13 R14 K8 [2]
       41 GETTABLEKS                       R15 R8 K10 ["Y"]
       43 DIVK                             R14 R15 K8 [2]
       44 GETTABLEKS                       R17 R8 K11 ["Z"]
       46 MINUS                            R16 R17
       47 DIVK                             R15 R16 K8 [2]
       48 CALL                             R12 3 1
       49 MUL                              R11 R7 R12
       50 GETIMPORT                        R13 K7 [CFrame.new]
       52 GETTABLEKS                       R15 R8 K9 ["X"]
       54 DIVK                             R14 R15 K8 [2]
       55 GETTABLEKS                       R17 R8 K10 ["Y"]
       57 MINUS                            R16 R17
       58 DIVK                             R15 R16 K8 [2]
       59 GETTABLEKS                       R17 R8 K11 ["Z"]
       61 DIVK                             R16 R17 K8 [2]
       62 CALL                             R13 3 1
       63 MUL                              R12 R7 R13
       64 GETIMPORT                        R14 K7 [CFrame.new]
       66 GETTABLEKS                       R16 R8 K9 ["X"]
       68 DIVK                             R15 R16 K8 [2]
       69 GETTABLEKS                       R18 R8 K10 ["Y"]
       71 MINUS                            R17 R18
       72 DIVK                             R16 R17 K8 [2]
       73 GETTABLEKS                       R19 R8 K11 ["Z"]
       75 MINUS                            R18 R19
       76 DIVK                             R17 R18 K8 [2]
       77 CALL                             R14 3 1
       78 MUL                              R13 R7 R14
       79 GETIMPORT                        R15 K7 [CFrame.new]
       81 GETTABLEKS                       R18 R8 K9 ["X"]
       83 MINUS                            R17 R18
       84 DIVK                             R16 R17 K8 [2]
       85 GETTABLEKS                       R18 R8 K10 ["Y"]
       87 DIVK                             R17 R18 K8 [2]
       88 GETTABLEKS                       R19 R8 K11 ["Z"]
       90 DIVK                             R18 R19 K8 [2]
       91 CALL                             R15 3 1
       92 MUL                              R14 R7 R15
       93 GETIMPORT                        R16 K7 [CFrame.new]
       95 GETTABLEKS                       R19 R8 K9 ["X"]
       97 MINUS                            R18 R19
       98 DIVK                             R17 R18 K8 [2]
       99 GETTABLEKS                       R19 R8 K10 ["Y"]
      101 DIVK                             R18 R19 K8 [2]
      102 GETTABLEKS                       R21 R8 K11 ["Z"]
      104 MINUS                            R20 R21
      105 DIVK                             R19 R20 K8 [2]
      106 CALL                             R16 3 1
      107 MUL                              R15 R7 R16
      108 GETIMPORT                        R17 K7 [CFrame.new]
      110 GETTABLEKS                       R20 R8 K9 ["X"]
      112 MINUS                            R19 R20
      113 DIVK                             R18 R19 K8 [2]
      114 GETTABLEKS                       R21 R8 K10 ["Y"]
      116 MINUS                            R20 R21
      117 DIVK                             R19 R20 K8 [2]
      118 GETTABLEKS                       R21 R8 K11 ["Z"]
      120 DIVK                             R20 R21 K8 [2]
      121 CALL                             R17 3 1
      122 MUL                              R16 R7 R17
      123 GETIMPORT                        R18 K7 [CFrame.new]
      125 GETTABLEKS                       R21 R8 K9 ["X"]
      127 MINUS                            R20 R21
      128 DIVK                             R19 R20 K8 [2]
      129 GETTABLEKS                       R22 R8 K10 ["Y"]
      131 MINUS                            R21 R22
      132 DIVK                             R20 R21 K8 [2]
      133 GETTABLEKS                       R23 R8 K11 ["Z"]
      135 MINUS                            R22 R23
      136 DIVK                             R21 R22 K8 [2]
      137 CALL                             R18 3 1
      138 MUL                              R17 R7 R18
      139 SETLIST                          R9 R10 8 [1]
      141 MOVE                             R10 R9
      142 LOADNIL                          R11
      143 LOADNIL                          R12
      144 FORGPREP                         R10
      145 GETTABLEKS                       R15 R14 K10 ["Y"]
      147 JUMPIFNOTLT                      R1 R15 ; [+3]
      149 GETTABLEKS                       R1 R14 K10 ["Y"]
      151 FORGLOOP                         R10 2 ; [-7]
      153 FORGLOOP                         R2 2 ; [-137]
      155 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetPartBoundsInBox"]
        5 CALL                             R2 3 1
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        9 RETURN                           R0 1
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETIMPORT                        R5 K4 [CFrame.new]
       15 LOADN                            R6 0
       16 GETTABLEKS                       R9 R0 K5 ["Y"]
       18 SUB                              R8 R3 R9
       19 GETTABLEKS                       R10 R1 K5 ["Y"]
       21 DIVK                             R9 R10 K6 [2]
       22 ADD                              R7 R8 R9
       23 LOADN                            R8 0
       24 CALL                             R5 3 1
       25 MUL                              R4 R0 R5
       26 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        6 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K1 ["CurrentCamera should exist"]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 GETTABLEKS                       R4 R3 K4 ["ViewportSize"]
       15 GETTABLEKS                       R7 R3 K7 ["FieldOfView"]
       17 MULK                             R6 R7 K6 [3.14159265358979]
       18 DIVK                             R5 R6 K5 [180]
       19 GETTABLEKS                       R10 R4 K9 ["X"]
       21 GETTABLEKS                       R11 R4 K10 ["Y"]
       23 DIV                              R9 R10 R11
       24 DIVK                             R11 R5 K8 [2]
       25 FASTCALL1                        MATH_TAN R11 ; [+2]
       26 GETIMPORT                        R10 K13 [math.tan]
       28 CALL                             R10 1 1
       29 MUL                              R8 R9 R10
       30 FASTCALL1                        MATH_ATAN R8 ; [+2]
       31 GETIMPORT                        R7 K15 [math.atan]
       33 CALL                             R7 1 1
       34 MULK                             R6 R7 K8 [2]
       35 LOADNIL                          R7
       36 GETTABLEKS                       R9 R4 K9 ["X"]
       38 GETTABLEKS                       R10 R2 K9 ["X"]
       40 DIV                              R8 R9 R10
       41 GETTABLEKS                       R10 R4 K10 ["Y"]
       43 GETTABLEKS                       R11 R2 K10 ["Y"]
       45 DIV                              R9 R10 R11
       46 JUMPIFNOTLT                      R9 R8 ; [+12]
       48 LOADK                            R9 K16 [0.5]
       49 GETTABLEKS                       R10 R2 K10 ["Y"]
       51 MUL                              R8 R9 R10
       52 DIVK                             R10 R5 K8 [2]
       53 FASTCALL1                        MATH_TAN R10 ; [+2]
       54 GETIMPORT                        R9 K13 [math.tan]
       56 CALL                             R9 1 1
       57 DIV                              R7 R8 R9
       58 JUMP                             ; [+10]
       59 LOADK                            R9 K16 [0.5]
       60 GETTABLEKS                       R10 R2 K9 ["X"]
       62 MUL                              R8 R9 R10
       63 DIVK                             R10 R6 K8 [2]
       64 FASTCALL1                        MATH_TAN R10 ; [+2]
       65 GETIMPORT                        R9 K13 [math.tan]
       67 CALL                             R9 1 1
       68 DIV                              R7 R8 R9
       69 LOADNIL                          R8
       70 GETTABLEKS                       R10 R3 K17 ["CFrame"]
       72 GETIMPORT                        R11 K19 [CFrame.new]
       74 LOADN                            R12 0
       75 LOADN                            R13 0
       76 MINUS                            R15 R7
       77 GETTABLEKS                       R17 R2 K20 ["Z"]
       79 DIVK                             R16 R17 K8 [2]
       80 SUB                              R14 R15 R16
       81 CALL                             R11 3 1
       82 MUL                              R9 R10 R11
       83 GETIMPORT                        R10 K22 [CFrame.Angles]
       85 LOADN                            R11 0
       86 LOADK                            R12 K6 [3.14159265358979]
       87 LOADN                            R13 0
       88 CALL                             R10 3 1
       89 MUL                              R8 R9 R10
       90 GETTABLEKS                       R11 R8 K23 ["LookVector"]
       92 GETTABLEKS                       R11 R11 K9 ["X"]
       94 MINUS                            R10 R11
       95 GETTABLEKS                       R12 R8 K23 ["LookVector"]
       97 GETTABLEKS                       R12 R12 K20 ["Z"]
       99 MINUS                            R11 R12
      100 FASTCALL2                        MATH_ATAN2 R10 R11 ; [+3]
      102 GETIMPORT                        R9 K25 [math.atan2]
      104 CALL                             R9 2 1
      105 DIVK                             R12 R9 K26 [1.5707963267949]
      106 FASTCALL1                        MATH_ROUND R12 ; [+2]
      107 GETIMPORT                        R11 K28 [math.round]
      109 CALL                             R11 1 1
      110 MULK                             R10 R11 K6 [3.14159265358979]
      111 DIVK                             R9 R10 K8 [2]
      112 GETIMPORT                        R10 K19 [CFrame.new]
      114 GETTABLEKS                       R11 R8 K29 ["Position"]
      116 CALL                             R10 1 1
      117 GETIMPORT                        R11 K22 [CFrame.Angles]
      119 LOADN                            R12 0
      120 MOVE                             R13 R9
      121 LOADN                            R14 0
      122 CALL                             R11 3 1
      123 MUL                              R8 R10 R11
      124 MOVE                             R10 R8
      125 GETUPVAL                         R11 1
      126 MOVE                             R13 R10
      127 MOVE                             R14 R2
      128 NAMECALL                         R11 R11 K30 ["GetPartBoundsInBox"]
      130 CALL                             R11 3 1
      131 LENGTH                           R12 R11
      132 JUMPIFNOTEQKN                    R12 K31 [0] ; [+3]
      134 MOVE                             R8 R10
      135 JUMP                             ; [+16]
      136 GETUPVAL                         R12 2
      137 MOVE                             R13 R11
      138 CALL                             R12 1 1
      139 GETIMPORT                        R13 K19 [CFrame.new]
      141 LOADN                            R14 0
      142 GETTABLEKS                       R17 R10 K10 ["Y"]
      144 SUB                              R16 R12 R17
      145 GETTABLEKS                       R18 R2 K10 ["Y"]
      147 DIVK                             R17 R18 K8 [2]
      148 ADD                              R15 R16 R17
      149 LOADN                            R16 0
      150 CALL                             R13 3 1
      151 MUL                              R8 R10 R13
      152 NAMECALL                         R11 R1 K32 ["Inverse"]
      154 CALL                             R11 1 1
      155 MUL                              R10 R8 R11
      156 MOVE                             R11 R0
      157 LOADNIL                          R12
      158 LOADNIL                          R13
      159 FORGPREP                         R11
      160 NAMECALL                         R19 R15 K33 ["GetPivot"]
      162 CALL                             R19 1 1
      163 MUL                              R18 R10 R19
      164 NAMECALL                         R16 R15 K34 ["PivotTo"]
      166 CALL                             R16 2 0
      167 FORGLOOP                         R11 2 ; [-8]
      169 GETIMPORT                        R11 K36 [CFrame.lookAt]
      171 LOADN                            R14 0
      172 LOADN                            R15 0
      173 MINUS                            R17 R7
      174 GETTABLEKS                       R19 R2 K20 ["Z"]
      176 DIVK                             R18 R19 K8 [2]
      177 SUB                              R16 R17 R18
      178 FASTCALL                         VECTOR ; [+2]
      179 GETIMPORT                        R13 K38 [Vector3.new]
      181 CALL                             R13 3 1
      182 MUL                              R12 R8 R13
      183 LOADN                            R15 0
      184 LOADN                            R16 0
      185 GETTABLEKS                       R19 R2 K20 ["Z"]
      187 MINUS                            R18 R19
      188 DIVK                             R17 R18 K8 [2]
      189 FASTCALL                         VECTOR ; [+2]
      190 GETIMPORT                        R14 K38 [Vector3.new]
      192 CALL                             R14 3 1
      193 MUL                              R13 R8 R14
      194 LOADK                            R14 K39 [{0, 1, 0}]
      195 CALL                             R11 3 1
      196 SETTABLEKS                       R11 R3 K17 ["CFrame"]
      198 SETTABLEKS                       R8 R3 K40 ["Focus"]
      200 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarPreview"]
       21 GETTABLEKS                       R3 R3 K13 ["AvatarPreviewConstants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K14 ["BridgingFiles"]
       32 GETTABLEKS                       R4 R4 K15 ["AssetDmFiles"]
       34 GETTABLEKS                       R4 R4 K16 ["assetDmUtils"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K9 [require]
       39 GETTABLEKS                       R5 R0 K10 ["Src"]
       41 GETTABLEKS                       R5 R5 K11 ["Util"]
       43 GETTABLEKS                       R5 R5 K12 ["AvatarPreview"]
       45 GETTABLEKS                       R5 R5 K17 ["getHumanoidBoundingBox"]
       47 CALL                             R4 1 1
       48 NEWTABLE                         R5 4 0
       50 DUPCLOSURE                       R6 K18 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R7 K19 [PROTO_1]
       54 DUPCLOSURE                       R8 K20 [PROTO_2]
       55 DUPCLOSURE                       R9 K21 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R10 K22 [PROTO_4]
       60 DUPCLOSURE                       R11 K23 [PROTO_5]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R11 R5 K24 ["adjustBlockcastCFramePosition_DEPRECATED"]
       64 DUPCLOSURE                       R11 K25 [PROTO_6]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R11 R5 K26 ["placeAvatars_DEPRECATED"]
       72 DUPCLOSURE                       R11 K27 [PROTO_7]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R12 K28 [PROTO_8]
       76 DUPCLOSURE                       R13 K29 [PROTO_9]
       77 DUPCLOSURE                       R14 K30 [PROTO_10]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 DUPCLOSURE                       R15 K31 [PROTO_11]
       82 DUPCLOSURE                       R16 K32 [PROTO_12]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R15
       85 DUPCLOSURE                       R17 K33 [PROTO_13]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R15
       89 SETTABLEKS                       R17 R5 K34 ["placeAvatars"]
       91 RETURN                           R5 1
