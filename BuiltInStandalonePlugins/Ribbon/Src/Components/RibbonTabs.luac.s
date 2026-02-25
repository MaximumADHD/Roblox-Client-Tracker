PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K1 ["GetTabProps"]
       12 MOVE                             R7 R0
       13 CALL                             R6 1 1
       14 DUPTABLE                         R7 K4 [{"LayoutOrder", "OnHover"}]
       15 GETUPVAL                         R8 6
       16 CALL                             R8 0 1
       17 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       19 GETUPVAL                         R9 7
       20 GETTABLEKS                       R8 R9 K5 ["OpenFloating"]
       22 SETTABLEKS                       R8 R7 K3 ["OnHover"]
       24 CALL                             R5 2 -1
       25 CALL                             R3 -1 1
       26 SETTABLE                         R3 R1 R2
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U6
       13 GETUPVAL                         R3 7
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETTABLEKS                       R8 R7 K0 ["Visible"]
       19 JUMPIFNOT                        R8 ; [+4]
       20 MOVE                             R8 R2
       21 GETTABLEKS                       R9 R7 K1 ["Identifier"]
       23 CALL                             R8 1 0
       24 FORGLOOP                         R3 2 ; [-8]
       26 MOVE                             R3 R2
       27 GETUPVAL                         R4 8
       28 CALL                             R3 1 0
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnOverflowMenuAddTab"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETIMPORT                        R1 K4 [Vector2.new]
       10 GETTABLEKS                       R4 R0 K5 ["AbsoluteCanvasSize"]
       12 GETTABLEKS                       R3 R4 K6 ["X"]
       14 GETTABLEKS                       R5 R0 K7 ["AbsoluteSize"]
       16 GETTABLEKS                       R4 R5 K6 ["X"]
       18 SUB                              R2 R3 R4
       19 LOADN                            R3 0
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K8 ["CanvasPosition"]
       23 RETURN                           R0 0

PROTO_3:
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
       16 GETTABLEKS                       R7 R4 K3 ["Layout"]
       18 GETTABLEKS                       R6 R7 K4 ["TabLayout"]
       20 GETUPVAL                         R7 5
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          UPVAL U10
       31 NEWTABLE                         R9 0 2
       33 MOVE                             R10 R6
       34 MOVE                             R11 R5
       35 SETLIST                          R9 R10 2 [1]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 11
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 12
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R8
       45 NEWTABLE                         R11 0 2
       47 MOVE                             R12 R5
       48 MOVE                             R13 R8
       49 SETLIST                          R11 R12 2 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R10 13
       53 CALL                             R10 0 1
       54 GETUPVAL                         R12 14
       55 GETTABLEKS                       R11 R12 K5 ["child"]
       57 GETTABLEKS                       R12 R0 K1 ["WidgetUri"]
       59 LOADK                            R13 K6 ["More"]
       60 CALL                             R11 2 1
       61 GETUPVAL                         R12 15
       62 MOVE                             R13 R11
       63 MOVE                             R14 R9
       64 CALL                             R12 2 1
       65 GETTABLEKS                       R14 R10 K7 ["Compact"]
       67 JUMPIF                           R14 ; [+2]
       68 LOADK                            R13 K8 ["X-Center"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R13
       71 GETTABLEKS                       R14 R2 K9 ["current"]
       73 JUMPIFNOTEQKS                    R14 K10 ["Left"] ; [+2]
       75 LOADNIL                          R13
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R14 R15 K11 ["createElement"]
       79 LOADK                            R15 K12 ["Frame"]
       80 NEWTABLE                         R16 4 0
       82 GETTABLEKS                       R17 R0 K13 ["LayoutOrder"]
       84 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       86 GETTABLEKS                       R18 R10 K14 ["RibbonTabs"]
       88 GETTABLEKS                       R17 R18 K15 ["Size"]
       90 SETTABLEKS                       R17 R16 K15 ["Size"]
       92 GETUPVAL                         R19 7
       93 GETTABLEKS                       R18 R19 K16 ["Change"]
       95 GETTABLEKS                       R17 R18 K17 ["AbsoluteSize"]
       97 GETTABLEKS                       R19 R10 K14 ["RibbonTabs"]
       99 GETTABLEKS                       R18 R19 K18 ["OnResized"]
      101 SETTABLE                         R18 R16 R17
      102 GETUPVAL                         R18 7
      103 GETTABLEKS                       R17 R18 K19 ["Tag"]
      105 GETUPVAL                         R18 16
      106 LOADK                            R20 K20 ["Component-RibbonTabs Role-Surface X-Middle data-testid=%*"]
      107 GETUPVAL                         R22 17
      108 GETTABLEKS                       R23 R0 K1 ["WidgetUri"]
      110 CALL                             R22 1 1
      111 NAMECALL                         R20 R20 K21 ["format"]
      113 CALL                             R20 2 1
      114 MOVE                             R19 R20
      115 GETTABLEKS                       R21 R10 K7 ["Compact"]
      117 JUMPIFNOT                        R21 ; [+2]
      118 LOADK                            R20 K7 ["Compact"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R20
      121 CALL                             R18 2 1
      122 SETTABLE                         R18 R16 R17
      123 DUPTABLE                         R17 K23 [{"CollapsibleScroller", "More"}]
      124 GETUPVAL                         R19 7
      125 GETTABLEKS                       R18 R19 K11 ["createElement"]
      127 LOADK                            R19 K12 ["Frame"]
      128 NEWTABLE                         R20 2 0
      130 MOVE                             R21 R1
      131 CALL                             R21 0 1
      132 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      134 GETUPVAL                         R22 7
      135 GETTABLEKS                       R21 R22 K19 ["Tag"]
      137 LOADK                            R22 K24 ["Role-Surface X-Fill X-Shrink"]
      138 SETTABLE                         R22 R20 R21
      139 DUPTABLE                         R21 K28 [{"Scroller", "LeftGradient", "RightGradient"}]
      140 GETUPVAL                         R23 7
      141 GETTABLEKS                       R22 R23 K11 ["createElement"]
      143 LOADK                            R23 K29 ["ScrollingFrame"]
      144 NEWTABLE                         R24 4 0
      146 SETTABLEKS                       R8 R24 K30 ["ref"]
      148 GETUPVAL                         R27 7
      149 GETTABLEKS                       R26 R27 K16 ["Change"]
      151 GETTABLEKS                       R25 R26 K17 ["AbsoluteSize"]
      153 GETTABLEKS                       R27 R10 K25 ["Scroller"]
      155 GETTABLEKS                       R26 R27 K18 ["OnResized"]
      157 SETTABLE                         R26 R24 R25
      158 GETUPVAL                         R27 7
      159 GETTABLEKS                       R26 R27 K16 ["Change"]
      161 GETTABLEKS                       R25 R26 K31 ["CanvasPosition"]
      163 GETTABLEKS                       R27 R10 K25 ["Scroller"]
      165 GETTABLEKS                       R26 R27 K32 ["OnCanvasMoved"]
      167 SETTABLE                         R26 R24 R25
      168 GETUPVAL                         R26 7
      169 GETTABLEKS                       R25 R26 K19 ["Tag"]
      171 GETUPVAL                         R26 16
      172 LOADK                            R27 K33 ["Role-Surface"]
      173 MOVE                             R28 R13
      174 CALL                             R26 2 1
      175 SETTABLE                         R26 R24 R25
      176 DUPTABLE                         R25 K35 [{"Wrapper"}]
      177 GETUPVAL                         R27 7
      178 GETTABLEKS                       R26 R27 K11 ["createElement"]
      180 LOADK                            R27 K12 ["Frame"]
      181 NEWTABLE                         R28 2 0
      183 GETUPVAL                         R31 7
      184 GETTABLEKS                       R30 R31 K16 ["Change"]
      186 GETTABLEKS                       R29 R30 K17 ["AbsoluteSize"]
      188 GETTABLEKS                       R31 R10 K34 ["Wrapper"]
      190 GETTABLEKS                       R30 R31 K18 ["OnResized"]
      192 SETTABLE                         R30 R28 R29
      193 GETUPVAL                         R30 7
      194 GETTABLEKS                       R29 R30 K19 ["Tag"]
      196 LOADK                            R30 K36 ["Role-Surface X-FitX X-Middle"]
      197 SETTABLE                         R30 R28 R29
      198 MOVE                             R29 R7
      199 CALL                             R26 3 1
      200 SETTABLEKS                       R26 R25 K34 ["Wrapper"]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K25 ["Scroller"]
      205 GETUPVAL                         R23 7
      206 GETTABLEKS                       R22 R23 K11 ["createElement"]
      208 LOADK                            R23 K12 ["Frame"]
      209 NEWTABLE                         R24 2 0
      211 GETTABLEKS                       R26 R10 K26 ["LeftGradient"]
      213 GETTABLEKS                       R25 R26 K37 ["Visible"]
      215 SETTABLEKS                       R25 R24 K37 ["Visible"]
      217 GETUPVAL                         R26 7
      218 GETTABLEKS                       R25 R26 K19 ["Tag"]
      220 LOADK                            R26 K38 ["Role-Surface100 X-FadeRight"]
      221 SETTABLE                         R26 R24 R25
      222 CALL                             R22 2 1
      223 SETTABLEKS                       R22 R21 K26 ["LeftGradient"]
      225 GETUPVAL                         R23 7
      226 GETTABLEKS                       R22 R23 K11 ["createElement"]
      228 LOADK                            R23 K12 ["Frame"]
      229 NEWTABLE                         R24 2 0
      231 GETTABLEKS                       R26 R10 K27 ["RightGradient"]
      233 GETTABLEKS                       R25 R26 K37 ["Visible"]
      235 SETTABLEKS                       R25 R24 K37 ["Visible"]
      237 GETUPVAL                         R26 7
      238 GETTABLEKS                       R25 R26 K19 ["Tag"]
      240 LOADK                            R26 K39 ["Role-Surface100 X-FadeLeft"]
      241 SETTABLE                         R26 R24 R25
      242 CALL                             R22 2 1
      243 SETTABLEKS                       R22 R21 K27 ["RightGradient"]
      245 CALL                             R18 3 1
      246 SETTABLEKS                       R18 R17 K22 ["CollapsibleScroller"]
      248 GETUPVAL                         R19 7
      249 GETTABLEKS                       R18 R19 K11 ["createElement"]
      251 GETUPVAL                         R19 18
      252 DUPTABLE                         R20 K44 [{"Uri", "Icon", "IconOnly", "OnSelect", "Size", "LayoutOrder"}]
      253 GETUPVAL                         R22 14
      254 GETTABLEKS                       R21 R22 K5 ["child"]
      256 GETTABLEKS                       R22 R0 K1 ["WidgetUri"]
      258 LOADK                            R23 K6 ["More"]
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K40 ["Uri"]
      262 LOADK                            R21 K6 ["More"]
      263 SETTABLEKS                       R21 R20 K41 ["Icon"]
      265 LOADB                            R21 1
      266 SETTABLEKS                       R21 R20 K42 ["IconOnly"]
      268 SETTABLEKS                       R12 R20 K43 ["OnSelect"]
      270 LOADK                            R21 K45 ["Small"]
      271 SETTABLEKS                       R21 R20 K15 ["Size"]
      273 MOVE                             R21 R1
      274 CALL                             R21 0 1
      275 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      277 CALL                             R18 2 1
      278 SETTABLEKS                       R18 R17 K6 ["More"]
      280 CALL                             R14 3 -1
      281 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETTABLEKS                       R4 R1 K10 ["useMemo"]
       20 GETTABLEKS                       R5 R1 K11 ["useRef"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R8 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R8 K12 ["Dash"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K13 ["join"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R10 R0 K6 ["Packages"]
       35 GETTABLEKS                       R9 R10 K14 ["Framework"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R10 R8 K15 ["Util"]
       40 GETTABLEKS                       R9 R10 K16 ["counter"]
       42 GETTABLEKS                       R11 R8 K17 ["Styling"]
       44 GETTABLEKS                       R10 R11 K18 ["joinTags"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R13 R0 K6 ["Packages"]
       50 GETTABLEKS                       R12 R13 K19 ["StudioFoundation"]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R13 R11 K15 ["Util"]
       55 GETTABLEKS                       R12 R13 K20 ["StudioUri"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R16 R0 K21 ["Src"]
       61 GETTABLEKS                       R15 R16 K22 ["Components"]
       63 GETTABLEKS                       R14 R15 K23 ["RibbonButton"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R17 R0 K21 ["Src"]
       70 GETTABLEKS                       R16 R17 K22 ["Components"]
       72 GETTABLEKS                       R15 R16 K24 ["Tab"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R18 R0 K21 ["Src"]
       79 GETTABLEKS                       R17 R18 K25 ["Contexts"]
       81 GETTABLEKS                       R16 R17 K26 ["RibbonDefinition"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R19 R0 K21 ["Src"]
       88 GETTABLEKS                       R18 R19 K25 ["Contexts"]
       90 GETTABLEKS                       R17 R18 K27 ["TabLocation"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R20 R0 K21 ["Src"]
       97 GETTABLEKS                       R19 R20 K28 ["Hooks"]
       99 GETTABLEKS                       R18 R19 K29 ["useTabController"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R21 R0 K21 ["Src"]
      106 GETTABLEKS                       R20 R21 K28 ["Hooks"]
      108 GETTABLEKS                       R19 R20 K30 ["useTabOverflowMenu"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R22 R0 K21 ["Src"]
      115 GETTABLEKS                       R21 R22 K28 ["Hooks"]
      117 GETTABLEKS                       R20 R21 K31 ["useTabResponsiveness"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R23 R0 K21 ["Src"]
      124 GETTABLEKS                       R22 R23 K15 ["Util"]
      126 GETTABLEKS                       R21 R22 K32 ["controlsIdentifierToString"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R24 R0 K21 ["Src"]
      133 GETTABLEKS                       R23 R24 K15 ["Util"]
      135 GETTABLEKS                       R22 R23 K33 ["uriToTestId"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K5 [require]
      140 GETTABLEKS                       R24 R0 K21 ["Src"]
      142 GETTABLEKS                       R23 R24 K34 ["Types"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K37 [table.freeze]
      147 DUPTABLE                         R24 K40 [{"Type", "Filename"}]
      148 LOADK                            R25 K41 ["Reserved"]
      149 SETTABLEKS                       R25 R24 K38 ["Type"]
      151 LOADK                            R25 K42 ["Custom"]
      152 SETTABLEKS                       R25 R24 K39 ["Filename"]
      154 CALL                             R23 1 1
      155 DUPCLOSURE                       R24 K43 [PROTO_3]
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R13
      175 RETURN                           R24 1
