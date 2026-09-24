PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["PropertyRow"]
        4 GETTABLEKS                       R1 R1 K1 ["Label"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R4 R0 K4 ["alignment"]
       15 JUMPIFNOTEQKS                    R4 K5 ["Left"] ; [+3]
       17 LOADN                            R3 0
       18 JUMP                             ; [+10]
       19 GETTABLEKS                       R4 R0 K4 ["alignment"]
       21 JUMPIFNOTEQKS                    R4 K6 ["Right"] ; [+3]
       23 LOADN                            R3 1
       24 JUMP                             ; [+4]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R4 R0 K4 ["alignment"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 4
       30 GETUPVAL                         R5 5
       31 DUPTABLE                         R6 K12 [{"AnchorPoint", "Position", "Size", "backgroundStyle", "ZIndex"}]
       32 GETIMPORT                        R7 K15 [Vector2.new]
       34 MOVE                             R8 R3
       35 LOADK                            R9 K16 [0.5]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["AnchorPoint"]
       39 GETIMPORT                        R7 K19 [UDim2.fromScale]
       41 MOVE                             R8 R3
       42 LOADK                            R9 K16 [0.5]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K8 ["Position"]
       46 GETIMPORT                        R7 K20 [UDim2.new]
       48 LOADN                            R8 0
       49 GETTABLEKS                       R9 R1 K21 ["Fade"]
       51 GETTABLEKS                       R9 R9 K22 ["Width"]
       53 LOADN                            R10 1
       54 LOADN                            R11 0
       55 CALL                             R7 4 1
       56 SETTABLEKS                       R7 R6 K9 ["Size"]
       58 DUPTABLE                         R7 K26 [{["Color3"], ["Transparency"] = 0}]
       59 GETTABLEKS                       R9 R1 K21 ["Fade"]
       61 GETTABLEKS                       R9 R9 K27 ["Color"]
       63 GETTABLEKS                       R10 R2 K28 ["theme"]
       65 GETTABLE                         R8 R9 R10
       66 SETTABLEKS                       R8 R7 K23 ["Color3"]
       68 SETTABLEKS                       R7 R6 K10 ["backgroundStyle"]
       70 GETTABLEKS                       R7 R0 K11 ["ZIndex"]
       72 SETTABLEKS                       R7 R6 K11 ["ZIndex"]
       74 DUPTABLE                         R7 K30 [{"UIGradient"}]
       75 GETUPVAL                         R8 4
       76 LOADK                            R9 K29 ["UIGradient"]
       77 DUPTABLE                         R10 K31 [{"Transparency"}]
       78 GETIMPORT                        R11 K33 [NumberSequence.new]
       80 MOVE                             R12 R3
       81 SUBRK                            R13 K34 [1] R3
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K24 ["Transparency"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K29 ["UIGradient"]
       88 CALL                             R4 3 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K11 ["ThemeContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["exhaustiveMatch"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R7 R7 K14 ["useVisualValues"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R2 K15 ["View"]
       46 GETTABLEKS                       R8 R3 K16 ["createElement"]
       48 DUPCLOSURE                       R9 K17 [PROTO_0]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 RETURN                           R9 1
