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
       14 NEWTABLE                         R2 8 0
       16 DUPTABLE                         R3 K14 [{["Grid"] = "grid", ["List"] = "list", ["Unknown"] = "unknown"}]
       17 SETTABLEKS                       R3 R2 K15 ["ViewMode"]
       19 DUPTABLE                         R4 K24 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click"}]
       20 SETTABLEKS                       R4 R2 K25 ["InsertType"]
       22 DUPTABLE                         R5 K30 [{["Browse"] = "browse", ["Search"] = "search"}]
       23 SETTABLEKS                       R5 R2 K31 ["InsertSource"]
       25 DUPTABLE                         R6 K40 [{["RibbonClick"] = "ribbon_click", ["GuiFocus"] = "gui_focus", ["Restore"] = "restore", ["WidgetEnabled"] = "widget_enabled"}]
       26 SETTABLEKS                       R6 R2 K41 ["ActionType"]
       28 DUPTABLE                         R7 K46 [{["OpenUse"] = "openUse", ["Collaborator"] = "collaborator"}]
       29 SETTABLEKS                       R7 R2 K47 ["ShareType"]
       31 DUPTABLE                         R8 K58 [{["Start"] = "start", ["Advance"] = "advance", ["Pause"] = "pause", ["Dismiss"] = "dismiss", ["Finish"] = "finish"}]
       32 SETTABLEKS                       R8 R2 K59 ["TutorialAction"]
       34 DUPTABLE                         R9 K64 [{["ManualAdvance"] = "manualAdvance", ["AutoAdvance"] = "autoAdvance"}]
       35 SETTABLEKS                       R9 R2 K65 ["TutorialAdvanceSource"]
       37 DUPTABLE                         R10 K72 [{["FirstLoad"] = "FirstLoad", ["Insert"] = "Insert", ["Share"] = "Share", ["LoadNewScope"] = "LoadNewScope", ["Sort"] = "Sort", ["Filter"] = "Filter"}]
       38 SETTABLEKS                       R10 R2 K73 ["BenchmarkingEvent"]
       40 RETURN                           R2 1
