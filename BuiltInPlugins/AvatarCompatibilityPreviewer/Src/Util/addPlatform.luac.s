PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R3 2
        2 GETTABLEKS                       R2 R3 K0 ["PEDESTAL_PATH"]
        4 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Humanoid"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+44]
        7 LOADK                            R4 K0 ["Humanoid"]
        8 NAMECALL                         R2 R0 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R2 R0 K6 ["HipHeight"]
       21 MINUS                            R1 R2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K8 ["PrimaryPart"]
       25 GETTABLEKS                       R4 R5 K9 ["Size"]
       27 GETTABLEKS                       R3 R4 K10 ["Y"]
       29 MULK                             R2 R3 K7 [0.5]
       30 SUB                              R1 R1 R2
       31 GETUPVAL                         R3 2
       32 MULK                             R2 R3 K7 [0.5]
       33 SUB                              R1 R1 R2
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K8 ["PrimaryPart"]
       38 GETTABLEKS                       R4 R5 K11 ["CFrame"]
       40 GETIMPORT                        R5 K13 [CFrame.new]
       42 LOADN                            R6 0
       43 MOVE                             R7 R1
       44 LOADN                            R8 0
       45 CALL                             R5 3 1
       46 MUL                              R3 R4 R5
       47 SETTABLEKS                       R3 R2 K11 ["CFrame"]
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 0
       51 NAMECALL                         R1 R1 K14 ["GetBoundingBox"]
       53 CALL                             R1 1 2
       54 GETUPVAL                         R4 4
       55 GETTABLEKS                       R3 R4 K15 ["axisAlignedBoxSize"]
       57 MOVE                             R4 R1
       58 MOVE                             R5 R2
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 3
       61 GETIMPORT                        R5 K13 [CFrame.new]
       63 GETTABLEKS                       R7 R1 K16 ["Position"]
       65 LOADN                            R9 0
       66 GETTABLEKS                       R13 R3 K10 ["Y"]
       68 MINUS                            R12 R13
       69 DIVK                             R11 R12 K17 [2]
       70 GETUPVAL                         R13 2
       71 MULK                             R12 R13 K7 [0.5]
       72 SUB                              R10 R11 R12
       73 LOADN                            R11 0
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R8 K19 [Vector3.new]
       77 CALL                             R8 3 1
       78 ADD                              R6 R7 R8
       79 CALL                             R5 1 1
       80 SETTABLEKS                       R5 R4 K11 ["CFrame"]
       82 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [task.wait]
        4 CALL                             R0 0 0
        5 JUMPBACK                         ; [-6]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
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
       21 DUPCLOSURE                       R7 K6 [PROTO_1]
       22 CLOSEUPVALS                      R4
       23 RETURN                           R7 1
       24 JUMP                             ; [+8]
       25 GETUPVAL                         R5 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K7 ["PEDESTAL_PATH"]
       29 NAMECALL                         R5 R5 K8 ["LoadLocalAsset"]
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R2
       37 CAPTURE                          REF R4
       38 CAPTURE                          UPVAL U3
       39 FASTCALL3                        VECTOR R3 R2 R3
       41 MOVE                             R7 R3
       42 MOVE                             R8 R2
       43 MOVE                             R9 R3
       44 GETIMPORT                        R6 K11 [Vector3.new]
       46 CALL                             R6 3 1
       47 SETTABLEKS                       R6 R4 K12 ["Size"]
       49 MOVE                             R6 R5
       50 CALL                             R6 0 0
       51 SETTABLEKS                       R0 R4 K13 ["Parent"]
       53 GETIMPORT                        R6 K16 [task.spawn]
       55 NEWCLOSURE                       R7 P3
       56 CAPTURE                          VAL R5
       57 CALL                             R6 1 1
       58 LOADNIL                          R7
       59 NEWCLOSURE                       R8 P4
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R6
       62 GETTABLEKS                       R9 R1 K17 ["Destroying"]
       64 MOVE                             R11 R8
       65 NAMECALL                         R9 R9 K18 ["Connect"]
       67 CALL                             R9 2 1
       68 MOVE                             R7 R9
       69 CLOSEUPVALS                      R4
       70 RETURN                           R8 1

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
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["BoundingBoxUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R1 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Flags"]
       37 GETTABLEKS                       R5 R6 K15 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R7 R1 K10 ["Src"]
       44 GETTABLEKS                       R6 R7 K16 ["Types"]
       46 CALL                             R5 1 1
       47 DUPCLOSURE                       R6 K17 [PROTO_5]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
