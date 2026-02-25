PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resultManager"]
        3 GETTABLEKS                       R1 R2 K1 ["setScrollHeight"]
        5 GETTABLEKS                       R3 R0 K2 ["CanvasPosition"]
        7 GETTABLEKS                       R2 R3 K3 ["Y"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScrollingFrame not mounted yet"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["current"]
       17 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       19 GETTABLEKS                       R1 R2 K5 ["Y"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K6 ["resultManager"]
       25 GETTABLEKS                       R0 R1 K7 ["setScrollHeight"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["current"]
       30 GETTABLEKS                       R2 R3 K8 ["CanvasPosition"]
       32 GETTABLEKS                       R1 R2 K5 ["Y"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resultManager"]
        3 GETTABLEKS                       R0 R1 K1 ["replace"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Up]
        4 JUMPIFNOTEQ                      R1 R2 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["resultManager"]
        9 GETTABLEKS                       R1 R2 K5 ["findPrevious"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
       15 GETIMPORT                        R2 K7 [Enum.KeyCode.Down]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["resultManager"]
       22 GETTABLEKS                       R1 R2 K8 ["findNext"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["addInputBegan"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 1
       10 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["fireInputBegan"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["fireInputEnded"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["scrollBarThickness"]
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
        2 DUPTABLE                         R4 K5 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
        3 LOADN                            R5 1
        4 SETTABLEKS                       R5 R4 K1 ["BackgroundTransparency"]
        6 GETTABLEKS                       R5 R0 K6 ["getBinding"]
        8 CALL                             R5 0 1
        9 DUPCLOSURE                       R7 K7 [PROTO_11]
       10 NAMECALL                         R5 R5 K8 ["map"]
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K2 ["Position"]
       15 GETIMPORT                        R5 K11 [UDim2.new]
       17 LOADN                            R6 1
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K12 ["resultRowHeight"]
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K3 ["Size"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K4 ["ZIndex"]
       29 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
       31 GETUPVAL                         R5 0
       32 GETUPVAL                         R6 3
       33 DUPTABLE                         R7 K17 [{"visibleNodeObservable", "hoveredObservable", "textLabelRef", "resultManager"}]
       34 SETTABLEKS                       R0 R7 K13 ["visibleNodeObservable"]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R9 R10 K16 ["resultManager"]
       39 GETTABLEKS                       R8 R9 K14 ["hoveredObservable"]
       41 SETTABLEKS                       R8 R7 K14 ["hoveredObservable"]
       43 GETUPVAL                         R9 4
       44 GETTABLE                         R8 R9 R1
       45 SETTABLEKS                       R8 R7 K15 ["textLabelRef"]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K16 ["resultManager"]
       50 SETTABLEKS                       R8 R7 K16 ["resultManager"]
       52 CALL                             R5 2 -1
       53 CALL                             R2 -1 1
       54 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["findResultsMinTextWidth"]
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K3 ["iconButtonSize"]
       11 MULK                             R5 R6 K2 [2]
       12 ADD                              R3 R4 R5
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["useMemo"]
       25 GETUPVAL                         R6 3
       26 NEWTABLE                         R7 0 0
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K6 ["useRef"]
       32 LOADNIL                          R7
       33 CALL                             R6 1 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K6 ["useRef"]
       37 LOADNIL                          R8
       38 CALL                             R7 1 1
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K0 ["useState"]
       42 LOADN                            R9 0
       43 CALL                             R8 1 2
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R9
       49 NEWTABLE                         R12 0 0
       51 CALL                             R10 2 1
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R13 0 0
       59 CALL                             R11 2 1
       60 GETUPVAL                         R13 1
       61 GETTABLEKS                       R12 R13 K7 ["useEffect"]
       63 NEWCLOSURE                       R13 P3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R14 0 0
       69 CALL                             R12 2 0
       70 GETUPVAL                         R13 1
       71 GETTABLEKS                       R12 R13 K4 ["useCallback"]
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
       90 GETTABLEKS                       R16 R0 K8 ["resultManager"]
       92 GETTABLEKS                       R15 R16 K12 ["setHovered"]
       94 MOVE                             R16 R13
       95 GETTABLEKS                       R18 R0 K8 ["resultManager"]
       97 GETTABLEKS                       R17 R18 K13 ["scrollHeightObservable"]
       99 MOVE                             R18 R6
      100 CALL                             R14 4 0
      101 GETUPVAL                         R14 6
      102 MOVE                             R15 R6
      103 GETTABLEKS                       R17 R0 K8 ["resultManager"]
      105 GETTABLEKS                       R16 R17 K14 ["scrollToVisibleIndexSignal"]
      107 CALL                             R14 2 0
      108 GETUPVAL                         R15 1
      109 GETTABLEKS                       R14 R15 K4 ["useCallback"]
      111 NEWCLOSURE                       R15 P5
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R16 0 0
      115 CALL                             R14 2 1
      116 GETUPVAL                         R15 7
      117 GETTABLEKS                       R17 R0 K8 ["resultManager"]
      119 GETTABLEKS                       R16 R17 K15 ["totalNumElementsObservable"]
      121 CALL                             R15 1 1
      122 GETUPVAL                         R16 8
      123 LENGTH                           R17 R13
      124 LOADNIL                          R18
      125 CALL                             R16 2 1
      126 GETUPVAL                         R18 1
      127 GETTABLEKS                       R17 R18 K7 ["useEffect"]
      129 NEWCLOSURE                       R18 P6
      130 CAPTURE                          UPVAL U9
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R0
      133 NEWTABLE                         R19 0 3
      135 MOVE                             R20 R5
      136 GETTABLEKS                       R21 R0 K8 ["resultManager"]
      138 MOVE                             R22 R13
      139 SETLIST                          R19 R20 3 [1]
      141 CALL                             R17 2 0
      142 GETUPVAL                         R18 1
      143 GETTABLEKS                       R17 R18 K4 ["useCallback"]
      145 NEWCLOSURE                       R18 P7
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          VAL R5
      148 NEWTABLE                         R19 0 1
      150 MOVE                             R20 R5
      151 SETLIST                          R19 R20 1 [1]
      153 CALL                             R17 2 1
      154 GETUPVAL                         R19 1
      155 GETTABLEKS                       R18 R19 K4 ["useCallback"]
      157 NEWCLOSURE                       R19 P8
      158 CAPTURE                          UPVAL U9
      159 CAPTURE                          VAL R5
      160 NEWTABLE                         R20 0 1
      162 MOVE                             R21 R5
      163 SETLIST                          R20 R21 1 [1]
      165 CALL                             R18 2 1
      166 GETUPVAL                         R20 1
      167 GETTABLEKS                       R19 R20 K16 ["createElement"]
      169 LOADK                            R20 K17 ["Frame"]
      170 NEWTABLE                         R21 4 0
      172 GETTABLEKS                       R22 R0 K18 ["LayoutOrder"]
      174 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      176 GETTABLEKS                       R22 R0 K19 ["ZIndex"]
      178 SETTABLEKS                       R22 R21 K19 ["ZIndex"]
      180 GETIMPORT                        R22 K22 [UDim2.fromOffset]
      182 LOADN                            R23 0
      183 GETTABLEKS                       R24 R0 K23 ["headerOffset"]
      185 CALL                             R22 2 1
      186 SETTABLEKS                       R22 R21 K24 ["Position"]
      188 GETUPVAL                         R23 1
      189 GETTABLEKS                       R22 R23 K25 ["Tag"]
      191 LOADK                            R23 K26 ["X-FitY X-Column X-Transparent data-testid=WidgetBodyFrame"]
      192 SETTABLE                         R23 R21 R22
      193 DUPTABLE                         R22 K31 [{"ControlsContainer", "ReplaceAllConfirmationDialog", "Divider", "ScrollingFrame"}]
      194 GETUPVAL                         R23 10
      195 LOADK                            R24 K17 ["Frame"]
      196 NEWTABLE                         R25 4 0
      198 GETTABLEKS                       R26 R0 K19 ["ZIndex"]
      200 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      202 MOVE                             R26 R1
      203 CALL                             R26 0 1
      204 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      206 GETUPVAL                         R27 1
      207 GETTABLEKS                       R26 R27 K25 ["Tag"]
      209 LOADK                            R27 K32 ["X-FitY X-Transparent data-testid=WidgetControlsContainer"]
      210 SETTABLE                         R27 R25 R26
      211 DUPTABLE                         R26 K36 [{"NavigationControls", "ReplaceControls", "UIPadding"}]
      212 GETUPVAL                         R27 10
      213 GETUPVAL                         R28 11
      214 DUPTABLE                         R29 K44 [{"ZIndex", "Visible", "numAllResults", "numAllScripts", "selection", "onSizeChanged", "onFindNextClicked", "onFindPreviousClicked"}]
      215 GETTABLEKS                       R30 R0 K19 ["ZIndex"]
      217 SETTABLEKS                       R30 R29 K19 ["ZIndex"]
      219 GETTABLEKS                       R31 R0 K45 ["confirmationDialogVisible"]
      221 NOT                              R30 R31
      222 SETTABLEKS                       R30 R29 K37 ["Visible"]
      224 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      226 GETTABLEKS                       R30 R31 K46 ["totalNumResultsObservable"]
      228 SETTABLEKS                       R30 R29 K38 ["numAllResults"]
      230 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      232 GETTABLEKS                       R30 R31 K47 ["totalNumScriptsObservable"]
      234 SETTABLEKS                       R30 R29 K39 ["numAllScripts"]
      236 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      238 GETTABLEKS                       R30 R31 K48 ["selectedObservable"]
      240 SETTABLEKS                       R30 R29 K40 ["selection"]
      242 SETTABLEKS                       R4 R29 K41 ["onSizeChanged"]
      244 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      246 GETTABLEKS                       R30 R31 K49 ["findNext"]
      248 SETTABLEKS                       R30 R29 K42 ["onFindNextClicked"]
      250 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      252 GETTABLEKS                       R30 R31 K50 ["findPrevious"]
      254 SETTABLEKS                       R30 R29 K43 ["onFindPreviousClicked"]
      256 CALL                             R27 2 1
      257 SETTABLEKS                       R27 R26 K33 ["NavigationControls"]
      259 GETUPVAL                         R27 10
      260 GETUPVAL                         R28 12
      261 DUPTABLE                         R29 K54 [{"ZIndex", "xOffset", "onReplaceButtonClicked", "selection", "numAllResults", "Visible", "onReplaceAllButtonClicked"}]
      262 GETTABLEKS                       R31 R0 K19 ["ZIndex"]
      264 ADDK                             R30 R31 K55 [1]
      265 SETTABLEKS                       R30 R29 K19 ["ZIndex"]
      267 SETTABLEKS                       R2 R29 K51 ["xOffset"]
      269 SETTABLEKS                       R14 R29 K52 ["onReplaceButtonClicked"]
      271 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      273 GETTABLEKS                       R30 R31 K48 ["selectedObservable"]
      275 SETTABLEKS                       R30 R29 K40 ["selection"]
      277 GETTABLEKS                       R31 R0 K8 ["resultManager"]
      279 GETTABLEKS                       R30 R31 K46 ["totalNumResultsObservable"]
      281 SETTABLEKS                       R30 R29 K38 ["numAllResults"]
      283 GETTABLEKS                       R31 R0 K56 ["showReplace"]
      285 JUMPIF                           R31 ; [+2]
      286 LOADB                            R30 0
      287 JUMP                             ; [+3]
      288 GETTABLEKS                       R31 R0 K45 ["confirmationDialogVisible"]
      290 NOT                              R30 R31
      291 SETTABLEKS                       R30 R29 K37 ["Visible"]
      293 GETTABLEKS                       R30 R0 K57 ["toggleConfirmationDialog"]
      295 SETTABLEKS                       R30 R29 K53 ["onReplaceAllButtonClicked"]
      297 CALL                             R27 2 1
      298 SETTABLEKS                       R27 R26 K34 ["ReplaceControls"]
      300 GETUPVAL                         R27 10
      301 LOADK                            R28 K35 ["UIPadding"]
      302 DUPTABLE                         R29 K61 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
      303 GETIMPORT                        R30 K64 [UDim.new]
      305 LOADN                            R31 0
      306 LOADN                            R32 2
      307 CALL                             R30 2 1
      308 SETTABLEKS                       R30 R29 K58 ["PaddingBottom"]
      310 GETIMPORT                        R30 K64 [UDim.new]
      312 LOADN                            R31 0
      313 LOADN                            R32 8
      314 CALL                             R30 2 1
      315 SETTABLEKS                       R30 R29 K59 ["PaddingLeft"]
      317 GETIMPORT                        R30 K64 [UDim.new]
      319 LOADN                            R31 0
      320 LOADN                            R32 8
      321 CALL                             R30 2 1
      322 SETTABLEKS                       R30 R29 K60 ["PaddingRight"]
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K35 ["UIPadding"]
      327 CALL                             R23 3 1
      328 SETTABLEKS                       R23 R22 K27 ["ControlsContainer"]
      330 GETUPVAL                         R23 10
      331 GETUPVAL                         R24 13
      332 DUPTABLE                         R25 K66 [{"ZIndex", "Visible", "onButtonClicked"}]
      333 GETTABLEKS                       R27 R0 K19 ["ZIndex"]
      335 ADDK                             R26 R27 K55 [1]
      336 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      338 GETTABLEKS                       R26 R0 K45 ["confirmationDialogVisible"]
      340 SETTABLEKS                       R26 R25 K37 ["Visible"]
      342 GETTABLEKS                       R26 R0 K57 ["toggleConfirmationDialog"]
      344 SETTABLEKS                       R26 R25 K65 ["onButtonClicked"]
      346 CALL                             R23 2 1
      347 SETTABLEKS                       R23 R22 K28 ["ReplaceAllConfirmationDialog"]
      349 GETUPVAL                         R23 10
      350 LOADK                            R24 K17 ["Frame"]
      351 NEWTABLE                         R25 4 0
      353 MOVE                             R26 R1
      354 CALL                             R26 0 1
      355 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      357 GETIMPORT                        R26 K67 [UDim2.new]
      359 LOADN                            R27 1
      360 LOADN                            R28 0
      361 LOADN                            R29 0
      362 LOADN                            R30 1
      363 CALL                             R26 4 1
      364 SETTABLEKS                       R26 R25 K68 ["Size"]
      366 GETUPVAL                         R27 1
      367 GETTABLEKS                       R26 R27 K25 ["Tag"]
      369 LOADK                            R27 K69 ["FindReplaceAll-UIStroke"]
      370 SETTABLE                         R27 R25 R26
      371 CALL                             R23 2 1
      372 SETTABLEKS                       R23 R22 K29 ["Divider"]
      374 GETUPVAL                         R23 10
      375 LOADK                            R24 K30 ["ScrollingFrame"]
      376 NEWTABLE                         R25 16 0
      378 MOVE                             R26 R1
      379 CALL                             R26 0 1
      380 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      382 LOADB                            R26 0
      383 SETTABLEKS                       R26 R25 K70 ["SmoothScroll"]
      385 GETUPVAL                         R29 2
      386 GETTABLEKS                       R28 R29 K72 ["resultRowHeight"]
      388 GETUPVAL                         R30 14
      389 GETTABLEKS                       R29 R30 K73 ["SCROLL_RATE"]
      391 MUL                              R27 R28 R29
      392 DIVK                             R26 R27 K71 [140]
      393 SETTABLEKS                       R26 R25 K74 ["ScrollRate"]
      395 LOADN                            R26 1
      396 SETTABLEKS                       R26 R25 K75 ["BackgroundTransparency"]
      398 LOADN                            R26 0
      399 SETTABLEKS                       R26 R25 K76 ["BorderSizePixel"]
      401 DUPCLOSURE                       R28 K77 [PROTO_10]
      402 CAPTURE                          UPVAL U2
      403 NAMECALL                         R26 R15 K78 ["map"]
      405 CALL                             R26 2 1
      406 SETTABLEKS                       R26 R25 K79 ["CanvasSize"]
      408 GETUPVAL                         R27 2
      409 GETTABLEKS                       R26 R27 K80 ["scrollBarThickness"]
      411 SETTABLEKS                       R26 R25 K81 ["ScrollBarThickness"]
      413 GETIMPORT                        R26 K85 [Enum.ScrollBarInset.Always]
      415 SETTABLEKS                       R26 R25 K86 ["VerticalScrollBarInset"]
      417 GETIMPORT                        R26 K88 [Enum.ScrollBarInset.None]
      419 SETTABLEKS                       R26 R25 K89 ["HorizontalScrollBarInset"]
      421 GETTABLEKS                       R27 R0 K19 ["ZIndex"]
      423 ADDK                             R26 R27 K55 [1]
      424 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      426 SETTABLEKS                       R6 R25 K90 ["ref"]
      428 GETUPVAL                         R28 1
      429 GETTABLEKS                       R27 R28 K91 ["Change"]
      431 GETTABLEKS                       R26 R27 K92 ["AbsoluteSize"]
      433 SETTABLE                         R10 R25 R26
      434 GETUPVAL                         R28 1
      435 GETTABLEKS                       R27 R28 K91 ["Change"]
      437 GETTABLEKS                       R26 R27 K93 ["CanvasPosition"]
      439 SETTABLE                         R11 R25 R26
      440 GETUPVAL                         R28 1
      441 GETTABLEKS                       R27 R28 K94 ["Event"]
      443 GETTABLEKS                       R26 R27 K95 ["InputBegan"]
      445 SETTABLE                         R17 R25 R26
      446 GETUPVAL                         R28 1
      447 GETTABLEKS                       R27 R28 K94 ["Event"]
      449 GETTABLEKS                       R26 R27 K96 ["InputEnded"]
      451 SETTABLE                         R18 R25 R26
      452 GETUPVAL                         R27 1
      453 GETTABLEKS                       R26 R27 K25 ["Tag"]
      455 LOADK                            R27 K97 ["FindReplaceAll-FillX FindReplaceAll-ScrollingFrame data-testid=WidgetScrollingFrame"]
      456 SETTABLE                         R27 R25 R26
      457 GETUPVAL                         R26 15
      458 MOVE                             R27 R13
      459 NEWCLOSURE                       R28 P10
      460 CAPTURE                          UPVAL U10
      461 CAPTURE                          UPVAL U2
      462 CAPTURE                          VAL R0
      463 CAPTURE                          UPVAL U16
      464 CAPTURE                          VAL R16
      465 CALL                             R26 2 -1
      466 CALL                             R23 -1 1
      467 SETTABLEKS                       R23 R22 K30 ["ScrollingFrame"]
      469 CALL                             R19 3 -1
      470 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createNextOrder"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Components"]
       29 GETTABLEKS                       R5 R6 K12 ["ReplaceAllConfirmationDialog"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["Components"]
       38 GETTABLEKS                       R6 R7 K13 ["ReplaceControls"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K11 ["Components"]
       47 GETTABLEKS                       R7 R8 K14 ["NavigationControls"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K11 ["Components"]
       56 GETTABLEKS                       R8 R9 K15 ["ResultRowNode"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K16 ["Resources"]
       65 GETTABLEKS                       R9 R10 K17 ["StyleConstants"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K18 ["Util"]
       74 GETTABLEKS                       R10 R11 K19 ["Constants"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R13 K18 ["Util"]
       83 GETTABLEKS                       R11 R12 K20 ["mapValues"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R14 K18 ["Util"]
       92 GETTABLEKS                       R12 R13 K21 ["createInputManager"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R15 K22 ["Hooks"]
      101 GETTABLEKS                       R13 R14 K23 ["useVisibleResultNodes"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R16 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R16 K22 ["Hooks"]
      110 GETTABLEKS                       R14 R15 K24 ["useScrollToSelection"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R17 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R17 K22 ["Hooks"]
      119 GETTABLEKS                       R15 R16 K25 ["useCanvasHeight"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K5 [require]
      124 GETTABLEKS                       R18 R0 K10 ["Src"]
      126 GETTABLEKS                       R17 R18 K22 ["Hooks"]
      128 GETTABLEKS                       R16 R17 K26 ["useRefs"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K5 [require]
      133 GETTABLEKS                       R19 R0 K10 ["Src"]
      135 GETTABLEKS                       R18 R19 K22 ["Hooks"]
      137 GETTABLEKS                       R17 R18 K27 ["useHoverTracker"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K5 [require]
      142 GETTABLEKS                       R19 R0 K10 ["Src"]
      144 GETTABLEKS                       R18 R19 K28 ["Types"]
      146 CALL                             R17 1 1
      147 GETTABLEKS                       R18 R1 K29 ["createElement"]
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R22 R0 K30 ["Bin"]
      153 GETTABLEKS                       R21 R22 K31 ["Common"]
      155 GETTABLEKS                       R20 R21 K32 ["defineLuaFlags"]
      157 CALL                             R19 1 1
      158 GETTABLEKS                       R20 R19 K33 ["getFFlagFindReplaceKeyboardNavigation"]
      160 DUPCLOSURE                       R21 K34 [PROTO_13]
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R7
      178 RETURN                           R21 1
