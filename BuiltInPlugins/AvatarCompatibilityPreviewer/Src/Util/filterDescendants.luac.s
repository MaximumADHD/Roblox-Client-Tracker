PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADB                            R7 0
        5 LOADK                            R10 K1 ["BasePart"]
        6 NAMECALL                         R8 R6 K2 ["IsA"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+17]
       10 JUMPIFEQKNIL                     R1 ; [+11]
       12 GETIMPORT                        R8 K5 [table.find]
       14 MOVE                             R9 R1
       15 GETTABLEKS                       R10 R6 K6 ["Name"]
       17 CALL                             R8 2 1
       18 JUMPIFEQKNIL                     R8 ; [+3]
       20 LOADB                            R7 1
       21 JUMP                             ; [+18]
       22 NAMECALL                         R8 R6 K7 ["Destroy"]
       24 CALL                             R8 1 0
       25 JUMP                             ; [+39]
       26 JUMP                             ; [+13]
       27 GETUPVAL                         R8 0
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 MOVE                             R15 R12
       32 NAMECALL                         R13 R6 K2 ["IsA"]
       34 CALL                             R13 2 1
       35 JUMPIFNOT                        R13 ; [+2]
       36 LOADB                            R7 1
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R8 2 ; [-8]
       40 LOADK                            R10 K8 ["BodyColors"]
       41 NAMECALL                         R8 R6 K2 ["IsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+1]
       45 LOADB                            R7 1
       46 LOADK                            R10 K9 ["LocalScript"]
       47 NAMECALL                         R8 R6 K2 ["IsA"]
       49 CALL                             R8 2 1
       50 JUMPIFNOT                        R8 ; [+5]
       51 GETTABLEKS                       R8 R6 K6 ["Name"]
       53 JUMPIFNOTEQKS                    R8 K10 ["Animate"] ; [+2]
       55 LOADB                            R7 1
       56 JUMPIFNOT                        R7 ; [+5]
       57 GETUPVAL                         R8 1
       58 MOVE                             R9 R6
       59 MOVE                             R10 R1
       60 CALL                             R8 2 0
       61 JUMP                             ; [+3]
       62 NAMECALL                         R8 R6 K7 ["Destroy"]
       64 CALL                             R8 1 0
       65 FORGLOOP                         R2 2 ; [-62]
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarPreviewerFilterRigDescriptions"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagAvatarPreviewerMakeup"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 0 9
       27 LOADK                            R4 K10 ["Animation"]
       28 LOADK                            R5 K11 ["Attachment"]
       29 LOADK                            R6 K12 ["BasePart"]
       30 LOADK                            R7 K13 ["BaseWrap"]
       31 LOADK                            R8 K14 ["DataModelMesh"]
       32 LOADK                            R9 K15 ["FaceControls"]
       33 LOADK                            R10 K16 ["Humanoid"]
       34 LOADK                            R11 K17 ["SurfaceAppearance"]
       35 LOADK                            R12 K18 ["ValueBase"]
       36 SETLIST                          R3 R4 9 [1]
       38 MOVE                             R4 R2
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+7]
       41 FASTCALL2K                       TABLE_INSERT R3 K19 ; [+5]
       43 MOVE                             R5 R3
       44 LOADK                            R6 K19 ["WrapTextureTransfer"]
       45 GETIMPORT                        R4 K22 [table.insert]
       47 CALL                             R4 2 0
       48 MOVE                             R4 R1
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+28]
       51 FASTCALL2K                       TABLE_INSERT R3 K23 ; [+5]
       53 MOVE                             R5 R3
       54 LOADK                            R6 K23 ["HumanoidRigDescription"]
       55 GETIMPORT                        R4 K22 [table.insert]
       57 CALL                             R4 2 0
       58 FASTCALL2K                       TABLE_INSERT R3 K24 ; [+5]
       60 MOVE                             R5 R3
       61 LOADK                            R6 K24 ["DigitsRigDescription"]
       62 GETIMPORT                        R4 K22 [table.insert]
       64 CALL                             R4 2 0
       65 FASTCALL2K                       TABLE_INSERT R3 K25 ; [+5]
       67 MOVE                             R5 R3
       68 LOADK                            R6 K25 ["AnimationConstraint"]
       69 GETIMPORT                        R4 K22 [table.insert]
       71 CALL                             R4 2 0
       72 FASTCALL2K                       TABLE_INSERT R3 K26 ; [+5]
       74 MOVE                             R5 R3
       75 LOADK                            R6 K26 ["JointInstance"]
       76 GETIMPORT                        R4 K22 [table.insert]
       78 CALL                             R4 2 0
       79 DUPCLOSURE                       R4 K27 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 RETURN                           R4 1
