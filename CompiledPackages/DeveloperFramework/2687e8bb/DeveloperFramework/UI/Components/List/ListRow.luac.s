PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{"HorizontalAlignment", "Layout", "Position", "Size", "Spacing", "Padding"}]
       11 GETIMPORT                        R7 K13 [Enum.HorizontalAlignment.Left]
       13 SETTABLEKS                       R7 R6 K4 ["HorizontalAlignment"]
       15 GETIMPORT                        R7 K16 [Enum.FillDirection.Horizontal]
       17 SETTABLEKS                       R7 R6 K5 ["Layout"]
       19 GETTABLEKS                       R7 R1 K6 ["Position"]
       21 SETTABLEKS                       R7 R6 K6 ["Position"]
       23 GETTABLEKS                       R7 R1 K7 ["Size"]
       25 SETTABLEKS                       R7 R6 K7 ["Size"]
       27 GETTABLEKS                       R8 R3 K17 ["ListRow"]
       29 GETTABLEKS                       R7 R8 K8 ["Spacing"]
       31 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       33 GETTABLEKS                       R8 R3 K17 ["ListRow"]
       35 GETTABLEKS                       R7 R8 K9 ["Padding"]
       37 SETTABLEKS                       R7 R6 K9 ["Padding"]
       39 DUPTABLE                         R7 K20 [{"Icon", "Text"}]
       40 GETTABLEKS                       R9 R2 K21 ["icon"]
       42 JUMPIFNOT                        R9 ; [+8]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K3 ["createElement"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R10 R2 K21 ["icon"]
       49 CALL                             R8 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 SETTABLEKS                       R8 R7 K18 ["Icon"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R8 R9 K3 ["createElement"]
       57 GETUPVAL                         R9 3
       58 DUPTABLE                         R10 K24 [{"AutomaticSize", "LayoutOrder", "Text"}]
       59 GETIMPORT                        R11 K26 [Enum.AutomaticSize.XY]
       61 SETTABLEKS                       R11 R10 K22 ["AutomaticSize"]
       63 LOADN                            R11 2
       64 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       66 GETTABLEKS                       R11 R2 K27 ["text"]
       68 SETTABLEKS                       R11 R10 K19 ["Text"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K19 ["Text"]
       73 CALL                             R4 3 -1
       74 RETURN                           R4 -1

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
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["Image"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R2 K8 ["Components"]
       29 GETTABLEKS                       R5 R6 K10 ["Pane"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R2 K8 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["TextLabel"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R1 K12 ["PureComponent"]
       41 LOADK                            R8 K13 ["ListRow"]
       42 NAMECALL                         R6 R6 K14 ["extend"]
       44 CALL                             R6 2 1
       45 DUPCLOSURE                       R7 K15 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R7 R6 K16 ["render"]
       52 RETURN                           R6 1
