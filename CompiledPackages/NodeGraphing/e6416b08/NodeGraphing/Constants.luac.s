MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["Parameter"]
        4 SETTABLEKS                       R1 R0 K1 ["PARAMETER_NODE_CLASSNAME"]
        6 LOADK                            R1 K2 ["Data"]
        7 SETTABLEKS                       R1 R0 K3 ["DEFAULT_PIN_DATA_TYPE"]
        9 LOADN                            R1 28
       10 SETTABLEKS                       R1 R0 K4 ["ORIGINAL_TILE_SIZE"]
       12 LOADN                            R1 200
       13 SETTABLEKS                       R1 R0 K5 ["NODE_VIEW_CHILD_WIDTH"]
       15 LOADN                            R1 30
       16 SETTABLEKS                       R1 R0 K6 ["SNAP_DISTANCE"]
       18 LOADN                            R1 28
       19 SETTABLEKS                       R1 R0 K7 ["WELL_KNOWN_HEADER_HEIGHT"]
       21 DUPTABLE                         R1 K14 [{"Curves", "Nodes", "Selected", "Preview", "Anchors", "CurveEnds"}]
       22 LOADN                            R2 1
       23 SETTABLEKS                       R2 R1 K8 ["Curves"]
       25 LOADN                            R2 2
       26 SETTABLEKS                       R2 R1 K9 ["Nodes"]
       28 LOADN                            R2 3
       29 SETTABLEKS                       R2 R1 K10 ["Selected"]
       31 LOADN                            R2 4
       32 SETTABLEKS                       R2 R1 K11 ["Preview"]
       34 LOADN                            R2 5
       35 SETTABLEKS                       R2 R1 K12 ["Anchors"]
       37 LOADN                            R2 6
       38 SETTABLEKS                       R2 R1 K13 ["CurveEnds"]
       40 SETTABLEKS                       R1 R0 K15 ["NODEVIEW_ZINDEX"]
       42 DUPTABLE                         R1 K20 [{"Angle", "Float", "Integer", "Timestamp"}]
       43 LOADN                            R2 3
       44 SETTABLEKS                       R2 R1 K16 ["Angle"]
       46 LOADN                            R2 3
       47 SETTABLEKS                       R2 R1 K17 ["Float"]
       49 LOADN                            R2 0
       50 SETTABLEKS                       R2 R1 K18 ["Integer"]
       52 LOADN                            R2 3
       53 SETTABLEKS                       R2 R1 K19 ["Timestamp"]
       55 SETTABLEKS                       R1 R0 K21 ["NUMBER_PRECISION"]
       57 DUPTABLE                         R1 K20 [{"Angle", "Float", "Integer", "Timestamp"}]
       58 LOADK                            R2 K22 [0.005]
       59 SETTABLEKS                       R2 R1 K16 ["Angle"]
       61 LOADK                            R2 K22 [0.005]
       62 SETTABLEKS                       R2 R1 K17 ["Float"]
       64 LOADK                            R2 K23 [0.05]
       65 SETTABLEKS                       R2 R1 K18 ["Integer"]
       67 LOADK                            R2 K22 [0.005]
       68 SETTABLEKS                       R2 R1 K19 ["Timestamp"]
       70 SETTABLEKS                       R1 R0 K24 ["NUMBER_STEP"]
       72 RETURN                           R0 1
