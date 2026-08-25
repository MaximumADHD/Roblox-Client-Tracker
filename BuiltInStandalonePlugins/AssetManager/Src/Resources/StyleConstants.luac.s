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
       39 LOADN                            R1 45
       40 SETTABLEKS                       R1 R0 K12 ["ShimmerRotation"]
       42 LOADK                            R1 K13 [0.75]
       43 SETTABLEKS                       R1 R0 K14 ["GridThumbnailScale"]
       45 LOADN                            R1 4
       46 SETTABLEKS                       R1 R0 K15 ["GridThumbnailOffset"]
       48 LOADN                            R1 42
       49 SETTABLEKS                       R1 R0 K16 ["TopBarHeight"]
       51 LOADN                            R1 25
       52 SETTABLEKS                       R1 R0 K17 ["HeaderRowHeight"]
       54 LOADN                            R1 30
       55 SETTABLEKS                       R1 R0 K18 ["CellDataHeight"]
       57 LOADN                            R1 20
       58 SETTABLEKS                       R1 R0 K19 ["BaseWidth"]
       60 LOADN                            R1 35
       61 SETTABLEKS                       R1 R0 K20 ["ThumbnailContainerSize"]
       63 LOADN                            R1 32
       64 SETTABLEKS                       R1 R0 K21 ["ListRowHeightMin"]
       66 LOADN                            R1 96
       67 SETTABLEKS                       R1 R0 K22 ["ListRowHeightMax"]
       69 LOADN                            R1 32
       70 SETTABLEKS                       R1 R0 K23 ["ListRowHeightDefault"]
       72 LOADN                            R1 32
       73 SETTABLEKS                       R1 R0 K24 ["ListRowHeightSmall"]
       75 LOADN                            R1 45
       76 SETTABLEKS                       R1 R0 K25 ["ListRowHeightMedium"]
       78 LOADN                            R1 85
       79 SETTABLEKS                       R1 R0 K26 ["ListRowHeightLarge"]
       81 LOADK                            R1 K27 [0.4]
       82 SETTABLEKS                       R1 R0 K28 ["ListThumbnailScale"]
       84 LOADK                            R1 K29 [0.7]
       85 SETTABLEKS                       R1 R0 K30 ["ListThumbnailContainerScale"]
       87 LOADN                            R1 60
       88 SETTABLEKS                       R1 R0 K31 ["GridCellSizeMin"]
       90 LOADN                            R1 200
       91 SETTABLEKS                       R1 R0 K32 ["GridCellSizeMax"]
       93 LOADN                            R1 60
       94 SETTABLEKS                       R1 R0 K33 ["GridCellSizeDefault"]
       96 LOADN                            R1 60
       97 SETTABLEKS                       R1 R0 K34 ["GridCellSizeSmall"]
       99 LOADN                            R1 80
      100 SETTABLEKS                       R1 R0 K35 ["GridCellSizeMedium"]
      102 LOADN                            R1 100
      103 SETTABLEKS                       R1 R0 K36 ["GridCellSizeLarge"]
      105 GETIMPORT                        R1 K39 [UDim2.fromOffset]
      107 LOADN                            R2 10
      108 LOADN                            R3 10
      109 CALL                             R1 2 1
      110 SETTABLEKS                       R1 R0 K40 ["GridCellPadding"]
      112 LOADN                            R1 200
      113 SETTABLEKS                       R1 R0 K41 ["SortOptionsWidth"]
      115 LOADN                            R1 250
      116 SETTABLEKS                       R1 R0 K42 ["FilterTypesWidth"]
      118 LOADN                            R1 420
      119 SETTABLEKS                       R1 R0 K43 ["FilterTypesHeight"]
      121 GETIMPORT                        R1 K46 [Vector2.new]
      123 LOADK                            R2 K47 [0.5]
      124 LOADK                            R3 K47 [0.5]
      125 CALL                             R1 2 1
      126 SETTABLEKS                       R1 R0 K48 ["AnchorCenter"]
      128 GETIMPORT                        R1 K50 [UDim2.fromScale]
      130 LOADK                            R2 K47 [0.5]
      131 LOADK                            R3 K47 [0.5]
      132 CALL                             R1 2 1
      133 SETTABLEKS                       R1 R0 K51 ["PositionCenter"]
      135 GETIMPORT                        R1 K46 [Vector2.new]
      137 LOADN                            R2 640
      138 LOADN                            R3 360
      139 CALL                             R1 2 1
      140 SETTABLEKS                       R1 R0 K52 ["QuickShareDialogSize"]
      142 GETIMPORT                        R1 K39 [UDim2.fromOffset]
      144 LOADN                            R2 608
      145 LOADN                            R3 125
      146 CALL                             R1 2 1
      147 SETTABLEKS                       R1 R0 K53 ["QuickShareDropdownSize"]
      149 GETIMPORT                        R1 K46 [Vector2.new]
      151 LOADN                            R2 100
      152 LOADN                            R3 200
      153 CALL                             R1 2 1
      154 SETTABLEKS                       R1 R0 K54 ["QuickSharePermissionsDropdownSize"]
      156 GETIMPORT                        R1 K46 [Vector2.new]
      158 LOADN                            R2 415
      159 LOADN                            R3 100
      160 CALL                             R1 2 1
      161 SETTABLEKS                       R1 R0 K55 ["ConfirmDialogSize"]
      163 GETIMPORT                        R1 K46 [Vector2.new]
      165 LOADN                            R2 450
      166 LOADN                            R3 125
      167 CALL                             R1 2 1
      168 SETTABLEKS                       R1 R0 K56 ["ConfirmOpenInBrowserDialogSize"]
      170 GETIMPORT                        R1 K46 [Vector2.new]
      172 LOADN                            R2 400
      173 LOADN                            R3 480
      174 CALL                             R1 2 1
      175 SETTABLEKS                       R1 R0 K57 ["MoveDialogSize"]
      177 LOADN                            R1 180
      178 SETTABLEKS                       R1 R0 K58 ["ContextMenuWidth"]
      180 LOADN                            R1 180
      181 SETTABLEKS                       R1 R0 K59 ["CompactOptionsMenuWidth"]
      183 LOADN                            R1 350
      184 SETTABLEKS                       R1 R0 K60 ["CompactOptionsMenuMaxHeight"]
      186 LOADN                            R1 220
      187 SETTABLEKS                       R1 R0 K61 ["CompactScopeListWidth"]
      189 LOADN                            R1 32
      190 SETTABLEKS                       R1 R0 K62 ["CompactScopeListMinHeight"]
      192 LOADN                            R1 320
      193 SETTABLEKS                       R1 R0 K63 ["CompactScopeListMaxHeight"]
      195 LOADK                            R1 K64 [26.5]
      196 SETTABLEKS                       R1 R0 K65 ["CompactScopeListItemHeight"]
      198 GETIMPORT                        R1 K39 [UDim2.fromOffset]
      200 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      202 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      204 CALL                             R1 2 1
      205 SETTABLEKS                       R1 R0 K66 ["IconSizeXSmall"]
      207 GETIMPORT                        R1 K39 [UDim2.fromOffset]
      209 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      211 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      213 CALL                             R1 2 1
      214 SETTABLEKS                       R1 R0 K67 ["IconSize"]
      216 GETIMPORT                        R1 K39 [UDim2.fromOffset]
      218 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      220 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      222 CALL                             R1 2 1
      223 SETTABLEKS                       R1 R0 K68 ["IconSizeXLarge"]
      225 RETURN                           R0 1
