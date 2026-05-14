PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TABS_KEYS"]
        3 GETTABLEKS                       R2 R2 K1 ["None"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["IsValidTabKey"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["TABS_INFO"]
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+1]
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TABS_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 GETTABLEKS                       R2 R1 K1 ["IsMultiSelect"]
        6 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 GETIMPORT                        R3 K1 [pairs]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 3
        9 FORGPREP_NEXT                    R3
       10 JUMPIFNOTEQ                      R6 R2 ; [+11]
       12 GETIMPORT                        R8 K1 [pairs]
       14 MOVE                             R9 R7
       15 CALL                             R8 1 3
       16 FORGPREP_NEXT                    R8
       17 LOADB                            R13 1
       18 SETTABLE                         R13 R1 R12
       19 FORGLOOP                         R8 2 ; [-3]
       21 JUMP                             ; [+12]
       22 FASTCALL1                        TYPE R7 ; [+3]
       23 MOVE                             R9 R7
       24 GETIMPORT                        R8 K3 [type]
       26 CALL                             R8 1 1
       27 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+6]
       29 GETUPVAL                         R8 0
       30 MOVE                             R9 R7
       31 MOVE                             R10 R1
       32 MOVE                             R11 R2
       33 CALL                             R8 3 0
       34 FORGLOOP                         R3 2 ; [-25]
       36 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["TABS_INFO"]
        4 LOADNIL                          R2
        5 LOADK                            R3 K1 ["AssetIds"]
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["TABS_INFO"]
        4 LOADNIL                          R2
        5 LOADK                            R3 K1 ["BundleIds"]
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TABS_INFO"]
        3 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["getTabs"]
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 3
        9 FORGPREP_NEXT                    R1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K3 ["TABS_KEYS"]
       13 GETTABLEKS                       R6 R6 K4 ["Avatars"]
       15 JUMPIFEQ                         R4 R6 ; [+2]
       17 SETTABLE                         R5 R0 R4
       18 FORGLOOP                         R1 2 ; [-9]
       20 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTabs"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsValidTabKey"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
        9 GETTABLEKS                       R2 R2 K2 ["Animations"]
       11 JUMPIFNOTEQ                      R0 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsValidTabKey"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
        9 GETTABLEKS                       R2 R2 K2 ["Animations"]
       11 JUMPIFEQ                         R0 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["keys"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R5 R5 K2 ["Parent"]
       24 GETTABLEKS                       R5 R5 K7 ["PreviewConstants"]
       26 CALL                             R4 1 1
       27 NEWTABLE                         R5 16 0
       29 DUPCLOSURE                       R6 K8 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R6 R5 K9 ["IsValidTabKey"]
       33 DUPCLOSURE                       R6 K10 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R6 R5 K11 ["getTabInfo"]
       38 DUPCLOSURE                       R6 K12 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K13 ["isTabMultiSelect"]
       42 DUPCLOSURE                       R6 K14 [PROTO_3]
       43 CAPTURE                          VAL R6
       44 DUPCLOSURE                       R7 K15 [PROTO_4]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R5 K16 ["getAllAssetIds"]
       50 DUPCLOSURE                       R7 K17 [PROTO_5]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R7 R5 K18 ["getAllBundleIds"]
       56 DUPCLOSURE                       R7 K19 [PROTO_6]
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R7 R5 K20 ["getTabs"]
       60 DUPCLOSURE                       R7 K21 [PROTO_7]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R7 R5 K22 ["getTabsForAvatarEditing"]
       65 DUPCLOSURE                       R7 K23 [PROTO_8]
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R7 R5 K24 ["getTabsForClothesEditing"]
       69 DUPCLOSURE                       R7 K25 [PROTO_9]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R7 R5 K26 ["shouldTabShowTransparency"]
       74 DUPCLOSURE                       R7 K27 [PROTO_10]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R7 R5 K28 ["shouldTabShowPlaybackSlider"]
       79 RETURN                           R5 1
