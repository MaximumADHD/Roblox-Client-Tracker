PROTO_0:
        0 LOADN                            R1 255
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
        8 LOADN                            R9 255
        9 LOADN                            R10 1
       10 JUMPIFNOTLT                      R10 R8 ; [+4]
       12 ADDK                             R9 R9 K1 [1]
       13 DIVK                             R8 R8 K2 [10]
       14 JUMPBACK                         ; [-6]
       15 MOVE                             R7 R9
       16 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       18 GETIMPORT                        R5 K5 [math.pow]
       20 CALL                             R5 2 1
       21 MULK                             R6 R5 K6 [3]
       22 JUMPIFNOTLT                      R4 R6 ; [+13]
       24 MOVE                             R7 R5
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K7 ["NUM_TICKS"]
       28 DIV                              R9 R5 R10
       29 FASTCALL2K                       MATH_MAX R9 K1 ; [+4]
       31 LOADK                            R10 K1 [1]
       32 GETIMPORT                        R8 K9 [math.max]
       34 CALL                             R8 2 1
       35 RETURN                           R7 2
       36 MOVE                             R7 R6
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K7 ["NUM_TICKS"]
       40 DIV                              R9 R6 R10
       41 FASTCALL2K                       MATH_MAX R9 K1 ; [+4]
       43 LOADK                            R10 K1 [1]
       44 GETIMPORT                        R8 K9 [math.max]
       46 CALL                             R8 2 1
       47 RETURN                           R7 2

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
       57 MOVE                             R15 R3
       58 MOVE                             R16 R4
       59 SUB                              R17 R16 R15
       60 GETUPVAL                         R20 0
       61 GETTABLEKS                       R20 R20 K16 ["TICK_SPACING"]
       63 MUL                              R19 R20 R17
       64 DIV                              R18 R19 R14
       65 LOADN                            R20 10
       66 MOVE                             R22 R18
       67 LOADN                            R23 255
       68 LOADN                            R24 1
       69 JUMPIFNOTLT                      R24 R22 ; [+4]
       71 ADDK                             R23 R23 K17 [1]
       72 DIVK                             R22 R22 K18 [10]
       73 JUMPBACK                         ; [-6]
       74 MOVE                             R21 R23
       75 FASTCALL2                        MATH_POW R20 R21 ; [+3]
       77 GETIMPORT                        R19 K21 [math.pow]
       79 CALL                             R19 2 1
       80 MULK                             R20 R19 K22 [3]
       81 JUMPIFNOTLT                      R18 R20 ; [+14]
       83 MOVE                             R12 R19
       84 GETUPVAL                         R23 0
       85 GETTABLEKS                       R23 R23 K23 ["NUM_TICKS"]
       87 DIV                              R22 R19 R23
       88 FASTCALL2K                       MATH_MAX R22 K17 ; [+4]
       90 LOADK                            R23 K17 [1]
       91 GETIMPORT                        R21 K25 [math.max]
       93 CALL                             R21 2 1
       94 MOVE                             R13 R21
       95 JUMP                             ; [+12]
       96 MOVE                             R12 R20
       97 GETUPVAL                         R23 0
       98 GETTABLEKS                       R23 R23 K23 ["NUM_TICKS"]
      100 DIV                              R22 R20 R23
      101 FASTCALL2K                       MATH_MAX R22 K17 ; [+4]
      103 LOADK                            R23 K17 [1]
      104 GETIMPORT                        R21 K25 [math.max]
      106 CALL                             R21 2 1
      107 MOVE                             R13 R21
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K26 ["createElement"]
      111 LOADK                            R15 K27 ["Frame"]
      112 DUPTABLE                         R16 K33 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3", "BorderColor3", "ZIndex"}]
      113 GETIMPORT                        R17 K36 [UDim2.new]
      115 LOADN                            R18 1
      116 LOADN                            R19 0
      117 LOADN                            R20 0
      118 GETUPVAL                         R22 0
      119 GETTABLEKS                       R22 R22 K37 ["TIMELINE_HEIGHT"]
      121 ADDK                             R21 R22 K17 [1]
      122 CALL                             R17 4 1
      123 SETTABLEKS                       R17 R16 K28 ["Size"]
      125 SETTABLEKS                       R8 R16 K7 ["LayoutOrder"]
      127 LOADN                            R17 0
      128 SETTABLEKS                       R17 R16 K29 ["BorderSizePixel"]
      130 GETTABLEKS                       R17 R2 K38 ["timelineTheme"]
      132 GETTABLEKS                       R17 R17 K39 ["backgroundColor"]
      134 SETTABLEKS                       R17 R16 K30 ["BackgroundColor3"]
      136 GETTABLEKS                       R17 R2 K40 ["borderColor"]
      138 SETTABLEKS                       R17 R16 K31 ["BorderColor3"]
      140 GETTABLEKS                       R17 R1 K32 ["ZIndex"]
      142 SETTABLEKS                       R17 R16 K32 ["ZIndex"]
      144 DUPTABLE                         R17 K44 [{"Timeline", "ToggleEditorButton", "KeyboardListener"}]
      145 GETUPVAL                         R18 1
      146 GETTABLEKS                       R18 R18 K26 ["createElement"]
      148 GETUPVAL                         R19 2
      149 DUPTABLE                         R20 K54 [{"StartTick", "EndTick", "LastTick", "MajorInterval", "MinorInterval", "Position", "Height", "Width", "TickHeightScale", "SmallTickHeightScale", "TimelineUnit", "OnInputBegan", "OnDragMoved", "AnimationData", "FrameRate", "ZIndex"}]
      150 SETTABLEKS                       R3 R20 K2 ["StartTick"]
      152 SETTABLEKS                       R4 R20 K3 ["EndTick"]
      154 SETTABLEKS                       R5 R20 K4 ["LastTick"]
      156 SETTABLEKS                       R12 R20 K45 ["MajorInterval"]
      158 SETTABLEKS                       R13 R20 K46 ["MinorInterval"]
      160 GETIMPORT                        R21 K36 [UDim2.new]
      162 LOADN                            R22 0
      163 GETTABLEKS                       R24 R0 K0 ["props"]
      165 GETTABLEKS                       R24 R24 K15 ["TrackPadding"]
      167 DIVK                             R23 R24 K55 [2]
      168 LOADN                            R24 0
      169 LOADN                            R25 0
      170 CALL                             R21 4 1
      171 SETTABLEKS                       R21 R20 K47 ["Position"]
      173 GETUPVAL                         R21 0
      174 GETTABLEKS                       R21 R21 K37 ["TIMELINE_HEIGHT"]
      176 SETTABLEKS                       R21 R20 K48 ["Height"]
      178 GETTABLEKS                       R22 R9 K14 ["X"]
      180 GETTABLEKS                       R23 R0 K0 ["props"]
      182 GETTABLEKS                       R23 R23 K15 ["TrackPadding"]
      184 SUB                              R21 R22 R23
      185 SETTABLEKS                       R21 R20 K49 ["Width"]
      187 LOADK                            R21 K56 [0.7]
      188 SETTABLEKS                       R21 R20 K50 ["TickHeightScale"]
      190 LOADK                            R21 K57 [0.3]
      191 SETTABLEKS                       R21 R20 K51 ["SmallTickHeightScale"]
      193 SETTABLEKS                       R7 R20 K6 ["TimelineUnit"]
      195 GETTABLEKS                       R21 R0 K58 ["onTimelineClicked"]
      197 SETTABLEKS                       R21 R20 K52 ["OnInputBegan"]
      199 GETTABLEKS                       R21 R0 K59 ["onScrubberMoved"]
      201 SETTABLEKS                       R21 R20 K53 ["OnDragMoved"]
      203 SETTABLEKS                       R10 R20 K9 ["AnimationData"]
      205 SETTABLEKS                       R6 R20 K5 ["FrameRate"]
      207 LOADN                            R21 2
      208 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K41 ["Timeline"]
      213 GETUPVAL                         R18 1
      214 GETTABLEKS                       R18 R18 K26 ["createElement"]
      216 GETUPVAL                         R19 3
      217 DUPTABLE                         R20 K63 [{"ZIndex", "AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      218 LOADN                            R21 1
      219 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      221 GETIMPORT                        R21 K65 [Vector2.new]
      223 LOADK                            R22 K66 [0.5]
      224 LOADK                            R23 K66 [0.5]
      225 CALL                             R21 2 1
      226 SETTABLEKS                       R21 R20 K60 ["AnchorPoint"]
      228 GETIMPORT                        R21 K68 [UDim2.fromOffset]
      230 GETUPVAL                         R22 0
      231 GETTABLEKS                       R22 R22 K69 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K70 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
      236 CALL                             R21 2 1
      237 SETTABLEKS                       R21 R20 K28 ["Size"]
      239 GETIMPORT                        R21 K68 [UDim2.fromOffset]
      241 GETTABLEKS                       R23 R0 K0 ["props"]
      243 GETTABLEKS                       R23 R23 K15 ["TrackPadding"]
      245 DIVK                             R22 R23 K71 [4]
      246 GETUPVAL                         R24 0
      247 GETTABLEKS                       R24 R24 K37 ["TIMELINE_HEIGHT"]
      249 DIVK                             R23 R24 K55 [2]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K47 ["Position"]
      253 GETTABLEKS                       R21 R2 K72 ["button"]
      255 GETTABLEKS                       R21 R21 K73 ["MediaControl"]
      257 SETTABLEKS                       R21 R20 K61 ["Style"]
      259 GETTABLEKS                       R21 R1 K74 ["OnToggleEditorClicked"]
      261 SETTABLEKS                       R21 R20 K62 ["OnClick"]
      263 DUPTABLE                         R21 K78 [{"Image", "Tooltip", "TeachingCallout"}]
      264 GETUPVAL                         R22 1
      265 GETTABLEKS                       R22 R22 K26 ["createElement"]
      267 LOADK                            R23 K79 ["ImageLabel"]
      268 DUPTABLE                         R24 K82 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Image", "ImageColor3"}]
      269 LOADN                            R25 1
      270 SETTABLEKS                       R25 R24 K80 ["BackgroundTransparency"]
      272 GETIMPORT                        R25 K36 [UDim2.new]
      274 LOADN                            R26 0
      275 GETUPVAL                         R27 0
      276 GETTABLEKS                       R27 R27 K69 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
      278 LOADN                            R28 0
      279 GETUPVAL                         R29 0
      280 GETTABLEKS                       R29 R29 K70 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
      282 CALL                             R25 4 1
      283 SETTABLEKS                       R25 R24 K28 ["Size"]
      285 GETIMPORT                        R25 K36 [UDim2.new]
      287 LOADK                            R26 K66 [0.5]
      288 LOADN                            R27 0
      289 LOADK                            R28 K66 [0.5]
      290 LOADN                            R29 0
      291 CALL                             R25 4 1
      292 SETTABLEKS                       R25 R24 K47 ["Position"]
      294 GETIMPORT                        R25 K65 [Vector2.new]
      296 LOADK                            R26 K66 [0.5]
      297 LOADK                            R27 K66 [0.5]
      298 CALL                             R25 2 1
      299 SETTABLEKS                       R25 R24 K60 ["AnchorPoint"]
      301 JUMPIFNOT                        R11 ; [+5]
      302 GETTABLEKS                       R25 R2 K83 ["curveTheme"]
      304 GETTABLEKS                       R25 R25 K84 ["dopesheetButton"]
      306 JUMP                             ; [+4]
      307 GETTABLEKS                       R25 R2 K83 ["curveTheme"]
      309 GETTABLEKS                       R25 R25 K85 ["curveEditorButton"]
      311 SETTABLEKS                       R25 R24 K75 ["Image"]
      313 GETTABLEKS                       R25 R2 K86 ["playbackTheme"]
      315 GETTABLEKS                       R25 R25 K87 ["iconColor"]
      317 SETTABLEKS                       R25 R24 K81 ["ImageColor3"]
      319 CALL                             R22 2 1
      320 SETTABLEKS                       R22 R21 K75 ["Image"]
      322 GETUPVAL                         R22 1
      323 GETTABLEKS                       R22 R22 K26 ["createElement"]
      325 GETUPVAL                         R23 4
      326 DUPTABLE                         R24 K89 [{"TextKey"}]
      327 JUMPIFNOT                        R11 ; [+2]
      328 LOADK                            R25 K90 ["GoToDopesheetEditor"]
      329 JUMP                             ; [+1]
      330 LOADK                            R25 K91 ["GoToCurveEditor"]
      331 SETTABLEKS                       R25 R24 K88 ["TextKey"]
      333 CALL                             R22 2 1
      334 SETTABLEKS                       R22 R21 K76 ["Tooltip"]
      336 GETUPVAL                         R22 1
      337 GETTABLEKS                       R22 R22 K26 ["createElement"]
      339 GETUPVAL                         R23 5
      340 DUPTABLE                         R24 K95 [{"Offset", "DefinitionId", "LocationId"}]
      341 GETIMPORT                        R25 K65 [Vector2.new]
      343 LOADN                            R26 0
      344 LOADN                            R27 6
      345 CALL                             R25 2 1
      346 SETTABLEKS                       R25 R24 K92 ["Offset"]
      348 LOADK                            R25 K96 ["CurveEditorCallout"]
      349 SETTABLEKS                       R25 R24 K93 ["DefinitionId"]
      351 LOADK                            R25 K42 ["ToggleEditorButton"]
      352 SETTABLEKS                       R25 R24 K94 ["LocationId"]
      354 CALL                             R22 2 1
      355 SETTABLEKS                       R22 R21 K77 ["TeachingCallout"]
      357 CALL                             R18 3 1
      358 SETTABLEKS                       R18 R17 K42 ["ToggleEditorButton"]
      360 GETUPVAL                         R18 1
      361 GETTABLEKS                       R18 R18 K26 ["createElement"]
      363 GETUPVAL                         R19 6
      364 DUPTABLE                         R20 K98 [{"OnKeyPressed"}]
      365 NEWCLOSURE                       R21 P0
      366 CAPTURE                          UPVAL U7
      367 CAPTURE                          VAL R0
      368 SETTABLEKS                       R21 R20 K97 ["OnKeyPressed"]
      370 CALL                             R18 2 1
      371 SETTABLEKS                       R18 R17 K43 ["KeyboardListener"]
      373 CALL                             R14 3 -1
      374 RETURN                           R14 -1

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
