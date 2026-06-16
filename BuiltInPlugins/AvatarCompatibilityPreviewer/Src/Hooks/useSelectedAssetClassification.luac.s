PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DEFAULT_ASSET_CLASSIFICATION"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
        9 LOADNIL                          R4
       10 NAMECALL                         R1 R1 K2 ["SetAttribute"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K1 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
       18 MOVE                             R4 R0
       19 NAMECALL                         R1 R1 K2 ["SetAttribute"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

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
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 NEWTABLE                         R6 0 1
       46 MOVE                             R7 R0
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 JUMPIFNOT                        R3 ; [+3]
       51 MOVE                             R5 R2
       52 LOADNIL                          R6
       53 RETURN                           R5 2
       54 MOVE                             R5 R2
       55 MOVE                             R6 R4
       56 RETURN                           R5 2

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
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["isAvatar"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       47 GETTABLEKS                       R6 R6 K14 ["useAttribute"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 RETURN                           R6 1
