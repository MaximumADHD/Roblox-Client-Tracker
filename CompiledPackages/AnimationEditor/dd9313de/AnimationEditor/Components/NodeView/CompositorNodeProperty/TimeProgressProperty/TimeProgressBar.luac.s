PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K0 ["gradient"]
        8 GETTABLEKS                       R4 R1 K1 ["value"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K2 ["createElement"]
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R5 R6 K3 ["View"]
       17 GETUPVAL                         R6 5
       18 MOVE                             R7 R1
       19 DUPTABLE                         R8 K6 [{"Size", "tag"}]
       20 GETIMPORT                        R9 K9 [UDim2.new]
       22 GETTABLEKS                       R10 R1 K10 ["width"]
       24 GETIMPORT                        R11 K12 [UDim.new]
       26 LOADN                            R12 0
       27 GETTABLEKS                       R14 R2 K4 ["Size"]
       29 GETTABLEKS                       R13 R14 K13 ["Size_100"]
       31 CALL                             R11 2 -1
       32 CALL                             R9 -1 1
       33 SETTABLEKS                       R9 R8 K4 ["Size"]
       35 LOADK                            R9 K14 ["radius-small bg-shift-400"]
       36 SETTABLEKS                       R9 R8 K5 ["tag"]
       38 CALL                             R6 2 1
       39 DUPTABLE                         R7 K16 [{"Fill"}]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R8 R9 K2 ["createElement"]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R9 R10 K3 ["View"]
       46 DUPTABLE                         R10 K19 [{"backgroundStyle", "tag", "testId"}]
       47 GETTABLEKS                       R13 R2 K20 ["Color"]
       49 GETTABLEKS                       R12 R13 K21 ["Content"]
       51 GETTABLEKS                       R11 R12 K22 ["Emphasis"]
       53 SETTABLEKS                       R11 R10 K17 ["backgroundStyle"]
       55 LOADK                            R11 K23 ["size-full radius-small"]
       56 SETTABLEKS                       R11 R10 K5 ["tag"]
       58 LOADK                            R12 K24 ["%*--fill"]
       59 GETTABLEKS                       R14 R1 K18 ["testId"]
       61 NAMECALL                         R12 R12 K25 ["format"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 SETTABLEKS                       R11 R10 K18 ["testId"]
       67 DUPTABLE                         R11 K27 [{"Gradient"}]
       68 GETUPVAL                         R13 3
       69 GETTABLEKS                       R12 R13 K2 ["createElement"]
       71 LOADK                            R13 K28 ["UIGradient"]
       72 DUPTABLE                         R14 K30 [{"Color", "Transparency"}]
       73 GETIMPORT                        R15 K32 [ColorSequence.new]
       75 GETTABLEKS                       R19 R2 K20 ["Color"]
       77 GETTABLEKS                       R18 R19 K21 ["Content"]
       79 GETTABLEKS                       R17 R18 K22 ["Emphasis"]
       81 GETTABLEKS                       R16 R17 K33 ["Color3"]
       83 CALL                             R15 1 1
       84 SETTABLEKS                       R15 R14 K20 ["Color"]
       86 SETTABLEKS                       R3 R14 K29 ["Transparency"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K26 ["Gradient"]
       91 CALL                             R8 3 1
       92 SETTABLEKS                       R8 R7 K15 ["Fill"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       21 GETTABLEKS                       R4 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R4 K10 ["useTokens"]
       25 GETTABLEKS                       R5 R1 K11 ["Utility"]
       27 GETTABLEKS                       R4 R5 K12 ["withDefaults"]
       29 GETTABLEKS                       R6 R1 K11 ["Utility"]
       31 GETTABLEKS                       R5 R6 K13 ["withCommonProps"]
       33 DUPTABLE                         R6 K16 [{"size", "width"}]
       34 GETTABLEKS                       R9 R1 K17 ["Enums"]
       36 GETTABLEKS                       R8 R9 K18 ["ProgressSize"]
       38 GETTABLEKS                       R7 R8 K19 ["Medium"]
       40 SETTABLEKS                       R7 R6 K14 ["size"]
       42 GETIMPORT                        R7 K22 [UDim.new]
       44 LOADN                            R8 1
       45 LOADN                            R9 0
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K15 ["width"]
       49 DUPCLOSURE                       R7 K23 [PROTO_0]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
