PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["DEFAULT_ASSET_CLASSIFICATION"]
        6 JUMP                             ; [+1]
        7 LOADK                            R1 K1 ["Automatic"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
       14 LOADNIL                          R4
       15 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K2 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
       23 MOVE                             R4 R0
       24 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R2 K1 ["Avatar"]
       11 JUMP                             ; [+13]
       12 LOADK                            R5 K2 ["Humanoid"]
       13 NAMECALL                         R3 R0 K3 ["FindFirstChildOfClass"]
       15 CALL                             R3 2 1
       16 JUMPIFEQKNIL                     R3 ; [+3]
       18 LOADK                            R2 K4 ["Body"]
       19 JUMP                             ; [+5]
       20 MOVE                             R2 R1
       21 JUMPIF                           R2 ; [+3]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K5 ["DEFAULT_ASSET_CLASSIFICATION"]
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 JUMPIF                           R3 ; [+8]
       29 LOADK                            R6 K2 ["Humanoid"]
       30 NAMECALL                         R4 R0 K3 ["FindFirstChildOfClass"]
       32 CALL                             R4 2 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 NEWTABLE                         R6 0 1
       47 MOVE                             R7 R0
       48 SETLIST                          R6 R7 1 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 5
       52 CALL                             R5 0 1
       53 JUMPIF                           R5 ; [+8]
       54 JUMPIFNOTEQKNIL                  R1 ; [+4]
       56 MOVE                             R5 R4
       57 LOADK                            R6 K4 ["Body"]
       58 CALL                             R5 1 0
       59 MOVE                             R5 R1
       60 MOVE                             R6 R4
       61 RETURN                           R5 2
       62 JUMPIFNOT                        R3 ; [+3]
       63 MOVE                             R5 R2
       64 LOADNIL                          R6
       65 RETURN                           R5 2
       66 MOVE                             R5 R2
       67 MOVE                             R6 R4
       68 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AssetClassificationUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarAutosetupOptionsInput"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["isAvatar"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       56 GETTABLEKS                       R7 R7 K16 ["useAttribute"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_1]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 RETURN                           R7 1
