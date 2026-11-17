PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resultManager"]
        3 GETTABLEKS                       R1 R1 K1 ["setScrollHeight"]
        5 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
        7 GETTABLEKS                       R2 R2 K3 ["Y"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScrollingFrame not mounted yet"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 GETTABLEKS                       R1 R1 K4 ["AbsoluteSize"]
       19 GETTABLEKS                       R1 R1 K5 ["Y"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K6 ["resultManager"]
       25 GETTABLEKS                       R0 R0 K7 ["setScrollHeight"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["current"]
       30 GETTABLEKS                       R1 R1 K8 ["CanvasPosition"]
       32 GETTABLEKS                       R1 R1 K5 ["Y"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEN                        R1 R0 1
        5 LENGTH                           R3 R0
        6 GETTABLE                         R2 R0 R3
        7 GETUPVAL                         R3 0
        8 DUPTABLE                         R4 K3 [{"start", "endRange"}]
        9 SETTABLEKS                       R1 R4 K1 ["start"]
       11 SETTABLEKS                       R2 R4 K2 ["endRange"]
       13 SETTABLEKS                       R4 R3 K4 ["current"]
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resultManager"]
        3 GETTABLEKS                       R0 R0 K1 ["replace"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Up]
        4 JUMPIFNOTEQ                      R1 R2 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["resultManager"]
        9 GETTABLEKS                       R1 R1 K5 ["findPrevious"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
       15 GETIMPORT                        R2 K7 [Enum.KeyCode.Down]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["resultManager"]
       22 GETTABLEKS                       R1 R1 K8 ["findNext"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["addInputBegan"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fireInputBegan"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fireInputEnded"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["scrollBarThickness"]
        6 MINUS                            R3 R4
        7 LOADN                            R4 0
        8 MOVE                             R5 R0
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_11:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K3 ["yPosition"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Frame"]
        2 DUPTABLE                         R4 K6 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["ZIndex"]}]
        3 GETTABLEKS                       R5 R0 K7 ["getBinding"]
        5 CALL                             R5 0 1
        6 DUPCLOSURE                       R7 K8 [PROTO_11]
        7 NAMECALL                         R5 R5 K9 ["map"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K3 ["Position"]
       12 GETIMPORT                        R5 K12 [UDim2.new]
       14 LOADN                            R6 1
       15 LOADN                            R7 0
       16 LOADN                            R8 0
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K13 ["resultRowHeight"]
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K4 ["Size"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K5 ["ZIndex"]
       26 SETTABLEKS                       R5 R4 K5 ["ZIndex"]
       28 GETUPVAL                         R5 0
       29 GETUPVAL                         R6 3
       30 DUPTABLE                         R7 K18 [{"visibleNodeObservable", "hoveredObservable", "textLabelRef", "resultManager"}]
       31 SETTABLEKS                       R0 R7 K14 ["visibleNodeObservable"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K17 ["resultManager"]
       36 GETTABLEKS                       R8 R8 K15 ["hoveredObservable"]
       38 SETTABLEKS                       R8 R7 K15 ["hoveredObservable"]
       40 GETUPVAL                         R9 4
       41 GETTABLE                         R8 R9 R1
       42 SETTABLEKS                       R8 R7 K16 ["textLabelRef"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K17 ["resultManager"]
       47 SETTABLEKS                       R8 R7 K17 ["resultManager"]
       49 CALL                             R5 2 -1
       50 CALL                             R2 -1 1
       51 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["findResultsMinTextWidth"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["iconButtonSize"]
       11 MULK                             R5 R6 K2 [2]
       12 ADD                              R3 R4 R5
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       25 GETUPVAL                         R6 3
       26 NEWTABLE                         R7 0 0
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K6 ["useRef"]
       32 LOADNIL                          R7
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K6 ["useRef"]
       37 LOADNIL                          R8
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K0 ["useState"]
       42 LOADN                            R9 0
       43 CALL                             R8 1 2
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R9
       49 NEWTABLE                         R12 0 0
       51 CALL                             R10 2 1
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R13 0 0
       59 CALL                             R11 2 1
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       63 NEWCLOSURE                       R13 P3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R14 0 0
       69 CALL                             R12 2 0
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       73 NEWCLOSURE                       R13 P4
       74 CAPTURE                          VAL R7
       75 NEWTABLE                         R14 0 0
       77 CALL                             R12 2 1
       78 GETUPVAL                         R13 4
       79 DUPTABLE                         R14 K11 [{"resultManager", "setViewingInstances", "windowHeight"}]
       80 GETTABLEKS                       R15 R0 K8 ["resultManager"]
       82 SETTABLEKS                       R15 R14 K8 ["resultManager"]
       84 SETTABLEKS                       R12 R14 K9 ["setViewingInstances"]
       86 SETTABLEKS                       R8 R14 K10 ["windowHeight"]
       88 CALL                             R13 1 1
       89 GETUPVAL                         R14 5
       90 GETTABLEKS                       R15 R0 K8 ["resultManager"]
       92 GETTABLEKS                       R15 R15 K12 ["setHovered"]
       94 MOVE                             R16 R13
       95 GETTABLEKS                       R17 R0 K8 ["resultManager"]
       97 GETTABLEKS                       R17 R17 K13 ["scrollHeightObservable"]
       99 MOVE                             R18 R6
      100 CALL                             R14 4 0
      101 GETUPVAL                         R14 6
      102 MOVE                             R15 R6
      103 GETTABLEKS                       R16 R0 K8 ["resultManager"]
      105 GETTABLEKS                       R16 R16 K14 ["scrollToVisibleIndexSignal"]
      107 CALL                             R14 2 0
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K4 ["useCallback"]
      111 NEWCLOSURE                       R15 P5
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R16 0 0
      115 CALL                             R14 2 1
      116 GETUPVAL                         R15 7
      117 GETTABLEKS                       R16 R0 K8 ["resultManager"]
      119 GETTABLEKS                       R16 R16 K15 ["totalNumElementsObservable"]
      121 CALL                             R15 1 1
      122 GETUPVAL                         R16 8
      123 LENGTH                           R17 R13
      124 LOADNIL                          R18
      125 CALL                             R16 2 1
      126 GETUPVAL                         R17 1
      127 GETTABLEKS                       R17 R17 K7 ["useEffect"]
      129 NEWCLOSURE                       R18 P6
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R0
      132 NEWTABLE                         R19 0 3
      134 MOVE                             R20 R5
      135 GETTABLEKS                       R21 R0 K8 ["resultManager"]
      137 MOVE                             R22 R13
      138 SETLIST                          R19 R20 3 [1]
      140 CALL                             R17 2 0
      141 GETUPVAL                         R17 1
      142 GETTABLEKS                       R17 R17 K4 ["useCallback"]
      144 NEWCLOSURE                       R18 P7
      145 CAPTURE                          VAL R5
      146 NEWTABLE                         R19 0 1
      148 MOVE                             R20 R5
      149 SETLIST                          R19 R20 1 [1]
      151 CALL                             R17 2 1
      152 GETUPVAL                         R18 1
      153 GETTABLEKS                       R18 R18 K4 ["useCallback"]
      155 NEWCLOSURE                       R19 P8
      156 CAPTURE                          VAL R5
      157 NEWTABLE                         R20 0 1
      159 MOVE                             R21 R5
      160 SETLIST                          R20 R21 1 [1]
      162 CALL                             R18 2 1
      163 GETUPVAL                         R19 1
      164 GETTABLEKS                       R19 R19 K16 ["createElement"]
      166 LOADK                            R20 K17 ["Frame"]
      167 NEWTABLE                         R21 4 0
      169 GETTABLEKS                       R22 R0 K18 ["LayoutOrder"]
      171 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      173 GETTABLEKS                       R22 R0 K19 ["ZIndex"]
      175 SETTABLEKS                       R22 R21 K19 ["ZIndex"]
      177 GETIMPORT                        R22 K22 [UDim2.fromOffset]
      179 LOADN                            R23 0
      180 GETTABLEKS                       R24 R0 K23 ["headerOffset"]
      182 CALL                             R22 2 1
      183 SETTABLEKS                       R22 R21 K24 ["Position"]
      185 GETUPVAL                         R22 1
      186 GETTABLEKS                       R22 R22 K25 ["Tag"]
      188 LOADK                            R23 K26 ["X-FitY X-Column X-Transparent data-testid=WidgetBodyFrame"]
      189 SETTABLE                         R23 R21 R22
      190 DUPTABLE                         R22 K31 [{"ControlsContainer", "ReplaceAllConfirmationDialog", "Divider", "ScrollingFrame"}]
      191 GETUPVAL                         R23 9
      192 LOADK                            R24 K17 ["Frame"]
      193 NEWTABLE                         R25 4 0
      195 GETTABLEKS                       R26 R0 K19 ["ZIndex"]
      197 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      199 MOVE                             R26 R1
      200 CALL                             R26 0 1
      201 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      203 GETUPVAL                         R26 1
      204 GETTABLEKS                       R26 R26 K25 ["Tag"]
      206 LOADK                            R27 K32 ["X-FitY X-Transparent data-testid=WidgetControlsContainer"]
      207 SETTABLE                         R27 R25 R26
      208 DUPTABLE                         R26 K36 [{"NavigationControls", "ReplaceControls", "UIPadding"}]
      209 GETUPVAL                         R27 9
      210 GETUPVAL                         R28 10
      211 DUPTABLE                         R29 K44 [{"ZIndex", "Visible", "numAllResults", "numAllScripts", "selection", "onSizeChanged", "onFindNextClicked", "onFindPreviousClicked"}]
      212 GETTABLEKS                       R30 R0 K19 ["ZIndex"]
      214 SETTABLEKS                       R30 R29 K19 ["ZIndex"]
      216 GETTABLEKS                       R31 R0 K45 ["confirmationDialogVisible"]
      218 NOT                              R30 R31
      219 SETTABLEKS                       R30 R29 K37 ["Visible"]
      221 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      223 GETTABLEKS                       R30 R30 K46 ["totalNumResultsObservable"]
      225 SETTABLEKS                       R30 R29 K38 ["numAllResults"]
      227 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      229 GETTABLEKS                       R30 R30 K47 ["totalNumScriptsObservable"]
      231 SETTABLEKS                       R30 R29 K39 ["numAllScripts"]
      233 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      235 GETTABLEKS                       R30 R30 K48 ["selectedObservable"]
      237 SETTABLEKS                       R30 R29 K40 ["selection"]
      239 SETTABLEKS                       R4 R29 K41 ["onSizeChanged"]
      241 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      243 GETTABLEKS                       R30 R30 K49 ["findNext"]
      245 SETTABLEKS                       R30 R29 K42 ["onFindNextClicked"]
      247 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      249 GETTABLEKS                       R30 R30 K50 ["findPrevious"]
      251 SETTABLEKS                       R30 R29 K43 ["onFindPreviousClicked"]
      253 CALL                             R27 2 1
      254 SETTABLEKS                       R27 R26 K33 ["NavigationControls"]
      256 GETUPVAL                         R27 9
      257 GETUPVAL                         R28 11
      258 DUPTABLE                         R29 K54 [{"ZIndex", "xOffset", "onReplaceButtonClicked", "selection", "numAllResults", "Visible", "onReplaceAllButtonClicked"}]
      259 GETTABLEKS                       R31 R0 K19 ["ZIndex"]
      261 ADDK                             R30 R31 K55 [1]
      262 SETTABLEKS                       R30 R29 K19 ["ZIndex"]
      264 SETTABLEKS                       R2 R29 K51 ["xOffset"]
      266 SETTABLEKS                       R14 R29 K52 ["onReplaceButtonClicked"]
      268 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      270 GETTABLEKS                       R30 R30 K48 ["selectedObservable"]
      272 SETTABLEKS                       R30 R29 K40 ["selection"]
      274 GETTABLEKS                       R30 R0 K8 ["resultManager"]
      276 GETTABLEKS                       R30 R30 K46 ["totalNumResultsObservable"]
      278 SETTABLEKS                       R30 R29 K38 ["numAllResults"]
      280 GETTABLEKS                       R31 R0 K56 ["showReplace"]
      282 JUMPIF                           R31 ; [+2]
      283 LOADB                            R30 0
      284 JUMP                             ; [+3]
      285 GETTABLEKS                       R31 R0 K45 ["confirmationDialogVisible"]
      287 NOT                              R30 R31
      288 SETTABLEKS                       R30 R29 K37 ["Visible"]
      290 GETTABLEKS                       R30 R0 K57 ["toggleConfirmationDialog"]
      292 SETTABLEKS                       R30 R29 K53 ["onReplaceAllButtonClicked"]
      294 CALL                             R27 2 1
      295 SETTABLEKS                       R27 R26 K34 ["ReplaceControls"]
      297 GETUPVAL                         R27 9
      298 LOADK                            R28 K35 ["UIPadding"]
      299 DUPTABLE                         R29 K61 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
      300 GETIMPORT                        R30 K64 [UDim.new]
      302 LOADN                            R31 0
      303 LOADN                            R32 2
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K58 ["PaddingBottom"]
      307 GETIMPORT                        R30 K64 [UDim.new]
      309 LOADN                            R31 0
      310 LOADN                            R32 8
      311 CALL                             R30 2 1
      312 SETTABLEKS                       R30 R29 K59 ["PaddingLeft"]
      314 GETIMPORT                        R30 K64 [UDim.new]
      316 LOADN                            R31 0
      317 LOADN                            R32 8
      318 CALL                             R30 2 1
      319 SETTABLEKS                       R30 R29 K60 ["PaddingRight"]
      321 CALL                             R27 2 1
      322 SETTABLEKS                       R27 R26 K35 ["UIPadding"]
      324 CALL                             R23 3 1
      325 SETTABLEKS                       R23 R22 K27 ["ControlsContainer"]
      327 GETUPVAL                         R23 9
      328 GETUPVAL                         R24 12
      329 DUPTABLE                         R25 K66 [{"ZIndex", "Visible", "onButtonClicked"}]
      330 GETTABLEKS                       R27 R0 K19 ["ZIndex"]
      332 ADDK                             R26 R27 K55 [1]
      333 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      335 GETTABLEKS                       R26 R0 K45 ["confirmationDialogVisible"]
      337 SETTABLEKS                       R26 R25 K37 ["Visible"]
      339 GETTABLEKS                       R26 R0 K57 ["toggleConfirmationDialog"]
      341 SETTABLEKS                       R26 R25 K65 ["onButtonClicked"]
      343 CALL                             R23 2 1
      344 SETTABLEKS                       R23 R22 K28 ["ReplaceAllConfirmationDialog"]
      346 GETUPVAL                         R23 9
      347 LOADK                            R24 K17 ["Frame"]
      348 NEWTABLE                         R25 4 0
      350 MOVE                             R26 R1
      351 CALL                             R26 0 1
      352 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      354 GETIMPORT                        R26 K67 [UDim2.new]
      356 LOADN                            R27 1
      357 LOADN                            R28 0
      358 LOADN                            R29 0
      359 LOADN                            R30 1
      360 CALL                             R26 4 1
      361 SETTABLEKS                       R26 R25 K68 ["Size"]
      363 GETUPVAL                         R26 1
      364 GETTABLEKS                       R26 R26 K25 ["Tag"]
      366 LOADK                            R27 K69 ["FindReplaceAll-UIStroke"]
      367 SETTABLE                         R27 R25 R26
      368 CALL                             R23 2 1
      369 SETTABLEKS                       R23 R22 K29 ["Divider"]
      371 GETUPVAL                         R23 9
      372 LOADK                            R24 K30 ["ScrollingFrame"]
      373 NEWTABLE                         R25 16 0
      375 MOVE                             R26 R1
      376 CALL                             R26 0 1
      377 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      379 LOADB                            R26 0
      380 SETTABLEKS                       R26 R25 K70 ["SmoothScroll"]
      382 GETUPVAL                         R28 2
      383 GETTABLEKS                       R28 R28 K72 ["resultRowHeight"]
      385 GETUPVAL                         R29 13
      386 GETTABLEKS                       R29 R29 K73 ["SCROLL_RATE"]
      388 MUL                              R27 R28 R29
      389 DIVK                             R26 R27 K71 [140]
      390 SETTABLEKS                       R26 R25 K74 ["ScrollRate"]
      392 LOADN                            R26 1
      393 SETTABLEKS                       R26 R25 K75 ["BackgroundTransparency"]
      395 LOADN                            R26 0
      396 SETTABLEKS                       R26 R25 K76 ["BorderSizePixel"]
      398 DUPCLOSURE                       R28 K77 [PROTO_10]
      399 CAPTURE                          UPVAL U2
      400 NAMECALL                         R26 R15 K78 ["map"]
      402 CALL                             R26 2 1
      403 SETTABLEKS                       R26 R25 K79 ["CanvasSize"]
      405 GETUPVAL                         R26 2
      406 GETTABLEKS                       R26 R26 K80 ["scrollBarThickness"]
      408 SETTABLEKS                       R26 R25 K81 ["ScrollBarThickness"]
      410 GETIMPORT                        R26 K85 [Enum.ScrollBarInset.Always]
      412 SETTABLEKS                       R26 R25 K86 ["VerticalScrollBarInset"]
      414 GETIMPORT                        R26 K88 [Enum.ScrollBarInset.None]
      416 SETTABLEKS                       R26 R25 K89 ["HorizontalScrollBarInset"]
      418 GETTABLEKS                       R27 R0 K19 ["ZIndex"]
      420 ADDK                             R26 R27 K55 [1]
      421 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      423 SETTABLEKS                       R6 R25 K90 ["ref"]
      425 GETUPVAL                         R26 1
      426 GETTABLEKS                       R26 R26 K91 ["Change"]
      428 GETTABLEKS                       R26 R26 K92 ["AbsoluteSize"]
      430 SETTABLE                         R10 R25 R26
      431 GETUPVAL                         R26 1
      432 GETTABLEKS                       R26 R26 K91 ["Change"]
      434 GETTABLEKS                       R26 R26 K93 ["CanvasPosition"]
      436 SETTABLE                         R11 R25 R26
      437 GETUPVAL                         R26 1
      438 GETTABLEKS                       R26 R26 K94 ["Event"]
      440 GETTABLEKS                       R26 R26 K95 ["InputBegan"]
      442 SETTABLE                         R17 R25 R26
      443 GETUPVAL                         R26 1
      444 GETTABLEKS                       R26 R26 K94 ["Event"]
      446 GETTABLEKS                       R26 R26 K96 ["InputEnded"]
      448 SETTABLE                         R18 R25 R26
      449 GETUPVAL                         R26 1
      450 GETTABLEKS                       R26 R26 K25 ["Tag"]
      452 LOADK                            R27 K97 ["FindReplaceAll-FillX FindReplaceAll-ScrollingFrame data-testid=WidgetScrollingFrame"]
      453 SETTABLE                         R27 R25 R26
      454 GETUPVAL                         R26 14
      455 MOVE                             R27 R13
      456 NEWCLOSURE                       R28 P10
      457 CAPTURE                          UPVAL U9
      458 CAPTURE                          UPVAL U2
      459 CAPTURE                          VAL R0
      460 CAPTURE                          UPVAL U15
      461 CAPTURE                          VAL R16
      462 CALL                             R26 2 -1
      463 CALL                             R23 -1 1
      464 SETTABLEKS                       R23 R22 K30 ["ScrollingFrame"]
      466 CALL                             R19 3 -1
      467 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createNextOrder"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Components"]
       29 GETTABLEKS                       R5 R5 K12 ["ReplaceAllConfirmationDialog"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Components"]
       38 GETTABLEKS                       R6 R6 K13 ["ReplaceControls"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K11 ["Components"]
       47 GETTABLEKS                       R7 R7 K14 ["NavigationControls"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K11 ["Components"]
       56 GETTABLEKS                       R8 R8 K15 ["ResultRowNode"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Resources"]
       65 GETTABLEKS                       R9 R9 K17 ["StyleConstants"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Src"]
       72 GETTABLEKS                       R10 R10 K18 ["Util"]
       74 GETTABLEKS                       R10 R10 K19 ["Constants"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K10 ["Src"]
       81 GETTABLEKS                       R11 R11 K18 ["Util"]
       83 GETTABLEKS                       R11 R11 K20 ["mapValues"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K10 ["Src"]
       90 GETTABLEKS                       R12 R12 K18 ["Util"]
       92 GETTABLEKS                       R12 R12 K21 ["createInputManager"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K10 ["Src"]
       99 GETTABLEKS                       R13 R13 K22 ["Hooks"]
      101 GETTABLEKS                       R13 R13 K23 ["useVisibleResultNodes"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R0 K10 ["Src"]
      108 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      110 GETTABLEKS                       R14 R14 K24 ["useScrollToSelection"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R15 R0 K10 ["Src"]
      117 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      119 GETTABLEKS                       R15 R15 K25 ["useCanvasHeight"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K5 [require]
      124 GETTABLEKS                       R16 R0 K10 ["Src"]
      126 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      128 GETTABLEKS                       R16 R16 K26 ["useRefs"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K5 [require]
      133 GETTABLEKS                       R17 R0 K10 ["Src"]
      135 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      137 GETTABLEKS                       R17 R17 K27 ["useHoverTracker"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K5 [require]
      142 GETTABLEKS                       R18 R0 K10 ["Src"]
      144 GETTABLEKS                       R18 R18 K28 ["Types"]
      146 CALL                             R17 1 1
      147 GETTABLEKS                       R18 R1 K29 ["createElement"]
      149 DUPCLOSURE                       R19 K30 [PROTO_13]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R7
      166 RETURN                           R19 1
