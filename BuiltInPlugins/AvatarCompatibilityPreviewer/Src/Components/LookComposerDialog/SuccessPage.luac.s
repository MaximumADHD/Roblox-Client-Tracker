PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["new"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K2 ["createElement"]
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K5 [{["tag"] = "col align-x-center align-y-center gap-medium size-full padding-large"}]
       18 DUPTABLE                         R6 K9 [{"Thumbnail", "Title", "Subtitle"}]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K2 ["createElement"]
       22 GETUPVAL                         R8 4
       23 DUPTABLE                         R9 K12 [{"LayoutOrder", "AutomaticSize"}]
       24 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       26 CALL                             R10 1 1
       27 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       29 GETIMPORT                        R10 K16 [Enum.AutomaticSize.XY]
       31 SETTABLEKS                       R10 R9 K11 ["AutomaticSize"]
       33 DUPTABLE                         R10 K18 [{"ThumbnailContent"}]
       34 GETTABLEKS                       R11 R0 K19 ["lookPreview"]
       36 SETTABLEKS                       R11 R10 K17 ["ThumbnailContent"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K6 ["Thumbnail"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K2 ["createElement"]
       44 GETUPVAL                         R8 5
       45 DUPTABLE                         R9 K22 [{["Text"], ["tag"] = "text-center auto-xy text-heading-small content-default", ["LayoutOrder"]}]
       46 LOADK                            R12 K23 ["LookComposerDialog"]
       47 LOADK                            R13 K24 ["CreateLookSuccessTitle"]
       48 NAMECALL                         R10 R1 K25 ["getText"]
       50 CALL                             R10 3 1
       51 SETTABLEKS                       R10 R9 K20 ["Text"]
       53 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       55 CALL                             R10 1 1
       56 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K7 ["Title"]
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K2 ["createElement"]
       64 GETUPVAL                         R8 5
       65 DUPTABLE                         R9 K27 [{["Text"], ["tag"] = "text-center auto-xy text-body-medium content-muted", ["LayoutOrder"]}]
       66 LOADK                            R12 K23 ["LookComposerDialog"]
       67 LOADK                            R13 K28 ["CreateLookSuccessSubtitle"]
       68 NAMECALL                         R10 R1 K25 ["getText"]
       70 CALL                             R10 3 1
       71 SETTABLEKS                       R10 R9 K20 ["Text"]
       73 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K8 ["Subtitle"]
       81 CALL                             R3 3 -1
       82 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R6 K13 ["Localization"]
       36 GETTABLEKS                       R7 R5 K14 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Flags"]
       46 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarPreviewerLookComposer"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K19 [PROTO_0]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 RETURN                           R9 1
