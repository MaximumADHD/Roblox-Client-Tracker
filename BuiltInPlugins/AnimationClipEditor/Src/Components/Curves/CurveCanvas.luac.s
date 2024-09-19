PROTO_0:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["children"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETIMPORT R5 K4 [Vector2.new]
  CALL R5 0 -1
  NAMECALL R3 R0 K5 ["toCanvasSpace"]
  CALL R3 -1 1
  GETTABLEKS R5 R0 K6 ["children"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K8 ["Frame"]
  DUPTABLE R8 K13 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R9 K15 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETIMPORT R9 K15 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R3 K16 ["Y"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K10 ["Position"]
  GETTABLEKS R10 R2 K17 ["curveTheme"]
  GETTABLEKS R9 R10 K18 ["xAxis"]
  SETTABLEKS R9 R8 K11 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K12 ["BorderSizePixel"]
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K21 [table.insert]
  CALL R4 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["MinValue"]
  GETTABLEKS R4 R2 K2 ["MaxValue"]
  GETTABLEKS R5 R2 K3 ["VerticalScroll"]
  GETTABLEKS R6 R2 K4 ["VerticalZoom"]
  FASTCALL2K MATH_MIN R6 K5 [+5]
  MOVE R8 R6
  LOADK R9 K5 [0.99]
  GETIMPORT R7 K8 [math.min]
  CALL R7 2 1
  MOVE R6 R7
  SUBRK R8 R9 K6 ["math"]
  DIVRK R7 R9 K8 [math.min]
  GETTABLEKS R11 R1 K10 ["X"]
  GETTABLEKS R12 R2 K11 ["StartTick"]
  SUB R10 R11 R12
  GETTABLEKS R12 R2 K12 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K10 ["X"]
  MUL R9 R10 R11
  GETTABLEKS R11 R2 K13 ["EndTick"]
  GETTABLEKS R12 R2 K11 ["StartTick"]
  SUB R10 R11 R12
  DIV R8 R9 R10
  GETTABLEKS R11 R1 K14 ["Y"]
  SUB R10 R4 R11
  SUB R11 R4 R3
  DIV R9 R10 R11
  MUL R10 R5 R6
  SUB R9 R9 R10
  MUL R9 R9 R7
  GETTABLEKS R12 R2 K12 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K14 ["Y"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["CURVE_CANVAS_PADDING"]
  MUL R10 R11 R12
  GETTABLEKS R14 R2 K12 ["AbsoluteSize"]
  GETTABLEKS R13 R14 K14 ["Y"]
  MUL R12 R9 R13
  LOADN R15 2
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K15 ["CURVE_CANVAS_PADDING"]
  MUL R14 R15 R16
  SUBRK R13 R9 K14 ["Y"]
  MUL R11 R12 R13
  ADD R9 R10 R11
  GETIMPORT R10 K18 [Vector2.new]
  MOVE R11 R8
  MOVE R12 R9
  CALL R10 2 -1
  RETURN R10 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R4 R2 K1 ["MinValue"]
  GETTABLEKS R5 R2 K2 ["MaxValue"]
  SUB R3 R4 R5
  GETTABLEKS R6 R2 K4 ["VerticalZoom"]
  FASTCALL2K MATH_MIN R6 K5 [+4]
  LOADK R7 K5 [0.99]
  GETIMPORT R5 K8 [math.min]
  CALL R5 2 1
  SUBRK R4 R3 K5 [0.99]
  GETTABLEKS R7 R2 K9 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K10 ["Y"]
  LOADN R9 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["CURVE_CANVAS_PADDING"]
  MUL R8 R9 R10
  SUBRK R7 R3 K8 [math.min]
  MUL R5 R6 R7
  GETTABLEKS R8 R2 K12 ["EndTick"]
  GETTABLEKS R9 R2 K13 ["StartTick"]
  SUB R7 R8 R9
  GETTABLEKS R9 R2 K9 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K14 ["X"]
  DIV R6 R7 R8
  MUL R8 R3 R4
  DIV R7 R8 R5
  MUL R9 R1 R6
  DIV R8 R9 R7
  RETURN R8 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyRightClick"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R2 4 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputBegan"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputEnded"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Value"]
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R2 4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyRightClick"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R2 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputBegan"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputEnded"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Value"]
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R2 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentRightClick"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["SLOPES"]
  GETTABLEKS R6 R7 K4 ["Left"]
  CALL R2 4 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentInputBegan"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentInputEnded"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["SLOPES"]
  GETTABLEKS R6 R7 K4 ["Left"]
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentRightClick"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["SLOPES"]
  GETTABLEKS R6 R7 K4 ["Right"]
  CALL R2 4 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentInputBegan"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnTangentInputEnded"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Path"]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["SLOPES"]
  GETTABLEKS R6 R7 K4 ["Right"]
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K2 ["Keyframes"]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R5 R1 K3 ["Path"]
  GETTABLEKS R7 R1 K3 ["Path"]
  LENGTH R6 R7
  GETTABLE R4 R5 R6
  GETIMPORT R5 K6 [table.concat]
  GETTABLEKS R6 R1 K3 ["Path"]
  LOADK R7 K7 ["_"]
  CALL R5 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["TRACK_THEME_MAPPING"]
  GETTABLEKS R9 R1 K9 ["Type"]
  GETTABLE R7 R8 R9
  JUMPIFNOT R7 [+8]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["TRACK_THEME_MAPPING"]
  GETTABLEKS R9 R1 K9 ["Type"]
  GETTABLE R7 R8 R9
  GETTABLE R6 R7 R4
  JUMPIF R6 [+1]
  LOADK R6 K10 ["Default"]
  GETTABLEKS R8 R3 K11 ["curveTheme"]
  GETTABLE R7 R8 R6
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  LOADNIL R12
  LOADNIL R13
  GETTABLEKS R16 R2 K12 ["AbsoluteSize"]
  GETTABLEKS R15 R16 K13 ["Y"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K14 ["TANGENT_CONTROL_LENGTH"]
  MUL R14 R15 R16
  GETTABLEKS R15 R2 K15 ["SelectedKeyframes"]
  GETTABLEKS R16 R2 K16 ["ShowTooltips"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K17 ["Playhead"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K18 ["getValue"]
  MOVE R19 R1
  MOVE R20 R17
  CALL R18 2 1
  GETTABLEKS R19 R1 K9 ["Type"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K19 ["TRACK_TYPES"]
  GETTABLEKS R20 R21 K20 ["Facs"]
  JUMPIFNOTEQ R19 R20 [+10]
  LOADN R21 0
  LOADN R22 1
  FASTCALL3 MATH_CLAMP R18 R21 R22
  MOVE R20 R18
  GETIMPORT R19 K23 [math.clamp]
  CALL R19 3 1
  MOVE R18 R19
  GETIMPORT R21 K26 [Vector2.new]
  MOVE R22 R17
  MOVE R23 R18
  CALL R21 2 -1
  NAMECALL R19 R0 K27 ["toCanvasSpace"]
  CALL R19 -1 1
  GETIMPORT R20 K30 [string.format]
  LOADK R21 K31 ["%s_Scrubber"]
  MOVE R22 R5
  CALL R20 2 1
  GETTABLEKS R21 R0 K32 ["children"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K33 ["createElement"]
  GETUPVAL R23 3
  DUPTABLE R24 K44 [{"Position", "TrackName", "InterpolationMode", "LeftSlope", "LeftAuto", "RightSlope", "RightAuto", "Color", "ShowSlopes", "Width"}]
  SETTABLEKS R19 R24 K34 ["Position"]
  LOADK R25 K45 [""]
  SETTABLEKS R25 R24 K35 ["TrackName"]
  GETIMPORT R25 K49 [Enum.KeyInterpolationMode.Linear]
  SETTABLEKS R25 R24 K36 ["InterpolationMode"]
  LOADNIL R25
  SETTABLEKS R25 R24 K37 ["LeftSlope"]
  LOADB R25 0
  SETTABLEKS R25 R24 K38 ["LeftAuto"]
  LOADNIL R25
  SETTABLEKS R25 R24 K39 ["RightSlope"]
  LOADB R25 0
  SETTABLEKS R25 R24 K40 ["RightAuto"]
  GETTABLEKS R26 R3 K50 ["scrubberTheme"]
  GETTABLEKS R25 R26 K51 ["backgroundColor"]
  SETTABLEKS R25 R24 K41 ["Color"]
  LOADB R25 0
  SETTABLEKS R25 R24 K42 ["ShowSlopes"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K52 ["SCRUBBER_MARKER_WIDTH"]
  SETTABLEKS R25 R24 K43 ["Width"]
  CALL R22 2 1
  SETTABLE R22 R21 R20
  GETTABLEKS R21 R1 K53 ["Instance"]
  GETTABLE R22 R15 R21
  GETIMPORT R23 K55 [ipairs]
  GETTABLEKS R24 R1 K3 ["Path"]
  CALL R23 1 3
  FORGPREP_INEXT R23
  JUMPIFNOT R22 [+11]
  GETTABLEKS R29 R22 K56 ["Components"]
  JUMPIFNOT R29 [+4]
  GETTABLEKS R29 R22 K56 ["Components"]
  GETTABLE R28 R29 R27
  JUMPIF R28 [+1]
  GETTABLE R28 R22 R27
  MOVE R22 R28
  FORGLOOP R23 2 [inext] [-11]
  LOADNIL R23
  LOADNIL R24
  GETTABLEKS R25 R1 K9 ["Type"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K19 ["TRACK_TYPES"]
  GETTABLEKS R26 R27 K20 ["Facs"]
  JUMPIFNOTEQ R25 R26 [+21]
  GETIMPORT R27 K26 [Vector2.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 -1
  NAMECALL R25 R0 K27 ["toCanvasSpace"]
  CALL R25 -1 1
  GETTABLEKS R23 R25 K13 ["Y"]
  GETIMPORT R27 K26 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 -1
  NAMECALL R25 R0 K27 ["toCanvasSpace"]
  CALL R25 -1 1
  GETTABLEKS R24 R25 K13 ["Y"]
  GETIMPORT R25 K55 [ipairs]
  GETTABLEKS R26 R1 K2 ["Keyframes"]
  CALL R25 1 3
  FORGPREP_INEXT R25
  GETTABLEKS R31 R1 K57 ["Data"]
  GETTABLE R30 R31 R29
  JUMPIFEQKNIL R30 [+680]
  MOVE R31 R22
  JUMPIFNOT R31 [+6]
  GETTABLEKS R31 R22 K58 ["Selection"]
  JUMPIFNOT R31 [+3]
  GETTABLEKS R32 R22 K58 ["Selection"]
  GETTABLE R31 R32 R29
  GETTABLEKS R32 R1 K9 ["Type"]
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K19 ["TRACK_TYPES"]
  GETTABLEKS R33 R34 K59 ["Quaternion"]
  JUMPIFNOTEQ R32 R33 [+20]
  GETIMPORT R34 K26 [Vector2.new]
  MOVE R35 R29
  LOADN R36 1
  CALL R34 2 -1
  NAMECALL R32 R0 K27 ["toCanvasSpace"]
  CALL R32 -1 1
  MOVE R8 R32
  GETIMPORT R34 K26 [Vector2.new]
  MOVE R35 R29
  LOADN R36 0
  CALL R34 2 -1
  NAMECALL R32 R0 K27 ["toCanvasSpace"]
  CALL R32 -1 1
  MOVE R9 R32
  JUMP [+10]
  GETIMPORT R34 K26 [Vector2.new]
  MOVE R35 R29
  GETTABLEKS R36 R30 K60 ["Value"]
  CALL R34 2 -1
  NAMECALL R32 R0 K27 ["toCanvasSpace"]
  CALL R32 -1 1
  MOVE R8 R32
  MOVE R32 R13
  JUMPIF R32 [+12]
  MOVE R32 R31
  JUMPIFNOT R32 [+10]
  MOVE R32 R12
  JUMPIFNOT R32 [+8]
  GETTABLEKS R33 R12 K36 ["InterpolationMode"]
  GETIMPORT R34 K62 [Enum.KeyInterpolationMode.Constant]
  JUMPIFNOTEQ R33 R34 [+2]
  LOADB R32 0 +1
  LOADB R32 1
  JUMPIFNOT R32 [+5]
  GETTABLEKS R34 R3 K11 ["curveTheme"]
  GETTABLEKS R33 R34 K63 ["selected"]
  JUMPIF R33 [+1]
  MOVE R33 R7
  GETIMPORT R34 K30 [string.format]
  LOADK R35 K64 ["%s_Curve_%d"]
  MOVE R36 R5
  MOVE R37 R28
  CALL R34 3 1
  GETTABLEKS R35 R2 K65 ["StartTick"]
  JUMPIFNOTLE R35 R29 [+588]
  JUMPIFNOT R11 [+4]
  GETTABLEKS R35 R2 K66 ["EndTick"]
  JUMPIFNOTLE R11 R35 [+583]
  JUMPIFNOT R12 [+144]
  JUMPIFNOT R10 [+143]
  GETTABLEKS R35 R12 K36 ["InterpolationMode"]
  GETIMPORT R36 K62 [Enum.KeyInterpolationMode.Constant]
  JUMPIFNOTEQ R35 R36 [+37]
  GETTABLEKS R35 R0 K32 ["children"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K33 ["createElement"]
  GETUPVAL R37 4
  DUPTABLE R38 K70 [{"A", "B", "Color", "Width", "ZIndex"}]
  SETTABLEKS R10 R38 K67 ["A"]
  GETIMPORT R39 K26 [Vector2.new]
  GETTABLEKS R40 R8 K71 ["X"]
  GETTABLEKS R41 R10 K13 ["Y"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K68 ["B"]
  SETTABLEKS R33 R38 K41 ["Color"]
  JUMPIFNOT R32 [+4]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K72 ["CURVE_WIDTH_SELECTED"]
  JUMP [+3]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K73 ["CURVE_WIDTH"]
  SETTABLEKS R39 R38 K43 ["Width"]
  LOADN R39 2
  SETTABLEKS R39 R38 K69 ["ZIndex"]
  CALL R36 2 1
  SETTABLE R36 R35 R34
  JUMP [+101]
  GETTABLEKS R35 R12 K36 ["InterpolationMode"]
  GETIMPORT R36 K49 [Enum.KeyInterpolationMode.Linear]
  JUMPIFNOTEQ R35 R36 [+30]
  GETTABLEKS R35 R0 K32 ["children"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K33 ["createElement"]
  GETUPVAL R37 4
  DUPTABLE R38 K70 [{"A", "B", "Color", "Width", "ZIndex"}]
  SETTABLEKS R10 R38 K67 ["A"]
  SETTABLEKS R8 R38 K68 ["B"]
  SETTABLEKS R33 R38 K41 ["Color"]
  JUMPIFNOT R32 [+4]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K72 ["CURVE_WIDTH_SELECTED"]
  JUMP [+3]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K73 ["CURVE_WIDTH"]
  SETTABLEKS R39 R38 K43 ["Width"]
  LOADN R39 2
  SETTABLEKS R39 R38 K69 ["ZIndex"]
  CALL R36 2 1
  SETTABLE R36 R35 R34
  JUMP [+66]
  GETUPVAL R36 1
  GETTABLEKS R35 R36 K74 ["getSlopes"]
  MOVE R36 R1
  MOVE R37 R11
  CALL R35 2 2
  GETUPVAL R38 1
  GETTABLEKS R37 R38 K74 ["getSlopes"]
  MOVE R38 R1
  MOVE R39 R29
  CALL R37 2 2
  JUMPIFNOT R36 [+5]
  MOVE R41 R36
  NAMECALL R39 R0 K75 ["scaleSlope"]
  CALL R39 2 1
  MOVE R36 R39
  JUMPIFNOT R37 [+5]
  MOVE R41 R37
  NAMECALL R39 R0 K75 ["scaleSlope"]
  CALL R39 2 1
  MOVE R37 R39
  GETTABLEKS R39 R0 K32 ["children"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K33 ["createElement"]
  GETUPVAL R41 5
  DUPTABLE R42 K81 [{"A", "ASlope", "B", "BSlope", "Color", "Width", "FrameWidth", "ZIndex", "MinClamp", "MaxClamp"}]
  SETTABLEKS R10 R42 K67 ["A"]
  SETTABLEKS R36 R42 K76 ["ASlope"]
  SETTABLEKS R8 R42 K68 ["B"]
  SETTABLEKS R37 R42 K77 ["BSlope"]
  SETTABLEKS R33 R42 K41 ["Color"]
  JUMPIFNOT R32 [+4]
  GETUPVAL R44 0
  GETTABLEKS R43 R44 K72 ["CURVE_WIDTH_SELECTED"]
  JUMP [+3]
  GETUPVAL R44 0
  GETTABLEKS R43 R44 K73 ["CURVE_WIDTH"]
  SETTABLEKS R43 R42 K43 ["Width"]
  GETTABLEKS R44 R2 K12 ["AbsoluteSize"]
  GETTABLEKS R43 R44 K71 ["X"]
  SETTABLEKS R43 R42 K78 ["FrameWidth"]
  LOADN R43 2
  SETTABLEKS R43 R42 K69 ["ZIndex"]
  SETTABLEKS R23 R42 K79 ["MinClamp"]
  SETTABLEKS R24 R42 K80 ["MaxClamp"]
  CALL R40 2 1
  SETTABLE R40 R39 R34
  GETIMPORT R35 K30 [string.format]
  LOADK R36 K82 ["%s_Keyframe_%d"]
  MOVE R37 R5
  MOVE R38 R28
  CALL R35 3 1
  GETTABLEKS R36 R1 K9 ["Type"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K19 ["TRACK_TYPES"]
  GETTABLEKS R37 R38 K59 ["Quaternion"]
  JUMPIFNOTEQ R36 R37 [+4]
  LOADN R36 1
  JUMPIFNOTLT R36 R28 [+94]
  GETTABLEKS R36 R0 K32 ["children"]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K33 ["createElement"]
  GETUPVAL R38 3
  DUPTABLE R39 K89 [{"Position", "Path", "InterpolationMode", "PrevInterpolationMode", "LeftSlope", "RightSlope", "Color", "ShowSlopes", "ShowTooltip", "Selected", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R8 R39 K34 ["Position"]
  GETTABLEKS R40 R1 K3 ["Path"]
  SETTABLEKS R40 R39 K3 ["Path"]
  GETTABLEKS R40 R30 K36 ["InterpolationMode"]
  SETTABLEKS R40 R39 K36 ["InterpolationMode"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R40 R12 K36 ["InterpolationMode"]
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K83 ["PrevInterpolationMode"]
  JUMPIFNOTEQKN R28 K90 [1] [+3]
  LOADNIL R40
  JUMP [+2]
  GETTABLEKS R40 R30 K37 ["LeftSlope"]
  SETTABLEKS R40 R39 K37 ["LeftSlope"]
  GETTABLEKS R42 R1 K2 ["Keyframes"]
  LENGTH R41 R42
  JUMPIFNOTEQ R28 R41 [+3]
  LOADNIL R40
  JUMP [+2]
  GETTABLEKS R40 R30 K39 ["RightSlope"]
  SETTABLEKS R40 R39 K39 ["RightSlope"]
  SETTABLEKS R7 R39 K41 ["Color"]
  LOADB R40 0
  SETTABLEKS R40 R39 K42 ["ShowSlopes"]
  SETTABLEKS R16 R39 K84 ["ShowTooltip"]
  SETTABLEKS R31 R39 K85 ["Selected"]
  LOADN R40 4
  SETTABLEKS R40 R39 K69 ["ZIndex"]
  GETTABLEKS R41 R2 K91 ["OnKeyRightClick"]
  JUMPIFNOT R41 [+6]
  NEWCLOSURE R40 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K86 ["OnRightClick"]
  GETTABLEKS R41 R2 K92 ["OnKeyInputBegan"]
  JUMPIFNOT R41 [+6]
  NEWCLOSURE R40 P1
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K87 ["OnInputBegan"]
  GETTABLEKS R41 R2 K93 ["OnKeyInputEnded"]
  JUMPIFNOT R41 [+6]
  NEWCLOSURE R40 P2
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K88 ["OnInputEnded"]
  CALL R37 2 1
  SETTABLE R37 R36 R35
  GETTABLEKS R37 R1 K2 ["Keyframes"]
  LENGTH R36 R37
  JUMPIFNOTLT R28 R36 [+106]
  GETTABLEKS R36 R1 K9 ["Type"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K19 ["TRACK_TYPES"]
  GETTABLEKS R37 R38 K59 ["Quaternion"]
  JUMPIFNOTEQ R36 R37 [+97]
  GETTABLEKS R36 R0 K32 ["children"]
  MOVE R38 R35
  LOADK R39 K94 ["b"]
  CONCAT R37 R38 R39
  GETUPVAL R39 2
  GETTABLEKS R38 R39 K33 ["createElement"]
  GETUPVAL R39 3
  DUPTABLE R40 K89 [{"Position", "Path", "InterpolationMode", "PrevInterpolationMode", "LeftSlope", "RightSlope", "Color", "ShowSlopes", "ShowTooltip", "Selected", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R9 R40 K34 ["Position"]
  GETTABLEKS R41 R1 K3 ["Path"]
  SETTABLEKS R41 R40 K3 ["Path"]
  GETTABLEKS R41 R30 K36 ["InterpolationMode"]
  SETTABLEKS R41 R40 K36 ["InterpolationMode"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R41 R12 K36 ["InterpolationMode"]
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K83 ["PrevInterpolationMode"]
  JUMPIFNOTEQKN R28 K90 [1] [+3]
  LOADNIL R41
  JUMP [+2]
  GETTABLEKS R41 R30 K37 ["LeftSlope"]
  SETTABLEKS R41 R40 K37 ["LeftSlope"]
  GETTABLEKS R43 R1 K2 ["Keyframes"]
  LENGTH R42 R43
  JUMPIFNOTEQ R28 R42 [+3]
  LOADNIL R41
  JUMP [+2]
  GETTABLEKS R41 R30 K39 ["RightSlope"]
  SETTABLEKS R41 R40 K39 ["RightSlope"]
  SETTABLEKS R7 R40 K41 ["Color"]
  LOADB R41 0
  SETTABLEKS R41 R40 K42 ["ShowSlopes"]
  SETTABLEKS R16 R40 K84 ["ShowTooltip"]
  SETTABLEKS R31 R40 K85 ["Selected"]
  LOADN R41 4
  SETTABLEKS R41 R40 K69 ["ZIndex"]
  GETTABLEKS R42 R2 K91 ["OnKeyRightClick"]
  JUMPIFNOT R42 [+6]
  NEWCLOSURE R41 P3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K86 ["OnRightClick"]
  GETTABLEKS R42 R2 K92 ["OnKeyInputBegan"]
  JUMPIFNOT R42 [+6]
  NEWCLOSURE R41 P4
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K87 ["OnInputBegan"]
  GETTABLEKS R42 R2 K93 ["OnKeyInputEnded"]
  JUMPIFNOT R42 [+6]
  NEWCLOSURE R41 P5
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K88 ["OnInputEnded"]
  CALL R38 2 1
  SETTABLE R38 R36 R37
  JUMPIFNOT R31 [+215]
  LOADN R36 1
  JUMPIFNOTLT R36 R28 [+94]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K95 ["getSlope"]
  MOVE R39 R1
  MOVE R40 R29
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K96 ["SLOPES"]
  GETTABLEKS R41 R42 K97 ["Left"]
  CALL R38 3 -1
  NAMECALL R36 R0 K75 ["scaleSlope"]
  CALL R36 -1 1
  GETIMPORT R37 K30 [string.format]
  LOADK R38 K98 ["%s_LeftTangent_%d"]
  MOVE R39 R5
  MOVE R40 R28
  CALL R37 3 1
  GETTABLEKS R38 R0 K32 ["children"]
  GETUPVAL R40 2
  GETTABLEKS R39 R40 K33 ["createElement"]
  GETUPVAL R40 6
  DUPTABLE R41 K103 [{"Position", "Slope", "Auto", "Length", "Side", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  GETIMPORT R42 K105 [UDim2.new]
  LOADN R43 0
  GETTABLEKS R44 R8 K71 ["X"]
  LOADN R45 0
  GETTABLEKS R46 R8 K13 ["Y"]
  CALL R42 4 1
  SETTABLEKS R42 R41 K34 ["Position"]
  SETTABLEKS R36 R41 K99 ["Slope"]
  JUMPIFNOT R12 [+7]
  LOADB R42 1
  GETTABLEKS R43 R12 K36 ["InterpolationMode"]
  GETIMPORT R44 K107 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R43 R44 [+7]
  GETTABLEKS R43 R30 K37 ["LeftSlope"]
  JUMPIFEQKNIL R43 [+2]
  LOADB R42 0 +1
  LOADB R42 1
  SETTABLEKS R42 R41 K100 ["Auto"]
  SETTABLEKS R14 R41 K101 ["Length"]
  GETUPVAL R44 0
  GETTABLEKS R43 R44 K96 ["SLOPES"]
  GETTABLEKS R42 R43 K97 ["Left"]
  SETTABLEKS R42 R41 K102 ["Side"]
  LOADN R42 3
  SETTABLEKS R42 R41 K69 ["ZIndex"]
  GETTABLEKS R43 R2 K108 ["OnTangentRightClick"]
  JUMPIFNOT R43 [+6]
  NEWCLOSURE R42 P6
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE UPVAL U0
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K86 ["OnRightClick"]
  NEWCLOSURE R42 P7
  CAPTURE VAL R2
  SETTABLEKS R42 R41 K87 ["OnInputBegan"]
  NEWCLOSURE R42 P8
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE UPVAL U0
  SETTABLEKS R42 R41 K88 ["OnInputEnded"]
  CALL R39 2 1
  SETTABLE R39 R38 R37
  GETTABLEKS R37 R1 K2 ["Keyframes"]
  LENGTH R36 R37
  JUMPIFNOTLT R28 R36 [+115]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K95 ["getSlope"]
  MOVE R39 R1
  MOVE R40 R29
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K96 ["SLOPES"]
  GETTABLEKS R41 R42 K109 ["Right"]
  CALL R38 3 -1
  NAMECALL R36 R0 K75 ["scaleSlope"]
  CALL R36 -1 1
  LOADNIL R37
  GETTABLEKS R38 R1 K9 ["Type"]
  GETUPVAL R41 0
  GETTABLEKS R40 R41 K19 ["TRACK_TYPES"]
  GETTABLEKS R39 R40 K59 ["Quaternion"]
  JUMPIFNOTEQ R38 R39 [+12]
  GETIMPORT R38 K105 [UDim2.new]
  LOADN R39 0
  GETTABLEKS R40 R9 K71 ["X"]
  LOADN R41 0
  GETTABLEKS R42 R9 K13 ["Y"]
  CALL R38 4 1
  MOVE R37 R38
  JUMP [+10]
  GETIMPORT R38 K105 [UDim2.new]
  LOADN R39 0
  GETTABLEKS R40 R8 K71 ["X"]
  LOADN R41 0
  GETTABLEKS R42 R8 K13 ["Y"]
  CALL R38 4 1
  MOVE R37 R38
  GETIMPORT R38 K30 [string.format]
  LOADK R39 K110 ["%s_RightTangent_%d"]
  MOVE R40 R5
  MOVE R41 R28
  CALL R38 3 1
  GETTABLEKS R39 R0 K32 ["children"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K33 ["createElement"]
  GETUPVAL R41 6
  DUPTABLE R42 K103 [{"Position", "Slope", "Auto", "Length", "Side", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R37 R42 K34 ["Position"]
  SETTABLEKS R36 R42 K99 ["Slope"]
  LOADB R43 1
  GETTABLEKS R44 R30 K36 ["InterpolationMode"]
  GETIMPORT R45 K107 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R44 R45 [+7]
  GETTABLEKS R44 R30 K39 ["RightSlope"]
  JUMPIFEQKNIL R44 [+2]
  LOADB R43 0 +1
  LOADB R43 1
  SETTABLEKS R43 R42 K100 ["Auto"]
  SETTABLEKS R14 R42 K101 ["Length"]
  GETUPVAL R45 0
  GETTABLEKS R44 R45 K96 ["SLOPES"]
  GETTABLEKS R43 R44 K109 ["Right"]
  SETTABLEKS R43 R42 K102 ["Side"]
  LOADN R43 3
  SETTABLEKS R43 R42 K69 ["ZIndex"]
  GETTABLEKS R44 R2 K108 ["OnTangentRightClick"]
  JUMPIFNOT R44 [+6]
  NEWCLOSURE R43 P9
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE UPVAL U0
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K86 ["OnRightClick"]
  NEWCLOSURE R43 P10
  CAPTURE VAL R2
  SETTABLEKS R43 R42 K87 ["OnInputBegan"]
  NEWCLOSURE R43 P11
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE UPVAL U0
  SETTABLEKS R43 R42 K88 ["OnInputEnded"]
  CALL R40 2 1
  SETTABLE R40 R39 R38
  GETTABLEKS R35 R1 K9 ["Type"]
  GETUPVAL R38 0
  GETTABLEKS R37 R38 K19 ["TRACK_TYPES"]
  GETTABLEKS R36 R37 K59 ["Quaternion"]
  JUMPIFNOTEQ R35 R36 [+3]
  MOVE R10 R9
  JUMP [+1]
  MOVE R10 R8
  MOVE R11 R29
  MOVE R12 R30
  MOVE R13 R31
  FORGLOOP R25 2 [inext] [-685]
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Position"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["Tracks"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R0 K5 ["children"]
  NAMECALL R6 R0 K6 ["renderXAxis"]
  CALL R6 1 0
  GETIMPORT R6 K8 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  MOVE R13 R10
  NAMECALL R11 R0 K9 ["renderCurve"]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["createElement"]
  LOADK R7 K11 ["Frame"]
  DUPTABLE R8 K13 [{"Position", "Size", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R3 R8 K2 ["Position"]
  SETTABLEKS R4 R8 K3 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["BackgroundTransparency"]
  SETTABLEKS R2 R8 K1 ["LayoutOrder"]
  GETTABLEKS R9 R0 K5 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K14 ["KeyframeUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["Curves"]
  GETTABLEKS R8 R9 K17 ["Line"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K16 ["Curves"]
  GETTABLEKS R9 R10 K18 ["Cubic"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K15 ["Components"]
  GETTABLEKS R11 R12 K16 ["Curves"]
  GETTABLEKS R10 R11 K19 ["Keyframe"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K15 ["Components"]
  GETTABLEKS R12 R13 K16 ["Curves"]
  GETTABLEKS R11 R12 K20 ["TangentControl"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K21 ["PureComponent"]
  LOADK R13 K22 ["CurveCanvas"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K24 [PROTO_0]
  SETTABLEKS R12 R11 K25 ["init"]
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K27 ["renderXAxis"]
  DUPCLOSURE R12 K28 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K29 ["toCanvasSpace"]
  DUPCLOSURE R12 K30 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K31 ["scaleSlope"]
  DUPCLOSURE R12 K32 [PROTO_16]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K33 ["renderCurve"]
  DUPCLOSURE R12 K34 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K35 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K37 [{"Stylizer"}]
  GETTABLEKS R14 R3 K36 ["Stylizer"]
  SETTABLEKS R14 R13 K36 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
