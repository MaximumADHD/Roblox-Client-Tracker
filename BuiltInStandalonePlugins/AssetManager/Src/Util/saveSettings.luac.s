PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["LayoutController"]
        2 NAMECALL                         R2 R2 K1 ["getBrowserLayout"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R2 K2 ["ViewType"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["ViewType"]
       10 GETTABLEKS                       R5 R5 K3 ["List"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+3]
       14 LOADK                            R3 K3 ["List"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K4 ["Grid"]
       17 GETUPVAL                         R5 1
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+6]
       20 GETTABLEKS                       R4 R1 K0 ["LayoutController"]
       22 NAMECALL                         R4 R4 K5 ["getSidebarDesiredWidth"]
       24 CALL                             R4 1 1
       25 JUMP                             ; [+5]
       26 GETTABLEKS                       R4 R1 K0 ["LayoutController"]
       28 NAMECALL                         R4 R4 K6 ["getSidebarWidth"]
       30 CALL                             R4 1 1
       31 DUPTABLE                         R5 K10 [{"Layout", "Explorer", "Tutorial"}]
       32 DUPTABLE                         R6 K16 [{"ShowSidebar", "SidebarWidth", "BrowserLayout", "Columns", "ColumnWidths"}]
       33 GETTABLEKS                       R7 R1 K0 ["LayoutController"]
       35 NAMECALL                         R7 R7 K17 ["getShowSidebar"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K11 ["ShowSidebar"]
       40 SETTABLEKS                       R4 R6 K12 ["SidebarWidth"]
       42 DUPTABLE                         R7 K20 [{"GridSize", "ViewType", "ListRowHeight"}]
       43 GETTABLEKS                       R8 R2 K18 ["GridSize"]
       45 SETTABLEKS                       R8 R7 K18 ["GridSize"]
       47 SETTABLEKS                       R3 R7 K2 ["ViewType"]
       49 GETTABLEKS                       R8 R2 K19 ["ListRowHeight"]
       51 SETTABLEKS                       R8 R7 K19 ["ListRowHeight"]
       53 SETTABLEKS                       R7 R6 K13 ["BrowserLayout"]
       55 GETTABLEKS                       R7 R1 K0 ["LayoutController"]
       57 NAMECALL                         R7 R7 K21 ["getColumns"]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K14 ["Columns"]
       62 GETTABLEKS                       R7 R1 K0 ["LayoutController"]
       64 NAMECALL                         R7 R7 K22 ["getColumnWidths"]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K15 ["ColumnWidths"]
       69 SETTABLEKS                       R6 R5 K7 ["Layout"]
       71 DUPTABLE                         R6 K24 [{"HiddenInventories"}]
       72 GETTABLEKS                       R7 R1 K25 ["ExplorerController"]
       74 NAMECALL                         R7 R7 K26 ["getHiddenInventories"]
       76 CALL                             R7 1 1
       77 SETTABLEKS                       R7 R6 K23 ["HiddenInventories"]
       79 SETTABLEKS                       R6 R5 K8 ["Explorer"]
       81 DUPTABLE                         R6 K28 [{"FinishedTutorials"}]
       82 GETTABLEKS                       R7 R1 K29 ["TutorialController"]
       84 NAMECALL                         R7 R7 K30 ["getFinishedTutorials"]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K27 ["FinishedTutorials"]
       89 SETTABLEKS                       R6 R5 K9 ["Tutorial"]
       91 GETUPVAL                         R6 2
       92 MOVE                             R8 R5
       93 NAMECALL                         R6 R6 K31 ["JSONEncode"]
       95 CALL                             R6 2 1
       96 LOADK                            R9 K32 ["AssetManager_Settings"]
       97 MOVE                             R10 R6
       98 NAMECALL                         R7 R0 K33 ["SetSetting"]
      100 CALL                             R7 3 0
      101 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Src"]
       24 GETTABLEKS                       R4 R4 K12 ["Flags"]
       26 GETTABLEKS                       R4 R4 K13 ["getFFlagAmrFlexPaneSizing"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K14 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 RETURN                           R4 1
