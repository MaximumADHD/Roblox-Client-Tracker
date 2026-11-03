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
       57 LOADN                            R1 45
       58 SETTABLEKS                       R1 R0 K19 ["CellDataHeightWithTwoLineName"]
       60 LOADN                            R1 20
       61 SETTABLEKS                       R1 R0 K20 ["BaseWidth"]
       63 LOADN                            R1 35
       64 SETTABLEKS                       R1 R0 K21 ["ThumbnailContainerSize"]
       66 LOADN                            R1 32
       67 SETTABLEKS                       R1 R0 K22 ["ListRowHeightMin"]
       69 LOADN                            R1 96
       70 SETTABLEKS                       R1 R0 K23 ["ListRowHeightMax"]
       72 LOADN                            R1 32
       73 SETTABLEKS                       R1 R0 K24 ["ListRowHeightDefault"]
       75 LOADN                            R1 32
       76 SETTABLEKS                       R1 R0 K25 ["ListRowHeightSmall"]
       78 LOADN                            R1 45
       79 SETTABLEKS                       R1 R0 K26 ["ListRowHeightMedium"]
       81 LOADN                            R1 85
       82 SETTABLEKS                       R1 R0 K27 ["ListRowHeightLarge"]
       84 LOADN                            R1 2
       85 SETTABLEKS                       R1 R0 K28 ["ListRowIconPadding"]
       87 LOADK                            R1 K29 [0.4]
       88 SETTABLEKS                       R1 R0 K30 ["ListThumbnailScale"]
       90 LOADK                            R1 K31 [0.7]
       91 SETTABLEKS                       R1 R0 K32 ["ListThumbnailContainerScale"]
       93 LOADN                            R1 60
       94 SETTABLEKS                       R1 R0 K33 ["GridCellSizeMin"]
       96 LOADN                            R1 200
       97 SETTABLEKS                       R1 R0 K34 ["GridCellSizeMax"]
       99 LOADN                            R1 60
      100 SETTABLEKS                       R1 R0 K35 ["GridCellSizeDefault"]
      102 LOADN                            R1 60
      103 SETTABLEKS                       R1 R0 K36 ["GridCellSizeSmall"]
      105 LOADN                            R1 80
      106 SETTABLEKS                       R1 R0 K37 ["GridCellSizeMedium"]
      108 LOADN                            R1 100
      109 SETTABLEKS                       R1 R0 K38 ["GridCellSizeLarge"]
      111 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      113 LOADN                            R2 10
      114 LOADN                            R3 10
      115 CALL                             R1 2 1
      116 SETTABLEKS                       R1 R0 K42 ["GridCellPadding"]
      118 LOADN                            R1 4
      119 SETTABLEKS                       R1 R0 K43 ["GridCellIconPadding"]
      121 LOADN                            R1 200
      122 SETTABLEKS                       R1 R0 K44 ["SortOptionsWidth"]
      124 LOADN                            R1 250
      125 SETTABLEKS                       R1 R0 K45 ["FilterTypesWidth"]
      127 LOADN                            R1 420
      128 SETTABLEKS                       R1 R0 K46 ["FilterTypesHeight"]
      130 GETIMPORT                        R1 K49 [Vector2.new]
      132 LOADK                            R2 K50 [0.5]
      133 LOADK                            R3 K50 [0.5]
      134 CALL                             R1 2 1
      135 SETTABLEKS                       R1 R0 K51 ["AnchorCenter"]
      137 GETIMPORT                        R1 K53 [UDim2.fromScale]
      139 LOADK                            R2 K50 [0.5]
      140 LOADK                            R3 K50 [0.5]
      141 CALL                             R1 2 1
      142 SETTABLEKS                       R1 R0 K54 ["PositionCenter"]
      144 GETIMPORT                        R1 K49 [Vector2.new]
      146 LOADN                            R2 640
      147 LOADN                            R3 360
      148 CALL                             R1 2 1
      149 SETTABLEKS                       R1 R0 K55 ["QuickShareDialogSize"]
      151 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      153 LOADN                            R2 608
      154 LOADN                            R3 125
      155 CALL                             R1 2 1
      156 SETTABLEKS                       R1 R0 K56 ["QuickShareDropdownSize"]
      158 GETIMPORT                        R1 K49 [Vector2.new]
      160 LOADN                            R2 100
      161 LOADN                            R3 200
      162 CALL                             R1 2 1
      163 SETTABLEKS                       R1 R0 K57 ["QuickSharePermissionsDropdownSize"]
      165 GETIMPORT                        R1 K49 [Vector2.new]
      167 LOADN                            R2 415
      168 LOADN                            R3 100
      169 CALL                             R1 2 1
      170 SETTABLEKS                       R1 R0 K58 ["ConfirmDialogSize"]
      172 GETIMPORT                        R1 K49 [Vector2.new]
      174 LOADN                            R2 450
      175 LOADN                            R3 125
      176 CALL                             R1 2 1
      177 SETTABLEKS                       R1 R0 K59 ["ConfirmOpenInBrowserDialogSize"]
      179 GETIMPORT                        R1 K49 [Vector2.new]
      181 LOADN                            R2 400
      182 LOADN                            R3 480
      183 CALL                             R1 2 1
      184 SETTABLEKS                       R1 R0 K60 ["MoveDialogSize"]
      186 LOADN                            R1 180
      187 SETTABLEKS                       R1 R0 K61 ["ContextMenuWidth"]
      189 LOADN                            R1 180
      190 SETTABLEKS                       R1 R0 K62 ["CompactOptionsMenuWidth"]
      192 LOADN                            R1 350
      193 SETTABLEKS                       R1 R0 K63 ["CompactOptionsMenuMaxHeight"]
      195 LOADN                            R1 220
      196 SETTABLEKS                       R1 R0 K64 ["CompactScopeListWidth"]
      198 LOADN                            R1 32
      199 SETTABLEKS                       R1 R0 K65 ["CompactScopeListMinHeight"]
      201 LOADN                            R1 320
      202 SETTABLEKS                       R1 R0 K66 ["CompactScopeListMaxHeight"]
      204 LOADK                            R1 K67 [26.5]
      205 SETTABLEKS                       R1 R0 K68 ["CompactScopeListItemHeight"]
      207 LOADN                            R1 330
      208 SETTABLEKS                       R1 R0 K69 ["AssetStatusPopoverWidth"]
      210 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      212 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      214 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      216 CALL                             R1 2 1
      217 SETTABLEKS                       R1 R0 K70 ["IconSizeXSmall"]
      219 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      221 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      223 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      225 CALL                             R1 2 1
      226 SETTABLEKS                       R1 R0 K71 ["IconSize"]
      228 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      230 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      232 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      234 CALL                             R1 2 1
      235 SETTABLEKS                       R1 R0 K72 ["IconSizeXLarge"]
      237 RETURN                           R0 1
