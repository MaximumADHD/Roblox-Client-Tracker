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
       48 LOADN                            R1 20
       49 SETTABLEKS                       R1 R0 K15 ["ListThumbnailSize"]
       51 LOADK                            R1 K16 [0.75]
       52 SETTABLEKS                       R1 R0 K17 ["GridThumbnailScale"]
       54 LOADN                            R1 4
       55 SETTABLEKS                       R1 R0 K18 ["GridThumbnailOffset"]
       57 LOADN                            R1 42
       58 SETTABLEKS                       R1 R0 K19 ["TopBarHeight"]
       60 LOADN                            R1 25
       61 SETTABLEKS                       R1 R0 K20 ["HeaderRowHeight"]
       63 LOADN                            R1 30
       64 SETTABLEKS                       R1 R0 K21 ["CellDataHeight"]
       66 LOADN                            R1 20
       67 SETTABLEKS                       R1 R0 K22 ["BaseWidth"]
       69 LOADN                            R1 35
       70 SETTABLEKS                       R1 R0 K23 ["ThumbnailContainerSize"]
       72 LOADN                            R1 32
       73 SETTABLEKS                       R1 R0 K24 ["ListRowHeightMin"]
       75 LOADN                            R1 96
       76 SETTABLEKS                       R1 R0 K25 ["ListRowHeightMax"]
       78 LOADK                            R1 K26 [0.4]
       79 SETTABLEKS                       R1 R0 K27 ["ListThumbnailScale"]
       81 LOADK                            R1 K28 [0.7]
       82 SETTABLEKS                       R1 R0 K29 ["ListThumbnailContainerScale"]
       84 LOADN                            R1 60
       85 SETTABLEKS                       R1 R0 K30 ["GridCellHeightMin"]
       87 LOADN                            R1 200
       88 SETTABLEKS                       R1 R0 K31 ["GridCellHeightMax"]
       90 GETIMPORT                        R1 K34 [UDim2.fromOffset]
       92 LOADN                            R2 10
       93 LOADN                            R3 10
       94 CALL                             R1 2 1
       95 SETTABLEKS                       R1 R0 K35 ["GridCellPadding"]
       97 LOADN                            R1 200
       98 SETTABLEKS                       R1 R0 K36 ["SortOptionsWidth"]
      100 LOADN                            R1 250
      101 SETTABLEKS                       R1 R0 K37 ["FilterTypesWidth"]
      103 LOADN                            R1 320
      104 SETTABLEKS                       R1 R0 K38 ["FilterTypesHeight"]
      106 GETIMPORT                        R1 K41 [Vector2.new]
      108 LOADK                            R2 K42 [0.5]
      109 LOADK                            R3 K42 [0.5]
      110 CALL                             R1 2 1
      111 SETTABLEKS                       R1 R0 K43 ["AnchorCenter"]
      113 GETIMPORT                        R1 K45 [UDim2.fromScale]
      115 LOADK                            R2 K42 [0.5]
      116 LOADK                            R3 K42 [0.5]
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K46 ["PositionCenter"]
      120 GETIMPORT                        R1 K41 [Vector2.new]
      122 LOADN                            R2 640
      123 LOADN                            R3 360
      124 CALL                             R1 2 1
      125 SETTABLEKS                       R1 R0 K47 ["QuickShareDialogSize"]
      127 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      129 LOADN                            R2 608
      130 LOADN                            R3 125
      131 CALL                             R1 2 1
      132 SETTABLEKS                       R1 R0 K48 ["QuickShareDropdownSize"]
      134 GETIMPORT                        R1 K41 [Vector2.new]
      136 LOADN                            R2 100
      137 LOADN                            R3 200
      138 CALL                             R1 2 1
      139 SETTABLEKS                       R1 R0 K49 ["QuickSharePermissionsDropdownSize"]
      141 GETIMPORT                        R1 K41 [Vector2.new]
      143 LOADN                            R2 415
      144 LOADN                            R3 100
      145 CALL                             R1 2 1
      146 SETTABLEKS                       R1 R0 K50 ["ConfirmDialogSize"]
      148 GETIMPORT                        R1 K41 [Vector2.new]
      150 LOADN                            R2 450
      151 LOADN                            R3 125
      152 CALL                             R1 2 1
      153 SETTABLEKS                       R1 R0 K51 ["ConfirmOpenInBrowserDialogSize"]
      155 GETIMPORT                        R1 K41 [Vector2.new]
      157 LOADN                            R2 400
      158 LOADN                            R3 480
      159 CALL                             R1 2 1
      160 SETTABLEKS                       R1 R0 K52 ["MoveDialogSize"]
      162 LOADN                            R1 180
      163 SETTABLEKS                       R1 R0 K53 ["ContextMenuWidth"]
      165 LOADN                            R1 180
      166 SETTABLEKS                       R1 R0 K54 ["CompactOptionsMenuWidth"]
      168 LOADN                            R1 220
      169 SETTABLEKS                       R1 R0 K55 ["CompactScopeListWidth"]
      171 LOADN                            R1 32
      172 SETTABLEKS                       R1 R0 K56 ["CompactScopeListMinHeight"]
      174 LOADN                            R1 320
      175 SETTABLEKS                       R1 R0 K57 ["CompactScopeListMaxHeight"]
      177 LOADN                            R1 27
      178 SETTABLEKS                       R1 R0 K58 ["CompactScopeListItemHeight"]
      180 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      182 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      184 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      186 CALL                             R1 2 1
      187 SETTABLEKS                       R1 R0 K59 ["IconSizeXSmall"]
      189 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      191 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      193 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      195 CALL                             R1 2 1
      196 SETTABLEKS                       R1 R0 K60 ["IconSize"]
      198 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      200 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      202 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      204 CALL                             R1 2 1
      205 SETTABLEKS                       R1 R0 K61 ["IconSizeXLarge"]
      207 RETURN                           R0 1
