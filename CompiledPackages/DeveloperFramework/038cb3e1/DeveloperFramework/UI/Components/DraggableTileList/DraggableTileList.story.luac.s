PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Tile"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{["Style"] = "BorderBox", ["HorizontalAlignment"], ["Layout"], ["Position"], ["Size"]}]
       11 GETIMPORT                        R7 K12 [Enum.HorizontalAlignment.Left]
       13 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       15 GETIMPORT                        R7 K15 [Enum.FillDirection.Horizontal]
       17 SETTABLEKS                       R7 R6 K6 ["Layout"]
       19 GETTABLEKS                       R7 R1 K7 ["Position"]
       21 SETTABLEKS                       R7 R6 K7 ["Position"]
       23 GETTABLEKS                       R7 R1 K8 ["Size"]
       25 SETTABLEKS                       R7 R6 K8 ["Size"]
       27 DUPTABLE                         R7 K17 [{"Text"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K3 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K21 [{["Size"], ["LayoutOrder"] = 2, ["Text"], ["TextXAlignment"]}]
       33 GETIMPORT                        R11 K24 [UDim2.new]
       35 LOADN                            R12 1
       36 LOADN                            R13 0
       37 LOADN                            R14 1
       38 LOADN                            R15 0
       39 CALL                             R11 4 1
       40 SETTABLEKS                       R11 R10 K8 ["Size"]
       42 GETTABLEKS                       R11 R2 K16 ["Text"]
       44 SETTABLEKS                       R11 R10 K16 ["Text"]
       46 GETTABLEKS                       R11 R3 K20 ["TextXAlignment"]
       48 JUMPIF                           R11 ; [+2]
       49 GETIMPORT                        R11 K26 [Enum.TextXAlignment.Center]
       51 SETTABLEKS                       R11 R10 K20 ["TextXAlignment"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K16 ["Text"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

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
        5 JUMPIF                           R1 ; [+9]
        6 NEWTABLE                         R1 0 3
        8 DUPTABLE                         R2 K7 [{["Text"] = "Box 1", ["LayoutOrder"] = 1}]
        9 DUPTABLE                         R3 K10 [{["Text"] = "Box 2", ["LayoutOrder"] = 2}]
       10 DUPTABLE                         R4 K13 [{["Text"] = "Box 3", ["LayoutOrder"] = 3}]
       11 SETLIST                          R1 R2 3 [1]
       13 SETTABLEKS                       R1 R0 K2 ["boxes"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K14 ["createElement"]
       18 GETUPVAL                         R2 1
       19 DUPTABLE                         R3 K22 [{["Size"], ["Capacity"] = 3, ["TileList"], ["TileComponent"], ["PaneStyle"] = "BorderBox", ["GetTileId"]}]
       20 GETIMPORT                        R4 K25 [UDim2.fromOffset]
       22 LOADN                            R5 100
       23 LOADN                            R6 300
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K15 ["Size"]
       27 GETTABLEKS                       R4 R0 K2 ["boxes"]
       29 SETTABLEKS                       R4 R3 K17 ["TileList"]
       31 GETUPVAL                         R4 2
       32 SETTABLEKS                       R4 R3 K18 ["TileComponent"]
       34 GETTABLEKS                       R4 R0 K26 ["getTileId"]
       36 SETTABLEKS                       R4 R3 K21 ["GetTileId"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

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
       31 GETTABLEKS                       R4 R4 K10 ["DraggableTileList"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
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
