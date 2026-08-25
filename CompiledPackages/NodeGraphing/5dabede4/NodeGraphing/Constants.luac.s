MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["Parameter"]
        4 SETTABLEKS                       R1 R0 K1 ["PARAMETER_NODE_CLASSNAME"]
        6 LOADK                            R1 K2 ["Expression"]
        7 SETTABLEKS                       R1 R0 K3 ["EXPRESSION_NODE_CLASSNAME"]
        9 LOADK                            R1 K4 ["GraphOutput"]
       10 SETTABLEKS                       R1 R0 K5 ["OUTPUT_NODE_CLASSNAME"]
       12 LOADK                            R1 K6 ["Data"]
       13 SETTABLEKS                       R1 R0 K7 ["DEFAULT_PIN_DATA_TYPE"]
       15 LOADN                            R1 38
       16 SETTABLEKS                       R1 R0 K8 ["ORIGINAL_TILE_SIZE"]
       18 LOADN                            R1 200
       19 SETTABLEKS                       R1 R0 K9 ["NODE_VIEW_CHILD_WIDTH"]
       21 LOADN                            R1 100
       22 SETTABLEKS                       R1 R0 K10 ["NODE_VIEW_CHILD_HEIGHT"]
       24 LOADN                            R1 3
       25 SETTABLEKS                       R1 R0 K11 ["NODE_EXPRESSION_MIN_NUM_LINES"]
       27 LOADK                            R1 K12 [16.65]
       28 SETTABLEKS                       R1 R0 K13 ["NODE_EXPRESSION_LINE_HEIGHT"]
       30 LOADN                            R1 30
       31 SETTABLEKS                       R1 R0 K14 ["SNAP_DISTANCE"]
       33 LOADN                            R1 28
       34 SETTABLEKS                       R1 R0 K15 ["WELL_KNOWN_HEADER_HEIGHT"]
       36 DUPTABLE                         R1 K28 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
       37 SETTABLEKS                       R1 R0 K29 ["NODEVIEW_ZINDEX"]
       39 DUPTABLE                         R1 K35 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
       40 SETTABLEKS                       R1 R0 K36 ["NUMBER_PRECISION"]
       42 DUPTABLE                         R1 K39 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
       43 SETTABLEKS                       R1 R0 K40 ["NUMBER_STEP"]
       45 LOADN                            R1 15
       46 SETTABLEKS                       R1 R0 K41 ["SLOPPY_SELECTION_BOUNDARY"]
       48 RETURN                           R0 1
