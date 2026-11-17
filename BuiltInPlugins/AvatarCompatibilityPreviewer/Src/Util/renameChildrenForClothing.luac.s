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
       13 JUMPIFNOT                        R6 ; [+73]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["ORIGINAL_INSTANCE_VALUE_NAME"]
       17 NAMECALL                         R6 R5 K5 ["FindFirstChild"]
       19 CALL                             R6 2 1
       20 JUMPIFEQKNIL                     R6 ; [+63]
       22 LOADK                            R9 K6 ["ObjectValue"]
       23 NAMECALL                         R7 R6 K2 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+57]
       27 GETTABLEKS                       R7 R6 K7 ["Value"]
       29 JUMPIFEQKNIL                     R7 ; [+54]
       31 GETTABLEKS                       R7 R6 K7 ["Value"]
       33 GETUPVAL                         R8 1
       34 MOVE                             R9 R7
       35 CALL                             R8 1 1
       36 JUMPIF                           R8 ; [+5]
       37 LOADK                            R10 K8 ["Humanoid"]
       38 NAMECALL                         R8 R7 K9 ["FindFirstChildWhichIsA"]
       40 CALL                             R8 2 1
       41 JUMPIFNOT                        R8 ; [+4]
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R5
       44 CALL                             R8 1 0
       45 JUMP                             ; [+41]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K10 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
       49 NAMECALL                         R8 R7 K11 ["GetAttribute"]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K12 ["getNewInstanceNameWithPrefix"]
       55 GETTABLEKS                       R10 R5 K13 ["Name"]
       57 MOVE                             R11 R8
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R5 K13 ["Name"]
       61 NAMECALL                         R9 R6 K14 ["Destroy"]
       63 CALL                             R9 1 0
       64 NAMECALL                         R9 R5 K15 ["GetDescendants"]
       66 CALL                             R9 1 3
       67 FORGPREP                         R9
       68 LOADK                            R16 K3 ["BasePart"]
       69 NAMECALL                         R14 R13 K2 ["IsA"]
       71 CALL                             R14 2 1
       72 JUMPIFNOT                        R14 ; [+9]
       73 GETUPVAL                         R14 3
       74 GETTABLEKS                       R14 R14 K12 ["getNewInstanceNameWithPrefix"]
       76 GETTABLEKS                       R15 R13 K13 ["Name"]
       78 MOVE                             R16 R8
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K13 ["Name"]
       82 FORGLOOP                         R9 2 ; [-15]
       84 GETUPVAL                         R7 2
       85 MOVE                             R8 R5
       86 CALL                             R7 1 0
       87 FORGLOOP                         R1 2 ; [-84]
       89 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["isAvatar"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Types"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K12 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R6 K13 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
