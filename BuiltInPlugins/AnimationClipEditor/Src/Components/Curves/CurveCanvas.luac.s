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
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K7 ["createElement"]
       15 LOADK                            R7 K8 ["Frame"]
       16 DUPTABLE                         R8 K13 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
       17 GETIMPORT                        R9 K15 [UDim2.new]
       19 LOADN                            R10 1
       20 LOADN                            R11 0
       21 LOADN                            R12 0
       22 LOADN                            R13 1
       23 CALL                             R9 4 1
       24 SETTABLEKS                       R9 R8 K9 ["Size"]
       26 GETIMPORT                        R9 K15 [UDim2.new]
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 GETTABLEKS                       R13 R3 K16 ["Y"]
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K10 ["Position"]
       36 GETTABLEKS                       R10 R2 K17 ["curveTheme"]
       38 GETTABLEKS                       R9 R10 K18 ["xAxis"]
       40 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       42 LOADN                            R9 0
       43 SETTABLEKS                       R9 R8 K12 ["BorderSizePixel"]
       45 CALL                             R6 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R4 K21 [table.insert]
       49 CALL                             R4 -1 0
       50 RETURN                           R0 0

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
       18 SUBRK                            R8 R9 K6 ["math"]
       19 DIVRK                            R7 R9 K8 [math.min]
       20 GETTABLEKS                       R11 R1 K10 ["X"]
       22 GETTABLEKS                       R12 R2 K11 ["StartTick"]
       24 SUB                              R10 R11 R12
       25 GETTABLEKS                       R12 R2 K12 ["AbsoluteSize"]
       27 GETTABLEKS                       R11 R12 K10 ["X"]
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
       44 GETTABLEKS                       R12 R2 K12 ["AbsoluteSize"]
       46 GETTABLEKS                       R11 R12 K14 ["Y"]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K15 ["CURVE_CANVAS_PADDING"]
       51 MUL                              R10 R11 R12
       52 GETTABLEKS                       R14 R2 K12 ["AbsoluteSize"]
       54 GETTABLEKS                       R13 R14 K14 ["Y"]
       56 MUL                              R12 R9 R13
       57 LOADN                            R15 2
       58 GETUPVAL                         R17 0
       59 GETTABLEKS                       R16 R17 K15 ["CURVE_CANVAS_PADDING"]
       61 MUL                              R14 R15 R16
       62 SUBRK                            R13 R9 K14 ["Y"]
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
       15 SUBRK                            R4 R3 K5 [0.99]
       16 GETTABLEKS                       R7 R2 K9 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R7 K10 ["Y"]
       20 LOADN                            R9 2
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K11 ["CURVE_CANVAS_PADDING"]
       24 MUL                              R8 R9 R10
       25 SUBRK                            R7 R3 K8 [math.min]
       26 MUL                              R5 R6 R7
       27 GETTABLEKS                       R8 R2 K12 ["EndTick"]
       29 GETTABLEKS                       R9 R2 K13 ["StartTick"]
       31 SUB                              R7 R8 R9
       32 GETTABLEKS                       R9 R2 K9 ["AbsoluteSize"]
       34 GETTABLEKS                       R8 R9 K14 ["X"]
       36 DIV                              R6 R7 R8
       37 MUL                              R8 R3 R4
       38 DIV                              R7 R8 R5
       39 MUL                              R9 R1 R6
       40 DIV                              R8 R9 R7
       41 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyRightClick"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyInputBegan"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R1
       12 CALL                             R2 5 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Value"]
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R1
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyRightClick"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyInputBegan"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R1
       12 CALL                             R2 5 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Value"]
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R1
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentRightClick"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R7 K4 ["Left"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentInputEnded"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R7 K4 ["Left"]
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentRightClick"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R7 K4 ["Right"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnTangentInputEnded"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Instance"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Path"]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K3 ["SLOPES"]
       13 GETTABLEKS                       R6 R7 K4 ["Right"]
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
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K8 ["TRACK_THEME_MAPPING"]
       23 GETTABLEKS                       R9 R1 K9 ["Type"]
       25 GETTABLE                         R7 R8 R9
       26 JUMPIFNOT                        R7 ; [+8]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K8 ["TRACK_THEME_MAPPING"]
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
       45 GETTABLEKS                       R16 R2 K12 ["AbsoluteSize"]
       47 GETTABLEKS                       R15 R16 K13 ["Y"]
       49 GETUPVAL                         R17 0
       50 GETTABLEKS                       R16 R17 K14 ["TANGENT_CONTROL_LENGTH"]
       52 MUL                              R14 R15 R16
       53 GETTABLEKS                       R15 R2 K15 ["SelectedKeyframes"]
       55 GETTABLEKS                       R16 R2 K16 ["ShowTooltips"]
       57 GETTABLEKS                       R18 R0 K0 ["props"]
       59 GETTABLEKS                       R17 R18 K17 ["Playhead"]
       61 GETUPVAL                         R19 1
       62 GETTABLEKS                       R18 R19 K18 ["getValue"]
       64 MOVE                             R19 R1
       65 MOVE                             R20 R17
       66 CALL                             R18 2 1
       67 GETTABLEKS                       R19 R1 K9 ["Type"]
       69 GETUPVAL                         R22 0
       70 GETTABLEKS                       R21 R22 K19 ["TRACK_TYPES"]
       72 GETTABLEKS                       R20 R21 K20 ["Facs"]
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
      100 GETUPVAL                         R23 2
      101 GETTABLEKS                       R22 R23 K33 ["createElement"]
      103 GETUPVAL                         R23 3
      104 DUPTABLE                         R24 K44 [{"Position", "TrackName", "InterpolationMode", "LeftSlope", "LeftAuto", "RightSlope", "RightAuto", "Color", "ShowSlopes", "Width"}]
      105 SETTABLEKS                       R19 R24 K34 ["Position"]
      107 LOADK                            R25 K45 [""]
      108 SETTABLEKS                       R25 R24 K35 ["TrackName"]
      110 GETIMPORT                        R25 K49 [Enum.KeyInterpolationMode.Linear]
      112 SETTABLEKS                       R25 R24 K36 ["InterpolationMode"]
      114 LOADNIL                          R25
      115 SETTABLEKS                       R25 R24 K37 ["LeftSlope"]
      117 LOADB                            R25 0
      118 SETTABLEKS                       R25 R24 K38 ["LeftAuto"]
      120 LOADNIL                          R25
      121 SETTABLEKS                       R25 R24 K39 ["RightSlope"]
      123 LOADB                            R25 0
      124 SETTABLEKS                       R25 R24 K40 ["RightAuto"]
      126 GETTABLEKS                       R26 R3 K50 ["scrubberTheme"]
      128 GETTABLEKS                       R25 R26 K51 ["backgroundColor"]
      130 SETTABLEKS                       R25 R24 K41 ["Color"]
      132 LOADB                            R25 0
      133 SETTABLEKS                       R25 R24 K42 ["ShowSlopes"]
      135 GETUPVAL                         R26 0
      136 GETTABLEKS                       R25 R26 K52 ["SCRUBBER_MARKER_WIDTH"]
      138 SETTABLEKS                       R25 R24 K43 ["Width"]
      140 CALL                             R22 2 1
      141 SETTABLE                         R22 R21 R20
      142 GETTABLEKS                       R21 R1 K53 ["Instance"]
      144 GETTABLE                         R22 R15 R21
      145 GETIMPORT                        R23 K55 [ipairs]
      147 GETTABLEKS                       R24 R1 K3 ["Path"]
      149 CALL                             R23 1 3
      150 FORGPREP_INEXT                   R23
      151 JUMPIFNOT                        R22 ; [+11]
      152 GETTABLEKS                       R29 R22 K56 ["Components"]
      154 JUMPIFNOT                        R29 ; [+4]
      155 GETTABLEKS                       R29 R22 K56 ["Components"]
      157 GETTABLE                         R28 R29 R27
      158 JUMPIF                           R28 ; [+1]
      159 GETTABLE                         R28 R22 R27
      160 MOVE                             R22 R28
      161 FORGLOOP                         R23 2 [inext] ; [-11]
      163 LOADNIL                          R23
      164 LOADNIL                          R24
      165 GETTABLEKS                       R25 R1 K9 ["Type"]
      167 GETUPVAL                         R28 0
      168 GETTABLEKS                       R27 R28 K19 ["TRACK_TYPES"]
      170 GETTABLEKS                       R26 R27 K20 ["Facs"]
      172 JUMPIFNOTEQ                      R25 R26 ; [+21]
      174 GETIMPORT                        R27 K26 [Vector2.new]
      176 LOADN                            R28 0
      177 LOADN                            R29 1
      178 CALL                             R27 2 -1
      179 NAMECALL                         R25 R0 K27 ["toCanvasSpace"]
      181 CALL                             R25 -1 1
      182 GETTABLEKS                       R23 R25 K13 ["Y"]
      184 GETIMPORT                        R27 K26 [Vector2.new]
      186 LOADN                            R28 0
      187 LOADN                            R29 0
      188 CALL                             R27 2 -1
      189 NAMECALL                         R25 R0 K27 ["toCanvasSpace"]
      191 CALL                             R25 -1 1
      192 GETTABLEKS                       R24 R25 K13 ["Y"]
      194 GETIMPORT                        R25 K55 [ipairs]
      196 GETTABLEKS                       R26 R1 K2 ["Keyframes"]
      198 CALL                             R25 1 3
      199 FORGPREP_INEXT                   R25
      200 GETTABLEKS                       R31 R1 K57 ["Data"]
      202 GETTABLE                         R30 R31 R29
      203 JUMPIFEQKNIL                     R30 ; [+680]
      205 MOVE                             R31 R22
      206 JUMPIFNOT                        R31 ; [+6]
      207 GETTABLEKS                       R31 R22 K58 ["Selection"]
      209 JUMPIFNOT                        R31 ; [+3]
      210 GETTABLEKS                       R32 R22 K58 ["Selection"]
      212 GETTABLE                         R31 R32 R29
      213 GETTABLEKS                       R32 R1 K9 ["Type"]
      215 GETUPVAL                         R35 0
      216 GETTABLEKS                       R34 R35 K19 ["TRACK_TYPES"]
      218 GETTABLEKS                       R33 R34 K59 ["Quaternion"]
      220 JUMPIFNOTEQ                      R32 R33 ; [+20]
      222 GETIMPORT                        R34 K26 [Vector2.new]
      224 MOVE                             R35 R29
      225 LOADN                            R36 1
      226 CALL                             R34 2 -1
      227 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      229 CALL                             R32 -1 1
      230 MOVE                             R8 R32
      231 GETIMPORT                        R34 K26 [Vector2.new]
      233 MOVE                             R35 R29
      234 LOADN                            R36 0
      235 CALL                             R34 2 -1
      236 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      238 CALL                             R32 -1 1
      239 MOVE                             R9 R32
      240 JUMP                             ; [+10]
      241 GETIMPORT                        R34 K26 [Vector2.new]
      243 MOVE                             R35 R29
      244 GETTABLEKS                       R36 R30 K60 ["Value"]
      246 CALL                             R34 2 -1
      247 NAMECALL                         R32 R0 K27 ["toCanvasSpace"]
      249 CALL                             R32 -1 1
      250 MOVE                             R8 R32
      251 MOVE                             R32 R13
      252 JUMPIF                           R32 ; [+12]
      253 MOVE                             R32 R31
      254 JUMPIFNOT                        R32 ; [+10]
      255 MOVE                             R32 R12
      256 JUMPIFNOT                        R32 ; [+8]
      257 GETTABLEKS                       R33 R12 K36 ["InterpolationMode"]
      259 GETIMPORT                        R34 K62 [Enum.KeyInterpolationMode.Constant]
      261 JUMPIFNOTEQ                      R33 R34 ; [+2]
      263 LOADB                            R32 0 +1
      264 LOADB                            R32 1
      265 JUMPIFNOT                        R32 ; [+5]
      266 GETTABLEKS                       R34 R3 K11 ["curveTheme"]
      268 GETTABLEKS                       R33 R34 K63 ["selected"]
      270 JUMPIF                           R33 ; [+1]
      271 MOVE                             R33 R7
      272 GETIMPORT                        R34 K30 [string.format]
      274 LOADK                            R35 K64 ["%s_Curve_%d"]
      275 MOVE                             R36 R5
      276 MOVE                             R37 R28
      277 CALL                             R34 3 1
      278 GETTABLEKS                       R35 R2 K65 ["StartTick"]
      280 JUMPIFNOTLE                      R35 R29 ; [+588]
      282 JUMPIFNOT                        R11 ; [+4]
      283 GETTABLEKS                       R35 R2 K66 ["EndTick"]
      285 JUMPIFNOTLE                      R11 R35 ; [+583]
      287 JUMPIFNOT                        R12 ; [+144]
      288 JUMPIFNOT                        R10 ; [+143]
      289 GETTABLEKS                       R35 R12 K36 ["InterpolationMode"]
      291 GETIMPORT                        R36 K62 [Enum.KeyInterpolationMode.Constant]
      293 JUMPIFNOTEQ                      R35 R36 ; [+37]
      295 GETTABLEKS                       R35 R0 K32 ["children"]
      297 GETUPVAL                         R37 2
      298 GETTABLEKS                       R36 R37 K33 ["createElement"]
      300 GETUPVAL                         R37 4
      301 DUPTABLE                         R38 K70 [{"A", "B", "Color", "Width", "ZIndex"}]
      302 SETTABLEKS                       R10 R38 K67 ["A"]
      304 GETIMPORT                        R39 K26 [Vector2.new]
      306 GETTABLEKS                       R40 R8 K71 ["X"]
      308 GETTABLEKS                       R41 R10 K13 ["Y"]
      310 CALL                             R39 2 1
      311 SETTABLEKS                       R39 R38 K68 ["B"]
      313 SETTABLEKS                       R33 R38 K41 ["Color"]
      315 JUMPIFNOT                        R32 ; [+4]
      316 GETUPVAL                         R40 0
      317 GETTABLEKS                       R39 R40 K72 ["CURVE_WIDTH_SELECTED"]
      319 JUMP                             ; [+3]
      320 GETUPVAL                         R40 0
      321 GETTABLEKS                       R39 R40 K73 ["CURVE_WIDTH"]
      323 SETTABLEKS                       R39 R38 K43 ["Width"]
      325 LOADN                            R39 2
      326 SETTABLEKS                       R39 R38 K69 ["ZIndex"]
      328 CALL                             R36 2 1
      329 SETTABLE                         R36 R35 R34
      330 JUMP                             ; [+101]
      331 GETTABLEKS                       R35 R12 K36 ["InterpolationMode"]
      333 GETIMPORT                        R36 K49 [Enum.KeyInterpolationMode.Linear]
      335 JUMPIFNOTEQ                      R35 R36 ; [+30]
      337 GETTABLEKS                       R35 R0 K32 ["children"]
      339 GETUPVAL                         R37 2
      340 GETTABLEKS                       R36 R37 K33 ["createElement"]
      342 GETUPVAL                         R37 4
      343 DUPTABLE                         R38 K70 [{"A", "B", "Color", "Width", "ZIndex"}]
      344 SETTABLEKS                       R10 R38 K67 ["A"]
      346 SETTABLEKS                       R8 R38 K68 ["B"]
      348 SETTABLEKS                       R33 R38 K41 ["Color"]
      350 JUMPIFNOT                        R32 ; [+4]
      351 GETUPVAL                         R40 0
      352 GETTABLEKS                       R39 R40 K72 ["CURVE_WIDTH_SELECTED"]
      354 JUMP                             ; [+3]
      355 GETUPVAL                         R40 0
      356 GETTABLEKS                       R39 R40 K73 ["CURVE_WIDTH"]
      358 SETTABLEKS                       R39 R38 K43 ["Width"]
      360 LOADN                            R39 2
      361 SETTABLEKS                       R39 R38 K69 ["ZIndex"]
      363 CALL                             R36 2 1
      364 SETTABLE                         R36 R35 R34
      365 JUMP                             ; [+66]
      366 GETUPVAL                         R36 1
      367 GETTABLEKS                       R35 R36 K74 ["getSlopes"]
      369 MOVE                             R36 R1
      370 MOVE                             R37 R11
      371 CALL                             R35 2 2
      372 GETUPVAL                         R38 1
      373 GETTABLEKS                       R37 R38 K74 ["getSlopes"]
      375 MOVE                             R38 R1
      376 MOVE                             R39 R29
      377 CALL                             R37 2 2
      378 JUMPIFNOT                        R36 ; [+5]
      379 MOVE                             R41 R36
      380 NAMECALL                         R39 R0 K75 ["scaleSlope"]
      382 CALL                             R39 2 1
      383 MOVE                             R36 R39
      384 JUMPIFNOT                        R37 ; [+5]
      385 MOVE                             R41 R37
      386 NAMECALL                         R39 R0 K75 ["scaleSlope"]
      388 CALL                             R39 2 1
      389 MOVE                             R37 R39
      390 GETTABLEKS                       R39 R0 K32 ["children"]
      392 GETUPVAL                         R41 2
      393 GETTABLEKS                       R40 R41 K33 ["createElement"]
      395 GETUPVAL                         R41 5
      396 DUPTABLE                         R42 K81 [{"A", "ASlope", "B", "BSlope", "Color", "Width", "FrameWidth", "ZIndex", "MinClamp", "MaxClamp"}]
      397 SETTABLEKS                       R10 R42 K67 ["A"]
      399 SETTABLEKS                       R36 R42 K76 ["ASlope"]
      401 SETTABLEKS                       R8 R42 K68 ["B"]
      403 SETTABLEKS                       R37 R42 K77 ["BSlope"]
      405 SETTABLEKS                       R33 R42 K41 ["Color"]
      407 JUMPIFNOT                        R32 ; [+4]
      408 GETUPVAL                         R44 0
      409 GETTABLEKS                       R43 R44 K72 ["CURVE_WIDTH_SELECTED"]
      411 JUMP                             ; [+3]
      412 GETUPVAL                         R44 0
      413 GETTABLEKS                       R43 R44 K73 ["CURVE_WIDTH"]
      415 SETTABLEKS                       R43 R42 K43 ["Width"]
      417 GETTABLEKS                       R44 R2 K12 ["AbsoluteSize"]
      419 GETTABLEKS                       R43 R44 K71 ["X"]
      421 SETTABLEKS                       R43 R42 K78 ["FrameWidth"]
      423 LOADN                            R43 2
      424 SETTABLEKS                       R43 R42 K69 ["ZIndex"]
      426 SETTABLEKS                       R23 R42 K79 ["MinClamp"]
      428 SETTABLEKS                       R24 R42 K80 ["MaxClamp"]
      430 CALL                             R40 2 1
      431 SETTABLE                         R40 R39 R34
      432 GETIMPORT                        R35 K30 [string.format]
      434 LOADK                            R36 K82 ["%s_Keyframe_%d"]
      435 MOVE                             R37 R5
      436 MOVE                             R38 R28
      437 CALL                             R35 3 1
      438 GETTABLEKS                       R36 R1 K9 ["Type"]
      440 GETUPVAL                         R39 0
      441 GETTABLEKS                       R38 R39 K19 ["TRACK_TYPES"]
      443 GETTABLEKS                       R37 R38 K59 ["Quaternion"]
      445 JUMPIFNOTEQ                      R36 R37 ; [+4]
      447 LOADN                            R36 1
      448 JUMPIFNOTLT                      R36 R28 ; [+94]
      450 GETTABLEKS                       R36 R0 K32 ["children"]
      452 GETUPVAL                         R38 2
      453 GETTABLEKS                       R37 R38 K33 ["createElement"]
      455 GETUPVAL                         R38 3
      456 DUPTABLE                         R39 K89 [{"Position", "Path", "InterpolationMode", "PrevInterpolationMode", "LeftSlope", "RightSlope", "Color", "ShowSlopes", "ShowTooltip", "Selected", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
      457 SETTABLEKS                       R8 R39 K34 ["Position"]
      459 GETTABLEKS                       R40 R1 K3 ["Path"]
      461 SETTABLEKS                       R40 R39 K3 ["Path"]
      463 GETTABLEKS                       R40 R30 K36 ["InterpolationMode"]
      465 SETTABLEKS                       R40 R39 K36 ["InterpolationMode"]
      467 JUMPIFNOT                        R12 ; [+3]
      468 GETTABLEKS                       R40 R12 K36 ["InterpolationMode"]
      470 JUMP                             ; [+1]
      471 LOADNIL                          R40
      472 SETTABLEKS                       R40 R39 K83 ["PrevInterpolationMode"]
      474 JUMPIFNOTEQKN                    R28 K90 [1] ; [+3]
      476 LOADNIL                          R40
      477 JUMP                             ; [+2]
      478 GETTABLEKS                       R40 R30 K37 ["LeftSlope"]
      480 SETTABLEKS                       R40 R39 K37 ["LeftSlope"]
      482 GETTABLEKS                       R42 R1 K2 ["Keyframes"]
      484 LENGTH                           R41 R42
      485 JUMPIFNOTEQ                      R28 R41 ; [+3]
      487 LOADNIL                          R40
      488 JUMP                             ; [+2]
      489 GETTABLEKS                       R40 R30 K39 ["RightSlope"]
      491 SETTABLEKS                       R40 R39 K39 ["RightSlope"]
      493 SETTABLEKS                       R7 R39 K41 ["Color"]
      495 LOADB                            R40 0
      496 SETTABLEKS                       R40 R39 K42 ["ShowSlopes"]
      498 SETTABLEKS                       R16 R39 K84 ["ShowTooltip"]
      500 SETTABLEKS                       R31 R39 K85 ["Selected"]
      502 LOADN                            R40 4
      503 SETTABLEKS                       R40 R39 K69 ["ZIndex"]
      505 GETTABLEKS                       R41 R2 K91 ["OnKeyRightClick"]
      507 JUMPIFNOT                        R41 ; [+6]
      508 NEWCLOSURE                       R40 P0
      509 CAPTURE                          VAL R2
      510 CAPTURE                          VAL R1
      511 CAPTURE                          VAL R29
      512 CAPTURE                          VAL R31
      513 JUMP                             ; [+1]
      514 LOADNIL                          R40
      515 SETTABLEKS                       R40 R39 K86 ["OnRightClick"]
      517 GETTABLEKS                       R41 R2 K92 ["OnKeyInputBegan"]
      519 JUMPIFNOT                        R41 ; [+6]
      520 NEWCLOSURE                       R40 P1
      521 CAPTURE                          VAL R2
      522 CAPTURE                          VAL R1
      523 CAPTURE                          VAL R29
      524 CAPTURE                          VAL R31
      525 JUMP                             ; [+1]
      526 LOADNIL                          R40
      527 SETTABLEKS                       R40 R39 K87 ["OnInputBegan"]
      529 GETTABLEKS                       R41 R2 K93 ["OnKeyInputEnded"]
      531 JUMPIFNOT                        R41 ; [+6]
      532 NEWCLOSURE                       R40 P2
      533 CAPTURE                          VAL R2
      534 CAPTURE                          VAL R29
      535 CAPTURE                          VAL R30
      536 CAPTURE                          VAL R31
      537 JUMP                             ; [+1]
      538 LOADNIL                          R40
      539 SETTABLEKS                       R40 R39 K88 ["OnInputEnded"]
      541 CALL                             R37 2 1
      542 SETTABLE                         R37 R36 R35
      543 GETTABLEKS                       R37 R1 K2 ["Keyframes"]
      545 LENGTH                           R36 R37
      546 JUMPIFNOTLT                      R28 R36 ; [+106]
      548 GETTABLEKS                       R36 R1 K9 ["Type"]
      550 GETUPVAL                         R39 0
      551 GETTABLEKS                       R38 R39 K19 ["TRACK_TYPES"]
      553 GETTABLEKS                       R37 R38 K59 ["Quaternion"]
      555 JUMPIFNOTEQ                      R36 R37 ; [+97]
      557 GETTABLEKS                       R36 R0 K32 ["children"]
      559 MOVE                             R38 R35
      560 LOADK                            R39 K94 ["b"]
      561 CONCAT                           R37 R38 R39
      562 GETUPVAL                         R39 2
      563 GETTABLEKS                       R38 R39 K33 ["createElement"]
      565 GETUPVAL                         R39 3
      566 DUPTABLE                         R40 K89 [{"Position", "Path", "InterpolationMode", "PrevInterpolationMode", "LeftSlope", "RightSlope", "Color", "ShowSlopes", "ShowTooltip", "Selected", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
      567 SETTABLEKS                       R9 R40 K34 ["Position"]
      569 GETTABLEKS                       R41 R1 K3 ["Path"]
      571 SETTABLEKS                       R41 R40 K3 ["Path"]
      573 GETTABLEKS                       R41 R30 K36 ["InterpolationMode"]
      575 SETTABLEKS                       R41 R40 K36 ["InterpolationMode"]
      577 JUMPIFNOT                        R12 ; [+3]
      578 GETTABLEKS                       R41 R12 K36 ["InterpolationMode"]
      580 JUMP                             ; [+1]
      581 LOADNIL                          R41
      582 SETTABLEKS                       R41 R40 K83 ["PrevInterpolationMode"]
      584 JUMPIFNOTEQKN                    R28 K90 [1] ; [+3]
      586 LOADNIL                          R41
      587 JUMP                             ; [+2]
      588 GETTABLEKS                       R41 R30 K37 ["LeftSlope"]
      590 SETTABLEKS                       R41 R40 K37 ["LeftSlope"]
      592 GETTABLEKS                       R43 R1 K2 ["Keyframes"]
      594 LENGTH                           R42 R43
      595 JUMPIFNOTEQ                      R28 R42 ; [+3]
      597 LOADNIL                          R41
      598 JUMP                             ; [+2]
      599 GETTABLEKS                       R41 R30 K39 ["RightSlope"]
      601 SETTABLEKS                       R41 R40 K39 ["RightSlope"]
      603 SETTABLEKS                       R7 R40 K41 ["Color"]
      605 LOADB                            R41 0
      606 SETTABLEKS                       R41 R40 K42 ["ShowSlopes"]
      608 SETTABLEKS                       R16 R40 K84 ["ShowTooltip"]
      610 SETTABLEKS                       R31 R40 K85 ["Selected"]
      612 LOADN                            R41 4
      613 SETTABLEKS                       R41 R40 K69 ["ZIndex"]
      615 GETTABLEKS                       R42 R2 K91 ["OnKeyRightClick"]
      617 JUMPIFNOT                        R42 ; [+6]
      618 NEWCLOSURE                       R41 P3
      619 CAPTURE                          VAL R2
      620 CAPTURE                          VAL R1
      621 CAPTURE                          VAL R29
      622 CAPTURE                          VAL R31
      623 JUMP                             ; [+1]
      624 LOADNIL                          R41
      625 SETTABLEKS                       R41 R40 K86 ["OnRightClick"]
      627 GETTABLEKS                       R42 R2 K92 ["OnKeyInputBegan"]
      629 JUMPIFNOT                        R42 ; [+6]
      630 NEWCLOSURE                       R41 P4
      631 CAPTURE                          VAL R2
      632 CAPTURE                          VAL R1
      633 CAPTURE                          VAL R29
      634 CAPTURE                          VAL R31
      635 JUMP                             ; [+1]
      636 LOADNIL                          R41
      637 SETTABLEKS                       R41 R40 K87 ["OnInputBegan"]
      639 GETTABLEKS                       R42 R2 K93 ["OnKeyInputEnded"]
      641 JUMPIFNOT                        R42 ; [+6]
      642 NEWCLOSURE                       R41 P5
      643 CAPTURE                          VAL R2
      644 CAPTURE                          VAL R29
      645 CAPTURE                          VAL R30
      646 CAPTURE                          VAL R31
      647 JUMP                             ; [+1]
      648 LOADNIL                          R41
      649 SETTABLEKS                       R41 R40 K88 ["OnInputEnded"]
      651 CALL                             R38 2 1
      652 SETTABLE                         R38 R36 R37
      653 JUMPIFNOT                        R31 ; [+215]
      654 LOADN                            R36 1
      655 JUMPIFNOTLT                      R36 R28 ; [+94]
      657 GETUPVAL                         R39 1
      658 GETTABLEKS                       R38 R39 K95 ["getSlope"]
      660 MOVE                             R39 R1
      661 MOVE                             R40 R29
      662 GETUPVAL                         R43 0
      663 GETTABLEKS                       R42 R43 K96 ["SLOPES"]
      665 GETTABLEKS                       R41 R42 K97 ["Left"]
      667 CALL                             R38 3 -1
      668 NAMECALL                         R36 R0 K75 ["scaleSlope"]
      670 CALL                             R36 -1 1
      671 GETIMPORT                        R37 K30 [string.format]
      673 LOADK                            R38 K98 ["%s_LeftTangent_%d"]
      674 MOVE                             R39 R5
      675 MOVE                             R40 R28
      676 CALL                             R37 3 1
      677 GETTABLEKS                       R38 R0 K32 ["children"]
      679 GETUPVAL                         R40 2
      680 GETTABLEKS                       R39 R40 K33 ["createElement"]
      682 GETUPVAL                         R40 6
      683 DUPTABLE                         R41 K103 [{"Position", "Slope", "Auto", "Length", "Side", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
      684 GETIMPORT                        R42 K105 [UDim2.new]
      686 LOADN                            R43 0
      687 GETTABLEKS                       R44 R8 K71 ["X"]
      689 LOADN                            R45 0
      690 GETTABLEKS                       R46 R8 K13 ["Y"]
      692 CALL                             R42 4 1
      693 SETTABLEKS                       R42 R41 K34 ["Position"]
      695 SETTABLEKS                       R36 R41 K99 ["Slope"]
      697 JUMPIFNOT                        R12 ; [+7]
      698 LOADB                            R42 1
      699 GETTABLEKS                       R43 R12 K36 ["InterpolationMode"]
      701 GETIMPORT                        R44 K107 [Enum.KeyInterpolationMode.Cubic]
      703 JUMPIFNOTEQ                      R43 R44 ; [+7]
      705 GETTABLEKS                       R43 R30 K37 ["LeftSlope"]
      707 JUMPIFEQKNIL                     R43 ; [+2]
      709 LOADB                            R42 0 +1
      710 LOADB                            R42 1
      711 SETTABLEKS                       R42 R41 K100 ["Auto"]
      713 SETTABLEKS                       R14 R41 K101 ["Length"]
      715 GETUPVAL                         R44 0
      716 GETTABLEKS                       R43 R44 K96 ["SLOPES"]
      718 GETTABLEKS                       R42 R43 K97 ["Left"]
      720 SETTABLEKS                       R42 R41 K102 ["Side"]
      722 LOADN                            R42 3
      723 SETTABLEKS                       R42 R41 K69 ["ZIndex"]
      725 GETTABLEKS                       R43 R2 K108 ["OnTangentRightClick"]
      727 JUMPIFNOT                        R43 ; [+6]
      728 NEWCLOSURE                       R42 P6
      729 CAPTURE                          VAL R2
      730 CAPTURE                          VAL R1
      731 CAPTURE                          VAL R29
      732 CAPTURE                          UPVAL U0
      733 JUMP                             ; [+1]
      734 LOADNIL                          R42
      735 SETTABLEKS                       R42 R41 K86 ["OnRightClick"]
      737 NEWCLOSURE                       R42 P7
      738 CAPTURE                          VAL R2
      739 SETTABLEKS                       R42 R41 K87 ["OnInputBegan"]
      741 NEWCLOSURE                       R42 P8
      742 CAPTURE                          VAL R2
      743 CAPTURE                          VAL R1
      744 CAPTURE                          VAL R29
      745 CAPTURE                          UPVAL U0
      746 SETTABLEKS                       R42 R41 K88 ["OnInputEnded"]
      748 CALL                             R39 2 1
      749 SETTABLE                         R39 R38 R37
      750 GETTABLEKS                       R37 R1 K2 ["Keyframes"]
      752 LENGTH                           R36 R37
      753 JUMPIFNOTLT                      R28 R36 ; [+115]
      755 GETUPVAL                         R39 1
      756 GETTABLEKS                       R38 R39 K95 ["getSlope"]
      758 MOVE                             R39 R1
      759 MOVE                             R40 R29
      760 GETUPVAL                         R43 0
      761 GETTABLEKS                       R42 R43 K96 ["SLOPES"]
      763 GETTABLEKS                       R41 R42 K109 ["Right"]
      765 CALL                             R38 3 -1
      766 NAMECALL                         R36 R0 K75 ["scaleSlope"]
      768 CALL                             R36 -1 1
      769 LOADNIL                          R37
      770 GETTABLEKS                       R38 R1 K9 ["Type"]
      772 GETUPVAL                         R41 0
      773 GETTABLEKS                       R40 R41 K19 ["TRACK_TYPES"]
      775 GETTABLEKS                       R39 R40 K59 ["Quaternion"]
      777 JUMPIFNOTEQ                      R38 R39 ; [+12]
      779 GETIMPORT                        R38 K105 [UDim2.new]
      781 LOADN                            R39 0
      782 GETTABLEKS                       R40 R9 K71 ["X"]
      784 LOADN                            R41 0
      785 GETTABLEKS                       R42 R9 K13 ["Y"]
      787 CALL                             R38 4 1
      788 MOVE                             R37 R38
      789 JUMP                             ; [+10]
      790 GETIMPORT                        R38 K105 [UDim2.new]
      792 LOADN                            R39 0
      793 GETTABLEKS                       R40 R8 K71 ["X"]
      795 LOADN                            R41 0
      796 GETTABLEKS                       R42 R8 K13 ["Y"]
      798 CALL                             R38 4 1
      799 MOVE                             R37 R38
      800 GETIMPORT                        R38 K30 [string.format]
      802 LOADK                            R39 K110 ["%s_RightTangent_%d"]
      803 MOVE                             R40 R5
      804 MOVE                             R41 R28
      805 CALL                             R38 3 1
      806 GETTABLEKS                       R39 R0 K32 ["children"]
      808 GETUPVAL                         R41 2
      809 GETTABLEKS                       R40 R41 K33 ["createElement"]
      811 GETUPVAL                         R41 6
      812 DUPTABLE                         R42 K103 [{"Position", "Slope", "Auto", "Length", "Side", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
      813 SETTABLEKS                       R37 R42 K34 ["Position"]
      815 SETTABLEKS                       R36 R42 K99 ["Slope"]
      817 LOADB                            R43 1
      818 GETTABLEKS                       R44 R30 K36 ["InterpolationMode"]
      820 GETIMPORT                        R45 K107 [Enum.KeyInterpolationMode.Cubic]
      822 JUMPIFNOTEQ                      R44 R45 ; [+7]
      824 GETTABLEKS                       R44 R30 K39 ["RightSlope"]
      826 JUMPIFEQKNIL                     R44 ; [+2]
      828 LOADB                            R43 0 +1
      829 LOADB                            R43 1
      830 SETTABLEKS                       R43 R42 K100 ["Auto"]
      832 SETTABLEKS                       R14 R42 K101 ["Length"]
      834 GETUPVAL                         R45 0
      835 GETTABLEKS                       R44 R45 K96 ["SLOPES"]
      837 GETTABLEKS                       R43 R44 K109 ["Right"]
      839 SETTABLEKS                       R43 R42 K102 ["Side"]
      841 LOADN                            R43 3
      842 SETTABLEKS                       R43 R42 K69 ["ZIndex"]
      844 GETTABLEKS                       R44 R2 K108 ["OnTangentRightClick"]
      846 JUMPIFNOT                        R44 ; [+6]
      847 NEWCLOSURE                       R43 P9
      848 CAPTURE                          VAL R2
      849 CAPTURE                          VAL R1
      850 CAPTURE                          VAL R29
      851 CAPTURE                          UPVAL U0
      852 JUMP                             ; [+1]
      853 LOADNIL                          R43
      854 SETTABLEKS                       R43 R42 K86 ["OnRightClick"]
      856 NEWCLOSURE                       R43 P10
      857 CAPTURE                          VAL R2
      858 SETTABLEKS                       R43 R42 K87 ["OnInputBegan"]
      860 NEWCLOSURE                       R43 P11
      861 CAPTURE                          VAL R2
      862 CAPTURE                          VAL R1
      863 CAPTURE                          VAL R29
      864 CAPTURE                          UPVAL U0
      865 SETTABLEKS                       R43 R42 K88 ["OnInputEnded"]
      867 CALL                             R40 2 1
      868 SETTABLE                         R40 R39 R38
      869 GETTABLEKS                       R35 R1 K9 ["Type"]
      871 GETUPVAL                         R38 0
      872 GETTABLEKS                       R37 R38 K19 ["TRACK_TYPES"]
      874 GETTABLEKS                       R36 R37 K59 ["Quaternion"]
      876 JUMPIFNOTEQ                      R35 R36 ; [+3]
      878 MOVE                             R10 R9
      879 JUMP                             ; [+1]
      880 MOVE                             R10 R8
      881 MOVE                             R11 R29
      882 MOVE                             R12 R30
      883 MOVE                             R13 R31
      884 FORGLOOP                         R25 2 [inext] ; [-685]
      886 RETURN                           R0 0

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
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K10 ["createElement"]
       31 LOADK                            R7 K11 ["Frame"]
       32 DUPTABLE                         R8 K13 [{"Position", "Size", "BackgroundTransparency", "LayoutOrder"}]
       33 SETTABLEKS                       R3 R8 K2 ["Position"]
       35 SETTABLEKS                       R4 R8 K3 ["Size"]
       37 LOADN                            R9 1
       38 SETTABLEKS                       R9 R8 K12 ["BackgroundTransparency"]
       40 SETTABLEKS                       R2 R8 K1 ["LayoutOrder"]
       42 GETTABLEKS                       R9 R0 K5 ["children"]
       44 CALL                             R6 3 -1
       45 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K14 ["KeyframeUtils"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K11 ["Src"]
       47 GETTABLEKS                       R10 R11 K15 ["Components"]
       49 GETTABLEKS                       R9 R10 K16 ["Curves"]
       51 GETTABLEKS                       R8 R9 K17 ["Line"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K11 ["Src"]
       58 GETTABLEKS                       R11 R12 K15 ["Components"]
       60 GETTABLEKS                       R10 R11 K16 ["Curves"]
       62 GETTABLEKS                       R9 R10 K18 ["Cubic"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R13 R0 K11 ["Src"]
       69 GETTABLEKS                       R12 R13 K15 ["Components"]
       71 GETTABLEKS                       R11 R12 K16 ["Curves"]
       73 GETTABLEKS                       R10 R11 K19 ["Keyframe"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R14 R0 K11 ["Src"]
       80 GETTABLEKS                       R13 R14 K15 ["Components"]
       82 GETTABLEKS                       R12 R13 K16 ["Curves"]
       84 GETTABLEKS                       R11 R12 K20 ["TangentControl"]
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
