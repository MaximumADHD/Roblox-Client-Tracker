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
       21 RETURN                           R0 1

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
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K7 [{"makeupItems", "skinColor", "worldModel", "setWorldModel"}]
       19 SETTABLEKS                       R3 R5 K3 ["makeupItems"]
       21 GETTABLEKS                       R6 R0 K4 ["skinColor"]
       23 SETTABLEKS                       R6 R5 K4 ["skinColor"]
       25 SETTABLEKS                       R1 R5 K5 ["worldModel"]
       27 SETTABLEKS                       R2 R5 K6 ["setWorldModel"]
       29 CALL                             R4 1 0
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R6 0 4
       40 MOVE                             R7 R1
       41 GETTABLEKS                       R8 R0 K4 ["skinColor"]
       43 GETTABLEKS                       R9 R0 K2 ["dialogItems"]
       45 GETTABLEKS                       R10 R0 K8 ["dialogLookType"]
       47 SETLIST                          R6 R7 4 [1]
       49 CALL                             R4 2 1
       50 DUPTABLE                         R5 K10 [{"lookPreview"}]
       51 SETTABLEKS                       R4 R5 K9 ["lookPreview"]
       53 RETURN                           R5 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["LookComposerDialog"]
       29 GETTABLEKS                       R4 R5 K12 ["useMakeupWorldModel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Components"]
       38 GETTABLEKS                       R6 R7 K11 ["LookComposerDialog"]
       40 GETTABLEKS                       R5 R6 K13 ["LookPreview"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 RETURN                           R5 1
