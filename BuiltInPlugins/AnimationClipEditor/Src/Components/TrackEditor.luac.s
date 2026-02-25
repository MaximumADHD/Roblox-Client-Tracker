PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"AbsoluteSize", "AbsolutePosition"}]
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R0 K1 ["AbsolutePosition"]
        8 SETTABLEKS                       R4 R3 K1 ["AbsolutePosition"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["HorizontalZoom"]
        5 GETTABLEKS                       R4 R2 K2 ["HorizontalScroll"]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K3 ["state"]
       10 GETTABLEKS                       R6 R7 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R5 R6 K5 ["X"]
       14 GETTABLEKS                       R6 R1 K6 ["UserInputType"]
       16 GETIMPORT                        R7 K9 [Enum.UserInputType.MouseMovement]
       18 JUMPIFNOTEQ                      R6 R7 ; [+33]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K10 ["dragging"]
       23 JUMPIFNOT                        R6 ; [+28]
       24 GETTABLEKS                       R9 R1 K11 ["Delta"]
       26 GETTABLEKS                       R8 R9 K5 ["X"]
       28 MINUS                            R7 R8
       29 DIV                              R6 R7 R5
       30 LOADK                            R10 K13 [0.01]
       31 FASTCALL2                        MATH_MAX R10 R3 ; [+4]
       33 MOVE                             R11 R3
       34 GETIMPORT                        R9 K16 [math.max]
       36 CALL                             R9 2 1
       37 DIVRK                            R8 R12 K9 [Enum.UserInputType.MouseMovement]
       38 MUL                              R7 R6 R8
       39 ADD                              R9 R4 R7
       40 LOADN                            R10 0
       41 LOADN                            R11 1
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R8 K18 [math.clamp]
       45 CALL                             R8 3 1
       46 MOVE                             R7 R8
       47 GETTABLEKS                       R8 R2 K19 ["SetHorizontalScrollZoom"]
       49 MOVE                             R9 R7
       50 MOVE                             R10 R3
       51 CALL                             R8 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["HorizontalZoom"]
        5 GETTABLEKS                       R4 R2 K2 ["HorizontalScroll"]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K3 ["state"]
       10 GETTABLEKS                       R6 R7 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R5 R6 K5 ["X"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K3 ["state"]
       17 GETTABLEKS                       R7 R8 K6 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R7 K5 ["X"]
       21 GETTABLEKS                       R9 R0 K5 ["X"]
       23 SUB                              R8 R9 R6
       24 DIV                              R7 R8 R5
       25 SUB                              R9 R7 R4
       26 SUBRK                            R10 R7 K3 ["state"]
       27 MUL                              R8 R9 R10
       28 ADD                              R10 R4 R8
       29 LOADN                            R11 0
       30 LOADN                            R12 1
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R9 K10 [math.clamp]
       34 CALL                             R9 3 1
       35 MOVE                             R8 R9
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K11 ["ctrlHeld"]
       39 JUMPIFNOT                        R9 ; [+34]
       40 JUMPIFNOTEQKS                    R1 K12 ["forward"] ; [+16]
       42 GETTABLEKS                       R9 R2 K13 ["SetHorizontalScrollZoom"]
       44 MOVE                             R10 R8
       45 GETUPVAL                         R14 1
       46 GETTABLEKS                       R13 R14 K14 ["ZOOM_INCREMENT"]
       48 ADD                              R12 R3 R13
       49 LOADN                            R13 0
       50 LOADN                            R14 1
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R11 K10 [math.clamp]
       54 CALL                             R11 3 1
       55 CALL                             R9 2 0
       56 RETURN                           R0 0
       57 JUMPIFNOTEQKS                    R1 K15 ["backward"] ; [+21]
       59 GETTABLEKS                       R9 R2 K13 ["SetHorizontalScrollZoom"]
       61 MOVE                             R10 R8
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R13 R14 K14 ["ZOOM_INCREMENT"]
       65 SUB                              R12 R3 R13
       66 LOADN                            R13 0
       67 LOADN                            R14 1
       68 FASTCALL                         MATH_CLAMP ; [+2]
       69 GETIMPORT                        R11 K10 [math.clamp]
       71 CALL                             R11 3 1
       72 CALL                             R9 2 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R9 R2 K16 ["OnWheelTick"]
       76 MOVE                             R10 R0
       77 MOVE                             R11 R1
       78 CALL                             R9 2 0
       79 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["dragging"]
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["dragging"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["state"]
        6 GETTABLEKS                       R1 R2 K2 ["AbsoluteSize"]
        8 JUMPIF                           R1 ; [+3]
        9 GETIMPORT                        R1 K5 [Vector2.new]
       11 CALL                             R1 0 1
       12 GETTABLEKS                       R2 R0 K6 ["Playhead"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K8 ["getTrackPadding"]
       17 CALL                             R5 0 1
       18 MULK                             R4 R5 K7 [0.5]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K9 ["getScaledKeyframePosition"]
       22 MOVE                             R6 R2
       23 GETTABLEKS                       R7 R0 K10 ["StartTick"]
       25 GETTABLEKS                       R8 R0 K11 ["EndTick"]
       27 GETTABLEKS                       R10 R1 K12 ["X"]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R11 R12 K8 ["getTrackPadding"]
       32 CALL                             R11 0 1
       33 SUB                              R9 R10 R11
       34 CALL                             R5 4 1
       35 ADD                              R3 R4 R5
       36 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PlayState"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R3 R4 K3 ["Pause"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETTABLEKS                       R2 R1 K4 ["StepAnimation"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Mouse"]
        5 JUMPIFNOT                        R2 ; [+19]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton3]
       10 JUMPIFNOTEQ                      R2 R3 ; [+14]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K1 ["Mouse"]
       17 LOADK                            R4 K6 ["ClosedHand"]
       18 NAMECALL                         R2 R2 K7 ["__pushCursor"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K8 ["startDragging"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Mouse"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["dragging"]
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R2 R1 K3 ["UserInputType"]
       12 GETIMPORT                        R3 K6 [Enum.UserInputType.MouseMovement]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 GETTABLEKS                       R2 R1 K3 ["UserInputType"]
       18 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton3]
       20 JUMPIFNOTEQ                      R2 R3 ; [+13]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["props"]
       25 GETTABLEKS                       R2 R3 K1 ["Mouse"]
       27 NAMECALL                         R2 R2 K9 ["__popCursor"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K10 ["stopDragging"]
       33 CALL                             R2 0 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FrameRate"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["LastTick"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["props"]
       13 GETTABLEKS                       R3 R4 K3 ["EndTick"]
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K6 [math.max]
       19 CALL                             R1 2 1
       20 MUL                              R3 R1 R0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K7 ["TICK_FREQUENCY"]
       24 DIV                              R2 R3 R4
       25 LOADN                            R3 100
       26 JUMPIFNOTLT                      R2 R3 ; [+5]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K8 ["TRACK_PADDING_SMALL"]
       31 RETURN                           R3 1
       32 LOADN                            R3 232
       33 JUMPIFNOTLT                      R2 R3 ; [+5]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R3 R4 K9 ["TRACK_PADDING_MEDIUM"]
       38 RETURN                           R3 1
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K10 ["TRACK_PADDING_LARGE"]
       42 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["IsChannelAnimation"]
        5 JUMPIFNOT                        R0 ; [+46]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["EditorMode"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["EDITOR_MODE"]
       14 GETTABLEKS                       R1 R2 K4 ["CurveCanvas"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+18]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["props"]
       21 GETTABLEKS                       R0 R1 K5 ["SwitchEditorMode"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K3 ["EDITOR_MODE"]
       26 GETTABLEKS                       R1 R2 K6 ["DopeSheet"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["props"]
       31 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K0 ["props"]
       38 GETTABLEKS                       R0 R1 K5 ["SwitchEditorMode"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K3 ["EDITOR_MODE"]
       43 GETTABLEKS                       R1 R2 K4 ["CurveCanvas"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K0 ["props"]
       48 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       50 CALL                             R0 2 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R1 R2 K0 ["props"]
       55 GETTABLEKS                       R0 R1 K8 ["ReadOnly"]
       57 JUMPIF                           R0 ; [+6]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R1 R2 K0 ["props"]
       61 GETTABLEKS                       R0 R1 K9 ["OnPromoteRequested"]
       63 CALL                             R0 0 0
       64 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["ctrlHeld"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["dragging"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["updateSize"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["inputChanged"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K4 ["wheelTick"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K5 ["startDragging"]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K6 ["stopDragging"]
       27 NEWCLOSURE                       R1 P5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R1 R0 K7 ["getPlayheadPositionX"]
       32 NEWCLOSURE                       R1 P6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R1 R0 K8 ["stepAnimation"]
       37 NEWCLOSURE                       R1 P7
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K9 ["inputBegan"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K10 ["inputEnded"]
       45 NEWCLOSURE                       R1 P9
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R1 R0 K11 ["getTrackPadding"]
       50 NEWCLOSURE                       R1 P10
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 SETTABLEKS                       R1 R0 K12 ["toggleEditorClicked"]
       55 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isControl"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["ctrlHeld"]
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isControl"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["ctrlHeld"]
       11 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["StartTick"]
        6 GETTABLEKS                       R4 R1 K3 ["EndTick"]
        8 GETTABLEKS                       R5 R1 K4 ["LastTick"]
       10 GETTABLEKS                       R6 R1 K5 ["SnapMode"]
       12 GETTABLEKS                       R7 R1 K6 ["FrameRate"]
       14 GETTABLEKS                       R8 R1 K7 ["TimelineUnit"]
       16 GETTABLEKS                       R9 R1 K8 ["HorizontalScroll"]
       18 GETTABLEKS                       R10 R1 K9 ["HorizontalZoom"]
       20 GETTABLEKS                       R11 R1 K10 ["VerticalScroll"]
       22 GETTABLEKS                       R12 R1 K11 ["VerticalZoom"]
       24 GETTABLEKS                       R13 R1 K12 ["LayoutOrder"]
       26 GETTABLEKS                       R14 R1 K13 ["ZIndex"]
       28 GETTABLEKS                       R15 R1 K14 ["Size"]
       30 GETTABLEKS                       R16 R1 K15 ["TopTrackIndex"]
       32 GETTABLEKS                       R17 R1 K16 ["ShowEvents"]
       34 GETTABLEKS                       R18 R1 K17 ["Playhead"]
       36 GETTABLEKS                       R19 R1 K18 ["IsChannelAnimation"]
       38 GETTABLEKS                       R20 R1 K19 ["ColorsPosition"]
       40 GETTABLEKS                       R21 R1 K20 ["Localization"]
       42 GETTABLEKS                       R22 R1 K21 ["SnapToNearestKeyframe"]
       44 GETTABLEKS                       R23 R1 K22 ["SnapToNearestFrame"]
       46 GETTABLEKS                       R24 R2 K23 ["AbsoluteSize"]
       48 JUMPIF                           R24 ; [+3]
       49 GETIMPORT                        R24 K26 [Vector2.new]
       51 CALL                             R24 0 1
       52 GETTABLEKS                       R25 R2 K27 ["AbsolutePosition"]
       54 JUMPIF                           R25 ; [+3]
       55 GETIMPORT                        R25 K26 [Vector2.new]
       57 CALL                             R25 0 1
       58 GETTABLEKS                       R26 R0 K28 ["getTrackPadding"]
       60 CALL                             R26 0 1
       61 LOADB                            R27 0
       62 JUMPIFNOTLE                      R3 R18 ; [+5]
       64 JUMPIFLE                         R18 R4 ; [+2]
       66 LOADB                            R27 0 +1
       67 LOADB                            R27 1
       68 GETTABLEKS                       R29 R1 K29 ["EditorMode"]
       70 GETUPVAL                         R32 0
       71 GETTABLEKS                       R31 R32 K30 ["EDITOR_MODE"]
       73 GETTABLEKS                       R30 R31 K31 ["DopeSheet"]
       75 JUMPIFEQ                         R29 R30 ; [+2]
       77 LOADB                            R28 0 +1
       78 LOADB                            R28 1
       79 GETTABLEKS                       R30 R1 K29 ["EditorMode"]
       81 GETUPVAL                         R33 0
       82 GETTABLEKS                       R32 R33 K30 ["EDITOR_MODE"]
       84 GETTABLEKS                       R31 R32 K32 ["CurveCanvas"]
       86 JUMPIFEQ                         R30 R31 ; [+2]
       88 LOADB                            R29 0 +1
       89 LOADB                            R29 1
       90 GETTABLEKS                       R30 R1 K33 ["CannotPasteError"]
       92 GETUPVAL                         R32 1
       93 GETTABLEKS                       R31 R32 K34 ["createElement"]
       95 LOADK                            R32 K35 ["Frame"]
       96 NEWTABLE                         R33 8 0
       98 LOADN                            R34 1
       99 SETTABLEKS                       R34 R33 K36 ["BackgroundTransparency"]
      101 SETTABLEKS                       R14 R33 K13 ["ZIndex"]
      103 SETTABLEKS                       R13 R33 K12 ["LayoutOrder"]
      105 SETTABLEKS                       R15 R33 K14 ["Size"]
      107 GETUPVAL                         R36 1
      108 GETTABLEKS                       R35 R36 K37 ["Change"]
      110 GETTABLEKS                       R34 R35 K23 ["AbsoluteSize"]
      112 GETTABLEKS                       R35 R0 K38 ["updateSize"]
      114 SETTABLE                         R35 R33 R34
      115 GETUPVAL                         R36 1
      116 GETTABLEKS                       R35 R36 K39 ["Event"]
      118 GETTABLEKS                       R34 R35 K40 ["InputBegan"]
      120 GETTABLEKS                       R35 R0 K41 ["inputBegan"]
      122 SETTABLE                         R35 R33 R34
      123 GETUPVAL                         R36 1
      124 GETTABLEKS                       R35 R36 K39 ["Event"]
      126 GETTABLEKS                       R34 R35 K42 ["InputEnded"]
      128 GETTABLEKS                       R35 R0 K43 ["inputEnded"]
      130 SETTABLE                         R35 R33 R34
      131 GETUPVAL                         R36 1
      132 GETTABLEKS                       R35 R36 K39 ["Event"]
      134 GETTABLEKS                       R34 R35 K44 ["MouseLeave"]
      136 GETTABLEKS                       R35 R0 K45 ["stopDragging"]
      138 SETTABLE                         R35 R33 R34
      139 DUPTABLE                         R34 K52 [{"Layout", "TimelineContainer", "DopeSheetController", "CurveEditorController", "CannotPasteToast", "IgnoreLayout"}]
      140 GETUPVAL                         R36 1
      141 GETTABLEKS                       R35 R36 K34 ["createElement"]
      143 LOADK                            R36 K53 ["UIListLayout"]
      144 DUPTABLE                         R37 K58 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
      145 GETIMPORT                        R38 K61 [Enum.FillDirection.Vertical]
      147 SETTABLEKS                       R38 R37 K54 ["FillDirection"]
      149 GETIMPORT                        R38 K63 [Enum.HorizontalAlignment.Center]
      151 SETTABLEKS                       R38 R37 K55 ["HorizontalAlignment"]
      153 GETIMPORT                        R38 K64 [Enum.SortOrder.LayoutOrder]
      155 SETTABLEKS                       R38 R37 K56 ["SortOrder"]
      157 GETIMPORT                        R38 K66 [Enum.VerticalAlignment.Top]
      159 SETTABLEKS                       R38 R37 K57 ["VerticalAlignment"]
      161 CALL                             R35 2 1
      162 SETTABLEKS                       R35 R34 K46 ["Layout"]
      164 GETUPVAL                         R36 1
      165 GETTABLEKS                       R35 R36 K34 ["createElement"]
      167 GETUPVAL                         R36 2
      168 DUPTABLE                         R37 K73 [{"StartTick", "EndTick", "LastTick", "SnapMode", "TrackPadding", "FrameRate", "TimelineUnit", "LayoutOrder", "ParentSize", "ParentPosition", "StepAnimation", "SnapToNearestKeyframe", "SnapToNearestFrame", "AnimationData", "Playhead", "ZIndex", "EditorMode", "OnToggleEditorClicked"}]
      169 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      171 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      173 SETTABLEKS                       R5 R37 K4 ["LastTick"]
      175 SETTABLEKS                       R6 R37 K5 ["SnapMode"]
      177 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      179 SETTABLEKS                       R7 R37 K6 ["FrameRate"]
      181 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      183 LOADN                            R38 0
      184 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      186 SETTABLEKS                       R24 R37 K68 ["ParentSize"]
      188 SETTABLEKS                       R25 R37 K69 ["ParentPosition"]
      190 GETTABLEKS                       R38 R0 K74 ["stepAnimation"]
      192 SETTABLEKS                       R38 R37 K70 ["StepAnimation"]
      194 SETTABLEKS                       R22 R37 K21 ["SnapToNearestKeyframe"]
      196 SETTABLEKS                       R23 R37 K22 ["SnapToNearestFrame"]
      198 GETTABLEKS                       R38 R1 K71 ["AnimationData"]
      200 SETTABLEKS                       R38 R37 K71 ["AnimationData"]
      202 SETTABLEKS                       R18 R37 K17 ["Playhead"]
      204 LOADN                            R38 2
      205 SETTABLEKS                       R38 R37 K13 ["ZIndex"]
      207 GETTABLEKS                       R38 R1 K29 ["EditorMode"]
      209 SETTABLEKS                       R38 R37 K29 ["EditorMode"]
      211 GETTABLEKS                       R38 R0 K75 ["toggleEditorClicked"]
      213 SETTABLEKS                       R38 R37 K72 ["OnToggleEditorClicked"]
      215 CALL                             R35 2 1
      216 SETTABLEKS                       R35 R34 K47 ["TimelineContainer"]
      218 JUMPIFNOT                        R28 ; [+46]
      219 GETUPVAL                         R36 1
      220 GETTABLEKS                       R35 R36 K34 ["createElement"]
      222 GETUPVAL                         R36 3
      223 DUPTABLE                         R37 K77 [{"ShowEvents", "StartTick", "EndTick", "TrackPadding", "TopTrackIndex", "Size", "TimelineUnit", "IsChannelAnimation", "ColorsPosition", "ZIndex", "OnWheelTick"}]
      224 SETTABLEKS                       R17 R37 K16 ["ShowEvents"]
      226 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      228 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      230 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      232 SETTABLEKS                       R16 R37 K15 ["TopTrackIndex"]
      234 GETIMPORT                        R38 K79 [UDim2.new]
      236 LOADN                            R39 1
      237 LOADN                            R40 0
      238 LOADN                            R41 1
      239 GETUPVAL                         R45 0
      240 GETTABLEKS                       R44 R45 K80 ["TIMELINE_HEIGHT"]
      242 MINUS                            R43 R44
      243 GETUPVAL                         R45 0
      244 GETTABLEKS                       R44 R45 K81 ["SCROLL_BAR_SIZE"]
      246 SUB                              R42 R43 R44
      247 CALL                             R38 4 1
      248 SETTABLEKS                       R38 R37 K14 ["Size"]
      250 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      252 SETTABLEKS                       R19 R37 K18 ["IsChannelAnimation"]
      254 SETTABLEKS                       R20 R37 K19 ["ColorsPosition"]
      256 LOADN                            R38 1
      257 SETTABLEKS                       R38 R37 K13 ["ZIndex"]
      259 GETTABLEKS                       R38 R0 K82 ["wheelTick"]
      261 SETTABLEKS                       R38 R37 K76 ["OnWheelTick"]
      263 CALL                             R35 2 1
      264 JUMPIF                           R35 ; [+1]
      265 LOADNIL                          R35
      266 SETTABLEKS                       R35 R34 K48 ["DopeSheetController"]
      268 JUMPIFNOT                        R29 ; [+46]
      269 GETUPVAL                         R36 1
      270 GETTABLEKS                       R35 R36 K34 ["createElement"]
      272 GETUPVAL                         R36 4
      273 DUPTABLE                         R37 K84 [{"ShowEvents", "StartTick", "EndTick", "TrackPadding", "Size", "TimelineUnit", "Playhead", "ZIndex", "OnInputChanged", "OnWheelTick"}]
      274 SETTABLEKS                       R17 R37 K16 ["ShowEvents"]
      276 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      278 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      280 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      282 GETIMPORT                        R38 K79 [UDim2.new]
      284 LOADN                            R39 1
      285 LOADN                            R40 0
      286 LOADN                            R41 1
      287 GETUPVAL                         R45 0
      288 GETTABLEKS                       R44 R45 K80 ["TIMELINE_HEIGHT"]
      290 MINUS                            R43 R44
      291 GETUPVAL                         R45 0
      292 GETTABLEKS                       R44 R45 K81 ["SCROLL_BAR_SIZE"]
      294 SUB                              R42 R43 R44
      295 CALL                             R38 4 1
      296 SETTABLEKS                       R38 R37 K14 ["Size"]
      298 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      300 SETTABLEKS                       R18 R37 K17 ["Playhead"]
      302 LOADN                            R38 1
      303 SETTABLEKS                       R38 R37 K13 ["ZIndex"]
      305 GETTABLEKS                       R38 R0 K85 ["inputChanged"]
      307 SETTABLEKS                       R38 R37 K83 ["OnInputChanged"]
      309 GETTABLEKS                       R38 R0 K82 ["wheelTick"]
      311 SETTABLEKS                       R38 R37 K76 ["OnWheelTick"]
      313 CALL                             R35 2 1
      314 JUMPIF                           R35 ; [+1]
      315 LOADNIL                          R35
      316 SETTABLEKS                       R35 R34 K49 ["CurveEditorController"]
      318 JUMPIFNOT                        R30 ; [+18]
      319 GETUPVAL                         R36 1
      320 GETTABLEKS                       R35 R36 K34 ["createElement"]
      322 GETUPVAL                         R36 5
      323 DUPTABLE                         R37 K88 [{"Text", "OnClose"}]
      324 LOADK                            R40 K89 ["Toast"]
      325 LOADK                            R41 K33 ["CannotPasteError"]
      326 NAMECALL                         R38 R21 K90 ["getText"]
      328 CALL                             R38 3 1
      329 SETTABLEKS                       R38 R37 K86 ["Text"]
      331 GETTABLEKS                       R38 R1 K91 ["CloseCannotPasteToast"]
      333 SETTABLEKS                       R38 R37 K87 ["OnClose"]
      335 CALL                             R35 2 1
      336 JUMPIF                           R35 ; [+1]
      337 LOADNIL                          R35
      338 SETTABLEKS                       R35 R34 K50 ["CannotPasteToast"]
      340 GETUPVAL                         R36 1
      341 GETTABLEKS                       R35 R36 K34 ["createElement"]
      343 LOADK                            R36 K92 ["Folder"]
      344 NEWTABLE                         R37 0 0
      346 DUPTABLE                         R38 K98 [{"TimelineBorder", "Scrubber", "HorizontalZoomBar", "VerticalZoomBar", "KeyboardListener"}]
      347 GETUPVAL                         R40 1
      348 GETTABLEKS                       R39 R40 K34 ["createElement"]
      350 GETUPVAL                         R40 6
      351 DUPTABLE                         R41 K103 [{"Position", "DominantAxis", "Weight", "Padding", "ZIndex"}]
      352 GETIMPORT                        R42 K79 [UDim2.new]
      354 LOADK                            R43 K104 [0.5]
      355 LOADN                            R44 0
      356 LOADN                            R45 0
      357 GETUPVAL                         R47 0
      358 GETTABLEKS                       R46 R47 K80 ["TIMELINE_HEIGHT"]
      360 CALL                             R42 4 1
      361 SETTABLEKS                       R42 R41 K99 ["Position"]
      363 GETIMPORT                        R42 K106 [Enum.DominantAxis.Width]
      365 SETTABLEKS                       R42 R41 K100 ["DominantAxis"]
      367 LOADN                            R42 1
      368 SETTABLEKS                       R42 R41 K101 ["Weight"]
      370 LOADN                            R42 0
      371 SETTABLEKS                       R42 R41 K102 ["Padding"]
      373 LOADN                            R42 2
      374 SETTABLEKS                       R42 R41 K13 ["ZIndex"]
      376 CALL                             R39 2 1
      377 SETTABLEKS                       R39 R38 K93 ["TimelineBorder"]
      379 MOVE                             R39 R27
      380 JUMPIFNOT                        R39 ; [+46]
      381 GETUPVAL                         R40 1
      382 GETTABLEKS                       R39 R40 K34 ["createElement"]
      384 GETUPVAL                         R40 7
      385 DUPTABLE                         R41 K112 [{"Position", "AnchorPoint", "Height", "ShowHead", "HeadSize", "ZIndex", "Thickness"}]
      386 GETIMPORT                        R42 K79 [UDim2.new]
      388 LOADN                            R43 0
      389 GETTABLEKS                       R44 R0 K113 ["getPlayheadPositionX"]
      391 CALL                             R44 0 1
      392 LOADN                            R45 0
      393 LOADN                            R46 0
      394 CALL                             R42 4 1
      395 SETTABLEKS                       R42 R41 K99 ["Position"]
      397 GETIMPORT                        R42 K26 [Vector2.new]
      399 LOADK                            R43 K104 [0.5]
      400 LOADN                            R44 0
      401 CALL                             R42 2 1
      402 SETTABLEKS                       R42 R41 K107 ["AnchorPoint"]
      404 GETTABLEKS                       R42 R24 K114 ["Y"]
      406 SETTABLEKS                       R42 R41 K108 ["Height"]
      408 LOADB                            R42 1
      409 SETTABLEKS                       R42 R41 K109 ["ShowHead"]
      411 GETIMPORT                        R42 K79 [UDim2.new]
      413 LOADN                            R43 0
      414 LOADN                            R44 5
      415 LOADN                            R45 0
      416 LOADN                            R46 5
      417 CALL                             R42 4 1
      418 SETTABLEKS                       R42 R41 K110 ["HeadSize"]
      420 LOADN                            R42 3
      421 SETTABLEKS                       R42 R41 K13 ["ZIndex"]
      423 LOADN                            R42 1
      424 SETTABLEKS                       R42 R41 K111 ["Thickness"]
      426 CALL                             R39 2 1
      427 SETTABLEKS                       R39 R38 K94 ["Scrubber"]
      429 GETUPVAL                         R40 1
      430 GETTABLEKS                       R39 R40 K34 ["createElement"]
      432 GETUPVAL                         R40 8
      433 DUPTABLE                         R41 K121 [{"Size", "Position", "Direction", "ZIndex", "LayoutOrder", "ContainerSize", "AdjustScrollZoom", "Scroll", "Zoom", "Min"}]
      434 GETIMPORT                        R42 K79 [UDim2.new]
      436 LOADN                            R43 0
      437 GETTABLEKS                       R46 R24 K123 ["X"]
      439 GETUPVAL                         R48 0
      440 GETTABLEKS                       R47 R48 K124 ["SCROLL_BAR_PADDING"]
      442 SUB                              R45 R46 R47
      443 ADDK                             R44 R45 K122 [1]
      444 LOADN                            R45 0
      445 GETUPVAL                         R47 0
      446 GETTABLEKS                       R46 R47 K81 ["SCROLL_BAR_SIZE"]
      448 CALL                             R42 4 1
      449 SETTABLEKS                       R42 R41 K14 ["Size"]
      451 GETIMPORT                        R42 K79 [UDim2.new]
      453 LOADN                            R43 0
      454 LOADN                            R44 0
      455 LOADN                            R45 1
      456 GETUPVAL                         R48 0
      457 GETTABLEKS                       R47 R48 K81 ["SCROLL_BAR_SIZE"]
      459 MINUS                            R46 R47
      460 CALL                             R42 4 1
      461 SETTABLEKS                       R42 R41 K99 ["Position"]
      463 GETUPVAL                         R43 8
      464 GETTABLEKS                       R42 R43 K125 ["HORIZONTAL"]
      466 SETTABLEKS                       R42 R41 K115 ["Direction"]
      468 LOADN                            R42 4
      469 SETTABLEKS                       R42 R41 K13 ["ZIndex"]
      471 LOADN                            R42 2
      472 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      474 GETIMPORT                        R42 K26 [Vector2.new]
      476 GETTABLEKS                       R43 R24 K123 ["X"]
      478 GETTABLEKS                       R44 R24 K114 ["Y"]
      480 CALL                             R42 2 1
      481 SETTABLEKS                       R42 R41 K116 ["ContainerSize"]
      483 GETTABLEKS                       R42 R1 K126 ["SetHorizontalScrollZoom"]
      485 SETTABLEKS                       R42 R41 K117 ["AdjustScrollZoom"]
      487 SETTABLEKS                       R9 R41 K118 ["Scroll"]
      489 SETTABLEKS                       R10 R41 K119 ["Zoom"]
      491 GETTABLEKS                       R43 R25 K123 ["X"]
      493 ADDK                             R42 R43 K122 [1]
      494 SETTABLEKS                       R42 R41 K120 ["Min"]
      496 CALL                             R39 2 1
      497 SETTABLEKS                       R39 R38 K95 ["HorizontalZoomBar"]
      499 MOVE                             R39 R29
      500 JUMPIFNOT                        R39 ; [+87]
      501 GETUPVAL                         R40 1
      502 GETTABLEKS                       R39 R40 K34 ["createElement"]
      504 GETUPVAL                         R40 8
      505 DUPTABLE                         R41 K121 [{"Size", "Position", "Direction", "ZIndex", "LayoutOrder", "ContainerSize", "AdjustScrollZoom", "Scroll", "Zoom", "Min"}]
      506 GETIMPORT                        R42 K79 [UDim2.new]
      508 LOADN                            R43 0
      509 GETUPVAL                         R45 0
      510 GETTABLEKS                       R44 R45 K81 ["SCROLL_BAR_SIZE"]
      512 LOADN                            R45 0
      513 GETTABLEKS                       R50 R24 K114 ["Y"]
      515 GETUPVAL                         R52 0
      516 GETTABLEKS                       R51 R52 K81 ["SCROLL_BAR_SIZE"]
      518 SUB                              R49 R50 R51
      519 GETUPVAL                         R51 0
      520 GETTABLEKS                       R50 R51 K124 ["SCROLL_BAR_PADDING"]
      522 SUB                              R48 R49 R50
      523 GETUPVAL                         R50 0
      524 GETTABLEKS                       R49 R50 K80 ["TIMELINE_HEIGHT"]
      526 SUB                              R47 R48 R49
      527 ADDK                             R46 R47 K122 [1]
      528 CALL                             R42 4 1
      529 SETTABLEKS                       R42 R41 K14 ["Size"]
      531 GETIMPORT                        R42 K79 [UDim2.new]
      533 LOADN                            R43 1
      534 LOADN                            R44 0
      535 LOADN                            R45 0
      536 GETUPVAL                         R47 0
      537 GETTABLEKS                       R46 R47 K80 ["TIMELINE_HEIGHT"]
      539 CALL                             R42 4 1
      540 SETTABLEKS                       R42 R41 K99 ["Position"]
      542 GETUPVAL                         R43 8
      543 GETTABLEKS                       R42 R43 K127 ["VERTICAL"]
      545 SETTABLEKS                       R42 R41 K115 ["Direction"]
      547 LOADN                            R42 4
      548 SETTABLEKS                       R42 R41 K13 ["ZIndex"]
      550 LOADN                            R42 2
      551 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      553 GETIMPORT                        R42 K26 [Vector2.new]
      555 GETTABLEKS                       R43 R24 K123 ["X"]
      557 GETTABLEKS                       R46 R24 K114 ["Y"]
      559 GETUPVAL                         R48 0
      560 GETTABLEKS                       R47 R48 K81 ["SCROLL_BAR_SIZE"]
      562 SUB                              R45 R46 R47
      563 GETUPVAL                         R47 0
      564 GETTABLEKS                       R46 R47 K80 ["TIMELINE_HEIGHT"]
      566 SUB                              R44 R45 R46
      567 CALL                             R42 2 1
      568 SETTABLEKS                       R42 R41 K116 ["ContainerSize"]
      570 GETTABLEKS                       R42 R1 K128 ["SetVerticalScrollZoom"]
      572 SETTABLEKS                       R42 R41 K117 ["AdjustScrollZoom"]
      574 SETTABLEKS                       R11 R41 K118 ["Scroll"]
      576 SETTABLEKS                       R12 R41 K119 ["Zoom"]
      578 GETTABLEKS                       R44 R25 K114 ["Y"]
      580 GETUPVAL                         R46 0
      581 GETTABLEKS                       R45 R46 K80 ["TIMELINE_HEIGHT"]
      583 ADD                              R43 R44 R45
      584 ADDK                             R42 R43 K122 [1]
      585 SETTABLEKS                       R42 R41 K120 ["Min"]
      587 CALL                             R39 2 1
      588 SETTABLEKS                       R39 R38 K96 ["VerticalZoomBar"]
      590 GETUPVAL                         R40 1
      591 GETTABLEKS                       R39 R40 K34 ["createElement"]
      593 GETUPVAL                         R40 9
      594 DUPTABLE                         R41 K131 [{"OnKeyPressed", "OnKeyReleased"}]
      595 NEWCLOSURE                       R42 P0
      596 CAPTURE                          UPVAL U10
      597 CAPTURE                          VAL R0
      598 SETTABLEKS                       R42 R41 K129 ["OnKeyPressed"]
      600 NEWCLOSURE                       R42 P1
      601 CAPTURE                          UPVAL U10
      602 CAPTURE                          VAL R0
      603 SETTABLEKS                       R42 R41 K130 ["OnKeyReleased"]
      605 CALL                             R39 2 1
      606 SETTABLEKS                       R39 R38 K97 ["KeyboardListener"]
      608 CALL                             R35 3 1
      609 SETTABLEKS                       R35 R34 K51 ["IgnoreLayout"]
      611 CALL                             R31 3 -1
      612 RETURN                           R31 -1

PROTO_15:
        0 DUPTABLE                         R1 K7 [{"AnimationData", "CannotPasteError", "EditorMode", "IsPlaying", "PlayState", "SnapMode", "ReadOnly"}]
        1 GETTABLEKS                       R2 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R2 R1 K0 ["AnimationData"]
        5 GETTABLEKS                       R3 R0 K8 ["Notifications"]
        7 GETTABLEKS                       R2 R3 K1 ["CannotPasteError"]
        9 SETTABLEKS                       R2 R1 K1 ["CannotPasteError"]
       11 GETTABLEKS                       R3 R0 K9 ["Status"]
       13 GETTABLEKS                       R2 R3 K2 ["EditorMode"]
       15 SETTABLEKS                       R2 R1 K2 ["EditorMode"]
       17 GETTABLEKS                       R3 R0 K9 ["Status"]
       19 GETTABLEKS                       R2 R3 K3 ["IsPlaying"]
       21 SETTABLEKS                       R2 R1 K3 ["IsPlaying"]
       23 GETTABLEKS                       R3 R0 K9 ["Status"]
       25 GETTABLEKS                       R2 R3 K4 ["PlayState"]
       27 SETTABLEKS                       R2 R1 K4 ["PlayState"]
       29 GETTABLEKS                       R3 R0 K9 ["Status"]
       31 GETTABLEKS                       R2 R3 K5 ["SnapMode"]
       33 SETTABLEKS                       R2 R1 K5 ["SnapMode"]
       35 GETTABLEKS                       R3 R0 K9 ["Status"]
       37 GETTABLEKS                       R2 R3 K6 ["ReadOnly"]
       39 SETTABLEKS                       R2 R1 K6 ["ReadOnly"]
       41 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["CannotPasteError"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K8 [{"CloseCannotPasteToast", "SetHorizontalScrollZoom", "SetVerticalScrollZoom", "StepAnimation", "SnapToNearestKeyframe", "SnapToNearestFrame", "SetEditorMode", "SwitchEditorMode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["CloseCannotPasteToast"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetHorizontalScrollZoom"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetVerticalScrollZoom"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["StepAnimation"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SnapToNearestKeyframe"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SnapToNearestFrame"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["SetEditorMode"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["SwitchEditorMode"]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R7 R3 K12 ["UI"]
       34 GETTABLEKS                       R6 R7 K13 ["KeyboardListener"]
       36 GETTABLEKS                       R8 R3 K12 ["UI"]
       38 GETTABLEKS                       R7 R8 K14 ["Separator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K15 ["Src"]
       44 GETTABLEKS                       R10 R11 K16 ["Util"]
       46 GETTABLEKS                       R9 R10 K17 ["Constants"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R12 R0 K15 ["Src"]
       53 GETTABLEKS                       R11 R12 K16 ["Util"]
       55 GETTABLEKS                       R10 R11 K18 ["TrackUtils"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K15 ["Src"]
       62 GETTABLEKS                       R12 R13 K16 ["Util"]
       64 GETTABLEKS                       R11 R12 K19 ["Input"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R14 R0 K15 ["Src"]
       71 GETTABLEKS                       R13 R14 K20 ["Components"]
       73 GETTABLEKS                       R12 R13 K21 ["DopeSheetController"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R16 R0 K15 ["Src"]
       80 GETTABLEKS                       R15 R16 K20 ["Components"]
       82 GETTABLEKS                       R14 R15 K22 ["Curves"]
       84 GETTABLEKS                       R13 R14 K23 ["CurveEditorController"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K15 ["Src"]
       91 GETTABLEKS                       R15 R16 K20 ["Components"]
       93 GETTABLEKS                       R14 R15 K24 ["TimelineContainer"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R17 R0 K15 ["Src"]
      100 GETTABLEKS                       R16 R17 K20 ["Components"]
      102 GETTABLEKS                       R15 R16 K25 ["ZoomBar"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R19 R0 K15 ["Src"]
      109 GETTABLEKS                       R18 R19 K20 ["Components"]
      111 GETTABLEKS                       R17 R18 K26 ["Timeline"]
      113 GETTABLEKS                       R16 R17 K27 ["Scrubber"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R20 R0 K15 ["Src"]
      120 GETTABLEKS                       R19 R20 K20 ["Components"]
      122 GETTABLEKS                       R18 R19 K28 ["Toast"]
      124 GETTABLEKS                       R17 R18 K29 ["NoticeToast"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R20 R0 K15 ["Src"]
      131 GETTABLEKS                       R19 R20 K30 ["Actions"]
      133 GETTABLEKS                       R18 R19 K31 ["SetEditorMode"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R21 R0 K15 ["Src"]
      140 GETTABLEKS                       R20 R21 K30 ["Actions"]
      142 GETTABLEKS                       R19 R20 K32 ["SetHorizontalScrollZoom"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R22 R0 K15 ["Src"]
      149 GETTABLEKS                       R21 R22 K30 ["Actions"]
      151 GETTABLEKS                       R20 R21 K33 ["SetNotification"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R23 R0 K15 ["Src"]
      158 GETTABLEKS                       R22 R23 K30 ["Actions"]
      160 GETTABLEKS                       R21 R22 K34 ["SetVerticalScrollZoom"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R24 R0 K15 ["Src"]
      167 GETTABLEKS                       R23 R24 K35 ["Thunks"]
      169 GETTABLEKS                       R22 R23 K36 ["SnapToNearestFrame"]
      171 CALL                             R21 1 1
      172 GETIMPORT                        R22 K5 [require]
      174 GETTABLEKS                       R25 R0 K15 ["Src"]
      176 GETTABLEKS                       R24 R25 K35 ["Thunks"]
      178 GETTABLEKS                       R23 R24 K37 ["SnapToNearestKeyframe"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K5 [require]
      183 GETTABLEKS                       R27 R0 K15 ["Src"]
      185 GETTABLEKS                       R26 R27 K35 ["Thunks"]
      187 GETTABLEKS                       R25 R26 K38 ["Playback"]
      189 GETTABLEKS                       R24 R25 K39 ["StepAnimation"]
      191 CALL                             R23 1 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R27 R0 K15 ["Src"]
      196 GETTABLEKS                       R26 R27 K35 ["Thunks"]
      198 GETTABLEKS                       R25 R26 K40 ["SwitchEditorMode"]
      200 CALL                             R24 1 1
      201 GETTABLEKS                       R25 R1 K41 ["PureComponent"]
      203 LOADK                            R27 K42 ["TrackEditor"]
      204 NAMECALL                         R25 R25 K43 ["extend"]
      206 CALL                             R25 2 1
      207 DUPCLOSURE                       R26 K44 [PROTO_11]
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R9
      210 SETTABLEKS                       R26 R25 K45 ["init"]
      212 DUPCLOSURE                       R26 K46 [PROTO_14]
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R26 R25 K47 ["render"]
      226 DUPCLOSURE                       R26 K48 [PROTO_15]
      227 DUPCLOSURE                       R27 K49 [PROTO_24]
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R20
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R24
      236 MOVE                             R28 R5
      237 DUPTABLE                         R29 K53 [{"Analytics", "Localization", "Mouse"}]
      238 GETTABLEKS                       R30 R4 K50 ["Analytics"]
      240 SETTABLEKS                       R30 R29 K50 ["Analytics"]
      242 GETTABLEKS                       R30 R4 K51 ["Localization"]
      244 SETTABLEKS                       R30 R29 K51 ["Localization"]
      246 GETTABLEKS                       R30 R4 K52 ["Mouse"]
      248 SETTABLEKS                       R30 R29 K52 ["Mouse"]
      250 CALL                             R28 1 1
      251 MOVE                             R29 R25
      252 CALL                             R28 1 1
      253 MOVE                             R25 R28
      254 GETTABLEKS                       R28 R2 K54 ["connect"]
      256 MOVE                             R29 R26
      257 MOVE                             R30 R27
      258 CALL                             R28 2 1
      259 MOVE                             R29 R25
      260 CALL                             R28 1 -1
      261 RETURN                           R28 -1
