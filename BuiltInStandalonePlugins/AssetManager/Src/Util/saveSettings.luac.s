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
       17 DUPTABLE                         R4 K7 [{"Layout", "Tutorial"}]
       18 DUPTABLE                         R5 K13 [{"ShowSidebar", "SidebarWidth", "BrowserLayout", "Columns", "ColumnWidths"}]
       19 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       21 NAMECALL                         R6 R6 K14 ["getShowSidebar"]
       23 CALL                             R6 1 1
       24 SETTABLEKS                       R6 R5 K8 ["ShowSidebar"]
       26 GETTABLEKS                       R7 R1 K0 ["LayoutController"]
       28 NAMECALL                         R7 R7 K15 ["getAppSizes"]
       30 CALL                             R7 1 1
       31 GETTABLEN                        R6 R7 1
       32 GETTABLEKS                       R6 R6 K16 ["Offset"]
       34 SETTABLEKS                       R6 R5 K9 ["SidebarWidth"]
       36 DUPTABLE                         R6 K19 [{"GridSize", "ViewType", "ListRowHeight"}]
       37 GETTABLEKS                       R7 R2 K17 ["GridSize"]
       39 SETTABLEKS                       R7 R6 K17 ["GridSize"]
       41 SETTABLEKS                       R3 R6 K2 ["ViewType"]
       43 GETTABLEKS                       R7 R2 K18 ["ListRowHeight"]
       45 SETTABLEKS                       R7 R6 K18 ["ListRowHeight"]
       47 SETTABLEKS                       R6 R5 K10 ["BrowserLayout"]
       49 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       51 NAMECALL                         R6 R6 K20 ["getColumns"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K11 ["Columns"]
       56 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       58 NAMECALL                         R6 R6 K21 ["getColumnWidths"]
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K12 ["ColumnWidths"]
       63 SETTABLEKS                       R5 R4 K5 ["Layout"]
       65 GETUPVAL                         R6 1
       66 CALL                             R6 0 1
       67 JUMPIFNOT                        R6 ; [+6]
       68 GETTABLEKS                       R5 R1 K22 ["TutorialController"]
       70 NAMECALL                         R5 R5 K23 ["getFinishedTutorials"]
       72 CALL                             R5 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R5
       75 SETTABLEKS                       R5 R4 K6 ["Tutorial"]
       77 GETUPVAL                         R5 2
       78 MOVE                             R7 R4
       79 NAMECALL                         R5 R5 K24 ["JSONEncode"]
       81 CALL                             R5 2 1
       82 LOADK                            R8 K25 ["AssetManager_Settings"]
       83 MOVE                             R9 R5
       84 NAMECALL                         R6 R0 K26 ["SetSetting"]
       86 CALL                             R6 3 0
       87 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R4 K13 ["getFFlagAmrEnableTutorials"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K14 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 RETURN                           R4 1
