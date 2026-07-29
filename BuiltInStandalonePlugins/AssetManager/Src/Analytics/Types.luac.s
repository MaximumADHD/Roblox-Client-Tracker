MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPTABLE                         R3 K14 [{["Grid"] = "grid", ["List"] = "list", ["Unknown"] = "unknown"}]
       17 SETTABLEKS                       R3 R2 K15 ["ViewMode"]
       19 DUPTABLE                         R4 K24 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click"}]
       20 SETTABLEKS                       R4 R2 K25 ["InsertType"]
       22 DUPTABLE                         R5 K30 [{["Browse"] = "browse", ["Search"] = "search"}]
       23 SETTABLEKS                       R5 R2 K31 ["InsertSource"]
       25 RETURN                           R2 1
