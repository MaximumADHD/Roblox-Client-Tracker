PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onStateChanged"]
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["onStateChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["FoundationFixScrollViewTags"]
        5 JUMPIFNOT                        R4 ; [+6]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R5 R0 K1 ["tag"]
        9 CALL                             R4 1 2
       10 MOVE                             R2 R4
       11 MOVE                             R3 R5
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K2 ["FoundationDisableStylingPolyfill"]
       15 JUMPIF                           R5 ; [+12]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["FoundationFixScrollViewTags"]
       19 JUMPIF                           R5 ; [+8]
       20 GETUPVAL                         R4 2
       21 LOADK                            R5 K3 ["View"]
       22 GETTABLEKS                       R6 R0 K1 ["tag"]
       24 LOADK                            R7 K4 ["gui-object-defaults"]
       25 GETUPVAL                         R8 3
       26 CALL                             R4 4 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETUPVAL                         R5 4
       30 MOVE                             R6 R0
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K2 ["FoundationDisableStylingPolyfill"]
       34 JUMPIF                           R8 ; [+6]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K0 ["FoundationFixScrollViewTags"]
       38 JUMPIF                           R8 ; [+2]
       39 MOVE                             R7 R4
       40 JUMP                             ; [+1]
       41 GETUPVAL                         R7 3
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R7 R5 K1 ["tag"]
       46 LOADK                            R8 K4 ["gui-object-defaults"]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 6
       49 MOVE                             R8 R6
       50 CALL                             R7 1 1
       51 GETUPVAL                         R9 7
       52 GETTABLEKS                       R8 R9 K5 ["useState"]
       54 GETUPVAL                         R10 8
       55 GETTABLEKS                       R9 R10 K6 ["Initialize"]
       57 CALL                             R8 1 2
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R5
       61 GETUPVAL                         R13 9
       62 GETTABLEKS                       R12 R13 K7 ["Dictionary"]
       64 GETTABLEKS                       R11 R12 K8 ["union"]
       66 MOVE                             R12 R5
       67 NEWTABLE                         R13 8 0
       69 SETTABLEKS                       R10 R13 K9 ["onStateChanged"]
       71 GETTABLEKS                       R15 R5 K9 ["onStateChanged"]
       73 JUMPIF                           R15 ; [+3]
       74 GETTABLEKS                       R15 R5 K10 ["onActivated"]
       76 JUMPIFNOT                        R15 ; [+3]
       77 GETTABLEKS                       R14 R5 K11 ["stateLayer"]
       79 JUMP                             ; [+4]
       80 DUPTABLE                         R14 K13 [{"affordance"}]
       81 LOADK                            R15 K14 ["None"]
       82 SETTABLEKS                       R15 R14 K12 ["affordance"]
       84 SETTABLEKS                       R14 R13 K11 ["stateLayer"]
       86 DUPTABLE                         R14 K16 [{"Selectable"}]
       87 LOADB                            R15 0
       88 SETTABLEKS                       R15 R14 K15 ["Selectable"]
       90 SETTABLEKS                       R14 R13 K17 ["selection"]
       92 SETTABLEKS                       R1 R13 K18 ["ref"]
       94 GETUPVAL                         R15 7
       95 GETTABLEKS                       R14 R15 K19 ["Tag"]
       97 GETUPVAL                         R17 0
       98 GETTABLEKS                       R16 R17 K0 ["FoundationFixScrollViewTags"]
      100 JUMPIFNOT                        R16 ; [+2]
      101 LOADNIL                          R15
      102 JUMP                             ; [+1]
      103 MOVE                             R15 R7
      104 SETTABLE                         R15 R13 R14
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R15 R16 K0 ["FoundationFixScrollViewTags"]
      108 JUMPIFNOT                        R15 ; [+2]
      109 MOVE                             R14 R3
      110 JUMP                             ; [+1]
      111 LOADNIL                          R14
      112 SETTABLEKS                       R14 R13 K1 ["tag"]
      114 CALL                             R11 2 1
      115 LOADNIL                          R12
      116 SETTABLEKS                       R12 R11 K20 ["scroll"]
      118 LOADNIL                          R12
      119 SETTABLEKS                       R12 R11 K21 ["layout"]
      121 GETUPVAL                         R13 7
      122 GETTABLEKS                       R12 R13 K22 ["createElement"]
      124 GETUPVAL                         R13 10
      125 MOVE                             R14 R11
      126 DUPTABLE                         R15 K24 [{"ScrollingFrame"}]
      127 GETUPVAL                         R17 7
      128 GETTABLEKS                       R16 R17 K22 ["createElement"]
      130 GETUPVAL                         R17 11
      131 DUPTABLE                         R18 K38 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref", "tag"}]
      132 SETTABLEKS                       R8 R18 K25 ["controlState"]
      134 GETTABLEKS                       R19 R5 K17 ["selection"]
      136 SETTABLEKS                       R19 R18 K17 ["selection"]
      138 GETTABLEKS                       R20 R5 K20 ["scroll"]
      140 GETTABLEKS                       R19 R20 K26 ["scrollBarVisibility"]
      142 SETTABLEKS                       R19 R18 K26 ["scrollBarVisibility"]
      144 GETTABLEKS                       R19 R5 K27 ["onCanvasPositionChanged"]
      146 SETTABLEKS                       R19 R18 K27 ["onCanvasPositionChanged"]
      148 GETTABLEKS                       R19 R5 K28 ["onAbsoluteCanvasSizeChanged"]
      150 SETTABLEKS                       R19 R18 K28 ["onAbsoluteCanvasSizeChanged"]
      152 GETTABLEKS                       R19 R5 K29 ["onAbsoluteWindowSizeChanged"]
      154 SETTABLEKS                       R19 R18 K29 ["onAbsoluteWindowSizeChanged"]
      156 GETTABLEKS                       R20 R5 K20 ["scroll"]
      158 GETTABLEKS                       R19 R20 K30 ["AutomaticSize"]
      160 SETTABLEKS                       R19 R18 K30 ["AutomaticSize"]
      162 GETTABLEKS                       R20 R5 K20 ["scroll"]
      164 GETTABLEKS                       R19 R20 K31 ["AutomaticCanvasSize"]
      166 SETTABLEKS                       R19 R18 K31 ["AutomaticCanvasSize"]
      168 GETTABLEKS                       R20 R5 K20 ["scroll"]
      170 GETTABLEKS                       R19 R20 K32 ["CanvasSize"]
      172 SETTABLEKS                       R19 R18 K32 ["CanvasSize"]
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R20 R21 K39 ["FoundationScrollViewMoveClipOutside"]
      177 JUMPIFNOT                        R20 ; [+2]
      178 LOADB                            R19 0
      179 JUMP                             ; [+1]
      180 LOADNIL                          R19
      181 SETTABLEKS                       R19 R18 K33 ["ClipsDescendants"]
      183 GETTABLEKS                       R20 R5 K20 ["scroll"]
      185 GETTABLEKS                       R19 R20 K34 ["ScrollingDirection"]
      187 SETTABLEKS                       R19 R18 K34 ["ScrollingDirection"]
      189 GETTABLEKS                       R20 R5 K20 ["scroll"]
      191 GETTABLEKS                       R19 R20 K35 ["ScrollingEnabled"]
      193 SETTABLEKS                       R19 R18 K35 ["ScrollingEnabled"]
      195 GETTABLEKS                       R20 R5 K20 ["scroll"]
      197 GETTABLEKS                       R19 R20 K36 ["VerticalScrollBarInset"]
      199 SETTABLEKS                       R19 R18 K36 ["VerticalScrollBarInset"]
      201 GETTABLEKS                       R20 R5 K20 ["scroll"]
      203 GETTABLEKS                       R19 R20 K37 ["HorizontalScrollBarInset"]
      205 SETTABLEKS                       R19 R18 K37 ["HorizontalScrollBarInset"]
      207 GETTABLEKS                       R19 R5 K40 ["scrollingFrameRef"]
      209 SETTABLEKS                       R19 R18 K18 ["ref"]
      211 GETUPVAL                         R21 0
      212 GETTABLEKS                       R20 R21 K0 ["FoundationFixScrollViewTags"]
      214 JUMPIFNOT                        R20 ; [+2]
      215 MOVE                             R19 R2
      216 JUMP                             ; [+1]
      217 LOADNIL                          R19
      218 SETTABLEKS                       R19 R18 K1 ["tag"]
      220 GETTABLEKS                       R20 R5 K41 ["children"]
      222 JUMPIFNOT                        R20 ; [+82]
      223 GETTABLEKS                       R20 R5 K21 ["layout"]
      225 JUMPIFEQKNIL                     R20 ; [+79]
      227 GETTABLEKS                       R21 R5 K21 ["layout"]
      229 GETTABLEKS                       R20 R21 K42 ["FillDirection"]
      231 JUMPIFEQKNIL                     R20 ; [+73]
      233 GETUPVAL                         R21 9
      234 GETTABLEKS                       R20 R21 K7 ["Dictionary"]
      236 GETTABLEKS                       R19 R20 K8 ["union"]
      238 DUPTABLE                         R20 K44 [{"ListLayout"}]
      239 GETUPVAL                         R22 7
      240 GETTABLEKS                       R21 R22 K22 ["createElement"]
      242 LOADK                            R22 K45 ["UIListLayout"]
      243 DUPTABLE                         R23 K54 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
      244 GETTABLEKS                       R25 R5 K21 ["layout"]
      246 GETTABLEKS                       R24 R25 K42 ["FillDirection"]
      248 SETTABLEKS                       R24 R23 K42 ["FillDirection"]
      250 GETTABLEKS                       R25 R5 K21 ["layout"]
      252 GETTABLEKS                       R24 R25 K46 ["ItemLineAlignment"]
      254 SETTABLEKS                       R24 R23 K46 ["ItemLineAlignment"]
      256 GETTABLEKS                       R25 R5 K21 ["layout"]
      258 GETTABLEKS                       R24 R25 K47 ["HorizontalAlignment"]
      260 SETTABLEKS                       R24 R23 K47 ["HorizontalAlignment"]
      262 GETTABLEKS                       R25 R5 K21 ["layout"]
      264 GETTABLEKS                       R24 R25 K48 ["HorizontalFlex"]
      266 SETTABLEKS                       R24 R23 K48 ["HorizontalFlex"]
      268 GETTABLEKS                       R25 R5 K21 ["layout"]
      270 GETTABLEKS                       R24 R25 K49 ["VerticalAlignment"]
      272 SETTABLEKS                       R24 R23 K49 ["VerticalAlignment"]
      274 GETTABLEKS                       R25 R5 K21 ["layout"]
      276 GETTABLEKS                       R24 R25 K50 ["VerticalFlex"]
      278 SETTABLEKS                       R24 R23 K50 ["VerticalFlex"]
      280 GETTABLEKS                       R25 R5 K21 ["layout"]
      282 GETTABLEKS                       R24 R25 K51 ["Padding"]
      284 SETTABLEKS                       R24 R23 K51 ["Padding"]
      286 GETTABLEKS                       R25 R5 K21 ["layout"]
      288 GETTABLEKS                       R24 R25 K52 ["SortOrder"]
      290 SETTABLEKS                       R24 R23 K52 ["SortOrder"]
      292 GETTABLEKS                       R25 R5 K21 ["layout"]
      294 GETTABLEKS                       R24 R25 K53 ["Wraps"]
      296 SETTABLEKS                       R24 R23 K53 ["Wraps"]
      298 CALL                             R21 2 1
      299 SETTABLEKS                       R21 R20 K43 ["ListLayout"]
      301 GETTABLEKS                       R21 R5 K41 ["children"]
      303 CALL                             R19 2 1
      304 JUMP                             ; [+2]
      305 GETTABLEKS                       R19 R5 K41 ["children"]
      307 CALL                             R16 3 1
      308 SETTABLEKS                       R16 R15 K23 ["ScrollingFrame"]
      310 CALL                             R12 3 -1
      311 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Cryo"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K11 ["ScrollingFrame"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K7 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K7 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["useDefaultTags"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K7 ["Utility"]
       67 GETTABLEKS                       R11 R12 K17 ["useStyledDefaults"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETIMPORT                        R14 K1 [script]
       74 GETTABLEKS                       R13 R14 K4 ["Parent"]
       76 GETTABLEKS                       R12 R13 K18 ["separateLayoutTags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R15 R0 K19 ["Providers"]
       83 GETTABLEKS                       R14 R15 K20 ["Style"]
       85 GETTABLEKS                       R13 R14 K21 ["useStyleTags"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R15 R0 K22 ["Enums"]
       92 GETTABLEKS                       R14 R15 K23 ["Visibility"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K22 ["Enums"]
       99 GETTABLEKS                       R15 R16 K24 ["ControlState"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K32 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
      103 DUPTABLE                         R16 K34 [{"SortOrder"}]
      104 GETIMPORT                        R17 K37 [Enum.SortOrder.LayoutOrder]
      106 SETTABLEKS                       R17 R16 K33 ["SortOrder"]
      108 SETTABLEKS                       R16 R15 K25 ["layout"]
      110 DUPTABLE                         R16 K39 [{"scrollBarVisibility"}]
      111 GETTABLEKS                       R17 R13 K40 ["Auto"]
      113 SETTABLEKS                       R17 R16 K38 ["scrollBarVisibility"]
      115 SETTABLEKS                       R16 R15 K26 ["scroll"]
      117 LOADB                            R16 0
      118 SETTABLEKS                       R16 R15 K27 ["AutoLocalize"]
      120 LOADN                            R16 0
      121 SETTABLEKS                       R16 R15 K28 ["BorderSizePixel"]
      123 GETTABLEKS                       R17 R2 K41 ["FoundationScrollViewMoveClipOutside"]
      125 JUMPIFNOT                        R17 ; [+2]
      126 LOADB                            R16 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R16
      129 SETTABLEKS                       R16 R15 K29 ["ClipsDescendants"]
      131 LOADB                            R16 0
      132 SETTABLEKS                       R16 R15 K30 ["isDisabled"]
      134 LOADK                            R16 K42 ["--foundation-scroll-view"]
      135 SETTABLEKS                       R16 R15 K31 ["testId"]
      137 DUPCLOSURE                       R16 K43 [PROTO_1]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R5
      150 GETTABLEKS                       R17 R3 K44 ["memo"]
      152 GETTABLEKS                       R18 R3 K45 ["forwardRef"]
      154 MOVE                             R19 R16
      155 CALL                             R18 1 -1
      156 CALL                             R17 -1 -1
      157 RETURN                           R17 -1
