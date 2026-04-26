MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADN                            R1 8
        4 SETTABLEKS                       R1 R0 K0 ["LoadingBarHeight"]
        6 LOADN                            R1 33
        7 SETTABLEKS                       R1 R0 K1 ["SectionHeaderHeight"]
        9 LOADN                            R1 5
       10 SETTABLEKS                       R1 R0 K2 ["PaddingSmall"]
       12 LOADN                            R1 10
       13 SETTABLEKS                       R1 R0 K3 ["Padding"]
       15 LOADN                            R1 15
       16 SETTABLEKS                       R1 R0 K4 ["PaddingLarge"]
       18 LOADN                            R1 12
       19 SETTABLEKS                       R1 R0 K5 ["IconWidthXSmall"]
       21 LOADN                            R1 16
       22 SETTABLEKS                       R1 R0 K6 ["IconWidth"]
       24 LOADN                            R1 20
       25 SETTABLEKS                       R1 R0 K7 ["IconWidthXLarge"]
       27 LOADN                            R1 28
       28 SETTABLEKS                       R1 R0 K8 ["SidebarTogglePadding"]
       30 LOADN                            R1 50
       31 SETTABLEKS                       R1 R0 K9 ["ItemRowHeight"]
       33 LOADN                            R1 45
       34 SETTABLEKS                       R1 R0 K10 ["ShimmerRotation"]
       36 LOADN                            R1 20
       37 SETTABLEKS                       R1 R0 K11 ["ListThumbnailSize"]
       39 LOADK                            R1 K12 [0.75]
       40 SETTABLEKS                       R1 R0 K13 ["GridThumbnailScale"]
       42 LOADN                            R1 4
       43 SETTABLEKS                       R1 R0 K14 ["GridThumbnailOffset"]
       45 LOADN                            R1 42
       46 SETTABLEKS                       R1 R0 K15 ["TopBarHeight"]
       48 LOADN                            R1 24
       49 SETTABLEKS                       R1 R0 K16 ["ExplorerRowHeight"]
       51 LOADN                            R1 25
       52 SETTABLEKS                       R1 R0 K17 ["HeaderRowHeight"]
       54 LOADN                            R1 30
       55 SETTABLEKS                       R1 R0 K18 ["CellDataHeight"]
       57 LOADN                            R1 20
       58 SETTABLEKS                       R1 R0 K19 ["BaseWidth"]
       60 LOADN                            R1 35
       61 SETTABLEKS                       R1 R0 K20 ["ThumbnailContainerSize"]
       63 LOADN                            R1 60
       64 SETTABLEKS                       R1 R0 K21 ["GridCellHeightMin"]
       66 LOADN                            R1 200
       67 SETTABLEKS                       R1 R0 K22 ["GridCellHeightMax"]
       69 GETIMPORT                        R1 K25 [UDim2.fromOffset]
       71 LOADN                            R2 10
       72 LOADN                            R3 10
       73 CALL                             R1 2 1
       74 SETTABLEKS                       R1 R0 K26 ["GridCellPadding"]
       76 LOADN                            R1 200
       77 SETTABLEKS                       R1 R0 K27 ["SortOptionsWidth"]
       79 LOADN                            R1 250
       80 SETTABLEKS                       R1 R0 K28 ["FilterTypesWidth"]
       82 LOADN                            R1 64
       83 SETTABLEKS                       R1 R0 K29 ["FilterTypesHeight"]
       85 GETIMPORT                        R1 K32 [Vector2.new]
       87 LOADK                            R2 K33 [0.5]
       88 LOADK                            R3 K33 [0.5]
       89 CALL                             R1 2 1
       90 SETTABLEKS                       R1 R0 K34 ["AnchorCenter"]
       92 GETIMPORT                        R1 K36 [UDim2.fromScale]
       94 LOADK                            R2 K33 [0.5]
       95 LOADK                            R3 K33 [0.5]
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K37 ["PositionCenter"]
       99 GETIMPORT                        R1 K32 [Vector2.new]
      101 LOADN                            R2 128
      102 LOADN                            R3 104
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K38 ["QuickShareDialogSize"]
      106 GETIMPORT                        R1 K25 [UDim2.fromOffset]
      108 LOADN                            R2 96
      109 LOADN                            R3 125
      110 CALL                             R1 2 1
      111 SETTABLEKS                       R1 R0 K39 ["QuickShareDropdownSize"]
      113 GETIMPORT                        R1 K32 [Vector2.new]
      115 LOADN                            R2 100
      116 LOADN                            R3 200
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K40 ["QuickSharePermissionsDropdownSize"]
      120 GETIMPORT                        R1 K32 [Vector2.new]
      122 LOADN                            R2 159
      123 LOADN                            R3 100
      124 CALL                             R1 2 1
      125 SETTABLEKS                       R1 R0 K41 ["ConfirmDialogSize"]
      127 GETIMPORT                        R1 K32 [Vector2.new]
      129 LOADN                            R2 144
      130 LOADN                            R3 224
      131 CALL                             R1 2 1
      132 SETTABLEKS                       R1 R0 K42 ["MoveDialogSize"]
      134 LOADN                            R1 180
      135 SETTABLEKS                       R1 R0 K43 ["ContextMenuWidth"]
      137 GETIMPORT                        R1 K25 [UDim2.fromOffset]
      139 GETTABLEKS                       R2 R0 K5 ["IconWidthXSmall"]
      141 GETTABLEKS                       R3 R0 K5 ["IconWidthXSmall"]
      143 CALL                             R1 2 1
      144 SETTABLEKS                       R1 R0 K44 ["IconSizeXSmall"]
      146 GETIMPORT                        R1 K25 [UDim2.fromOffset]
      148 GETTABLEKS                       R2 R0 K6 ["IconWidth"]
      150 GETTABLEKS                       R3 R0 K6 ["IconWidth"]
      152 CALL                             R1 2 1
      153 SETTABLEKS                       R1 R0 K45 ["IconSize"]
      155 GETIMPORT                        R1 K25 [UDim2.fromOffset]
      157 GETTABLEKS                       R2 R0 K7 ["IconWidthXLarge"]
      159 GETTABLEKS                       R3 R0 K7 ["IconWidthXLarge"]
      161 CALL                             R1 2 1
      162 SETTABLEKS                       R1 R0 K46 ["IconSizeXLarge"]
      164 RETURN                           R0 1
