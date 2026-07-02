MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["Users"]
        4 SETTABLEKS                       R1 R0 K1 ["COLLABORATORTYPE_USER"]
        6 LOADK                            R1 K2 ["Groups"]
        7 SETTABLEKS                       R1 R0 K3 ["COLLABORATORTYPE_GROUP"]
        9 LOADK                            R1 K4 ["edit"]
       10 SETTABLEKS                       R1 R0 K5 ["LINKTYPE_EDIT"]
       12 LOADK                            R1 K6 ["teamTest"]
       13 SETTABLEKS                       R1 R0 K7 ["LINKTYPE_TEAM_TEST"]
       15 LOADK                            R1 K8 ["primary"]
       16 SETTABLEKS                       R1 R0 K9 ["BUTTONTYPE_PRIMARY"]
       18 LOADK                            R1 K10 ["secondary"]
       19 SETTABLEKS                       R1 R0 K11 ["BUTTONTYPE_SECONDARY"]
       21 LOADN                            R1 4
       22 SETTABLEKS                       R1 R0 K12 ["COPIED_INDICATOR_DURATION"]
       24 LOADN                            R1 192
       25 SETTABLEKS                       R1 R0 K13 ["MENU_BAR_WIDTH"]
       27 LOADN                            R1 42
       28 SETTABLEKS                       R1 R0 K14 ["MENU_ENTRY_HEIGHT"]
       30 LOADN                            R1 36
       31 SETTABLEKS                       R1 R0 K15 ["FRAME_PADDING"]
       33 LOADN                            R1 180
       34 SETTABLEKS                       R1 R0 K16 ["CENTER_GUTTER"]
       36 LOADN                            R1 32
       37 SETTABLEKS                       R1 R0 K17 ["ELEMENT_PADDING"]
       39 LOADN                            R1 20
       40 SETTABLEKS                       R1 R0 K18 ["RADIO_BUTTON_SIZE"]
       42 LOADN                            R1 10
       43 SETTABLEKS                       R1 R0 K19 ["RADIO_BUTTON_PADDING"]
       45 LOADN                            R1 20
       46 SETTABLEKS                       R1 R0 K20 ["CHECKBOX_SIZE"]
       48 LOADN                            R1 8
       49 SETTABLEKS                       R1 R0 K21 ["CHECKBOX_PADDING"]
       51 LOADN                            R1 125
       52 SETTABLEKS                       R1 R0 K22 ["BUTTON_WIDTH"]
       54 LOADN                            R1 35
       55 SETTABLEKS                       R1 R0 K23 ["BUTTON_HEIGHT"]
       57 LOADN                            R1 45
       58 SETTABLEKS                       R1 R0 K24 ["HEADER_HEIGHT"]
       60 GETIMPORT                        R1 K27 [Color3.fromRGB]
       62 LOADN                            R2 0
       63 LOADN                            R3 162
       64 LOADN                            R4 255
       65 CALL                             R1 3 1
       66 SETTABLEKS                       R1 R0 K28 ["BLUE"]
       68 GETIMPORT                        R1 K27 [Color3.fromRGB]
       70 LOADN                            R2 153
       71 LOADN                            R3 218
       72 LOADN                            R4 255
       73 CALL                             R1 3 1
       74 SETTABLEKS                       R1 R0 K29 ["BLUE_DISABLED"]
       76 GETIMPORT                        R1 K31 [Color3.new]
       78 LOADN                            R2 0
       79 LOADN                            R3 0
       80 LOADN                            R4 0
       81 CALL                             R1 3 1
       82 SETTABLEKS                       R1 R0 K32 ["BLACK"]
       84 GETIMPORT                        R1 K31 [Color3.new]
       86 LOADN                            R2 1
       87 LOADN                            R3 1
       88 LOADN                            R4 1
       89 CALL                             R1 3 1
       90 SETTABLEKS                       R1 R0 K33 ["WHITE"]
       92 LOADK                            R1 K34 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       93 SETTABLEKS                       R1 R0 K35 ["ROUNDED_BACKGROUND_IMAGE"]
       95 LOADK                            R1 K36 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       96 SETTABLEKS                       R1 R0 K37 ["ROUNDED_BORDER_IMAGE"]
       98 GETIMPORT                        R1 K39 [Rect.new]
      100 LOADN                            R2 3
      101 LOADN                            R3 3
      102 LOADN                            R4 13
      103 LOADN                            R5 13
      104 CALL                             R1 4 1
      105 SETTABLEKS                       R1 R0 K40 ["ROUNDED_FRAME_SLICE"]
      107 LOADN                            R1 42
      108 SETTABLEKS                       R1 R0 K41 ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"]
      110 LOADK                            R1 K42 ["rbxasset://textures/gradient.png"]
      111 SETTABLEKS                       R1 R0 K43 ["GRADIENT_IMAGE"]
      113 GETIMPORT                        R1 K45 [Vector2.new]
      115 LOADN                            R2 512
      116 LOADN                            R3 256
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K46 ["GRADIENT_RECT_SIZE"]
      120 LOADK                            R1 K47 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      121 SETTABLEKS                       R1 R0 K48 ["ERROR_IMAGE"]
      123 GETIMPORT                        R1 K31 [Color3.new]
      125 LOADN                            R2 1
      126 LOADK                            R3 K49 [0.266]
      127 LOADK                            R4 K49 [0.266]
      128 CALL                             R1 3 1
      129 SETTABLEKS                       R1 R0 K50 ["ERROR_COLOR"]
      131 LOADK                            R1 K51 ["rbxasset://textures/GameSettings/Warning.png"]
      132 SETTABLEKS                       R1 R0 K52 ["WARNING_IMAGE"]
      134 LOADN                            R1 10
      135 SETTABLEKS                       R1 R0 K53 ["MAX_THUMBNAILS"]
      137 LOADK                            R1 K54 ["rbxasset://textures/GameSettings/placeholder.png"]
      138 SETTABLEKS                       R1 R0 K55 ["VIDEO_PLACEHOLDER"]
      140 GETIMPORT                        R1 K57 [UDim2.new]
      142 LOADN                            R2 0
      143 LOADN                            R3 267
      144 LOADN                            R4 0
      145 LOADN                            R5 150
      146 CALL                             R1 4 1
      147 SETTABLEKS                       R1 R0 K58 ["THUMBNAIL_SIZE"]
      149 LOADN                            R1 400
      150 SETTABLEKS                       R1 R0 K59 ["BAD_REQUEST"]
      152 NEWTABLE                         R1 0 3
      154 LOADK                            R2 K60 ["jpg"]
      155 LOADK                            R3 K61 ["jpeg"]
      156 LOADK                            R4 K62 ["png"]
      157 SETLIST                          R1 R2 3 [1]
      159 SETTABLEKS                       R1 R0 K63 ["IMAGE_TYPES"]
      161 LOADN                            R1 22
      162 SETTABLEKS                       R1 R0 K64 ["TEXT_SIZE"]
      164 GETIMPORT                        R1 K68 [Enum.Font.BuilderSansBold]
      166 SETTABLEKS                       R1 R0 K69 ["FOUNDATION_BUTTON_FONT"]
      168 LOADN                            R1 17
      169 SETTABLEKS                       R1 R0 K70 ["FOUNDATION_BUTTON_TEXT_SIZE"]
      171 LOADN                            R1 20
      172 SETTABLEKS                       R1 R0 K71 ["FOUNDATION_BUTTON_ICON_WIDTH"]
      174 LOADN                            R1 8
      175 SETTABLEKS                       R1 R0 K72 ["FOUNDATION_BUTTON_ICON_TEXT_PADDING"]
      177 LOADN                            R1 24
      178 SETTABLEKS                       R1 R0 K73 ["FOUNDATION_BUTTON_PADDING"]
      180 RETURN                           R0 1
