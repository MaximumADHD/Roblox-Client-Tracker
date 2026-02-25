PROTO_0:
        0 JUMPIFNOT                        R1 ; [+20]
        1 JUMPIFNOT                        R2 ; [+13]
        2 MOVE                             R4 R3
        3 JUMPIF                           R4 ; [+2]
        4 NEWTABLE                         R4 0 0
        6 MOVE                             R3 R4
        7 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 GETIMPORT                        R4 K2 [table.insert]
       13 CALL                             R4 2 0
       14 RETURN                           R3 1
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R0
       18 SETLIST                          R4 R5 1 [1]
       20 RETURN                           R4 1
       21 JUMPIFNOT                        R3 ; [+9]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K3 ["List"]
       25 GETTABLEKS                       R4 R5 K4 ["removeValue"]
       27 MOVE                             R5 R3
       28 MOVE                             R6 R0
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1
       31 LOADNIL                          R4
       32 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TABS_KEYS"]
        3 GETTABLEKS                       R2 R3 K1 ["Avatars"]
        5 GETTABLE                         R1 R0 R2
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K3 [next]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["previewStatus"]
        5 GETTABLEKS                       R2 R3 K2 ["selectedTab"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R5 R1 K1 ["previewStatus"]
       10 GETTABLEKS                       R4 R5 K3 ["selectedAssets"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 JUMPIFNOT                        R4 ; [+41]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K4 ["isTabMultiSelect"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 GETUPVAL                         R6 1
       22 GETUPVAL                         R7 4
       23 MOVE                             R8 R4
       24 GETTABLE                         R9 R3 R2
       25 CALL                             R5 4 1
       26 SETTABLE                         R5 R3 R2
       27 GETUPVAL                         R5 4
       28 JUMPIFNOT                        R5 ; [+27]
       29 GETUPVAL                         R7 5
       30 GETTABLEKS                       R6 R7 K5 ["TABS_KEYS"]
       32 GETTABLEKS                       R5 R6 K6 ["Avatars"]
       34 JUMPIFNOTEQ                      R2 R5 ; [+8]
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R6 R5 K7 ["TotalAvatars"]
       39 ADDK                             R6 R6 K8 [1]
       40 SETTABLEKS                       R6 R5 K7 ["TotalAvatars"]
       42 JUMP                             ; [+13]
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R6 R7 K5 ["TABS_KEYS"]
       46 GETTABLEKS                       R5 R6 K9 ["Clothing"]
       48 JUMPIFNOTEQ                      R2 R5 ; [+7]
       50 GETUPVAL                         R5 6
       51 GETTABLEKS                       R6 R5 K10 ["TotalLayers"]
       53 ADDK                             R6 R6 K8 [1]
       54 SETTABLEKS                       R6 R5 K10 ["TotalLayers"]
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R7 R8 K5 ["TABS_KEYS"]
       59 GETTABLEKS                       R6 R7 K6 ["Avatars"]
       61 GETTABLE                         R5 R3 R6
       62 JUMPIF                           R5 ; [+2]
       63 LOADB                            R4 0
       64 JUMP                             ; [+8]
       65 GETIMPORT                        R6 K12 [next]
       67 MOVE                             R7 R5
       68 CALL                             R6 1 1
       69 JUMPIFNOT                        R6 ; [+2]
       70 LOADB                            R4 1
       71 JUMP                             ; [+1]
       72 LOADB                            R4 0
       73 JUMPIF                           R4 ; [+26]
       74 GETUPVAL                         R6 5
       75 GETTABLEKS                       R5 R6 K5 ["TABS_KEYS"]
       77 GETTABLEKS                       R4 R5 K6 ["Avatars"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R5 R6 K13 ["getTabInfo"]
       82 MOVE                             R6 R4
       83 CALL                             R5 1 1
       84 GETTABLE                         R6 R3 R4
       85 JUMPIF                           R6 ; [+3]
       86 NEWTABLE                         R6 0 0
       88 SETTABLE                         R6 R3 R4
       89 GETIMPORT                        R6 K12 [next]
       91 GETTABLEKS                       R7 R5 K14 ["BundleIds"]
       93 CALL                             R6 1 2
       94 NEWTABLE                         R8 0 1
       96 MOVE                             R9 R7
       97 SETLIST                          R8 R9 1 [1]
       99 SETTABLE                         R8 R3 R4
      100 GETUPVAL                         R6 7
      101 MOVE                             R7 R3
      102 CALL                             R6 1 -1
      103 NAMECALL                         R4 R0 K15 ["dispatch"]
      105 CALL                             R4 -1 0
      106 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R3 K9 ["Util"]
       32 GETTABLEKS                       R4 R5 K10 ["AccessoryAndBodyToolShared"]
       34 GETTABLEKS                       R5 R4 K11 ["PreviewConstants"]
       36 GETTABLEKS                       R6 R4 K12 ["PreviewConstantsInterface"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R10 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R10 K14 ["Actions"]
       44 GETTABLEKS                       R8 R9 K15 ["SetPreviewAssetsSelected"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R11 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R11 K9 ["Util"]
       53 GETTABLEKS                       R9 R10 K16 ["AnalyticsGlobals"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R2 K9 ["Util"]
       58 GETTABLEKS                       R10 R9 K17 ["deepCopy"]
       60 DUPCLOSURE                       R11 K18 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 DUPCLOSURE                       R12 K19 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R13 K20 [PROTO_3]
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 RETURN                           R13 1
