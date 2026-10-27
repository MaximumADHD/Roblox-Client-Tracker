MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K16 [{"KnobColor", "DisabledKnobColor", "KnobSize", "BackgroundStyle", "ForegroundStyle"}]
       24 GETTABLEKS                       R4 R1 K17 ["SliderKnobColor"]
       26 SETTABLEKS                       R4 R3 K11 ["KnobColor"]
       28 GETTABLEKS                       R4 R1 K18 ["SliderBackground"]
       30 SETTABLEKS                       R4 R3 K12 ["DisabledKnobColor"]
       32 GETIMPORT                        R4 K21 [Vector2.new]
       34 LOADN                            R5 18
       35 LOADN                            R6 18
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K13 ["KnobSize"]
       39 DUPTABLE                         R4 K25 [{"Background", "CornerRadius", "Size"}]
       40 GETTABLEKS                       R5 R1 K18 ["SliderBackground"]
       42 SETTABLEKS                       R5 R4 K22 ["Background"]
       44 GETIMPORT                        R5 K27 [UDim.new]
       46 LOADN                            R6 0
       47 LOADN                            R7 8
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K23 ["CornerRadius"]
       51 GETIMPORT                        R5 K29 [UDim2.new]
       53 LOADN                            R6 1
       54 LOADN                            R7 0
       55 LOADN                            R8 0
       56 LOADN                            R9 6
       57 CALL                             R5 4 1
       58 SETTABLEKS                       R5 R4 K24 ["Size"]
       60 SETTABLEKS                       R4 R3 K14 ["BackgroundStyle"]
       62 NEWTABLE                         R4 4 0
       64 GETTABLEKS                       R5 R1 K17 ["SliderKnobColor"]
       66 SETTABLEKS                       R5 R4 K22 ["Background"]
       68 GETTABLEKS                       R5 R1 K17 ["SliderKnobColor"]
       70 SETTABLEKS                       R5 R4 K30 ["Color"]
       72 GETIMPORT                        R5 K27 [UDim.new]
       74 LOADN                            R6 0
       75 LOADN                            R7 8
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K23 ["CornerRadius"]
       79 GETTABLEKS                       R5 R2 K31 ["Disabled"]
       81 DUPTABLE                         R6 K32 [{"Background", "Color"}]
       82 GETTABLEKS                       R7 R1 K18 ["SliderBackground"]
       84 SETTABLEKS                       R7 R6 K22 ["Background"]
       86 GETTABLEKS                       R7 R1 K18 ["SliderBackground"]
       88 SETTABLEKS                       R7 R6 K30 ["Color"]
       90 SETTABLE                         R6 R4 R5
       91 SETTABLEKS                       R4 R3 K15 ["ForegroundStyle"]
       93 RETURN                           R3 1
