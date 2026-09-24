MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["Users"]
        4 SETTABLEKS                       R1 R0 K1 ["COLLABORATORTYPE_USER"]
        6 LOADK                            R1 K2 ["Groups"]
        7 SETTABLEKS                       R1 R0 K3 ["COLLABORATORTYPE_GROUP"]
        9 LOADK                            R1 K4 ["Editors"]
       10 SETTABLEKS                       R1 R0 K5 ["AUDIENCE_TAB_EDITORS"]
       12 LOADK                            R1 K6 ["PlayTesters"]
       13 SETTABLEKS                       R1 R0 K7 ["AUDIENCE_TAB_PLAY_TESTERS"]
       15 LOADK                            R1 K8 ["CommunityPlayers"]
       16 SETTABLEKS                       R1 R0 K9 ["AUDIENCE_TAB_COMMUNITY_PLAYERS"]
       18 LOADK                            R1 K10 ["edit"]
       19 SETTABLEKS                       R1 R0 K11 ["LINKTYPE_EDIT"]
       21 LOADK                            R1 K12 ["teamTest"]
       22 SETTABLEKS                       R1 R0 K13 ["LINKTYPE_TEAM_TEST"]
       24 LOADK                            R1 K14 ["primary"]
       25 SETTABLEKS                       R1 R0 K15 ["BUTTONTYPE_PRIMARY"]
       27 LOADK                            R1 K16 ["secondary"]
       28 SETTABLEKS                       R1 R0 K17 ["BUTTONTYPE_SECONDARY"]
       30 LOADN                            R1 4
       31 SETTABLEKS                       R1 R0 K18 ["COPIED_INDICATOR_DURATION"]
       33 LOADN                            R1 192
       34 SETTABLEKS                       R1 R0 K19 ["MENU_BAR_WIDTH"]
       36 LOADN                            R1 42
       37 SETTABLEKS                       R1 R0 K20 ["MENU_ENTRY_HEIGHT"]
       39 LOADN                            R1 36
       40 SETTABLEKS                       R1 R0 K21 ["FRAME_PADDING"]
       42 LOADN                            R1 180
       43 SETTABLEKS                       R1 R0 K22 ["CENTER_GUTTER"]
       45 LOADN                            R1 32
       46 SETTABLEKS                       R1 R0 K23 ["ELEMENT_PADDING"]
       48 LOADN                            R1 20
       49 SETTABLEKS                       R1 R0 K24 ["RADIO_BUTTON_SIZE"]
       51 LOADN                            R1 10
       52 SETTABLEKS                       R1 R0 K25 ["RADIO_BUTTON_PADDING"]
       54 LOADN                            R1 20
       55 SETTABLEKS                       R1 R0 K26 ["CHECKBOX_SIZE"]
       57 LOADN                            R1 8
       58 SETTABLEKS                       R1 R0 K27 ["CHECKBOX_PADDING"]
       60 LOADN                            R1 125
       61 SETTABLEKS                       R1 R0 K28 ["BUTTON_WIDTH"]
       63 LOADN                            R1 35
       64 SETTABLEKS                       R1 R0 K29 ["BUTTON_HEIGHT"]
       66 LOADN                            R1 45
       67 SETTABLEKS                       R1 R0 K30 ["HEADER_HEIGHT"]
       69 GETIMPORT                        R1 K33 [Color3.fromRGB]
       71 LOADN                            R2 0
       72 LOADN                            R3 162
       73 LOADN                            R4 255
       74 CALL                             R1 3 1
       75 SETTABLEKS                       R1 R0 K34 ["BLUE"]
       77 GETIMPORT                        R1 K33 [Color3.fromRGB]
       79 LOADN                            R2 153
       80 LOADN                            R3 218
       81 LOADN                            R4 255
       82 CALL                             R1 3 1
       83 SETTABLEKS                       R1 R0 K35 ["BLUE_DISABLED"]
       85 GETIMPORT                        R1 K37 [Color3.new]
       87 LOADN                            R2 0
       88 LOADN                            R3 0
       89 LOADN                            R4 0
       90 CALL                             R1 3 1
       91 SETTABLEKS                       R1 R0 K38 ["BLACK"]
       93 GETIMPORT                        R1 K37 [Color3.new]
       95 LOADN                            R2 1
       96 LOADN                            R3 1
       97 LOADN                            R4 1
       98 CALL                             R1 3 1
       99 SETTABLEKS                       R1 R0 K39 ["WHITE"]
      101 LOADK                            R1 K40 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
      102 SETTABLEKS                       R1 R0 K41 ["ROUNDED_BACKGROUND_IMAGE"]
      104 LOADK                            R1 K42 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      105 SETTABLEKS                       R1 R0 K43 ["ROUNDED_BORDER_IMAGE"]
      107 GETIMPORT                        R1 K45 [Rect.new]
      109 LOADN                            R2 3
      110 LOADN                            R3 3
      111 LOADN                            R4 13
      112 LOADN                            R5 13
      113 CALL                             R1 4 1
      114 SETTABLEKS                       R1 R0 K46 ["ROUNDED_FRAME_SLICE"]
      116 LOADN                            R1 42
      117 SETTABLEKS                       R1 R0 K47 ["ROUND_TEXT_BOX_DEFAULT_HEIGHT"]
      119 LOADK                            R1 K48 ["rbxasset://textures/gradient.png"]
      120 SETTABLEKS                       R1 R0 K49 ["GRADIENT_IMAGE"]
      122 GETIMPORT                        R1 K51 [Vector2.new]
      124 LOADN                            R2 512
      125 LOADN                            R3 256
      126 CALL                             R1 2 1
      127 SETTABLEKS                       R1 R0 K52 ["GRADIENT_RECT_SIZE"]
      129 LOADK                            R1 K53 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      130 SETTABLEKS                       R1 R0 K54 ["ERROR_IMAGE"]
      132 GETIMPORT                        R1 K37 [Color3.new]
      134 LOADN                            R2 1
      135 LOADK                            R3 K55 [0.266]
      136 LOADK                            R4 K55 [0.266]
      137 CALL                             R1 3 1
      138 SETTABLEKS                       R1 R0 K56 ["ERROR_COLOR"]
      140 LOADK                            R1 K57 ["rbxasset://textures/GameSettings/Warning.png"]
      141 SETTABLEKS                       R1 R0 K58 ["WARNING_IMAGE"]
      143 LOADN                            R1 10
      144 SETTABLEKS                       R1 R0 K59 ["MAX_THUMBNAILS"]
      146 LOADK                            R1 K60 ["rbxasset://textures/GameSettings/placeholder.png"]
      147 SETTABLEKS                       R1 R0 K61 ["VIDEO_PLACEHOLDER"]
      149 GETIMPORT                        R1 K63 [UDim2.new]
      151 LOADN                            R2 0
      152 LOADN                            R3 267
      153 LOADN                            R4 0
      154 LOADN                            R5 150
      155 CALL                             R1 4 1
      156 SETTABLEKS                       R1 R0 K64 ["THUMBNAIL_SIZE"]
      158 LOADN                            R1 400
      159 SETTABLEKS                       R1 R0 K65 ["BAD_REQUEST"]
      161 NEWTABLE                         R1 0 3
      163 LOADK                            R2 K66 ["jpg"]
      164 LOADK                            R3 K67 ["jpeg"]
      165 LOADK                            R4 K68 ["png"]
      166 SETLIST                          R1 R2 3 [1]
      168 SETTABLEKS                       R1 R0 K69 ["IMAGE_TYPES"]
      170 LOADN                            R1 22
      171 SETTABLEKS                       R1 R0 K70 ["TEXT_SIZE"]
      173 GETIMPORT                        R1 K74 [Enum.Font.BuilderSansBold]
      175 SETTABLEKS                       R1 R0 K75 ["FOUNDATION_BUTTON_FONT"]
      177 LOADN                            R1 17
      178 SETTABLEKS                       R1 R0 K76 ["FOUNDATION_BUTTON_TEXT_SIZE"]
      180 LOADN                            R1 20
      181 SETTABLEKS                       R1 R0 K77 ["FOUNDATION_BUTTON_ICON_WIDTH"]
      183 LOADN                            R1 8
      184 SETTABLEKS                       R1 R0 K78 ["FOUNDATION_BUTTON_ICON_TEXT_PADDING"]
      186 LOADN                            R1 24
      187 SETTABLEKS                       R1 R0 K79 ["FOUNDATION_BUTTON_PADDING"]
      189 RETURN                           R0 1
