MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADN                            R1 8
        4 SETTABLEKS                       R1 R0 K0 ["AMR_LOADING_BAR_THICKNESS"]
        6 LOADN                            R1 5
        7 SETTABLEKS                       R1 R0 K1 ["AMR_PADDING_SMALL"]
        9 LOADN                            R1 10
       10 SETTABLEKS                       R1 R0 K2 ["AMR_PADDING"]
       12 LOADN                            R1 15
       13 SETTABLEKS                       R1 R0 K3 ["AMR_PADDING_LARGE"]
       15 LOADN                            R1 20
       16 SETTABLEKS                       R1 R0 K4 ["AMR_PADDING_XLARGE"]
       18 LOADN                            R1 12
       19 SETTABLEKS                       R1 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
       21 LOADN                            R1 14
       22 SETTABLEKS                       R1 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
       24 LOADN                            R1 16
       25 SETTABLEKS                       R1 R0 K7 ["AMR_ICON_WIDTH"]
       27 LOADN                            R1 20
       28 SETTABLEKS                       R1 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
       30 LOADN                            R1 28
       31 SETTABLEKS                       R1 R0 K9 ["AMR_SIDEBAR_TOGGLE_PADDING"]
       33 LOADN                            R1 50
       34 SETTABLEKS                       R1 R0 K10 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
       36 LOADN                            R1 45
       37 SETTABLEKS                       R1 R0 K11 ["AMR_SHIMMER_ROTATION"]
       39 LOADN                            R1 20
       40 SETTABLEKS                       R1 R0 K12 ["AMR_LIST_THUMBNAIL_SIZE"]
       42 LOADK                            R1 K13 [0.75]
       43 SETTABLEKS                       R1 R0 K14 ["AMR_GRID_THUMBNAIL_SCALE"]
       45 LOADN                            R1 4
       46 SETTABLEKS                       R1 R0 K15 ["AMR_GRID_THUMBNAIL_OFFSET"]
       48 LOADN                            R1 42
       49 SETTABLEKS                       R1 R0 K16 ["AMR_TOPBAR_HEIGHT"]
       51 LOADN                            R1 24
       52 SETTABLEKS                       R1 R0 K17 ["AMR_EXPLORERROW_HEIGHT"]
       54 LOADN                            R1 25
       55 SETTABLEKS                       R1 R0 K18 ["AMR_HEADERROW_HEIGHT"]
       57 GETIMPORT                        R1 K21 [UDim2.fromOffset]
       59 LOADN                            R2 25
       60 LOADN                            R3 25
       61 CALL                             R1 2 1
       62 SETTABLEKS                       R1 R0 K22 ["AMR_HEADERBUTTON_SIZE"]
       64 LOADN                            R1 30
       65 SETTABLEKS                       R1 R0 K23 ["AMR_CELLDATA_HEIGHT"]
       67 LOADN                            R1 20
       68 SETTABLEKS                       R1 R0 K24 ["BASE_WIDTH"]
       70 LOADN                            R1 40
       71 SETTABLEKS                       R1 R0 K25 ["HEIGHT"]
       73 LOADN                            R1 35
       74 SETTABLEKS                       R1 R0 K26 ["THUMBNAIL_CONTAINER_SIZE"]
       76 LOADN                            R1 60
       77 SETTABLEKS                       R1 R0 K27 ["AMR_GRIDCELL_HEIGHT_MIN"]
       79 LOADN                            R1 200
       80 SETTABLEKS                       R1 R0 K28 ["AMR_GRIDCELL_HEIGHT_MAX"]
       82 GETIMPORT                        R1 K21 [UDim2.fromOffset]
       84 LOADN                            R2 10
       85 LOADN                            R3 10
       86 CALL                             R1 2 1
       87 SETTABLEKS                       R1 R0 K29 ["AMR_GRIDCELL_PADDING"]
       89 LOADN                            R1 200
       90 SETTABLEKS                       R1 R0 K30 ["AMR_SORTOPTIONS_WIDTH"]
       92 LOADN                            R1 250
       93 SETTABLEKS                       R1 R0 K31 ["AMR_FILTERTYPES_WIDTH"]
       95 LOADN                            R1 64
       96 SETTABLEKS                       R1 R0 K32 ["AMR_FILTERTYPES_HEIGHT"]
       98 GETIMPORT                        R1 K35 [Vector2.new]
      100 LOADK                            R2 K36 [0.5]
      101 LOADK                            R3 K36 [0.5]
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K37 ["AMR_ANCHOR_CENTER"]
      105 GETIMPORT                        R1 K39 [UDim2.fromScale]
      107 LOADK                            R2 K36 [0.5]
      108 LOADK                            R3 K36 [0.5]
      109 CALL                             R1 2 1
      110 SETTABLEKS                       R1 R0 K40 ["AMR_POSITION_CENTER"]
      112 GETIMPORT                        R1 K35 [Vector2.new]
      114 LOADN                            R2 128
      115 LOADN                            R3 104
      116 CALL                             R1 2 1
      117 SETTABLEKS                       R1 R0 K41 ["AMR_QUICKSHARE_DIALOG_SIZE"]
      119 GETIMPORT                        R1 K21 [UDim2.fromOffset]
      121 LOADN                            R2 96
      122 LOADN                            R3 125
      123 CALL                             R1 2 1
      124 SETTABLEKS                       R1 R0 K42 ["AMR_QUICKSHARE_DROPDOWN_SIZE"]
      126 GETIMPORT                        R1 K35 [Vector2.new]
      128 LOADN                            R2 100
      129 LOADN                            R3 200
      130 CALL                             R1 2 1
      131 SETTABLEKS                       R1 R0 K43 ["AMR_QUICKSHARE_PERMISSIONS_DROPDOWN_SIZE"]
      133 GETIMPORT                        R1 K35 [Vector2.new]
      135 LOADN                            R2 159
      136 LOADN                            R3 100
      137 CALL                             R1 2 1
      138 SETTABLEKS                       R1 R0 K44 ["AMR_CONFIRM_DIALOG_SIZE"]
      140 GETIMPORT                        R1 K21 [UDim2.fromOffset]
      142 GETTABLEKS                       R2 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
      144 GETTABLEKS                       R3 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
      146 CALL                             R1 2 1
      147 SETTABLEKS                       R1 R0 K45 ["AMR_ICON_SIZE_XSMALL"]
      149 GETIMPORT                        R1 K21 [UDim2.fromOffset]
      151 GETTABLEKS                       R2 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
      153 GETTABLEKS                       R3 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
      155 CALL                             R1 2 1
      156 SETTABLEKS                       R1 R0 K46 ["AMR_ICON_SIZE_SMALL"]
      158 GETIMPORT                        R1 K21 [UDim2.fromOffset]
      160 GETTABLEKS                       R2 R0 K7 ["AMR_ICON_WIDTH"]
      162 GETTABLEKS                       R3 R0 K7 ["AMR_ICON_WIDTH"]
      164 CALL                             R1 2 1
      165 SETTABLEKS                       R1 R0 K47 ["AMR_ICON_SIZE"]
      167 GETIMPORT                        R1 K21 [UDim2.fromOffset]
      169 GETTABLEKS                       R2 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
      171 GETTABLEKS                       R3 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
      173 CALL                             R1 2 1
      174 SETTABLEKS                       R1 R0 K48 ["AMR_ICON_SIZE_XLARGE"]
      176 RETURN                           R0 1
