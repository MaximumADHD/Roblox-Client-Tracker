MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 DUPTABLE                         R3 K11 [{"LAYER_TABS", "TAB_SWITCH_REASONS"}]
       17 NEWTABLE                         R4 4 0
       19 GETTABLEKS                       R5 R2 K9 ["LAYER_TABS"]
       21 GETTABLEKS                       R5 R5 K12 ["LayerData"]
       23 LOADN                            R6 0
       24 SETTABLE                         R6 R4 R5
       25 GETTABLEKS                       R5 R2 K9 ["LAYER_TABS"]
       27 GETTABLEKS                       R5 R5 K13 ["Visualization"]
       29 LOADN                            R6 1
       30 SETTABLE                         R6 R4 R5
       31 GETTABLEKS                       R5 R2 K9 ["LAYER_TABS"]
       33 GETTABLEKS                       R5 R5 K14 ["History"]
       35 LOADN                            R6 2
       36 SETTABLE                         R6 R4 R5
       37 GETTABLEKS                       R5 R2 K9 ["LAYER_TABS"]
       39 GETTABLEKS                       R5 R5 K15 ["RawData"]
       41 LOADN                            R6 3
       42 SETTABLE                         R6 R4 R5
       43 SETTABLEKS                       R4 R3 K9 ["LAYER_TABS"]
       45 DUPTABLE                         R4 K19 [{"Manual", "HistoryIcon", "NoData"}]
       46 LOADN                            R5 0
       47 SETTABLEKS                       R5 R4 K16 ["Manual"]
       49 LOADN                            R5 1
       50 SETTABLEKS                       R5 R4 K17 ["HistoryIcon"]
       52 LOADN                            R5 2
       53 SETTABLEKS                       R5 R4 K18 ["NoData"]
       55 SETTABLEKS                       R4 R3 K10 ["TAB_SWITCH_REASONS"]
       57 RETURN                           R3 1
