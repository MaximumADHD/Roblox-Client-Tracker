MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 GETIMPORT                        R1 K2 [Vector2.new]
        5 LOADN                            R2 330
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
       59 DUPTABLE                         R1 K26 [{["BACKGROUND_GRID"] = "rbxasset://textures/9SliceEditor/GridPattern.png", ["HORIZONTAL_DRAGGER"] = "rbxasset://textures/9SliceEditor/HorizontalDragger.png", ["VERTICAL_DRAGGER"] = "rbxasset://textures/9SliceEditor/VerticalDragger.png", ["DRAGGER_V2"]}]
       60 DUPTABLE                         R2 K31 [{"LEFT", "RIGHT", "TOP", "BOTTOM"}]
       61 DUPTABLE                         R3 K36 [{["NORMAL"] = "rbxasset://textures/9SliceEditor/Dragger2Left.png", ["OUTLINED"] = "rbxasset://textures/9SliceEditor/Dragger2OutlinedLeft.png"}]
       62 SETTABLEKS                       R3 R2 K27 ["LEFT"]
       64 DUPTABLE                         R3 K39 [{["NORMAL"] = "rbxasset://textures/9SliceEditor/Dragger2Right.png", ["OUTLINED"] = "rbxasset://textures/9SliceEditor/Dragger2OutlinedRight.png"}]
       65 SETTABLEKS                       R3 R2 K28 ["RIGHT"]
       67 DUPTABLE                         R3 K42 [{["NORMAL"] = "rbxasset://textures/9SliceEditor/Dragger2Top.png", ["OUTLINED"] = "rbxasset://textures/9SliceEditor/Dragger2OutlinedTop.png"}]
       68 SETTABLEKS                       R3 R2 K29 ["TOP"]
       70 DUPTABLE                         R3 K45 [{["NORMAL"] = "rbxasset://textures/9SliceEditor/Dragger2Bottom.png", ["OUTLINED"] = "rbxasset://textures/9SliceEditor/Dragger2OutlinedBottom.png"}]
       71 SETTABLEKS                       R3 R2 K30 ["BOTTOM"]
       73 SETTABLEKS                       R2 R1 K25 ["DRAGGER_V2"]
       75 SETTABLEKS                       R1 R0 K46 ["IMAGES"]
       77 DUPTABLE                         R1 K53 [{["EW"] = "rbxasset://SystemCursors/SizeEW", ["NS"] = "rbxasset://SystemCursors/SizeNS", ["NONE"] = ""}]
       78 SETTABLEKS                       R1 R0 K54 ["MOUSE_CURSORS"]
       80 LOADN                            R1 70
       81 SETTABLEKS                       R1 R0 K55 ["TEXTIMAGE_PADDING"]
       83 LOADN                            R1 116
       84 SETTABLEKS                       R1 R0 K56 ["TEXTEDITOR_YOFFSET"]
       86 GETTABLEKS                       R3 R0 K6 ["BACKGROUND_SIZE"]
       88 GETTABLEKS                       R4 R0 K8 ["BACKGROUND_FROMEDGE_PADDING"]
       90 ADD                              R2 R3 R4
       91 GETTABLEKS                       R3 R0 K55 ["TEXTIMAGE_PADDING"]
       93 ADD                              R1 R2 R3
       94 SETTABLEKS                       R1 R0 K57 ["TEXTEDITOR_XOFFSET"]
       96 LOADN                            R1 110
       97 SETTABLEKS                       R1 R0 K58 ["TEXTEDITOR_XSIZE"]
       99 LOADN                            R1 140
      100 SETTABLEKS                       R1 R0 K59 ["TEXTEDITOR_YSIZE"]
      102 LOADN                            R1 18
      103 SETTABLEKS                       R1 R0 K60 ["TEXTSIZE"]
      105 LOADN                            R1 8
      106 SETTABLEKS                       R1 R0 K61 ["TEXTINPUT_PADDING"]
      108 LOADN                            R1 24
      109 SETTABLEKS                       R1 R0 K62 ["LEFTINPUT_YPOSITION"]
      111 GETTABLEKS                       R3 R0 K62 ["LEFTINPUT_YPOSITION"]
      113 ADDK                             R2 R3 K63 [20]
      114 GETTABLEKS                       R3 R0 K61 ["TEXTINPUT_PADDING"]
      116 ADD                              R1 R2 R3
      117 SETTABLEKS                       R1 R0 K64 ["RIGHTINPUT_YPOSITION"]
      119 GETTABLEKS                       R3 R0 K64 ["RIGHTINPUT_YPOSITION"]
      121 ADDK                             R2 R3 K63 [20]
      122 GETTABLEKS                       R3 R0 K61 ["TEXTINPUT_PADDING"]
      124 ADD                              R1 R2 R3
      125 SETTABLEKS                       R1 R0 K65 ["TOPINPUT_YPOSITION"]
      127 GETTABLEKS                       R3 R0 K65 ["TOPINPUT_YPOSITION"]
      129 ADDK                             R2 R3 K63 [20]
      130 GETTABLEKS                       R3 R0 K61 ["TEXTINPUT_PADDING"]
      132 ADD                              R1 R2 R3
      133 SETTABLEKS                       R1 R0 K66 ["BOTTOMINPUT_YPOSITION"]
      135 LOADN                            R1 2
      136 SETTABLEKS                       R1 R0 K67 ["TEXTLABEL_PADDING"]
      138 GETTABLEKS                       R2 R0 K62 ["LEFTINPUT_YPOSITION"]
      140 GETTABLEKS                       R3 R0 K67 ["TEXTLABEL_PADDING"]
      142 ADD                              R1 R2 R3
      143 SETTABLEKS                       R1 R0 K68 ["LEFTLABEL_YPOSITION"]
      145 GETTABLEKS                       R2 R0 K64 ["RIGHTINPUT_YPOSITION"]
      147 GETTABLEKS                       R3 R0 K67 ["TEXTLABEL_PADDING"]
      149 ADD                              R1 R2 R3
      150 SETTABLEKS                       R1 R0 K69 ["RIGHTLABEL_YPOSITION"]
      152 GETTABLEKS                       R2 R0 K65 ["TOPINPUT_YPOSITION"]
      154 GETTABLEKS                       R3 R0 K67 ["TEXTLABEL_PADDING"]
      156 ADD                              R1 R2 R3
      157 SETTABLEKS                       R1 R0 K70 ["TOPLABEL_YPOSITION"]
      159 GETTABLEKS                       R2 R0 K66 ["BOTTOMINPUT_YPOSITION"]
      161 GETTABLEKS                       R3 R0 K67 ["TEXTLABEL_PADDING"]
      163 ADD                              R1 R2 R3
      164 SETTABLEKS                       R1 R0 K71 ["BOTTOMLABEL_YPOSITION"]
      166 RETURN                           R0 1
