PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["tag"] = "stroke-default radius-medium bg-surface-200", ["Size"], ["LayoutOrder"]}]
        5 GETIMPORT                        R4 K8 [UDim2.fromOffset]
        7 LOADN                            R5 150
        8 LOADN                            R6 150
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K3 ["Size"]
       12 SETTABLEKS                       R0 R3 K4 ["LayoutOrder"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["dialogLookType"]
        7 JUMPIF                           R1 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 JUMPIFEQKS                       R1 K2 ["MakeupLook"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIFEQKS                       R1 K3 ["AvatarLook"] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIFNOT                        R2 ; [+19]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K4 ["createElement"]
       25 GETUPVAL                         R5 3
       26 DUPTABLE                         R6 K7 [{"LayoutOrder", "worldModel", "skinColor"}]
       27 GETTABLEKS                       R7 R0 K1 ["LayoutOrder"]
       29 SETTABLEKS                       R7 R6 K1 ["LayoutOrder"]
       31 GETTABLEKS                       R7 R0 K8 ["makeupWorldModel"]
       33 SETTABLEKS                       R7 R6 K5 ["worldModel"]
       35 GETTABLEKS                       R7 R0 K9 ["makeupSkinColor"]
       37 SETTABLEKS                       R7 R6 K6 ["skinColor"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1
       41 JUMPIFNOT                        R3 ; [+46]
       42 LOADNIL                          R4
       43 GETTABLEKS                       R5 R0 K10 ["itemsList"]
       45 JUMPIFNOT                        R5 ; [+18]
       46 GETTABLEKS                       R5 R0 K10 ["itemsList"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 GETTABLEKS                       R10 R9 K11 ["itemRowType"]
       53 JUMPIFNOTEQKS                    R10 K12 ["BodyColor"] ; [+8]
       55 GETTABLEKS                       R10 R9 K13 ["rowState"]
       57 JUMPIFNOTEQKS                    R10 K14 ["Selected"] ; [+4]
       59 GETTABLEKS                       R4 R9 K15 ["color"]
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R5 2 ; [-12]
       64 JUMPIF                           R4 ; [+2]
       65 GETTABLEKS                       R4 R0 K9 ["makeupSkinColor"]
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K4 ["createElement"]
       70 GETUPVAL                         R6 4
       71 DUPTABLE                         R7 K19 [{"bodyColor", "bodyProportions", "LayoutOrder", "dummy"}]
       72 SETTABLEKS                       R4 R7 K16 ["bodyColor"]
       74 GETTABLEKS                       R8 R0 K17 ["bodyProportions"]
       76 SETTABLEKS                       R8 R7 K17 ["bodyProportions"]
       78 GETTABLEKS                       R8 R0 K1 ["LayoutOrder"]
       80 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       82 GETTABLEKS                       R8 R0 K18 ["dummy"]
       84 SETTABLEKS                       R8 R7 K18 ["dummy"]
       86 CALL                             R5 2 -1
       87 RETURN                           R5 -1
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
       91 CALL                             R4 1 -1
       92 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Flags"]
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarPreviewerLookComposer"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Components"]
       45 GETTABLEKS                       R7 R7 K15 ["LookComposerDialog"]
       47 GETTABLEKS                       R7 R7 K16 ["DEPRECATED_MakeupLookPreview"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Components"]
       56 GETTABLEKS                       R8 R8 K15 ["LookComposerDialog"]
       58 GETTABLEKS                       R8 R8 K17 ["DEPRECATED_AvatarLookPreview"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K18 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 RETURN                           R9 1
