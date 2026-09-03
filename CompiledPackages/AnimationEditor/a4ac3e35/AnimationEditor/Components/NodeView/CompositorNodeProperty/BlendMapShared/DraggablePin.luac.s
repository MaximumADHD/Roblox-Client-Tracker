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
      135 GETTABLEKS                       R16 R0 K17 ["OnPinDragged"]
      137 JUMPIFNOT                        R16 ; [+30]
      138 GETUPVAL                         R15 0
      139 GETTABLEKS                       R15 R15 K22 ["createElement"]
      141 LOADK                            R16 K23 ["UIDragDetector"]
      142 NEWTABLE                         R17 4 0
      144 GETIMPORT                        R18 K27 [Enum.UIDragDetectorDragStyle.Scriptable]
      146 SETTABLEKS                       R18 R17 K28 ["DragStyle"]
      148 GETUPVAL                         R18 0
      149 GETTABLEKS                       R18 R18 K29 ["Event"]
      151 GETTABLEKS                       R18 R18 K30 ["DragStart"]
      153 SETTABLE                         R9 R17 R18
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R18 R18 K29 ["Event"]
      157 GETTABLEKS                       R18 R18 K31 ["DragContinue"]
      159 SETTABLE                         R10 R17 R18
      160 GETUPVAL                         R18 0
      161 GETTABLEKS                       R18 R18 K29 ["Event"]
      163 GETTABLEKS                       R18 R18 K32 ["DragEnd"]
      165 SETTABLE                         R11 R17 R18
      166 CALL                             R15 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R15
      169 GETUPVAL                         R16 0
      170 GETTABLEKS                       R16 R16 K22 ["createElement"]
      172 GETUPVAL                         R17 0
      173 GETTABLEKS                       R17 R17 K33 ["Fragment"]
      175 NEWTABLE                         R18 0 0
      177 NEWTABLE                         R19 4 0
      179 GETUPVAL                         R20 0
      180 GETTABLEKS                       R20 R20 K22 ["createElement"]
      182 GETUPVAL                         R21 7
      183 GETTABLEKS                       R21 R21 K34 ["Point"]
      185 DUPTABLE                         R22 K42 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag", "positionerRef"}]
      186 SETTABLEKS                       R13 R22 K10 ["Position"]
      188 GETTABLEKS                       R23 R0 K35 ["Size"]
      190 SETTABLEKS                       R23 R22 K35 ["Size"]
      192 GETTABLEKS                       R23 R0 K36 ["ZIndex"]
      194 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      196 GETTABLEKS                       R23 R0 K37 ["Image"]
      198 SETTABLEKS                       R23 R22 K37 ["Image"]
      200 GETTABLEKS                       R23 R0 K38 ["Color3"]
      202 SETTABLEKS                       R23 R22 K38 ["Color3"]
      204 SETTABLEKS                       R14 R22 K39 ["Transparency"]
      206 LOADK                            R24 K43 ["data-testid=%*"]
      207 MOVE                             R26 R12
      208 NAMECALL                         R24 R24 K44 ["format"]
      210 CALL                             R24 2 1
      211 MOVE                             R23 R24
      212 SETTABLEKS                       R23 R22 K40 ["Tag"]
      214 GETUPVAL                         R24 5
      215 CALL                             R24 0 1
      216 JUMPIFNOT                        R24 ; [+2]
      217 MOVE                             R23 R4
      218 JUMP                             ; [+1]
      219 LOADNIL                          R23
      220 SETTABLEKS                       R23 R22 K41 ["positionerRef"]
      222 DUPTABLE                         R23 K47 [{"DragDetector", "HoverFrame"}]
      223 GETUPVAL                         R25 5
      224 CALL                             R25 0 1
      225 JUMPIF                           R25 ; [+2]
      226 MOVE                             R24 R15
      227 JUMP                             ; [+1]
      228 LOADNIL                          R24
      229 SETTABLEKS                       R24 R23 K45 ["DragDetector"]
      231 GETUPVAL                         R25 5
      232 CALL                             R25 0 1
      233 JUMPIFNOT                        R25 ; [+37]
      234 GETUPVAL                         R24 0
      235 GETTABLEKS                       R24 R24 K22 ["createElement"]
      237 LOADK                            R25 K48 ["Frame"]
      238 NEWTABLE                         R26 4 0
      240 GETIMPORT                        R27 K51 [UDim2.fromScale]
      242 LOADN                            R28 1
      243 LOADN                            R29 1
      244 CALL                             R27 2 1
      245 SETTABLEKS                       R27 R26 K35 ["Size"]
      247 LOADN                            R27 1
      248 SETTABLEKS                       R27 R26 K52 ["BackgroundTransparency"]
      250 GETUPVAL                         R27 0
      251 GETTABLEKS                       R27 R27 K29 ["Event"]
      253 GETTABLEKS                       R27 R27 K53 ["MouseEnter"]
      255 GETTABLEKS                       R28 R3 K54 ["enable"]
      257 SETTABLE                         R28 R26 R27
      258 GETUPVAL                         R27 0
      259 GETTABLEKS                       R27 R27 K29 ["Event"]
      261 GETTABLEKS                       R27 R27 K55 ["MouseLeave"]
      263 GETTABLEKS                       R28 R3 K56 ["disable"]
      265 SETTABLE                         R28 R26 R27
      266 DUPTABLE                         R27 K57 [{"DragDetector"}]
      267 SETTABLEKS                       R15 R27 K45 ["DragDetector"]
      269 CALL                             R24 3 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R24
      272 SETTABLEKS                       R24 R23 K46 ["HoverFrame"]
      274 CALL                             R20 3 1
      275 SETTABLE                         R20 R19 R12
      276 LOADK                            R21 K58 ["%*_Tooltip"]
      277 MOVE                             R23 R12
      278 NAMECALL                         R21 R21 K44 ["format"]
      280 CALL                             R21 2 1
      281 MOVE                             R20 R21
      282 GETUPVAL                         R22 5
      283 CALL                             R22 0 1
      284 JUMPIFNOT                        R22 ; [+103]
      285 GETUPVAL                         R21 0
      286 GETTABLEKS                       R21 R21 K22 ["createElement"]
      288 GETUPVAL                         R22 3
      289 GETTABLEKS                       R22 R22 K59 ["Popover"]
      291 GETTABLEKS                       R22 R22 K60 ["Root"]
      293 DUPTABLE                         R23 K62 [{"isOpen"}]
      294 GETTABLEKS                       R24 R3 K63 ["enabled"]
      296 JUMPIFNOT                        R24 ; [+4]
      297 JUMPIFEQKNIL                     R1 ; [+2]
      299 LOADB                            R24 0 +1
      300 LOADB                            R24 1
      301 SETTABLEKS                       R24 R23 K61 ["isOpen"]
      303 DUPTABLE                         R24 K66 [{"Anchor", "TooltipContent"}]
      304 GETUPVAL                         R25 0
      305 GETTABLEKS                       R25 R25 K22 ["createElement"]
      307 GETUPVAL                         R26 3
      308 GETTABLEKS                       R26 R26 K59 ["Popover"]
      310 GETTABLEKS                       R26 R26 K64 ["Anchor"]
      312 DUPTABLE                         R27 K68 [{"anchorRef"}]
      313 SETTABLEKS                       R4 R27 K67 ["anchorRef"]
      315 CALL                             R25 2 1
      316 SETTABLEKS                       R25 R24 K64 ["Anchor"]
      318 GETUPVAL                         R25 0
      319 GETTABLEKS                       R25 R25 K22 ["createElement"]
      321 GETUPVAL                         R26 3
      322 GETTABLEKS                       R26 R26 K59 ["Popover"]
      324 GETTABLEKS                       R26 R26 K69 ["Content"]
      326 DUPTABLE                         R27 K76 [{["hasArrow"] = False, ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      327 DUPTABLE                         R28 K79 [{"position", "offset"}]
      328 GETUPVAL                         R29 3
      329 GETTABLEKS                       R29 R29 K80 ["Enums"]
      331 GETTABLEKS                       R29 R29 K81 ["PopoverSide"]
      333 GETTABLEKS                       R29 R29 K82 ["Top"]
      335 SETTABLEKS                       R29 R28 K77 ["position"]
      337 GETTABLEKS                       R29 R6 K35 ["Size"]
      339 GETTABLEKS                       R29 R29 K83 ["Size_200"]
      341 SETTABLEKS                       R29 R28 K78 ["offset"]
      343 SETTABLEKS                       R28 R27 K72 ["side"]
      345 GETUPVAL                         R28 3
      346 GETTABLEKS                       R28 R28 K80 ["Enums"]
      348 GETTABLEKS                       R28 R28 K84 ["Radius"]
      350 GETTABLEKS                       R28 R28 K85 ["Small"]
      352 SETTABLEKS                       R28 R27 K73 ["radius"]
      354 GETTABLEKS                       R28 R6 K86 ["Inverse"]
      356 GETTABLEKS                       R28 R28 K87 ["Surface"]
      358 GETTABLEKS                       R28 R28 K88 ["Surface_0"]
      360 SETTABLEKS                       R28 R27 K74 ["backgroundStyle"]
      362 GETUPVAL                         R28 0
      363 GETTABLEKS                       R28 R28 K22 ["createElement"]
      365 GETUPVAL                         R29 3
      366 GETTABLEKS                       R29 R29 K89 ["View"]
      368 DUPTABLE                         R30 K92 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      369 DUPTABLE                         R31 K94 [{"Title"}]
      370 GETUPVAL                         R32 0
      371 GETTABLEKS                       R32 R32 K22 ["createElement"]
      373 GETUPVAL                         R33 3
      374 GETTABLEKS                       R33 R33 K95 ["Text"]
      376 DUPTABLE                         R34 K97 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      377 SETTABLEKS                       R8 R34 K95 ["Text"]
      379 CALL                             R32 2 1
      380 SETTABLEKS                       R32 R31 K93 ["Title"]
      382 CALL                             R28 3 -1
      383 CALL                             R25 -1 1
      384 SETTABLEKS                       R25 R24 K65 ["TooltipContent"]
      386 CALL                             R21 3 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R21
      389 SETTABLE                         R21 R19 R20
      390 LOADK                            R21 K98 ["PreviewPoint_"]
      391 GETTABLEKS                       R23 R0 K16 ["Index"]
      393 FASTCALL1                        TOSTRING R23 ; [+2]
      394 GETIMPORT                        R22 K21 [tostring]
      396 CALL                             R22 1 1
      397 CONCAT                           R20 R21 R22
      398 JUMPIFNOT                        R1 ; [+27]
      399 GETUPVAL                         R21 0
      400 GETTABLEKS                       R21 R21 K22 ["createElement"]
      402 GETUPVAL                         R22 7
      403 GETTABLEKS                       R22 R22 K34 ["Point"]
      405 DUPTABLE                         R23 K99 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      406 SETTABLEKS                       R1 R23 K10 ["Position"]
      408 GETTABLEKS                       R24 R0 K35 ["Size"]
      410 SETTABLEKS                       R24 R23 K35 ["Size"]
      412 GETTABLEKS                       R24 R0 K36 ["ZIndex"]
      414 SETTABLEKS                       R24 R23 K36 ["ZIndex"]
      416 GETTABLEKS                       R24 R0 K37 ["Image"]
      418 SETTABLEKS                       R24 R23 K37 ["Image"]
      420 GETTABLEKS                       R24 R0 K38 ["Color3"]
      422 SETTABLEKS                       R24 R23 K38 ["Color3"]
      424 CALL                             R21 2 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R21
      427 SETTABLE                         R21 R19 R20
      428 CALL                             R16 3 -1
      429 RETURN                           R16 -1

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
       67 DUPCLOSURE                       R9 K21 [PROTO_5]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 RETURN                           R9 1
