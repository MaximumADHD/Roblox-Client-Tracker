PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["children"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K4 [Vector2.new]
        6 CALL                             R5 0 -1
        7 NAMECALL                         R3 R0 K5 ["toCanvasSpace"]
        9 CALL                             R3 -1 1
       10 GETTABLEKS                       R5 R0 K6 ["children"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K7 ["createElement"]
       15 LOADK                            R7 K8 ["Frame"]
       16 DUPTABLE                         R8 K14 [{["Size"], ["Position"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       17 GETIMPORT                        R9 K16 [UDim2.new]
       19 LOADN                            R10 1
       20 LOADN                            R11 0
       21 LOADN                            R12 0
       22 LOADN                            R13 1
       23 CALL                             R9 4 1
       24 SETTABLEKS                       R9 R8 K9 ["Size"]
       26 GETIMPORT                        R9 K16 [UDim2.new]
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 GETTABLEKS                       R13 R3 K17 ["Y"]
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K10 ["Position"]
       36 GETTABLEKS                       R9 R2 K18 ["curveTheme"]
       38 GETTABLEKS                       R9 R9 K19 ["xAxis"]
       40 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       42 CALL                             R6 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R4 K22 [table.insert]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["MinValue"]
        4 GETTABLEKS                       R4 R2 K2 ["MaxValue"]
        6 GETTABLEKS                       R5 R2 K3 ["VerticalScroll"]
        8 GETTABLEKS                       R6 R2 K4 ["VerticalZoom"]
       10 FASTCALL2K                       MATH_MIN R6 K5 ; [+5]
       12 MOVE                             R8 R6
       13 LOADK                            R9 K5 [0.99]
       14 GETIMPORT                        R7 K8 [math.min]
       16 CALL                             R7 2 1
       17 MOVE                             R6 R7
       18 SUBRK                            R8 K9 [1] R6
       19 DIVRK                            R7 K9 [1] R8
       20 GETTABLEKS                       R11 R1 K10 ["X"]
       22 GETTABLEKS                       R12 R2 K11 ["StartTick"]
       24 SUB                              R10 R11 R12
       25 GETTABLEKS                       R11 R2 K12 ["AbsoluteSize"]
       27 GETTABLEKS                       R11 R11 K10 ["X"]
       29 MUL                              R9 R10 R11
       30 GETTABLEKS                       R11 R2 K13 ["EndTick"]
       32 GETTABLEKS                       R12 R2 K11 ["StartTick"]
       34 SUB                              R10 R11 R12
       35 DIV                              R8 R9 R10
       36 GETTABLEKS                       R11 R1 K14 ["Y"]
       38 SUB                              R10 R4 R11
       39 SUB                              R11 R4 R3
       40 DIV                              R9 R10 R11
       41 MUL                              R10 R5 R6
       42 SUB                              R9 R9 R10
       43 MUL                              R9 R9 R7
       44 GETTABLEKS                       R11 R2 K12 ["AbsoluteSize"]
       46 GETTABLEKS                       R11 R11 K14 ["Y"]
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R12 R12 K15 ["CURVE_CANVAS_PADDING"]
       51 MUL                              R10 R11 R12
       52 GETTABLEKS                       R13 R2 K12 ["AbsoluteSize"]
       54 GETTABLEKS                       R13 R13 K14 ["Y"]
       56 MUL                              R12 R9 R13
       57 LOADN                            R15 2
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R16 R16 K15 ["CURVE_CANVAS_PADDING"]
       61 MUL                              R14 R15 R16
       62 SUBRK                            R13 K9 [1] R14
       63 MUL                              R11 R12 R13
       64 ADD                              R9 R10 R11
       65 GETIMPORT                        R10 K18 [Vector2.new]
       67 MOVE                             R11 R8
       68 MOVE                             R12 R9
       69 CALL                             R10 2 -1
       70 RETURN                           R10 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R2 K1 ["MinValue"]
        4 GETTABLEKS                       R5 R2 K2 ["MaxValue"]
        6 SUB                              R3 R4 R5
        7 GETTABLEKS                       R6 R2 K4 ["VerticalZoom"]
        9 FASTCALL2K                       MATH_MIN R6 K5 ; [+4]
       11 LOADK                            R7 K5 [0.99]
       12 GETIMPORT                        R5 K8 [math.min]
       14 CALL                             R5 2 1
       15 SUBRK                            R4 K3 [1] R5
       16 GETTABLEKS                       R6 R2 K9 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R6 K10 ["Y"]
       20 LOADN                            R9 2
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K11 ["CURVE_CANVAS_PADDING"]
       24 MUL                              R8 R9 R10
       25 SUBRK                            R7 K3 [1] R8
       26 MUL                              R5 R6 R7
       27 GETTABLEKS                       R8 R2 K12 ["EndTick"]
       29 GETTABLEKS                       R9 R2 K13 ["StartTick"]
       31 SUB                              R7 R8 R9
       32 GETTABLEKS                       R8 R2 K9 ["AbsoluteSize"]
       34 GETTABLEKS                       R8 R8 K14 ["X"]
       36 DIV                              R6 R7 R8
       37 MUL                              R8 R3 R4
       38 DIV                              R7 R8 R5
       39 MUL                              R9 R1 R6
       40 DIV                              R8 R9 R7
       41 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyRightClick"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputBegan"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R1
       12 CALL                             R2 5 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Value"]
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R1
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyRightClick"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputBegan"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R1
       12 CALL                             R2 5 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Value"]
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R1
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentRightClick"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R6 K4 ["Left"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R6 K4 ["Left"]
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentRightClick"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R6 K4 ["Right"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnTangentInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R6 K4 ["Right"]
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K2 ["Keyframes"]
        6 JUMPIF                           R4 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R5 R1 K3 ["Path"]
       10 GETTABLEKS                       R7 R1 K3 ["Path"]
       12 LENGTH                           R6 R7
       13 GETTABLE                         R4 R5 R6
       14 GETIMPORT                        R5 K6 [table.concat]
       16 GETTABLEKS                       R6 R1 K3 ["Path"]
       18 LOADK                            R7 K7 ["_"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K8 ["TRACK_THEME_MAPPING"]
       23 GETTABLEKS                       R9 R1 K9 ["Type"]
       25 GETTABLE                         R7 R8 R9
       26 JUMPIFNOT                        R7 ; [+8]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K8 ["TRACK_THEME_MAPPING"]
       30 GETTABLEKS                       R9 R1 K9 ["Type"]
       32 GETTABLE                         R7 R8 R9
       33 GETTABLE                         R6 R7 R4
       34 JUMPIF                           R6 ; [+1]
       35 LOADK                            R6 K10 ["Default"]
       36 GETTABLEKS                       R8 R3 K11 ["curveTheme"]
       38 GETTABLE                         R7 R8 R6
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 LOADNIL                          R10
       42 LOADNIL                          R11
       43 LOADNIL                          R12
       44 LOADNIL                          R13
       45 GETTABLEKS                       R15 R2 K12 ["AbsoluteSize"]
       47 GETTABLEKS                       R15 R15 K13 ["Y"]
       49 GETUPVAL                         R16 0
       50 GETTABLEKS                       R16 R16 K14 ["TANGENT_CONTROL_LENGTH"]
       52 MUL                              R14 R15 R16
       53 GETTABLEKS                       R15 R2 K15 ["SelectedKeyframes"]
       55 GETTABLEKS                       R16 R2 K16 ["ShowTooltips"]
       57 GETTABLEKS                       R17 R0 K0 ["props"]
       59 GETTABLEKS                       R17 R17 K17 ["Playhead"]
       61 GETUPVAL                         R18 1
       62 GETTABLEKS                       R18 R18 K18 ["getValue"]
       64 MOVE                             R19 R1
       65 MOVE                             R20 R17
       66 CALL                             R18 2 1
       67 GETTABLEKS                       R19 R1 K9 ["Type"]
       69 GETUPVAL                         R20 0
       70 GETTABLEKS                       R20 R20 K19 ["TRACK_TYPES"]
       72 GETTABLEKS                       R20 R20 K20 ["Facs"]
       74 JUMPIFNOTEQ                      R19 R20 ; [+10]
       76 LOADN                            R21 0
       77 LOADN                            R22 1
       78 FASTCALL3                        MATH_CLAMP R18 R21 R22
       80 MOVE                             R20 R18
       81 GETIMPORT                        R19 K23 [math.clamp]
       83 CALL                             R19 3 1
       84 MOVE                             R18 R19
       85 GETIMPORT                        R21 K26 [Vector2.new]
       87 MOVE                             R22 R17
       88 MOVE                             R23 R18
       89 CALL                             R21 2 -1
       90 NAMECALL                         R19 R0 K27 ["toCanvasSpace"]
       92 CALL                             R19 -1 1
       93 GETIMPORT                        R20 K30 [string.format]
       95 LOADK                            R21 K31 ["%s_Scrubber"]
       96 MOVE                             R22 R5
       97 CALL                             R20 2 1
       98 GETTABLEKS                       R21 R0 K32 ["children"]
      100 GETUPVAL                         R22 2
      101 GETTABLEKS                       R22 R22 K33 ["createElement"]
      103 GETUPVAL                         R23 3
      104 DUPTABLE                         R24 K47 [{["Position"], ["TrackName"] = "", ["InterpolationMode"], ["LeftSlope"] = , ["LeftAuto"] = False, ["RightSlope"] = , ["RightAuto"] = False, ["Color"], ["ShowSlopes"] = False, ["Width"]}]
      105 SETTABLEKS                       R19 R24 K34 ["Position"]
      107 GETIMPORT                        R25 K51 [Enum.KeyInterpolationMode.Linear]
      109 SETTABLEKS                       R25 R24 K37 ["InterpolationMode"]
      111 GETTABLEKS                       R25 R3 K52 ["scrubberTheme"]
      113 GETTABLEKS                       R25 R25 K53 ["backgroundColor"]
      115 SETTABLEKS                       R25 R24 K44 ["Color"]
      117 GETUPVAL                         R25 0
      118 GETTABLEKS                       R25 R25 K54 ["SCRUBBER_MARKER_WIDTH"]
      120 SETTABLEKS                       R25 R24 K46 ["Width"]
      122 CALL                             R22 2 1
      123 SETTABLE                         R22 R21 R20
      124 GETTABLEKS                       R21 R1 K55 ["Instance"]
      126 GETTABLE                         R22 R15 R21
      127 GETIMPORT                        R23 K57 [ipairs]
      129 GETTABLEKS                       R24 R1 K3 ["Path"]
      131 CALL                             R23 1 3
      132 FORGPREP_INEXT                   R23
      133 JUMPIFNOT                        R22 ; [+11]
      134 GETTABLEKS                       R29 R22 K58 ["Components"]
      136 JUMPIFNOT                        R29 ; [+4]
      137 GETTABLEKS                       R29 R22 K58 ["Components"]
      139 GETTABLE                         R28 R29 R27
      140 JUMPIF                           R28 ; [+1]
      141 GETTABLE                         R28 R22 R27
      142 MOVE                             R22 R28
      143 FORGLOOP                         R23 2 [inext] ; [-11]
      145 LOADNIL                          R23
      146 LOADNIL                          R24
      147 GETTABLEKS                       R25 R1 K9 ["Type"]
      149 GETUPVAL                         R26 0
      150 GETTABLEKS                       R26 R26 K19 ["TRACK_TYPES"]
      152 GETTABLEKS                       R26 R26 K20 ["Facs"]
      154 JUMPIFNOTEQ                      R25 R26 ; [+21]
      156 GETIMPORT                        R27 K26 [Vector2.new]
      158 LOADN                            R28 0
      159 LOADN                            R29 1
      160 CALL                             R27 2 -1
      161 NAMECALL                         R25 R0 K27 ["toCanvasSpace"]
      163 CALL                             R25 -1 1
      164 GETTABLEKS                       R23 R25 K13 ["Y"]
      166 GETIMPORT                        R27 K26 [Vector2.new]
      168 LOADN                            R28 0
      169 LOADN                            R29 0
      170 CALL                             R27 2 -1
      171 NAMECALL                         R25 R0 K27 ["toCanvasSpace"]
      173 CALL                             R25 -1 1
      174 GETTABLEKS                       R24 R25 K13 ["Y"]
      176 GETIMPORT                        R25 K57 [ipairs]
      178 GETTABLEKS                       R26 R1 K2 ["Keyframes"]
      180 CALL                             R25 1 3
      181 FORGPREP_INEXT                   R25
      182 GETTABLEKS                       R31 R1 K59 ["Data"]
      184 GETTABLE                         R30 R31 R29
      185 JUMPIFEQKNIL                     R30 ; [+653]
      187 MOVE                             R31 R22
      188 JUMPIFNOT                        R31 ; [+6]
      189 GETTABLEKS                       R31 R22 K60 ["Selection"]
      191 JUMPIFNOT                        R31 ; [+3]
      192 GETTABLEKS                       R32 R22 K60 ["Selection"]
      194 GETTABLE                         R31 R32 R29
      195 GETTABLEKS                       R32 R1 K9 ["Type"]
      197 GETUPVAL                         R33 0
      198 GETTABLEKS                       R33 R33 K19 ["TRACK_TYPES"]
      200 GETTABLEKS                       R33 R33 K61 ["Quaternion"]
      202 JUMPIFNOTEQ                      R32 R33 ; [+20]
      204 GETIMPORT                        R34 K26 [Vector2.new]
      206 MOVE                             R35 R29
      207 LOADN                            R36 1
      208 CALL                             R34 2 -1
      209 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      211 CALL                             R32 -1 1
      212 MOVE                             R8 R32
      213 GETIMPORT                        R34 K26 [Vector2.new]
      215 MOVE                             R35 R29
      216 LOADN                            R36 0
      217 CALL                             R34 2 -1
      218 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      220 CALL                             R32 -1 1
      221 MOVE                             R9 R32
      222 JUMP                             ; [+10]
      223 GETIMPORT                        R34 K26 [Vector2.new]
      225 MOVE                             R35 R29
      226 GETTABLEKS                       R36 R30 K62 ["Value"]
      228 CALL                             R34 2 -1
      229 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      231 CALL                             R32 -1 1
      232 MOVE                             R8 R32
      233 MOVE                             R32 R13
      234 JUMPIF                           R32 ; [+12]
      235 MOVE                             R32 R31
      236 JUMPIFNOT                        R32 ; [+10]
      237 MOVE                             R32 R12
      238 JUMPIFNOT                        R32 ; [+8]
      239 GETTABLEKS                       R33 R12 K37 ["InterpolationMode"]
      241 GETIMPORT                        R34 K64 [Enum.KeyInterpolationMode.Constant]
      243 JUMPIFNOTEQ                      R33 R34 ; [+2]
      245 LOADB                            R32 0 +1
      246 LOADB                            R32 1
      247 JUMPIFNOT                        R32 ; [+5]
      248 GETTABLEKS                       R33 R3 K11 ["curveTheme"]
      250 GETTABLEKS                       R33 R33 K65 ["selected"]
      252 JUMPIF                           R33 ; [+1]
      253 MOVE                             R33 R7
      254 GETIMPORT                        R34 K30 [string.format]
      256 LOADK                            R35 K66 ["%s_Curve_%d"]
      257 MOVE                             R36 R5
      258 MOVE                             R37 R28
      259 CALL                             R34 3 1
      260 GETTABLEKS                       R35 R2 K67 ["StartTick"]
      262 JUMPIFNOTLE                      R35 R29 ; [+561]
      264 JUMPIFNOT                        R11 ; [+4]
      265 GETTABLEKS                       R35 R2 K68 ["EndTick"]
      267 JUMPIFNOTLE                      R11 R35 ; [+556]
      269 JUMPIFNOT                        R12 ; [+135]
      270 JUMPIFNOT                        R10 ; [+134]
      271 GETTABLEKS                       R35 R12 K37 ["InterpolationMode"]
      273 GETIMPORT                        R36 K64 [Enum.KeyInterpolationMode.Constant]
      275 JUMPIFNOTEQ                      R35 R36 ; [+34]
      277 GETTABLEKS                       R35 R0 K32 ["children"]
      279 GETUPVAL                         R36 2
      280 GETTABLEKS                       R36 R36 K33 ["createElement"]
      282 GETUPVAL                         R37 4
      283 DUPTABLE                         R38 K73 [{["A"], ["B"], ["Color"], ["Width"], ["ZIndex"] = 2}]
      284 SETTABLEKS                       R10 R38 K69 ["A"]
      286 GETIMPORT                        R39 K26 [Vector2.new]
      288 GETTABLEKS                       R40 R8 K74 ["X"]
      290 GETTABLEKS                       R41 R10 K13 ["Y"]
      292 CALL                             R39 2 1
      293 SETTABLEKS                       R39 R38 K70 ["B"]
      295 SETTABLEKS                       R33 R38 K44 ["Color"]
      297 JUMPIFNOT                        R32 ; [+4]
      298 GETUPVAL                         R39 0
      299 GETTABLEKS                       R39 R39 K75 ["CURVE_WIDTH_SELECTED"]
      301 JUMP                             ; [+3]
      302 GETUPVAL                         R39 0
      303 GETTABLEKS                       R39 R39 K76 ["CURVE_WIDTH"]
      305 SETTABLEKS                       R39 R38 K46 ["Width"]
      307 CALL                             R36 2 1
      308 SETTABLE                         R36 R35 R34
      309 JUMP                             ; [+95]
      310 GETTABLEKS                       R35 R12 K37 ["InterpolationMode"]
      312 GETIMPORT                        R36 K51 [Enum.KeyInterpolationMode.Linear]
      314 JUMPIFNOTEQ                      R35 R36 ; [+27]
      316 GETTABLEKS                       R35 R0 K32 ["children"]
      318 GETUPVAL                         R36 2
      319 GETTABLEKS                       R36 R36 K33 ["createElement"]
      321 GETUPVAL                         R37 4
      322 DUPTABLE                         R38 K73 [{["A"], ["B"], ["Color"], ["Width"], ["ZIndex"] = 2}]
      323 SETTABLEKS                       R10 R38 K69 ["A"]
      325 SETTABLEKS                       R8 R38 K70 ["B"]
      327 SETTABLEKS                       R33 R38 K44 ["Color"]
      329 JUMPIFNOT                        R32 ; [+4]
      330 GETUPVAL                         R39 0
      331 GETTABLEKS                       R39 R39 K75 ["CURVE_WIDTH_SELECTED"]
      333 JUMP                             ; [+3]
      334 GETUPVAL                         R39 0
      335 GETTABLEKS                       R39 R39 K76 ["CURVE_WIDTH"]
      337 SETTABLEKS                       R39 R38 K46 ["Width"]
      339 CALL                             R36 2 1
      340 SETTABLE                         R36 R35 R34
      341 JUMP                             ; [+63]
      342 GETUPVAL                         R35 1
      343 GETTABLEKS                       R35 R35 K77 ["getSlopes"]
      345 MOVE                             R36 R1
      346 MOVE                             R37 R11
      347 CALL                             R35 2 2
      348 GETUPVAL                         R37 1
      349 GETTABLEKS                       R37 R37 K77 ["getSlopes"]
      351 MOVE                             R38 R1
      352 MOVE                             R39 R29
      353 CALL                             R37 2 2
      354 JUMPIFNOT                        R36 ; [+5]
      355 MOVE                             R41 R36
      356 NAMECALL                         R39 R0 K78 ["scaleSlope"]
      358 CALL                             R39 2 1
      359 MOVE                             R36 R39
      360 JUMPIFNOT                        R37 ; [+5]
      361 MOVE                             R41 R37
      362 NAMECALL                         R39 R0 K78 ["scaleSlope"]
      364 CALL                             R39 2 1
      365 MOVE                             R37 R39
      366 GETTABLEKS                       R39 R0 K32 ["children"]
      368 GETUPVAL                         R40 2
      369 GETTABLEKS                       R40 R40 K33 ["createElement"]
      371 GETUPVAL                         R41 5
      372 DUPTABLE                         R42 K84 [{["A"], ["ASlope"], ["B"], ["BSlope"], ["Color"], ["Width"], ["FrameWidth"], ["ZIndex"] = 2, ["MinClamp"], ["MaxClamp"]}]
      373 SETTABLEKS                       R10 R42 K69 ["A"]
      375 SETTABLEKS                       R36 R42 K79 ["ASlope"]
      377 SETTABLEKS                       R8 R42 K70 ["B"]
      379 SETTABLEKS                       R37 R42 K80 ["BSlope"]
      381 SETTABLEKS                       R33 R42 K44 ["Color"]
      383 JUMPIFNOT                        R32 ; [+4]
      384 GETUPVAL                         R43 0
      385 GETTABLEKS                       R43 R43 K75 ["CURVE_WIDTH_SELECTED"]
      387 JUMP                             ; [+3]
      388 GETUPVAL                         R43 0
      389 GETTABLEKS                       R43 R43 K76 ["CURVE_WIDTH"]
      391 SETTABLEKS                       R43 R42 K46 ["Width"]
      393 GETTABLEKS                       R43 R2 K12 ["AbsoluteSize"]
      395 GETTABLEKS                       R43 R43 K74 ["X"]
      397 SETTABLEKS                       R43 R42 K81 ["FrameWidth"]
      399 SETTABLEKS                       R23 R42 K82 ["MinClamp"]
      401 SETTABLEKS                       R24 R42 K83 ["MaxClamp"]
      403 CALL                             R40 2 1
      404 SETTABLE                         R40 R39 R34
      405 GETIMPORT                        R35 K30 [string.format]
      407 LOADK                            R36 K85 ["%s_Keyframe_%d"]
      408 MOVE                             R37 R5
      409 MOVE                             R38 R28
      410 CALL                             R35 3 1
      411 GETTABLEKS                       R36 R1 K9 ["Type"]
      413 GETUPVAL                         R37 0
      414 GETTABLEKS                       R37 R37 K19 ["TRACK_TYPES"]
      416 GETTABLEKS                       R37 R37 K61 ["Quaternion"]
      418 JUMPIFNOTEQ                      R36 R37 ; [+4]
      420 LOADN                            R36 1
      421 JUMPIFNOTLT                      R36 R28 ; [+88]
      423 GETTABLEKS                       R36 R0 K32 ["children"]
      425 GETUPVAL                         R37 2
      426 GETTABLEKS                       R37 R37 K33 ["createElement"]
      428 GETUPVAL                         R38 3
      429 DUPTABLE                         R39 K93 [{["Position"], ["Path"], ["InterpolationMode"], ["PrevInterpolationMode"], ["LeftSlope"], ["RightSlope"], ["Color"], ["ShowSlopes"] = False, ["ShowTooltip"], ["Selected"], ["ZIndex"] = 4, ["OnRightClick"], ["OnInputBegan"], ["OnInputEnded"]}]
      430 SETTABLEKS                       R8 R39 K34 ["Position"]
      432 GETTABLEKS                       R40 R1 K3 ["Path"]
      434 SETTABLEKS                       R40 R39 K3 ["Path"]
      436 GETTABLEKS                       R40 R30 K37 ["InterpolationMode"]
      438 SETTABLEKS                       R40 R39 K37 ["InterpolationMode"]
      440 JUMPIFNOT                        R12 ; [+3]
      441 GETTABLEKS                       R40 R12 K37 ["InterpolationMode"]
      443 JUMP                             ; [+1]
      444 LOADNIL                          R40
      445 SETTABLEKS                       R40 R39 K86 ["PrevInterpolationMode"]
      447 JUMPIFNOTEQKN                    R28 K94 [1] ; [+3]
      449 LOADNIL                          R40
      450 JUMP                             ; [+2]
      451 GETTABLEKS                       R40 R30 K38 ["LeftSlope"]
      453 SETTABLEKS                       R40 R39 K38 ["LeftSlope"]
      455 GETTABLEKS                       R42 R1 K2 ["Keyframes"]
      457 LENGTH                           R41 R42
      458 JUMPIFNOTEQ                      R28 R41 ; [+3]
      460 LOADNIL                          R40
      461 JUMP                             ; [+2]
      462 GETTABLEKS                       R40 R30 K42 ["RightSlope"]
      464 SETTABLEKS                       R40 R39 K42 ["RightSlope"]
      466 SETTABLEKS                       R7 R39 K44 ["Color"]
      468 SETTABLEKS                       R16 R39 K87 ["ShowTooltip"]
      470 SETTABLEKS                       R31 R39 K88 ["Selected"]
      472 GETTABLEKS                       R41 R2 K95 ["OnKeyRightClick"]
      474 JUMPIFNOT                        R41 ; [+6]
      475 NEWCLOSURE                       R40 P0
      476 CAPTURE                          VAL R2
      477 CAPTURE                          VAL R1
      478 CAPTURE                          VAL R29
      479 CAPTURE                          VAL R31
      480 JUMP                             ; [+1]
      481 LOADNIL                          R40
      482 SETTABLEKS                       R40 R39 K90 ["OnRightClick"]
      484 GETTABLEKS                       R41 R2 K96 ["OnKeyInputBegan"]
      486 JUMPIFNOT                        R41 ; [+6]
      487 NEWCLOSURE                       R40 P1
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R1
      490 CAPTURE                          VAL R29
      491 CAPTURE                          VAL R31
      492 JUMP                             ; [+1]
      493 LOADNIL                          R40
      494 SETTABLEKS                       R40 R39 K91 ["OnInputBegan"]
      496 GETTABLEKS                       R41 R2 K97 ["OnKeyInputEnded"]
      498 JUMPIFNOT                        R41 ; [+6]
      499 NEWCLOSURE                       R40 P2
      500 CAPTURE                          VAL R2
      501 CAPTURE                          VAL R29
      502 CAPTURE                          VAL R30
      503 CAPTURE                          VAL R31
      504 JUMP                             ; [+1]
      505 LOADNIL                          R40
      506 SETTABLEKS                       R40 R39 K92 ["OnInputEnded"]
      508 CALL                             R37 2 1
      509 SETTABLE                         R37 R36 R35
      510 GETTABLEKS                       R37 R1 K2 ["Keyframes"]
      512 LENGTH                           R36 R37
      513 JUMPIFNOTLT                      R28 R36 ; [+100]
      515 GETTABLEKS                       R36 R1 K9 ["Type"]
      517 GETUPVAL                         R37 0
      518 GETTABLEKS                       R37 R37 K19 ["TRACK_TYPES"]
      520 GETTABLEKS                       R37 R37 K61 ["Quaternion"]
      522 JUMPIFNOTEQ                      R36 R37 ; [+91]
      524 GETTABLEKS                       R36 R0 K32 ["children"]
      526 MOVE                             R38 R35
      527 LOADK                            R39 K98 ["b"]
      528 CONCAT                           R37 R38 R39
      529 GETUPVAL                         R38 2
      530 GETTABLEKS                       R38 R38 K33 ["createElement"]
      532 GETUPVAL                         R39 3
      533 DUPTABLE                         R40 K93 [{["Position"], ["Path"], ["InterpolationMode"], ["PrevInterpolationMode"], ["LeftSlope"], ["RightSlope"], ["Color"], ["ShowSlopes"] = False, ["ShowTooltip"], ["Selected"], ["ZIndex"] = 4, ["OnRightClick"], ["OnInputBegan"], ["OnInputEnded"]}]
      534 SETTABLEKS                       R9 R40 K34 ["Position"]
      536 GETTABLEKS                       R41 R1 K3 ["Path"]
      538 SETTABLEKS                       R41 R40 K3 ["Path"]
      540 GETTABLEKS                       R41 R30 K37 ["InterpolationMode"]
      542 SETTABLEKS                       R41 R40 K37 ["InterpolationMode"]
      544 JUMPIFNOT                        R12 ; [+3]
      545 GETTABLEKS                       R41 R12 K37 ["InterpolationMode"]
      547 JUMP                             ; [+1]
      548 LOADNIL                          R41
      549 SETTABLEKS                       R41 R40 K86 ["PrevInterpolationMode"]
      551 JUMPIFNOTEQKN                    R28 K94 [1] ; [+3]
      553 LOADNIL                          R41
      554 JUMP                             ; [+2]
      555 GETTABLEKS                       R41 R30 K38 ["LeftSlope"]
      557 SETTABLEKS                       R41 R40 K38 ["LeftSlope"]
      559 GETTABLEKS                       R43 R1 K2 ["Keyframes"]
      561 LENGTH                           R42 R43
      562 JUMPIFNOTEQ                      R28 R42 ; [+3]
      564 LOADNIL                          R41
      565 JUMP                             ; [+2]
      566 GETTABLEKS                       R41 R30 K42 ["RightSlope"]
      568 SETTABLEKS                       R41 R40 K42 ["RightSlope"]
      570 SETTABLEKS                       R7 R40 K44 ["Color"]
      572 SETTABLEKS                       R16 R40 K87 ["ShowTooltip"]
      574 SETTABLEKS                       R31 R40 K88 ["Selected"]
      576 GETTABLEKS                       R42 R2 K95 ["OnKeyRightClick"]
      578 JUMPIFNOT                        R42 ; [+6]
      579 NEWCLOSURE                       R41 P3
      580 CAPTURE                          VAL R2
      581 CAPTURE                          VAL R1
      582 CAPTURE                          VAL R29
      583 CAPTURE                          VAL R31
      584 JUMP                             ; [+1]
      585 LOADNIL                          R41
      586 SETTABLEKS                       R41 R40 K90 ["OnRightClick"]
      588 GETTABLEKS                       R42 R2 K96 ["OnKeyInputBegan"]
      590 JUMPIFNOT                        R42 ; [+6]
      591 NEWCLOSURE                       R41 P4
      592 CAPTURE                          VAL R2
      593 CAPTURE                          VAL R1
      594 CAPTURE                          VAL R29
      595 CAPTURE                          VAL R31
      596 JUMP                             ; [+1]
      597 LOADNIL                          R41
      598 SETTABLEKS                       R41 R40 K91 ["OnInputBegan"]
      600 GETTABLEKS                       R42 R2 K97 ["OnKeyInputEnded"]
      602 JUMPIFNOT                        R42 ; [+6]
      603 NEWCLOSURE                       R41 P5
      604 CAPTURE                          VAL R2
      605 CAPTURE                          VAL R29
      606 CAPTURE                          VAL R30
      607 CAPTURE                          VAL R31
      608 JUMP                             ; [+1]
      609 LOADNIL                          R41
      610 SETTABLEKS                       R41 R40 K92 ["OnInputEnded"]
      612 CALL                             R38 2 1
      613 SETTABLE                         R38 R36 R37
      614 JUMPIFNOT                        R31 ; [+209]
      615 LOADN                            R36 1
      616 JUMPIFNOTLT                      R36 R28 ; [+91]
      618 GETUPVAL                         R38 1
      619 GETTABLEKS                       R38 R38 K99 ["getSlope"]
      621 MOVE                             R39 R1
      622 MOVE                             R40 R29
      623 GETUPVAL                         R41 0
      624 GETTABLEKS                       R41 R41 K100 ["SLOPES"]
      626 GETTABLEKS                       R41 R41 K101 ["Left"]
      628 CALL                             R38 3 -1
      629 NAMECALL                         R36 R0 K78 ["scaleSlope"]
      631 CALL                             R36 -1 1
      632 GETIMPORT                        R37 K30 [string.format]
      634 LOADK                            R38 K102 ["%s_LeftTangent_%d"]
      635 MOVE                             R39 R5
      636 MOVE                             R40 R28
      637 CALL                             R37 3 1
      638 GETTABLEKS                       R38 R0 K32 ["children"]
      640 GETUPVAL                         R39 2
      641 GETTABLEKS                       R39 R39 K33 ["createElement"]
      643 GETUPVAL                         R40 6
      644 DUPTABLE                         R41 K108 [{["Position"], ["Slope"], ["Auto"], ["Length"], ["Side"], ["ZIndex"] = 3, ["OnRightClick"], ["OnInputBegan"], ["OnInputEnded"]}]
      645 GETIMPORT                        R42 K110 [UDim2.new]
      647 LOADN                            R43 0
      648 GETTABLEKS                       R44 R8 K74 ["X"]
      650 LOADN                            R45 0
      651 GETTABLEKS                       R46 R8 K13 ["Y"]
      653 CALL                             R42 4 1
      654 SETTABLEKS                       R42 R41 K34 ["Position"]
      656 SETTABLEKS                       R36 R41 K103 ["Slope"]
      658 JUMPIFNOT                        R12 ; [+7]
      659 LOADB                            R42 1
      660 GETTABLEKS                       R43 R12 K37 ["InterpolationMode"]
      662 GETIMPORT                        R44 K112 [Enum.KeyInterpolationMode.Cubic]
      664 JUMPIFNOTEQ                      R43 R44 ; [+7]
      666 GETTABLEKS                       R43 R30 K38 ["LeftSlope"]
      668 JUMPIFEQKNIL                     R43 ; [+2]
      670 LOADB                            R42 0 +1
      671 LOADB                            R42 1
      672 SETTABLEKS                       R42 R41 K104 ["Auto"]
      674 SETTABLEKS                       R14 R41 K105 ["Length"]
      676 GETUPVAL                         R42 0
      677 GETTABLEKS                       R42 R42 K100 ["SLOPES"]
      679 GETTABLEKS                       R42 R42 K101 ["Left"]
      681 SETTABLEKS                       R42 R41 K106 ["Side"]
      683 GETTABLEKS                       R43 R2 K113 ["OnTangentRightClick"]
      685 JUMPIFNOT                        R43 ; [+6]
      686 NEWCLOSURE                       R42 P6
      687 CAPTURE                          VAL R2
      688 CAPTURE                          VAL R1
      689 CAPTURE                          VAL R29
      690 CAPTURE                          UPVAL U0
      691 JUMP                             ; [+1]
      692 LOADNIL                          R42
      693 SETTABLEKS                       R42 R41 K90 ["OnRightClick"]
      695 NEWCLOSURE                       R42 P7
      696 CAPTURE                          VAL R2
      697 SETTABLEKS                       R42 R41 K91 ["OnInputBegan"]
      699 NEWCLOSURE                       R42 P8
      700 CAPTURE                          VAL R2
      701 CAPTURE                          VAL R1
      702 CAPTURE                          VAL R29
      703 CAPTURE                          UPVAL U0
      704 SETTABLEKS                       R42 R41 K92 ["OnInputEnded"]
      706 CALL                             R39 2 1
      707 SETTABLE                         R39 R38 R37
      708 GETTABLEKS                       R37 R1 K2 ["Keyframes"]
      710 LENGTH                           R36 R37
      711 JUMPIFNOTLT                      R28 R36 ; [+112]
      713 GETUPVAL                         R38 1
      714 GETTABLEKS                       R38 R38 K99 ["getSlope"]
      716 MOVE                             R39 R1
      717 MOVE                             R40 R29
      718 GETUPVAL                         R41 0
      719 GETTABLEKS                       R41 R41 K100 ["SLOPES"]
      721 GETTABLEKS                       R41 R41 K114 ["Right"]
      723 CALL                             R38 3 -1
      724 NAMECALL                         R36 R0 K78 ["scaleSlope"]
      726 CALL                             R36 -1 1
      727 LOADNIL                          R37
      728 GETTABLEKS                       R38 R1 K9 ["Type"]
      730 GETUPVAL                         R39 0
      731 GETTABLEKS                       R39 R39 K19 ["TRACK_TYPES"]
      733 GETTABLEKS                       R39 R39 K61 ["Quaternion"]
      735 JUMPIFNOTEQ                      R38 R39 ; [+12]
      737 GETIMPORT                        R38 K110 [UDim2.new]
      739 LOADN                            R39 0
      740 GETTABLEKS                       R40 R9 K74 ["X"]
      742 LOADN                            R41 0
      743 GETTABLEKS                       R42 R9 K13 ["Y"]
      745 CALL                             R38 4 1
      746 MOVE                             R37 R38
      747 JUMP                             ; [+10]
      748 GETIMPORT                        R38 K110 [UDim2.new]
      750 LOADN                            R39 0
      751 GETTABLEKS                       R40 R8 K74 ["X"]
      753 LOADN                            R41 0
      754 GETTABLEKS                       R42 R8 K13 ["Y"]
      756 CALL                             R38 4 1
      757 MOVE                             R37 R38
      758 GETIMPORT                        R38 K30 [string.format]
      760 LOADK                            R39 K115 ["%s_RightTangent_%d"]
      761 MOVE                             R40 R5
      762 MOVE                             R41 R28
      763 CALL                             R38 3 1
      764 GETTABLEKS                       R39 R0 K32 ["children"]
      766 GETUPVAL                         R40 2
      767 GETTABLEKS                       R40 R40 K33 ["createElement"]
      769 GETUPVAL                         R41 6
      770 DUPTABLE                         R42 K108 [{["Position"], ["Slope"], ["Auto"], ["Length"], ["Side"], ["ZIndex"] = 3, ["OnRightClick"], ["OnInputBegan"], ["OnInputEnded"]}]
      771 SETTABLEKS                       R37 R42 K34 ["Position"]
      773 SETTABLEKS                       R36 R42 K103 ["Slope"]
      775 LOADB                            R43 1
      776 GETTABLEKS                       R44 R30 K37 ["InterpolationMode"]
      778 GETIMPORT                        R45 K112 [Enum.KeyInterpolationMode.Cubic]
      780 JUMPIFNOTEQ                      R44 R45 ; [+7]
      782 GETTABLEKS                       R44 R30 K42 ["RightSlope"]
      784 JUMPIFEQKNIL                     R44 ; [+2]
      786 LOADB                            R43 0 +1
      787 LOADB                            R43 1
      788 SETTABLEKS                       R43 R42 K104 ["Auto"]
      790 SETTABLEKS                       R14 R42 K105 ["Length"]
      792 GETUPVAL                         R43 0
      793 GETTABLEKS                       R43 R43 K100 ["SLOPES"]
      795 GETTABLEKS                       R43 R43 K114 ["Right"]
      797 SETTABLEKS                       R43 R42 K106 ["Side"]
      799 GETTABLEKS                       R44 R2 K113 ["OnTangentRightClick"]
      801 JUMPIFNOT                        R44 ; [+6]
      802 NEWCLOSURE                       R43 P9
      803 CAPTURE                          VAL R2
      804 CAPTURE                          VAL R1
      805 CAPTURE                          VAL R29
      806 CAPTURE                          UPVAL U0
      807 JUMP                             ; [+1]
      808 LOADNIL                          R43
      809 SETTABLEKS                       R43 R42 K90 ["OnRightClick"]
      811 NEWCLOSURE                       R43 P10
      812 CAPTURE                          VAL R2
      813 SETTABLEKS                       R43 R42 K91 ["OnInputBegan"]
      815 NEWCLOSURE                       R43 P11
      816 CAPTURE                          VAL R2
      817 CAPTURE                          VAL R1
      818 CAPTURE                          VAL R29
      819 CAPTURE                          UPVAL U0
      820 SETTABLEKS                       R43 R42 K92 ["OnInputEnded"]
      822 CALL                             R40 2 1
      823 SETTABLE                         R40 R39 R38
      824 GETTABLEKS                       R35 R1 K9 ["Type"]
      826 GETUPVAL                         R36 0
      827 GETTABLEKS                       R36 R36 K19 ["TRACK_TYPES"]
      829 GETTABLEKS                       R36 R36 K61 ["Quaternion"]
      831 JUMPIFNOTEQ                      R35 R36 ; [+3]
      833 MOVE                             R10 R9
      834 JUMP                             ; [+1]
      835 MOVE                             R10 R8
      836 MOVE                             R11 R29
      837 MOVE                             R12 R30
      838 MOVE                             R13 R31
      839 FORGLOOP                         R25 2 [inext] ; [-658]
      841 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Tracks"]
       10 NEWTABLE                         R6 0 0
       12 SETTABLEKS                       R6 R0 K5 ["children"]
       14 NAMECALL                         R6 R0 K6 ["renderXAxis"]
       16 CALL                             R6 1 0
       17 GETIMPORT                        R6 K8 [ipairs]
       19 MOVE                             R7 R5
       20 CALL                             R6 1 3
       21 FORGPREP_INEXT                   R6
       22 MOVE                             R13 R10
       23 NAMECALL                         R11 R0 K9 ["renderCurve"]
       25 CALL                             R11 2 0
       26 FORGLOOP                         R6 2 [inext] ; [-5]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K10 ["createElement"]
       31 LOADK                            R7 K11 ["Frame"]
       32 DUPTABLE                         R8 K14 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       33 SETTABLEKS                       R3 R8 K2 ["Position"]
       35 SETTABLEKS                       R4 R8 K3 ["Size"]
       37 SETTABLEKS                       R2 R8 K1 ["LayoutOrder"]
       39 GETTABLEKS                       R9 R0 K5 ["children"]
       41 CALL                             R6 3 -1
       42 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["KeyframeUtils"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K15 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["Curves"]
       51 GETTABLEKS                       R8 R8 K17 ["Line"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Src"]
       58 GETTABLEKS                       R9 R9 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["Curves"]
       62 GETTABLEKS                       R9 R9 K18 ["Cubic"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Src"]
       69 GETTABLEKS                       R10 R10 K15 ["Components"]
       71 GETTABLEKS                       R10 R10 K16 ["Curves"]
       73 GETTABLEKS                       R10 R10 K19 ["Keyframe"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Src"]
       80 GETTABLEKS                       R11 R11 K15 ["Components"]
       82 GETTABLEKS                       R11 R11 K16 ["Curves"]
       84 GETTABLEKS                       R11 R11 K20 ["TangentControl"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R1 K21 ["PureComponent"]
       89 LOADK                            R13 K22 ["CurveCanvas"]
       90 NAMECALL                         R11 R11 K23 ["extend"]
       92 CALL                             R11 2 1
       93 DUPCLOSURE                       R12 K24 [PROTO_0]
       94 SETTABLEKS                       R12 R11 K25 ["init"]
       96 DUPCLOSURE                       R12 K26 [PROTO_1]
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R12 R11 K27 ["renderXAxis"]
      100 DUPCLOSURE                       R12 K28 [PROTO_2]
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R12 R11 K29 ["toCanvasSpace"]
      104 DUPCLOSURE                       R12 K30 [PROTO_3]
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R12 R11 K31 ["scaleSlope"]
      108 DUPCLOSURE                       R12 K32 [PROTO_16]
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R10
      116 SETTABLEKS                       R12 R11 K33 ["renderCurve"]
      118 DUPCLOSURE                       R12 K34 [PROTO_17]
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R12 R11 K35 ["render"]
      122 MOVE                             R12 R4
      123 DUPTABLE                         R13 K37 [{"Stylizer"}]
      124 GETTABLEKS                       R14 R3 K36 ["Stylizer"]
      126 SETTABLEKS                       R14 R13 K36 ["Stylizer"]
      128 CALL                             R12 1 1
      129 MOVE                             R13 R11
      130 CALL                             R12 1 1
      131 MOVE                             R11 R12
      132 RETURN                           R11 1
