PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["new"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K2 ["createElement"]
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K4 [{"tag"}]
       18 LOADK                            R6 K5 ["col align-x-center align-y-center size-full gap-medium padding-large"]
       19 SETTABLEKS                       R6 R5 K3 ["tag"]
       21 DUPTABLE                         R6 K9 [{"Thumbnail", "Title", "Subtitle"}]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K2 ["createElement"]
       25 GETUPVAL                         R8 4
       26 DUPTABLE                         R9 K12 [{"LayoutOrder", "AutomaticSize"}]
       27 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       29 CALL                             R10 1 1
       30 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       32 GETIMPORT                        R10 K16 [Enum.AutomaticSize.XY]
       34 SETTABLEKS                       R10 R9 K11 ["AutomaticSize"]
       36 DUPTABLE                         R10 K18 [{"ThumbnailContent"}]
       37 GETTABLEKS                       R11 R0 K19 ["lookPreview"]
       39 SETTABLEKS                       R11 R10 K17 ["ThumbnailContent"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K6 ["Thumbnail"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K2 ["createElement"]
       47 GETUPVAL                         R8 5
       48 DUPTABLE                         R9 K21 [{"Text", "tag", "LayoutOrder"}]
       49 LOADK                            R12 K22 ["LookComposerDialog"]
       50 LOADK                            R13 K23 ["CreateLookSuccessTitle"]
       51 NAMECALL                         R10 R1 K24 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K20 ["Text"]
       56 LOADK                            R10 K25 ["text-heading-small auto-xy content-default text-center"]
       57 SETTABLEKS                       R10 R9 K3 ["tag"]
       59 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       61 CALL                             R10 1 1
       62 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K7 ["Title"]
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R7 R8 K2 ["createElement"]
       70 GETUPVAL                         R8 5
       71 DUPTABLE                         R9 K21 [{"Text", "tag", "LayoutOrder"}]
       72 LOADK                            R12 K22 ["LookComposerDialog"]
       73 LOADK                            R13 K26 ["CreateLookSuccessSubtitle"]
       74 NAMECALL                         R10 R1 K24 ["getText"]
       76 CALL                             R10 3 1
       77 SETTABLEKS                       R10 R9 K20 ["Text"]
       79 LOADK                            R10 K27 ["text-body-medium auto-xy content-muted text-center"]
       80 SETTABLEKS                       R10 R9 K3 ["tag"]
       82 NAMECALL                         R10 R2 K13 ["getNextOrder"]
       84 CALL                             R10 1 1
       85 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K8 ["Subtitle"]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R7 K13 ["Localization"]
       36 GETTABLEKS                       R8 R5 K14 ["Util"]
       38 GETTABLEKS                       R7 R8 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R10 R11 K17 ["Flags"]
       46 GETTABLEKS                       R9 R10 K18 ["getFFlagAvatarPreviewerLookComposer"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K19 [PROTO_0]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 RETURN                           R9 1
