PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["ObjectValue"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+10]
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K4 ["ORIGINAL_INSTANCE_VALUE_NAME"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+4]
       16 NAMECALL                         R6 R5 K5 ["Destroy"]
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-16]
       21 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Model"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+5]
        9 LOADK                            R8 K3 ["BasePart"]
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+79]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["ORIGINAL_INSTANCE_VALUE_NAME"]
       17 NAMECALL                         R6 R5 K5 ["FindFirstChild"]
       19 CALL                             R6 2 1
       20 JUMPIFEQKNIL                     R6 ; [+66]
       22 LOADK                            R9 K6 ["ObjectValue"]
       23 NAMECALL                         R7 R6 K2 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+60]
       27 GETTABLEKS                       R7 R6 K7 ["Value"]
       29 JUMPIFEQKNIL                     R7 ; [+57]
       31 GETTABLEKS                       R7 R6 K7 ["Value"]
       33 GETUPVAL                         R8 1
       34 CALL                             R8 0 1
       35 JUMPIFNOT                        R8 ; [+13]
       36 GETUPVAL                         R8 2
       37 MOVE                             R9 R7
       38 CALL                             R8 1 1
       39 JUMPIF                           R8 ; [+5]
       40 LOADK                            R10 K8 ["Humanoid"]
       41 NAMECALL                         R8 R7 K9 ["FindFirstChildWhichIsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+4]
       45 GETUPVAL                         R8 3
       46 MOVE                             R9 R5
       47 CALL                             R8 1 0
       48 JUMP                             ; [+44]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K10 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
       52 NAMECALL                         R8 R7 K11 ["GetAttribute"]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R9 R9 K12 ["getNewInstanceNameWithPrefix"]
       58 GETTABLEKS                       R10 R5 K13 ["Name"]
       60 MOVE                             R11 R8
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R5 K13 ["Name"]
       64 NAMECALL                         R9 R6 K14 ["Destroy"]
       66 CALL                             R9 1 0
       67 NAMECALL                         R9 R5 K15 ["GetDescendants"]
       69 CALL                             R9 1 3
       70 FORGPREP                         R9
       71 LOADK                            R16 K3 ["BasePart"]
       72 NAMECALL                         R14 R13 K2 ["IsA"]
       74 CALL                             R14 2 1
       75 JUMPIFNOT                        R14 ; [+9]
       76 GETUPVAL                         R14 4
       77 GETTABLEKS                       R14 R14 K12 ["getNewInstanceNameWithPrefix"]
       79 GETTABLEKS                       R15 R13 K13 ["Name"]
       81 MOVE                             R16 R8
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K13 ["Name"]
       85 FORGLOOP                         R9 2 ; [-15]
       87 GETUPVAL                         R7 1
       88 CALL                             R7 0 1
       89 JUMPIFNOT                        R7 ; [+3]
       90 GETUPVAL                         R7 3
       91 MOVE                             R8 R5
       92 CALL                             R7 1 0
       93 FORGLOOP                         R1 2 ; [-90]
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetClassificationUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarAutosetupOptionsInput"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["isAvatar"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["Constants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Types"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R7 K15 [PROTO_1]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 RETURN                           R7 1
