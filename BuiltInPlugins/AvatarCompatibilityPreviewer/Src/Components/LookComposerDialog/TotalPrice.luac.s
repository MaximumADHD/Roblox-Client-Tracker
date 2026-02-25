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
       11 GETTABLEKS                       R5 R2 K1 ["Color"]
       13 GETTABLEKS                       R4 R5 K2 ["Content"]
       15 GETTABLEKS                       R3 R4 K3 ["Default"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K4 ["createElement"]
       20 GETUPVAL                         R5 4
       21 DUPTABLE                         R6 K7 [{"tag", "LayoutOrder"}]
       22 LOADK                            R7 K8 ["col gap-small size-full-0 auto-y"]
       23 SETTABLEKS                       R7 R6 K5 ["tag"]
       25 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       29 DUPTABLE                         R7 K11 [{"Title", "PriceRow"}]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R8 R9 K4 ["createElement"]
       33 GETUPVAL                         R9 5
       34 DUPTABLE                         R10 K13 [{"Text", "tag", "LayoutOrder"}]
       35 LOADK                            R13 K14 ["LookComposerDialog"]
       36 LOADK                            R14 K15 ["TotalPrice"]
       37 NAMECALL                         R11 R1 K16 ["getText"]
       39 CALL                             R11 3 1
       40 SETTABLEKS                       R11 R10 K12 ["Text"]
       42 LOADK                            R11 K17 ["text-label-medium auto-xy content-default"]
       43 SETTABLEKS                       R11 R10 K5 ["tag"]
       45 LOADN                            R11 1
       46 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K9 ["Title"]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K4 ["createElement"]
       54 GETUPVAL                         R9 4
       55 DUPTABLE                         R10 K7 [{"tag", "LayoutOrder"}]
       56 LOADK                            R11 K18 ["row gap-small align-y-center auto-xy"]
       57 SETTABLEKS                       R11 R10 K5 ["tag"]
       59 LOADN                            R11 2
       60 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       62 DUPTABLE                         R11 K21 [{"RobuxIcon", "PriceText"}]
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R12 R13 K4 ["createElement"]
       66 GETUPVAL                         R13 6
       67 DUPTABLE                         R14 K25 [{"Image", "Size", "imageStyle", "LayoutOrder"}]
       68 LOADK                            R15 K26 ["rbxasset://textures/ui/common/robux_small.png"]
       69 SETTABLEKS                       R15 R14 K22 ["Image"]
       71 GETIMPORT                        R15 K29 [UDim2.fromOffset]
       73 LOADN                            R16 16
       74 LOADN                            R17 16
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K23 ["Size"]
       78 SETTABLEKS                       R3 R14 K24 ["imageStyle"]
       80 LOADN                            R15 1
       81 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K19 ["RobuxIcon"]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R12 R13 K4 ["createElement"]
       89 GETUPVAL                         R13 5
       90 DUPTABLE                         R14 K13 [{"Text", "tag", "LayoutOrder"}]
       91 GETTABLEKS                       R16 R0 K30 ["price"]
       93 FASTCALL1                        TOSTRING R16 ; [+2]
       94 GETIMPORT                        R15 K32 [tostring]
       96 CALL                             R15 1 1
       97 SETTABLEKS                       R15 R14 K12 ["Text"]
       99 LOADK                            R15 K33 ["text-body-medium auto-xy content-default"]
      100 SETTABLEKS                       R15 R14 K5 ["tag"]
      102 LOADN                            R15 2
      103 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K20 ["PriceText"]
      108 CALL                             R8 3 1
      109 SETTABLEKS                       R8 R7 K10 ["PriceRow"]
      111 CALL                             R4 3 -1
      112 RETURN                           R4 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["Image"]
       27 GETTABLEKS                       R7 R2 K12 ["Hooks"]
       29 GETTABLEKS                       R6 R7 K13 ["useTokens"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R9 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R9 K14 ["Framework"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R9 R7 K15 ["ContextServices"]
       40 GETTABLEKS                       R8 R9 K16 ["Localization"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Flags"]
       48 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
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
