PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["WedgePart"]
        3 CALL                             R2 1 1
        4 LOADK                            R4 K4 [0.05]
        5 GETUPVAL                         R6 0
        6 MULK                             R5 R6 K5 [0.5]
        7 GETUPVAL                         R6 1
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R3 K7 [Vector3.new]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K8 ["Size"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K9 ["Anchored"]
       17 GETIMPORT                        R3 K13 [Enum.Material.Neon]
       19 SETTABLEKS                       R3 R2 K11 ["Material"]
       21 GETUPVAL                         R3 2
       22 SETTABLEKS                       R3 R2 K14 ["Color"]
       24 GETUPVAL                         R3 3
       25 SETTABLEKS                       R3 R2 K15 ["Parent"]
       27 MOVE                             R3 R2
       28 GETUPVAL                         R6 4
       29 GETIMPORT                        R7 K17 [CFrame.new]
       31 MOVE                             R8 R0
       32 LOADN                            R9 0
       33 LOADN                            R10 0
       34 CALL                             R7 3 1
       35 MUL                              R5 R6 R7
       36 GETIMPORT                        R6 K19 [CFrame.Angles]
       38 LOADN                            R7 0
       39 LOADN                            R8 0
       40 MOVE                             R9 R1
       41 CALL                             R6 3 1
       42 MUL                              R4 R5 R6
       43 RETURN                           R3 2

PROTO_1:
        0 MULK                             R3 R1 K0 [0.15]
        1 MULK                             R4 R3 K1 [0.666666666666667]
        2 MULK                             R5 R1 K2 [0.5]
        3 POWK                             R9 R5 K3 [2]
        4 MULK                             R11 R3 K2 [0.5]
        5 POWK                             R10 R11 K3 [2]
        6 SUB                              R8 R9 R10
        7 FASTCALL1                        MATH_SQRT R8 ; [+2]
        8 GETIMPORT                        R7 K6 [math.sqrt]
       10 CALL                             R7 1 1
       11 MINUS                            R6 R7
       12 GETIMPORT                        R7 K9 [CFrame.new]
       14 LOADN                            R8 0
       15 LOADN                            R9 0
       16 MULK                             R11 R4 K2 [0.5]
       17 SUB                              R10 R6 R11
       18 CALL                             R7 3 1
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R7
       25 MOVE                             R9 R8
       26 MINUS                            R11 R3
       27 MULK                             R10 R11 K10 [0.25]
       28 LOADK                            R11 K11 [1.5707963267949]
       29 CALL                             R9 2 2
       30 MOVE                             R11 R8
       31 MULK                             R12 R3 K10 [0.25]
       32 LOADK                            R13 K12 [-1.5707963267949]
       33 CALL                             R11 2 2
       34 DUPTABLE                         R13 K15 [{"parts", "localCFrames"}]
       35 NEWTABLE                         R14 0 2
       37 MOVE                             R15 R9
       38 MOVE                             R16 R11
       39 SETLIST                          R14 R15 2 [1]
       41 SETTABLEKS                       R14 R13 K13 ["parts"]
       43 NEWTABLE                         R14 0 2
       45 MOVE                             R15 R10
       46 MOVE                             R16 R12
       47 SETLIST                          R14 R15 2 [1]
       49 SETTABLEKS                       R14 R13 K14 ["localCFrames"]
       51 RETURN                           R13 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["PEDESTAL_PATH"]
        4 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Humanoid"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+46]
        7 LOADK                            R4 K0 ["Humanoid"]
        8 NAMECALL                         R2 R0 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R2 R0 K6 ["HipHeight"]
       21 MINUS                            R1 R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["PrimaryPart"]
       25 GETTABLEKS                       R3 R3 K9 ["Size"]
       27 GETTABLEKS                       R3 R3 K10 ["Y"]
       29 MULK                             R2 R3 K7 [0.5]
       30 SUB                              R1 R1 R2
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K11 ["Height"]
       34 MULK                             R2 R3 K7 [0.5]
       35 SUB                              R1 R1 R2
       36 GETUPVAL                         R2 3
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K8 ["PrimaryPart"]
       40 GETTABLEKS                       R4 R4 K12 ["CFrame"]
       42 GETIMPORT                        R5 K14 [CFrame.new]
       44 LOADN                            R6 0
       45 MOVE                             R7 R1
       46 LOADN                            R8 0
       47 CALL                             R5 3 1
       48 MUL                              R3 R4 R5
       49 SETTABLEKS                       R3 R2 K12 ["CFrame"]
       51 JUMP                             ; [+34]
       52 GETUPVAL                         R1 0
       53 NAMECALL                         R1 R1 K15 ["GetBoundingBox"]
       55 CALL                             R1 1 2
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K16 ["axisAlignedBoxSize"]
       59 MOVE                             R4 R1
       60 MOVE                             R5 R2
       61 CALL                             R3 2 1
       62 GETUPVAL                         R4 3
       63 GETIMPORT                        R5 K14 [CFrame.new]
       65 GETTABLEKS                       R7 R1 K17 ["Position"]
       67 LOADN                            R9 0
       68 GETTABLEKS                       R13 R3 K10 ["Y"]
       70 MINUS                            R12 R13
       71 DIVK                             R11 R12 K18 [2]
       72 GETUPVAL                         R13 2
       73 GETTABLEKS                       R13 R13 K11 ["Height"]
       75 MULK                             R12 R13 K7 [0.5]
       76 SUB                              R10 R11 R12
       77 LOADN                            R11 0
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R8 K20 [Vector3.new]
       81 CALL                             R8 3 1
       82 ADD                              R6 R7 R8
       83 CALL                             R5 1 1
       84 SETTABLEKS                       R5 R4 K12 ["CFrame"]
       86 GETUPVAL                         R1 5
       87 JUMPIFEQKNIL                     R1 ; [+19]
       89 GETUPVAL                         R1 5
       90 GETTABLEKS                       R1 R1 K21 ["parts"]
       92 LOADNIL                          R2
       93 LOADNIL                          R3
       94 FORGPREP                         R1
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R7 R7 K12 ["CFrame"]
       98 GETUPVAL                         R9 5
       99 GETTABLEKS                       R9 R9 K22 ["localCFrames"]
      101 GETTABLE                         R8 R9 R4
      102 MUL                              R6 R7 R8
      103 SETTABLEKS                       R6 R5 K12 ["CFrame"]
      105 FORGLOOP                         R1 2 ; [-11]
      107 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [task.wait]
        4 CALL                             R0 0 0
        5 JUMPBACK                         ; [-6]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 CALL                             R5 0 1
        3 JUMPIFNOT                        R5 ; [+21]
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          REF R4
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R5 1 2
       11 JUMPIF                           R5 ; [+21]
       12 GETIMPORT                        R7 K3 [warn]
       14 LOADK                            R9 K4 ["Failed to load platform asset due to %*"]
       15 MOVE                             R11 R6
       16 NAMECALL                         R9 R9 K5 ["format"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 CALL                             R7 1 0
       21 DUPCLOSURE                       R7 K6 [PROTO_3]
       22 CLOSEUPVALS                      R4
       23 RETURN                           R7 1
       24 JUMP                             ; [+8]
       25 GETUPVAL                         R5 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K7 ["PEDESTAL_PATH"]
       29 NAMECALL                         R5 R5 K8 ["LoadLocalAsset"]
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETUPVAL                         R5 3
       35 MOVE                             R6 R4
       36 GETTABLEKS                       R7 R2 K9 ["Size"]
       38 GETTABLEKS                       R8 R2 K10 ["FrontIndicatorColor"]
       40 CALL                             R5 3 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R4
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R5
       50 GETTABLEKS                       R8 R2 K9 ["Size"]
       52 GETTABLEKS                       R9 R2 K11 ["Height"]
       54 GETTABLEKS                       R10 R2 K9 ["Size"]
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R7 K14 [Vector3.new]
       59 CALL                             R7 3 1
       60 SETTABLEKS                       R7 R4 K9 ["Size"]
       62 MOVE                             R7 R6
       63 CALL                             R7 0 0
       64 SETTABLEKS                       R0 R4 K15 ["Parent"]
       66 GETIMPORT                        R7 K18 [task.spawn]
       68 NEWCLOSURE                       R8 P3
       69 CAPTURE                          VAL R6
       70 CALL                             R7 1 1
       71 LOADNIL                          R8
       72 NEWCLOSURE                       R9 P4
       73 CAPTURE                          REF R8
       74 CAPTURE                          VAL R7
       75 GETTABLEKS                       R10 R1 K19 ["Destroying"]
       77 MOVE                             R12 R9
       78 NAMECALL                         R10 R10 K20 ["Connect"]
       80 CALL                             R10 2 1
       81 MOVE                             R8 R10
       82 CLOSEUPVALS                      R4
       83 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["BoundingBoxUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K14 ["Flags"]
       37 GETTABLEKS                       R5 R5 K15 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K10 ["Src"]
       44 GETTABLEKS                       R6 R6 K16 ["Types"]
       46 CALL                             R5 1 1
       47 DUPCLOSURE                       R6 K17 [PROTO_1]
       48 DUPCLOSURE                       R7 K18 [PROTO_7]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 RETURN                           R7 1
