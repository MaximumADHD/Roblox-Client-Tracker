MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Color3.fromRGB]
        3 LOADN                            R1 255
        4 LOADN                            R2 255
        5 LOADN                            R3 255
        6 CALL                             R0 3 1
        7 GETIMPORT                        R1 K2 [Color3.fromRGB]
        9 LOADN                            R2 155
       10 LOADN                            R3 155
       11 LOADN                            R4 155
       12 CALL                             R1 3 1
       13 GETIMPORT                        R2 K2 [Color3.fromRGB]
       15 LOADN                            R3 25
       16 LOADN                            R4 25
       17 LOADN                            R5 25
       18 CALL                             R2 3 1
       19 GETIMPORT                        R3 K2 [Color3.fromRGB]
       21 LOADN                            R4 255
       22 LOADN                            R5 100
       23 LOADN                            R6 100
       24 CALL                             R3 3 1
       25 GETIMPORT                        R4 K2 [Color3.fromRGB]
       27 LOADN                            R5 100
       28 LOADN                            R6 100
       29 LOADN                            R7 255
       30 CALL                             R4 3 1
       31 GETIMPORT                        R5 K2 [Color3.fromRGB]
       33 LOADN                            R6 100
       34 LOADN                            R7 100
       35 LOADN                            R8 100
       36 CALL                             R5 3 1
       37 GETIMPORT                        R6 K2 [Color3.fromRGB]
       39 LOADN                            R7 255
       40 LOADN                            R8 0
       41 LOADN                            R9 255
       42 CALL                             R6 3 1
       43 NEWTABLE                         R7 64 0
       45 SETTABLEKS                       R2 R7 K3 ["CANVAS_BACKGROUND_COLOR3"]
       47 LOADN                            R8 1
       48 SETTABLEKS                       R8 R7 K4 ["CANVAS_BACKGROUND_TRANSPARENCY"]
       50 SETTABLEKS                       R3 R7 K5 ["CURVE_COLOR3"]
       52 LOADN                            R8 2
       53 SETTABLEKS                       R8 R7 K6 ["CURVE_THICKNESS"]
       55 SETTABLEKS                       R6 R7 K7 ["DEBUG_COLOR3"]
       57 SETTABLEKS                       R1 R7 K8 ["GRID_COLOR3"]
       59 SETTABLEKS                       R1 R7 K9 ["GRID_COLOR3_MINOR"]
       61 LOADN                            R8 2
       62 SETTABLEKS                       R8 R7 K10 ["GRID_THICKNESS"]
       64 LOADN                            R8 1
       65 SETTABLEKS                       R8 R7 K11 ["GRID_THICKNESS_MINOR"]
       67 LOADK                            R8 K12 [0.6]
       68 SETTABLEKS                       R8 R7 K13 ["GRID_TRANSPARENCY"]
       70 LOADK                            R8 K14 [0.8]
       71 SETTABLEKS                       R8 R7 K15 ["GRID_TRANSPARENCY_MINOR"]
       73 SETTABLEKS                       R4 R7 K16 ["GRID_BOX_BACKGROUND_COLOR3"]
       75 LOADK                            R8 K17 [0.7]
       76 SETTABLEKS                       R8 R7 K18 ["GRID_BOX_BACKGROUND_TRANSPARENCY"]
       78 SETTABLEKS                       R4 R7 K19 ["GRID_BOX_BORDER_COLOR3"]
       80 LOADN                            R8 0
       81 SETTABLEKS                       R8 R7 K20 ["GRID_BOX_BORDER_THICKNESS"]
       83 SETTABLEKS                       R0 R7 K21 ["GRID_LABEL_COLOR3"]
       85 LOADN                            R8 10
       86 SETTABLEKS                       R8 R7 K22 ["GRID_LABEL_FONT_SIZE"]
       88 SETTABLEKS                       R0 R7 K23 ["GRID_LINE_COLOR3"]
       90 LOADN                            R8 2
       91 SETTABLEKS                       R8 R7 K24 ["GRID_LINE_THICKNESS"]
       93 LOADN                            R8 0
       94 SETTABLEKS                       R8 R7 K25 ["GRID_LINE_TRANSPARENCY"]
       96 SETTABLEKS                       R3 R7 K26 ["POINT_HANDLE_COLOR3"]
       98 LOADK                            R8 K27 ["rbxasset://textures/smallWhiteCircle.png"]
       99 SETTABLEKS                       R8 R7 K28 ["POINT_HANDLE_IMAGE"]
      101 SETTABLEKS                       R0 R7 K29 ["POINT_HANDLE_OUTLINE_COLOR3"]
      103 LOADN                            R8 0
      104 SETTABLEKS                       R8 R7 K30 ["POINT_HANDLE_OUTLINE_THICKNESS"]
      106 LOADN                            R8 10
      107 SETTABLEKS                       R8 R7 K31 ["POINT_HANDLE_SIZE"]
      109 SETTABLEKS                       R2 R7 K32 ["SCALE_BACKGROUND_COLOR3"]
      111 LOADN                            R8 1
      112 SETTABLEKS                       R8 R7 K33 ["SCALE_BACKGROUND_TRANSPARENCY"]
      114 GETIMPORT                        R8 K36 [UDim.new]
      116 LOADN                            R9 0
      117 LOADN                            R10 0
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K37 ["SCALE_DISTANCE"]
      121 GETIMPORT                        R8 K36 [UDim.new]
      123 LOADN                            R9 0
      124 LOADN                            R10 25
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R7 K38 ["SCALE_SIZE"]
      128 SETTABLEKS                       R1 R7 K39 ["SCALE_TICK_COLOR3"]
      130 SETTABLEKS                       R1 R7 K40 ["SCALE_TICK_LABEL_COLOR3"]
      132 LOADN                            R8 4
      133 SETTABLEKS                       R8 R7 K41 ["SCALE_TICK_LABEL_PADDING"]
      135 LOADN                            R8 8
      136 SETTABLEKS                       R8 R7 K42 ["SCALE_TICK_LABEL_SIZE"]
      138 LOADN                            R8 10
      139 SETTABLEKS                       R8 R7 K43 ["SCALE_TICK_LENGTH"]
      141 LOADN                            R8 5
      142 SETTABLEKS                       R8 R7 K44 ["SCALE_TICK_LENGTH_MINOR"]
      144 LOADN                            R8 2
      145 SETTABLEKS                       R8 R7 K45 ["SCALE_TICK_THICKNESS"]
      147 SETTABLEKS                       R2 R7 K46 ["SCROLLBAR_COLOR3"]
      149 GETIMPORT                        R8 K36 [UDim.new]
      151 LOADN                            R9 0
      152 LOADN                            R10 30
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K47 ["SCROLLBAR_DISTANCE"]
      156 LOADK                            R8 K48 ["rbxasset://textures/AnimationEditor/button_control_reverseplay.png"]
      157 SETTABLEKS                       R8 R7 K49 ["SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE"]
      159 LOADK                            R8 K50 ["rbxasset://textures/AnimationEditor/button_zoom.png"]
      160 SETTABLEKS                       R8 R7 K51 ["SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE"]
      162 SETTABLEKS                       R2 R7 K52 ["SCROLLBAR_OUTLINE_COLOR3"]
      164 LOADN                            R8 1
      165 SETTABLEKS                       R8 R7 K53 ["SCROLLBAR_OUTLINE_THICKNESS"]
      167 LOADK                            R8 K54 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
      168 SETTABLEKS                       R8 R7 K55 ["SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE"]
      170 LOADK                            R8 K50 ["rbxasset://textures/AnimationEditor/button_zoom.png"]
      171 SETTABLEKS                       R8 R7 K56 ["SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE"]
      173 LOADN                            R8 15
      174 SETTABLEKS                       R8 R7 K57 ["SCROLLBAR_SCROLL_BUTTON_SIZE"]
      176 GETIMPORT                        R8 K36 [UDim.new]
      178 LOADN                            R9 0
      179 LOADN                            R10 15
      180 CALL                             R8 2 1
      181 SETTABLEKS                       R8 R7 K58 ["SCROLLBAR_SIZE"]
      183 LOADN                            R8 15
      184 SETTABLEKS                       R8 R7 K59 ["SCROLLBAR_ZOOM_BUTTON_SIZE"]
      186 SETTABLEKS                       R5 R7 K60 ["SCROLLBAR_BUTTON_COLOR3"]
      188 SETTABLEKS                       R2 R7 K61 ["VIEWPORT_BACKGROUND_COLOR3"]
      190 LOADN                            R8 0
      191 SETTABLEKS                       R8 R7 K62 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      193 RETURN                           R7 1
