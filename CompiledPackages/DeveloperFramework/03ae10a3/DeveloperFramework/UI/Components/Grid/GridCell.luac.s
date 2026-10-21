PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Cell"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{"HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Spacing"}]
       11 GETIMPORT                        R7 K13 [Enum.HorizontalAlignment.Left]
       13 SETTABLEKS                       R7 R6 K4 ["HorizontalAlignment"]
       15 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R7 R6 K5 ["Layout"]
       19 GETTABLEKS                       R7 R3 K17 ["GridCell"]
       21 GETTABLEKS                       R7 R7 K6 ["Padding"]
       23 SETTABLEKS                       R7 R6 K6 ["Padding"]
       25 GETTABLEKS                       R7 R1 K7 ["Position"]
       27 SETTABLEKS                       R7 R6 K7 ["Position"]
       29 GETTABLEKS                       R7 R1 K8 ["Size"]
       31 SETTABLEKS                       R7 R6 K8 ["Size"]
       33 GETTABLEKS                       R7 R3 K17 ["GridCell"]
       35 GETTABLEKS                       R7 R7 K9 ["Spacing"]
       37 SETTABLEKS                       R7 R6 K9 ["Spacing"]
       39 DUPTABLE                         R7 K20 [{"Icon", "Text"}]
       40 GETTABLEKS                       R9 R2 K21 ["icon"]
       42 JUMPIFNOT                        R9 ; [+8]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K3 ["createElement"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R10 R2 K21 ["icon"]
       49 CALL                             R8 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 SETTABLEKS                       R8 R7 K18 ["Icon"]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K3 ["createElement"]
       57 GETUPVAL                         R9 3
       58 DUPTABLE                         R10 K25 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Text"]}]
       59 GETIMPORT                        R11 K27 [Enum.AutomaticSize.XY]
       61 SETTABLEKS                       R11 R10 K22 ["AutomaticSize"]
       63 GETTABLEKS                       R11 R2 K28 ["text"]
       65 SETTABLEKS                       R11 R10 K19 ["Text"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K19 ["Text"]
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1

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
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R2 K8 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K9 ["Image"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R2 K10 ["Pane"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R1 K12 ["PureComponent"]
       37 LOADK                            R8 K13 ["GridCell"]
       38 NAMECALL                         R6 R6 K14 ["extend"]
       40 CALL                             R6 2 1
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R7 R6 K16 ["render"]
       48 RETURN                           R6 1
