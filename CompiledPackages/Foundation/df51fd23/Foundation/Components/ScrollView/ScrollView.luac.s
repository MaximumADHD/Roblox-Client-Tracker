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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationDisableStylingPolyfill"]
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
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["FoundationDisableStylingPolyfill"]
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
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R6 R7 K4 ["useState"]
       34 GETUPVAL                         R8 7
       35 GETTABLEKS                       R7 R8 K5 ["Initialize"]
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
       53 JUMP                             ; [+4]
       54 DUPTABLE                         R10 K10 [{"affordance"}]
       55 LOADK                            R11 K11 ["None"]
       56 SETTABLEKS                       R11 R10 K9 ["affordance"]
       58 SETTABLEKS                       R10 R9 K8 ["stateLayer"]
       60 DUPTABLE                         R10 K13 [{"Selectable"}]
       61 LOADB                            R11 0
       62 SETTABLEKS                       R11 R10 K12 ["Selectable"]
       64 SETTABLEKS                       R10 R9 K14 ["selection"]
       66 SETTABLEKS                       R1 R9 K15 ["ref"]
       68 GETUPVAL                         R11 6
       69 GETTABLEKS                       R10 R11 K16 ["Tag"]
       71 SETTABLE                         R5 R9 R10
       72 GETUPVAL                         R11 8
       73 GETTABLEKS                       R10 R11 K17 ["union"]
       75 MOVE                             R11 R3
       76 MOVE                             R12 R9
       77 CALL                             R10 2 1
       78 LOADNIL                          R11
       79 SETTABLEKS                       R11 R10 K18 ["scroll"]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K19 ["layout"]
       84 DUPTABLE                         R11 K21 [{"ListLayout"}]
       85 GETUPVAL                         R13 6
       86 GETTABLEKS                       R12 R13 K22 ["createElement"]
       88 LOADK                            R13 K23 ["UIListLayout"]
       89 DUPTABLE                         R14 K33 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
       90 GETTABLEKS                       R16 R3 K19 ["layout"]
       92 GETTABLEKS                       R15 R16 K24 ["FillDirection"]
       94 SETTABLEKS                       R15 R14 K24 ["FillDirection"]
       96 GETTABLEKS                       R16 R3 K19 ["layout"]
       98 GETTABLEKS                       R15 R16 K25 ["ItemLineAlignment"]
      100 SETTABLEKS                       R15 R14 K25 ["ItemLineAlignment"]
      102 GETTABLEKS                       R16 R3 K19 ["layout"]
      104 GETTABLEKS                       R15 R16 K26 ["HorizontalAlignment"]
      106 SETTABLEKS                       R15 R14 K26 ["HorizontalAlignment"]
      108 GETTABLEKS                       R16 R3 K19 ["layout"]
      110 GETTABLEKS                       R15 R16 K27 ["HorizontalFlex"]
      112 SETTABLEKS                       R15 R14 K27 ["HorizontalFlex"]
      114 GETTABLEKS                       R16 R3 K19 ["layout"]
      116 GETTABLEKS                       R15 R16 K28 ["VerticalAlignment"]
      118 SETTABLEKS                       R15 R14 K28 ["VerticalAlignment"]
      120 GETTABLEKS                       R16 R3 K19 ["layout"]
      122 GETTABLEKS                       R15 R16 K29 ["VerticalFlex"]
      124 SETTABLEKS                       R15 R14 K29 ["VerticalFlex"]
      126 GETTABLEKS                       R16 R3 K19 ["layout"]
      128 GETTABLEKS                       R15 R16 K30 ["Padding"]
      130 SETTABLEKS                       R15 R14 K30 ["Padding"]
      132 GETTABLEKS                       R16 R3 K19 ["layout"]
      134 GETTABLEKS                       R15 R16 K31 ["SortOrder"]
      136 SETTABLEKS                       R15 R14 K31 ["SortOrder"]
      138 GETTABLEKS                       R16 R3 K19 ["layout"]
      140 GETTABLEKS                       R15 R16 K32 ["Wraps"]
      142 SETTABLEKS                       R15 R14 K32 ["Wraps"]
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K20 ["ListLayout"]
      147 GETUPVAL                         R13 6
      148 GETTABLEKS                       R12 R13 K22 ["createElement"]
      150 GETUPVAL                         R13 9
      151 MOVE                             R14 R10
      152 DUPTABLE                         R15 K35 [{"ScrollingFrame"}]
      153 GETUPVAL                         R17 6
      154 GETTABLEKS                       R16 R17 K22 ["createElement"]
      156 GETUPVAL                         R17 10
      157 DUPTABLE                         R18 K49 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      158 SETTABLEKS                       R6 R18 K36 ["controlState"]
      160 GETTABLEKS                       R19 R3 K14 ["selection"]
      162 SETTABLEKS                       R19 R18 K14 ["selection"]
      164 GETTABLEKS                       R20 R3 K18 ["scroll"]
      166 GETTABLEKS                       R19 R20 K37 ["scrollBarVisibility"]
      168 SETTABLEKS                       R19 R18 K37 ["scrollBarVisibility"]
      170 GETTABLEKS                       R19 R3 K38 ["onCanvasPositionChanged"]
      172 SETTABLEKS                       R19 R18 K38 ["onCanvasPositionChanged"]
      174 GETTABLEKS                       R19 R3 K39 ["onAbsoluteCanvasSizeChanged"]
      176 SETTABLEKS                       R19 R18 K39 ["onAbsoluteCanvasSizeChanged"]
      178 GETTABLEKS                       R19 R3 K40 ["onAbsoluteWindowSizeChanged"]
      180 SETTABLEKS                       R19 R18 K40 ["onAbsoluteWindowSizeChanged"]
      182 GETTABLEKS                       R20 R3 K18 ["scroll"]
      184 GETTABLEKS                       R19 R20 K41 ["AutomaticSize"]
      186 SETTABLEKS                       R19 R18 K41 ["AutomaticSize"]
      188 GETTABLEKS                       R20 R3 K18 ["scroll"]
      190 GETTABLEKS                       R19 R20 K42 ["AutomaticCanvasSize"]
      192 SETTABLEKS                       R19 R18 K42 ["AutomaticCanvasSize"]
      194 GETTABLEKS                       R20 R3 K18 ["scroll"]
      196 GETTABLEKS                       R19 R20 K43 ["CanvasSize"]
      198 SETTABLEKS                       R19 R18 K43 ["CanvasSize"]
      200 GETUPVAL                         R21 0
      201 GETTABLEKS                       R20 R21 K50 ["FoundationScrollViewMoveClipOutside"]
      203 JUMPIFNOT                        R20 ; [+2]
      204 LOADB                            R19 0
      205 JUMP                             ; [+1]
      206 LOADNIL                          R19
      207 SETTABLEKS                       R19 R18 K44 ["ClipsDescendants"]
      209 GETTABLEKS                       R20 R3 K18 ["scroll"]
      211 GETTABLEKS                       R19 R20 K45 ["ScrollingDirection"]
      213 SETTABLEKS                       R19 R18 K45 ["ScrollingDirection"]
      215 GETTABLEKS                       R20 R3 K18 ["scroll"]
      217 GETTABLEKS                       R19 R20 K46 ["ScrollingEnabled"]
      219 SETTABLEKS                       R19 R18 K46 ["ScrollingEnabled"]
      221 GETTABLEKS                       R20 R3 K18 ["scroll"]
      223 GETTABLEKS                       R19 R20 K47 ["VerticalScrollBarInset"]
      225 SETTABLEKS                       R19 R18 K47 ["VerticalScrollBarInset"]
      227 GETTABLEKS                       R20 R3 K18 ["scroll"]
      229 GETTABLEKS                       R19 R20 K48 ["HorizontalScrollBarInset"]
      231 SETTABLEKS                       R19 R18 K48 ["HorizontalScrollBarInset"]
      233 GETTABLEKS                       R19 R3 K51 ["scrollingFrameRef"]
      235 SETTABLEKS                       R19 R18 K15 ["ref"]
      237 GETTABLEKS                       R20 R3 K52 ["children"]
      239 JUMPIFNOT                        R20 ; [+26]
      240 GETTABLEKS                       R21 R3 K52 ["children"]
      242 FASTCALL1                        TYPEOF R21 ; [+2]
      243 GETIMPORT                        R20 K54 [typeof]
      245 CALL                             R20 1 1
      246 JUMPIFNOTEQKS                    R20 K55 ["table"] ; [+19]
      248 GETTABLEKS                       R20 R3 K19 ["layout"]
      250 JUMPIFEQKNIL                     R20 ; [+15]
      252 GETTABLEKS                       R21 R3 K19 ["layout"]
      254 GETTABLEKS                       R20 R21 K24 ["FillDirection"]
      256 JUMPIFEQKNIL                     R20 ; [+9]
      258 GETUPVAL                         R20 8
      259 GETTABLEKS                       R19 R20 K17 ["union"]
      261 MOVE                             R20 R11
      262 GETTABLEKS                       R21 R3 K52 ["children"]
      264 CALL                             R19 2 1
      265 JUMP                             ; [+2]
      266 GETTABLEKS                       R19 R3 K52 ["children"]
      268 CALL                             R16 3 1
      269 SETTABLEKS                       R16 R15 K34 ["ScrollingFrame"]
      271 CALL                             R12 3 -1
      272 RETURN                           R12 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
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
       53 GETTABLEKS                       R9 R10 K15 ["useDefaultTags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K7 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["useStyledDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K7 ["Utility"]
       67 GETTABLEKS                       R11 R12 K17 ["withDefaults"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R14 R0 K18 ["Providers"]
       74 GETTABLEKS                       R13 R14 K19 ["Style"]
       76 GETTABLEKS                       R12 R13 K20 ["useStyleTags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K21 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["Visibility"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K21 ["Enums"]
       90 GETTABLEKS                       R14 R15 K23 ["ControlState"]
       92 CALL                             R13 1 1
       93 DUPTABLE                         R14 K31 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
       94 DUPTABLE                         R15 K33 [{"SortOrder"}]
       95 GETIMPORT                        R16 K36 [Enum.SortOrder.LayoutOrder]
       97 SETTABLEKS                       R16 R15 K32 ["SortOrder"]
       99 SETTABLEKS                       R15 R14 K24 ["layout"]
      101 DUPTABLE                         R15 K38 [{"scrollBarVisibility"}]
      102 GETTABLEKS                       R16 R12 K39 ["Auto"]
      104 SETTABLEKS                       R16 R15 K37 ["scrollBarVisibility"]
      106 SETTABLEKS                       R15 R14 K25 ["scroll"]
      108 LOADB                            R15 0
      109 SETTABLEKS                       R15 R14 K26 ["AutoLocalize"]
      111 LOADN                            R15 0
      112 SETTABLEKS                       R15 R14 K27 ["BorderSizePixel"]
      114 GETTABLEKS                       R16 R2 K40 ["FoundationScrollViewMoveClipOutside"]
      116 JUMPIFNOT                        R16 ; [+2]
      117 LOADB                            R15 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R15
      120 SETTABLEKS                       R15 R14 K28 ["ClipsDescendants"]
      122 LOADB                            R15 0
      123 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
      125 LOADK                            R15 K41 ["--foundation-scroll-view"]
      126 SETTABLEKS                       R15 R14 K30 ["testId"]
      128 DUPCLOSURE                       R15 K42 [PROTO_1]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R5
      140 GETTABLEKS                       R16 R4 K43 ["memo"]
      142 GETTABLEKS                       R17 R4 K44 ["forwardRef"]
      144 MOVE                             R18 R15
      145 CALL                             R17 1 -1
      146 CALL                             R16 -1 -1
      147 RETURN                           R16 -1
