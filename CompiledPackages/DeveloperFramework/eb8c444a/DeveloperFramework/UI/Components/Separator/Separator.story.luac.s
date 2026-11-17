MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Separator"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["createElement"]
       45 MOVE                             R6 R2
       46 DUPTABLE                         R7 K18 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 10}]
       47 GETIMPORT                        R8 K21 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R8 R7 K13 ["AutomaticSize"]
       51 GETIMPORT                        R8 K23 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R8 R7 K14 ["HorizontalAlignment"]
       55 GETIMPORT                        R8 K26 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R8 R7 K15 ["Layout"]
       59 NEWTABLE                         R8 0 3
       61 GETTABLEKS                       R9 R1 K12 ["createElement"]
       63 MOVE                             R10 R4
       64 DUPTABLE                         R11 K29 [{["AutomaticSize"], ["Text"] = "Line 1"}]
       65 GETIMPORT                        R12 K21 [Enum.AutomaticSize.XY]
       67 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       69 CALL                             R9 2 1
       70 GETTABLEKS                       R10 R1 K12 ["createElement"]
       72 MOVE                             R11 R3
       73 NEWTABLE                         R12 0 0
       75 CALL                             R10 2 1
       76 GETTABLEKS                       R11 R1 K12 ["createElement"]
       78 MOVE                             R12 R4
       79 DUPTABLE                         R13 K31 [{["AutomaticSize"], ["Text"] = "Line 2"}]
       80 GETIMPORT                        R14 K21 [Enum.AutomaticSize.XY]
       82 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
       84 CALL                             R11 2 -1
       85 SETLIST                          R8 R9 -1 [1]
       87 CALL                             R5 3 -1
       88 RETURN                           R5 -1
