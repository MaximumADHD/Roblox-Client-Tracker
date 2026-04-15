PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["layerOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["layerOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
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
       21 GETUPVAL                         R1 1
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETIMPORT                        R1 K7 [table.sort]
       26 MOVE                             R2 R0
       27 DUPCLOSURE                       R3 K8 [PROTO_0]
       28 CALL                             R1 2 0
       29 RETURN                           R0 1
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R1 R2 K9 ["reverse"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 3
       20 DUPTABLE                         R5 K7 [{"makeupItems", "skinColor", "worldModel", "setWorldModel"}]
       21 SETTABLEKS                       R3 R5 K3 ["makeupItems"]
       23 GETTABLEKS                       R6 R0 K4 ["skinColor"]
       25 SETTABLEKS                       R6 R5 K4 ["skinColor"]
       27 SETTABLEKS                       R1 R5 K5 ["worldModel"]
       29 SETTABLEKS                       R2 R5 K6 ["setWorldModel"]
       31 CALL                             R4 1 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R6 0 4
       42 MOVE                             R7 R1
       43 GETTABLEKS                       R8 R0 K4 ["skinColor"]
       45 GETTABLEKS                       R9 R0 K2 ["dialogItems"]
       47 GETTABLEKS                       R10 R0 K8 ["dialogLookType"]
       49 SETLIST                          R6 R7 4 [1]
       51 CALL                             R4 2 1
       52 DUPTABLE                         R5 K10 [{"lookPreview"}]
       53 SETTABLEKS                       R4 R5 K9 ["lookPreview"]
       55 RETURN                           R5 1

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
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R9 K15 ["Flags"]
       56 GETTABLEKS                       R7 R8 K16 ["getFFlagLookComposerExplicitLayerOrder"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 RETURN                           R7 1
