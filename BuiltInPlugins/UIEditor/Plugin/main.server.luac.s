PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setActionMediator"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K0 ["setActionMediator"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R0 R0 K0 ["setActionMediator"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R0 R0 K0 ["setActionMediator"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R2 0
       22 NAMECALL                         R0 R0 K1 ["setMove"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 1
       26 GETUPVAL                         R2 2
       27 NAMECALL                         R0 R0 K2 ["setResize"]
       29 CALL                             R0 2 0
       30 GETUPVAL                         R0 1
       31 GETUPVAL                         R2 3
       32 NAMECALL                         R0 R0 K3 ["setRubberband"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 1
       36 GETUPVAL                         R2 4
       37 NAMECALL                         R0 R0 K4 ["setTextEditor"]
       39 CALL                             R0 2 0
       40 GETUPVAL                         R0 1
       41 GETUPVAL                         R2 5
       42 NAMECALL                         R0 R0 K5 ["setDistanceLinesManager"]
       44 CALL                             R0 2 0
       45 GETUPVAL                         R0 1
       46 GETUPVAL                         R2 6
       47 NAMECALL                         R0 R0 K6 ["setSizeBox"]
       49 CALL                             R0 2 0
       50 GETUPVAL                         R0 1
       51 GETUPVAL                         R2 7
       52 NAMECALL                         R0 R0 K7 ["setSelectionManager"]
       54 CALL                             R0 2 0
       55 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["Position"]
        4 GETTABLEKS                       R2 R3 K4 ["x"]
        6 GETTABLEKS                       R4 R0 K3 ["Position"]
        8 GETTABLEKS                       R3 R4 K5 ["y"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K6 ["getGuiObjectsAtPoint"]
       15 CALL                             R2 2 1
       16 LENGTH                           R3 R2
       17 LOADN                            R4 0
       18 JUMPIFNOTLT                      R4 R3 ; [+30]
       20 GETTABLEN                        R3 R2 1
       21 LOADK                            R5 K7 ["TextLabel"]
       22 NAMECALL                         R3 R3 K8 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+12]
       26 GETTABLEN                        R3 R2 1
       27 LOADK                            R5 K9 ["TextButton"]
       28 NAMECALL                         R3 R3 K8 ["IsA"]
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+6]
       32 GETTABLEN                        R3 R2 1
       33 LOADK                            R5 K10 ["TextBox"]
       34 NAMECALL                         R3 R3 K8 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+11]
       38 GETUPVAL                         R3 1
       39 GETTABLEN                        R5 R2 1
       40 NAMECALL                         R3 R3 K11 ["startEditingInstance"]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 2
       44 NAMECALL                         R3 R3 K12 ["hide"]
       46 CALL                             R3 1 0
       47 LOADB                            R3 1
       48 RETURN                           R3 1
       49 LOADB                            R3 0
       50 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["Parent"] ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["onParentChanged"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K2 ["updatePosition"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R2 R2 K3 ["updateSize"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R2 R2 K4 ["update"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 LOADB                            R4 1
       21 NAMECALL                         R2 R2 K5 ["setVisible"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 3
       25 NAMECALL                         R2 R2 K4 ["update"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onDescendantAddedToStarterGui"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSelectionChanged"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["generateSnappingLines"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K2 ["Get"]
       11 CALL                             R0 1 1
       12 GETTABLEN                        R1 R0 1
       13 JUMPIFNOT                        R1 ; [+26]
       14 GETTABLEN                        R1 R0 1
       15 LOADK                            R3 K3 ["BillboardGui"]
       16 NAMECALL                         R1 R1 K4 ["FindFirstAncestorOfClass"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+5]
       20 GETTABLEN                        R1 R0 1
       21 LOADK                            R3 K5 ["SurfaceGui"]
       22 NAMECALL                         R1 R1 K4 ["FindFirstAncestorOfClass"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+14]
       26 GETUPVAL                         R2 3
       27 NAMECALL                         R2 R2 K6 ["hide"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 4
       31 LOADB                            R4 0
       32 NAMECALL                         R2 R2 K7 ["setVisible"]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 5
       36 LOADB                            R4 0
       37 NAMECALL                         R2 R2 K7 ["setVisible"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["startDrag"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isCurrentlyEditing"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        8 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R1 R2 ; [+63]
       12 GETUPVAL                         R1 1
       13 GETIMPORT                        R3 K7 [Enum.KeyCode.LeftShift]
       15 NAMECALL                         R1 R1 K8 ["IsKeyDown"]
       17 CALL                             R1 2 1
       18 JUMPIF                           R1 ; [+7]
       19 GETUPVAL                         R1 1
       20 GETIMPORT                        R3 K10 [Enum.KeyCode.RightShift]
       22 NAMECALL                         R1 R1 K8 ["IsKeyDown"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETUPVAL                         R1 3
       27 NAMECALL                         R1 R1 K11 ["getRawSelection"]
       29 CALL                             R1 1 1
       30 SETUPVAL                         R1 2
       31 GETUPVAL                         R1 3
       32 GETUPVAL                         R3 4
       33 NAMECALL                         R1 R1 K12 ["disconnectSelectionInstancesChanged"]
       35 CALL                             R1 2 1
       36 SETUPVAL                         R1 4
       37 LOADB                            R1 1
       38 SETUPVAL                         R1 5
       39 GETIMPORT                        R1 K15 [Vector2.new]
       41 GETTABLEKS                       R3 R0 K16 ["Position"]
       43 GETTABLEKS                       R2 R3 K17 ["X"]
       45 GETTABLEKS                       R4 R0 K16 ["Position"]
       47 GETTABLEKS                       R3 R4 K18 ["Y"]
       49 CALL                             R1 2 1
       50 GETUPVAL                         R2 6
       51 NAMECALL                         R2 R2 K19 ["isOverAHandle"]
       53 CALL                             R2 1 1
       54 JUMPIFNOT                        R2 ; [+6]
       55 GETUPVAL                         R2 6
       56 MOVE                             R4 R1
       57 NAMECALL                         R2 R2 K20 ["startDrag"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 7
       62 MOVE                             R4 R1
       63 NAMECALL                         R2 R2 K21 ["selectTopLevelItemAtPoint"]
       65 CALL                             R2 2 1
       66 JUMPIFNOT                        R2 ; [+59]
       67 GETIMPORT                        R3 K24 [task.defer]
       69 NEWCLOSURE                       R4 P0
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          VAL R1
       72 CALL                             R3 1 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
       76 GETIMPORT                        R2 K26 [Enum.UserInputType.Keyboard]
       78 JUMPIFNOTEQ                      R1 R2 ; [+47]
       80 GETTABLEKS                       R1 R0 K5 ["KeyCode"]
       82 GETIMPORT                        R2 K28 [Enum.KeyCode.U]
       84 JUMPIFNOTEQ                      R1 R2 ; [+20]
       86 GETUPVAL                         R1 1
       87 GETIMPORT                        R3 K7 [Enum.KeyCode.LeftShift]
       89 NAMECALL                         R1 R1 K8 ["IsKeyDown"]
       91 CALL                             R1 2 1
       92 JUMPIF                           R1 ; [+7]
       93 GETUPVAL                         R1 1
       94 GETIMPORT                        R3 K10 [Enum.KeyCode.RightShift]
       96 NAMECALL                         R1 R1 K8 ["IsKeyDown"]
       98 CALL                             R1 2 1
       99 JUMPIFNOT                        R1 ; [+5]
      100 GETUPVAL                         R1 9
      101 NAMECALL                         R1 R1 K29 ["toggleGridType"]
      103 CALL                             R1 1 0
      104 RETURN                           R0 0
      105 GETTABLEKS                       R1 R0 K5 ["KeyCode"]
      107 GETIMPORT                        R2 K31 [Enum.KeyCode.A]
      109 JUMPIFNOTEQ                      R1 R2 ; [+16]
      111 GETUPVAL                         R1 1
      112 GETIMPORT                        R3 K33 [Enum.KeyCode.LeftControl]
      114 NAMECALL                         R1 R1 K8 ["IsKeyDown"]
      116 CALL                             R1 2 1
      117 JUMPIFNOT                        R1 ; [+8]
      118 GETUPVAL                         R1 3
      119 GETUPVAL                         R3 7
      120 NAMECALL                         R3 R3 K34 ["getGuiObjects"]
      122 CALL                             R3 1 -1
      123 NAMECALL                         R1 R1 K35 ["setSelection"]
      125 CALL                             R1 -1 0
      126 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+140]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 GETIMPORT                        R1 K6 [Vector2.new]
       10 GETTABLEKS                       R3 R0 K7 ["Position"]
       12 GETTABLEKS                       R2 R3 K8 ["X"]
       14 GETTABLEKS                       R4 R0 K7 ["Position"]
       16 GETTABLEKS                       R3 R4 K9 ["Y"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 1
       20 NAMECALL                         R2 R2 K10 ["isDragInProgress"]
       22 CALL                             R2 1 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R2 1
       25 NAMECALL                         R2 R2 K11 ["finishDrag"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R2 R2 K10 ["isDragInProgress"]
       31 CALL                             R2 1 1
       32 JUMPIFNOT                        R2 ; [+52]
       33 GETUPVAL                         R2 3
       34 GETIMPORT                        R4 K14 [Enum.KeyCode.LeftShift]
       36 NAMECALL                         R2 R2 K15 ["IsKeyDown"]
       38 CALL                             R2 2 1
       39 JUMPIF                           R2 ; [+7]
       40 GETUPVAL                         R2 3
       41 GETIMPORT                        R4 K17 [Enum.KeyCode.RightShift]
       43 NAMECALL                         R2 R2 K15 ["IsKeyDown"]
       45 CALL                             R2 2 1
       46 JUMPIFNOT                        R2 ; [+10]
       47 GETUPVAL                         R2 4
       48 GETUPVAL                         R4 5
       49 GETUPVAL                         R5 2
       50 NAMECALL                         R5 R5 K18 ["getBounds"]
       52 CALL                             R5 1 -1
       53 NAMECALL                         R2 R2 K19 ["toggleSelectionOfAllObjectsInBounds"]
       55 CALL                             R2 -1 0
       56 JUMP                             ; [+8]
       57 GETUPVAL                         R2 4
       58 GETUPVAL                         R4 2
       59 NAMECALL                         R4 R4 K18 ["getBounds"]
       61 CALL                             R4 1 -1
       62 NAMECALL                         R2 R2 K20 ["selectAllObjectsInBounds"]
       64 CALL                             R2 -1 0
       65 GETUPVAL                         R3 6
       66 NAMECALL                         R3 R3 K21 ["getRawSelection"]
       68 CALL                             R3 1 1
       69 LENGTH                           R2 R3
       70 LOADN                            R3 0
       71 JUMPIFNOTLT                      R3 R2 ; [+6]
       73 GETUPVAL                         R2 7
       74 LOADK                            R4 K22 ["DragSelect"]
       75 NAMECALL                         R2 R2 K23 ["reportEvent"]
       77 CALL                             R2 2 0
       78 GETUPVAL                         R2 2
       79 NAMECALL                         R2 R2 K24 ["finishRubberbandDrag"]
       81 CALL                             R2 1 0
       82 NEWTABLE                         R2 0 0
       84 SETUPVAL                         R2 5
       85 GETUPVAL                         R2 8
       86 NAMECALL                         R2 R2 K10 ["isDragInProgress"]
       88 CALL                             R2 1 1
       89 JUMPIFNOT                        R2 ; [+5]
       90 GETUPVAL                         R2 8
       91 MOVE                             R4 R1
       92 NAMECALL                         R2 R2 K11 ["finishDrag"]
       94 CALL                             R2 2 0
       95 GETUPVAL                         R2 9
       96 NAMECALL                         R2 R2 K25 ["isDoubleClick"]
       98 CALL                             R2 1 1
       99 JUMPIFNOT                        R2 ; [+19]
      100 GETUPVAL                         R2 3
      101 GETIMPORT                        R4 K27 [Enum.KeyCode.LeftAlt]
      103 NAMECALL                         R2 R2 K15 ["IsKeyDown"]
      105 CALL                             R2 2 1
      106 JUMPIF                           R2 ; [+12]
      107 GETUPVAL                         R2 3
      108 GETIMPORT                        R4 K29 [Enum.KeyCode.RightAlt]
      110 NAMECALL                         R2 R2 K15 ["IsKeyDown"]
      112 CALL                             R2 2 1
      113 JUMPIF                           R2 ; [+5]
      114 GETUPVAL                         R2 10
      115 MOVE                             R3 R0
      116 CALL                             R2 1 1
      117 JUMPIFNOT                        R2 ; [+1]
      118 RETURN                           R0 0
      119 GETUPVAL                         R2 11
      120 JUMPIF                           R2 ; [+6]
      121 GETUPVAL                         R2 6
      122 GETUPVAL                         R4 12
      123 NAMECALL                         R2 R2 K30 ["connectSelectionInstancesChanged"]
      125 CALL                             R2 2 1
      126 SETUPVAL                         R2 11
      127 GETUPVAL                         R2 1
      128 NAMECALL                         R2 R2 K31 ["isOverAHandle"]
      130 CALL                             R2 1 1
      131 JUMPIFNOT                        R2 ; [+5]
      132 GETUPVAL                         R2 1
      133 NAMECALL                         R2 R2 K32 ["updateMouseIcon"]
      135 CALL                             R2 1 0
      136 JUMP                             ; [+4]
      137 GETUPVAL                         R2 13
      138 NAMECALL                         R2 R2 K33 ["setToDefaultIcon"]
      140 CALL                             R2 1 0
      141 GETUPVAL                         R2 1
      142 NAMECALL                         R2 R2 K34 ["updateHandleHighlight"]
      144 CALL                             R2 1 0
      145 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isCurrentlyEditing"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        8 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R1 R2 ; [+96]
       12 GETIMPORT                        R1 K7 [Vector2.new]
       14 GETTABLEKS                       R3 R0 K8 ["Position"]
       16 GETTABLEKS                       R2 R3 K9 ["x"]
       18 GETTABLEKS                       R4 R0 K8 ["Position"]
       20 GETTABLEKS                       R3 R4 K10 ["y"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 1
       24 NAMECALL                         R2 R2 K11 ["isDragInProgress"]
       26 CALL                             R2 1 1
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETUPVAL                         R2 1
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K12 ["updateDrag"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 2
       35 NAMECALL                         R2 R2 K11 ["isDragInProgress"]
       37 CALL                             R2 1 1
       38 JUMPIFNOT                        R2 ; [+38]
       39 GETUPVAL                         R2 2
       40 MOVE                             R4 R1
       41 NAMECALL                         R2 R2 K13 ["updateRubberband"]
       43 CALL                             R2 2 0
       44 GETUPVAL                         R2 3
       45 GETIMPORT                        R4 K16 [Enum.KeyCode.LeftShift]
       47 NAMECALL                         R2 R2 K17 ["IsKeyDown"]
       49 CALL                             R2 2 1
       50 JUMPIF                           R2 ; [+7]
       51 GETUPVAL                         R2 3
       52 GETIMPORT                        R4 K19 [Enum.KeyCode.RightShift]
       54 NAMECALL                         R2 R2 K17 ["IsKeyDown"]
       56 CALL                             R2 2 1
       57 JUMPIFNOT                        R2 ; [+10]
       58 GETUPVAL                         R2 4
       59 GETUPVAL                         R4 5
       60 GETUPVAL                         R5 2
       61 NAMECALL                         R5 R5 K20 ["getBounds"]
       63 CALL                             R5 1 -1
       64 NAMECALL                         R2 R2 K21 ["toggleSelectionOfAllObjectsInBounds"]
       66 CALL                             R2 -1 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R2 4
       69 GETUPVAL                         R4 2
       70 NAMECALL                         R4 R4 K20 ["getBounds"]
       72 CALL                             R4 1 -1
       73 NAMECALL                         R2 R2 K22 ["selectAllObjectsInBounds"]
       75 CALL                             R2 -1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R2 6
       78 NAMECALL                         R2 R2 K11 ["isDragInProgress"]
       80 CALL                             R2 1 1
       81 JUMPIFNOT                        R2 ; [+6]
       82 GETUPVAL                         R2 6
       83 MOVE                             R4 R1
       84 NAMECALL                         R2 R2 K12 ["updateDrag"]
       86 CALL                             R2 2 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R2 1
       89 NAMECALL                         R2 R2 K23 ["isOverAHandle"]
       91 CALL                             R2 1 1
       92 JUMPIFNOT                        R2 ; [+5]
       93 GETUPVAL                         R2 1
       94 NAMECALL                         R2 R2 K24 ["updateMouseIcon"]
       96 CALL                             R2 1 0
       97 JUMP                             ; [+4]
       98 GETUPVAL                         R2 7
       99 NAMECALL                         R2 R2 K25 ["setToDefaultIcon"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 1
      103 LOADB                            R4 0
      104 NAMECALL                         R2 R2 K26 ["updateHandleHighlight"]
      106 CALL                             R2 2 0
      107 RETURN                           R0 0

PROTO_9:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEN                        R1 R0 1
        5 LOADK                            R3 K1 ["GuiBase2d"]
        6 NAMECALL                         R1 R1 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R1 1
       12 SETUPVAL                         R1 0
       13 GETIMPORT                        R1 K5 [Vector2.new]
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R3 R3 K6 ["GetMouse"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R2 R3 K7 ["X"]
       21 GETUPVAL                         R4 1
       22 NAMECALL                         R4 R4 K6 ["GetMouse"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R3 R4 K8 ["Y"]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 2
       29 MOVE                             R4 R0
       30 NAMECALL                         R2 R2 K9 ["Set"]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 3
       34 NAMECALL                         R2 R2 K10 ["onSelectionChanged"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 4
       38 MOVE                             R4 R1
       39 NAMECALL                         R2 R2 K11 ["startDrag"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ShowDevelopmentGui"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["IsRunning"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 RETURN                           R0 0

PROTO_11:
        0 JUMPIFEQKS                       R0 K0 ["Translate Objects (better tt needed)"] ; [+7]
        2 JUMPIFEQKS                       R0 K1 ["Resize"] ; [+5]
        4 JUMPIFEQKS                       R0 K2 ["Text Changed"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K3 ["Rotate object"] ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_12:
        0 JUMPIFEQKS                       R0 K0 ["Translate Objects (better tt needed)"] ; [+7]
        2 JUMPIFEQKS                       R0 K1 ["Resize"] ; [+5]
        4 JUMPIFEQKS                       R0 K2 ["Text Changed"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K3 ["Rotate object"] ; [+3]
        8 LOADB                            R1 1
        9 JUMP                             ; [+1]
       10 LOADB                            R1 0
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K4 ["updatePosition"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 JUMPIFEQKS                       R0 K0 ["Translate Objects (better tt needed)"] ; [+7]
        2 JUMPIFEQKS                       R0 K1 ["Resize"] ; [+5]
        4 JUMPIFEQKS                       R0 K2 ["Text Changed"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K3 ["Rotate object"] ; [+3]
        8 LOADB                            R1 1
        9 JUMP                             ; [+1]
       10 LOADB                            R1 0
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K4 ["updatePosition"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["Disabled"]
        7 NAMECALL                         R0 R0 K1 ["reportEvent"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K2 ["disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 NAMECALL                         R0 R0 K2 ["disconnect"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R0 R1 K3 ["InputBegan"]
       21 GETUPVAL                         R2 6
       22 NAMECALL                         R0 R0 K4 ["connect"]
       24 CALL                             R0 2 1
       25 SETUPVAL                         R0 4
       26 GETUPVAL                         R0 7
       27 NAMECALL                         R0 R0 K5 ["refreshPaintOrder"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 8
       31 NAMECALL                         R0 R0 K2 ["disconnect"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 9
       35 NAMECALL                         R0 R0 K2 ["disconnect"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 10
       39 NAMECALL                         R0 R0 K2 ["disconnect"]
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 11
       43 NAMECALL                         R0 R0 K2 ["disconnect"]
       45 CALL                             R0 1 0
       46 GETUPVAL                         R0 12
       47 NAMECALL                         R0 R0 K2 ["disconnect"]
       49 CALL                             R0 1 0
       50 GETUPVAL                         R0 14
       51 GETUPVAL                         R2 13
       52 NAMECALL                         R0 R0 K6 ["disconnectSelectionInstancesChanged"]
       54 CALL                             R0 2 1
       55 SETUPVAL                         R0 13
       56 GETUPVAL                         R0 14
       57 GETUPVAL                         R2 15
       58 NAMECALL                         R0 R0 K7 ["disconnectFilteredSelectionChanged"]
       60 CALL                             R0 2 0
       61 GETUPVAL                         R0 14
       62 GETUPVAL                         R2 16
       63 NAMECALL                         R0 R0 K7 ["disconnectFilteredSelectionChanged"]
       65 CALL                             R0 2 0
       66 GETUPVAL                         R0 14
       67 GETUPVAL                         R2 17
       68 NAMECALL                         R0 R0 K7 ["disconnectFilteredSelectionChanged"]
       70 CALL                             R0 2 0
       71 GETUPVAL                         R0 14
       72 GETUPVAL                         R2 18
       73 NAMECALL                         R0 R0 K7 ["disconnectFilteredSelectionChanged"]
       75 CALL                             R0 2 0
       76 GETUPVAL                         R0 17
       77 NAMECALL                         R0 R0 K8 ["Off"]
       79 CALL                             R0 1 0
       80 GETUPVAL                         R0 15
       81 NAMECALL                         R0 R0 K8 ["Off"]
       83 CALL                             R0 1 0
       84 GETUPVAL                         R0 19
       85 NAMECALL                         R0 R0 K8 ["Off"]
       87 CALL                             R0 1 0
       88 GETUPVAL                         R0 16
       89 NAMECALL                         R0 R0 K8 ["Off"]
       91 CALL                             R0 1 0
       92 GETUPVAL                         R0 20
       93 LOADB                            R2 0
       94 NAMECALL                         R0 R0 K9 ["SetActive"]
       96 CALL                             R0 2 0
       97 GETUPVAL                         R0 21
       98 NAMECALL                         R0 R0 K10 ["Deactivate"]
      100 CALL                             R0 1 0
      101 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["Enabled"]
        5 NAMECALL                         R0 R0 K1 ["reportEvent"]
        7 CALL                             R0 2 0
        8 GETIMPORT                        R0 K3 [game]
       10 LOADK                            R2 K4 ["StopUIEditorFocusOnPluginActivation"]
       11 NAMECALL                         R0 R0 K5 ["GetFastFlag"]
       13 CALL                             R0 2 1
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 2
       16 LOADB                            R2 0
       17 NAMECALL                         R0 R0 K6 ["Activate"]
       19 CALL                             R0 2 0
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R0 2
       22 LOADB                            R2 1
       23 NAMECALL                         R0 R0 K6 ["Activate"]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 3
       27 LOADB                            R2 1
       28 NAMECALL                         R0 R0 K7 ["SetActive"]
       30 CALL                             R0 2 0
       31 GETUPVAL                         R0 4
       32 LOADN                            R2 5
       33 NAMECALL                         R0 R0 K8 ["setThreshold"]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 5
       37 NAMECALL                         R0 R0 K9 ["On"]
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 6
       41 NAMECALL                         R0 R0 K9 ["On"]
       43 CALL                             R0 1 0
       44 GETUPVAL                         R0 7
       45 GETUPVAL                         R2 2
       46 NAMECALL                         R2 R2 K10 ["GetMouse"]
       48 CALL                             R2 1 -1
       49 NAMECALL                         R0 R0 K9 ["On"]
       51 CALL                             R0 -1 0
       52 GETUPVAL                         R0 8
       53 NAMECALL                         R0 R0 K9 ["On"]
       55 CALL                             R0 1 0
       56 GETUPVAL                         R1 10
       57 GETTABLEKS                       R0 R1 K11 ["DescendantAdded"]
       59 GETUPVAL                         R2 11
       60 NAMECALL                         R0 R0 K12 ["connect"]
       62 CALL                             R0 2 1
       63 SETUPVAL                         R0 9
       64 GETUPVAL                         R0 12
       65 NAMECALL                         R0 R0 K13 ["disconnect"]
       67 CALL                             R0 1 0
       68 GETUPVAL                         R1 14
       69 GETTABLEKS                       R0 R1 K14 ["InputBegan"]
       71 GETUPVAL                         R2 15
       72 NAMECALL                         R0 R0 K12 ["connect"]
       74 CALL                             R0 2 1
       75 SETUPVAL                         R0 13
       76 GETUPVAL                         R1 14
       77 GETTABLEKS                       R0 R1 K15 ["InputChanged"]
       79 GETUPVAL                         R2 17
       80 NAMECALL                         R0 R0 K12 ["connect"]
       82 CALL                             R0 2 1
       83 SETUPVAL                         R0 16
       84 GETUPVAL                         R1 14
       85 GETTABLEKS                       R0 R1 K16 ["InputEnded"]
       87 GETUPVAL                         R2 19
       88 NAMECALL                         R0 R0 K12 ["connect"]
       90 CALL                             R0 2 1
       91 SETUPVAL                         R0 18
       92 GETUPVAL                         R1 21
       93 GETTABLEKS                       R0 R1 K17 ["SelectionChanged"]
       95 GETUPVAL                         R2 22
       96 NAMECALL                         R0 R0 K12 ["connect"]
       98 CALL                             R0 2 1
       99 SETUPVAL                         R0 20
      100 GETUPVAL                         R1 2
      101 NAMECALL                         R1 R1 K10 ["GetMouse"]
      103 CALL                             R1 1 1
      104 GETTABLEKS                       R0 R1 K18 ["DragEnter"]
      106 GETUPVAL                         R2 24
      107 NAMECALL                         R0 R0 K12 ["connect"]
      109 CALL                             R0 2 1
      110 SETUPVAL                         R0 23
      111 GETUPVAL                         R1 2
      112 GETTABLEKS                       R0 R1 K19 ["Deactivation"]
      114 GETGLOBAL                        R2 K20 ["Off"]
      116 NAMECALL                         R0 R0 K12 ["connect"]
      118 CALL                             R0 2 1
      119 SETUPVAL                         R0 25
      120 GETUPVAL                         R0 27
      121 GETUPVAL                         R2 28
      122 NAMECALL                         R0 R0 K21 ["connectSelectionInstancesChanged"]
      124 CALL                             R0 2 1
      125 SETUPVAL                         R0 26
      126 GETUPVAL                         R1 30
      127 GETTABLEKS                       R0 R1 K22 ["OnUndo"]
      129 GETUPVAL                         R2 31
      130 NAMECALL                         R0 R0 K12 ["connect"]
      132 CALL                             R0 2 1
      133 SETUPVAL                         R0 29
      134 GETUPVAL                         R1 30
      135 GETTABLEKS                       R0 R1 K23 ["OnRedo"]
      137 GETUPVAL                         R2 33
      138 NAMECALL                         R0 R0 K12 ["connect"]
      140 CALL                             R0 2 1
      141 SETUPVAL                         R0 32
      142 GETUPVAL                         R0 27
      143 GETUPVAL                         R2 6
      144 NAMECALL                         R0 R0 K24 ["connectFilteredSelectionChanged"]
      146 CALL                             R0 2 0
      147 GETUPVAL                         R0 27
      148 GETUPVAL                         R2 8
      149 NAMECALL                         R0 R0 K24 ["connectFilteredSelectionChanged"]
      151 CALL                             R0 2 0
      152 GETUPVAL                         R0 27
      153 GETUPVAL                         R2 5
      154 NAMECALL                         R0 R0 K24 ["connectFilteredSelectionChanged"]
      156 CALL                             R0 2 0
      157 GETUPVAL                         R0 27
      158 GETUPVAL                         R2 34
      159 NAMECALL                         R0 R0 K24 ["connectFilteredSelectionChanged"]
      161 CALL                             R0 2 0
      162 GETUPVAL                         R0 22
      163 CALL                             R0 0 0
      164 GETUPVAL                         R0 35
      165 CALL                             R0 0 0
      166 LOADB                            R0 1
      167 SETUPVAL                         R0 0
      168 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETGLOBAL                        R0 K0 ["Off"]
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETGLOBAL                        R0 K1 ["On"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LOADN                            R3 1
        5 LENGTH                           R1 R0
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 GETTABLE                         R4 R0 R3
        9 GETIMPORT                        R5 K2 [pcall]
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R4
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R5 ; [+10]
       15 GETUPVAL                         R5 2
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K3 ["passesGuiFilter"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+4]
       21 GETGLOBAL                        R5 K4 ["On"]
       23 CALL                             R5 0 0
       24 RETURN                           R0 0
       25 FORNLOOP                         R1
       26 GETGLOBAL                        R1 K5 ["Off"]
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isSelectionBeingChangedByUIEditor"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [spawn]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 GETIMPORT                        R1 K3 [settings]
        5 GETIMPORT                        R2 K5 [require]
        7 GETIMPORT                        R5 K7 [script]
        9 GETTABLEKS                       R4 R5 K8 ["Parent"]
       11 GETTABLEKS                       R3 R4 K9 ["ActionMediator"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETIMPORT                        R6 K7 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Parent"]
       20 GETTABLEKS                       R4 R5 K10 ["CoreGuiManager"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R7 K7 [script]
       27 GETTABLEKS                       R6 R7 K8 ["Parent"]
       29 GETTABLEKS                       R5 R6 K11 ["DoubleClickDetector"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R8 K7 [script]
       36 GETTABLEKS                       R7 R8 K8 ["Parent"]
       38 GETTABLEKS                       R6 R7 K12 ["FFlag"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R9 K7 [script]
       45 GETTABLEKS                       R8 R9 K8 ["Parent"]
       47 GETTABLEKS                       R7 R8 K13 ["RotationBox"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETIMPORT                        R10 K7 [script]
       54 GETTABLEKS                       R9 R10 K8 ["Parent"]
       56 GETTABLEKS                       R8 R9 K14 ["Rubberband"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETIMPORT                        R11 K7 [script]
       63 GETTABLEKS                       R10 R11 K8 ["Parent"]
       65 GETTABLEKS                       R9 R10 K15 ["SizeBox"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETIMPORT                        R12 K7 [script]
       72 GETTABLEKS                       R11 R12 K8 ["Parent"]
       74 GETTABLEKS                       R10 R11 K16 ["DistanceLinesManager"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETIMPORT                        R13 K7 [script]
       81 GETTABLEKS                       R12 R13 K8 ["Parent"]
       83 GETTABLEKS                       R11 R12 K17 ["TextEditor"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETIMPORT                        R14 K7 [script]
       90 GETTABLEKS                       R13 R14 K8 ["Parent"]
       92 GETTABLEKS                       R12 R13 K18 ["Utility"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETIMPORT                        R15 K7 [script]
       99 GETTABLEKS                       R14 R15 K8 ["Parent"]
      101 GETTABLEKS                       R13 R14 K19 ["GlobalValues"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETIMPORT                        R16 K7 [script]
      108 GETTABLEKS                       R15 R16 K8 ["Parent"]
      110 GETTABLEKS                       R14 R15 K20 ["InstanceInfo"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETIMPORT                        R17 K7 [script]
      117 GETTABLEKS                       R16 R17 K8 ["Parent"]
      119 GETTABLEKS                       R15 R16 K21 ["Select"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K5 [require]
      124 GETIMPORT                        R18 K7 [script]
      126 GETTABLEKS                       R17 R18 K8 ["Parent"]
      128 GETTABLEKS                       R16 R17 K22 ["Resize"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K5 [require]
      133 GETIMPORT                        R19 K7 [script]
      135 GETTABLEKS                       R18 R19 K8 ["Parent"]
      137 GETTABLEKS                       R17 R18 K23 ["Rotate"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K5 [require]
      142 GETIMPORT                        R20 K7 [script]
      144 GETTABLEKS                       R19 R20 K8 ["Parent"]
      146 GETTABLEKS                       R18 R19 K24 ["Move"]
      148 CALL                             R17 1 1
      149 GETIMPORT                        R18 K5 [require]
      151 GETIMPORT                        R21 K7 [script]
      153 GETTABLEKS                       R20 R21 K8 ["Parent"]
      155 GETTABLEKS                       R19 R20 K25 ["MouseIconManager"]
      157 CALL                             R18 1 1
      158 GETIMPORT                        R19 K5 [require]
      160 GETIMPORT                        R22 K7 [script]
      162 GETTABLEKS                       R21 R22 K8 ["Parent"]
      164 GETTABLEKS                       R20 R21 K26 ["SelectionManager"]
      166 CALL                             R19 1 1
      167 GETIMPORT                        R20 K5 [require]
      169 GETIMPORT                        R23 K7 [script]
      171 GETTABLEKS                       R22 R23 K8 ["Parent"]
      173 GETTABLEKS                       R21 R22 K27 ["SnappingPointManager"]
      175 CALL                             R20 1 1
      176 GETIMPORT                        R21 K5 [require]
      178 GETIMPORT                        R24 K7 [script]
      180 GETTABLEKS                       R23 R24 K8 ["Parent"]
      182 GETTABLEKS                       R22 R23 K28 ["Analytics"]
      184 CALL                             R21 1 1
      185 GETIMPORT                        R22 K30 [game]
      187 LOADK                            R24 K31 ["ChangeHistoryService"]
      188 NAMECALL                         R22 R22 K32 ["GetService"]
      190 CALL                             R22 2 1
      191 GETIMPORT                        R23 K30 [game]
      193 LOADK                            R25 K33 ["UserInputService"]
      194 NAMECALL                         R23 R23 K32 ["GetService"]
      196 CALL                             R23 2 1
      197 GETIMPORT                        R24 K30 [game]
      199 LOADK                            R26 K34 ["Selection"]
      200 NAMECALL                         R24 R24 K32 ["GetService"]
      202 CALL                             R24 2 1
      203 GETIMPORT                        R25 K30 [game]
      205 LOADK                            R27 K35 ["StarterGui"]
      206 NAMECALL                         R25 R25 K32 ["GetService"]
      208 CALL                             R25 2 1
      209 GETIMPORT                        R26 K30 [game]
      211 LOADK                            R28 K36 ["RunService"]
      212 NAMECALL                         R26 R26 K32 ["GetService"]
      214 CALL                             R26 2 1
      215 GETIMPORT                        R27 K30 [game]
      217 LOADK                            R29 K37 ["StopUIEditorFocusOnPluginActivation"]
      218 LOADB                            R30 0
      219 NAMECALL                         R27 R27 K38 ["DefineFastFlag"]
      221 CALL                             R27 3 0
      222 GETIMPORT                        R27 K30 [game]
      224 LOADK                            R29 K39 ["UIEditorAvoidEditingPath2D"]
      225 LOADB                            R30 0
      226 NAMECALL                         R27 R27 K38 ["DefineFastFlag"]
      228 CALL                             R27 3 0
      229 LOADNIL                          R27
      230 LOADNIL                          R28
      231 LOADNIL                          R29
      232 LOADNIL                          R30
      233 LOADNIL                          R31
      234 LOADNIL                          R32
      235 LOADNIL                          R33
      236 LOADNIL                          R34
      237 LOADNIL                          R35
      238 LOADNIL                          R36
      239 LOADNIL                          R37
      240 LOADB                            R38 0
      241 NEWTABLE                         R39 0 0
      243 GETIMPORT                        R41 K41 [workspace]
      245 GETTABLEKS                       R40 R41 K42 ["CurrentCamera"]
      247 GETIMPORT                        R41 K30 [game]
      249 LOADK                            R43 K43 ["UIDragDetectorEnableUseWithMorePlugins"]
      250 NAMECALL                         R41 R41 K44 ["GetEngineFeature"]
      252 CALL                             R41 2 1
      253 JUMPIFNOT                        R41 ; [+3]
      254 LOADB                            R41 1
      255 SETTABLEKS                       R41 R0 K45 ["DisableUIDragDetectorDrags"]
      257 DUPCLOSURE                       R41 K46 [PROTO_0]
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R2
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R10
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R8
      265 CAPTURE                          VAL R19
      266 DUPCLOSURE                       R42 K47 [PROTO_1]
      267 CAPTURE                          VAL R14
      268 CAPTURE                          VAL R10
      269 CAPTURE                          VAL R15
      270 DUPCLOSURE                       R43 K48 [PROTO_2]
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R9
      274 CAPTURE                          VAL R8
      275 DUPCLOSURE                       R44 K49 [PROTO_3]
      276 CAPTURE                          VAL R19
      277 DUPCLOSURE                       R45 K50 [PROTO_4]
      278 CAPTURE                          VAL R19
      279 CAPTURE                          VAL R20
      280 CAPTURE                          VAL R24
      281 CAPTURE                          VAL R15
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R9
      284 NEWCLOSURE                       R46 P5
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R23
      287 CAPTURE                          REF R39
      288 CAPTURE                          VAL R19
      289 CAPTURE                          REF R37
      290 CAPTURE                          REF R38
      291 CAPTURE                          VAL R15
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R12
      295 NEWCLOSURE                       R47 P6
      296 CAPTURE                          REF R38
      297 CAPTURE                          VAL R15
      298 CAPTURE                          VAL R7
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R14
      301 CAPTURE                          REF R39
      302 CAPTURE                          VAL R19
      303 CAPTURE                          VAL R21
      304 CAPTURE                          VAL R17
      305 CAPTURE                          VAL R4
      306 CAPTURE                          VAL R42
      307 CAPTURE                          REF R37
      308 CAPTURE                          VAL R43
      309 CAPTURE                          VAL R18
      310 NEWCLOSURE                       R48 P7
      311 CAPTURE                          VAL R10
      312 CAPTURE                          VAL R15
      313 CAPTURE                          VAL R7
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R14
      316 CAPTURE                          REF R39
      317 CAPTURE                          VAL R17
      318 CAPTURE                          VAL R18
      319 NEWCLOSURE                       R49 P8
      320 CAPTURE                          REF R38
      321 CAPTURE                          VAL R0
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R19
      324 CAPTURE                          VAL R17
      325 DUPCLOSURE                       R50 K51 [PROTO_10]
      326 CAPTURE                          VAL R25
      327 CAPTURE                          VAL R26
      328 DUPCLOSURE                       R51 K52 [PROTO_11]
      329 DUPCLOSURE                       R52 K53 [PROTO_12]
      330 CAPTURE                          VAL R15
      331 DUPCLOSURE                       R53 K54 [PROTO_13]
      332 CAPTURE                          VAL R15
      333 LOADB                            R54 0
      334 LOADB                            R55 0
      335 LOADNIL                          R56
      336 LOADNIL                          R57
      337 MOVE                             R58 R0
      338 JUMPIFNOT                        R58 ; [+4]
      339 LOADK                            R60 K55 ["RobloxUIEditor"]
      340 NAMECALL                         R58 R0 K56 ["CreateToolbar"]
      342 CALL                             R58 2 1
      343 MOVE                             R56 R58
      344 MOVE                             R58 R56
      345 JUMPIFNOT                        R58 ; [+6]
      346 LOADK                            R60 K55 ["RobloxUIEditor"]
      347 LOADK                            R61 K55 ["RobloxUIEditor"]
      348 LOADK                            R62 K57 [""]
      349 NAMECALL                         R58 R56 K58 ["CreateButton"]
      351 CALL                             R58 4 1
      352 MOVE                             R57 R58
      353 NEWCLOSURE                       R58 P13
      354 CAPTURE                          REF R55
      355 CAPTURE                          VAL R21
      356 CAPTURE                          REF R28
      357 CAPTURE                          REF R27
      358 CAPTURE                          REF R36
      359 CAPTURE                          VAL R23
      360 CAPTURE                          VAL R50
      361 CAPTURE                          VAL R14
      362 CAPTURE                          REF R29
      363 CAPTURE                          REF R30
      364 CAPTURE                          REF R31
      365 CAPTURE                          REF R32
      366 CAPTURE                          REF R33
      367 CAPTURE                          REF R37
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R9
      370 CAPTURE                          VAL R15
      371 CAPTURE                          VAL R8
      372 CAPTURE                          VAL R17
      373 CAPTURE                          VAL R18
      374 CAPTURE                          REF R57
      375 CAPTURE                          VAL R0
      376 SETGLOBAL                        R58 K59 ["Off"]
      378 NEWCLOSURE                       R58 P14
      379 CAPTURE                          REF R55
      380 CAPTURE                          VAL R21
      381 CAPTURE                          VAL R0
      382 CAPTURE                          REF R57
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R8
      385 CAPTURE                          VAL R9
      386 CAPTURE                          VAL R18
      387 CAPTURE                          VAL R15
      388 CAPTURE                          REF R27
      389 CAPTURE                          VAL R25
      390 CAPTURE                          VAL R44
      391 CAPTURE                          REF R36
      392 CAPTURE                          REF R28
      393 CAPTURE                          VAL R23
      394 CAPTURE                          VAL R46
      395 CAPTURE                          REF R29
      396 CAPTURE                          VAL R48
      397 CAPTURE                          REF R30
      398 CAPTURE                          VAL R47
      399 CAPTURE                          REF R31
      400 CAPTURE                          VAL R24
      401 CAPTURE                          VAL R45
      402 CAPTURE                          REF R33
      403 CAPTURE                          VAL R49
      404 CAPTURE                          REF R32
      405 CAPTURE                          REF R37
      406 CAPTURE                          VAL R19
      407 CAPTURE                          VAL R43
      408 CAPTURE                          REF R34
      409 CAPTURE                          VAL R22
      410 CAPTURE                          VAL R52
      411 CAPTURE                          REF R35
      412 CAPTURE                          VAL R53
      413 CAPTURE                          VAL R17
      414 CAPTURE                          VAL R41
      415 SETGLOBAL                        R58 K60 ["On"]
      417 JUMPIFNOT                        R57 ; [+23]
      418 LOADB                            R58 1
      419 SETTABLEKS                       R58 R25 K61 ["ProcessUserInput"]
      421 GETTABLEKS                       R58 R57 K62 ["Click"]
      423 NEWCLOSURE                       R60 P15
      424 CAPTURE                          REF R55
      425 NAMECALL                         R58 R58 K63 ["connect"]
      427 CALL                             R58 2 0
      428 DUPCLOSURE                       R58 K64 [PROTO_17]
      429 DUPCLOSURE                       R59 K65 [PROTO_18]
      430 CAPTURE                          VAL R24
      431 CAPTURE                          VAL R58
      432 CAPTURE                          VAL R19
      433 GETTABLEKS                       R60 R24 K66 ["SelectionChanged"]
      435 DUPCLOSURE                       R62 K67 [PROTO_19]
      436 CAPTURE                          VAL R19
      437 CAPTURE                          VAL R59
      438 NAMECALL                         R60 R60 K63 ["connect"]
      440 CALL                             R60 2 0
      441 GETTABLEKS                       R58 R23 K68 ["InputBegan"]
      443 MOVE                             R60 R50
      444 NAMECALL                         R58 R58 K63 ["connect"]
      446 CALL                             R58 2 1
      447 MOVE                             R36 R58
      448 NAMECALL                         R58 R14 K69 ["refreshPaintOrder"]
      450 CALL                             R58 1 0
      451 LOADB                            R54 1
      452 CLOSEUPVALS                      R27
      453 RETURN                           R0 0
