MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K32 [{"LoadingBarHeight", "SectionHeaderHeight", "PaddingSmall", "Padding", "PaddingLarge", "IconWidthXSmall", "IconWidth", "IconWidthXLarge", "SidebarTogglePadding", "ItemRowHeight", "ShimmerRotation", "ListThumbnailSize", "GridThumbnailScale", "GridThumbnailOffset", "TopBarHeight", "ExplorerRowHeight", "HeaderRowHeight", "CellDataHeight", "BaseWidth", "ThumbnailContainerSize", "GridCellHeightMin", "GridCellHeightMax", "GridCellPadding", "SortOptionsWidth", "FilterTypesWidth", "FilterTypesHeight", "AnchorCenter", "PositionCenter", "QuickShareDialogSize", "QuickShareDropdownSize", "QuickSharePermissionsDropdownSize", "ConfirmDialogSize"}]
        2 LOADN                            R1 8
        3 SETTABLEKS                       R1 R0 K0 ["LoadingBarHeight"]
        5 LOADN                            R1 33
        6 SETTABLEKS                       R1 R0 K1 ["SectionHeaderHeight"]
        8 LOADN                            R1 5
        9 SETTABLEKS                       R1 R0 K2 ["PaddingSmall"]
       11 LOADN                            R1 10
       12 SETTABLEKS                       R1 R0 K3 ["Padding"]
       14 LOADN                            R1 15
       15 SETTABLEKS                       R1 R0 K4 ["PaddingLarge"]
       17 LOADN                            R1 12
       18 SETTABLEKS                       R1 R0 K5 ["IconWidthXSmall"]
       20 LOADN                            R1 16
       21 SETTABLEKS                       R1 R0 K6 ["IconWidth"]
       23 LOADN                            R1 20
       24 SETTABLEKS                       R1 R0 K7 ["IconWidthXLarge"]
       26 LOADN                            R1 28
       27 SETTABLEKS                       R1 R0 K8 ["SidebarTogglePadding"]
       29 LOADN                            R1 50
       30 SETTABLEKS                       R1 R0 K9 ["ItemRowHeight"]
       32 LOADN                            R1 45
       33 SETTABLEKS                       R1 R0 K10 ["ShimmerRotation"]
       35 LOADN                            R1 20
       36 SETTABLEKS                       R1 R0 K11 ["ListThumbnailSize"]
       38 LOADK                            R1 K33 [0.75]
       39 SETTABLEKS                       R1 R0 K12 ["GridThumbnailScale"]
       41 LOADN                            R1 4
       42 SETTABLEKS                       R1 R0 K13 ["GridThumbnailOffset"]
       44 LOADN                            R1 42
       45 SETTABLEKS                       R1 R0 K14 ["TopBarHeight"]
       47 LOADN                            R1 24
       48 SETTABLEKS                       R1 R0 K15 ["ExplorerRowHeight"]
       50 LOADN                            R1 25
       51 SETTABLEKS                       R1 R0 K16 ["HeaderRowHeight"]
       53 LOADN                            R1 30
       54 SETTABLEKS                       R1 R0 K17 ["CellDataHeight"]
       56 LOADN                            R1 20
       57 SETTABLEKS                       R1 R0 K18 ["BaseWidth"]
       59 LOADN                            R1 35
       60 SETTABLEKS                       R1 R0 K19 ["ThumbnailContainerSize"]
       62 LOADN                            R1 60
       63 SETTABLEKS                       R1 R0 K20 ["GridCellHeightMin"]
       65 LOADN                            R1 200
       66 SETTABLEKS                       R1 R0 K21 ["GridCellHeightMax"]
       68 GETIMPORT                        R1 K36 [UDim2.fromOffset]
       70 LOADN                            R2 10
       71 LOADN                            R3 10
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K22 ["GridCellPadding"]
       75 LOADN                            R1 200
       76 SETTABLEKS                       R1 R0 K23 ["SortOptionsWidth"]
       78 LOADN                            R1 250
       79 SETTABLEKS                       R1 R0 K24 ["FilterTypesWidth"]
       81 LOADN                            R1 64
       82 SETTABLEKS                       R1 R0 K25 ["FilterTypesHeight"]
       84 GETIMPORT                        R1 K39 [Vector2.new]
       86 LOADK                            R2 K40 [0.5]
       87 LOADK                            R3 K40 [0.5]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K26 ["AnchorCenter"]
       91 GETIMPORT                        R1 K42 [UDim2.fromScale]
       93 LOADK                            R2 K40 [0.5]
       94 LOADK                            R3 K40 [0.5]
       95 CALL                             R1 2 1
       96 SETTABLEKS                       R1 R0 K27 ["PositionCenter"]
       98 GETIMPORT                        R1 K39 [Vector2.new]
      100 LOADN                            R2 128
      101 LOADN                            R3 104
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K28 ["QuickShareDialogSize"]
      105 GETIMPORT                        R1 K36 [UDim2.fromOffset]
      107 LOADN                            R2 96
      108 LOADN                            R3 125
      109 CALL                             R1 2 1
      110 SETTABLEKS                       R1 R0 K29 ["QuickShareDropdownSize"]
      112 GETIMPORT                        R1 K39 [Vector2.new]
      114 LOADN                            R2 100
      115 LOADN                            R3 200
      116 CALL                             R1 2 1
      117 SETTABLEKS                       R1 R0 K30 ["QuickSharePermissionsDropdownSize"]
      119 GETIMPORT                        R1 K39 [Vector2.new]
      121 LOADN                            R2 159
      122 LOADN                            R3 100
      123 CALL                             R1 2 1
      124 SETTABLEKS                       R1 R0 K31 ["ConfirmDialogSize"]
      126 GETIMPORT                        R1 K36 [UDim2.fromOffset]
      128 GETTABLEKS                       R2 R0 K5 ["IconWidthXSmall"]
      130 GETTABLEKS                       R3 R0 K5 ["IconWidthXSmall"]
      132 CALL                             R1 2 1
      133 SETTABLEKS                       R1 R0 K43 ["IconSizeXSmall"]
      135 GETIMPORT                        R1 K36 [UDim2.fromOffset]
      137 GETTABLEKS                       R2 R0 K6 ["IconWidth"]
      139 GETTABLEKS                       R3 R0 K6 ["IconWidth"]
      141 CALL                             R1 2 1
      142 SETTABLEKS                       R1 R0 K44 ["IconSize"]
      144 GETIMPORT                        R1 K36 [UDim2.fromOffset]
      146 GETTABLEKS                       R2 R0 K7 ["IconWidthXLarge"]
      148 GETTABLEKS                       R3 R0 K7 ["IconWidthXLarge"]
      150 CALL                             R1 2 1
      151 SETTABLEKS                       R1 R0 K45 ["IconSizeXLarge"]
      153 RETURN                           R0 1
