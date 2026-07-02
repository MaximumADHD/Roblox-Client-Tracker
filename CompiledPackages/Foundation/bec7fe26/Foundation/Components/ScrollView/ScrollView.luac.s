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
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K18 ["FoundationMigrateCryoToDash"]
       69 JUMPIFNOT                        R11 ; [+7]
       70 GETUPVAL                         R10 8
       71 GETTABLEKS                       R10 R10 K19 ["union"]
       73 MOVE                             R11 R3
       74 MOVE                             R12 R9
       75 CALL                             R10 2 1
       76 JUMP                             ; [+8]
       77 GETUPVAL                         R10 9
       78 GETTABLEKS                       R10 R10 K20 ["Dictionary"]
       80 GETTABLEKS                       R10 R10 K19 ["union"]
       82 MOVE                             R11 R3
       83 MOVE                             R12 R9
       84 CALL                             R10 2 1
       85 LOADNIL                          R11
       86 SETTABLEKS                       R11 R10 K21 ["scroll"]
       88 LOADNIL                          R11
       89 SETTABLEKS                       R11 R10 K22 ["layout"]
       91 DUPTABLE                         R11 K24 [{"ListLayout"}]
       92 GETUPVAL                         R12 6
       93 GETTABLEKS                       R12 R12 K25 ["createElement"]
       95 LOADK                            R13 K26 ["UIListLayout"]
       96 DUPTABLE                         R14 K36 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
       97 GETTABLEKS                       R15 R3 K22 ["layout"]
       99 GETTABLEKS                       R15 R15 K27 ["FillDirection"]
      101 SETTABLEKS                       R15 R14 K27 ["FillDirection"]
      103 GETTABLEKS                       R15 R3 K22 ["layout"]
      105 GETTABLEKS                       R15 R15 K28 ["ItemLineAlignment"]
      107 SETTABLEKS                       R15 R14 K28 ["ItemLineAlignment"]
      109 GETTABLEKS                       R15 R3 K22 ["layout"]
      111 GETTABLEKS                       R15 R15 K29 ["HorizontalAlignment"]
      113 SETTABLEKS                       R15 R14 K29 ["HorizontalAlignment"]
      115 GETTABLEKS                       R15 R3 K22 ["layout"]
      117 GETTABLEKS                       R15 R15 K30 ["HorizontalFlex"]
      119 SETTABLEKS                       R15 R14 K30 ["HorizontalFlex"]
      121 GETTABLEKS                       R15 R3 K22 ["layout"]
      123 GETTABLEKS                       R15 R15 K31 ["VerticalAlignment"]
      125 SETTABLEKS                       R15 R14 K31 ["VerticalAlignment"]
      127 GETTABLEKS                       R15 R3 K22 ["layout"]
      129 GETTABLEKS                       R15 R15 K32 ["VerticalFlex"]
      131 SETTABLEKS                       R15 R14 K32 ["VerticalFlex"]
      133 GETTABLEKS                       R15 R3 K22 ["layout"]
      135 GETTABLEKS                       R15 R15 K33 ["Padding"]
      137 SETTABLEKS                       R15 R14 K33 ["Padding"]
      139 GETTABLEKS                       R15 R3 K22 ["layout"]
      141 GETTABLEKS                       R15 R15 K34 ["SortOrder"]
      143 SETTABLEKS                       R15 R14 K34 ["SortOrder"]
      145 GETTABLEKS                       R15 R3 K22 ["layout"]
      147 GETTABLEKS                       R15 R15 K35 ["Wraps"]
      149 SETTABLEKS                       R15 R14 K35 ["Wraps"]
      151 CALL                             R12 2 1
      152 SETTABLEKS                       R12 R11 K23 ["ListLayout"]
      154 GETUPVAL                         R12 6
      155 GETTABLEKS                       R12 R12 K25 ["createElement"]
      157 GETUPVAL                         R13 10
      158 MOVE                             R14 R10
      159 DUPTABLE                         R15 K38 [{"ScrollingFrame"}]
      160 GETUPVAL                         R16 6
      161 GETTABLEKS                       R16 R16 K25 ["createElement"]
      163 GETUPVAL                         R17 11
      164 DUPTABLE                         R18 K52 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      165 SETTABLEKS                       R6 R18 K39 ["controlState"]
      167 GETTABLEKS                       R19 R3 K15 ["selection"]
      169 SETTABLEKS                       R19 R18 K15 ["selection"]
      171 GETTABLEKS                       R19 R3 K21 ["scroll"]
      173 GETTABLEKS                       R19 R19 K40 ["scrollBarVisibility"]
      175 SETTABLEKS                       R19 R18 K40 ["scrollBarVisibility"]
      177 GETTABLEKS                       R19 R3 K41 ["onCanvasPositionChanged"]
      179 SETTABLEKS                       R19 R18 K41 ["onCanvasPositionChanged"]
      181 GETTABLEKS                       R19 R3 K42 ["onAbsoluteCanvasSizeChanged"]
      183 SETTABLEKS                       R19 R18 K42 ["onAbsoluteCanvasSizeChanged"]
      185 GETTABLEKS                       R19 R3 K43 ["onAbsoluteWindowSizeChanged"]
      187 SETTABLEKS                       R19 R18 K43 ["onAbsoluteWindowSizeChanged"]
      189 GETTABLEKS                       R19 R3 K21 ["scroll"]
      191 GETTABLEKS                       R19 R19 K44 ["AutomaticSize"]
      193 SETTABLEKS                       R19 R18 K44 ["AutomaticSize"]
      195 GETTABLEKS                       R19 R3 K21 ["scroll"]
      197 GETTABLEKS                       R19 R19 K45 ["AutomaticCanvasSize"]
      199 SETTABLEKS                       R19 R18 K45 ["AutomaticCanvasSize"]
      201 GETTABLEKS                       R19 R3 K21 ["scroll"]
      203 GETTABLEKS                       R19 R19 K46 ["CanvasSize"]
      205 SETTABLEKS                       R19 R18 K46 ["CanvasSize"]
      207 GETUPVAL                         R20 0
      208 GETTABLEKS                       R20 R20 K53 ["FoundationScrollViewMoveClipOutside"]
      210 JUMPIFNOT                        R20 ; [+2]
      211 LOADB                            R19 0
      212 JUMP                             ; [+1]
      213 LOADNIL                          R19
      214 SETTABLEKS                       R19 R18 K47 ["ClipsDescendants"]
      216 GETTABLEKS                       R19 R3 K21 ["scroll"]
      218 GETTABLEKS                       R19 R19 K48 ["ScrollingDirection"]
      220 SETTABLEKS                       R19 R18 K48 ["ScrollingDirection"]
      222 GETTABLEKS                       R19 R3 K21 ["scroll"]
      224 GETTABLEKS                       R19 R19 K49 ["ScrollingEnabled"]
      226 SETTABLEKS                       R19 R18 K49 ["ScrollingEnabled"]
      228 GETTABLEKS                       R19 R3 K21 ["scroll"]
      230 GETTABLEKS                       R19 R19 K50 ["VerticalScrollBarInset"]
      232 SETTABLEKS                       R19 R18 K50 ["VerticalScrollBarInset"]
      234 GETTABLEKS                       R19 R3 K21 ["scroll"]
      236 GETTABLEKS                       R19 R19 K51 ["HorizontalScrollBarInset"]
      238 SETTABLEKS                       R19 R18 K51 ["HorizontalScrollBarInset"]
      240 GETTABLEKS                       R19 R3 K54 ["scrollingFrameRef"]
      242 SETTABLEKS                       R19 R18 K16 ["ref"]
      244 GETTABLEKS                       R20 R3 K55 ["children"]
      246 JUMPIFNOT                        R20 ; [+40]
      247 GETTABLEKS                       R21 R3 K55 ["children"]
      249 FASTCALL1                        TYPEOF R21 ; [+2]
      250 GETIMPORT                        R20 K57 [typeof]
      252 CALL                             R20 1 1
      253 JUMPIFNOTEQKS                    R20 K58 ["table"] ; [+33]
      255 GETTABLEKS                       R20 R3 K22 ["layout"]
      257 JUMPIFEQKNIL                     R20 ; [+29]
      259 GETTABLEKS                       R20 R3 K22 ["layout"]
      261 GETTABLEKS                       R20 R20 K27 ["FillDirection"]
      263 JUMPIFEQKNIL                     R20 ; [+23]
      265 GETUPVAL                         R20 0
      266 GETTABLEKS                       R20 R20 K18 ["FoundationMigrateCryoToDash"]
      268 JUMPIFNOT                        R20 ; [+8]
      269 GETUPVAL                         R19 8
      270 GETTABLEKS                       R19 R19 K19 ["union"]
      272 MOVE                             R20 R11
      273 GETTABLEKS                       R21 R3 K55 ["children"]
      275 CALL                             R19 2 1
      276 JUMP                             ; [+12]
      277 GETUPVAL                         R19 9
      278 GETTABLEKS                       R19 R19 K20 ["Dictionary"]
      280 GETTABLEKS                       R19 R19 K19 ["union"]
      282 MOVE                             R20 R11
      283 GETTABLEKS                       R21 R3 K55 ["children"]
      285 CALL                             R19 2 1
      286 JUMP                             ; [+2]
      287 GETTABLEKS                       R19 R3 K55 ["children"]
      289 CALL                             R16 3 1
      290 SETTABLEKS                       R16 R15 K37 ["ScrollingFrame"]
      292 CALL                             R12 3 -1
      293 RETURN                           R12 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Cryo"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["Dash"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETIMPORT                        R7 K1 [script]
       35 GETTABLEKS                       R7 R7 K4 ["Parent"]
       37 GETTABLEKS                       R7 R7 K12 ["ScrollingFrame"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Utility"]
       58 GETTABLEKS                       R10 R10 K16 ["withDefaults"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K7 ["Utility"]
       65 GETTABLEKS                       R11 R11 K17 ["useDefaultTags"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K7 ["Utility"]
       72 GETTABLEKS                       R12 R12 K18 ["useStyledDefaults"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Providers"]
       79 GETTABLEKS                       R13 R13 K20 ["Style"]
       81 GETTABLEKS                       R13 R13 K21 ["useStyleTags"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K22 ["Enums"]
       88 GETTABLEKS                       R14 R14 K23 ["Visibility"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K22 ["Enums"]
       95 GETTABLEKS                       R15 R15 K24 ["ControlState"]
       97 CALL                             R14 1 1
       98 DUPTABLE                         R15 K35 [{["layout"], ["scroll"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["ClipsDescendants"], ["isDisabled"] = False, ["testId"] = "--foundation-scroll-view"}]
       99 DUPTABLE                         R16 K37 [{"SortOrder"}]
      100 GETIMPORT                        R17 K40 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R17 R16 K36 ["SortOrder"]
      104 SETTABLEKS                       R16 R15 K25 ["layout"]
      106 DUPTABLE                         R16 K42 [{"scrollBarVisibility"}]
      107 GETTABLEKS                       R17 R13 K43 ["Auto"]
      109 SETTABLEKS                       R17 R16 K41 ["scrollBarVisibility"]
      111 SETTABLEKS                       R16 R15 K26 ["scroll"]
      113 GETTABLEKS                       R17 R2 K44 ["FoundationScrollViewMoveClipOutside"]
      115 JUMPIFNOT                        R17 ; [+2]
      116 LOADB                            R16 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R16
      119 SETTABLEKS                       R16 R15 K31 ["ClipsDescendants"]
      121 DUPCLOSURE                       R16 K45 [PROTO_1]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R6
      134 GETTABLEKS                       R17 R3 K46 ["memo"]
      136 GETTABLEKS                       R18 R3 K47 ["forwardRef"]
      138 MOVE                             R19 R16
      139 CALL                             R18 1 -1
      140 CALL                             R17 -1 -1
      141 RETURN                           R17 -1
