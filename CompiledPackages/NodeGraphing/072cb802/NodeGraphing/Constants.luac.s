MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["Parameter"]
        4 SETTABLEKS                       R1 R0 K1 ["PARAMETER_NODE_CLASSNAME"]
        6 LOADK                            R1 K2 ["Data"]
        7 SETTABLEKS                       R1 R0 K3 ["DEFAULT_PIN_DATA_TYPE"]
        9 GETIMPORT                        R1 K5 [require]
       11 GETIMPORT                        R2 K7 [script]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["Flags"]
       17 GETTABLEKS                       R2 R2 K10 ["getFFlagAnimGraphUIResizeBackground"]
       19 CALL                             R1 1 1
       20 MOVE                             R3 R1
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+2]
       23 LOADN                            R2 38
       24 JUMP                             ; [+1]
       25 LOADN                            R2 28
       26 SETTABLEKS                       R2 R0 K11 ["ORIGINAL_TILE_SIZE"]
       28 LOADN                            R2 200
       29 SETTABLEKS                       R2 R0 K12 ["NODE_VIEW_CHILD_WIDTH"]
       31 LOADN                            R2 30
       32 SETTABLEKS                       R2 R0 K13 ["SNAP_DISTANCE"]
       34 LOADN                            R2 28
       35 SETTABLEKS                       R2 R0 K14 ["WELL_KNOWN_HEADER_HEIGHT"]
       37 DUPTABLE                         R2 K21 [{"Curves", "Nodes", "Selected", "Preview", "Anchors", "CurveEnds"}]
       38 LOADN                            R3 1
       39 SETTABLEKS                       R3 R2 K15 ["Curves"]
       41 LOADN                            R3 2
       42 SETTABLEKS                       R3 R2 K16 ["Nodes"]
       44 LOADN                            R3 3
       45 SETTABLEKS                       R3 R2 K17 ["Selected"]
       47 LOADN                            R3 4
       48 SETTABLEKS                       R3 R2 K18 ["Preview"]
       50 LOADN                            R3 5
       51 SETTABLEKS                       R3 R2 K19 ["Anchors"]
       53 LOADN                            R3 6
       54 SETTABLEKS                       R3 R2 K20 ["CurveEnds"]
       56 SETTABLEKS                       R2 R0 K22 ["NODEVIEW_ZINDEX"]
       58 DUPTABLE                         R2 K27 [{"Angle", "Float", "Integer", "Timestamp"}]
       59 LOADN                            R3 3
       60 SETTABLEKS                       R3 R2 K23 ["Angle"]
       62 LOADN                            R3 3
       63 SETTABLEKS                       R3 R2 K24 ["Float"]
       65 LOADN                            R3 0
       66 SETTABLEKS                       R3 R2 K25 ["Integer"]
       68 LOADN                            R3 3
       69 SETTABLEKS                       R3 R2 K26 ["Timestamp"]
       71 SETTABLEKS                       R2 R0 K28 ["NUMBER_PRECISION"]
       73 DUPTABLE                         R2 K27 [{"Angle", "Float", "Integer", "Timestamp"}]
       74 LOADK                            R3 K29 [0.005]
       75 SETTABLEKS                       R3 R2 K23 ["Angle"]
       77 LOADK                            R3 K29 [0.005]
       78 SETTABLEKS                       R3 R2 K24 ["Float"]
       80 LOADK                            R3 K30 [0.05]
       81 SETTABLEKS                       R3 R2 K25 ["Integer"]
       83 LOADK                            R3 K29 [0.005]
       84 SETTABLEKS                       R3 R2 K26 ["Timestamp"]
       86 SETTABLEKS                       R2 R0 K31 ["NUMBER_STEP"]
       88 LOADN                            R2 15
       89 SETTABLEKS                       R2 R0 K32 ["SLOPPY_SELECTION_BOUNDARY"]
       91 RETURN                           R0 1
