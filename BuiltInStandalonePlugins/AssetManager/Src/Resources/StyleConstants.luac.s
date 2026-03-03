MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K31 [{"AMR_LOADING_BAR_THICKNESS", "AMR_PADDING_SMALL", "AMR_PADDING", "AMR_PADDING_LARGE", "AMR_PADDING_XLARGE", "AMR_ICON_WIDTH_XSMALL", "AMR_ICON_WIDTH_SMALL", "AMR_ICON_WIDTH", "AMR_ICON_WIDTH_XLARGE", "AMR_SIDEBAR_TOGGLE_PADDING", "AMR_ITEMROW_DEFAULT_HEIGHT", "AMR_SHIMMER_ROTATION", "AMR_TOPBAR_HEIGHT", "AMR_EXPLORERROW_HEIGHT", "AMR_HEADERROW_HEIGHT", "AMR_HEADERBUTTON_SIZE", "AMR_CELLDATA_HEIGHT", "BASE_WIDTH", "HEIGHT", "THUMBNAIL_CONTAINER_SIZE", "AMR_GRIDCELL_HEIGHT_MIN", "AMR_GRIDCELL_HEIGHT_MAX", "AMR_SORTOPTIONS_WIDTH", "AMR_FILTERTYPES_WIDTH", "AMR_FILTERTYPES_HEIGHT", "AMR_ANCHOR_CENTER", "AMR_POSITION_CENTER", "AMR_QUICKSHARE_DIALOG_SIZE", "AMR_QUICKSHARE_DROPDOWN_SIZE", "AMR_QUICKSHARE_PERMISSIONS_DROPDOWN_SIZE", "AMR_CONFIRM_DIALOG_SIZE"}]
        2 LOADN                            R1 8
        3 SETTABLEKS                       R1 R0 K0 ["AMR_LOADING_BAR_THICKNESS"]
        5 LOADN                            R1 5
        6 SETTABLEKS                       R1 R0 K1 ["AMR_PADDING_SMALL"]
        8 LOADN                            R1 10
        9 SETTABLEKS                       R1 R0 K2 ["AMR_PADDING"]
       11 LOADN                            R1 15
       12 SETTABLEKS                       R1 R0 K3 ["AMR_PADDING_LARGE"]
       14 LOADN                            R1 20
       15 SETTABLEKS                       R1 R0 K4 ["AMR_PADDING_XLARGE"]
       17 LOADN                            R1 12
       18 SETTABLEKS                       R1 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
       20 LOADN                            R1 14
       21 SETTABLEKS                       R1 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
       23 LOADN                            R1 16
       24 SETTABLEKS                       R1 R0 K7 ["AMR_ICON_WIDTH"]
       26 LOADN                            R1 20
       27 SETTABLEKS                       R1 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
       29 LOADN                            R1 28
       30 SETTABLEKS                       R1 R0 K9 ["AMR_SIDEBAR_TOGGLE_PADDING"]
       32 LOADN                            R1 50
       33 SETTABLEKS                       R1 R0 K10 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
       35 LOADN                            R1 45
       36 SETTABLEKS                       R1 R0 K11 ["AMR_SHIMMER_ROTATION"]
       38 LOADN                            R1 42
       39 SETTABLEKS                       R1 R0 K12 ["AMR_TOPBAR_HEIGHT"]
       41 LOADN                            R1 24
       42 SETTABLEKS                       R1 R0 K13 ["AMR_EXPLORERROW_HEIGHT"]
       44 LOADN                            R1 25
       45 SETTABLEKS                       R1 R0 K14 ["AMR_HEADERROW_HEIGHT"]
       47 GETIMPORT                        R1 K34 [UDim2.fromOffset]
       49 LOADN                            R2 25
       50 LOADN                            R3 25
       51 CALL                             R1 2 1
       52 SETTABLEKS                       R1 R0 K15 ["AMR_HEADERBUTTON_SIZE"]
       54 LOADN                            R1 30
       55 SETTABLEKS                       R1 R0 K16 ["AMR_CELLDATA_HEIGHT"]
       57 LOADN                            R1 20
       58 SETTABLEKS                       R1 R0 K17 ["BASE_WIDTH"]
       60 LOADN                            R1 40
       61 SETTABLEKS                       R1 R0 K18 ["HEIGHT"]
       63 LOADN                            R1 35
       64 SETTABLEKS                       R1 R0 K19 ["THUMBNAIL_CONTAINER_SIZE"]
       66 LOADN                            R1 60
       67 SETTABLEKS                       R1 R0 K20 ["AMR_GRIDCELL_HEIGHT_MIN"]
       69 LOADN                            R1 200
       70 SETTABLEKS                       R1 R0 K21 ["AMR_GRIDCELL_HEIGHT_MAX"]
       72 LOADN                            R1 200
       73 SETTABLEKS                       R1 R0 K22 ["AMR_SORTOPTIONS_WIDTH"]
       75 LOADN                            R1 250
       76 SETTABLEKS                       R1 R0 K23 ["AMR_FILTERTYPES_WIDTH"]
       78 LOADN                            R1 64
       79 SETTABLEKS                       R1 R0 K24 ["AMR_FILTERTYPES_HEIGHT"]
       81 GETIMPORT                        R1 K37 [Vector2.new]
       83 LOADK                            R2 K38 [0.5]
       84 LOADK                            R3 K38 [0.5]
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K25 ["AMR_ANCHOR_CENTER"]
       88 GETIMPORT                        R1 K40 [UDim2.fromScale]
       90 LOADK                            R2 K38 [0.5]
       91 LOADK                            R3 K38 [0.5]
       92 CALL                             R1 2 1
       93 SETTABLEKS                       R1 R0 K26 ["AMR_POSITION_CENTER"]
       95 GETIMPORT                        R1 K37 [Vector2.new]
       97 LOADN                            R2 128
       98 LOADN                            R3 104
       99 CALL                             R1 2 1
      100 SETTABLEKS                       R1 R0 K27 ["AMR_QUICKSHARE_DIALOG_SIZE"]
      102 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      104 LOADN                            R2 96
      105 LOADN                            R3 125
      106 CALL                             R1 2 1
      107 SETTABLEKS                       R1 R0 K28 ["AMR_QUICKSHARE_DROPDOWN_SIZE"]
      109 GETIMPORT                        R1 K37 [Vector2.new]
      111 LOADN                            R2 100
      112 LOADN                            R3 200
      113 CALL                             R1 2 1
      114 SETTABLEKS                       R1 R0 K29 ["AMR_QUICKSHARE_PERMISSIONS_DROPDOWN_SIZE"]
      116 GETIMPORT                        R1 K37 [Vector2.new]
      118 LOADN                            R2 159
      119 LOADN                            R3 100
      120 CALL                             R1 2 1
      121 SETTABLEKS                       R1 R0 K30 ["AMR_CONFIRM_DIALOG_SIZE"]
      123 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      125 GETTABLEKS                       R2 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
      127 GETTABLEKS                       R3 R0 K5 ["AMR_ICON_WIDTH_XSMALL"]
      129 CALL                             R1 2 1
      130 SETTABLEKS                       R1 R0 K41 ["AMR_ICON_SIZE_XSMALL"]
      132 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      134 GETTABLEKS                       R2 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
      136 GETTABLEKS                       R3 R0 K6 ["AMR_ICON_WIDTH_SMALL"]
      138 CALL                             R1 2 1
      139 SETTABLEKS                       R1 R0 K42 ["AMR_ICON_SIZE_SMALL"]
      141 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      143 GETTABLEKS                       R2 R0 K7 ["AMR_ICON_WIDTH"]
      145 GETTABLEKS                       R3 R0 K7 ["AMR_ICON_WIDTH"]
      147 CALL                             R1 2 1
      148 SETTABLEKS                       R1 R0 K43 ["AMR_ICON_SIZE"]
      150 GETIMPORT                        R1 K34 [UDim2.fromOffset]
      152 GETTABLEKS                       R2 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
      154 GETTABLEKS                       R3 R0 K8 ["AMR_ICON_WIDTH_XLARGE"]
      156 CALL                             R1 2 1
      157 SETTABLEKS                       R1 R0 K44 ["AMR_ICON_SIZE_XLARGE"]
      159 RETURN                           R0 1
