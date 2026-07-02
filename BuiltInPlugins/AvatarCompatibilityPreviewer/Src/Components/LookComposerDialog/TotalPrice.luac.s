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
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R3 R2 K1 ["Color"]
       13 GETTABLEKS                       R3 R3 K2 ["Content"]
       15 GETTABLEKS                       R3 R3 K3 ["Emphasis"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["createElement"]
       20 GETUPVAL                         R5 4
       21 DUPTABLE                         R6 K8 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       22 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       24 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       26 DUPTABLE                         R7 K11 [{"Title", "PriceRow"}]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K4 ["createElement"]
       30 GETUPVAL                         R9 5
       31 DUPTABLE                         R10 K15 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"] = 1}]
       32 LOADK                            R13 K16 ["LookComposerDialog"]
       33 LOADK                            R14 K17 ["TotalPrice"]
       34 NAMECALL                         R11 R1 K18 ["getText"]
       36 CALL                             R11 3 1
       37 SETTABLEKS                       R11 R10 K12 ["Text"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K9 ["Title"]
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K4 ["createElement"]
       45 GETUPVAL                         R9 4
       46 DUPTABLE                         R10 K21 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
       47 DUPTABLE                         R11 K24 [{"RobuxIcon", "PriceText"}]
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K4 ["createElement"]
       51 GETUPVAL                         R13 6
       52 DUPTABLE                         R14 K29 [{["Image"] = "rbxasset://textures/ui/common/robux_small.png", ["Size"], ["imageStyle"], ["LayoutOrder"] = 1}]
       53 GETIMPORT                        R15 K32 [UDim2.fromOffset]
       55 LOADN                            R16 16
       56 LOADN                            R17 16
       57 CALL                             R15 2 1
       58 SETTABLEKS                       R15 R14 K27 ["Size"]
       60 SETTABLEKS                       R3 R14 K28 ["imageStyle"]
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K22 ["RobuxIcon"]
       65 GETUPVAL                         R12 3
       66 GETTABLEKS                       R12 R12 K4 ["createElement"]
       68 GETUPVAL                         R13 5
       69 DUPTABLE                         R14 K34 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 2}]
       70 GETTABLEKS                       R16 R0 K35 ["price"]
       72 FASTCALL1                        TOSTRING R16 ; [+2]
       73 GETIMPORT                        R15 K37 [tostring]
       75 CALL                             R15 1 1
       76 SETTABLEKS                       R15 R14 K12 ["Text"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K23 ["PriceText"]
       81 CALL                             R8 3 1
       82 SETTABLEKS                       R8 R7 K10 ["PriceRow"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["Image"]
       27 GETTABLEKS                       R6 R2 K12 ["Hooks"]
       29 GETTABLEKS                       R6 R6 K13 ["useTokens"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R8 K14 ["Framework"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       40 GETTABLEKS                       R8 R8 K16 ["Localization"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Flags"]
       48 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerLookComposer"]
       50 CALL                             R9 1 1
       51 DUPCLOSURE                       R10 K20 [PROTO_0]
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 RETURN                           R10 1
