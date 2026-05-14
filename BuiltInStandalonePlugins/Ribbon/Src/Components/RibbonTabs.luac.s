PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 SETTABLE                         R1 R3 R2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["createElement"]
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R6 5
       15 GETUPVAL                         R7 6
       16 GETTABLEKS                       R7 R7 K2 ["GetTabProps"]
       18 MOVE                             R8 R0
       19 CALL                             R7 1 1
       20 DUPTABLE                         R8 K7 [{"LayoutOrder", "OnHover", "OnHoverEnd", "ForwardRef"}]
       21 GETUPVAL                         R9 7
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       25 GETUPVAL                         R9 8
       26 GETTABLEKS                       R9 R9 K8 ["OpenFloating"]
       28 SETTABLEKS                       R9 R8 K4 ["OnHover"]
       30 GETUPVAL                         R10 9
       31 CALL                             R10 0 1
       32 JUMPIFNOT                        R10 ; [+4]
       33 GETUPVAL                         R9 8
       34 GETTABLEKS                       R9 R9 K9 ["CancelOpenFloating"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R9
       38 SETTABLEKS                       R9 R8 K5 ["OnHoverEnd"]
       40 SETTABLEKS                       R1 R8 K6 ["ForwardRef"]
       42 CALL                             R6 2 -1
       43 CALL                             R4 -1 1
       44 SETTABLE                         R4 R3 R2
       45 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 GETUPVAL                         R4 8
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R9 R8 K0 ["Visible"]
       23 JUMPIFNOT                        R9 ; [+4]
       24 MOVE                             R9 R3
       25 GETTABLEKS                       R10 R8 K1 ["Identifier"]
       27 CALL                             R9 1 0
       28 FORGLOOP                         R4 2 ; [-8]
       30 MOVE                             R4 R3
       31 GETUPVAL                         R5 9
       32 CALL                             R4 1 0
       33 DUPTABLE                         R4 K4 [{"tabs", "tabRefs"}]
       34 SETTABLEKS                       R2 R4 K2 ["tabs"]
       36 SETTABLEKS                       R0 R4 K3 ["tabRefs"]
       38 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOverflowMenuAddTab"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETIMPORT                        R1 K4 [Vector2.new]
       10 GETTABLEKS                       R3 R0 K5 ["AbsoluteCanvasSize"]
       12 GETTABLEKS                       R3 R3 K6 ["X"]
       14 GETTABLEKS                       R4 R0 K7 ["AbsoluteSize"]
       16 GETTABLEKS                       R4 R4 K6 ["X"]
       18 SUB                              R2 R3 R4
       19 LOADN                            R3 0
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K8 ["CanvasPosition"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["current"]
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["ActiveTabState"]
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R4 R1 K6 ["Position"]
       19 GETTABLEKS                       R4 R4 K7 ["Z"]
       21 LOADN                            R5 0
       22 JUMPIFNOTLT                      R5 R4 ; [+3]
       24 LOADN                            R3 255
       25 JUMP                             ; [+1]
       26 LOADN                            R3 1
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R6 R2 K8 ["Identifier"]
       31 MOVE                             R7 R3
       32 CALL                             R4 3 1
       33 JUMPIFNOT                        R4 ; [+13]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K9 ["GetTabProps"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K10 ["OnSelected"]
       41 JUMPIFNOT                        R6 ; [+5]
       42 GETTABLEKS                       R6 R5 K10 ["OnSelected"]
       44 GETTABLEKS                       R7 R5 K11 ["Uri"]
       46 CALL                             R6 1 0
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K4 ["current"]
       50 JUMPIFNOT                        R4 ; [+58]
       51 JUMPIFNOT                        R5 ; [+57]
       52 GETUPVAL                         R6 6
       53 MOVE                             R7 R4
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 7
       56 GETTABLEKS                       R8 R8 K12 ["tabRefs"]
       58 GETTABLE                         R7 R8 R6
       59 GETTABLEKS                       R7 R7 K4 ["current"]
       61 JUMPIFNOT                        R7 ; [+47]
       62 GETTABLEKS                       R10 R7 K13 ["AbsolutePosition"]
       64 GETTABLEKS                       R10 R10 K14 ["X"]
       66 GETTABLEKS                       R11 R5 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R11 R11 K14 ["X"]
       70 SUB                              R9 R10 R11
       71 GETTABLEKS                       R10 R5 K15 ["CanvasPosition"]
       73 GETTABLEKS                       R10 R10 K14 ["X"]
       75 ADD                              R8 R9 R10
       76 GETTABLEKS                       R10 R7 K16 ["AbsoluteSize"]
       78 GETTABLEKS                       R10 R10 K14 ["X"]
       80 ADD                              R9 R8 R10
       81 GETTABLEKS                       R10 R5 K16 ["AbsoluteSize"]
       83 GETTABLEKS                       R10 R10 K14 ["X"]
       85 GETTABLEKS                       R11 R5 K15 ["CanvasPosition"]
       87 GETTABLEKS                       R11 R11 K14 ["X"]
       89 JUMPIFNOTLT                      R8 R11 ; [+9]
       91 GETIMPORT                        R12 K19 [Vector2.new]
       93 MOVE                             R13 R8
       94 LOADN                            R14 0
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R5 K15 ["CanvasPosition"]
       98 JUMP                             ; [+10]
       99 ADD                              R12 R11 R10
      100 JUMPIFNOTLT                      R12 R9 ; [+8]
      102 GETIMPORT                        R12 K19 [Vector2.new]
      104 SUB                              R13 R9 R10
      105 LOADN                            R14 0
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R5 K15 ["CanvasPosition"]
      109 GETUPVAL                         R6 0
      110 GETIMPORT                        R7 K22 [task.delay]
      112 GETUPVAL                         R9 8
      113 CALL                             R9 0 1
      114 DIVK                             R8 R9 K23 [1000]
      115 NEWCLOSURE                       R9 P0
      116 CAPTURE                          UPVAL U0
      117 CALL                             R7 2 1
      118 SETTABLEKS                       R7 R6 K4 ["current"]
      120 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 3
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K0 ["Definition"]
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R6 R0 K1 ["WidgetUri"]
       13 GETTABLEKS                       R7 R0 K2 ["ToggleFloating"]
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R6 R4 K3 ["Layout"]
       18 GETTABLEKS                       R6 R6 K4 ["TabLayout"]
       20 GETUPVAL                         R7 5
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U11
       32 NEWTABLE                         R9 0 2
       34 MOVE                             R10 R6
       35 MOVE                             R11 R5
       36 SETLIST                          R9 R10 2 [1]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 12
       40 LOADNIL                          R9
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 13
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R8
       46 NEWTABLE                         R11 0 2
       48 MOVE                             R12 R5
       49 MOVE                             R13 R8
       50 SETLIST                          R11 R12 2 [1]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 14
       54 CALL                             R10 0 1
       55 GETUPVAL                         R11 15
       56 GETTABLEKS                       R11 R11 K5 ["child"]
       58 GETTABLEKS                       R12 R0 K1 ["WidgetUri"]
       60 LOADK                            R13 K6 ["More"]
       61 CALL                             R11 2 1
       62 GETUPVAL                         R12 16
       63 MOVE                             R13 R11
       64 MOVE                             R14 R9
       65 CALL                             R12 2 1
       66 GETTABLEKS                       R14 R10 K7 ["Compact"]
       68 JUMPIF                           R14 ; [+2]
       69 LOADK                            R13 K8 ["X-Center"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R13
       72 GETTABLEKS                       R14 R2 K9 ["current"]
       74 JUMPIFNOTEQKS                    R14 K10 ["Left"] ; [+2]
       76 LOADNIL                          R13
       77 GETUPVAL                         R14 12
       78 LOADNIL                          R15
       79 CALL                             R14 1 1
       80 GETUPVAL                         R15 13
       81 NEWCLOSURE                       R16 P2
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R3
       84 CAPTURE                          UPVAL U17
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          VAL R7
       90 CAPTURE                          UPVAL U18
       91 NEWTABLE                         R17 0 4
       93 MOVE                             R18 R3
       94 MOVE                             R19 R6
       95 MOVE                             R20 R5
       96 MOVE                             R21 R8
       97 SETLIST                          R17 R18 4 [1]
       99 CALL                             R15 2 1
      100 GETUPVAL                         R16 6
      101 GETTABLEKS                       R16 R16 K11 ["createElement"]
      103 LOADK                            R17 K12 ["Frame"]
      104 NEWTABLE                         R18 4 0
      106 GETTABLEKS                       R19 R0 K13 ["LayoutOrder"]
      108 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      110 GETTABLEKS                       R19 R10 K14 ["RibbonTabs"]
      112 GETTABLEKS                       R19 R19 K15 ["Size"]
      114 SETTABLEKS                       R19 R18 K15 ["Size"]
      116 GETUPVAL                         R19 6
      117 GETTABLEKS                       R19 R19 K16 ["Change"]
      119 GETTABLEKS                       R19 R19 K17 ["AbsoluteSize"]
      121 GETTABLEKS                       R20 R10 K14 ["RibbonTabs"]
      123 GETTABLEKS                       R20 R20 K18 ["OnResized"]
      125 SETTABLE                         R20 R18 R19
      126 GETUPVAL                         R19 6
      127 GETTABLEKS                       R19 R19 K19 ["Tag"]
      129 GETUPVAL                         R20 19
      130 LOADK                            R22 K20 ["Component-RibbonTabs Role-Surface X-Middle data-testid=%*"]
      131 GETUPVAL                         R24 20
      132 GETTABLEKS                       R25 R0 K1 ["WidgetUri"]
      134 CALL                             R24 1 1
      135 NAMECALL                         R22 R22 K21 ["format"]
      137 CALL                             R22 2 1
      138 MOVE                             R21 R22
      139 GETTABLEKS                       R23 R10 K7 ["Compact"]
      141 JUMPIFNOT                        R23 ; [+2]
      142 LOADK                            R22 K7 ["Compact"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R22
      145 CALL                             R20 2 1
      146 SETTABLE                         R20 R18 R19
      147 DUPTABLE                         R19 K23 [{"CollapsibleScroller", "More"}]
      148 GETUPVAL                         R20 6
      149 GETTABLEKS                       R20 R20 K11 ["createElement"]
      151 LOADK                            R21 K12 ["Frame"]
      152 NEWTABLE                         R22 2 0
      154 MOVE                             R23 R1
      155 CALL                             R23 0 1
      156 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      158 GETUPVAL                         R23 6
      159 GETTABLEKS                       R23 R23 K19 ["Tag"]
      161 LOADK                            R24 K24 ["Role-Surface X-Fill X-Shrink"]
      162 SETTABLE                         R24 R22 R23
      163 DUPTABLE                         R23 K28 [{"Scroller", "LeftGradient", "RightGradient"}]
      164 GETUPVAL                         R24 6
      165 GETTABLEKS                       R24 R24 K11 ["createElement"]
      167 LOADK                            R25 K29 ["ScrollingFrame"]
      168 NEWTABLE                         R26 8 0
      170 SETTABLEKS                       R8 R26 K30 ["ref"]
      172 GETUPVAL                         R28 21
      173 CALL                             R28 0 1
      174 JUMPIFNOT                        R28 ; [+2]
      175 LOADB                            R27 0
      176 JUMP                             ; [+1]
      177 LOADB                            R27 1
      178 SETTABLEKS                       R27 R26 K31 ["ScrollingEnabled"]
      180 GETUPVAL                         R27 6
      181 GETTABLEKS                       R27 R27 K16 ["Change"]
      183 GETTABLEKS                       R27 R27 K17 ["AbsoluteSize"]
      185 GETTABLEKS                       R28 R10 K25 ["Scroller"]
      187 GETTABLEKS                       R28 R28 K18 ["OnResized"]
      189 SETTABLE                         R28 R26 R27
      190 GETUPVAL                         R27 6
      191 GETTABLEKS                       R27 R27 K16 ["Change"]
      193 GETTABLEKS                       R27 R27 K32 ["CanvasPosition"]
      195 GETTABLEKS                       R28 R10 K25 ["Scroller"]
      197 GETTABLEKS                       R28 R28 K33 ["OnCanvasMoved"]
      199 SETTABLE                         R28 R26 R27
      200 GETUPVAL                         R27 6
      201 GETTABLEKS                       R27 R27 K34 ["Event"]
      203 GETTABLEKS                       R27 R27 K35 ["InputChanged"]
      205 GETUPVAL                         R29 21
      206 CALL                             R29 0 1
      207 JUMPIFNOT                        R29 ; [+2]
      208 MOVE                             R28 R15
      209 JUMP                             ; [+1]
      210 LOADNIL                          R28
      211 SETTABLE                         R28 R26 R27
      212 GETUPVAL                         R27 6
      213 GETTABLEKS                       R27 R27 K19 ["Tag"]
      215 GETUPVAL                         R28 19
      216 LOADK                            R29 K36 ["Role-Surface"]
      217 MOVE                             R30 R13
      218 CALL                             R28 2 1
      219 SETTABLE                         R28 R26 R27
      220 DUPTABLE                         R27 K38 [{"Wrapper"}]
      221 GETUPVAL                         R28 6
      222 GETTABLEKS                       R28 R28 K11 ["createElement"]
      224 LOADK                            R29 K12 ["Frame"]
      225 NEWTABLE                         R30 2 0
      227 GETUPVAL                         R31 6
      228 GETTABLEKS                       R31 R31 K16 ["Change"]
      230 GETTABLEKS                       R31 R31 K17 ["AbsoluteSize"]
      232 GETTABLEKS                       R32 R10 K37 ["Wrapper"]
      234 GETTABLEKS                       R32 R32 K18 ["OnResized"]
      236 SETTABLE                         R32 R30 R31
      237 GETUPVAL                         R31 6
      238 GETTABLEKS                       R31 R31 K19 ["Tag"]
      240 LOADK                            R32 K39 ["Role-Surface X-FitX X-Middle"]
      241 SETTABLE                         R32 R30 R31
      242 GETTABLEKS                       R31 R7 K40 ["tabs"]
      244 CALL                             R28 3 1
      245 SETTABLEKS                       R28 R27 K37 ["Wrapper"]
      247 CALL                             R24 3 1
      248 SETTABLEKS                       R24 R23 K25 ["Scroller"]
      250 GETUPVAL                         R24 6
      251 GETTABLEKS                       R24 R24 K11 ["createElement"]
      253 LOADK                            R25 K12 ["Frame"]
      254 NEWTABLE                         R26 2 0
      256 GETTABLEKS                       R27 R10 K26 ["LeftGradient"]
      258 GETTABLEKS                       R27 R27 K41 ["Visible"]
      260 SETTABLEKS                       R27 R26 K41 ["Visible"]
      262 GETUPVAL                         R27 6
      263 GETTABLEKS                       R27 R27 K19 ["Tag"]
      265 LOADK                            R28 K42 ["Role-Surface100 X-FadeRight"]
      266 SETTABLE                         R28 R26 R27
      267 CALL                             R24 2 1
      268 SETTABLEKS                       R24 R23 K26 ["LeftGradient"]
      270 GETUPVAL                         R24 6
      271 GETTABLEKS                       R24 R24 K11 ["createElement"]
      273 LOADK                            R25 K12 ["Frame"]
      274 NEWTABLE                         R26 2 0
      276 GETTABLEKS                       R27 R10 K27 ["RightGradient"]
      278 GETTABLEKS                       R27 R27 K41 ["Visible"]
      280 SETTABLEKS                       R27 R26 K41 ["Visible"]
      282 GETUPVAL                         R27 6
      283 GETTABLEKS                       R27 R27 K19 ["Tag"]
      285 LOADK                            R28 K43 ["Role-Surface100 X-FadeLeft"]
      286 SETTABLE                         R28 R26 R27
      287 CALL                             R24 2 1
      288 SETTABLEKS                       R24 R23 K27 ["RightGradient"]
      290 CALL                             R20 3 1
      291 SETTABLEKS                       R20 R19 K22 ["CollapsibleScroller"]
      293 GETUPVAL                         R20 6
      294 GETTABLEKS                       R20 R20 K11 ["createElement"]
      296 GETUPVAL                         R21 22
      297 DUPTABLE                         R22 K48 [{"Uri", "Icon", "IconOnly", "OnSelect", "Size", "LayoutOrder"}]
      298 GETUPVAL                         R23 15
      299 GETTABLEKS                       R23 R23 K5 ["child"]
      301 GETTABLEKS                       R24 R0 K1 ["WidgetUri"]
      303 LOADK                            R25 K6 ["More"]
      304 CALL                             R23 2 1
      305 SETTABLEKS                       R23 R22 K44 ["Uri"]
      307 LOADK                            R23 K6 ["More"]
      308 SETTABLEKS                       R23 R22 K45 ["Icon"]
      310 LOADB                            R23 1
      311 SETTABLEKS                       R23 R22 K46 ["IconOnly"]
      313 SETTABLEKS                       R12 R22 K47 ["OnSelect"]
      315 LOADK                            R23 K49 ["Small"]
      316 SETTABLEKS                       R23 R22 K15 ["Size"]
      318 MOVE                             R23 R1
      319 CALL                             R23 0 1
      320 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      322 CALL                             R20 2 1
      323 SETTABLEKS                       R20 R19 K6 ["More"]
      325 CALL                             R16 3 -1
      326 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagRibbonMouseWheelTabs"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFIntRibbonMouseWheelTabsScrollDelayMilliseconds"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["useCallback"]
       34 GETTABLEKS                       R5 R3 K13 ["useContext"]
       36 GETTABLEKS                       R6 R3 K14 ["useMemo"]
       38 GETTABLEKS                       R7 R3 K15 ["useRef"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K10 ["Packages"]
       44 GETTABLEKS                       R9 R9 K16 ["Dash"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R8 K17 ["join"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K10 ["Packages"]
       53 GETTABLEKS                       R11 R11 K18 ["Framework"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R10 K19 ["Util"]
       58 GETTABLEKS                       R11 R11 K20 ["counter"]
       60 GETTABLEKS                       R12 R10 K21 ["Styling"]
       62 GETTABLEKS                       R12 R12 K22 ["joinTags"]
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R0 K10 ["Packages"]
       68 GETTABLEKS                       R14 R14 K23 ["StudioFoundation"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R13 K19 ["Util"]
       73 GETTABLEKS                       R14 R14 K24 ["StudioUri"]
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R0 K6 ["Src"]
       79 GETTABLEKS                       R16 R16 K25 ["Components"]
       81 GETTABLEKS                       R16 R16 K26 ["RibbonButton"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R17 R0 K6 ["Src"]
       88 GETTABLEKS                       R17 R17 K25 ["Components"]
       90 GETTABLEKS                       R17 R17 K27 ["Tab"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R0 K6 ["Src"]
       97 GETTABLEKS                       R18 R18 K28 ["Contexts"]
       99 GETTABLEKS                       R18 R18 K29 ["RibbonDefinition"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R19 R0 K6 ["Src"]
      106 GETTABLEKS                       R19 R19 K28 ["Contexts"]
      108 GETTABLEKS                       R19 R19 K30 ["TabLocation"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K6 ["Src"]
      115 GETTABLEKS                       R20 R20 K31 ["Hooks"]
      117 GETTABLEKS                       R20 R20 K32 ["useTabController"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R21 R0 K6 ["Src"]
      124 GETTABLEKS                       R21 R21 K31 ["Hooks"]
      126 GETTABLEKS                       R21 R21 K33 ["useTabOverflowMenu"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R22 R0 K6 ["Src"]
      133 GETTABLEKS                       R22 R22 K31 ["Hooks"]
      135 GETTABLEKS                       R22 R22 K34 ["useTabResponsiveness"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K5 [require]
      140 GETTABLEKS                       R23 R0 K6 ["Src"]
      142 GETTABLEKS                       R23 R23 K19 ["Util"]
      144 GETTABLEKS                       R23 R23 K35 ["controlsIdentifierToString"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K5 [require]
      149 GETTABLEKS                       R24 R0 K6 ["Src"]
      151 GETTABLEKS                       R24 R24 K19 ["Util"]
      153 GETTABLEKS                       R24 R24 K36 ["getAdjacentVisibleTab"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K5 [require]
      158 GETTABLEKS                       R25 R0 K6 ["Src"]
      160 GETTABLEKS                       R25 R25 K19 ["Util"]
      162 GETTABLEKS                       R25 R25 K37 ["uriToTestId"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K5 [require]
      167 GETTABLEKS                       R26 R0 K6 ["Src"]
      169 GETTABLEKS                       R26 R26 K7 ["SharedFlags"]
      171 GETTABLEKS                       R26 R26 K38 ["getFFlagRibbonCancelShowFloatingTask"]
      173 CALL                             R25 1 1
      174 GETIMPORT                        R26 K5 [require]
      176 GETTABLEKS                       R27 R0 K6 ["Src"]
      178 GETTABLEKS                       R27 R27 K39 ["Types"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K42 [table.freeze]
      183 DUPTABLE                         R28 K45 [{"Type", "Filename"}]
      184 LOADK                            R29 K46 ["Reserved"]
      185 SETTABLEKS                       R29 R28 K43 ["Type"]
      187 LOADK                            R29 K47 ["Custom"]
      188 SETTABLEKS                       R29 R28 K44 ["Filename"]
      190 CALL                             R27 1 1
      191 DUPCLOSURE                       R28 K48 [PROTO_5]
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R15
      215 RETURN                           R28 1
