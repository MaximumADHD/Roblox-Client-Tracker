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
       25 JUMP                             ; [+42]
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
       40 GETUPVAL                         R8 1
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+6]
       43 LOADK                            R10 K8 ["BodyColors"]
       44 NAMECALL                         R8 R6 K2 ["IsA"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+1]
       48 LOADB                            R7 1
       49 LOADK                            R10 K9 ["LocalScript"]
       50 NAMECALL                         R8 R6 K2 ["IsA"]
       52 CALL                             R8 2 1
       53 JUMPIFNOT                        R8 ; [+5]
       54 GETTABLEKS                       R8 R6 K6 ["Name"]
       56 JUMPIFNOTEQKS                    R8 K10 ["Animate"] ; [+2]
       58 LOADB                            R7 1
       59 JUMPIFNOT                        R7 ; [+5]
       60 GETUPVAL                         R8 2
       61 MOVE                             R9 R6
       62 MOVE                             R10 R1
       63 CALL                             R8 2 0
       64 JUMP                             ; [+3]
       65 NAMECALL                         R8 R6 K7 ["Destroy"]
       67 CALL                             R8 1 0
       68 FORGLOOP                         R2 2 ; [-65]
       70 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarPreviewerMakeup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagIncludeBodyColorsInAutoSetup"]
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
       38 MOVE                             R4 R1
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+7]
       41 FASTCALL2K                       TABLE_INSERT R3 K19 ; [+5]
       43 MOVE                             R5 R3
       44 LOADK                            R6 K19 ["WrapTextureTransfer"]
       45 GETIMPORT                        R4 K22 [table.insert]
       47 CALL                             R4 2 0
       48 DUPCLOSURE                       R4 K23 [PROTO_0]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 RETURN                           R4 1
