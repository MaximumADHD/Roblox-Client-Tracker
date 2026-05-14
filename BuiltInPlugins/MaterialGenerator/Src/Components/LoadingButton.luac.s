PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LoadingButton"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["isLoading"]
        7 GETTABLEKS                       R4 R0 K3 ["isDisabled"]
        9 OR                               R3 R4 R2
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADK                            R4 K4 [""]
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R0 K5 ["Text"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K6 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K15 [{"AnchorPoint", "AutomaticSize", "LayoutOrder", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
       20 GETTABLEKS                       R8 R0 K7 ["AnchorPoint"]
       22 SETTABLEKS                       R8 R7 K7 ["AnchorPoint"]
       24 GETTABLEKS                       R8 R0 K8 ["AutomaticSize"]
       26 SETTABLEKS                       R8 R7 K8 ["AutomaticSize"]
       28 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       30 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       32 GETTABLEKS                       R8 R0 K16 ["onClick"]
       34 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       36 GETTABLEKS                       R8 R0 K11 ["Position"]
       38 SETTABLEKS                       R8 R7 K11 ["Position"]
       40 GETTABLEKS                       R8 R0 K12 ["Size"]
       42 SETTABLEKS                       R8 R7 K12 ["Size"]
       44 LOADK                            R8 K17 ["RoundPrimary"]
       45 SETTABLEKS                       R8 R7 K13 ["Style"]
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K18 ["Disabled"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R8
       53 SETTABLEKS                       R8 R7 K14 ["StyleModifier"]
       55 JUMPIFNOT                        R2 ; [+2]
       56 LOADK                            R8 K4 [""]
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R8 R0 K5 ["Text"]
       60 SETTABLEKS                       R8 R7 K5 ["Text"]
       62 DUPTABLE                         R8 K20 [{"LoadingIndicator"}]
       63 JUMPIFNOT                        R2 ; [+25]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K6 ["createElement"]
       67 GETUPVAL                         R10 4
       68 DUPTABLE                         R11 K21 [{"AnchorPoint", "Position", "Size"}]
       69 GETIMPORT                        R12 K24 [Vector2.new]
       71 LOADK                            R13 K25 [0.5]
       72 LOADK                            R14 K25 [0.5]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K7 ["AnchorPoint"]
       76 GETIMPORT                        R12 K28 [UDim2.fromScale]
       78 LOADK                            R13 K25 [0.5]
       79 LOADK                            R14 K25 [0.5]
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K11 ["Position"]
       83 GETTABLEKS                       R12 R1 K29 ["LoadingIndicatorSize"]
       85 SETTABLEKS                       R12 R11 K12 ["Size"]
       87 CALL                             R9 2 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K19 ["LoadingIndicator"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Stylizer"]
       25 GETTABLEKS                       R5 R1 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Button"]
       29 GETTABLEKS                       R7 R5 K13 ["LoadingIndicator"]
       31 GETTABLEKS                       R8 R1 K14 ["Util"]
       33 GETTABLEKS                       R8 R8 K15 ["StyleModifier"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R0 K16 ["Src"]
       39 GETTABLEKS                       R10 R10 K17 ["Resources"]
       41 GETTABLEKS                       R10 R10 K18 ["Theme"]
       43 CALL                             R9 1 1
       44 DUPCLOSURE                       R10 K19 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 RETURN                           R10 1
