MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADN                            R1 8
        4 SETTABLEKS                       R1 R0 K0 ["LoadingBarHeight"]
        6 LOADN                            R1 8
        7 SETTABLEKS                       R1 R0 K1 ["ScrollingBarWidth"]
        9 LOADN                            R1 33
       10 SETTABLEKS                       R1 R0 K2 ["SectionHeaderHeight"]
       12 LOADN                            R1 5
       13 SETTABLEKS                       R1 R0 K3 ["PaddingSmall"]
       15 LOADN                            R1 10
       16 SETTABLEKS                       R1 R0 K4 ["Padding"]
       18 LOADN                            R1 15
       19 SETTABLEKS                       R1 R0 K5 ["PaddingLarge"]
       21 LOADN                            R1 12
       22 SETTABLEKS                       R1 R0 K6 ["IconWidthXSmall"]
       24 LOADN                            R1 16
       25 SETTABLEKS                       R1 R0 K7 ["IconWidth"]
       27 LOADN                            R1 20
       28 SETTABLEKS                       R1 R0 K8 ["IconWidthXLarge"]
       30 LOADN                            R1 32
       31 SETTABLEKS                       R1 R0 K9 ["SidebarToggleLeftPadding"]
       33 LOADN                            R1 24
       34 SETTABLEKS                       R1 R0 K10 ["SidebarToggleTopPadding"]
       36 LOADN                            R1 24
       37 SETTABLEKS                       R1 R0 K11 ["SidebarRowHeight"]
       39 LOADN                            R1 50
       40 SETTABLEKS                       R1 R0 K12 ["ItemRowHeightDefault"]
       42 LOADN                            R1 100
       43 SETTABLEKS                       R1 R0 K13 ["ItemCellSizeDefault"]
       45 LOADN                            R1 45
       46 SETTABLEKS                       R1 R0 K14 ["ShimmerRotation"]
       48 LOADK                            R1 K15 [0.75]
       49 SETTABLEKS                       R1 R0 K16 ["GridThumbnailScale"]
       51 LOADN                            R1 4
       52 SETTABLEKS                       R1 R0 K17 ["GridThumbnailOffset"]
       54 LOADN                            R1 42
       55 SETTABLEKS                       R1 R0 K18 ["TopBarHeight"]
       57 LOADN                            R1 25
       58 SETTABLEKS                       R1 R0 K19 ["HeaderRowHeight"]
       60 LOADN                            R1 30
       61 SETTABLEKS                       R1 R0 K20 ["CellDataHeight"]
       63 LOADN                            R1 20
       64 SETTABLEKS                       R1 R0 K21 ["BaseWidth"]
       66 LOADN                            R1 35
       67 SETTABLEKS                       R1 R0 K22 ["ThumbnailContainerSize"]
       69 LOADN                            R1 32
       70 SETTABLEKS                       R1 R0 K23 ["ListRowHeightMin"]
       72 LOADN                            R1 96
       73 SETTABLEKS                       R1 R0 K24 ["ListRowHeightMax"]
       75 LOADK                            R1 K25 [0.4]
       76 SETTABLEKS                       R1 R0 K26 ["ListThumbnailScale"]
       78 LOADK                            R1 K27 [0.7]
       79 SETTABLEKS                       R1 R0 K28 ["ListThumbnailContainerScale"]
       81 LOADN                            R1 60
       82 SETTABLEKS                       R1 R0 K29 ["GridCellHeightMin"]
       84 LOADN                            R1 200
       85 SETTABLEKS                       R1 R0 K30 ["GridCellHeightMax"]
       87 GETIMPORT                        R1 K33 [UDim2.fromOffset]
       89 LOADN                            R2 10
       90 LOADN                            R3 10
       91 CALL                             R1 2 1
       92 SETTABLEKS                       R1 R0 K34 ["GridCellPadding"]
       94 LOADN                            R1 200
       95 SETTABLEKS                       R1 R0 K35 ["SortOptionsWidth"]
       97 LOADN                            R1 250
       98 SETTABLEKS                       R1 R0 K36 ["FilterTypesWidth"]
      100 LOADN                            R1 320
      101 SETTABLEKS                       R1 R0 K37 ["FilterTypesHeight"]
      103 GETIMPORT                        R1 K40 [Vector2.new]
      105 LOADK                            R2 K41 [0.5]
      106 LOADK                            R3 K41 [0.5]
      107 CALL                             R1 2 1
      108 SETTABLEKS                       R1 R0 K42 ["AnchorCenter"]
      110 GETIMPORT                        R1 K44 [UDim2.fromScale]
      112 LOADK                            R2 K41 [0.5]
      113 LOADK                            R3 K41 [0.5]
      114 CALL                             R1 2 1
      115 SETTABLEKS                       R1 R0 K45 ["PositionCenter"]
      117 GETIMPORT                        R1 K40 [Vector2.new]
      119 LOADN                            R2 640
      120 LOADN                            R3 360
      121 CALL                             R1 2 1
      122 SETTABLEKS                       R1 R0 K46 ["QuickShareDialogSize"]
      124 GETIMPORT                        R1 K33 [UDim2.fromOffset]
      126 LOADN                            R2 608
      127 LOADN                            R3 125
      128 CALL                             R1 2 1
      129 SETTABLEKS                       R1 R0 K47 ["QuickShareDropdownSize"]
      131 GETIMPORT                        R1 K40 [Vector2.new]
      133 LOADN                            R2 100
      134 LOADN                            R3 200
      135 CALL                             R1 2 1
      136 SETTABLEKS                       R1 R0 K48 ["QuickSharePermissionsDropdownSize"]
      138 GETIMPORT                        R1 K40 [Vector2.new]
      140 LOADN                            R2 415
      141 LOADN                            R3 100
      142 CALL                             R1 2 1
      143 SETTABLEKS                       R1 R0 K49 ["ConfirmDialogSize"]
      145 GETIMPORT                        R1 K40 [Vector2.new]
      147 LOADN                            R2 450
      148 LOADN                            R3 125
      149 CALL                             R1 2 1
      150 SETTABLEKS                       R1 R0 K50 ["ConfirmOpenInBrowserDialogSize"]
      152 GETIMPORT                        R1 K40 [Vector2.new]
      154 LOADN                            R2 400
      155 LOADN                            R3 480
      156 CALL                             R1 2 1
      157 SETTABLEKS                       R1 R0 K51 ["MoveDialogSize"]
      159 LOADN                            R1 180
      160 SETTABLEKS                       R1 R0 K52 ["ContextMenuWidth"]
      162 LOADN                            R1 180
      163 SETTABLEKS                       R1 R0 K53 ["CompactOptionsMenuWidth"]
      165 LOADN                            R1 220
      166 SETTABLEKS                       R1 R0 K54 ["CompactScopeListWidth"]
      168 LOADN                            R1 32
      169 SETTABLEKS                       R1 R0 K55 ["CompactScopeListMinHeight"]
      171 LOADN                            R1 320
      172 SETTABLEKS                       R1 R0 K56 ["CompactScopeListMaxHeight"]
      174 LOADN                            R1 27
      175 SETTABLEKS                       R1 R0 K57 ["CompactScopeListItemHeight"]
      177 GETIMPORT                        R1 K33 [UDim2.fromOffset]
      179 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      181 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      183 CALL                             R1 2 1
      184 SETTABLEKS                       R1 R0 K58 ["IconSizeXSmall"]
      186 GETIMPORT                        R1 K33 [UDim2.fromOffset]
      188 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      190 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      192 CALL                             R1 2 1
      193 SETTABLEKS                       R1 R0 K59 ["IconSize"]
      195 GETIMPORT                        R1 K33 [UDim2.fromOffset]
      197 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      199 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      201 CALL                             R1 2 1
      202 SETTABLEKS                       R1 R0 K60 ["IconSizeXLarge"]
      204 RETURN                           R0 1
