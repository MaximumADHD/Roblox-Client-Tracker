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
       17 DUPTABLE                         R4 K6 [{"Layout"}]
       18 DUPTABLE                         R5 K11 [{"ShowSidebar", "BrowserLayout", "Columns", "ColumnWidths"}]
       19 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       21 NAMECALL                         R6 R6 K12 ["getShowSidebar"]
       23 CALL                             R6 1 1
       24 SETTABLEKS                       R6 R5 K7 ["ShowSidebar"]
       26 DUPTABLE                         R6 K15 [{"GridSize", "ViewType", "ListRowHeight"}]
       27 GETTABLEKS                       R7 R2 K13 ["GridSize"]
       29 SETTABLEKS                       R7 R6 K13 ["GridSize"]
       31 SETTABLEKS                       R3 R6 K2 ["ViewType"]
       33 GETTABLEKS                       R7 R2 K14 ["ListRowHeight"]
       35 SETTABLEKS                       R7 R6 K14 ["ListRowHeight"]
       37 SETTABLEKS                       R6 R5 K8 ["BrowserLayout"]
       39 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       41 NAMECALL                         R6 R6 K16 ["getColumns"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K9 ["Columns"]
       46 GETTABLEKS                       R6 R1 K0 ["LayoutController"]
       48 NAMECALL                         R6 R6 K17 ["getColumnWidths"]
       50 CALL                             R6 1 1
       51 SETTABLEKS                       R6 R5 K10 ["ColumnWidths"]
       53 SETTABLEKS                       R5 R4 K5 ["Layout"]
       55 GETUPVAL                         R5 1
       56 MOVE                             R7 R4
       57 NAMECALL                         R5 R5 K18 ["JSONEncode"]
       59 CALL                             R5 2 1
       60 LOADK                            R8 K19 ["AssetManager_Settings"]
       61 MOVE                             R9 R5
       62 NAMECALL                         R6 R0 K20 ["SetSetting"]
       64 CALL                             R6 3 0
       65 RETURN                           R0 0

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
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
