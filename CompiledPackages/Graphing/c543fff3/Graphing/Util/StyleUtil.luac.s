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
       37 NEWTABLE                         R6 64 0
       39 SETTABLEKS                       R2 R6 K3 ["CANVAS_BACKGROUND_COLOR3"]
       41 LOADN                            R7 1
       42 SETTABLEKS                       R7 R6 K4 ["CANVAS_BACKGROUND_TRANSPARENCY"]
       44 SETTABLEKS                       R3 R6 K5 ["CURVE_COLOR3"]
       46 LOADN                            R7 2
       47 SETTABLEKS                       R7 R6 K6 ["CURVE_THICKNESS"]
       49 SETTABLEKS                       R1 R6 K7 ["GRID_COLOR3"]
       51 SETTABLEKS                       R1 R6 K8 ["GRID_COLOR3_MINOR"]
       53 LOADN                            R7 2
       54 SETTABLEKS                       R7 R6 K9 ["GRID_THICKNESS"]
       56 LOADN                            R7 1
       57 SETTABLEKS                       R7 R6 K10 ["GRID_THICKNESS_MINOR"]
       59 LOADK                            R7 K11 [0.6]
       60 SETTABLEKS                       R7 R6 K12 ["GRID_TRANSPARENCY"]
       62 LOADK                            R7 K13 [0.8]
       63 SETTABLEKS                       R7 R6 K14 ["GRID_TRANSPARENCY_MINOR"]
       65 SETTABLEKS                       R4 R6 K15 ["GRID_BOX_BACKGROUND_COLOR3"]
       67 LOADK                            R7 K16 [0.7]
       68 SETTABLEKS                       R7 R6 K17 ["GRID_BOX_BACKGROUND_TRANSPARENCY"]
       70 SETTABLEKS                       R4 R6 K18 ["GRID_BOX_BORDER_COLOR3"]
       72 LOADN                            R7 2
       73 SETTABLEKS                       R7 R6 K19 ["GRID_BOX_BORDER_THICKNESS"]
       75 SETTABLEKS                       R0 R6 K20 ["GRID_LABEL_COLOR3"]
       77 LOADN                            R7 10
       78 SETTABLEKS                       R7 R6 K21 ["GRID_LABEL_FONT_SIZE"]
       80 SETTABLEKS                       R0 R6 K22 ["GRID_LINE_COLOR3"]
       82 LOADN                            R7 2
       83 SETTABLEKS                       R7 R6 K23 ["GRID_LINE_THICKNESS"]
       85 LOADN                            R7 0
       86 SETTABLEKS                       R7 R6 K24 ["GRID_LINE_TRANSPARENCY"]
       88 SETTABLEKS                       R3 R6 K25 ["POINT_HANDLE_COLOR3"]
       90 LOADK                            R7 K26 ["rbxasset://textures/smallWhiteCircle.png"]
       91 SETTABLEKS                       R7 R6 K27 ["POINT_HANDLE_IMAGE"]
       93 SETTABLEKS                       R0 R6 K28 ["POINT_HANDLE_OUTLINE_COLOR3"]
       95 LOADN                            R7 0
       96 SETTABLEKS                       R7 R6 K29 ["POINT_HANDLE_OUTLINE_THICKNESS"]
       98 LOADN                            R7 10
       99 SETTABLEKS                       R7 R6 K30 ["POINT_HANDLE_SIZE"]
      101 SETTABLEKS                       R2 R6 K31 ["SCALE_BACKGROUND_COLOR3"]
      103 LOADN                            R7 1
      104 SETTABLEKS                       R7 R6 K32 ["SCALE_BACKGROUND_TRANSPARENCY"]
      106 GETIMPORT                        R7 K35 [UDim.new]
      108 LOADN                            R8 0
      109 LOADN                            R9 0
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K36 ["SCALE_DISTANCE"]
      113 GETIMPORT                        R7 K35 [UDim.new]
      115 LOADN                            R8 0
      116 LOADN                            R9 25
      117 CALL                             R7 2 1
      118 SETTABLEKS                       R7 R6 K37 ["SCALE_SIZE"]
      120 SETTABLEKS                       R1 R6 K38 ["SCALE_TICK_COLOR3"]
      122 SETTABLEKS                       R1 R6 K39 ["SCALE_TICK_LABEL_COLOR3"]
      124 LOADN                            R7 4
      125 SETTABLEKS                       R7 R6 K40 ["SCALE_TICK_LABEL_PADDING"]
      127 LOADN                            R7 8
      128 SETTABLEKS                       R7 R6 K41 ["SCALE_TICK_LABEL_SIZE"]
      130 GETIMPORT                        R7 K35 [UDim.new]
      132 LOADN                            R8 0
      133 LOADN                            R9 10
      134 CALL                             R7 2 1
      135 SETTABLEKS                       R7 R6 K42 ["SCALE_TICK_LENGTH"]
      137 GETIMPORT                        R7 K35 [UDim.new]
      139 LOADN                            R8 0
      140 LOADN                            R9 5
      141 CALL                             R7 2 1
      142 SETTABLEKS                       R7 R6 K43 ["SCALE_TICK_LENGTH_MINOR"]
      144 LOADN                            R7 2
      145 SETTABLEKS                       R7 R6 K44 ["SCALE_TICK_THICKNESS"]
      147 SETTABLEKS                       R2 R6 K45 ["SCROLLBAR_COLOR3"]
      149 GETIMPORT                        R7 K35 [UDim.new]
      151 LOADN                            R8 0
      152 LOADN                            R9 30
      153 CALL                             R7 2 1
      154 SETTABLEKS                       R7 R6 K46 ["SCROLLBAR_DISTANCE"]
      156 LOADK                            R7 K47 ["rbxasset://textures/AnimationEditor/button_control_reverseplay.png"]
      157 SETTABLEKS                       R7 R6 K48 ["SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE"]
      159 LOADK                            R7 K49 ["rbxasset://textures/AnimationEditor/button_zoom.png"]
      160 SETTABLEKS                       R7 R6 K50 ["SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE"]
      162 SETTABLEKS                       R2 R6 K51 ["SCROLLBAR_OUTLINE_COLOR3"]
      164 LOADN                            R7 1
      165 SETTABLEKS                       R7 R6 K52 ["SCROLLBAR_OUTLINE_THICKNESS"]
      167 LOADK                            R7 K53 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
      168 SETTABLEKS                       R7 R6 K54 ["SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE"]
      170 LOADK                            R7 K49 ["rbxasset://textures/AnimationEditor/button_zoom.png"]
      171 SETTABLEKS                       R7 R6 K55 ["SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE"]
      173 LOADN                            R7 15
      174 SETTABLEKS                       R7 R6 K56 ["SCROLLBAR_SCROLL_BUTTON_SIZE"]
      176 GETIMPORT                        R7 K35 [UDim.new]
      178 LOADN                            R8 0
      179 LOADN                            R9 15
      180 CALL                             R7 2 1
      181 SETTABLEKS                       R7 R6 K57 ["SCROLLBAR_SIZE"]
      183 LOADN                            R7 15
      184 SETTABLEKS                       R7 R6 K58 ["SCROLLBAR_ZOOM_BUTTON_SIZE"]
      186 SETTABLEKS                       R5 R6 K59 ["SCROLLBAR_BUTTON_COLOR3"]
      188 SETTABLEKS                       R2 R6 K60 ["VIEWPORT_BACKGROUND_COLOR3"]
      190 LOADN                            R7 0
      191 SETTABLEKS                       R7 R6 K61 ["VIEWPORT_BACKGROUND_TRANSPARENCY"]
      193 RETURN                           R6 1
