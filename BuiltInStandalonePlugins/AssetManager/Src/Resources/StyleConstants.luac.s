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
       81 LOADN                            R1 2
       82 SETTABLEKS                       R1 R0 K27 ["ListRowIconPadding"]
       84 LOADK                            R1 K28 [0.4]
       85 SETTABLEKS                       R1 R0 K29 ["ListThumbnailScale"]
       87 LOADK                            R1 K30 [0.7]
       88 SETTABLEKS                       R1 R0 K31 ["ListThumbnailContainerScale"]
       90 LOADN                            R1 60
       91 SETTABLEKS                       R1 R0 K32 ["GridCellSizeMin"]
       93 LOADN                            R1 200
       94 SETTABLEKS                       R1 R0 K33 ["GridCellSizeMax"]
       96 LOADN                            R1 60
       97 SETTABLEKS                       R1 R0 K34 ["GridCellSizeDefault"]
       99 LOADN                            R1 60
      100 SETTABLEKS                       R1 R0 K35 ["GridCellSizeSmall"]
      102 LOADN                            R1 80
      103 SETTABLEKS                       R1 R0 K36 ["GridCellSizeMedium"]
      105 LOADN                            R1 100
      106 SETTABLEKS                       R1 R0 K37 ["GridCellSizeLarge"]
      108 GETIMPORT                        R1 K40 [UDim2.fromOffset]
      110 LOADN                            R2 10
      111 LOADN                            R3 10
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K41 ["GridCellPadding"]
      115 LOADN                            R1 4
      116 SETTABLEKS                       R1 R0 K42 ["GridCellIconPadding"]
      118 LOADN                            R1 200
      119 SETTABLEKS                       R1 R0 K43 ["SortOptionsWidth"]
      121 LOADN                            R1 250
      122 SETTABLEKS                       R1 R0 K44 ["FilterTypesWidth"]
      124 LOADN                            R1 420
      125 SETTABLEKS                       R1 R0 K45 ["FilterTypesHeight"]
      127 GETIMPORT                        R1 K48 [Vector2.new]
      129 LOADK                            R2 K49 [0.5]
      130 LOADK                            R3 K49 [0.5]
      131 CALL                             R1 2 1
      132 SETTABLEKS                       R1 R0 K50 ["AnchorCenter"]
      134 GETIMPORT                        R1 K52 [UDim2.fromScale]
      136 LOADK                            R2 K49 [0.5]
      137 LOADK                            R3 K49 [0.5]
      138 CALL                             R1 2 1
      139 SETTABLEKS                       R1 R0 K53 ["PositionCenter"]
      141 GETIMPORT                        R1 K48 [Vector2.new]
      143 LOADN                            R2 640
      144 LOADN                            R3 360
      145 CALL                             R1 2 1
      146 SETTABLEKS                       R1 R0 K54 ["QuickShareDialogSize"]
      148 GETIMPORT                        R1 K40 [UDim2.fromOffset]
      150 LOADN                            R2 608
      151 LOADN                            R3 125
      152 CALL                             R1 2 1
      153 SETTABLEKS                       R1 R0 K55 ["QuickShareDropdownSize"]
      155 GETIMPORT                        R1 K48 [Vector2.new]
      157 LOADN                            R2 100
      158 LOADN                            R3 200
      159 CALL                             R1 2 1
      160 SETTABLEKS                       R1 R0 K56 ["QuickSharePermissionsDropdownSize"]
      162 GETIMPORT                        R1 K48 [Vector2.new]
      164 LOADN                            R2 415
      165 LOADN                            R3 100
      166 CALL                             R1 2 1
      167 SETTABLEKS                       R1 R0 K57 ["ConfirmDialogSize"]
      169 GETIMPORT                        R1 K48 [Vector2.new]
      171 LOADN                            R2 450
      172 LOADN                            R3 125
      173 CALL                             R1 2 1
      174 SETTABLEKS                       R1 R0 K58 ["ConfirmOpenInBrowserDialogSize"]
      176 GETIMPORT                        R1 K48 [Vector2.new]
      178 LOADN                            R2 400
      179 LOADN                            R3 480
      180 CALL                             R1 2 1
      181 SETTABLEKS                       R1 R0 K59 ["MoveDialogSize"]
      183 LOADN                            R1 180
      184 SETTABLEKS                       R1 R0 K60 ["ContextMenuWidth"]
      186 LOADN                            R1 180
      187 SETTABLEKS                       R1 R0 K61 ["CompactOptionsMenuWidth"]
      189 LOADN                            R1 350
      190 SETTABLEKS                       R1 R0 K62 ["CompactOptionsMenuMaxHeight"]
      192 LOADN                            R1 220
      193 SETTABLEKS                       R1 R0 K63 ["CompactScopeListWidth"]
      195 LOADN                            R1 32
      196 SETTABLEKS                       R1 R0 K64 ["CompactScopeListMinHeight"]
      198 LOADN                            R1 320
      199 SETTABLEKS                       R1 R0 K65 ["CompactScopeListMaxHeight"]
      201 LOADK                            R1 K66 [26.5]
      202 SETTABLEKS                       R1 R0 K67 ["CompactScopeListItemHeight"]
      204 LOADN                            R1 330
      205 SETTABLEKS                       R1 R0 K68 ["AssetStatePopoverWidth"]
      207 GETIMPORT                        R1 K40 [UDim2.fromOffset]
      209 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      211 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      213 CALL                             R1 2 1
      214 SETTABLEKS                       R1 R0 K69 ["IconSizeXSmall"]
      216 GETIMPORT                        R1 K40 [UDim2.fromOffset]
      218 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      220 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      222 CALL                             R1 2 1
      223 SETTABLEKS                       R1 R0 K70 ["IconSize"]
      225 GETIMPORT                        R1 K40 [UDim2.fromOffset]
      227 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      229 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      231 CALL                             R1 2 1
      232 SETTABLEKS                       R1 R0 K71 ["IconSizeXLarge"]
      234 RETURN                           R0 1
