MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["Parameter"]
        4 SETTABLEKS                       R1 R0 K1 ["PARAMETER_NODE_CLASSNAME"]
        6 LOADK                            R1 K2 ["GraphOutput"]
        7 SETTABLEKS                       R1 R0 K3 ["OUTPUT_NODE_CLASSNAME"]
        9 LOADK                            R1 K4 ["Data"]
       10 SETTABLEKS                       R1 R0 K5 ["DEFAULT_PIN_DATA_TYPE"]
       12 LOADN                            R1 38
       13 SETTABLEKS                       R1 R0 K6 ["ORIGINAL_TILE_SIZE"]
       15 LOADN                            R1 200
       16 SETTABLEKS                       R1 R0 K7 ["NODE_VIEW_CHILD_WIDTH"]
       18 LOADN                            R1 30
       19 SETTABLEKS                       R1 R0 K8 ["SNAP_DISTANCE"]
       21 LOADN                            R1 28
       22 SETTABLEKS                       R1 R0 K9 ["WELL_KNOWN_HEADER_HEIGHT"]
       24 DUPTABLE                         R1 K22 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
       25 SETTABLEKS                       R1 R0 K23 ["NODEVIEW_ZINDEX"]
       27 DUPTABLE                         R1 K29 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
       28 SETTABLEKS                       R1 R0 K30 ["NUMBER_PRECISION"]
       30 DUPTABLE                         R1 K33 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
       31 SETTABLEKS                       R1 R0 K34 ["NUMBER_STEP"]
       33 LOADN                            R1 15
       34 SETTABLEKS                       R1 R0 K35 ["SLOPPY_SELECTION_BOUNDARY"]
       36 RETURN                           R0 1
