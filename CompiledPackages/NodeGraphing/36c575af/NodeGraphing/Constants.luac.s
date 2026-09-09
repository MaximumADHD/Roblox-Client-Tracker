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
       15 DUPTABLE                         R1 K10 [{["Node"] = "Node", [2] = "Parameter", ["StateMachine"] = "StateMachine"}]
       16 SETTABLEKS                       R1 R0 K11 ["NodeType"]
       18 LOADN                            R1 38
       19 SETTABLEKS                       R1 R0 K12 ["ORIGINAL_TILE_SIZE"]
       21 LOADN                            R1 200
       22 SETTABLEKS                       R1 R0 K13 ["NODE_VIEW_CHILD_WIDTH"]
       24 LOADN                            R1 100
       25 SETTABLEKS                       R1 R0 K14 ["NODE_VIEW_CHILD_HEIGHT"]
       27 LOADN                            R1 3
       28 SETTABLEKS                       R1 R0 K15 ["NODE_EXPRESSION_MIN_NUM_LINES"]
       30 LOADK                            R1 K16 [16.65]
       31 SETTABLEKS                       R1 R0 K17 ["NODE_EXPRESSION_LINE_HEIGHT"]
       33 LOADN                            R1 30
       34 SETTABLEKS                       R1 R0 K18 ["SNAP_DISTANCE"]
       36 LOADN                            R1 28
       37 SETTABLEKS                       R1 R0 K19 ["WELL_KNOWN_HEADER_HEIGHT"]
       39 DUPTABLE                         R1 K32 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
       40 SETTABLEKS                       R1 R0 K33 ["NODEVIEW_ZINDEX"]
       42 DUPTABLE                         R1 K39 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
       43 SETTABLEKS                       R1 R0 K40 ["NUMBER_PRECISION"]
       45 DUPTABLE                         R1 K43 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
       46 SETTABLEKS                       R1 R0 K44 ["NUMBER_STEP"]
       48 LOADN                            R1 15
       49 SETTABLEKS                       R1 R0 K45 ["SLOPPY_SELECTION_BOUNDARY"]
       51 RETURN                           R0 1
