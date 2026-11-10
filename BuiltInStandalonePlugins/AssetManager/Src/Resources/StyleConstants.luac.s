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
      125 SETTABLEKS                       R1 R0 K45 ["DEPRECATED_FilterTypesWidth"]
      127 LOADN                            R1 420
      128 SETTABLEKS                       R1 R0 K46 ["DEPRECATED_FilterTypesHeight"]
      130 LOADN                            R1 180
      131 SETTABLEKS                       R1 R0 K47 ["FilterTypesWidth"]
      133 LOADN                            R1 180
      134 SETTABLEKS                       R1 R0 K48 ["FilterTypesHeight"]
      136 GETIMPORT                        R1 K51 [Vector2.new]
      138 LOADK                            R2 K52 [0.5]
      139 LOADK                            R3 K52 [0.5]
      140 CALL                             R1 2 1
      141 SETTABLEKS                       R1 R0 K53 ["AnchorCenter"]
      143 GETIMPORT                        R1 K55 [UDim2.fromScale]
      145 LOADK                            R2 K52 [0.5]
      146 LOADK                            R3 K52 [0.5]
      147 CALL                             R1 2 1
      148 SETTABLEKS                       R1 R0 K56 ["PositionCenter"]
      150 GETIMPORT                        R1 K51 [Vector2.new]
      152 LOADN                            R2 640
      153 LOADN                            R3 360
      154 CALL                             R1 2 1
      155 SETTABLEKS                       R1 R0 K57 ["QuickShareDialogSize"]
      157 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      159 LOADN                            R2 608
      160 LOADN                            R3 125
      161 CALL                             R1 2 1
      162 SETTABLEKS                       R1 R0 K58 ["QuickShareDropdownSize"]
      164 GETIMPORT                        R1 K51 [Vector2.new]
      166 LOADN                            R2 100
      167 LOADN                            R3 200
      168 CALL                             R1 2 1
      169 SETTABLEKS                       R1 R0 K59 ["QuickSharePermissionsDropdownSize"]
      171 GETIMPORT                        R1 K51 [Vector2.new]
      173 LOADN                            R2 415
      174 LOADN                            R3 100
      175 CALL                             R1 2 1
      176 SETTABLEKS                       R1 R0 K60 ["ConfirmDialogSize"]
      178 GETIMPORT                        R1 K51 [Vector2.new]
      180 LOADN                            R2 450
      181 LOADN                            R3 125
      182 CALL                             R1 2 1
      183 SETTABLEKS                       R1 R0 K61 ["ConfirmOpenInBrowserDialogSize"]
      185 GETIMPORT                        R1 K51 [Vector2.new]
      187 LOADN                            R2 400
      188 LOADN                            R3 480
      189 CALL                             R1 2 1
      190 SETTABLEKS                       R1 R0 K62 ["MoveDialogSize"]
      192 LOADN                            R1 180
      193 SETTABLEKS                       R1 R0 K63 ["ContextMenuWidth"]
      195 LOADN                            R1 180
      196 SETTABLEKS                       R1 R0 K64 ["CompactOptionsMenuWidth"]
      198 LOADN                            R1 350
      199 SETTABLEKS                       R1 R0 K65 ["DEPRECATED_CompactOptionsMenuMaxHeight"]
      201 LOADN                            R1 270
      202 SETTABLEKS                       R1 R0 K66 ["CompactOptionsMenuHeight"]
      204 LOADN                            R1 220
      205 SETTABLEKS                       R1 R0 K67 ["CompactScopeListWidth"]
      207 LOADN                            R1 32
      208 SETTABLEKS                       R1 R0 K68 ["CompactScopeListMinHeight"]
      210 LOADN                            R1 320
      211 SETTABLEKS                       R1 R0 K69 ["CompactScopeListMaxHeight"]
      213 LOADK                            R1 K70 [26.5]
      214 SETTABLEKS                       R1 R0 K71 ["CompactScopeListItemHeight"]
      216 LOADN                            R1 330
      217 SETTABLEKS                       R1 R0 K72 ["AssetStatusPopoverWidth"]
      219 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      221 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      223 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      225 CALL                             R1 2 1
      226 SETTABLEKS                       R1 R0 K73 ["IconSizeXSmall"]
      228 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      230 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      232 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      234 CALL                             R1 2 1
      235 SETTABLEKS                       R1 R0 K74 ["IconSize"]
      237 GETIMPORT                        R1 K41 [UDim2.fromOffset]
      239 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      241 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      243 CALL                             R1 2 1
      244 SETTABLEKS                       R1 R0 K75 ["IconSizeXLarge"]
      246 RETURN                           R0 1
