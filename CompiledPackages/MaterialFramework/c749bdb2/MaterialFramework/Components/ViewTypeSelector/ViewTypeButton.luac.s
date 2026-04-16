PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Style"]
        2 GETTABLEKS                       R2 R0 K1 ["ViewType"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["Grid"]
        7 JUMPIFNOTEQ                      R2 R4 ; [+4]
        9 GETTABLEKS                       R3 R1 K3 ["GridIcon"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K4 ["ListIcon"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K5 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K10 [{"AutomaticSize", "BackgroundColor", "Layout", "LayoutOrder"}]
       19 GETIMPORT                        R7 K13 [Enum.AutomaticSize.Y]
       21 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       23 GETTABLEKS                       R7 R1 K7 ["BackgroundColor"]
       25 SETTABLEKS                       R7 R6 K7 ["BackgroundColor"]
       27 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R7 R6 K8 ["Layout"]
       31 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       33 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       35 DUPTABLE                         R7 K19 [{"IconButton", "Slider"}]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R8 R9 K5 ["createElement"]
       39 GETUPVAL                         R9 3
       40 DUPTABLE                         R10 K27 [{"BackgroundColor", "BackgroundStyle", "IconColor", "IconSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Text"}]
       41 GETTABLEKS                       R11 R1 K7 ["BackgroundColor"]
       43 SETTABLEKS                       R11 R10 K7 ["BackgroundColor"]
       45 LOADK                            R11 K28 ["Box"]
       46 SETTABLEKS                       R11 R10 K20 ["BackgroundStyle"]
       48 GETTABLEKS                       R11 R1 K21 ["IconColor"]
       50 SETTABLEKS                       R11 R10 K21 ["IconColor"]
       52 GETTABLEKS                       R11 R1 K22 ["IconSize"]
       54 SETTABLEKS                       R11 R10 K22 ["IconSize"]
       56 LOADN                            R11 1
       57 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       59 SETTABLEKS                       R3 R10 K23 ["LeftIcon"]
       61 GETTABLEKS                       R11 R0 K24 ["OnClick"]
       63 SETTABLEKS                       R11 R10 K24 ["OnClick"]
       65 GETTABLEKS                       R11 R1 K29 ["ItemSize"]
       67 SETTABLEKS                       R11 R10 K25 ["Size"]
       69 GETTABLEKS                       R11 R0 K26 ["Text"]
       71 SETTABLEKS                       R11 R10 K26 ["Text"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K17 ["IconButton"]
       76 GETTABLEKS                       R9 R0 K1 ["ViewType"]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R10 R11 K2 ["Grid"]
       81 JUMPIFNOTEQ                      R9 R10 ; [+54]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R8 R9 K5 ["createElement"]
       86 GETUPVAL                         R9 4
       87 DUPTABLE                         R10 K39 [{"AnchorPoint", "Disabled", "Value", "Min", "Max", "LayoutOrder", "OnValueChanged", "Position", "Size", "SnapIncrement", "VerticalDragTolerance"}]
       88 GETTABLEKS                       R11 R1 K40 ["SliderAnchorPoint"]
       90 SETTABLEKS                       R11 R10 K30 ["AnchorPoint"]
       92 LOADB                            R11 0
       93 SETTABLEKS                       R11 R10 K31 ["Disabled"]
       95 GETTABLEKS                       R11 R0 K41 ["GridSize"]
       97 SETTABLEKS                       R11 R10 K32 ["Value"]
       99 GETUPVAL                         R12 5
      100 GETTABLEKS                       R11 R12 K42 ["GRID_SIZE_MIN"]
      102 SETTABLEKS                       R11 R10 K33 ["Min"]
      104 GETUPVAL                         R12 5
      105 GETTABLEKS                       R11 R12 K43 ["GRID_SIZE_MAX"]
      107 SETTABLEKS                       R11 R10 K34 ["Max"]
      109 LOADN                            R11 2
      110 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      112 GETTABLEKS                       R11 R0 K44 ["OnGridSizeChanged"]
      114 SETTABLEKS                       R11 R10 K35 ["OnValueChanged"]
      116 GETTABLEKS                       R11 R1 K45 ["SliderPosition"]
      118 SETTABLEKS                       R11 R10 K36 ["Position"]
      120 GETTABLEKS                       R11 R1 K46 ["SliderSize"]
      122 SETTABLEKS                       R11 R10 K25 ["Size"]
      124 GETUPVAL                         R12 5
      125 GETTABLEKS                       R11 R12 K47 ["GRID_SIZE_SNAP_INCREMENT"]
      127 SETTABLEKS                       R11 R10 K37 ["SnapIncrement"]
      129 GETUPVAL                         R12 5
      130 GETTABLEKS                       R11 R12 K48 ["GRID_SIZE_VERTICAL_DRAG_TOLERANCE"]
      132 SETTABLEKS                       R11 R10 K38 ["VerticalDragTolerance"]
      134 CALL                             R8 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R8
      137 SETTABLEKS                       R8 R7 K18 ["Slider"]
      139 CALL                             R4 3 -1
      140 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Framework"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R1 K6 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K7 ["UI"]
       23 GETTABLEKS                       R5 R4 K8 ["IconButton"]
       25 GETTABLEKS                       R6 R4 K9 ["Pane"]
       27 GETTABLEKS                       R7 R4 K10 ["Slider"]
       29 GETIMPORT                        R8 K4 [require]
       31 GETTABLEKS                       R9 R0 K11 ["Enums"]
       33 CALL                             R8 1 1
       34 GETTABLEKS                       R9 R8 K12 ["ViewType"]
       36 GETIMPORT                        R10 K4 [require]
       38 GETTABLEKS                       R11 R0 K13 ["Util"]
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R11 R10 K14 ["Constants"]
       43 DUPCLOSURE                       R12 K15 [PROTO_0]
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R11
       50 SETGLOBAL                        R12 K16 ["ViewTypeButton"]
       52 GETGLOBAL                        R12 K16 ["ViewTypeButton"]
       54 RETURN                           R12 1
