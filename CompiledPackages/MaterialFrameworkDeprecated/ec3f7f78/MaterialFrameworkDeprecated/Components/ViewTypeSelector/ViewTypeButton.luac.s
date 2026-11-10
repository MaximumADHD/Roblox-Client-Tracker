PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Style"]
        2 GETTABLEKS                       R2 R0 K1 ["ViewType"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Grid"]
        7 JUMPIFNOTEQ                      R2 R4 ; [+4]
        9 GETTABLEKS                       R3 R1 K3 ["GridIcon"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K4 ["ListIcon"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K5 ["createElement"]
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
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K5 ["createElement"]
       39 GETUPVAL                         R9 3
       40 DUPTABLE                         R10 K29 [{["BackgroundColor"], ["BackgroundStyle"] = "Box", ["IconColor"], ["IconSize"], ["LayoutOrder"] = 1, ["LeftIcon"], ["OnClick"], ["Size"], ["Text"]}]
       41 GETTABLEKS                       R11 R1 K7 ["BackgroundColor"]
       43 SETTABLEKS                       R11 R10 K7 ["BackgroundColor"]
       45 GETTABLEKS                       R11 R1 K22 ["IconColor"]
       47 SETTABLEKS                       R11 R10 K22 ["IconColor"]
       49 GETTABLEKS                       R11 R1 K23 ["IconSize"]
       51 SETTABLEKS                       R11 R10 K23 ["IconSize"]
       53 SETTABLEKS                       R3 R10 K25 ["LeftIcon"]
       55 GETTABLEKS                       R11 R0 K26 ["OnClick"]
       57 SETTABLEKS                       R11 R10 K26 ["OnClick"]
       59 GETTABLEKS                       R11 R1 K30 ["ItemSize"]
       61 SETTABLEKS                       R11 R10 K27 ["Size"]
       63 GETTABLEKS                       R11 R0 K28 ["Text"]
       65 SETTABLEKS                       R11 R10 K28 ["Text"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K17 ["IconButton"]
       70 GETTABLEKS                       R9 R0 K1 ["ViewType"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K2 ["Grid"]
       75 JUMPIFNOTEQ                      R9 R10 ; [+48]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K5 ["createElement"]
       80 GETUPVAL                         R9 4
       81 DUPTABLE                         R10 K42 [{["AnchorPoint"], ["Disabled"] = False, ["Value"], ["Min"], ["Max"], ["LayoutOrder"] = 2, ["OnValueChanged"], ["Position"], ["Size"], ["SnapIncrement"], ["VerticalDragTolerance"]}]
       82 GETTABLEKS                       R11 R1 K43 ["SliderAnchorPoint"]
       84 SETTABLEKS                       R11 R10 K31 ["AnchorPoint"]
       86 GETTABLEKS                       R11 R0 K44 ["GridSize"]
       88 SETTABLEKS                       R11 R10 K34 ["Value"]
       90 GETUPVAL                         R11 5
       91 GETTABLEKS                       R11 R11 K45 ["GRID_SIZE_MIN"]
       93 SETTABLEKS                       R11 R10 K35 ["Min"]
       95 GETUPVAL                         R11 5
       96 GETTABLEKS                       R11 R11 K46 ["GRID_SIZE_MAX"]
       98 SETTABLEKS                       R11 R10 K36 ["Max"]
      100 GETTABLEKS                       R11 R0 K47 ["OnGridSizeChanged"]
      102 SETTABLEKS                       R11 R10 K38 ["OnValueChanged"]
      104 GETTABLEKS                       R11 R1 K48 ["SliderPosition"]
      106 SETTABLEKS                       R11 R10 K39 ["Position"]
      108 GETTABLEKS                       R11 R1 K49 ["SliderSize"]
      110 SETTABLEKS                       R11 R10 K27 ["Size"]
      112 GETUPVAL                         R11 5
      113 GETTABLEKS                       R11 R11 K50 ["GRID_SIZE_SNAP_INCREMENT"]
      115 SETTABLEKS                       R11 R10 K40 ["SnapIncrement"]
      117 GETUPVAL                         R11 5
      118 GETTABLEKS                       R11 R11 K51 ["GRID_SIZE_VERTICAL_DRAG_TOLERANCE"]
      120 SETTABLEKS                       R11 R10 K41 ["VerticalDragTolerance"]
      122 CALL                             R8 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R8
      125 SETTABLEKS                       R8 R7 K18 ["Slider"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
