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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["HorizontalZoom"]
        5 GETTABLEKS                       R4 R2 K2 ["HorizontalScroll"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["state"]
       10 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R5 R5 K5 ["X"]
       14 GETTABLEKS                       R6 R1 K6 ["UserInputType"]
       16 GETIMPORT                        R7 K9 [Enum.UserInputType.MouseMovement]
       18 JUMPIFNOTEQ                      R6 R7 ; [+33]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K10 ["dragging"]
       23 JUMPIFNOT                        R6 ; [+28]
       24 GETTABLEKS                       R8 R1 K11 ["Delta"]
       26 GETTABLEKS                       R8 R8 K5 ["X"]
       28 MINUS                            R7 R8
       29 DIV                              R6 R7 R5
       30 LOADK                            R10 K13 [0.01]
       31 FASTCALL2                        MATH_MAX R10 R3 ; [+4]
       33 MOVE                             R11 R3
       34 GETIMPORT                        R9 K16 [math.max]
       36 CALL                             R9 2 1
       37 DIVRK                            R8 K12 [1] R9
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["HorizontalZoom"]
        5 GETTABLEKS                       R4 R2 K2 ["HorizontalScroll"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["state"]
       10 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R5 R5 K5 ["X"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K3 ["state"]
       17 GETTABLEKS                       R6 R6 K6 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R6 K5 ["X"]
       21 GETTABLEKS                       R9 R0 K5 ["X"]
       23 SUB                              R8 R9 R6
       24 DIV                              R7 R8 R5
       25 SUB                              R9 R7 R4
       26 SUBRK                            R10 K7 [1] R3
       27 MUL                              R8 R9 R10
       28 ADD                              R10 R4 R8
       29 LOADN                            R11 0
       30 LOADN                            R12 1
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R9 K10 [math.clamp]
       34 CALL                             R9 3 1
       35 MOVE                             R8 R9
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K11 ["ctrlHeld"]
       39 JUMPIFNOT                        R9 ; [+34]
       40 JUMPIFNOTEQKS                    R1 K12 ["forward"] ; [+16]
       42 GETTABLEKS                       R9 R2 K13 ["SetHorizontalScrollZoom"]
       44 MOVE                             R10 R8
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R13 R13 K14 ["ZOOM_INCREMENT"]
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
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R13 R13 K14 ["ZOOM_INCREMENT"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["AbsoluteSize"]
        8 JUMPIF                           R1 ; [+3]
        9 GETIMPORT                        R1 K5 [Vector2.new]
       11 CALL                             R1 0 1
       12 GETTABLEKS                       R2 R0 K6 ["Playhead"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K8 ["getTrackPadding"]
       17 CALL                             R5 0 1
       18 MULK                             R4 R5 K7 [0.5]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K9 ["getScaledKeyframePosition"]
       22 MOVE                             R6 R2
       23 GETTABLEKS                       R7 R0 K10 ["StartTick"]
       25 GETTABLEKS                       R8 R0 K11 ["EndTick"]
       27 GETTABLEKS                       R10 R1 K12 ["X"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K8 ["getTrackPadding"]
       32 CALL                             R11 0 1
       33 SUB                              R9 R10 R11
       34 CALL                             R5 4 1
       35 ADD                              R3 R4 R5
       36 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PlayState"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R3 R3 K3 ["Pause"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETTABLEKS                       R2 R1 K4 ["StepAnimation"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Mouse"]
        5 JUMPIFNOT                        R2 ; [+19]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton3]
       10 JUMPIFNOTEQ                      R2 R3 ; [+14]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K1 ["Mouse"]
       17 LOADK                            R4 K6 ["ClosedHand"]
       18 NAMECALL                         R2 R2 K7 ["__pushCursor"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["startDragging"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Mouse"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["dragging"]
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R2 R1 K3 ["UserInputType"]
       12 GETIMPORT                        R3 K6 [Enum.UserInputType.MouseMovement]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 GETTABLEKS                       R2 R1 K3 ["UserInputType"]
       18 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton3]
       20 JUMPIFNOTEQ                      R2 R3 ; [+13]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["props"]
       25 GETTABLEKS                       R2 R2 K1 ["Mouse"]
       27 NAMECALL                         R2 R2 K9 ["__popCursor"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K10 ["stopDragging"]
       33 CALL                             R2 0 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["FrameRate"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["LastTick"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["EndTick"]
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K6 [math.max]
       19 CALL                             R1 2 1
       20 MUL                              R3 R1 R0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["TICK_FREQUENCY"]
       24 DIV                              R2 R3 R4
       25 LOADN                            R3 100
       26 JUMPIFNOTLT                      R2 R3 ; [+5]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["TRACK_PADDING_SMALL"]
       31 RETURN                           R3 1
       32 LOADN                            R3 1000
       33 JUMPIFNOTLT                      R2 R3 ; [+5]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K9 ["TRACK_PADDING_MEDIUM"]
       38 RETURN                           R3 1
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K10 ["TRACK_PADDING_LARGE"]
       42 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsChannelAnimation"]
        5 JUMPIFNOT                        R0 ; [+46]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["EditorMode"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["EDITOR_MODE"]
       14 GETTABLEKS                       R1 R1 K4 ["CurveCanvas"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+18]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["props"]
       21 GETTABLEKS                       R0 R0 K5 ["SwitchEditorMode"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K3 ["EDITOR_MODE"]
       26 GETTABLEKS                       R1 R1 K6 ["DopeSheet"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["props"]
       31 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K0 ["props"]
       38 GETTABLEKS                       R0 R0 K5 ["SwitchEditorMode"]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K3 ["EDITOR_MODE"]
       43 GETTABLEKS                       R1 R1 K4 ["CurveCanvas"]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K0 ["props"]
       48 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       50 CALL                             R0 2 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R0 0
       53 GETTABLEKS                       R0 R0 K0 ["props"]
       55 GETTABLEKS                       R0 R0 K8 ["ReadOnly"]
       57 JUMPIF                           R0 ; [+6]
       58 GETUPVAL                         R0 0
       59 GETTABLEKS                       R0 R0 K0 ["props"]
       61 GETTABLEKS                       R0 R0 K9 ["OnPromoteRequested"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isControl"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["ctrlHeld"]
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isControl"]
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
       70 GETUPVAL                         R30 0
       71 GETTABLEKS                       R30 R30 K30 ["EDITOR_MODE"]
       73 GETTABLEKS                       R30 R30 K31 ["DopeSheet"]
       75 JUMPIFEQ                         R29 R30 ; [+2]
       77 LOADB                            R28 0 +1
       78 LOADB                            R28 1
       79 GETTABLEKS                       R30 R1 K29 ["EditorMode"]
       81 GETUPVAL                         R31 0
       82 GETTABLEKS                       R31 R31 K30 ["EDITOR_MODE"]
       84 GETTABLEKS                       R31 R31 K32 ["CurveCanvas"]
       86 JUMPIFEQ                         R30 R31 ; [+2]
       88 LOADB                            R29 0 +1
       89 LOADB                            R29 1
       90 GETTABLEKS                       R30 R1 K33 ["CannotPasteError"]
       92 GETUPVAL                         R31 1
       93 GETTABLEKS                       R31 R31 K34 ["createElement"]
       95 LOADK                            R32 K35 ["Frame"]
       96 NEWTABLE                         R33 8 0
       98 LOADN                            R34 1
       99 SETTABLEKS                       R34 R33 K36 ["BackgroundTransparency"]
      101 SETTABLEKS                       R14 R33 K13 ["ZIndex"]
      103 SETTABLEKS                       R13 R33 K12 ["LayoutOrder"]
      105 SETTABLEKS                       R15 R33 K14 ["Size"]
      107 GETUPVAL                         R34 1
      108 GETTABLEKS                       R34 R34 K37 ["Change"]
      110 GETTABLEKS                       R34 R34 K23 ["AbsoluteSize"]
      112 GETTABLEKS                       R35 R0 K38 ["updateSize"]
      114 SETTABLE                         R35 R33 R34
      115 GETUPVAL                         R34 1
      116 GETTABLEKS                       R34 R34 K39 ["Event"]
      118 GETTABLEKS                       R34 R34 K40 ["InputBegan"]
      120 GETTABLEKS                       R35 R0 K41 ["inputBegan"]
      122 SETTABLE                         R35 R33 R34
      123 GETUPVAL                         R34 1
      124 GETTABLEKS                       R34 R34 K39 ["Event"]
      126 GETTABLEKS                       R34 R34 K42 ["InputEnded"]
      128 GETTABLEKS                       R35 R0 K43 ["inputEnded"]
      130 SETTABLE                         R35 R33 R34
      131 GETUPVAL                         R34 1
      132 GETTABLEKS                       R34 R34 K39 ["Event"]
      134 GETTABLEKS                       R34 R34 K44 ["MouseLeave"]
      136 GETTABLEKS                       R35 R0 K45 ["stopDragging"]
      138 SETTABLE                         R35 R33 R34
      139 DUPTABLE                         R34 K52 [{"Layout", "TimelineContainer", "DopeSheetController", "CurveEditorController", "CannotPasteToast", "IgnoreLayout"}]
      140 GETUPVAL                         R35 1
      141 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      164 GETUPVAL                         R35 1
      165 GETTABLEKS                       R35 R35 K34 ["createElement"]
      167 GETUPVAL                         R36 2
      168 DUPTABLE                         R37 K75 [{["StartTick"], ["EndTick"], ["LastTick"], ["SnapMode"], ["TrackPadding"], ["FrameRate"], ["TimelineUnit"], ["LayoutOrder"] = 0, ["ParentSize"], ["ParentPosition"], ["StepAnimation"], ["SnapToNearestKeyframe"], ["SnapToNearestFrame"], ["AnimationData"], ["Playhead"], ["ZIndex"] = 2, ["EditorMode"], ["OnToggleEditorClicked"]}]
      169 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      171 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      173 SETTABLEKS                       R5 R37 K4 ["LastTick"]
      175 SETTABLEKS                       R6 R37 K5 ["SnapMode"]
      177 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      179 SETTABLEKS                       R7 R37 K6 ["FrameRate"]
      181 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      183 SETTABLEKS                       R24 R37 K69 ["ParentSize"]
      185 SETTABLEKS                       R25 R37 K70 ["ParentPosition"]
      187 GETTABLEKS                       R38 R0 K76 ["stepAnimation"]
      189 SETTABLEKS                       R38 R37 K71 ["StepAnimation"]
      191 SETTABLEKS                       R22 R37 K21 ["SnapToNearestKeyframe"]
      193 SETTABLEKS                       R23 R37 K22 ["SnapToNearestFrame"]
      195 GETTABLEKS                       R38 R1 K72 ["AnimationData"]
      197 SETTABLEKS                       R38 R37 K72 ["AnimationData"]
      199 SETTABLEKS                       R18 R37 K17 ["Playhead"]
      201 GETTABLEKS                       R38 R1 K29 ["EditorMode"]
      203 SETTABLEKS                       R38 R37 K29 ["EditorMode"]
      205 GETTABLEKS                       R38 R0 K77 ["toggleEditorClicked"]
      207 SETTABLEKS                       R38 R37 K74 ["OnToggleEditorClicked"]
      209 CALL                             R35 2 1
      210 SETTABLEKS                       R35 R34 K47 ["TimelineContainer"]
      212 JUMPIFNOT                        R28 ; [+43]
      213 GETUPVAL                         R35 1
      214 GETTABLEKS                       R35 R35 K34 ["createElement"]
      216 GETUPVAL                         R36 3
      217 DUPTABLE                         R37 K80 [{["ShowEvents"], ["StartTick"], ["EndTick"], ["TrackPadding"], ["TopTrackIndex"], ["Size"], ["TimelineUnit"], ["IsChannelAnimation"], ["ColorsPosition"], ["ZIndex"] = 1, ["OnWheelTick"]}]
      218 SETTABLEKS                       R17 R37 K16 ["ShowEvents"]
      220 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      222 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      224 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      226 SETTABLEKS                       R16 R37 K15 ["TopTrackIndex"]
      228 GETIMPORT                        R38 K82 [UDim2.new]
      230 LOADN                            R39 1
      231 LOADN                            R40 0
      232 LOADN                            R41 1
      233 GETUPVAL                         R44 0
      234 GETTABLEKS                       R44 R44 K83 ["TIMELINE_HEIGHT"]
      236 MINUS                            R43 R44
      237 GETUPVAL                         R44 0
      238 GETTABLEKS                       R44 R44 K84 ["SCROLL_BAR_SIZE"]
      240 SUB                              R42 R43 R44
      241 CALL                             R38 4 1
      242 SETTABLEKS                       R38 R37 K14 ["Size"]
      244 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      246 SETTABLEKS                       R19 R37 K18 ["IsChannelAnimation"]
      248 SETTABLEKS                       R20 R37 K19 ["ColorsPosition"]
      250 GETTABLEKS                       R38 R0 K85 ["wheelTick"]
      252 SETTABLEKS                       R38 R37 K79 ["OnWheelTick"]
      254 CALL                             R35 2 1
      255 JUMPIF                           R35 ; [+1]
      256 LOADNIL                          R35
      257 SETTABLEKS                       R35 R34 K48 ["DopeSheetController"]
      259 JUMPIFNOT                        R29 ; [+43]
      260 GETUPVAL                         R35 1
      261 GETTABLEKS                       R35 R35 K34 ["createElement"]
      263 GETUPVAL                         R36 4
      264 DUPTABLE                         R37 K87 [{["ShowEvents"], ["StartTick"], ["EndTick"], ["TrackPadding"], ["Size"], ["TimelineUnit"], ["Playhead"], ["ZIndex"] = 1, ["OnInputChanged"], ["OnWheelTick"]}]
      265 SETTABLEKS                       R17 R37 K16 ["ShowEvents"]
      267 SETTABLEKS                       R3 R37 K2 ["StartTick"]
      269 SETTABLEKS                       R4 R37 K3 ["EndTick"]
      271 SETTABLEKS                       R26 R37 K67 ["TrackPadding"]
      273 GETIMPORT                        R38 K82 [UDim2.new]
      275 LOADN                            R39 1
      276 LOADN                            R40 0
      277 LOADN                            R41 1
      278 GETUPVAL                         R44 0
      279 GETTABLEKS                       R44 R44 K83 ["TIMELINE_HEIGHT"]
      281 MINUS                            R43 R44
      282 GETUPVAL                         R44 0
      283 GETTABLEKS                       R44 R44 K84 ["SCROLL_BAR_SIZE"]
      285 SUB                              R42 R43 R44
      286 CALL                             R38 4 1
      287 SETTABLEKS                       R38 R37 K14 ["Size"]
      289 SETTABLEKS                       R8 R37 K7 ["TimelineUnit"]
      291 SETTABLEKS                       R18 R37 K17 ["Playhead"]
      293 GETTABLEKS                       R38 R0 K88 ["inputChanged"]
      295 SETTABLEKS                       R38 R37 K86 ["OnInputChanged"]
      297 GETTABLEKS                       R38 R0 K85 ["wheelTick"]
      299 SETTABLEKS                       R38 R37 K79 ["OnWheelTick"]
      301 CALL                             R35 2 1
      302 JUMPIF                           R35 ; [+1]
      303 LOADNIL                          R35
      304 SETTABLEKS                       R35 R34 K49 ["CurveEditorController"]
      306 JUMPIFNOT                        R30 ; [+18]
      307 GETUPVAL                         R35 1
      308 GETTABLEKS                       R35 R35 K34 ["createElement"]
      310 GETUPVAL                         R36 5
      311 DUPTABLE                         R37 K91 [{"Text", "OnClose"}]
      312 LOADK                            R40 K92 ["Toast"]
      313 LOADK                            R41 K33 ["CannotPasteError"]
      314 NAMECALL                         R38 R21 K93 ["getText"]
      316 CALL                             R38 3 1
      317 SETTABLEKS                       R38 R37 K89 ["Text"]
      319 GETTABLEKS                       R38 R1 K94 ["CloseCannotPasteToast"]
      321 SETTABLEKS                       R38 R37 K90 ["OnClose"]
      323 CALL                             R35 2 1
      324 JUMPIF                           R35 ; [+1]
      325 LOADNIL                          R35
      326 SETTABLEKS                       R35 R34 K50 ["CannotPasteToast"]
      328 GETUPVAL                         R35 1
      329 GETTABLEKS                       R35 R35 K34 ["createElement"]
      331 LOADK                            R36 K95 ["Folder"]
      332 NEWTABLE                         R37 0 0
      334 DUPTABLE                         R38 K101 [{"TimelineBorder", "Scrubber", "HorizontalZoomBar", "VerticalZoomBar", "KeyboardListener"}]
      335 GETUPVAL                         R39 1
      336 GETTABLEKS                       R39 R39 K34 ["createElement"]
      338 GETUPVAL                         R40 6
      339 DUPTABLE                         R41 K106 [{["Position"], ["DominantAxis"], ["Weight"] = 1, ["Padding"] = 0, ["ZIndex"] = 2}]
      340 GETIMPORT                        R42 K82 [UDim2.new]
      342 LOADK                            R43 K107 [0.5]
      343 LOADN                            R44 0
      344 LOADN                            R45 0
      345 GETUPVAL                         R46 0
      346 GETTABLEKS                       R46 R46 K83 ["TIMELINE_HEIGHT"]
      348 CALL                             R42 4 1
      349 SETTABLEKS                       R42 R41 K102 ["Position"]
      351 GETIMPORT                        R42 K109 [Enum.DominantAxis.Width]
      353 SETTABLEKS                       R42 R41 K103 ["DominantAxis"]
      355 CALL                             R39 2 1
      356 SETTABLEKS                       R39 R38 K96 ["TimelineBorder"]
      358 MOVE                             R39 R27
      359 JUMPIFNOT                        R39 ; [+37]
      360 GETUPVAL                         R39 1
      361 GETTABLEKS                       R39 R39 K34 ["createElement"]
      363 GETUPVAL                         R40 7
      364 DUPTABLE                         R41 K117 [{["Position"], ["AnchorPoint"], ["Height"], ["ShowHead"] = True, ["HeadSize"], ["ZIndex"] = 3, ["Thickness"] = 1}]
      365 GETIMPORT                        R42 K82 [UDim2.new]
      367 LOADN                            R43 0
      368 GETTABLEKS                       R44 R0 K118 ["getPlayheadPositionX"]
      370 CALL                             R44 0 1
      371 LOADN                            R45 0
      372 LOADN                            R46 0
      373 CALL                             R42 4 1
      374 SETTABLEKS                       R42 R41 K102 ["Position"]
      376 GETIMPORT                        R42 K26 [Vector2.new]
      378 LOADK                            R43 K107 [0.5]
      379 LOADN                            R44 0
      380 CALL                             R42 2 1
      381 SETTABLEKS                       R42 R41 K110 ["AnchorPoint"]
      383 GETTABLEKS                       R42 R24 K119 ["Y"]
      385 SETTABLEKS                       R42 R41 K111 ["Height"]
      387 GETIMPORT                        R42 K82 [UDim2.new]
      389 LOADN                            R43 0
      390 LOADN                            R44 5
      391 LOADN                            R45 0
      392 LOADN                            R46 5
      393 CALL                             R42 4 1
      394 SETTABLEKS                       R42 R41 K114 ["HeadSize"]
      396 CALL                             R39 2 1
      397 SETTABLEKS                       R39 R38 K97 ["Scrubber"]
      399 GETUPVAL                         R39 1
      400 GETTABLEKS                       R39 R39 K34 ["createElement"]
      402 GETUPVAL                         R40 8
      403 DUPTABLE                         R41 K127 [{["Size"], ["Position"], ["Direction"], ["ZIndex"] = 4, ["LayoutOrder"] = 2, ["ContainerSize"], ["AdjustScrollZoom"], ["Scroll"], ["Zoom"], ["Min"]}]
      404 GETIMPORT                        R42 K82 [UDim2.new]
      406 LOADN                            R43 0
      407 GETTABLEKS                       R46 R24 K128 ["X"]
      409 GETUPVAL                         R47 0
      410 GETTABLEKS                       R47 R47 K129 ["SCROLL_BAR_PADDING"]
      412 SUB                              R45 R46 R47
      413 ADDK                             R44 R45 K78 [1]
      414 LOADN                            R45 0
      415 GETUPVAL                         R46 0
      416 GETTABLEKS                       R46 R46 K84 ["SCROLL_BAR_SIZE"]
      418 CALL                             R42 4 1
      419 SETTABLEKS                       R42 R41 K14 ["Size"]
      421 GETIMPORT                        R42 K82 [UDim2.new]
      423 LOADN                            R43 0
      424 LOADN                            R44 0
      425 LOADN                            R45 1
      426 GETUPVAL                         R47 0
      427 GETTABLEKS                       R47 R47 K84 ["SCROLL_BAR_SIZE"]
      429 MINUS                            R46 R47
      430 CALL                             R42 4 1
      431 SETTABLEKS                       R42 R41 K102 ["Position"]
      433 GETUPVAL                         R42 8
      434 GETTABLEKS                       R42 R42 K130 ["HORIZONTAL"]
      436 SETTABLEKS                       R42 R41 K120 ["Direction"]
      438 GETIMPORT                        R42 K26 [Vector2.new]
      440 GETTABLEKS                       R43 R24 K128 ["X"]
      442 GETTABLEKS                       R44 R24 K119 ["Y"]
      444 CALL                             R42 2 1
      445 SETTABLEKS                       R42 R41 K122 ["ContainerSize"]
      447 GETTABLEKS                       R42 R1 K131 ["SetHorizontalScrollZoom"]
      449 SETTABLEKS                       R42 R41 K123 ["AdjustScrollZoom"]
      451 SETTABLEKS                       R9 R41 K124 ["Scroll"]
      453 SETTABLEKS                       R10 R41 K125 ["Zoom"]
      455 GETTABLEKS                       R43 R25 K128 ["X"]
      457 ADDK                             R42 R43 K78 [1]
      458 SETTABLEKS                       R42 R41 K126 ["Min"]
      460 CALL                             R39 2 1
      461 SETTABLEKS                       R39 R38 K98 ["HorizontalZoomBar"]
      463 MOVE                             R39 R29
      464 JUMPIFNOT                        R39 ; [+81]
      465 GETUPVAL                         R39 1
      466 GETTABLEKS                       R39 R39 K34 ["createElement"]
      468 GETUPVAL                         R40 8
      469 DUPTABLE                         R41 K127 [{["Size"], ["Position"], ["Direction"], ["ZIndex"] = 4, ["LayoutOrder"] = 2, ["ContainerSize"], ["AdjustScrollZoom"], ["Scroll"], ["Zoom"], ["Min"]}]
      470 GETIMPORT                        R42 K82 [UDim2.new]
      472 LOADN                            R43 0
      473 GETUPVAL                         R44 0
      474 GETTABLEKS                       R44 R44 K84 ["SCROLL_BAR_SIZE"]
      476 LOADN                            R45 0
      477 GETTABLEKS                       R50 R24 K119 ["Y"]
      479 GETUPVAL                         R51 0
      480 GETTABLEKS                       R51 R51 K84 ["SCROLL_BAR_SIZE"]
      482 SUB                              R49 R50 R51
      483 GETUPVAL                         R50 0
      484 GETTABLEKS                       R50 R50 K129 ["SCROLL_BAR_PADDING"]
      486 SUB                              R48 R49 R50
      487 GETUPVAL                         R49 0
      488 GETTABLEKS                       R49 R49 K83 ["TIMELINE_HEIGHT"]
      490 SUB                              R47 R48 R49
      491 ADDK                             R46 R47 K78 [1]
      492 CALL                             R42 4 1
      493 SETTABLEKS                       R42 R41 K14 ["Size"]
      495 GETIMPORT                        R42 K82 [UDim2.new]
      497 LOADN                            R43 1
      498 LOADN                            R44 0
      499 LOADN                            R45 0
      500 GETUPVAL                         R46 0
      501 GETTABLEKS                       R46 R46 K83 ["TIMELINE_HEIGHT"]
      503 CALL                             R42 4 1
      504 SETTABLEKS                       R42 R41 K102 ["Position"]
      506 GETUPVAL                         R42 8
      507 GETTABLEKS                       R42 R42 K132 ["VERTICAL"]
      509 SETTABLEKS                       R42 R41 K120 ["Direction"]
      511 GETIMPORT                        R42 K26 [Vector2.new]
      513 GETTABLEKS                       R43 R24 K128 ["X"]
      515 GETTABLEKS                       R46 R24 K119 ["Y"]
      517 GETUPVAL                         R47 0
      518 GETTABLEKS                       R47 R47 K84 ["SCROLL_BAR_SIZE"]
      520 SUB                              R45 R46 R47
      521 GETUPVAL                         R46 0
      522 GETTABLEKS                       R46 R46 K83 ["TIMELINE_HEIGHT"]
      524 SUB                              R44 R45 R46
      525 CALL                             R42 2 1
      526 SETTABLEKS                       R42 R41 K122 ["ContainerSize"]
      528 GETTABLEKS                       R42 R1 K133 ["SetVerticalScrollZoom"]
      530 SETTABLEKS                       R42 R41 K123 ["AdjustScrollZoom"]
      532 SETTABLEKS                       R11 R41 K124 ["Scroll"]
      534 SETTABLEKS                       R12 R41 K125 ["Zoom"]
      536 GETTABLEKS                       R44 R25 K119 ["Y"]
      538 GETUPVAL                         R45 0
      539 GETTABLEKS                       R45 R45 K83 ["TIMELINE_HEIGHT"]
      541 ADD                              R43 R44 R45
      542 ADDK                             R42 R43 K78 [1]
      543 SETTABLEKS                       R42 R41 K126 ["Min"]
      545 CALL                             R39 2 1
      546 SETTABLEKS                       R39 R38 K99 ["VerticalZoomBar"]
      548 GETUPVAL                         R39 1
      549 GETTABLEKS                       R39 R39 K34 ["createElement"]
      551 GETUPVAL                         R40 9
      552 DUPTABLE                         R41 K136 [{"OnKeyPressed", "OnKeyReleased"}]
      553 NEWCLOSURE                       R42 P0
      554 CAPTURE                          UPVAL U10
      555 CAPTURE                          VAL R0
      556 SETTABLEKS                       R42 R41 K134 ["OnKeyPressed"]
      558 NEWCLOSURE                       R42 P1
      559 CAPTURE                          UPVAL U10
      560 CAPTURE                          VAL R0
      561 SETTABLEKS                       R42 R41 K135 ["OnKeyReleased"]
      563 CALL                             R39 2 1
      564 SETTABLEKS                       R39 R38 K100 ["KeyboardListener"]
      566 CALL                             R35 3 1
      567 SETTABLEKS                       R35 R34 K51 ["IgnoreLayout"]
      569 CALL                             R31 3 -1
      570 RETURN                           R31 -1

PROTO_15:
        0 DUPTABLE                         R1 K7 [{"AnimationData", "CannotPasteError", "EditorMode", "IsPlaying", "PlayState", "SnapMode", "ReadOnly"}]
        1 GETTABLEKS                       R2 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R2 R1 K0 ["AnimationData"]
        5 GETTABLEKS                       R2 R0 K8 ["Notifications"]
        7 GETTABLEKS                       R2 R2 K1 ["CannotPasteError"]
        9 SETTABLEKS                       R2 R1 K1 ["CannotPasteError"]
       11 GETTABLEKS                       R2 R0 K9 ["Status"]
       13 GETTABLEKS                       R2 R2 K2 ["EditorMode"]
       15 SETTABLEKS                       R2 R1 K2 ["EditorMode"]
       17 GETTABLEKS                       R2 R0 K9 ["Status"]
       19 GETTABLEKS                       R2 R2 K3 ["IsPlaying"]
       21 SETTABLEKS                       R2 R1 K3 ["IsPlaying"]
       23 GETTABLEKS                       R2 R0 K9 ["Status"]
       25 GETTABLEKS                       R2 R2 K4 ["PlayState"]
       27 SETTABLEKS                       R2 R1 K4 ["PlayState"]
       29 GETTABLEKS                       R2 R0 K9 ["Status"]
       31 GETTABLEKS                       R2 R2 K5 ["SnapMode"]
       33 SETTABLEKS                       R2 R1 K5 ["SnapMode"]
       35 GETTABLEKS                       R2 R0 K9 ["Status"]
       37 GETTABLEKS                       R2 R2 K6 ["ReadOnly"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["UI"]
       34 GETTABLEKS                       R6 R6 K13 ["KeyboardListener"]
       36 GETTABLEKS                       R7 R3 K12 ["UI"]
       38 GETTABLEKS                       R7 R7 K14 ["Separator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K15 ["Src"]
       44 GETTABLEKS                       R9 R9 K16 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["Constants"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Src"]
       53 GETTABLEKS                       R10 R10 K16 ["Util"]
       55 GETTABLEKS                       R10 R10 K18 ["TrackUtils"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Util"]
       64 GETTABLEKS                       R11 R11 K19 ["Input"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K15 ["Src"]
       71 GETTABLEKS                       R12 R12 K20 ["Components"]
       73 GETTABLEKS                       R12 R12 K21 ["DopeSheetController"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R0 K15 ["Src"]
       80 GETTABLEKS                       R13 R13 K20 ["Components"]
       82 GETTABLEKS                       R13 R13 K22 ["Curves"]
       84 GETTABLEKS                       R13 R13 K23 ["CurveEditorController"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K15 ["Src"]
       91 GETTABLEKS                       R14 R14 K20 ["Components"]
       93 GETTABLEKS                       R14 R14 K24 ["TimelineContainer"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K15 ["Src"]
      100 GETTABLEKS                       R15 R15 K20 ["Components"]
      102 GETTABLEKS                       R15 R15 K25 ["ZoomBar"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K15 ["Src"]
      109 GETTABLEKS                       R16 R16 K20 ["Components"]
      111 GETTABLEKS                       R16 R16 K26 ["Timeline"]
      113 GETTABLEKS                       R16 R16 K27 ["Scrubber"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K15 ["Src"]
      120 GETTABLEKS                       R17 R17 K20 ["Components"]
      122 GETTABLEKS                       R17 R17 K28 ["Toast"]
      124 GETTABLEKS                       R17 R17 K29 ["NoticeToast"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R0 K15 ["Src"]
      131 GETTABLEKS                       R18 R18 K30 ["Actions"]
      133 GETTABLEKS                       R18 R18 K31 ["SetEditorMode"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K15 ["Src"]
      140 GETTABLEKS                       R19 R19 K30 ["Actions"]
      142 GETTABLEKS                       R19 R19 K32 ["SetHorizontalScrollZoom"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R0 K15 ["Src"]
      149 GETTABLEKS                       R20 R20 K30 ["Actions"]
      151 GETTABLEKS                       R20 R20 K33 ["SetNotification"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R21 R0 K15 ["Src"]
      158 GETTABLEKS                       R21 R21 K30 ["Actions"]
      160 GETTABLEKS                       R21 R21 K34 ["SetVerticalScrollZoom"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R22 R0 K15 ["Src"]
      167 GETTABLEKS                       R22 R22 K35 ["Thunks"]
      169 GETTABLEKS                       R22 R22 K36 ["SnapToNearestFrame"]
      171 CALL                             R21 1 1
      172 GETIMPORT                        R22 K5 [require]
      174 GETTABLEKS                       R23 R0 K15 ["Src"]
      176 GETTABLEKS                       R23 R23 K35 ["Thunks"]
      178 GETTABLEKS                       R23 R23 K37 ["SnapToNearestKeyframe"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K5 [require]
      183 GETTABLEKS                       R24 R0 K15 ["Src"]
      185 GETTABLEKS                       R24 R24 K35 ["Thunks"]
      187 GETTABLEKS                       R24 R24 K38 ["Playback"]
      189 GETTABLEKS                       R24 R24 K39 ["StepAnimation"]
      191 CALL                             R23 1 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K15 ["Src"]
      196 GETTABLEKS                       R25 R25 K35 ["Thunks"]
      198 GETTABLEKS                       R25 R25 K40 ["SwitchEditorMode"]
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
