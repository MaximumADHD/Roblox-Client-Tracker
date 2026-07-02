PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["onStateChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FoundationDisableStylingPolyfill"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["View"]
        6 GETTABLEKS                       R4 R0 K2 ["tag"]
        8 LOADK                            R5 K3 ["gui-object-defaults"]
        9 GETUPVAL                         R6 2
       10 CALL                             R2 4 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["FoundationDisableStylingPolyfill"]
       18 JUMPIF                           R6 ; [+2]
       19 MOVE                             R5 R2
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R5 2
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R5 R3 K2 ["tag"]
       26 LOADK                            R6 K3 ["gui-object-defaults"]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 5
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K4 ["useState"]
       34 GETUPVAL                         R7 7
       35 GETTABLEKS                       R7 R7 K5 ["Initialize"]
       37 CALL                             R6 1 2
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R9 8 0
       43 SETTABLEKS                       R8 R9 K6 ["onStateChanged"]
       45 GETTABLEKS                       R11 R3 K6 ["onStateChanged"]
       47 JUMPIF                           R11 ; [+3]
       48 GETTABLEKS                       R11 R3 K7 ["onActivated"]
       50 JUMPIFNOT                        R11 ; [+3]
       51 GETTABLEKS                       R10 R3 K8 ["stateLayer"]
       53 JUMP                             ; [+1]
       54 DUPTABLE                         R10 K11 [{["affordance"] = "None"}]
       55 SETTABLEKS                       R10 R9 K8 ["stateLayer"]
       57 DUPTABLE                         R10 K14 [{["Selectable"] = False}]
       58 SETTABLEKS                       R10 R9 K15 ["selection"]
       60 SETTABLEKS                       R1 R9 K16 ["ref"]
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K17 ["Tag"]
       65 SETTABLE                         R5 R9 R10
       66 GETUPVAL                         R10 8
       67 GETTABLEKS                       R10 R10 K18 ["union"]
       69 MOVE                             R11 R3
       70 MOVE                             R12 R9
       71 CALL                             R10 2 1
       72 LOADNIL                          R11
       73 SETTABLEKS                       R11 R10 K19 ["scroll"]
       75 LOADNIL                          R11
       76 SETTABLEKS                       R11 R10 K20 ["layout"]
       78 DUPTABLE                         R11 K22 [{"ListLayout"}]
       79 GETUPVAL                         R12 6
       80 GETTABLEKS                       R12 R12 K23 ["createElement"]
       82 LOADK                            R13 K24 ["UIListLayout"]
       83 DUPTABLE                         R14 K34 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
       84 GETTABLEKS                       R15 R3 K20 ["layout"]
       86 GETTABLEKS                       R15 R15 K25 ["FillDirection"]
       88 SETTABLEKS                       R15 R14 K25 ["FillDirection"]
       90 GETTABLEKS                       R15 R3 K20 ["layout"]
       92 GETTABLEKS                       R15 R15 K26 ["ItemLineAlignment"]
       94 SETTABLEKS                       R15 R14 K26 ["ItemLineAlignment"]
       96 GETTABLEKS                       R15 R3 K20 ["layout"]
       98 GETTABLEKS                       R15 R15 K27 ["HorizontalAlignment"]
      100 SETTABLEKS                       R15 R14 K27 ["HorizontalAlignment"]
      102 GETTABLEKS                       R15 R3 K20 ["layout"]
      104 GETTABLEKS                       R15 R15 K28 ["HorizontalFlex"]
      106 SETTABLEKS                       R15 R14 K28 ["HorizontalFlex"]
      108 GETTABLEKS                       R15 R3 K20 ["layout"]
      110 GETTABLEKS                       R15 R15 K29 ["VerticalAlignment"]
      112 SETTABLEKS                       R15 R14 K29 ["VerticalAlignment"]
      114 GETTABLEKS                       R15 R3 K20 ["layout"]
      116 GETTABLEKS                       R15 R15 K30 ["VerticalFlex"]
      118 SETTABLEKS                       R15 R14 K30 ["VerticalFlex"]
      120 GETTABLEKS                       R15 R3 K20 ["layout"]
      122 GETTABLEKS                       R15 R15 K31 ["Padding"]
      124 SETTABLEKS                       R15 R14 K31 ["Padding"]
      126 GETTABLEKS                       R15 R3 K20 ["layout"]
      128 GETTABLEKS                       R15 R15 K32 ["SortOrder"]
      130 SETTABLEKS                       R15 R14 K32 ["SortOrder"]
      132 GETTABLEKS                       R15 R3 K20 ["layout"]
      134 GETTABLEKS                       R15 R15 K33 ["Wraps"]
      136 SETTABLEKS                       R15 R14 K33 ["Wraps"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K21 ["ListLayout"]
      141 GETUPVAL                         R12 6
      142 GETTABLEKS                       R12 R12 K23 ["createElement"]
      144 GETUPVAL                         R13 9
      145 MOVE                             R14 R10
      146 DUPTABLE                         R15 K36 [{"ScrollingFrame"}]
      147 GETUPVAL                         R16 6
      148 GETTABLEKS                       R16 R16 K23 ["createElement"]
      150 GETUPVAL                         R17 10
      151 DUPTABLE                         R18 K50 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      152 SETTABLEKS                       R6 R18 K37 ["controlState"]
      154 GETTABLEKS                       R19 R3 K15 ["selection"]
      156 SETTABLEKS                       R19 R18 K15 ["selection"]
      158 GETTABLEKS                       R19 R3 K19 ["scroll"]
      160 GETTABLEKS                       R19 R19 K38 ["scrollBarVisibility"]
      162 SETTABLEKS                       R19 R18 K38 ["scrollBarVisibility"]
      164 GETTABLEKS                       R19 R3 K39 ["onCanvasPositionChanged"]
      166 SETTABLEKS                       R19 R18 K39 ["onCanvasPositionChanged"]
      168 GETTABLEKS                       R19 R3 K40 ["onAbsoluteCanvasSizeChanged"]
      170 SETTABLEKS                       R19 R18 K40 ["onAbsoluteCanvasSizeChanged"]
      172 GETTABLEKS                       R19 R3 K41 ["onAbsoluteWindowSizeChanged"]
      174 SETTABLEKS                       R19 R18 K41 ["onAbsoluteWindowSizeChanged"]
      176 GETTABLEKS                       R19 R3 K19 ["scroll"]
      178 GETTABLEKS                       R19 R19 K42 ["AutomaticSize"]
      180 SETTABLEKS                       R19 R18 K42 ["AutomaticSize"]
      182 GETTABLEKS                       R19 R3 K19 ["scroll"]
      184 GETTABLEKS                       R19 R19 K43 ["AutomaticCanvasSize"]
      186 SETTABLEKS                       R19 R18 K43 ["AutomaticCanvasSize"]
      188 GETTABLEKS                       R19 R3 K19 ["scroll"]
      190 GETTABLEKS                       R19 R19 K44 ["CanvasSize"]
      192 SETTABLEKS                       R19 R18 K44 ["CanvasSize"]
      194 GETUPVAL                         R20 0
      195 GETTABLEKS                       R20 R20 K51 ["FoundationScrollViewMoveClipOutside"]
      197 JUMPIFNOT                        R20 ; [+2]
      198 LOADB                            R19 0
      199 JUMP                             ; [+1]
      200 LOADNIL                          R19
      201 SETTABLEKS                       R19 R18 K45 ["ClipsDescendants"]
      203 GETTABLEKS                       R19 R3 K19 ["scroll"]
      205 GETTABLEKS                       R19 R19 K46 ["ScrollingDirection"]
      207 SETTABLEKS                       R19 R18 K46 ["ScrollingDirection"]
      209 GETTABLEKS                       R19 R3 K19 ["scroll"]
      211 GETTABLEKS                       R19 R19 K47 ["ScrollingEnabled"]
      213 SETTABLEKS                       R19 R18 K47 ["ScrollingEnabled"]
      215 GETTABLEKS                       R19 R3 K19 ["scroll"]
      217 GETTABLEKS                       R19 R19 K48 ["VerticalScrollBarInset"]
      219 SETTABLEKS                       R19 R18 K48 ["VerticalScrollBarInset"]
      221 GETTABLEKS                       R19 R3 K19 ["scroll"]
      223 GETTABLEKS                       R19 R19 K49 ["HorizontalScrollBarInset"]
      225 SETTABLEKS                       R19 R18 K49 ["HorizontalScrollBarInset"]
      227 GETTABLEKS                       R19 R3 K52 ["scrollingFrameRef"]
      229 SETTABLEKS                       R19 R18 K16 ["ref"]
      231 GETTABLEKS                       R20 R3 K53 ["children"]
      233 JUMPIFNOT                        R20 ; [+26]
      234 GETTABLEKS                       R21 R3 K53 ["children"]
      236 FASTCALL1                        TYPEOF R21 ; [+2]
      237 GETIMPORT                        R20 K55 [typeof]
      239 CALL                             R20 1 1
      240 JUMPIFNOTEQKS                    R20 K56 ["table"] ; [+19]
      242 GETTABLEKS                       R20 R3 K20 ["layout"]
      244 JUMPIFEQKNIL                     R20 ; [+15]
      246 GETTABLEKS                       R20 R3 K20 ["layout"]
      248 GETTABLEKS                       R20 R20 K25 ["FillDirection"]
      250 JUMPIFEQKNIL                     R20 ; [+9]
      252 GETUPVAL                         R19 8
      253 GETTABLEKS                       R19 R19 K18 ["union"]
      255 MOVE                             R20 R11
      256 GETTABLEKS                       R21 R3 K53 ["children"]
      258 CALL                             R19 2 1
      259 JUMP                             ; [+2]
      260 GETTABLEKS                       R19 R3 K53 ["children"]
      262 CALL                             R16 3 1
      263 SETTABLEKS                       R16 R15 K35 ["ScrollingFrame"]
      265 CALL                             R12 3 -1
      266 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["ScrollingFrame"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K7 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["useDefaultTags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K7 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["useStyledDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K7 ["Utility"]
       67 GETTABLEKS                       R11 R11 K17 ["withDefaults"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Providers"]
       74 GETTABLEKS                       R12 R12 K19 ["Style"]
       76 GETTABLEKS                       R12 R12 K20 ["useStyleTags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["Visibility"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K21 ["Enums"]
       90 GETTABLEKS                       R14 R14 K23 ["ControlState"]
       92 CALL                             R13 1 1
       93 DUPTABLE                         R14 K34 [{["layout"], ["scroll"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["ClipsDescendants"], ["isDisabled"] = False, ["testId"] = "--foundation-scroll-view"}]
       94 DUPTABLE                         R15 K36 [{"SortOrder"}]
       95 GETIMPORT                        R16 K39 [Enum.SortOrder.LayoutOrder]
       97 SETTABLEKS                       R16 R15 K35 ["SortOrder"]
       99 SETTABLEKS                       R15 R14 K24 ["layout"]
      101 DUPTABLE                         R15 K41 [{"scrollBarVisibility"}]
      102 GETTABLEKS                       R16 R12 K42 ["Auto"]
      104 SETTABLEKS                       R16 R15 K40 ["scrollBarVisibility"]
      106 SETTABLEKS                       R15 R14 K25 ["scroll"]
      108 GETTABLEKS                       R16 R2 K43 ["FoundationScrollViewMoveClipOutside"]
      110 JUMPIFNOT                        R16 ; [+2]
      111 LOADB                            R15 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R15
      114 SETTABLEKS                       R15 R14 K30 ["ClipsDescendants"]
      116 DUPCLOSURE                       R15 K44 [PROTO_1]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R5
      128 GETTABLEKS                       R16 R4 K45 ["memo"]
      130 GETTABLEKS                       R17 R4 K46 ["forwardRef"]
      132 MOVE                             R18 R15
      133 CALL                             R17 1 -1
      134 CALL                             R16 -1 -1
      135 RETURN                           R16 -1
