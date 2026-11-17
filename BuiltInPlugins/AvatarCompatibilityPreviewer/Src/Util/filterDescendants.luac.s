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
       16 NEWTABLE                         R2 0 9
       18 LOADK                            R3 K9 ["Animation"]
       19 LOADK                            R4 K10 ["Attachment"]
       20 LOADK                            R5 K11 ["BasePart"]
       21 LOADK                            R6 K12 ["BaseWrap"]
       22 LOADK                            R7 K13 ["DataModelMesh"]
       23 LOADK                            R8 K14 ["FaceControls"]
       24 LOADK                            R9 K15 ["Humanoid"]
       25 LOADK                            R10 K16 ["SurfaceAppearance"]
       26 LOADK                            R11 K17 ["ValueBase"]
       27 SETLIST                          R2 R3 9 [1]
       29 FASTCALL2K                       TABLE_INSERT R2 K18 ; [+5]
       31 MOVE                             R4 R2
       32 LOADK                            R5 K18 ["WrapTextureTransfer"]
       33 GETIMPORT                        R3 K21 [table.insert]
       35 CALL                             R3 2 0
       36 MOVE                             R3 R1
       37 CALL                             R3 0 1
       38 JUMPIFNOT                        R3 ; [+28]
       39 FASTCALL2K                       TABLE_INSERT R2 K22 ; [+5]
       41 MOVE                             R4 R2
       42 LOADK                            R5 K22 ["HumanoidRigDescription"]
       43 GETIMPORT                        R3 K21 [table.insert]
       45 CALL                             R3 2 0
       46 FASTCALL2K                       TABLE_INSERT R2 K23 ; [+5]
       48 MOVE                             R4 R2
       49 LOADK                            R5 K23 ["DigitsRigDescription"]
       50 GETIMPORT                        R3 K21 [table.insert]
       52 CALL                             R3 2 0
       53 FASTCALL2K                       TABLE_INSERT R2 K24 ; [+5]
       55 MOVE                             R4 R2
       56 LOADK                            R5 K24 ["AnimationConstraint"]
       57 GETIMPORT                        R3 K21 [table.insert]
       59 CALL                             R3 2 0
       60 FASTCALL2K                       TABLE_INSERT R2 K25 ; [+5]
       62 MOVE                             R4 R2
       63 LOADK                            R5 K25 ["JointInstance"]
       64 GETIMPORT                        R3 K21 [table.insert]
       66 CALL                             R3 2 0
       67 DUPCLOSURE                       R3 K26 [PROTO_0]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 RETURN                           R3 1
