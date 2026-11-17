PROTO_0:
        0 LOADN                            R1 -1
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R2 R0 ; [+4]
        4 ADDK                             R1 R1 K0 [1]
        5 DIVK                             R0 R0 K1 [10]
        6 JUMPBACK                         ; [-6]
        7 RETURN                           R1 1

PROTO_1:
        0 SUB                              R3 R2 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["TICK_SPACING"]
        4 MUL                              R5 R6 R3
        5 DIV                              R4 R5 R0
        6 LOADN                            R6 10
        7 MOVE                             R8 R4
        8 LOADN                            R7 -1
        9 LOADN                            R9 1
       10 JUMPIFNOTLT                      R9 R8 ; [+4]
       12 ADDK                             R7 R7 K1 [1]
       13 DIVK                             R8 R8 K2 [10]
       14 JUMPBACK                         ; [-6]
       15 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       17 GETIMPORT                        R5 K5 [math.pow]
       19 CALL                             R5 2 1
       20 MULK                             R6 R5 K6 [3]
       21 JUMPIFNOTLT                      R4 R6 ; [+13]
       23 MOVE                             R7 R5
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K7 ["NUM_TICKS"]
       27 DIV                              R9 R5 R10
       28 FASTCALL2K                       MATH_MAX R9 K1 ; [+4]
       30 LOADK                            R10 K1 [1]
       31 GETIMPORT                        R8 K9 [math.max]
       33 CALL                             R8 2 1
       34 RETURN                           R7 2
       35 MOVE                             R7 R6
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K7 ["NUM_TICKS"]
       39 DIV                              R9 R6 R10
       40 FASTCALL2K                       MATH_MAX R9 K1 ; [+4]
       42 LOADK                            R10 K1 [1]
       43 GETIMPORT                        R8 K9 [math.max]
       45 CALL                             R8 2 1
       46 RETURN                           R7 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["SnapMode"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["SNAP_MODES"]
        8 GETTABLEKS                       R3 R3 K3 ["Keyframes"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+13]
       12 GETTABLEKS                       R2 R1 K4 ["SnapToNearestKeyframe"]
       14 MOVE                             R3 R0
       15 GETTABLEKS                       R5 R1 K5 ["ParentSize"]
       17 GETTABLEKS                       R5 R5 K6 ["X"]
       19 GETTABLEKS                       R6 R1 K7 ["TrackPadding"]
       21 SUB                              R4 R5 R6
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R2 R1 K1 ["SnapMode"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K2 ["SNAP_MODES"]
       29 GETTABLEKS                       R3 R3 K8 ["Frames"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+6]
       33 GETTABLEKS                       R2 R1 K9 ["SnapToNearestFrame"]
       35 MOVE                             R3 R0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R2 R1 K10 ["StepAnimation"]
       40 MOVE                             R3 R0
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["StepAnimation"]
        5 JUMPIFNOT                        R1 ; [+65]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["getKeyframeFromPosition"]
        9 GETTABLEKS                       R2 R0 K3 ["Position"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["StartTick"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K5 ["EndTick"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K6 ["ParentPosition"]
       26 GETTABLEKS                       R6 R6 K7 ["X"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["props"]
       31 GETTABLEKS                       R8 R8 K9 ["TrackPadding"]
       33 DIVK                             R7 R8 K8 [2]
       34 ADD                              R5 R6 R7
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K0 ["props"]
       38 GETTABLEKS                       R7 R7 K10 ["ParentSize"]
       40 GETTABLEKS                       R7 R7 K7 ["X"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K0 ["props"]
       45 GETTABLEKS                       R8 R8 K9 ["TrackPadding"]
       47 SUB                              R6 R7 R8
       48 CALL                             R1 5 1
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K0 ["props"]
       52 GETTABLEKS                       R4 R4 K4 ["StartTick"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K0 ["props"]
       57 GETTABLEKS                       R5 R5 K5 ["EndTick"]
       59 FASTCALL3                        MATH_CLAMP R1 R4 R5
       61 MOVE                             R3 R1
       62 GETIMPORT                        R2 K13 [math.clamp]
       64 CALL                             R2 3 1
       65 MOVE                             R1 R2
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K14 ["moveToTick"]
       69 MOVE                             R3 R1
       70 CALL                             R2 1 0
       71 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["onScrubberMoved"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["props"]
        3 GETTABLEKS                       R1 R1 K2 ["Playhead"]
        5 ADDK                             R0 R1 K0 [5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["StartTick"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["EndTick"]
       16 FASTCALL3                        MATH_CLAMP R0 R3 R4
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K7 [math.clamp]
       21 CALL                             R1 3 1
       22 MOVE                             R0 R1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K8 ["moveToTick"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["props"]
        3 GETTABLEKS                       R1 R1 K2 ["Playhead"]
        5 SUBK                             R0 R1 K0 [5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["StartTick"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["EndTick"]
       16 FASTCALL3                        MATH_CLAMP R0 R3 R4
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K7 [math.clamp]
       21 CALL                             R1 3 1
       22 MOVE                             R0 R1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K8 ["moveToTick"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["moveToTick"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["onScrubberMoved"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K2 ["onTimelineClicked"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K3 ["moveScrubberForward"]
       18 NEWCLOSURE                       R1 P4
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K4 ["moveScrubberBackward"]
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isLeftBracket"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["moveScrubberBackward"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["isRightBracket"]
       14 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K4 ["moveScrubberForward"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["StartTick"]
        6 GETTABLEKS                       R4 R1 K3 ["EndTick"]
        8 GETTABLEKS                       R5 R1 K4 ["LastTick"]
       10 GETTABLEKS                       R6 R1 K5 ["FrameRate"]
       12 GETTABLEKS                       R7 R1 K6 ["TimelineUnit"]
       14 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K8 ["ParentSize"]
       18 GETTABLEKS                       R10 R1 K9 ["AnimationData"]
       20 GETTABLEKS                       R12 R1 K10 ["EditorMode"]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K11 ["EDITOR_MODE"]
       25 GETTABLEKS                       R13 R13 K12 ["CurveCanvas"]
       27 JUMPIFEQ                         R12 R13 ; [+2]
       29 LOADB                            R11 0 +1
       30 LOADB                            R11 1
       31 MUL                              R12 R3 R6
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K13 ["TICK_FREQUENCY"]
       35 DIV                              R3 R12 R13
       36 MUL                              R12 R4 R6
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K13 ["TICK_FREQUENCY"]
       40 DIV                              R4 R12 R13
       41 JUMPIFNOT                        R5 ; [+6]
       42 MUL                              R13 R5 R6
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R14 R14 K13 ["TICK_FREQUENCY"]
       46 DIV                              R12 R13 R14
       47 JUMPIF                           R12 ; [+1]
       48 LOADNIL                          R12
       49 MOVE                             R5 R12
       50 GETTABLEKS                       R15 R9 K14 ["X"]
       52 GETTABLEKS                       R16 R0 K0 ["props"]
       54 GETTABLEKS                       R16 R16 K15 ["TrackPadding"]
       56 SUB                              R14 R15 R16
       57 SUB                              R17 R4 R3
       58 GETUPVAL                         R20 0
       59 GETTABLEKS                       R20 R20 K16 ["TICK_SPACING"]
       61 MUL                              R19 R20 R17
       62 DIV                              R18 R19 R14
       63 LOADN                            R20 10
       64 MOVE                             R22 R18
       65 LOADN                            R21 -1
       66 LOADN                            R23 1
       67 JUMPIFNOTLT                      R23 R22 ; [+4]
       69 ADDK                             R21 R21 K17 [1]
       70 DIVK                             R22 R22 K18 [10]
       71 JUMPBACK                         ; [-6]
       72 FASTCALL2                        MATH_POW R20 R21 ; [+3]
       74 GETIMPORT                        R19 K21 [math.pow]
       76 CALL                             R19 2 1
       77 MULK                             R20 R19 K22 [3]
       78 JUMPIFNOTLT                      R18 R20 ; [+14]
       80 MOVE                             R12 R19
       81 GETUPVAL                         R23 0
       82 GETTABLEKS                       R23 R23 K23 ["NUM_TICKS"]
       84 DIV                              R22 R19 R23
       85 FASTCALL2K                       MATH_MAX R22 K17 ; [+4]
       87 LOADK                            R23 K17 [1]
       88 GETIMPORT                        R21 K25 [math.max]
       90 CALL                             R21 2 1
       91 MOVE                             R13 R21
       92 JUMP                             ; [+12]
       93 MOVE                             R12 R20
       94 GETUPVAL                         R23 0
       95 GETTABLEKS                       R23 R23 K23 ["NUM_TICKS"]
       97 DIV                              R22 R20 R23
       98 FASTCALL2K                       MATH_MAX R22 K17 ; [+4]
      100 LOADK                            R23 K17 [1]
      101 GETIMPORT                        R21 K25 [math.max]
      103 CALL                             R21 2 1
      104 MOVE                             R13 R21
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R14 R14 K26 ["createElement"]
      108 LOADK                            R15 K27 ["Frame"]
      109 DUPTABLE                         R16 K34 [{["Size"], ["LayoutOrder"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BorderColor3"], ["ZIndex"]}]
      110 GETIMPORT                        R17 K37 [UDim2.new]
      112 LOADN                            R18 1
      113 LOADN                            R19 0
      114 LOADN                            R20 0
      115 GETUPVAL                         R22 0
      116 GETTABLEKS                       R22 R22 K38 ["TIMELINE_HEIGHT"]
      118 ADDK                             R21 R22 K17 [1]
      119 CALL                             R17 4 1
      120 SETTABLEKS                       R17 R16 K28 ["Size"]
      122 SETTABLEKS                       R8 R16 K7 ["LayoutOrder"]
      124 GETTABLEKS                       R17 R2 K39 ["timelineTheme"]
      126 GETTABLEKS                       R17 R17 K40 ["backgroundColor"]
      128 SETTABLEKS                       R17 R16 K31 ["BackgroundColor3"]
      130 GETTABLEKS                       R17 R2 K41 ["borderColor"]
      132 SETTABLEKS                       R17 R16 K32 ["BorderColor3"]
      134 GETTABLEKS                       R17 R1 K33 ["ZIndex"]
      136 SETTABLEKS                       R17 R16 K33 ["ZIndex"]
      138 DUPTABLE                         R17 K45 [{"Timeline", "ToggleEditorButton", "KeyboardListener"}]
      139 GETUPVAL                         R18 1
      140 GETTABLEKS                       R18 R18 K26 ["createElement"]
      142 GETUPVAL                         R19 2
      143 DUPTABLE                         R20 K58 [{["StartTick"], ["EndTick"], ["LastTick"], ["MajorInterval"], ["MinorInterval"], ["Position"], ["Height"], ["Width"], ["TickHeightScale"] = 0.7, ["SmallTickHeightScale"] = 0.3, ["TimelineUnit"], ["OnInputBegan"], ["OnDragMoved"], ["AnimationData"], ["FrameRate"], ["ZIndex"] = 2}]
      144 SETTABLEKS                       R3 R20 K2 ["StartTick"]
      146 SETTABLEKS                       R4 R20 K3 ["EndTick"]
      148 SETTABLEKS                       R5 R20 K4 ["LastTick"]
      150 SETTABLEKS                       R12 R20 K46 ["MajorInterval"]
      152 SETTABLEKS                       R13 R20 K47 ["MinorInterval"]
      154 GETIMPORT                        R21 K37 [UDim2.new]
      156 LOADN                            R22 0
      157 GETTABLEKS                       R24 R0 K0 ["props"]
      159 GETTABLEKS                       R24 R24 K15 ["TrackPadding"]
      161 DIVK                             R23 R24 K57 [2]
      162 LOADN                            R24 0
      163 LOADN                            R25 0
      164 CALL                             R21 4 1
      165 SETTABLEKS                       R21 R20 K48 ["Position"]
      167 GETUPVAL                         R21 0
      168 GETTABLEKS                       R21 R21 K38 ["TIMELINE_HEIGHT"]
      170 SETTABLEKS                       R21 R20 K49 ["Height"]
      172 GETTABLEKS                       R22 R9 K14 ["X"]
      174 GETTABLEKS                       R23 R0 K0 ["props"]
      176 GETTABLEKS                       R23 R23 K15 ["TrackPadding"]
      178 SUB                              R21 R22 R23
      179 SETTABLEKS                       R21 R20 K50 ["Width"]
      181 SETTABLEKS                       R7 R20 K6 ["TimelineUnit"]
      183 GETTABLEKS                       R21 R0 K59 ["onTimelineClicked"]
      185 SETTABLEKS                       R21 R20 K55 ["OnInputBegan"]
      187 GETTABLEKS                       R21 R0 K60 ["onScrubberMoved"]
      189 SETTABLEKS                       R21 R20 K56 ["OnDragMoved"]
      191 SETTABLEKS                       R10 R20 K9 ["AnimationData"]
      193 SETTABLEKS                       R6 R20 K5 ["FrameRate"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K42 ["Timeline"]
      198 GETUPVAL                         R18 1
      199 GETTABLEKS                       R18 R18 K26 ["createElement"]
      201 GETUPVAL                         R19 3
      202 DUPTABLE                         R20 K64 [{["ZIndex"] = 1, ["AnchorPoint"], ["Size"], ["Position"], ["Style"], ["OnClick"]}]
      203 GETIMPORT                        R21 K66 [Vector2.new]
      205 LOADK                            R22 K67 [0.5]
      206 LOADK                            R23 K67 [0.5]
      207 CALL                             R21 2 1
      208 SETTABLEKS                       R21 R20 K61 ["AnchorPoint"]
      210 GETIMPORT                        R21 K69 [UDim2.fromOffset]
      212 GETUPVAL                         R22 0
      213 GETTABLEKS                       R22 R22 K70 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
      215 GETUPVAL                         R23 0
      216 GETTABLEKS                       R23 R23 K71 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K28 ["Size"]
      221 GETIMPORT                        R21 K69 [UDim2.fromOffset]
      223 GETTABLEKS                       R23 R0 K0 ["props"]
      225 GETTABLEKS                       R23 R23 K15 ["TrackPadding"]
      227 DIVK                             R22 R23 K72 [4]
      228 GETUPVAL                         R24 0
      229 GETTABLEKS                       R24 R24 K38 ["TIMELINE_HEIGHT"]
      231 DIVK                             R23 R24 K57 [2]
      232 CALL                             R21 2 1
      233 SETTABLEKS                       R21 R20 K48 ["Position"]
      235 GETTABLEKS                       R21 R2 K73 ["button"]
      237 GETTABLEKS                       R21 R21 K74 ["MediaControl"]
      239 SETTABLEKS                       R21 R20 K62 ["Style"]
      241 GETTABLEKS                       R21 R1 K75 ["OnToggleEditorClicked"]
      243 SETTABLEKS                       R21 R20 K63 ["OnClick"]
      245 DUPTABLE                         R21 K79 [{"Image", "Tooltip", "TeachingCallout"}]
      246 GETUPVAL                         R22 1
      247 GETTABLEKS                       R22 R22 K26 ["createElement"]
      249 LOADK                            R23 K80 ["ImageLabel"]
      250 DUPTABLE                         R24 K83 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Image"], ["ImageColor3"]}]
      251 GETIMPORT                        R25 K37 [UDim2.new]
      253 LOADN                            R26 0
      254 GETUPVAL                         R27 0
      255 GETTABLEKS                       R27 R27 K70 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
      257 LOADN                            R28 0
      258 GETUPVAL                         R29 0
      259 GETTABLEKS                       R29 R29 K71 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
      261 CALL                             R25 4 1
      262 SETTABLEKS                       R25 R24 K28 ["Size"]
      264 GETIMPORT                        R25 K37 [UDim2.new]
      266 LOADK                            R26 K67 [0.5]
      267 LOADN                            R27 0
      268 LOADK                            R28 K67 [0.5]
      269 LOADN                            R29 0
      270 CALL                             R25 4 1
      271 SETTABLEKS                       R25 R24 K48 ["Position"]
      273 GETIMPORT                        R25 K66 [Vector2.new]
      275 LOADK                            R26 K67 [0.5]
      276 LOADK                            R27 K67 [0.5]
      277 CALL                             R25 2 1
      278 SETTABLEKS                       R25 R24 K61 ["AnchorPoint"]
      280 JUMPIFNOT                        R11 ; [+5]
      281 GETTABLEKS                       R25 R2 K84 ["curveTheme"]
      283 GETTABLEKS                       R25 R25 K85 ["dopesheetButton"]
      285 JUMP                             ; [+4]
      286 GETTABLEKS                       R25 R2 K84 ["curveTheme"]
      288 GETTABLEKS                       R25 R25 K86 ["curveEditorButton"]
      290 SETTABLEKS                       R25 R24 K76 ["Image"]
      292 GETTABLEKS                       R25 R2 K87 ["playbackTheme"]
      294 GETTABLEKS                       R25 R25 K88 ["iconColor"]
      296 SETTABLEKS                       R25 R24 K82 ["ImageColor3"]
      298 CALL                             R22 2 1
      299 SETTABLEKS                       R22 R21 K76 ["Image"]
      301 GETUPVAL                         R22 1
      302 GETTABLEKS                       R22 R22 K26 ["createElement"]
      304 GETUPVAL                         R23 4
      305 DUPTABLE                         R24 K90 [{"TextKey"}]
      306 JUMPIFNOT                        R11 ; [+2]
      307 LOADK                            R25 K91 ["GoToDopesheetEditor"]
      308 JUMP                             ; [+1]
      309 LOADK                            R25 K92 ["GoToCurveEditor"]
      310 SETTABLEKS                       R25 R24 K89 ["TextKey"]
      312 CALL                             R22 2 1
      313 SETTABLEKS                       R22 R21 K77 ["Tooltip"]
      315 GETUPVAL                         R22 1
      316 GETTABLEKS                       R22 R22 K26 ["createElement"]
      318 GETUPVAL                         R23 5
      319 DUPTABLE                         R24 K97 [{["Offset"], ["DefinitionId"] = "CurveEditorCallout", ["LocationId"] = "ToggleEditorButton"}]
      320 GETIMPORT                        R25 K66 [Vector2.new]
      322 LOADN                            R26 0
      323 LOADN                            R27 6
      324 CALL                             R25 2 1
      325 SETTABLEKS                       R25 R24 K93 ["Offset"]
      327 CALL                             R22 2 1
      328 SETTABLEKS                       R22 R21 K78 ["TeachingCallout"]
      330 CALL                             R18 3 1
      331 SETTABLEKS                       R18 R17 K43 ["ToggleEditorButton"]
      333 GETUPVAL                         R18 1
      334 GETTABLEKS                       R18 R18 K26 ["createElement"]
      336 GETUPVAL                         R19 6
      337 DUPTABLE                         R20 K99 [{"OnKeyPressed"}]
      338 NEWCLOSURE                       R21 P0
      339 CAPTURE                          UPVAL U7
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R21 R20 K98 ["OnKeyPressed"]
      343 CALL                             R18 2 1
      344 SETTABLEKS                       R18 R17 K44 ["KeyboardListener"]
      346 CALL                             R14 3 -1
      347 RETURN                           R14 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TrackUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["UI"]
       41 GETTABLEKS                       R5 R5 K14 ["Button"]
       43 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K16 ["withContext"]
       47 GETTABLEKS                       R8 R4 K13 ["UI"]
       49 GETTABLEKS                       R8 R8 K17 ["KeyboardListener"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R0 K8 ["Src"]
       55 GETTABLEKS                       R10 R10 K9 ["Util"]
       57 GETTABLEKS                       R10 R10 K18 ["Input"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K8 ["Src"]
       64 GETTABLEKS                       R11 R11 K19 ["Components"]
       66 GETTABLEKS                       R11 R11 K20 ["Timeline"]
       68 GETTABLEKS                       R11 R11 K20 ["Timeline"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R0 K8 ["Src"]
       75 GETTABLEKS                       R12 R12 K19 ["Components"]
       77 GETTABLEKS                       R12 R12 K21 ["Tooltip"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K8 ["Src"]
       84 GETTABLEKS                       R13 R13 K19 ["Components"]
       86 GETTABLEKS                       R13 R13 K22 ["TeachingCallout"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R1 K23 ["PureComponent"]
       91 LOADK                            R15 K24 ["TimelineContainer"]
       92 NAMECALL                         R13 R13 K25 ["extend"]
       94 CALL                             R13 2 1
       95 DUPCLOSURE                       R14 K26 [PROTO_0]
       96 DUPCLOSURE                       R15 K27 [PROTO_1]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R16 K28 [PROTO_7]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R16 R13 K29 ["init"]
      103 DUPCLOSURE                       R16 K30 [PROTO_9]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R9
      112 SETTABLEKS                       R16 R13 K31 ["render"]
      114 MOVE                             R16 R7
      115 DUPTABLE                         R17 K33 [{"Stylizer"}]
      116 GETTABLEKS                       R18 R6 K32 ["Stylizer"]
      118 SETTABLEKS                       R18 R17 K32 ["Stylizer"]
      120 CALL                             R16 1 1
      121 MOVE                             R17 R13
      122 CALL                             R16 1 1
      123 MOVE                             R13 R16
      124 RETURN                           R13 1
