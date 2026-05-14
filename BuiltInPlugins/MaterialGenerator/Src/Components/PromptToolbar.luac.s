PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isDisabled"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["isGenerating"]
        5 GETTABLEKS                       R3 R0 K1 ["isGenerating"]
        7 JUMPIFEQKB                       R3 TRUE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K2 ["PromptToolbar"]
       13 NAMECALL                         R3 R3 K3 ["use"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 1
       17 NAMECALL                         R4 R4 K3 ["use"]
       19 CALL                             R4 1 1
       20 LOADK                            R5 K4 [""]
       21 JUMPIF                           R2 ; [+6]
       22 LOADK                            R8 K2 ["PromptToolbar"]
       23 LOADK                            R9 K5 ["GenerateButton"]
       24 NAMECALL                         R6 R4 K6 ["getText"]
       26 CALL                             R6 3 1
       27 MOVE                             R5 R6
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K7 ["omit"]
       31 MOVE                             R7 R0
       32 NEWTABLE                         R8 0 4
       34 LOADK                            R9 K0 ["isDisabled"]
       35 LOADK                            R10 K1 ["isGenerating"]
       36 LOADK                            R11 K8 ["onClick"]
       37 LOADK                            R12 K9 ["onGenerate"]
       38 SETLIST                          R8 R9 4 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["createElement"]
       44 GETUPVAL                         R8 4
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K11 ["join"]
       48 MOVE                             R10 R6
       49 DUPTABLE                         R11 K13 [{"OnClick"}]
       50 GETTABLEKS                       R12 R0 K8 ["onClick"]
       52 SETTABLEKS                       R12 R11 K12 ["OnClick"]
       54 CALL                             R9 2 1
       55 DUPTABLE                         R10 K14 [{"GenerateButton"}]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K10 ["createElement"]
       59 GETUPVAL                         R12 5
       60 DUPTABLE                         R13 K20 [{"AnchorPoint", "Position", "Size", "Text", "isDisabled", "isLoading", "onClick"}]
       61 GETIMPORT                        R14 K23 [Vector2.new]
       63 LOADN                            R15 1
       64 LOADK                            R16 K24 [0.5]
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K15 ["AnchorPoint"]
       68 GETIMPORT                        R14 K27 [UDim2.fromScale]
       70 LOADN                            R15 1
       71 LOADK                            R16 K24 [0.5]
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K16 ["Position"]
       75 GETTABLEKS                       R14 R3 K28 ["GenerateButtonSize"]
       77 SETTABLEKS                       R14 R13 K17 ["Size"]
       79 SETTABLEKS                       R5 R13 K18 ["Text"]
       81 SETTABLEKS                       R1 R13 K0 ["isDisabled"]
       83 SETTABLEKS                       R2 R13 K19 ["isLoading"]
       85 GETTABLEKS                       R14 R0 K9 ["onGenerate"]
       87 SETTABLEKS                       R14 R13 K8 ["onClick"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K5 ["GenerateButton"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["Pane"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Components"]
       44 GETTABLEKS                       R9 R9 K17 ["LoadingButton"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Resources"]
       53 GETTABLEKS                       R10 R10 K19 ["Theme"]
       55 CALL                             R9 1 1
       56 DUPCLOSURE                       R10 K20 [PROTO_0]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 RETURN                           R10 1
