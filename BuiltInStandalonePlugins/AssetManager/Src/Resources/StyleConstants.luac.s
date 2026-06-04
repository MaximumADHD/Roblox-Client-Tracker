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
       30 LOADN                            R1 28
       31 SETTABLEKS                       R1 R0 K9 ["SidebarTogglePadding"]
       33 LOADN                            R1 24
       34 SETTABLEKS                       R1 R0 K10 ["SidebarRowHeight"]
       36 LOADN                            R1 50
       37 SETTABLEKS                       R1 R0 K11 ["ItemRowHeight"]
       39 LOADN                            R1 45
       40 SETTABLEKS                       R1 R0 K12 ["ShimmerRotation"]
       42 LOADN                            R1 20
       43 SETTABLEKS                       R1 R0 K13 ["ListThumbnailSize"]
       45 LOADK                            R1 K14 [0.75]
       46 SETTABLEKS                       R1 R0 K15 ["GridThumbnailScale"]
       48 LOADN                            R1 4
       49 SETTABLEKS                       R1 R0 K16 ["GridThumbnailOffset"]
       51 LOADN                            R1 42
       52 SETTABLEKS                       R1 R0 K17 ["TopBarHeight"]
       54 LOADN                            R1 25
       55 SETTABLEKS                       R1 R0 K18 ["HeaderRowHeight"]
       57 LOADN                            R1 30
       58 SETTABLEKS                       R1 R0 K19 ["CellDataHeight"]
       60 LOADN                            R1 20
       61 SETTABLEKS                       R1 R0 K20 ["BaseWidth"]
       63 LOADN                            R1 35
       64 SETTABLEKS                       R1 R0 K21 ["ThumbnailContainerSize"]
       66 LOADN                            R1 60
       67 SETTABLEKS                       R1 R0 K22 ["GridCellHeightMin"]
       69 LOADN                            R1 200
       70 SETTABLEKS                       R1 R0 K23 ["GridCellHeightMax"]
       72 GETIMPORT                        R1 K26 [UDim2.fromOffset]
       74 LOADN                            R2 10
       75 LOADN                            R3 10
       76 CALL                             R1 2 1
       77 SETTABLEKS                       R1 R0 K27 ["GridCellPadding"]
       79 LOADN                            R1 200
       80 SETTABLEKS                       R1 R0 K28 ["SortOptionsWidth"]
       82 LOADN                            R1 250
       83 SETTABLEKS                       R1 R0 K29 ["FilterTypesWidth"]
       85 LOADN                            R1 64
       86 SETTABLEKS                       R1 R0 K30 ["FilterTypesHeight"]
       88 GETIMPORT                        R1 K33 [Vector2.new]
       90 LOADK                            R2 K34 [0.5]
       91 LOADK                            R3 K34 [0.5]
       92 CALL                             R1 2 1
       93 SETTABLEKS                       R1 R0 K35 ["AnchorCenter"]
       95 GETIMPORT                        R1 K37 [UDim2.fromScale]
       97 LOADK                            R2 K34 [0.5]
       98 LOADK                            R3 K34 [0.5]
       99 CALL                             R1 2 1
      100 SETTABLEKS                       R1 R0 K38 ["PositionCenter"]
      102 GETIMPORT                        R1 K33 [Vector2.new]
      104 LOADN                            R2 128
      105 LOADN                            R3 104
      106 CALL                             R1 2 1
      107 SETTABLEKS                       R1 R0 K39 ["QuickShareDialogSize"]
      109 GETIMPORT                        R1 K26 [UDim2.fromOffset]
      111 LOADN                            R2 96
      112 LOADN                            R3 125
      113 CALL                             R1 2 1
      114 SETTABLEKS                       R1 R0 K40 ["QuickShareDropdownSize"]
      116 GETIMPORT                        R1 K33 [Vector2.new]
      118 LOADN                            R2 100
      119 LOADN                            R3 200
      120 CALL                             R1 2 1
      121 SETTABLEKS                       R1 R0 K41 ["QuickSharePermissionsDropdownSize"]
      123 GETIMPORT                        R1 K33 [Vector2.new]
      125 LOADN                            R2 159
      126 LOADN                            R3 100
      127 CALL                             R1 2 1
      128 SETTABLEKS                       R1 R0 K42 ["ConfirmDialogSize"]
      130 GETIMPORT                        R1 K33 [Vector2.new]
      132 LOADN                            R2 144
      133 LOADN                            R3 224
      134 CALL                             R1 2 1
      135 SETTABLEKS                       R1 R0 K43 ["MoveDialogSize"]
      137 LOADN                            R1 180
      138 SETTABLEKS                       R1 R0 K44 ["ContextMenuWidth"]
      140 GETIMPORT                        R1 K26 [UDim2.fromOffset]
      142 GETTABLEKS                       R2 R0 K6 ["IconWidthXSmall"]
      144 GETTABLEKS                       R3 R0 K6 ["IconWidthXSmall"]
      146 CALL                             R1 2 1
      147 SETTABLEKS                       R1 R0 K45 ["IconSizeXSmall"]
      149 GETIMPORT                        R1 K26 [UDim2.fromOffset]
      151 GETTABLEKS                       R2 R0 K7 ["IconWidth"]
      153 GETTABLEKS                       R3 R0 K7 ["IconWidth"]
      155 CALL                             R1 2 1
      156 SETTABLEKS                       R1 R0 K46 ["IconSize"]
      158 GETIMPORT                        R1 K26 [UDim2.fromOffset]
      160 GETTABLEKS                       R2 R0 K8 ["IconWidthXLarge"]
      162 GETTABLEKS                       R3 R0 K8 ["IconWidthXLarge"]
      164 CALL                             R1 2 1
      165 SETTABLEKS                       R1 R0 K47 ["IconSizeXLarge"]
      167 RETURN                           R0 1
