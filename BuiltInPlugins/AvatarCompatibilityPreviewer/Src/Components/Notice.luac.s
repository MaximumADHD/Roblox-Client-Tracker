PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Notice"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K8 [{"AnchorPoint", "Position", "AutomaticSize", "BackgroundColor", "Padding"}]
       10 GETIMPORT                        R5 K11 [Vector2.new]
       12 LOADK                            R6 K12 [0.5]
       13 LOADK                            R7 K12 [0.5]
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["AnchorPoint"]
       17 GETIMPORT                        R5 K15 [UDim2.fromScale]
       19 LOADK                            R6 K12 [0.5]
       20 LOADK                            R7 K12 [0.5]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K4 ["Position"]
       24 GETIMPORT                        R5 K18 [Enum.AutomaticSize.XY]
       26 SETTABLEKS                       R5 R4 K5 ["AutomaticSize"]
       28 GETTABLEKS                       R5 R1 K6 ["BackgroundColor"]
       30 SETTABLEKS                       R5 R4 K6 ["BackgroundColor"]
       32 GETTABLEKS                       R5 R1 K7 ["Padding"]
       34 SETTABLEKS                       R5 R4 K7 ["Padding"]
       36 DUPTABLE                         R5 K21 [{"UICorner", "NoticeText"}]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K2 ["createElement"]
       40 LOADK                            R7 K19 ["UICorner"]
       41 DUPTABLE                         R8 K23 [{"CornerRadius"}]
       42 GETTABLEKS                       R9 R1 K22 ["CornerRadius"]
       44 SETTABLEKS                       R9 R8 K22 ["CornerRadius"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K19 ["UICorner"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R6 R7 K2 ["createElement"]
       52 GETUPVAL                         R7 3
       53 DUPTABLE                         R8 K28 [{"AutomaticSize", "Text", "TextColor", "TextSize", "TextWrapped"}]
       54 GETIMPORT                        R9 K18 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R9 R8 K5 ["AutomaticSize"]
       58 GETTABLEKS                       R9 R0 K24 ["Text"]
       60 SETTABLEKS                       R9 R8 K24 ["Text"]
       62 GETTABLEKS                       R9 R1 K25 ["TextColor"]
       64 SETTABLEKS                       R9 R8 K25 ["TextColor"]
       66 GETTABLEKS                       R9 R1 K26 ["TextSize"]
       68 SETTABLEKS                       R9 R8 K26 ["TextSize"]
       70 LOADB                            R9 1
       71 SETTABLEKS                       R9 R8 K27 ["TextWrapped"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K20 ["NoticeText"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["TextLabel"]
       34 GETTABLEKS                       R6 R4 K14 ["Pane"]
       36 GETTABLEKS                       R8 R1 K15 ["ContextServices"]
       38 GETTABLEKS                       R7 R8 K16 ["Stylizer"]
       40 DUPCLOSURE                       R8 K17 [PROTO_0]
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 RETURN                           R8 1
