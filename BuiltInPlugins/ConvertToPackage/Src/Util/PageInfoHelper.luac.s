PROTO_0:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R3 R2 K0 ["category"]
        4 JUMPIF                           R3 ; [+19]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["shouldDebugWarnings"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+12]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R4 K4 ["Lua toolbox: No category for category index %s"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K6 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R4 R4 K7 ["format"]
       20 CALL                             R4 2 -1
       21 CALL                             R3 -1 0
       22 LOADK                            R3 K8 [""]
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R2 K0 ["category"]
       26 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getCategory"]
        3 GETTABLEKS                       R2 R0 K1 ["categories"]
        5 GETTABLEKS                       R3 R0 K2 ["categoryIndex"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R3 R2 K0 ["sort"]
        4 JUMPIF                           R3 ; [+19]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["shouldDebugWarnings"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+12]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R4 K4 ["Lua Toolbox: no sort for sort index %s"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K6 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R4 R4 K7 ["format"]
       20 CALL                             R4 2 -1
       21 CALL                             R3 -1 0
       22 LOADK                            R3 K8 [""]
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R2 K0 ["sort"]
       26 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSortType"]
        3 GETTABLEKS                       R2 R0 K1 ["sorts"]
        5 GETTABLEKS                       R3 R0 K2 ["sortIndex"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LOADN                            R2 1
        5 JUMPIFLT                         R1 R2 ; [+8]
        7 LENGTH                           R2 R0
        8 JUMPIFLT                         R2 R1 ; [+5]
       10 GETTABLE                         R3 R0 R1
       11 GETTABLEKS                       R2 R3 K1 ["id"]
       13 JUMPIF                           R2 ; [+19]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["shouldDebugWarnings"]
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+12]
       19 GETIMPORT                        R2 K4 [warn]
       21 LOADK                            R3 K5 ["Lua Toolbox: no group for group index %s"]
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 NAMECALL                         R3 R3 K8 ["format"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 0
       31 LOADN                            R2 0
       32 RETURN                           R2 1
       33 GETTABLE                         R3 R0 R1
       34 GETTABLEKS                       R2 R3 K1 ["id"]
       36 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getGroupId"]
        3 GETTABLEKS                       R2 R0 K1 ["groups"]
        5 GETTABLEKS                       R3 R0 K2 ["groupIndex"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["categories"]
        2 GETTABLEKS                       R3 R0 K1 ["categoryIndex"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["assetType"]
        8 JUMPIF                           R2 ; [+20]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["shouldDebugWarnings"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+13]
       14 GETIMPORT                        R2 K5 [warn]
       16 LOADK                            R3 K6 ["Lua toolbox: No assetType for category index %s"]
       17 GETTABLEKS                       R6 R0 K1 ["categoryIndex"]
       19 FASTCALL1                        TOSTRING R6 ; [+2]
       20 GETIMPORT                        R5 K8 [tostring]
       22 CALL                             R5 1 1
       23 NAMECALL                         R3 R3 K9 ["format"]
       25 CALL                             R3 2 -1
       26 CALL                             R2 -1 0
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K10 ["getEngineAssetType"]
       32 GETTABLEKS                       R3 R1 K2 ["assetType"]
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Types"]
       24 GETTABLEKS                       R3 R4 K9 ["Category"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 8 0
       29 DUPCLOSURE                       R4 K10 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K11 ["getCategory"]
       33 DUPCLOSURE                       R4 K12 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R4 R3 K13 ["getCategoryForPageInfo"]
       37 DUPCLOSURE                       R4 K14 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K15 ["getSortType"]
       41 DUPCLOSURE                       R4 K16 [PROTO_3]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R4 R3 K17 ["getSortTypeForPageInfo"]
       45 DUPCLOSURE                       R4 K18 [PROTO_4]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K19 ["getGroupId"]
       49 DUPCLOSURE                       R4 K20 [PROTO_5]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R4 R3 K21 ["getGroupIdForPageInfo"]
       53 DUPCLOSURE                       R4 K22 [PROTO_6]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R4 R3 K23 ["getEngineAssetTypeForPageInfoCategory"]
       58 RETURN                           R3 1
