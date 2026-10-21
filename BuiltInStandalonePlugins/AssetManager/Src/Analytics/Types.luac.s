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
       14 NEWTABLE                         R2 16 0
       16 DUPTABLE                         R3 K14 [{["Grid"] = "grid", ["List"] = "list", ["Unknown"] = "unknown"}]
       17 SETTABLEKS                       R3 R2 K15 ["ViewMode"]
       19 DUPTABLE                         R4 K26 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click", ["DetailsDrawer"] = "details_drawer"}]
       20 SETTABLEKS                       R4 R2 K27 ["InsertType"]
       22 DUPTABLE                         R5 K32 [{["Browse"] = "browse", ["Search"] = "search"}]
       23 SETTABLEKS                       R5 R2 K33 ["InsertSource"]
       25 DUPTABLE                         R6 K42 [{["RibbonClick"] = "ribbon_click", ["GuiFocus"] = "gui_focus", ["Restore"] = "restore", ["WidgetEnabled"] = "widget_enabled"}]
       26 SETTABLEKS                       R6 R2 K43 ["ActionType"]
       28 DUPTABLE                         R7 K48 [{["OpenUse"] = "openUse", ["Collaborator"] = "collaborator"}]
       29 SETTABLEKS                       R7 R2 K49 ["ShareType"]
       31 DUPTABLE                         R8 K60 [{["Start"] = "start", ["Advance"] = "advance", ["Pause"] = "pause", ["Dismiss"] = "dismiss", ["Finish"] = "finish"}]
       32 SETTABLEKS                       R8 R2 K61 ["TutorialAction"]
       34 DUPTABLE                         R9 K66 [{["ManualAdvance"] = "manualAdvance", ["AutoAdvance"] = "autoAdvance"}]
       35 SETTABLEKS                       R9 R2 K67 ["TutorialAdvanceSource"]
       37 DUPTABLE                         R10 K70 [{["CopyAssetId"] = "copyAssetId"}]
       38 SETTABLEKS                       R10 R2 K71 ["ItemInteraction"]
       40 DUPTABLE                         R11 K78 [{["FirstLoad"] = "FirstLoad", ["Insert"] = "Insert", ["Share"] = "Share", ["LoadNewScope"] = "LoadNewScope", ["Sort"] = "Sort", ["Filter"] = "Filter"}]
       41 SETTABLEKS                       R11 R2 K79 ["BenchmarkingEvent"]
       43 RETURN                           R2 1
