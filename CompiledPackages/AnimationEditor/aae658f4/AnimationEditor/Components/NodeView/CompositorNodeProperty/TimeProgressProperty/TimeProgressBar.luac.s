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
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K3 ["View"]
       17 GETUPVAL                         R6 5
       18 MOVE                             R7 R1
       19 DUPTABLE                         R8 K7 [{["Size"], ["tag"] = "radius-small bg-shift-400"}]
       20 GETIMPORT                        R9 K10 [UDim2.new]
       22 GETTABLEKS                       R10 R1 K11 ["width"]
       24 GETIMPORT                        R11 K13 [UDim.new]
       26 LOADN                            R12 0
       27 GETTABLEKS                       R13 R2 K4 ["Size"]
       29 GETTABLEKS                       R13 R13 K14 ["Size_100"]
       31 CALL                             R11 2 -1
       32 CALL                             R9 -1 1
       33 SETTABLEKS                       R9 R8 K4 ["Size"]
       35 CALL                             R6 2 1
       36 DUPTABLE                         R7 K16 [{"Fill"}]
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K2 ["createElement"]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K3 ["View"]
       43 DUPTABLE                         R10 K20 [{["backgroundStyle"], ["tag"] = "size-full radius-small", ["testId"]}]
       44 GETTABLEKS                       R11 R2 K21 ["Color"]
       46 GETTABLEKS                       R11 R11 K22 ["Content"]
       48 GETTABLEKS                       R11 R11 K23 ["Emphasis"]
       50 SETTABLEKS                       R11 R10 K17 ["backgroundStyle"]
       52 LOADK                            R12 K24 ["%*--fill"]
       53 GETTABLEKS                       R14 R1 K19 ["testId"]
       55 NAMECALL                         R12 R12 K25 ["format"]
       57 CALL                             R12 2 1
       58 MOVE                             R11 R12
       59 SETTABLEKS                       R11 R10 K19 ["testId"]
       61 DUPTABLE                         R11 K27 [{"Gradient"}]
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K2 ["createElement"]
       65 LOADK                            R13 K28 ["UIGradient"]
       66 DUPTABLE                         R14 K30 [{"Color", "Transparency"}]
       67 GETIMPORT                        R15 K32 [ColorSequence.new]
       69 GETTABLEKS                       R16 R2 K21 ["Color"]
       71 GETTABLEKS                       R16 R16 K22 ["Content"]
       73 GETTABLEKS                       R16 R16 K23 ["Emphasis"]
       75 GETTABLEKS                       R16 R16 K33 ["Color3"]
       77 CALL                             R15 1 1
       78 SETTABLEKS                       R15 R14 K21 ["Color"]
       80 SETTABLEKS                       R3 R14 K29 ["Transparency"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K26 ["Gradient"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K15 ["Fill"]
       88 CALL                             R4 3 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETTABLEKS                       R4 R1 K11 ["Utility"]
       27 GETTABLEKS                       R4 R4 K12 ["withDefaults"]
       29 GETTABLEKS                       R5 R1 K11 ["Utility"]
       31 GETTABLEKS                       R5 R5 K13 ["withCommonProps"]
       33 DUPTABLE                         R6 K16 [{"size", "width"}]
       34 GETTABLEKS                       R7 R1 K17 ["Enums"]
       36 GETTABLEKS                       R7 R7 K18 ["ProgressSize"]
       38 GETTABLEKS                       R7 R7 K19 ["Medium"]
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
