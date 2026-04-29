PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["View"]
       12 DUPTABLE                         R4 K6 [{"Size", "LayoutOrder"}]
       13 GETIMPORT                        R5 K9 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 1
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K4 ["Size"]
       22 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       26 DUPTABLE                         R5 K11 [{"DividerRender"}]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K3 ["View"]
       33 DUPTABLE                         R8 K16 [{"tag", "Size", "Position", "AnchorPoint", "backgroundStyle"}]
       34 NEWTABLE                         R9 1 0
       36 GETTABLEKS                       R10 R0 K17 ["Highlighted"]
       38 SETTABLEKS                       R10 R9 K18 ["bg-system-emphasis"]
       40 SETTABLEKS                       R9 R8 K12 ["tag"]
       42 GETIMPORT                        R9 K9 [UDim2.new]
       44 LOADN                            R10 1
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 LOADN                            R13 1
       48 CALL                             R9 4 1
       49 SETTABLEKS                       R9 R8 K4 ["Size"]
       51 GETIMPORT                        R9 K20 [UDim2.fromScale]
       53 LOADK                            R10 K21 [0.5]
       54 LOADK                            R11 K21 [0.5]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K13 ["Position"]
       58 GETIMPORT                        R9 K23 [Vector2.new]
       60 LOADK                            R10 K21 [0.5]
       61 LOADK                            R11 K21 [0.5]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K14 ["AnchorPoint"]
       65 GETTABLEKS                       R10 R0 K17 ["Highlighted"]
       67 JUMPIF                           R10 ; [+7]
       68 GETTABLEKS                       R11 R1 K24 ["Color"]
       70 GETTABLEKS                       R10 R11 K25 ["Stroke"]
       72 GETTABLEKS                       R9 R10 K26 ["Default"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R9
       76 SETTABLEKS                       R9 R8 K15 ["backgroundStyle"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R5 K10 ["DividerRender"]
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R4 R2 K10 ["memo"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
