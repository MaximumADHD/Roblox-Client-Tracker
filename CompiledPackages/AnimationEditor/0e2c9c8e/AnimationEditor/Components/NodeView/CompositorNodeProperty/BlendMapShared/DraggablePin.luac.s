PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Mode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R1 R1 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+22]
       10 GETIMPORT                        R0 K5 [Vector2.new]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K7 ["Extents"]
       15 GETTABLEKS                       R3 R3 K8 ["Min"]
       17 GETTABLEKS                       R3 R3 K9 ["X"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["Extents"]
       22 GETTABLEKS                       R4 R4 K10 ["Max"]
       24 GETTABLEKS                       R4 R4 K9 ["X"]
       26 ADD                              R2 R3 R4
       27 DIVK                             R1 R2 K6 [2]
       28 LOADN                            R2 0
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["Mode"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K1 ["DRAGGABLE_PIN_MODES"]
       37 GETTABLEKS                       R1 R1 K11 ["Blend2D"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+26]
       41 GETUPVAL                         R0 2
       42 JUMPIFNOT                        R0 ; [+20]
       43 GETUPVAL                         R0 0
       44 GETTABLEKS                       R0 R0 K12 ["InputMode"]
       46 GETIMPORT                        R1 K16 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       48 JUMPIFNOTEQ                      R0 R1 ; [+14]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K7 ["Extents"]
       53 GETTABLEKS                       R2 R2 K8 ["Min"]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K7 ["Extents"]
       58 GETTABLEKS                       R3 R3 K10 ["Max"]
       60 ADD                              R1 R2 R3
       61 DIVK                             R0 R1 K6 [2]
       62 RETURN                           R0 1
       63 GETIMPORT                        R0 K18 [Vector2.zero]
       65 RETURN                           R0 1
       66 GETIMPORT                        R0 K20 [error]
       68 LOADK                            R2 K21 ["Unknown DraggablePin mode: "]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K0 ["Mode"]
       72 FASTCALL1                        TOSTRING R4 ; [+2]
       73 GETIMPORT                        R3 K23 [tostring]
       75 CALL                             R3 1 1
       76 CONCAT                           R1 R2 R3
       77 CALL                             R0 1 0
       78 GETIMPORT                        R0 K18 [Vector2.zero]
       80 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADK                            R0 K0 [""]
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["Position"]
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["Mode"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["DRAGGABLE_PIN_MODES"]
       15 GETTABLEKS                       R3 R3 K4 ["Blend1D"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+9]
       19 GETIMPORT                        R2 K7 [string.format]
       21 LOADK                            R3 K8 ["(%.3f)"]
       22 GETTABLEKS                       R4 R0 K9 ["X"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 JUMP                             ; [+53]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K2 ["Mode"]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K3 ["DRAGGABLE_PIN_MODES"]
       33 GETTABLEKS                       R3 R3 K10 ["Blend2D"]
       35 JUMPIFNOTEQ                      R2 R3 ; [+42]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K11 ["InputMode"]
       40 GETIMPORT                        R3 K15 [Enum.AnimationNodeBlend2DInputMode.Polar]
       42 JUMPIFNOTEQ                      R2 R3 ; [+25]
       44 GETTABLEKS                       R2 R0 K16 ["Magnitude"]
       46 GETTABLEKS                       R6 R0 K9 ["X"]
       48 GETTABLEKS                       R7 R0 K17 ["Y"]
       50 FASTCALL2                        MATH_ATAN2 R6 R7 ; [+3]
       52 GETIMPORT                        R5 K20 [math.atan2]
       54 CALL                             R5 2 1
       55 MINUS                            R4 R5
       56 FASTCALL1                        MATH_DEG R4 ; [+2]
       57 GETIMPORT                        R3 K22 [math.deg]
       59 CALL                             R3 1 1
       60 GETIMPORT                        R4 K7 [string.format]
       62 LOADK                            R5 K23 ["(%.3f°, %.3f)"]
       63 MOVE                             R6 R3
       64 MOVE                             R7 R2
       65 CALL                             R4 3 1
       66 MOVE                             R1 R4
       67 JUMP                             ; [+12]
       68 GETIMPORT                        R2 K7 [string.format]
       70 LOADK                            R3 K24 ["(%.3f, %.3f)"]
       71 GETTABLEKS                       R4 R0 K9 ["X"]
       73 GETTABLEKS                       R5 R0 K17 ["Y"]
       75 CALL                             R2 3 1
       76 MOVE                             R1 R2
       77 JUMP                             ; [+2]
       78 LOADK                            R2 K0 [""]
       79 RETURN                           R2 1
       80 GETUPVAL                         R2 1
       81 GETTABLEKS                       R2 R2 K25 ["Label"]
       83 JUMPIFNOT                        R2 ; [+10]
       84 LOADK                            R3 K26 ["%* %*"]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K25 ["Label"]
       88 MOVE                             R6 R1
       89 NAMECALL                         R3 R3 K6 ["format"]
       91 CALL                             R3 3 1
       92 MOVE                             R2 R3
       93 RETURN                           R2 1
       94 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["disable"]
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["beginUndoTransaction"]
       10 LOADK                            R3 K2 ["DraggablePin Drag"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AbsToMap"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Clamp"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["Index"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["InputMode"]
       23 GETIMPORT                        R4 K8 [Enum.AnimationNodeBlend2DInputMode.Polar]
       25 JUMPIFNOTEQ                      R3 R4 ; [+7]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K9 ["toCartesian"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 1
       32 MOVE                             R2 R3
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K10 ["LockExtents"]
       36 LOADB                            R4 1
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LockExtents"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["finishUndoTransaction"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useToggleState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["useContext"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["Context"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K5 ["Hooks"]
       25 GETTABLEKS                       R6 R6 K6 ["useTokens"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R9 0 3
       37 GETTABLEKS                       R10 R0 K8 ["InputMode"]
       39 MOVE                             R11 R1
       40 GETTABLEKS                       R12 R0 K9 ["Extents"]
       42 SETLIST                          R9 R10 3 [1]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       48 NEWCLOSURE                       R9 P1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U4
       52 NEWTABLE                         R10 0 4
       54 GETTABLEKS                       R11 R0 K10 ["Position"]
       56 GETTABLEKS                       R12 R0 K11 ["Mode"]
       58 GETTABLEKS                       R13 R0 K8 ["InputMode"]
       60 GETTABLEKS                       R14 R0 K12 ["Label"]
       62 SETLIST                          R10 R11 4 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K13 ["useCallback"]
       68 NEWCLOSURE                       R10 P2
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R11 0 1
       74 MOVE                             R12 R5
       75 SETLIST                          R11 R12 1 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       81 NEWCLOSURE                       R11 P3
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R2
       85 NEWTABLE                         R12 0 7
       87 GETTABLEKS                       R13 R0 K14 ["AbsToMap"]
       89 GETTABLEKS                       R14 R0 K15 ["Clamp"]
       91 GETTABLEKS                       R15 R0 K16 ["Index"]
       93 GETTABLEKS                       R16 R0 K17 ["OnPinDragged"]
       95 GETTABLEKS                       R17 R0 K8 ["InputMode"]
       97 GETTABLEKS                       R18 R0 K18 ["LockExtents"]
       99 MOVE                             R19 R5
      100 SETLIST                          R12 R13 7 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K13 ["useCallback"]
      106 NEWCLOSURE                       R12 P4
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R5
      110 NEWTABLE                         R13 0 2
      112 GETTABLEKS                       R14 R0 K18 ["LockExtents"]
      114 MOVE                             R15 R5
      115 SETLIST                          R13 R14 2 [1]
      117 CALL                             R11 2 1
      118 LOADK                            R13 K19 ["Point_"]
      119 GETTABLEKS                       R15 R0 K16 ["Index"]
      121 FASTCALL1                        TOSTRING R15 ; [+2]
      122 GETIMPORT                        R14 K21 [tostring]
      124 CALL                             R14 1 1
      125 CONCAT                           R12 R13 R14
      126 JUMPIFNOT                        R1 ; [+2]
      127 MOVE                             R13 R7
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R13 R0 K10 ["Position"]
      131 JUMPIFNOT                        R1 ; [+2]
      132 LOADN                            R14 1
      133 JUMP                             ; [+1]
      134 LOADN                            R14 0
      135 GETUPVAL                         R16 7
      136 CALL                             R16 0 1
      137 JUMPIFNOT                        R16 ; [+3]
      138 GETTABLEKS                       R16 R0 K17 ["OnPinDragged"]
      140 JUMPIFNOT                        R16 ; [+30]
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R15 R15 K22 ["createElement"]
      144 LOADK                            R16 K23 ["UIDragDetector"]
      145 NEWTABLE                         R17 4 0
      147 GETIMPORT                        R18 K27 [Enum.UIDragDetectorDragStyle.Scriptable]
      149 SETTABLEKS                       R18 R17 K28 ["DragStyle"]
      151 GETUPVAL                         R18 0
      152 GETTABLEKS                       R18 R18 K29 ["Event"]
      154 GETTABLEKS                       R18 R18 K30 ["DragStart"]
      156 SETTABLE                         R9 R17 R18
      157 GETUPVAL                         R18 0
      158 GETTABLEKS                       R18 R18 K29 ["Event"]
      160 GETTABLEKS                       R18 R18 K31 ["DragContinue"]
      162 SETTABLE                         R10 R17 R18
      163 GETUPVAL                         R18 0
      164 GETTABLEKS                       R18 R18 K29 ["Event"]
      166 GETTABLEKS                       R18 R18 K32 ["DragEnd"]
      168 SETTABLE                         R11 R17 R18
      169 CALL                             R15 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R15
      172 GETUPVAL                         R16 0
      173 GETTABLEKS                       R16 R16 K22 ["createElement"]
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K33 ["Fragment"]
      178 NEWTABLE                         R18 0 0
      180 NEWTABLE                         R19 4 0
      182 GETUPVAL                         R20 0
      183 GETTABLEKS                       R20 R20 K22 ["createElement"]
      185 GETUPVAL                         R21 8
      186 GETTABLEKS                       R21 R21 K34 ["Point"]
      188 DUPTABLE                         R22 K42 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag", "positionerRef"}]
      189 SETTABLEKS                       R13 R22 K10 ["Position"]
      191 GETTABLEKS                       R23 R0 K35 ["Size"]
      193 SETTABLEKS                       R23 R22 K35 ["Size"]
      195 GETTABLEKS                       R23 R0 K36 ["ZIndex"]
      197 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      199 GETTABLEKS                       R23 R0 K37 ["Image"]
      201 SETTABLEKS                       R23 R22 K37 ["Image"]
      203 GETTABLEKS                       R23 R0 K38 ["Color3"]
      205 SETTABLEKS                       R23 R22 K38 ["Color3"]
      207 SETTABLEKS                       R14 R22 K39 ["Transparency"]
      209 LOADK                            R24 K43 ["data-testid=%*"]
      210 MOVE                             R26 R12
      211 NAMECALL                         R24 R24 K44 ["format"]
      213 CALL                             R24 2 1
      214 MOVE                             R23 R24
      215 SETTABLEKS                       R23 R22 K40 ["Tag"]
      217 GETUPVAL                         R24 5
      218 CALL                             R24 0 1
      219 JUMPIFNOT                        R24 ; [+2]
      220 MOVE                             R23 R4
      221 JUMP                             ; [+1]
      222 LOADNIL                          R23
      223 SETTABLEKS                       R23 R22 K41 ["positionerRef"]
      225 DUPTABLE                         R23 K47 [{"DragDetector", "HoverFrame"}]
      226 GETUPVAL                         R25 5
      227 CALL                             R25 0 1
      228 JUMPIF                           R25 ; [+2]
      229 MOVE                             R24 R15
      230 JUMP                             ; [+1]
      231 LOADNIL                          R24
      232 SETTABLEKS                       R24 R23 K45 ["DragDetector"]
      234 GETUPVAL                         R25 5
      235 CALL                             R25 0 1
      236 JUMPIFNOT                        R25 ; [+37]
      237 GETUPVAL                         R24 0
      238 GETTABLEKS                       R24 R24 K22 ["createElement"]
      240 LOADK                            R25 K48 ["Frame"]
      241 NEWTABLE                         R26 4 0
      243 GETIMPORT                        R27 K51 [UDim2.fromScale]
      245 LOADN                            R28 1
      246 LOADN                            R29 1
      247 CALL                             R27 2 1
      248 SETTABLEKS                       R27 R26 K35 ["Size"]
      250 LOADN                            R27 1
      251 SETTABLEKS                       R27 R26 K52 ["BackgroundTransparency"]
      253 GETUPVAL                         R27 0
      254 GETTABLEKS                       R27 R27 K29 ["Event"]
      256 GETTABLEKS                       R27 R27 K53 ["MouseEnter"]
      258 GETTABLEKS                       R28 R3 K54 ["enable"]
      260 SETTABLE                         R28 R26 R27
      261 GETUPVAL                         R27 0
      262 GETTABLEKS                       R27 R27 K29 ["Event"]
      264 GETTABLEKS                       R27 R27 K55 ["MouseLeave"]
      266 GETTABLEKS                       R28 R3 K56 ["disable"]
      268 SETTABLE                         R28 R26 R27
      269 DUPTABLE                         R27 K57 [{"DragDetector"}]
      270 SETTABLEKS                       R15 R27 K45 ["DragDetector"]
      272 CALL                             R24 3 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R24
      275 SETTABLEKS                       R24 R23 K46 ["HoverFrame"]
      277 CALL                             R20 3 1
      278 SETTABLE                         R20 R19 R12
      279 LOADK                            R21 K58 ["%*_Tooltip"]
      280 MOVE                             R23 R12
      281 NAMECALL                         R21 R21 K44 ["format"]
      283 CALL                             R21 2 1
      284 MOVE                             R20 R21
      285 GETUPVAL                         R22 5
      286 CALL                             R22 0 1
      287 JUMPIFNOT                        R22 ; [+115]
      288 GETUPVAL                         R21 0
      289 GETTABLEKS                       R21 R21 K22 ["createElement"]
      291 GETUPVAL                         R22 3
      292 GETTABLEKS                       R22 R22 K59 ["Popover"]
      294 GETTABLEKS                       R22 R22 K60 ["Root"]
      296 DUPTABLE                         R23 K62 [{"isOpen"}]
      297 GETTABLEKS                       R24 R3 K63 ["enabled"]
      299 JUMPIFNOT                        R24 ; [+4]
      300 JUMPIFEQKNIL                     R1 ; [+2]
      302 LOADB                            R24 0 +1
      303 LOADB                            R24 1
      304 SETTABLEKS                       R24 R23 K61 ["isOpen"]
      306 DUPTABLE                         R24 K66 [{"Anchor", "TooltipContent"}]
      307 GETUPVAL                         R25 0
      308 GETTABLEKS                       R25 R25 K22 ["createElement"]
      310 GETUPVAL                         R26 3
      311 GETTABLEKS                       R26 R26 K59 ["Popover"]
      313 GETTABLEKS                       R26 R26 K64 ["Anchor"]
      315 DUPTABLE                         R27 K68 [{"anchorRef"}]
      316 SETTABLEKS                       R4 R27 K67 ["anchorRef"]
      318 CALL                             R25 2 1
      319 SETTABLEKS                       R25 R24 K64 ["Anchor"]
      321 GETUPVAL                         R25 0
      322 GETTABLEKS                       R25 R25 K22 ["createElement"]
      324 GETUPVAL                         R26 3
      325 GETTABLEKS                       R26 R26 K59 ["Popover"]
      327 GETTABLEKS                       R26 R26 K69 ["Content"]
      329 DUPTABLE                         R27 K75 [{"hasArrow", "side", "radius", "backgroundStyle", "selectionGroup"}]
      330 LOADB                            R28 0
      331 SETTABLEKS                       R28 R27 K70 ["hasArrow"]
      333 DUPTABLE                         R28 K78 [{"position", "offset"}]
      334 GETUPVAL                         R29 3
      335 GETTABLEKS                       R29 R29 K79 ["Enums"]
      337 GETTABLEKS                       R29 R29 K80 ["PopoverSide"]
      339 GETTABLEKS                       R29 R29 K81 ["Top"]
      341 SETTABLEKS                       R29 R28 K76 ["position"]
      343 GETTABLEKS                       R29 R6 K35 ["Size"]
      345 GETTABLEKS                       R29 R29 K82 ["Size_200"]
      347 SETTABLEKS                       R29 R28 K77 ["offset"]
      349 SETTABLEKS                       R28 R27 K71 ["side"]
      351 GETUPVAL                         R28 3
      352 GETTABLEKS                       R28 R28 K79 ["Enums"]
      354 GETTABLEKS                       R28 R28 K83 ["Radius"]
      356 GETTABLEKS                       R28 R28 K84 ["Small"]
      358 SETTABLEKS                       R28 R27 K72 ["radius"]
      360 GETTABLEKS                       R28 R6 K85 ["Inverse"]
      362 GETTABLEKS                       R28 R28 K86 ["Surface"]
      364 GETTABLEKS                       R28 R28 K87 ["Surface_0"]
      366 SETTABLEKS                       R28 R27 K73 ["backgroundStyle"]
      368 LOADB                            R28 0
      369 SETTABLEKS                       R28 R27 K74 ["selectionGroup"]
      371 GETUPVAL                         R28 0
      372 GETTABLEKS                       R28 R28 K22 ["createElement"]
      374 GETUPVAL                         R29 3
      375 GETTABLEKS                       R29 R29 K88 ["View"]
      377 DUPTABLE                         R30 K90 [{"tag"}]
      378 LOADK                            R31 K91 ["auto-xy padding-x-small padding-y-xsmall"]
      379 SETTABLEKS                       R31 R30 K89 ["tag"]
      381 DUPTABLE                         R31 K93 [{"Title"}]
      382 GETUPVAL                         R32 0
      383 GETTABLEKS                       R32 R32 K22 ["createElement"]
      385 GETUPVAL                         R33 3
      386 GETTABLEKS                       R33 R33 K94 ["Text"]
      388 DUPTABLE                         R34 K95 [{"Text", "tag"}]
      389 SETTABLEKS                       R8 R34 K94 ["Text"]
      391 LOADK                            R35 K96 ["auto-xy text-title-small content-inverse-emphasis"]
      392 SETTABLEKS                       R35 R34 K89 ["tag"]
      394 CALL                             R32 2 1
      395 SETTABLEKS                       R32 R31 K92 ["Title"]
      397 CALL                             R28 3 -1
      398 CALL                             R25 -1 1
      399 SETTABLEKS                       R25 R24 K65 ["TooltipContent"]
      401 CALL                             R21 3 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R21
      404 SETTABLE                         R21 R19 R20
      405 LOADK                            R21 K97 ["PreviewPoint_"]
      406 GETTABLEKS                       R23 R0 K16 ["Index"]
      408 FASTCALL1                        TOSTRING R23 ; [+2]
      409 GETIMPORT                        R22 K21 [tostring]
      411 CALL                             R22 1 1
      412 CONCAT                           R20 R21 R22
      413 JUMPIFNOT                        R1 ; [+27]
      414 GETUPVAL                         R21 0
      415 GETTABLEKS                       R21 R21 K22 ["createElement"]
      417 GETUPVAL                         R22 8
      418 GETTABLEKS                       R22 R22 K34 ["Point"]
      420 DUPTABLE                         R23 K98 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      421 SETTABLEKS                       R1 R23 K10 ["Position"]
      423 GETTABLEKS                       R24 R0 K35 ["Size"]
      425 SETTABLEKS                       R24 R23 K35 ["Size"]
      427 GETTABLEKS                       R24 R0 K36 ["ZIndex"]
      429 SETTABLEKS                       R24 R23 K36 ["ZIndex"]
      431 GETTABLEKS                       R24 R0 K37 ["Image"]
      433 SETTABLEKS                       R24 R23 K37 ["Image"]
      435 GETTABLEKS                       R24 R0 K38 ["Color3"]
      437 SETTABLEKS                       R24 R23 K38 ["Color3"]
      439 CALL                             R21 2 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R21
      442 SETTABLE                         R21 R19 R20
      443 CALL                             R16 3 -1
      444 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["NativeGraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K15 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K16 ["PropertyUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K17 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Parent"]
       57 GETTABLEKS                       R8 R8 K18 ["ReactUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Flags"]
       64 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Flags"]
       71 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphUIWeightSlider"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K22 [PROTO_5]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 RETURN                           R10 1
