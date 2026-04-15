MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K8 [{"ITEM_HEIGHT", "MAX_VISIBLE_ITEMS", "TITLE_HEIGHT", "TITLE_CONTENT_GAP", "SCROLL_THRESHOLD"}]
        4 LOADN                            R2 20
        5 SETTABLEKS                       R2 R1 K3 ["ITEM_HEIGHT"]
        7 LOADK                            R2 K9 [4.6]
        8 SETTABLEKS                       R2 R1 K4 ["MAX_VISIBLE_ITEMS"]
       10 LOADN                            R2 24
       11 SETTABLEKS                       R2 R1 K5 ["TITLE_HEIGHT"]
       13 LOADN                            R2 8
       14 SETTABLEKS                       R2 R1 K6 ["TITLE_CONTENT_GAP"]
       16 LOADN                            R2 6
       17 SETTABLEKS                       R2 R1 K7 ["SCROLL_THRESHOLD"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1
