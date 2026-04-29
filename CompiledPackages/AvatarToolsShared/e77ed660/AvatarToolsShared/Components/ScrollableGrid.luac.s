PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["CellSize"]
        8 GETTABLEKS                       R5 R1 K4 ["CellPadding"]
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R8 R9 K5 ["Children"]
       14 GETTABLE                         R7 R1 R8
       15 CALL                             R6 1 1
       16 JUMPIFNOT                        R6 ; [+28]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K6 ["createElement"]
       20 LOADK                            R8 K7 ["UIGridLayout"]
       21 DUPTABLE                         R9 K12 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "CellPadding", "CellSize"}]
       22 GETIMPORT                        R10 K15 [Enum.FillDirection.Horizontal]
       24 SETTABLEKS                       R10 R9 K8 ["FillDirection"]
       26 GETIMPORT                        R10 K17 [Enum.HorizontalAlignment.Left]
       28 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       30 GETIMPORT                        R10 K19 [Enum.VerticalAlignment.Top]
       32 SETTABLEKS                       R10 R9 K10 ["VerticalAlignment"]
       34 GETIMPORT                        R10 K20 [Enum.SortOrder.LayoutOrder]
       36 SETTABLEKS                       R10 R9 K11 ["SortOrder"]
       38 SETTABLEKS                       R5 R9 K4 ["CellPadding"]
       40 SETTABLEKS                       R4 R9 K3 ["CellSize"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K7 ["UIGridLayout"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K6 ["createElement"]
       48 GETUPVAL                         R8 2
       49 DUPTABLE                         R9 K21 [{"Size", "LayoutOrder"}]
       50 SETTABLEKS                       R3 R9 K2 ["Size"]
       52 SETTABLEKS                       R2 R9 K1 ["LayoutOrder"]
       54 DUPTABLE                         R10 K23 [{"ScrollingFrame"}]
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R11 R12 K6 ["createElement"]
       58 GETUPVAL                         R12 3
       59 DUPTABLE                         R13 K26 [{"LayoutOrder", "Size", "CanvasSize", "AutomaticCanvasSize"}]
       60 SETTABLEKS                       R2 R13 K1 ["LayoutOrder"]
       62 GETIMPORT                        R14 K29 [UDim2.new]
       64 LOADN                            R15 1
       65 LOADN                            R16 0
       66 LOADN                            R17 1
       67 LOADN                            R18 0
       68 CALL                             R14 4 1
       69 SETTABLEKS                       R14 R13 K2 ["Size"]
       71 GETIMPORT                        R14 K31 [UDim2.fromScale]
       73 LOADN                            R15 0
       74 LOADN                            R16 1
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K24 ["CanvasSize"]
       78 GETIMPORT                        R14 K34 [Enum.AutomaticSize.XY]
       80 SETTABLEKS                       R14 R13 K25 ["AutomaticCanvasSize"]
       82 MOVE                             R14 R6
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K22 ["ScrollingFrame"]
       86 CALL                             R7 3 -1
       87 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["UI"]
       21 GETTABLEKS                       R4 R3 K8 ["Pane"]
       23 GETTABLEKS                       R5 R3 K9 ["ScrollingFrame"]
       25 GETTABLEKS                       R6 R2 K10 ["Util"]
       27 GETTABLEKS                       R7 R6 K11 ["deepCopy"]
       29 GETTABLEKS                       R8 R6 K12 ["Typecheck"]
       31 GETTABLEKS                       R9 R1 K13 ["PureComponent"]
       33 LOADK                            R11 K14 ["ScrollableGrid"]
       34 NAMECALL                         R9 R9 K15 ["extend"]
       36 CALL                             R9 2 1
       37 GETTABLEKS                       R10 R8 K16 ["wrap"]
       39 MOVE                             R11 R9
       40 GETIMPORT                        R12 K1 [script]
       42 CALL                             R10 2 0
       43 DUPTABLE                         R10 K18 [{"LayoutOrder"}]
       44 LOADN                            R11 1
       45 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
       47 SETTABLEKS                       R10 R9 K19 ["defaultProps"]
       49 DUPCLOSURE                       R10 K20 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R10 R9 K21 ["render"]
       56 RETURN                           R9 1
