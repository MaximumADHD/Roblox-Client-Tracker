PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Press]
        5 JUMPIFNOTEQ                      R0 R1 ; [+31]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K4 ["anchor"]
       10 JUMPIFNOT                        R0 ; [+22]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+20]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K4 ["anchor"]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K5 ["getValue"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R0 K0 ["GuiState"]
       28 GETIMPORT                        R4 K7 [Enum.GuiState.Idle]
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 5
       34 GETTABLEKS                       R0 R0 K8 ["onPressedOutside"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 JUMPIFEQKNIL                     R0 ; [+22]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["onPressedOutside"]
       18 JUMPIFNOT                        R1 ; [+17]
       19 GETUPVAL                         R1 0
       20 LOADK                            R4 K3 ["GuiState"]
       21 NAMECALL                         R2 R0 K4 ["GetPropertyChangedSignal"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U2
       31 NAMECALL                         R2 R2 K5 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K0 ["current"]
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_6:
        0 GETTABLEN                        R2 R0 2
        1 GETTABLEKS                       R2 R2 K0 ["X"]
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        5 LOADN                            R1 -1
        6 JUMP                             ; [+1]
        7 LOADN                            R1 1
        8 GETTABLEN                        R3 R0 2
        9 GETTABLEKS                       R3 R3 K2 ["Y"]
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       13 LOADN                            R2 -1
       14 JUMP                             ; [+1]
       15 LOADN                            R2 1
       16 GETIMPORT                        R3 K5 [UDim2.fromOffset]
       18 GETTABLEN                        R5 R0 1
       19 GETTABLEKS                       R5 R5 K0 ["X"]
       21 GETUPVAL                         R8 0
       22 DIVK                             R7 R8 K6 [2]
       23 MUL                              R6 R7 R1
       24 ADD                              R4 R5 R6
       25 GETTABLEN                        R7 R0 1
       26 GETTABLEKS                       R7 R7 K2 ["Y"]
       28 GETUPVAL                         R10 0
       29 DIVK                             R9 R10 K6 [2]
       30 MUL                              R8 R9 R2
       31 ADD                              R6 R7 R8
       32 ADDK                             R5 R6 K6 [2]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R6 R3 K1 ["anchor"]
       11 FASTCALL1                        TYPEOF R6 ; [+2]
       12 GETIMPORT                        R5 K3 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K4 ["Instance"] ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R2 K5 ["hasArrow"]
       22 JUMP                             ; [+1]
       23 LOADB                            R5 0
       24 GETUPVAL                         R6 4
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 5
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 6
       29 GETUPVAL                         R9 7
       30 GETTABLEKS                       R9 R9 K6 ["Popover"]
       32 DUPTABLE                         R10 K9 [{["stackAboveOwner"] = True}]
       33 CALL                             R8 2 1
       34 GETTABLEKS                       R9 R7 K10 ["Size"]
       36 GETTABLEKS                       R9 R9 K11 ["Size_200"]
       38 MULK                             R10 R9 K12 [1.4142135623731]
       39 DIVK                             R11 R10 K13 [2]
       40 GETTABLEKS                       R12 R2 K14 ["backgroundStyle"]
       42 JUMPIF                           R12 ; [+6]
       43 GETTABLEKS                       R12 R7 K15 ["Color"]
       45 GETTABLEKS                       R12 R12 K16 ["Surface"]
       47 GETTABLEKS                       R12 R12 K17 ["Surface_100"]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R13 R13 K18 ["useState"]
       52 LOADNIL                          R14
       53 CALL                             R13 1 2
       54 GETUPVAL                         R15 2
       55 GETTABLEKS                       R15 R15 K18 ["useState"]
       57 LOADNIL                          R16
       58 CALL                             R15 1 2
       59 GETUPVAL                         R17 8
       60 MOVE                             R18 R15
       61 CALL                             R17 1 1
       62 GETUPVAL                         R18 2
       63 GETTABLEKS                       R18 R18 K19 ["useImperativeHandle"]
       65 MOVE                             R19 R1
       66 NEWCLOSURE                       R20 P0
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R21 0 1
       70 MOVE                             R22 R13
       71 SETLIST                          R21 R22 1 [1]
       73 CALL                             R18 3 0
       74 GETUPVAL                         R18 9
       75 GETTABLEKS                       R19 R3 K20 ["isOpen"]
       77 GETTABLEKS                       R20 R3 K1 ["anchor"]
       79 MOVE                             R21 R13
       80 MOVE                             R22 R6
       81 GETTABLEKS                       R23 R2 K21 ["side"]
       83 GETTABLEKS                       R24 R2 K22 ["align"]
       85 JUMPIFNOT                        R5 ; [+2]
       86 MOVE                             R25 R11
       87 JUMP                             ; [+1]
       88 LOADN                            R25 0
       89 CALL                             R18 7 6
       90 GETUPVAL                         R24 2
       91 GETTABLEKS                       R24 R24 K23 ["useRef"]
       93 LOADNIL                          R25
       94 CALL                             R24 1 1
       95 GETUPVAL                         R25 2
       96 GETTABLEKS                       R25 R25 K24 ["useCallback"]
       98 NEWCLOSURE                       R26 P1
       99 CAPTURE                          VAL R24
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R17
      105 CAPTURE                          UPVAL U10
      106 NEWTABLE                         R27 0 2
      108 GETTABLEKS                       R28 R2 K25 ["onPressedOutside"]
      110 GETTABLEKS                       R29 R3 K1 ["anchor"]
      112 SETLIST                          R27 R28 2 [1]
      114 CALL                             R25 2 1
      115 GETUPVAL                         R26 2
      116 GETTABLEKS                       R26 R26 K26 ["useEffect"]
      118 NEWCLOSURE                       R27 P2
      119 CAPTURE                          VAL R24
      120 NEWTABLE                         R28 0 0
      122 CALL                             R26 2 0
      123 GETUPVAL                         R27 11
      124 GETTABLEKS                       R27 R27 K27 ["FoundationPopoverConditionalRender"]
      126 JUMPIFNOT                        R27 ; [+3]
      127 GETTABLEKS                       R26 R3 K20 ["isOpen"]
      129 JUMP                             ; [+1]
      130 LOADB                            R26 1
      131 JUMPIFNOT                        R26 ; [+249]
      132 GETUPVAL                         R27 2
      133 GETTABLEKS                       R27 R27 K28 ["createElement"]
      135 GETUPVAL                         R28 12
      136 DUPTABLE                         R29 K34 [{["ZIndex"], ["tag"] = "size-full", ["Visible"], ["testId"]}]
      137 GETTABLEKS                       R30 R8 K35 ["zIndex"]
      139 SETTABLEKS                       R30 R29 K29 ["ZIndex"]
      141 SETTABLEKS                       R19 R29 K32 ["Visible"]
      143 LOADK                            R31 K36 ["%*--container"]
      144 GETTABLEKS                       R33 R3 K33 ["testId"]
      146 NAMECALL                         R31 R31 K37 ["format"]
      148 CALL                             R31 2 1
      149 MOVE                             R30 R31
      150 SETTABLEKS                       R30 R29 K33 ["testId"]
      152 DUPTABLE                         R30 K42 [{"Backdrop", "Shadow", "Arrow", "Content"}]
      153 GETTABLEKS                       R32 R2 K25 ["onPressedOutside"]
      155 JUMPIFNOT                        R32 ; [+36]
      156 GETTABLEKS                       R32 R3 K20 ["isOpen"]
      158 JUMPIFNOT                        R32 ; [+33]
      159 GETUPVAL                         R31 2
      160 GETTABLEKS                       R31 R31 K28 ["createElement"]
      162 GETUPVAL                         R32 12
      163 DUPTABLE                         R33 K47 [{["ZIndex"] = 1, ["stateLayer"], ["Size"], ["tag"] = "position-center-center anchor-center-center", ["ref"], ["testId"]}]
      164 DUPTABLE                         R34 K49 [{"affordance"}]
      165 GETUPVAL                         R35 13
      166 GETTABLEKS                       R35 R35 K50 ["None"]
      168 SETTABLEKS                       R35 R34 K48 ["affordance"]
      170 SETTABLEKS                       R34 R33 K44 ["stateLayer"]
      172 GETIMPORT                        R34 K53 [UDim2.fromScale]
      174 LOADN                            R35 2
      175 LOADN                            R36 2
      176 CALL                             R34 2 1
      177 SETTABLEKS                       R34 R33 K10 ["Size"]
      179 SETTABLEKS                       R25 R33 K46 ["ref"]
      181 LOADK                            R35 K54 ["%*--backdrop"]
      182 GETTABLEKS                       R37 R3 K33 ["testId"]
      184 NAMECALL                         R35 R35 K37 ["format"]
      186 CALL                             R35 2 1
      187 MOVE                             R34 R35
      188 SETTABLEKS                       R34 R33 K33 ["testId"]
      190 CALL                             R31 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R31
      193 SETTABLEKS                       R31 R30 K38 ["Backdrop"]
      195 GETUPVAL                         R31 2
      196 GETTABLEKS                       R31 R31 K28 ["createElement"]
      198 GETUPVAL                         R32 14
      199 DUPTABLE                         R33 K60 [{["AnchorPoint"], ["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"], ["testId"]}]
      200 SETTABLEKS                       R23 R33 K55 ["AnchorPoint"]
      202 GETUPVAL                         R34 15
      203 SETTABLEKS                       R34 R33 K56 ["Image"]
      205 DUPCLOSURE                       R36 K61 [PROTO_5]
      206 CAPTURE                          UPVAL U16
      207 NAMECALL                         R34 R20 K62 ["map"]
      209 CALL                             R34 2 1
      210 SETTABLEKS                       R34 R33 K10 ["Size"]
      212 GETUPVAL                         R34 2
      213 GETTABLEKS                       R34 R34 K63 ["joinBindings"]
      215 NEWTABLE                         R35 0 2
      217 MOVE                             R36 R18
      218 MOVE                             R37 R23
      219 SETLIST                          R35 R36 2 [1]
      221 CALL                             R34 1 1
      222 DUPCLOSURE                       R36 K64 [PROTO_6]
      223 CAPTURE                          UPVAL U16
      224 NAMECALL                         R34 R34 K62 ["map"]
      226 CALL                             R34 2 1
      227 SETTABLEKS                       R34 R33 K57 ["Position"]
      229 DUPTABLE                         R34 K66 [{"center"}]
      230 GETIMPORT                        R35 K69 [Rect.new]
      232 GETUPVAL                         R36 16
      233 GETUPVAL                         R37 16
      234 GETUPVAL                         R39 16
      235 ADDK                             R38 R39 K43 [1]
      236 GETUPVAL                         R40 16
      237 ADDK                             R39 R40 K43 [1]
      238 CALL                             R35 4 1
      239 SETTABLEKS                       R35 R34 K65 ["center"]
      241 SETTABLEKS                       R34 R33 K58 ["slice"]
      243 GETTABLEKS                       R34 R7 K15 ["Color"]
      245 GETTABLEKS                       R34 R34 K70 ["Extended"]
      247 GETTABLEKS                       R34 R34 K71 ["Black"]
      249 GETTABLEKS                       R34 R34 K72 ["Black_20"]
      251 SETTABLEKS                       R34 R33 K59 ["imageStyle"]
      253 LOADK                            R35 K73 ["%*--shadow"]
      254 GETTABLEKS                       R37 R3 K33 ["testId"]
      256 NAMECALL                         R35 R35 K37 ["format"]
      258 CALL                             R35 2 1
      259 MOVE                             R34 R35
      260 SETTABLEKS                       R34 R33 K33 ["testId"]
      262 CALL                             R31 2 1
      263 SETTABLEKS                       R31 R30 K39 ["Shadow"]
      265 JUMPIFNOT                        R5 ; [+31]
      266 GETUPVAL                         R31 2
      267 GETTABLEKS                       R31 R31 K28 ["createElement"]
      269 GETUPVAL                         R32 12
      270 DUPTABLE                         R33 K78 [{["Size"], ["Position"], ["Rotation"] = 45, ["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "anchor-center-center", ["testId"]}]
      271 GETIMPORT                        R34 K80 [UDim2.fromOffset]
      273 MOVE                             R35 R9
      274 MOVE                             R36 R9
      275 CALL                             R34 2 1
      276 SETTABLEKS                       R34 R33 K10 ["Size"]
      278 DUPCLOSURE                       R36 K81 [PROTO_7]
      279 NAMECALL                         R34 R21 K62 ["map"]
      281 CALL                             R34 2 1
      282 SETTABLEKS                       R34 R33 K57 ["Position"]
      284 SETTABLEKS                       R12 R33 K14 ["backgroundStyle"]
      286 LOADK                            R35 K82 ["%*--arrow"]
      287 GETTABLEKS                       R37 R3 K33 ["testId"]
      289 NAMECALL                         R35 R35 K37 ["format"]
      291 CALL                             R35 2 1
      292 MOVE                             R34 R35
      293 SETTABLEKS                       R34 R33 K33 ["testId"]
      295 CALL                             R31 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R31
      298 SETTABLEKS                       R31 R30 K40 ["Arrow"]
      300 GETUPVAL                         R31 2
      301 GETTABLEKS                       R31 R31 K28 ["createElement"]
      303 GETUPVAL                         R32 12
      304 DUPTABLE                         R33 K88 [{["AnchorPoint"], ["Position"], ["selection"], ["selectionGroup"], ["sizeConstraint"], ["stateLayer"], ["ZIndex"] = 4, ["onActivated"], ["backgroundStyle"], ["tag"], ["ref"], ["testId"]}]
      305 SETTABLEKS                       R23 R33 K55 ["AnchorPoint"]
      307 DUPCLOSURE                       R36 K89 [PROTO_8]
      308 NAMECALL                         R34 R18 K62 ["map"]
      310 CALL                             R34 2 1
      311 SETTABLEKS                       R34 R33 K57 ["Position"]
      313 GETTABLEKS                       R34 R2 K83 ["selection"]
      315 SETTABLEKS                       R34 R33 K83 ["selection"]
      317 GETTABLEKS                       R34 R2 K84 ["selectionGroup"]
      319 SETTABLEKS                       R34 R33 K84 ["selectionGroup"]
      321 DUPTABLE                         R34 K91 [{"MaxSize"}]
      322 SETTABLEKS                       R22 R34 K90 ["MaxSize"]
      324 SETTABLEKS                       R34 R33 K85 ["sizeConstraint"]
      326 DUPTABLE                         R34 K49 [{"affordance"}]
      327 GETUPVAL                         R35 13
      328 GETTABLEKS                       R35 R35 K50 ["None"]
      330 SETTABLEKS                       R35 R34 K48 ["affordance"]
      332 SETTABLEKS                       R34 R33 K44 ["stateLayer"]
      334 GETTABLEKS                       R35 R2 K25 ["onPressedOutside"]
      336 JUMPIFNOT                        R35 ; [+2]
      337 DUPCLOSURE                       R34 K92 [PROTO_9]
      338 JUMP                             ; [+1]
      339 LOADNIL                          R34
      340 SETTABLEKS                       R34 R33 K87 ["onActivated"]
      342 SETTABLEKS                       R12 R33 K14 ["backgroundStyle"]
      344 LOADK                            R35 K93 ["auto-xy %*"]
      345 GETUPVAL                         R38 17
      346 GETTABLEKS                       R39 R2 K94 ["radius"]
      348 GETTABLE                         R37 R38 R39
      349 NAMECALL                         R35 R35 K37 ["format"]
      351 CALL                             R35 2 1
      352 MOVE                             R34 R35
      353 SETTABLEKS                       R34 R33 K30 ["tag"]
      355 SETTABLEKS                       R14 R33 K46 ["ref"]
      357 LOADK                            R35 K95 ["%*--content"]
      358 GETTABLEKS                       R37 R3 K33 ["testId"]
      360 NAMECALL                         R35 R35 K37 ["format"]
      362 CALL                             R35 2 1
      363 MOVE                             R34 R35
      364 SETTABLEKS                       R34 R33 K33 ["testId"]
      366 GETUPVAL                         R34 2
      367 GETTABLEKS                       R34 R34 K28 ["createElement"]
      369 GETUPVAL                         R35 18
      370 DUPTABLE                         R36 K97 [{"owner"}]
      371 SETTABLEKS                       R8 R36 K96 ["owner"]
      373 GETTABLEKS                       R37 R2 K98 ["children"]
      375 CALL                             R34 3 -1
      376 CALL                             R31 -1 1
      377 SETTABLEKS                       R31 R30 K41 ["Content"]
      379 CALL                             R27 3 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R27
      382 JUMPIFNOTEQKNIL                  R6 ; [+2]
      384 RETURN                           R27 1
      385 GETUPVAL                         R28 19
      386 GETTABLEKS                       R28 R28 K99 ["createPortal"]
      388 MOVE                             R29 R27
      389 MOVE                             R30 R6
      390 CALL                             R28 2 -1
      391 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["PopoverContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["View"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Utility"]
       43 GETTABLEKS                       R7 R7 K13 ["isPointInGuiObjectBounds"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K14 ["useFloating"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Providers"]
       61 GETTABLEKS                       R9 R9 K16 ["Overlay"]
       63 GETTABLEKS                       R9 R9 K17 ["useOverlay"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R0 K12 ["Utility"]
       70 GETTABLEKS                       R10 R10 K18 ["usePointerPosition"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K15 ["Providers"]
       77 GETTABLEKS                       R11 R11 K19 ["Style"]
       79 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K12 ["Utility"]
       86 GETTABLEKS                       R12 R12 K21 ["withDefaults"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K12 ["Utility"]
       93 GETTABLEKS                       R13 R13 K22 ["Flags"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K23 ["Enums"]
      100 GETTABLEKS                       R14 R14 K24 ["PopoverAlign"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K23 ["Enums"]
      107 GETTABLEKS                       R15 R15 K25 ["PopoverSide"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K23 ["Enums"]
      114 GETTABLEKS                       R16 R16 K26 ["Radius"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R1 K27 ["React"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R1 K28 ["ReactRoblox"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K23 ["Enums"]
      131 GETTABLEKS                       R19 R19 K29 ["StateLayerAffordance"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R20 R0 K23 ["Enums"]
      138 GETTABLEKS                       R20 R20 K30 ["ElevationLayer"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K6 [require]
      143 GETTABLEKS                       R21 R0 K8 ["Components"]
      145 GETTABLEKS                       R21 R21 K31 ["Types"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K6 [require]
      150 GETTABLEKS                       R22 R0 K15 ["Providers"]
      152 GETTABLEKS                       R22 R22 K32 ["Elevation"]
      154 GETTABLEKS                       R22 R22 K33 ["useElevation"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K6 [require]
      159 GETTABLEKS                       R23 R0 K15 ["Providers"]
      161 GETTABLEKS                       R23 R23 K32 ["Elevation"]
      163 GETTABLEKS                       R23 R23 K34 ["ElevationProvider"]
      165 CALL                             R22 1 1
      166 GETTABLEKS                       R22 R22 K35 ["ElevationOwnerScope"]
      168 DUPTABLE                         R23 K43 [{["side"], ["align"], ["hasArrow"] = True, ["selection"], ["selectionGroup"], ["radius"]}]
      169 GETTABLEKS                       R24 R14 K44 ["Bottom"]
      171 SETTABLEKS                       R24 R23 K36 ["side"]
      173 GETTABLEKS                       R24 R13 K45 ["Center"]
      175 SETTABLEKS                       R24 R23 K37 ["align"]
      177 GETTABLEKS                       R24 R2 K46 ["MODAL"]
      179 GETTABLEKS                       R24 R24 K47 ["DISABLE_SELECTION"]
      181 SETTABLEKS                       R24 R23 K40 ["selection"]
      183 GETTABLEKS                       R24 R2 K46 ["MODAL"]
      185 GETTABLEKS                       R24 R24 K48 ["TRAP_FOCUS"]
      187 SETTABLEKS                       R24 R23 K41 ["selectionGroup"]
      189 GETTABLEKS                       R24 R15 K49 ["Medium"]
      191 SETTABLEKS                       R24 R23 K42 ["radius"]
      193 NEWTABLE                         R24 4 0
      195 GETTABLEKS                       R25 R15 K50 ["Small"]
      197 LOADK                            R26 K51 ["radius-small"]
      198 SETTABLE                         R26 R24 R25
      199 GETTABLEKS                       R25 R15 K49 ["Medium"]
      201 LOADK                            R26 K52 ["radius-medium"]
      202 SETTABLE                         R26 R24 R25
      203 GETTABLEKS                       R25 R15 K53 ["Circle"]
      205 LOADK                            R26 K54 ["radius-circle"]
      206 SETTABLE                         R26 R24 R25
      207 GETTABLEKS                       R25 R2 K55 ["SHADOW_IMAGE"]
      209 GETTABLEKS                       R26 R2 K56 ["SHADOW_SIZE"]
      211 DUPCLOSURE                       R27 K57 [PROTO_10]
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R17
      232 GETTABLEKS                       R28 R16 K58 ["forwardRef"]
      234 MOVE                             R29 R27
      235 CALL                             R28 1 -1
      236 RETURN                           R28 -1
