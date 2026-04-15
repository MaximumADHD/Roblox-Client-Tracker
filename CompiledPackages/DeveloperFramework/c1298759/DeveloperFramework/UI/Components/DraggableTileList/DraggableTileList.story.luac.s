PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Tile"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K8 [{"Style", "HorizontalAlignment", "Layout", "Position", "Size"}]
       11 LOADK                            R7 K9 ["BorderBox"]
       12 SETTABLEKS                       R7 R6 K2 ["Style"]
       14 GETIMPORT                        R7 K12 [Enum.HorizontalAlignment.Left]
       16 SETTABLEKS                       R7 R6 K4 ["HorizontalAlignment"]
       18 GETIMPORT                        R7 K15 [Enum.FillDirection.Horizontal]
       20 SETTABLEKS                       R7 R6 K5 ["Layout"]
       22 GETTABLEKS                       R7 R1 K6 ["Position"]
       24 SETTABLEKS                       R7 R6 K6 ["Position"]
       26 GETTABLEKS                       R7 R1 K7 ["Size"]
       28 SETTABLEKS                       R7 R6 K7 ["Size"]
       30 DUPTABLE                         R7 K17 [{"Text"}]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K3 ["createElement"]
       34 GETUPVAL                         R9 2
       35 DUPTABLE                         R10 K20 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
       36 GETIMPORT                        R11 K23 [UDim2.new]
       38 LOADN                            R12 1
       39 LOADN                            R13 0
       40 LOADN                            R14 1
       41 LOADN                            R15 0
       42 CALL                             R11 4 1
       43 SETTABLEKS                       R11 R10 K7 ["Size"]
       45 LOADN                            R11 2
       46 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       48 GETTABLEKS                       R11 R2 K16 ["Text"]
       50 SETTABLEKS                       R11 R10 K16 ["Text"]
       52 GETTABLEKS                       R11 R3 K19 ["TextXAlignment"]
       54 JUMPIF                           R11 ; [+2]
       55 GETIMPORT                        R11 K25 [Enum.TextXAlignment.Center]
       57 SETTABLEKS                       R11 R10 K19 ["TextXAlignment"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K16 ["Text"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["boxes"]
        4 DUPCLOSURE                       R1 K1 [PROTO_1]
        5 SETTABLEKS                       R1 R0 K2 ["getTileId"]
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"Text", "LayoutOrder"}]
        1 SETTABLEKS                       R0 R2 K0 ["Text"]
        3 SETTABLEKS                       R1 R2 K1 ["LayoutOrder"]
        5 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [next]
        2 GETTABLEKS                       R2 R0 K2 ["boxes"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+27]
        6 NEWTABLE                         R1 0 3
        8 DUPTABLE                         R2 K5 [{"Text", "LayoutOrder"}]
        9 LOADK                            R3 K6 ["Box 1"]
       10 SETTABLEKS                       R3 R2 K3 ["Text"]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       15 DUPTABLE                         R3 K5 [{"Text", "LayoutOrder"}]
       16 LOADK                            R4 K7 ["Box 2"]
       17 SETTABLEKS                       R4 R3 K3 ["Text"]
       19 LOADN                            R4 2
       20 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       22 DUPTABLE                         R4 K5 [{"Text", "LayoutOrder"}]
       23 LOADK                            R5 K8 ["Box 3"]
       24 SETTABLEKS                       R5 R4 K3 ["Text"]
       26 LOADN                            R5 3
       27 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       29 SETLIST                          R1 R2 3 [1]
       31 SETTABLEKS                       R1 R0 K2 ["boxes"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K9 ["createElement"]
       36 GETUPVAL                         R2 1
       37 DUPTABLE                         R3 K16 [{"Size", "Capacity", "TileList", "TileComponent", "PaneStyle", "GetTileId"}]
       38 GETIMPORT                        R4 K19 [UDim2.fromOffset]
       40 LOADN                            R5 100
       41 LOADN                            R6 44
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K10 ["Size"]
       45 LOADN                            R4 3
       46 SETTABLEKS                       R4 R3 K11 ["Capacity"]
       48 GETTABLEKS                       R4 R0 K2 ["boxes"]
       50 SETTABLEKS                       R4 R3 K12 ["TileList"]
       52 GETUPVAL                         R4 2
       53 SETTABLEKS                       R4 R3 K13 ["TileComponent"]
       55 LOADK                            R4 K20 ["BorderBox"]
       56 SETTABLEKS                       R4 R3 K14 ["PaneStyle"]
       58 GETTABLEKS                       R4 R0 K21 ["getTileId"]
       60 SETTABLEKS                       R4 R3 K15 ["GetTileId"]
       62 CALL                             R1 2 -1
       63 RETURN                           R1 -1

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
       31 GETTABLEKS                       R4 R5 K10 ["DraggableTileList"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["TextLabel"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["DraggableTiles"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R6 R1 K12 ["PureComponent"]
       51 LOADK                            R8 K15 ["CustomTileBox"]
       52 NAMECALL                         R6 R6 K14 ["extend"]
       54 CALL                             R6 2 1
       55 DUPCLOSURE                       R7 K16 [PROTO_0]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R7 R6 K17 ["render"]
       61 DUPCLOSURE                       R7 K18 [PROTO_2]
       62 SETTABLEKS                       R7 R5 K19 ["init"]
       64 DUPCLOSURE                       R7 K20 [PROTO_3]
       65 DUPCLOSURE                       R8 K21 [PROTO_4]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R8 R5 K17 ["render"]
       71 RETURN                           R5 1
