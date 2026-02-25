MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 GETIMPORT                        R1 K2 [Vector2.new]
        5 LOADN                            R2 74
        6 LOADN                            R3 255
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K3 ["WIDGET_SIZE"]
       10 LOADN                            R1 20
       11 SETTABLEKS                       R1 R0 K4 ["BUTTON_FROMEDGE_PADDING"]
       13 LOADN                            R1 5
       14 SETTABLEKS                       R1 R0 K5 ["BUTTON_FROMCENTER_PADDING"]
       16 LOADN                            R1 180
       17 SETTABLEKS                       R1 R0 K6 ["BACKGROUND_SIZE"]
       19 LOADN                            R1 150
       20 SETTABLEKS                       R1 R0 K7 ["IMAGE_SIZE"]
       22 LOADN                            R1 40
       23 SETTABLEKS                       R1 R0 K8 ["BACKGROUND_FROMEDGE_PADDING"]
       25 LOADN                            R1 20
       26 SETTABLEKS                       R1 R0 K9 ["BACKGROUND_TILE_SIZE"]
       28 LOADN                            R1 5
       29 SETTABLEKS                       R1 R0 K10 ["PIXEL_TOP_PADDING"]
       31 GETTABLEKS                       R2 R0 K6 ["BACKGROUND_SIZE"]
       33 GETTABLEKS                       R3 R0 K10 ["PIXEL_TOP_PADDING"]
       35 ADD                              R1 R2 R3
       36 SETTABLEKS                       R1 R0 K11 ["PIXEL_YPOSITION"]
       38 LOADN                            R1 18
       39 SETTABLEKS                       R1 R0 K12 ["IMAGE_PREVIEW_WINDOW_PADDING"]
       41 LOADN                            R1 9
       42 SETTABLEKS                       R1 R0 K13 ["DRAGGER_WIDTH"]
       44 LOADN                            R1 180
       45 SETTABLEKS                       R1 R0 K14 ["DRAGGER_HEIGHT"]
       47 LOADN                            R1 8
       48 SETTABLEKS                       R1 R0 K15 ["DRAGGER_WIDTH_V2"]
       50 LOADN                            R1 16
       51 SETTABLEKS                       R1 R0 K16 ["DRAGGER_CLICK_WINDOW_WIDTH"]
       53 LOADN                            R1 1
       54 SETTABLEKS                       R1 R0 K17 ["DRAGGER_CENTER_INSETPX"]
       56 LOADN                            R1 16
       57 SETTABLEKS                       R1 R0 K18 ["DRAGGER_HANDLE_SIZE"]
       59 DUPTABLE                         R1 K23 [{"BACKGROUND_GRID", "HORIZONTAL_DRAGGER", "VERTICAL_DRAGGER", "DRAGGER_V2"}]
       60 LOADK                            R2 K24 ["rbxasset://textures/9SliceEditor/GridPattern.png"]
       61 SETTABLEKS                       R2 R1 K19 ["BACKGROUND_GRID"]
       63 LOADK                            R2 K25 ["rbxasset://textures/9SliceEditor/HorizontalDragger.png"]
       64 SETTABLEKS                       R2 R1 K20 ["HORIZONTAL_DRAGGER"]
       66 LOADK                            R2 K26 ["rbxasset://textures/9SliceEditor/VerticalDragger.png"]
       67 SETTABLEKS                       R2 R1 K21 ["VERTICAL_DRAGGER"]
       69 DUPTABLE                         R2 K31 [{"LEFT", "RIGHT", "TOP", "BOTTOM"}]
       70 DUPTABLE                         R3 K34 [{"NORMAL", "OUTLINED"}]
       71 LOADK                            R4 K35 ["rbxasset://textures/9SliceEditor/Dragger2Left.png"]
       72 SETTABLEKS                       R4 R3 K32 ["NORMAL"]
       74 LOADK                            R4 K36 ["rbxasset://textures/9SliceEditor/Dragger2OutlinedLeft.png"]
       75 SETTABLEKS                       R4 R3 K33 ["OUTLINED"]
       77 SETTABLEKS                       R3 R2 K27 ["LEFT"]
       79 DUPTABLE                         R3 K34 [{"NORMAL", "OUTLINED"}]
       80 LOADK                            R4 K37 ["rbxasset://textures/9SliceEditor/Dragger2Right.png"]
       81 SETTABLEKS                       R4 R3 K32 ["NORMAL"]
       83 LOADK                            R4 K38 ["rbxasset://textures/9SliceEditor/Dragger2OutlinedRight.png"]
       84 SETTABLEKS                       R4 R3 K33 ["OUTLINED"]
       86 SETTABLEKS                       R3 R2 K28 ["RIGHT"]
       88 DUPTABLE                         R3 K34 [{"NORMAL", "OUTLINED"}]
       89 LOADK                            R4 K39 ["rbxasset://textures/9SliceEditor/Dragger2Top.png"]
       90 SETTABLEKS                       R4 R3 K32 ["NORMAL"]
       92 LOADK                            R4 K40 ["rbxasset://textures/9SliceEditor/Dragger2OutlinedTop.png"]
       93 SETTABLEKS                       R4 R3 K33 ["OUTLINED"]
       95 SETTABLEKS                       R3 R2 K29 ["TOP"]
       97 DUPTABLE                         R3 K34 [{"NORMAL", "OUTLINED"}]
       98 LOADK                            R4 K41 ["rbxasset://textures/9SliceEditor/Dragger2Bottom.png"]
       99 SETTABLEKS                       R4 R3 K32 ["NORMAL"]
      101 LOADK                            R4 K42 ["rbxasset://textures/9SliceEditor/Dragger2OutlinedBottom.png"]
      102 SETTABLEKS                       R4 R3 K33 ["OUTLINED"]
      104 SETTABLEKS                       R3 R2 K30 ["BOTTOM"]
      106 SETTABLEKS                       R2 R1 K22 ["DRAGGER_V2"]
      108 SETTABLEKS                       R1 R0 K43 ["IMAGES"]
      110 DUPTABLE                         R1 K47 [{"EW", "NS", "NONE"}]
      111 LOADK                            R2 K48 ["rbxasset://SystemCursors/SizeEW"]
      112 SETTABLEKS                       R2 R1 K44 ["EW"]
      114 LOADK                            R2 K49 ["rbxasset://SystemCursors/SizeNS"]
      115 SETTABLEKS                       R2 R1 K45 ["NS"]
      117 LOADK                            R2 K50 [""]
      118 SETTABLEKS                       R2 R1 K46 ["NONE"]
      120 SETTABLEKS                       R1 R0 K51 ["MOUSE_CURSORS"]
      122 LOADN                            R1 70
      123 SETTABLEKS                       R1 R0 K52 ["TEXTIMAGE_PADDING"]
      125 LOADN                            R1 116
      126 SETTABLEKS                       R1 R0 K53 ["TEXTEDITOR_YOFFSET"]
      128 GETTABLEKS                       R3 R0 K6 ["BACKGROUND_SIZE"]
      130 GETTABLEKS                       R4 R0 K8 ["BACKGROUND_FROMEDGE_PADDING"]
      132 ADD                              R2 R3 R4
      133 GETTABLEKS                       R3 R0 K52 ["TEXTIMAGE_PADDING"]
      135 ADD                              R1 R2 R3
      136 SETTABLEKS                       R1 R0 K54 ["TEXTEDITOR_XOFFSET"]
      138 LOADN                            R1 110
      139 SETTABLEKS                       R1 R0 K55 ["TEXTEDITOR_XSIZE"]
      141 LOADN                            R1 140
      142 SETTABLEKS                       R1 R0 K56 ["TEXTEDITOR_YSIZE"]
      144 LOADN                            R1 18
      145 SETTABLEKS                       R1 R0 K57 ["TEXTSIZE"]
      147 LOADN                            R1 8
      148 SETTABLEKS                       R1 R0 K58 ["TEXTINPUT_PADDING"]
      150 LOADN                            R1 24
      151 SETTABLEKS                       R1 R0 K59 ["LEFTINPUT_YPOSITION"]
      153 GETTABLEKS                       R3 R0 K59 ["LEFTINPUT_YPOSITION"]
      155 ADDK                             R2 R3 K60 [20]
      156 GETTABLEKS                       R3 R0 K58 ["TEXTINPUT_PADDING"]
      158 ADD                              R1 R2 R3
      159 SETTABLEKS                       R1 R0 K61 ["RIGHTINPUT_YPOSITION"]
      161 GETTABLEKS                       R3 R0 K61 ["RIGHTINPUT_YPOSITION"]
      163 ADDK                             R2 R3 K60 [20]
      164 GETTABLEKS                       R3 R0 K58 ["TEXTINPUT_PADDING"]
      166 ADD                              R1 R2 R3
      167 SETTABLEKS                       R1 R0 K62 ["TOPINPUT_YPOSITION"]
      169 GETTABLEKS                       R3 R0 K62 ["TOPINPUT_YPOSITION"]
      171 ADDK                             R2 R3 K60 [20]
      172 GETTABLEKS                       R3 R0 K58 ["TEXTINPUT_PADDING"]
      174 ADD                              R1 R2 R3
      175 SETTABLEKS                       R1 R0 K63 ["BOTTOMINPUT_YPOSITION"]
      177 LOADN                            R1 2
      178 SETTABLEKS                       R1 R0 K64 ["TEXTLABEL_PADDING"]
      180 GETTABLEKS                       R2 R0 K59 ["LEFTINPUT_YPOSITION"]
      182 GETTABLEKS                       R3 R0 K64 ["TEXTLABEL_PADDING"]
      184 ADD                              R1 R2 R3
      185 SETTABLEKS                       R1 R0 K65 ["LEFTLABEL_YPOSITION"]
      187 GETTABLEKS                       R2 R0 K61 ["RIGHTINPUT_YPOSITION"]
      189 GETTABLEKS                       R3 R0 K64 ["TEXTLABEL_PADDING"]
      191 ADD                              R1 R2 R3
      192 SETTABLEKS                       R1 R0 K66 ["RIGHTLABEL_YPOSITION"]
      194 GETTABLEKS                       R2 R0 K62 ["TOPINPUT_YPOSITION"]
      196 GETTABLEKS                       R3 R0 K64 ["TEXTLABEL_PADDING"]
      198 ADD                              R1 R2 R3
      199 SETTABLEKS                       R1 R0 K67 ["TOPLABEL_YPOSITION"]
      201 GETTABLEKS                       R2 R0 K63 ["BOTTOMINPUT_YPOSITION"]
      203 GETTABLEKS                       R3 R0 K64 ["TEXTLABEL_PADDING"]
      205 ADD                              R1 R2 R3
      206 SETTABLEKS                       R1 R0 K68 ["BOTTOMLABEL_YPOSITION"]
      208 RETURN                           R0 1
