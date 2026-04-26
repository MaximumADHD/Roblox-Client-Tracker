MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Separator"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["TextLabel"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["createElement"]
       45 MOVE                             R6 R2
       46 DUPTABLE                         R7 K17 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing"}]
       47 GETIMPORT                        R8 K20 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R8 R7 K13 ["AutomaticSize"]
       51 GETIMPORT                        R8 K22 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R8 R7 K14 ["HorizontalAlignment"]
       55 GETIMPORT                        R8 K25 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R8 R7 K15 ["Layout"]
       59 LOADN                            R8 10
       60 SETTABLEKS                       R8 R7 K16 ["Spacing"]
       62 NEWTABLE                         R8 0 3
       64 GETTABLEKS                       R9 R1 K12 ["createElement"]
       66 MOVE                             R10 R4
       67 DUPTABLE                         R11 K27 [{"AutomaticSize", "Text"}]
       68 GETIMPORT                        R12 K20 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       72 LOADK                            R12 K28 ["Line 1"]
       73 SETTABLEKS                       R12 R11 K26 ["Text"]
       75 CALL                             R9 2 1
       76 GETTABLEKS                       R10 R1 K12 ["createElement"]
       78 MOVE                             R11 R3
       79 NEWTABLE                         R12 0 0
       81 CALL                             R10 2 1
       82 GETTABLEKS                       R11 R1 K12 ["createElement"]
       84 MOVE                             R12 R4
       85 DUPTABLE                         R13 K27 [{"AutomaticSize", "Text"}]
       86 GETIMPORT                        R14 K20 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
       90 LOADK                            R14 K29 ["Line 2"]
       91 SETTABLEKS                       R14 R13 K26 ["Text"]
       93 CALL                             R11 2 -1
       94 SETLIST                          R8 R9 -1 [1]
       96 CALL                             R5 3 -1
       97 RETURN                           R5 -1
