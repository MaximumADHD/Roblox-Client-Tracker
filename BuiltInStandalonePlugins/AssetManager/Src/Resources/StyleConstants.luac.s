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
       48 LOADN                            R1 25
       49 SETTABLEKS                       R1 R0 K16 ["HeaderRowHeight"]
       51 LOADN                            R1 30
       52 SETTABLEKS                       R1 R0 K17 ["CellDataHeight"]
       54 LOADN                            R1 20
       55 SETTABLEKS                       R1 R0 K18 ["BaseWidth"]
       57 LOADN                            R1 35
       58 SETTABLEKS                       R1 R0 K19 ["ThumbnailContainerSize"]
       60 LOADN                            R1 60
       61 SETTABLEKS                       R1 R0 K20 ["GridCellHeightMin"]
       63 LOADN                            R1 200
       64 SETTABLEKS                       R1 R0 K21 ["GridCellHeightMax"]
       66 GETIMPORT                        R1 K24 [UDim2.fromOffset]
       68 LOADN                            R2 10
       69 LOADN                            R3 10
       70 CALL                             R1 2 1
       71 SETTABLEKS                       R1 R0 K25 ["GridCellPadding"]
       73 LOADN                            R1 200
       74 SETTABLEKS                       R1 R0 K26 ["SortOptionsWidth"]
       76 LOADN                            R1 250
       77 SETTABLEKS                       R1 R0 K27 ["FilterTypesWidth"]
       79 LOADN                            R1 64
       80 SETTABLEKS                       R1 R0 K28 ["FilterTypesHeight"]
       82 GETIMPORT                        R1 K31 [Vector2.new]
       84 LOADK                            R2 K32 [0.5]
       85 LOADK                            R3 K32 [0.5]
       86 CALL                             R1 2 1
       87 SETTABLEKS                       R1 R0 K33 ["AnchorCenter"]
       89 GETIMPORT                        R1 K35 [UDim2.fromScale]
       91 LOADK                            R2 K32 [0.5]
       92 LOADK                            R3 K32 [0.5]
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K36 ["PositionCenter"]
       96 GETIMPORT                        R1 K31 [Vector2.new]
       98 LOADN                            R2 128
       99 LOADN                            R3 104
      100 CALL                             R1 2 1
      101 SETTABLEKS                       R1 R0 K37 ["QuickShareDialogSize"]
      103 GETIMPORT                        R1 K24 [UDim2.fromOffset]
      105 LOADN                            R2 96
      106 LOADN                            R3 125
      107 CALL                             R1 2 1
      108 SETTABLEKS                       R1 R0 K38 ["QuickShareDropdownSize"]
      110 GETIMPORT                        R1 K31 [Vector2.new]
      112 LOADN                            R2 100
      113 LOADN                            R3 200
      114 CALL                             R1 2 1
      115 SETTABLEKS                       R1 R0 K39 ["QuickSharePermissionsDropdownSize"]
      117 GETIMPORT                        R1 K31 [Vector2.new]
      119 LOADN                            R2 159
      120 LOADN                            R3 100
      121 CALL                             R1 2 1
      122 SETTABLEKS                       R1 R0 K40 ["ConfirmDialogSize"]
      124 GETIMPORT                        R1 K31 [Vector2.new]
      126 LOADN                            R2 144
      127 LOADN                            R3 224
      128 CALL                             R1 2 1
      129 SETTABLEKS                       R1 R0 K41 ["MoveDialogSize"]
      131 LOADN                            R1 180
      132 SETTABLEKS                       R1 R0 K42 ["ContextMenuWidth"]
      134 GETIMPORT                        R1 K24 [UDim2.fromOffset]
      136 GETTABLEKS                       R2 R0 K5 ["IconWidthXSmall"]
      138 GETTABLEKS                       R3 R0 K5 ["IconWidthXSmall"]
      140 CALL                             R1 2 1
      141 SETTABLEKS                       R1 R0 K43 ["IconSizeXSmall"]
      143 GETIMPORT                        R1 K24 [UDim2.fromOffset]
      145 GETTABLEKS                       R2 R0 K6 ["IconWidth"]
      147 GETTABLEKS                       R3 R0 K6 ["IconWidth"]
      149 CALL                             R1 2 1
      150 SETTABLEKS                       R1 R0 K44 ["IconSize"]
      152 GETIMPORT                        R1 K24 [UDim2.fromOffset]
      154 GETTABLEKS                       R2 R0 K7 ["IconWidthXLarge"]
      156 GETTABLEKS                       R3 R0 K7 ["IconWidthXLarge"]
      158 CALL                             R1 2 1
      159 SETTABLEKS                       R1 R0 K45 ["IconSizeXLarge"]
      161 RETURN                           R0 1
