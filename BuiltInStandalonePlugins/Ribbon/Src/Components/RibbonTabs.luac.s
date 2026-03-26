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
       14 DUPTABLE                         R7 K5 [{"LayoutOrder", "OnHover", "OnHoverEnd"}]
       15 GETUPVAL                         R8 6
       16 CALL                             R8 0 1
       17 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       19 GETUPVAL                         R9 7
       20 GETTABLEKS                       R8 R9 K6 ["OpenFloating"]
       22 SETTABLEKS                       R8 R7 K3 ["OnHover"]
       24 GETUPVAL                         R9 8
       25 CALL                             R9 0 1
       26 JUMPIFNOT                        R9 ; [+4]
       27 GETUPVAL                         R9 7
       28 GETTABLEKS                       R8 R9 K7 ["CancelOpenFloating"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 SETTABLEKS                       R8 R7 K4 ["OnHoverEnd"]
       34 CALL                             R5 2 -1
       35 CALL                             R3 -1 1
       36 SETTABLE                         R3 R1 R2
       37 RETURN                           R0 0

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
       13 CAPTURE                          UPVAL U7
       14 GETUPVAL                         R3 8
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETTABLEKS                       R8 R7 K0 ["Visible"]
       20 JUMPIFNOT                        R8 ; [+4]
       21 MOVE                             R8 R2
       22 GETTABLEKS                       R9 R7 K1 ["Identifier"]
       24 CALL                             R8 1 0
       25 FORGLOOP                         R3 2 ; [-8]
       27 MOVE                             R3 R2
       28 GETUPVAL                         R4 9
       29 CALL                             R3 1 0
       30 RETURN                           R1 1

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
       55 GETUPVAL                         R12 15
       56 GETTABLEKS                       R11 R12 K5 ["child"]
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
       77 GETUPVAL                         R15 7
       78 GETTABLEKS                       R14 R15 K11 ["createElement"]
       80 LOADK                            R15 K12 ["Frame"]
       81 NEWTABLE                         R16 4 0
       83 GETTABLEKS                       R17 R0 K13 ["LayoutOrder"]
       85 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       87 GETTABLEKS                       R18 R10 K14 ["RibbonTabs"]
       89 GETTABLEKS                       R17 R18 K15 ["Size"]
       91 SETTABLEKS                       R17 R16 K15 ["Size"]
       93 GETUPVAL                         R19 7
       94 GETTABLEKS                       R18 R19 K16 ["Change"]
       96 GETTABLEKS                       R17 R18 K17 ["AbsoluteSize"]
       98 GETTABLEKS                       R19 R10 K14 ["RibbonTabs"]
      100 GETTABLEKS                       R18 R19 K18 ["OnResized"]
      102 SETTABLE                         R18 R16 R17
      103 GETUPVAL                         R18 7
      104 GETTABLEKS                       R17 R18 K19 ["Tag"]
      106 GETUPVAL                         R18 17
      107 LOADK                            R20 K20 ["Component-RibbonTabs Role-Surface X-Middle data-testid=%*"]
      108 GETUPVAL                         R22 18
      109 GETTABLEKS                       R23 R0 K1 ["WidgetUri"]
      111 CALL                             R22 1 1
      112 NAMECALL                         R20 R20 K21 ["format"]
      114 CALL                             R20 2 1
      115 MOVE                             R19 R20
      116 GETTABLEKS                       R21 R10 K7 ["Compact"]
      118 JUMPIFNOT                        R21 ; [+2]
      119 LOADK                            R20 K7 ["Compact"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R20
      122 CALL                             R18 2 1
      123 SETTABLE                         R18 R16 R17
      124 DUPTABLE                         R17 K23 [{"CollapsibleScroller", "More"}]
      125 GETUPVAL                         R19 7
      126 GETTABLEKS                       R18 R19 K11 ["createElement"]
      128 LOADK                            R19 K12 ["Frame"]
      129 NEWTABLE                         R20 2 0
      131 MOVE                             R21 R1
      132 CALL                             R21 0 1
      133 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      135 GETUPVAL                         R22 7
      136 GETTABLEKS                       R21 R22 K19 ["Tag"]
      138 LOADK                            R22 K24 ["Role-Surface X-Fill X-Shrink"]
      139 SETTABLE                         R22 R20 R21
      140 DUPTABLE                         R21 K28 [{"Scroller", "LeftGradient", "RightGradient"}]
      141 GETUPVAL                         R23 7
      142 GETTABLEKS                       R22 R23 K11 ["createElement"]
      144 LOADK                            R23 K29 ["ScrollingFrame"]
      145 NEWTABLE                         R24 4 0
      147 SETTABLEKS                       R8 R24 K30 ["ref"]
      149 GETUPVAL                         R27 7
      150 GETTABLEKS                       R26 R27 K16 ["Change"]
      152 GETTABLEKS                       R25 R26 K17 ["AbsoluteSize"]
      154 GETTABLEKS                       R27 R10 K25 ["Scroller"]
      156 GETTABLEKS                       R26 R27 K18 ["OnResized"]
      158 SETTABLE                         R26 R24 R25
      159 GETUPVAL                         R27 7
      160 GETTABLEKS                       R26 R27 K16 ["Change"]
      162 GETTABLEKS                       R25 R26 K31 ["CanvasPosition"]
      164 GETTABLEKS                       R27 R10 K25 ["Scroller"]
      166 GETTABLEKS                       R26 R27 K32 ["OnCanvasMoved"]
      168 SETTABLE                         R26 R24 R25
      169 GETUPVAL                         R26 7
      170 GETTABLEKS                       R25 R26 K19 ["Tag"]
      172 GETUPVAL                         R26 17
      173 LOADK                            R27 K33 ["Role-Surface"]
      174 MOVE                             R28 R13
      175 CALL                             R26 2 1
      176 SETTABLE                         R26 R24 R25
      177 DUPTABLE                         R25 K35 [{"Wrapper"}]
      178 GETUPVAL                         R27 7
      179 GETTABLEKS                       R26 R27 K11 ["createElement"]
      181 LOADK                            R27 K12 ["Frame"]
      182 NEWTABLE                         R28 2 0
      184 GETUPVAL                         R31 7
      185 GETTABLEKS                       R30 R31 K16 ["Change"]
      187 GETTABLEKS                       R29 R30 K17 ["AbsoluteSize"]
      189 GETTABLEKS                       R31 R10 K34 ["Wrapper"]
      191 GETTABLEKS                       R30 R31 K18 ["OnResized"]
      193 SETTABLE                         R30 R28 R29
      194 GETUPVAL                         R30 7
      195 GETTABLEKS                       R29 R30 K19 ["Tag"]
      197 LOADK                            R30 K36 ["Role-Surface X-FitX X-Middle"]
      198 SETTABLE                         R30 R28 R29
      199 MOVE                             R29 R7
      200 CALL                             R26 3 1
      201 SETTABLEKS                       R26 R25 K34 ["Wrapper"]
      203 CALL                             R22 3 1
      204 SETTABLEKS                       R22 R21 K25 ["Scroller"]
      206 GETUPVAL                         R23 7
      207 GETTABLEKS                       R22 R23 K11 ["createElement"]
      209 LOADK                            R23 K12 ["Frame"]
      210 NEWTABLE                         R24 2 0
      212 GETTABLEKS                       R26 R10 K26 ["LeftGradient"]
      214 GETTABLEKS                       R25 R26 K37 ["Visible"]
      216 SETTABLEKS                       R25 R24 K37 ["Visible"]
      218 GETUPVAL                         R26 7
      219 GETTABLEKS                       R25 R26 K19 ["Tag"]
      221 LOADK                            R26 K38 ["Role-Surface100 X-FadeRight"]
      222 SETTABLE                         R26 R24 R25
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K26 ["LeftGradient"]
      226 GETUPVAL                         R23 7
      227 GETTABLEKS                       R22 R23 K11 ["createElement"]
      229 LOADK                            R23 K12 ["Frame"]
      230 NEWTABLE                         R24 2 0
      232 GETTABLEKS                       R26 R10 K27 ["RightGradient"]
      234 GETTABLEKS                       R25 R26 K37 ["Visible"]
      236 SETTABLEKS                       R25 R24 K37 ["Visible"]
      238 GETUPVAL                         R26 7
      239 GETTABLEKS                       R25 R26 K19 ["Tag"]
      241 LOADK                            R26 K39 ["Role-Surface100 X-FadeLeft"]
      242 SETTABLE                         R26 R24 R25
      243 CALL                             R22 2 1
      244 SETTABLEKS                       R22 R21 K27 ["RightGradient"]
      246 CALL                             R18 3 1
      247 SETTABLEKS                       R18 R17 K22 ["CollapsibleScroller"]
      249 GETUPVAL                         R19 7
      250 GETTABLEKS                       R18 R19 K11 ["createElement"]
      252 GETUPVAL                         R19 19
      253 DUPTABLE                         R20 K44 [{"Uri", "Icon", "IconOnly", "OnSelect", "Size", "LayoutOrder"}]
      254 GETUPVAL                         R22 15
      255 GETTABLEKS                       R21 R22 K5 ["child"]
      257 GETTABLEKS                       R22 R0 K1 ["WidgetUri"]
      259 LOADK                            R23 K6 ["More"]
      260 CALL                             R21 2 1
      261 SETTABLEKS                       R21 R20 K40 ["Uri"]
      263 LOADK                            R21 K6 ["More"]
      264 SETTABLEKS                       R21 R20 K41 ["Icon"]
      266 LOADB                            R21 1
      267 SETTABLEKS                       R21 R20 K42 ["IconOnly"]
      269 SETTABLEKS                       R12 R20 K43 ["OnSelect"]
      271 LOADK                            R21 K45 ["Small"]
      272 SETTABLEKS                       R21 R20 K15 ["Size"]
      274 MOVE                             R21 R1
      275 CALL                             R21 0 1
      276 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      278 CALL                             R18 2 1
      279 SETTABLEKS                       R18 R17 K6 ["More"]
      281 CALL                             R14 3 -1
      282 RETURN                           R14 -1

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
      140 GETTABLEKS                       R25 R0 K21 ["Src"]
      142 GETTABLEKS                       R24 R25 K34 ["SharedFlags"]
      144 GETTABLEKS                       R23 R24 K35 ["getFFlagRibbonCancelShowFloatingTask"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K5 [require]
      149 GETTABLEKS                       R25 R0 K21 ["Src"]
      151 GETTABLEKS                       R24 R25 K36 ["Types"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K39 [table.freeze]
      156 DUPTABLE                         R25 K42 [{"Type", "Filename"}]
      157 LOADK                            R26 K43 ["Reserved"]
      158 SETTABLEKS                       R26 R25 K40 ["Type"]
      160 LOADK                            R26 K44 ["Custom"]
      161 SETTABLEKS                       R26 R25 K41 ["Filename"]
      163 CALL                             R24 1 1
      164 DUPCLOSURE                       R25 K45 [PROTO_3]
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R24
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R13
      185 RETURN                           R25 1
