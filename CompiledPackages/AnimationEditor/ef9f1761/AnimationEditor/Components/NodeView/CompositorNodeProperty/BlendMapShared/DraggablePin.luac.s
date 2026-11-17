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
        1 GETTABLEKS                       R0 R0 K0 ["Position"]
        3 LOADNIL                          R1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Mode"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["DRAGGABLE_PIN_MODES"]
       10 GETTABLEKS                       R3 R3 K3 ["Blend1D"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 GETIMPORT                        R2 K6 [string.format]
       16 LOADK                            R3 K7 ["(%.3f)"]
       17 GETTABLEKS                       R4 R0 K8 ["X"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 JUMP                             ; [+53]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K1 ["Mode"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K2 ["DRAGGABLE_PIN_MODES"]
       28 GETTABLEKS                       R3 R3 K9 ["Blend2D"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+42]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K10 ["InputMode"]
       35 GETIMPORT                        R3 K14 [Enum.AnimationNodeBlend2DInputMode.Polar]
       37 JUMPIFNOTEQ                      R2 R3 ; [+25]
       39 GETTABLEKS                       R2 R0 K15 ["Magnitude"]
       41 GETTABLEKS                       R6 R0 K8 ["X"]
       43 GETTABLEKS                       R7 R0 K16 ["Y"]
       45 FASTCALL2                        MATH_ATAN2 R6 R7 ; [+3]
       47 GETIMPORT                        R5 K19 [math.atan2]
       49 CALL                             R5 2 1
       50 MINUS                            R4 R5
       51 FASTCALL1                        MATH_DEG R4 ; [+2]
       52 GETIMPORT                        R3 K21 [math.deg]
       54 CALL                             R3 1 1
       55 GETIMPORT                        R4 K6 [string.format]
       57 LOADK                            R5 K22 ["(%.3f°, %.3f)"]
       58 MOVE                             R6 R3
       59 MOVE                             R7 R2
       60 CALL                             R4 3 1
       61 MOVE                             R1 R4
       62 JUMP                             ; [+12]
       63 GETIMPORT                        R2 K6 [string.format]
       65 LOADK                            R3 K23 ["(%.3f, %.3f)"]
       66 GETTABLEKS                       R4 R0 K8 ["X"]
       68 GETTABLEKS                       R5 R0 K16 ["Y"]
       70 CALL                             R2 3 1
       71 MOVE                             R1 R2
       72 JUMP                             ; [+2]
       73 LOADK                            R2 K24 [""]
       74 RETURN                           R2 1
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R2 R2 K25 ["Label"]
       78 JUMPIFNOT                        R2 ; [+9]
       79 LOADK                            R2 K26 ["%* %*"]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K25 ["Label"]
       83 MOVE                             R5 R1
       84 NAMECALL                         R2 R2 K5 ["format"]
       86 CALL                             R2 3 1
       87 RETURN                           R2 1
       88 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["disable"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["beginUndoTransaction"]
        7 LOADK                            R3 K2 ["DraggablePin Drag"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

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
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U4
       51 NEWTABLE                         R10 0 4
       53 GETTABLEKS                       R11 R0 K10 ["Position"]
       55 GETTABLEKS                       R12 R0 K11 ["Mode"]
       57 GETTABLEKS                       R13 R0 K8 ["InputMode"]
       59 GETTABLEKS                       R14 R0 K12 ["Label"]
       61 SETLIST                          R10 R11 4 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K13 ["useCallback"]
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R11 0 1
       72 MOVE                             R12 R5
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       79 NEWCLOSURE                       R11 P3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R2
       83 NEWTABLE                         R12 0 7
       85 GETTABLEKS                       R13 R0 K14 ["AbsToMap"]
       87 GETTABLEKS                       R14 R0 K15 ["Clamp"]
       89 GETTABLEKS                       R15 R0 K16 ["Index"]
       91 GETTABLEKS                       R16 R0 K17 ["OnPinDragged"]
       93 GETTABLEKS                       R17 R0 K8 ["InputMode"]
       95 GETTABLEKS                       R18 R0 K18 ["LockExtents"]
       97 MOVE                             R19 R5
       98 SETLIST                          R12 R13 7 [1]
      100 CALL                             R10 2 1
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R11 R11 K13 ["useCallback"]
      104 NEWCLOSURE                       R12 P4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R5
      108 NEWTABLE                         R13 0 2
      110 GETTABLEKS                       R14 R0 K18 ["LockExtents"]
      112 MOVE                             R15 R5
      113 SETLIST                          R13 R14 2 [1]
      115 CALL                             R11 2 1
      116 LOADK                            R13 K19 ["Point_"]
      117 GETTABLEKS                       R15 R0 K16 ["Index"]
      119 FASTCALL1                        TOSTRING R15 ; [+2]
      120 GETIMPORT                        R14 K21 [tostring]
      122 CALL                             R14 1 1
      123 CONCAT                           R12 R13 R14
      124 JUMPIFNOT                        R1 ; [+2]
      125 MOVE                             R13 R7
      126 JUMP                             ; [+2]
      127 GETTABLEKS                       R13 R0 K10 ["Position"]
      129 JUMPIFNOT                        R1 ; [+2]
      130 LOADN                            R14 1
      131 JUMP                             ; [+1]
      132 LOADN                            R14 0
      133 GETTABLEKS                       R16 R0 K17 ["OnPinDragged"]
      135 JUMPIFNOT                        R16 ; [+30]
      136 GETUPVAL                         R15 0
      137 GETTABLEKS                       R15 R15 K22 ["createElement"]
      139 LOADK                            R16 K23 ["UIDragDetector"]
      140 NEWTABLE                         R17 4 0
      142 GETIMPORT                        R18 K27 [Enum.UIDragDetectorDragStyle.Scriptable]
      144 SETTABLEKS                       R18 R17 K28 ["DragStyle"]
      146 GETUPVAL                         R18 0
      147 GETTABLEKS                       R18 R18 K29 ["Event"]
      149 GETTABLEKS                       R18 R18 K30 ["DragStart"]
      151 SETTABLE                         R9 R17 R18
      152 GETUPVAL                         R18 0
      153 GETTABLEKS                       R18 R18 K29 ["Event"]
      155 GETTABLEKS                       R18 R18 K31 ["DragContinue"]
      157 SETTABLE                         R10 R17 R18
      158 GETUPVAL                         R18 0
      159 GETTABLEKS                       R18 R18 K29 ["Event"]
      161 GETTABLEKS                       R18 R18 K32 ["DragEnd"]
      163 SETTABLE                         R11 R17 R18
      164 CALL                             R15 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 GETUPVAL                         R16 0
      168 GETTABLEKS                       R16 R16 K22 ["createElement"]
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R17 R17 K33 ["Fragment"]
      173 NEWTABLE                         R18 0 0
      175 NEWTABLE                         R19 4 0
      177 GETUPVAL                         R20 0
      178 GETTABLEKS                       R20 R20 K22 ["createElement"]
      180 GETUPVAL                         R21 6
      181 GETTABLEKS                       R21 R21 K34 ["Point"]
      183 DUPTABLE                         R22 K42 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag", "positionerRef"}]
      184 SETTABLEKS                       R13 R22 K10 ["Position"]
      186 GETTABLEKS                       R23 R0 K35 ["Size"]
      188 SETTABLEKS                       R23 R22 K35 ["Size"]
      190 GETTABLEKS                       R23 R0 K36 ["ZIndex"]
      192 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      194 GETTABLEKS                       R23 R0 K37 ["Image"]
      196 SETTABLEKS                       R23 R22 K37 ["Image"]
      198 GETTABLEKS                       R23 R0 K38 ["Color3"]
      200 SETTABLEKS                       R23 R22 K38 ["Color3"]
      202 SETTABLEKS                       R14 R22 K39 ["Transparency"]
      204 LOADK                            R23 K43 ["data-testid=%*"]
      205 MOVE                             R25 R12
      206 NAMECALL                         R23 R23 K44 ["format"]
      208 CALL                             R23 2 1
      209 SETTABLEKS                       R23 R22 K40 ["Tag"]
      211 SETTABLEKS                       R4 R22 K41 ["positionerRef"]
      213 DUPTABLE                         R23 K46 [{"HoverFrame"}]
      214 GETUPVAL                         R24 0
      215 GETTABLEKS                       R24 R24 K22 ["createElement"]
      217 LOADK                            R25 K47 ["Frame"]
      218 NEWTABLE                         R26 4 0
      220 GETIMPORT                        R27 K50 [UDim2.fromScale]
      222 LOADN                            R28 1
      223 LOADN                            R29 1
      224 CALL                             R27 2 1
      225 SETTABLEKS                       R27 R26 K35 ["Size"]
      227 LOADN                            R27 1
      228 SETTABLEKS                       R27 R26 K51 ["BackgroundTransparency"]
      230 GETUPVAL                         R27 0
      231 GETTABLEKS                       R27 R27 K29 ["Event"]
      233 GETTABLEKS                       R27 R27 K52 ["MouseEnter"]
      235 GETTABLEKS                       R28 R3 K53 ["enable"]
      237 SETTABLE                         R28 R26 R27
      238 GETUPVAL                         R27 0
      239 GETTABLEKS                       R27 R27 K29 ["Event"]
      241 GETTABLEKS                       R27 R27 K54 ["MouseLeave"]
      243 GETTABLEKS                       R28 R3 K55 ["disable"]
      245 SETTABLE                         R28 R26 R27
      246 DUPTABLE                         R27 K57 [{"DragDetector"}]
      247 SETTABLEKS                       R15 R27 K56 ["DragDetector"]
      249 CALL                             R24 3 1
      250 SETTABLEKS                       R24 R23 K45 ["HoverFrame"]
      252 CALL                             R20 3 1
      253 SETTABLE                         R20 R19 R12
      254 LOADK                            R20 K58 ["%*_Tooltip"]
      255 MOVE                             R22 R12
      256 NAMECALL                         R20 R20 K44 ["format"]
      258 CALL                             R20 2 1
      259 GETUPVAL                         R21 0
      260 GETTABLEKS                       R21 R21 K22 ["createElement"]
      262 GETUPVAL                         R22 3
      263 GETTABLEKS                       R22 R22 K59 ["Popover"]
      265 GETTABLEKS                       R22 R22 K60 ["Root"]
      267 DUPTABLE                         R23 K62 [{"isOpen"}]
      268 GETTABLEKS                       R24 R3 K63 ["enabled"]
      270 JUMPIFNOT                        R24 ; [+4]
      271 JUMPIFEQKNIL                     R1 ; [+2]
      273 LOADB                            R24 0 +1
      274 LOADB                            R24 1
      275 SETTABLEKS                       R24 R23 K61 ["isOpen"]
      277 DUPTABLE                         R24 K66 [{"Anchor", "TooltipContent"}]
      278 GETUPVAL                         R25 0
      279 GETTABLEKS                       R25 R25 K22 ["createElement"]
      281 GETUPVAL                         R26 3
      282 GETTABLEKS                       R26 R26 K59 ["Popover"]
      284 GETTABLEKS                       R26 R26 K64 ["Anchor"]
      286 DUPTABLE                         R27 K68 [{"anchorRef"}]
      287 SETTABLEKS                       R4 R27 K67 ["anchorRef"]
      289 CALL                             R25 2 1
      290 SETTABLEKS                       R25 R24 K64 ["Anchor"]
      292 GETUPVAL                         R25 0
      293 GETTABLEKS                       R25 R25 K22 ["createElement"]
      295 GETUPVAL                         R26 3
      296 GETTABLEKS                       R26 R26 K59 ["Popover"]
      298 GETTABLEKS                       R26 R26 K69 ["Content"]
      300 DUPTABLE                         R27 K76 [{["hasArrow"] = False, ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      301 DUPTABLE                         R28 K79 [{"position", "offset"}]
      302 GETUPVAL                         R29 3
      303 GETTABLEKS                       R29 R29 K80 ["Enums"]
      305 GETTABLEKS                       R29 R29 K81 ["PopoverSide"]
      307 GETTABLEKS                       R29 R29 K82 ["Top"]
      309 SETTABLEKS                       R29 R28 K77 ["position"]
      311 GETTABLEKS                       R29 R6 K35 ["Size"]
      313 GETTABLEKS                       R29 R29 K83 ["Size_200"]
      315 SETTABLEKS                       R29 R28 K78 ["offset"]
      317 SETTABLEKS                       R28 R27 K72 ["side"]
      319 GETUPVAL                         R28 3
      320 GETTABLEKS                       R28 R28 K80 ["Enums"]
      322 GETTABLEKS                       R28 R28 K84 ["Radius"]
      324 GETTABLEKS                       R28 R28 K85 ["Small"]
      326 SETTABLEKS                       R28 R27 K73 ["radius"]
      328 GETTABLEKS                       R28 R6 K86 ["Inverse"]
      330 GETTABLEKS                       R28 R28 K87 ["Surface"]
      332 GETTABLEKS                       R28 R28 K88 ["Surface_0"]
      334 SETTABLEKS                       R28 R27 K74 ["backgroundStyle"]
      336 GETUPVAL                         R28 0
      337 GETTABLEKS                       R28 R28 K22 ["createElement"]
      339 GETUPVAL                         R29 3
      340 GETTABLEKS                       R29 R29 K89 ["View"]
      342 DUPTABLE                         R30 K92 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      343 DUPTABLE                         R31 K94 [{"Title"}]
      344 GETUPVAL                         R32 0
      345 GETTABLEKS                       R32 R32 K22 ["createElement"]
      347 GETUPVAL                         R33 3
      348 GETTABLEKS                       R33 R33 K95 ["Text"]
      350 DUPTABLE                         R34 K97 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      351 SETTABLEKS                       R8 R34 K95 ["Text"]
      353 CALL                             R32 2 1
      354 SETTABLEKS                       R32 R31 K93 ["Title"]
      356 CALL                             R28 3 -1
      357 CALL                             R25 -1 1
      358 SETTABLEKS                       R25 R24 K65 ["TooltipContent"]
      360 CALL                             R21 3 1
      361 SETTABLE                         R21 R19 R20
      362 LOADK                            R21 K98 ["PreviewPoint_"]
      363 GETTABLEKS                       R23 R0 K16 ["Index"]
      365 FASTCALL1                        TOSTRING R23 ; [+2]
      366 GETIMPORT                        R22 K21 [tostring]
      368 CALL                             R22 1 1
      369 CONCAT                           R20 R21 R22
      370 JUMPIFNOT                        R1 ; [+27]
      371 GETUPVAL                         R21 0
      372 GETTABLEKS                       R21 R21 K22 ["createElement"]
      374 GETUPVAL                         R22 6
      375 GETTABLEKS                       R22 R22 K34 ["Point"]
      377 DUPTABLE                         R23 K99 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      378 SETTABLEKS                       R1 R23 K10 ["Position"]
      380 GETTABLEKS                       R24 R0 K35 ["Size"]
      382 SETTABLEKS                       R24 R23 K35 ["Size"]
      384 GETTABLEKS                       R24 R0 K36 ["ZIndex"]
      386 SETTABLEKS                       R24 R23 K36 ["ZIndex"]
      388 GETTABLEKS                       R24 R0 K37 ["Image"]
      390 SETTABLEKS                       R24 R23 K37 ["Image"]
      392 GETTABLEKS                       R24 R0 K38 ["Color3"]
      394 SETTABLEKS                       R24 R23 K38 ["Color3"]
      396 CALL                             R21 2 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R21
      399 SETTABLE                         R21 R19 R20
      400 CALL                             R16 3 -1
      401 RETURN                           R16 -1

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
       60 DUPCLOSURE                       R8 K19 [PROTO_5]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 RETURN                           R8 1
