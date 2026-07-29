MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["Parameter"]
        4 SETTABLEKS                       R1 R0 K1 ["PARAMETER_NODE_CLASSNAME"]
        6 LOADK                            R1 K2 ["GraphOutput"]
        7 SETTABLEKS                       R1 R0 K3 ["OUTPUT_NODE_CLASSNAME"]
        9 LOADK                            R1 K4 ["Data"]
       10 SETTABLEKS                       R1 R0 K5 ["DEFAULT_PIN_DATA_TYPE"]
       12 GETIMPORT                        R1 K7 [require]
       14 GETIMPORT                        R2 K9 [script]
       16 GETTABLEKS                       R2 R2 K10 ["Parent"]
       18 GETTABLEKS                       R2 R2 K11 ["Flags"]
       20 GETTABLEKS                       R2 R2 K12 ["getFFlagAnimGraphUIResizeBackground"]
       22 CALL                             R1 1 1
       23 MOVE                             R3 R1
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADN                            R2 38
       27 JUMP                             ; [+1]
       28 LOADN                            R2 28
       29 SETTABLEKS                       R2 R0 K13 ["ORIGINAL_TILE_SIZE"]
       31 LOADN                            R2 200
       32 SETTABLEKS                       R2 R0 K14 ["NODE_VIEW_CHILD_WIDTH"]
       34 LOADN                            R2 30
       35 SETTABLEKS                       R2 R0 K15 ["SNAP_DISTANCE"]
       37 LOADN                            R2 28
       38 SETTABLEKS                       R2 R0 K16 ["WELL_KNOWN_HEADER_HEIGHT"]
       40 DUPTABLE                         R2 K29 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
       41 SETTABLEKS                       R2 R0 K30 ["NODEVIEW_ZINDEX"]
       43 DUPTABLE                         R2 K36 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
       44 SETTABLEKS                       R2 R0 K37 ["NUMBER_PRECISION"]
       46 DUPTABLE                         R2 K40 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
       47 SETTABLEKS                       R2 R0 K41 ["NUMBER_STEP"]
       49 LOADN                            R2 15
       50 SETTABLEKS                       R2 R0 K42 ["SLOPPY_SELECTION_BOUNDARY"]
       52 RETURN                           R0 1
