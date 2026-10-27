MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["Users"]
        4 SETTABLEKS                       R1 R0 K1 ["COLLABORATORTYPE_USER"]
        6 LOADK                            R1 K2 ["Groups"]
        7 SETTABLEKS                       R1 R0 K3 ["COLLABORATORTYPE_GROUP"]
        9 LOADK                            R1 K4 ["Access"]
       10 SETTABLEKS                       R1 R0 K5 ["AUDIENCE_TAB_ACCESS"]
       12 LOADK                            R1 K6 ["EarlyTesters"]
       13 SETTABLEKS                       R1 R0 K7 ["AUDIENCE_TAB_EARLY_TESTERS"]
       15 LOADN                            R1 4
       16 SETTABLEKS                       R1 R0 K8 ["COPIED_INDICATOR_DURATION"]
       18 LOADN                            R1 192
       19 SETTABLEKS                       R1 R0 K9 ["MENU_BAR_WIDTH"]
       21 LOADN                            R1 42
       22 SETTABLEKS                       R1 R0 K10 ["MENU_ENTRY_HEIGHT"]
       24 LOADN                            R1 36
       25 SETTABLEKS                       R1 R0 K11 ["FRAME_PADDING"]
       27 LOADN                            R1 180
       28 SETTABLEKS                       R1 R0 K12 ["CENTER_GUTTER"]
       30 LOADN                            R1 32
       31 SETTABLEKS                       R1 R0 K13 ["ELEMENT_PADDING"]
       33 LOADN                            R1 20
       34 SETTABLEKS                       R1 R0 K14 ["RADIO_BUTTON_SIZE"]
       36 LOADN                            R1 10
       37 SETTABLEKS                       R1 R0 K15 ["RADIO_BUTTON_PADDING"]
       39 LOADN                            R1 20
       40 SETTABLEKS                       R1 R0 K16 ["CHECKBOX_SIZE"]
       42 LOADN                            R1 8
       43 SETTABLEKS                       R1 R0 K17 ["CHECKBOX_PADDING"]
       45 LOADN                            R1 125
       46 SETTABLEKS                       R1 R0 K18 ["BUTTON_WIDTH"]
       48 LOADN                            R1 35
       49 SETTABLEKS                       R1 R0 K19 ["BUTTON_HEIGHT"]
       51 LOADN                            R1 45
       52 SETTABLEKS                       R1 R0 K20 ["HEADER_HEIGHT"]
       54 GETIMPORT                        R1 K23 [Color3.fromRGB]
       56 LOADN                            R2 0
       57 LOADN                            R3 162
       58 LOADN                            R4 255
       59 CALL                             R1 3 1
       60 SETTABLEKS                       R1 R0 K24 ["BLUE"]
       62 GETIMPORT                        R1 K23 [Color3.fromRGB]
       64 LOADN                            R2 153
       65 LOADN                            R3 218
       66 LOADN                            R4 255
       67 CALL                             R1 3 1
       68 SETTABLEKS                       R1 R0 K25 ["BLUE_DISABLED"]
       70 GETIMPORT                        R1 K27 [Color3.new]
       72 LOADN                            R2 0
       73 LOADN                            R3 0
       74 LOADN                            R4 0
       75 CALL                             R1 3 1
       76 SETTABLEKS                       R1 R0 K28 ["BLACK"]
       78 GETIMPORT                        R1 K27 [Color3.new]
       80 LOADN                            R2 1
       81 LOADN                            R3 1
       82 LOADN                            R4 1
       83 CALL                             R1 3 1
       84 SETTABLEKS                       R1 R0 K29 ["WHITE"]
       86 LOADK                            R1 K30 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       87 SETTABLEKS                       R1 R0 K31 ["ROUNDED_BACKGROUND_IMAGE"]
       89 LOADK                            R1 K32 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       90 SETTABLEKS                       R1 R0 K33 ["ROUNDED_BORDER_IMAGE"]
       92 GETIMPORT                        R1 K35 [Rect.new]
       94 LOADN                            R2 3
       95 LOADN                            R3 3
       96 LOADN                            R4 13
       97 LOADN                            R5 13
       98 CALL                             R1 4 1
       99 SETTABLEKS                       R1 R0 K36 ["ROUNDED_FRAME_SLICE"]
      101 LOADN                            R1 42
      102 SETTABLEKS                       R1 R0 K37 ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"]
      104 LOADK                            R1 K38 ["rbxasset://textures/gradient.png"]
      105 SETTABLEKS                       R1 R0 K39 ["GRADIENT_IMAGE"]
      107 GETIMPORT                        R1 K41 [Vector2.new]
      109 LOADN                            R2 512
      110 LOADN                            R3 256
      111 CALL                             R1 2 1
      112 SETTABLEKS                       R1 R0 K42 ["GRADIENT_RECT_SIZE"]
      114 LOADK                            R1 K43 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      115 SETTABLEKS                       R1 R0 K44 ["ERROR_IMAGE"]
      117 GETIMPORT                        R1 K27 [Color3.new]
      119 LOADN                            R2 1
      120 LOADK                            R3 K45 [0.266]
      121 LOADK                            R4 K45 [0.266]
      122 CALL                             R1 3 1
      123 SETTABLEKS                       R1 R0 K46 ["ERROR_COLOR"]
      125 LOADK                            R1 K47 ["rbxasset://textures/GameSettings/Warning.png"]
      126 SETTABLEKS                       R1 R0 K48 ["WARNING_IMAGE"]
      128 LOADN                            R1 10
      129 SETTABLEKS                       R1 R0 K49 ["MAX_THUMBNAILS"]
      131 LOADK                            R1 K50 ["rbxasset://textures/GameSettings/placeholder.png"]
      132 SETTABLEKS                       R1 R0 K51 ["VIDEO_PLACEHOLDER"]
      134 GETIMPORT                        R1 K53 [UDim2.new]
      136 LOADN                            R2 0
      137 LOADN                            R3 267
      138 LOADN                            R4 0
      139 LOADN                            R5 150
      140 CALL                             R1 4 1
      141 SETTABLEKS                       R1 R0 K54 ["THUMBNAIL_SIZE"]
      143 LOADN                            R1 400
      144 SETTABLEKS                       R1 R0 K55 ["BAD_REQUEST"]
      146 NEWTABLE                         R1 0 3
      148 LOADK                            R2 K56 ["jpg"]
      149 LOADK                            R3 K57 ["jpeg"]
      150 LOADK                            R4 K58 ["png"]
      151 SETLIST                          R1 R2 3 [1]
      153 SETTABLEKS                       R1 R0 K59 ["IMAGE_TYPES"]
      155 LOADN                            R1 22
      156 SETTABLEKS                       R1 R0 K60 ["TEXT_SIZE"]
      158 RETURN                           R0 1
