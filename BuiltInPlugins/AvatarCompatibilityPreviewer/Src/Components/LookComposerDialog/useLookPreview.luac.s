PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["dialogItems"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       10 JUMPIFNOTEQKS                    R6 K2 ["Asset"] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R5
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-12]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K6 ["reverse"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"key", "makeupWorldModel", "makeupSkinColor", "dialogLookType", "dialogItems"}]
        5 LOADK                            R3 K7 ["SharedLookPreview"]
        6 SETTABLEKS                       R3 R2 K1 ["key"]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["makeupWorldModel"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K8 ["skinColor"]
       14 SETTABLEKS                       R3 R2 K3 ["makeupSkinColor"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K4 ["dialogLookType"]
       19 SETTABLEKS                       R3 R2 K4 ["dialogLookType"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["dialogItems"]
       24 SETTABLEKS                       R3 R2 K5 ["dialogItems"]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R5 0 1
       13 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 2
       19 DUPTABLE                         R5 K7 [{"makeupItems", "skinColor", "worldModel", "setWorldModel"}]
       20 SETTABLEKS                       R3 R5 K3 ["makeupItems"]
       22 GETTABLEKS                       R6 R0 K4 ["skinColor"]
       24 SETTABLEKS                       R6 R5 K4 ["skinColor"]
       26 SETTABLEKS                       R1 R5 K5 ["worldModel"]
       28 SETTABLEKS                       R2 R5 K6 ["setWorldModel"]
       30 CALL                             R4 1 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R6 0 4
       41 MOVE                             R7 R1
       42 GETTABLEKS                       R8 R0 K4 ["skinColor"]
       44 GETTABLEKS                       R9 R0 K2 ["dialogItems"]
       46 GETTABLEKS                       R10 R0 K8 ["dialogLookType"]
       48 SETLIST                          R6 R7 4 [1]
       50 CALL                             R4 2 1
       51 DUPTABLE                         R5 K10 [{"lookPreview"}]
       52 SETTABLEKS                       R4 R5 K9 ["lookPreview"]
       54 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K9 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["LookComposerDialog"]
       36 GETTABLEKS                       R5 R6 K13 ["useMakeupWorldModel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K9 ["Src"]
       43 GETTABLEKS                       R8 R9 K11 ["Components"]
       45 GETTABLEKS                       R7 R8 K12 ["LookComposerDialog"]
       47 GETTABLEKS                       R6 R7 K14 ["LookPreview"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 RETURN                           R6 1
