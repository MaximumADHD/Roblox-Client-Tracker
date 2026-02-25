MAIN:
        0 PREPVARARGS                      0
        1 LOADN                            R0 11
        2 SETGLOBAL                        R0 K0 ["THUMBNAIL_WIDTH"]
        4 LOADN                            R0 150
        5 SETGLOBAL                        R0 K1 ["THUMBNAIL_HEIGHT"]
        7 DUPTABLE                         R0 K34 [{"MENU_BAR_WIDTH", "MENU_ENTRY_HEIGHT", "FRAME_PADDING", "CENTER_GUTTER", "ELEMENT_PADDING", "RADIO_BUTTON_SIZE", "RADIO_BUTTON_PADDING", "CHECKBOX_SIZE", "CHECKBOX_PADDING", "BUTTON_WIDTH", "BUTTON_HEIGHT", "HEADER_HEIGHT", "BLUE", "BLUE_DISABLED", "BLACK", "WHITE", "ROUNDED_BACKGROUND_IMAGE", "ROUNDED_BORDER_IMAGE", "ROUNDED_FRAME_SLICE", "ROUND_TEXT_BOX_DEFAULT_HEIGHT", "GRADIENT_IMAGE", "GRADIENT_RECT_SIZE", "ERROR_IMAGE", "ERROR_COLOR", "WARNING_IMAGE", "MAX_THUMBNAILS", "VIDEO_PLACEHOLDER", "THUMBNAIL_PREVIEW_SIZE", "THUMBNAIL_SIZE", "BAD_REQUEST", "IMAGE_TYPES", "TEXT_SIZE"}]
        8 LOADN                            R1 192
        9 SETTABLEKS                       R1 R0 K2 ["MENU_BAR_WIDTH"]
       11 LOADN                            R1 42
       12 SETTABLEKS                       R1 R0 K3 ["MENU_ENTRY_HEIGHT"]
       14 LOADN                            R1 36
       15 SETTABLEKS                       R1 R0 K4 ["FRAME_PADDING"]
       17 LOADN                            R1 180
       18 SETTABLEKS                       R1 R0 K5 ["CENTER_GUTTER"]
       20 LOADN                            R1 32
       21 SETTABLEKS                       R1 R0 K6 ["ELEMENT_PADDING"]
       23 LOADN                            R1 16
       24 SETTABLEKS                       R1 R0 K7 ["RADIO_BUTTON_SIZE"]
       26 LOADN                            R1 10
       27 SETTABLEKS                       R1 R0 K8 ["RADIO_BUTTON_PADDING"]
       29 LOADN                            R1 20
       30 SETTABLEKS                       R1 R0 K9 ["CHECKBOX_SIZE"]
       32 LOADN                            R1 8
       33 SETTABLEKS                       R1 R0 K10 ["CHECKBOX_PADDING"]
       35 LOADN                            R1 125
       36 SETTABLEKS                       R1 R0 K11 ["BUTTON_WIDTH"]
       38 LOADN                            R1 35
       39 SETTABLEKS                       R1 R0 K12 ["BUTTON_HEIGHT"]
       41 LOADN                            R1 45
       42 SETTABLEKS                       R1 R0 K13 ["HEADER_HEIGHT"]
       44 GETIMPORT                        R1 K37 [Color3.fromRGB]
       46 LOADN                            R2 0
       47 LOADN                            R3 162
       48 LOADN                            R4 255
       49 CALL                             R1 3 1
       50 SETTABLEKS                       R1 R0 K14 ["BLUE"]
       52 GETIMPORT                        R1 K37 [Color3.fromRGB]
       54 LOADN                            R2 153
       55 LOADN                            R3 218
       56 LOADN                            R4 255
       57 CALL                             R1 3 1
       58 SETTABLEKS                       R1 R0 K15 ["BLUE_DISABLED"]
       60 GETIMPORT                        R1 K39 [Color3.new]
       62 LOADN                            R2 0
       63 LOADN                            R3 0
       64 LOADN                            R4 0
       65 CALL                             R1 3 1
       66 SETTABLEKS                       R1 R0 K16 ["BLACK"]
       68 GETIMPORT                        R1 K39 [Color3.new]
       70 LOADN                            R2 1
       71 LOADN                            R3 1
       72 LOADN                            R4 1
       73 CALL                             R1 3 1
       74 SETTABLEKS                       R1 R0 K17 ["WHITE"]
       76 LOADK                            R1 K40 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       77 SETTABLEKS                       R1 R0 K18 ["ROUNDED_BACKGROUND_IMAGE"]
       79 LOADK                            R1 K41 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       80 SETTABLEKS                       R1 R0 K19 ["ROUNDED_BORDER_IMAGE"]
       82 GETIMPORT                        R1 K43 [Rect.new]
       84 LOADN                            R2 3
       85 LOADN                            R3 3
       86 LOADN                            R4 13
       87 LOADN                            R5 13
       88 CALL                             R1 4 1
       89 SETTABLEKS                       R1 R0 K20 ["ROUNDED_FRAME_SLICE"]
       91 LOADN                            R1 42
       92 SETTABLEKS                       R1 R0 K21 ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"]
       94 LOADK                            R1 K44 ["rbxasset://textures/gradient.png"]
       95 SETTABLEKS                       R1 R0 K22 ["GRADIENT_IMAGE"]
       97 GETIMPORT                        R1 K46 [Vector2.new]
       99 LOADN                            R2 0
      100 LOADN                            R3 0
      101 CALL                             R1 2 1
      102 SETTABLEKS                       R1 R0 K23 ["GRADIENT_RECT_SIZE"]
      104 LOADK                            R1 K47 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      105 SETTABLEKS                       R1 R0 K24 ["ERROR_IMAGE"]
      107 GETIMPORT                        R1 K39 [Color3.new]
      109 LOADN                            R2 1
      110 LOADK                            R3 K48 [0.266]
      111 LOADK                            R4 K48 [0.266]
      112 CALL                             R1 3 1
      113 SETTABLEKS                       R1 R0 K25 ["ERROR_COLOR"]
      115 LOADK                            R1 K49 ["rbxasset://textures/GameSettings/Warning.png"]
      116 SETTABLEKS                       R1 R0 K26 ["WARNING_IMAGE"]
      118 LOADN                            R1 10
      119 SETTABLEKS                       R1 R0 K27 ["MAX_THUMBNAILS"]
      121 LOADK                            R1 K50 ["rbxasset://textures/GameSettings/placeholder.png"]
      122 SETTABLEKS                       R1 R0 K28 ["VIDEO_PLACEHOLDER"]
      124 GETIMPORT                        R1 K52 [UDim2.new]
      126 LOADN                            R2 0
      127 GETGLOBAL                        R4 K0 ["THUMBNAIL_WIDTH"]
      129 MULK                             R3 R4 K53 [2]
      130 LOADN                            R4 0
      131 GETGLOBAL                        R6 K1 ["THUMBNAIL_HEIGHT"]
      133 MULK                             R5 R6 K53 [2]
      134 CALL                             R1 4 1
      135 SETTABLEKS                       R1 R0 K29 ["THUMBNAIL_PREVIEW_SIZE"]
      137 GETIMPORT                        R1 K52 [UDim2.new]
      139 LOADN                            R2 0
      140 GETGLOBAL                        R3 K0 ["THUMBNAIL_WIDTH"]
      142 LOADN                            R4 0
      143 GETGLOBAL                        R5 K1 ["THUMBNAIL_HEIGHT"]
      145 CALL                             R1 4 1
      146 SETTABLEKS                       R1 R0 K30 ["THUMBNAIL_SIZE"]
      148 LOADN                            R1 144
      149 SETTABLEKS                       R1 R0 K31 ["BAD_REQUEST"]
      151 NEWTABLE                         R1 0 3
      153 LOADK                            R2 K54 ["jpg"]
      154 LOADK                            R3 K55 ["jpeg"]
      155 LOADK                            R4 K56 ["png"]
      156 SETLIST                          R1 R2 3 [1]
      158 SETTABLEKS                       R1 R0 K32 ["IMAGE_TYPES"]
      160 LOADN                            R1 22
      161 SETTABLEKS                       R1 R0 K33 ["TEXT_SIZE"]
      163 RETURN                           R0 1
