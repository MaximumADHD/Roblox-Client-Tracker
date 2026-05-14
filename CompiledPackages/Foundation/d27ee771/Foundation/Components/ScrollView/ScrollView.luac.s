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
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R10 R10 K16 ["Tag"]
       71 SETTABLE                         R5 R9 R10
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K17 ["FoundationMigrateCryoToDash"]
       75 JUMPIFNOT                        R11 ; [+7]
       76 GETUPVAL                         R10 8
       77 GETTABLEKS                       R10 R10 K18 ["union"]
       79 MOVE                             R11 R3
       80 MOVE                             R12 R9
       81 CALL                             R10 2 1
       82 JUMP                             ; [+8]
       83 GETUPVAL                         R10 9
       84 GETTABLEKS                       R10 R10 K19 ["Dictionary"]
       86 GETTABLEKS                       R10 R10 K18 ["union"]
       88 MOVE                             R11 R3
       89 MOVE                             R12 R9
       90 CALL                             R10 2 1
       91 LOADNIL                          R11
       92 SETTABLEKS                       R11 R10 K20 ["scroll"]
       94 LOADNIL                          R11
       95 SETTABLEKS                       R11 R10 K21 ["layout"]
       97 DUPTABLE                         R11 K23 [{"ListLayout"}]
       98 GETUPVAL                         R12 6
       99 GETTABLEKS                       R12 R12 K24 ["createElement"]
      101 LOADK                            R13 K25 ["UIListLayout"]
      102 DUPTABLE                         R14 K35 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
      103 GETTABLEKS                       R15 R3 K21 ["layout"]
      105 GETTABLEKS                       R15 R15 K26 ["FillDirection"]
      107 SETTABLEKS                       R15 R14 K26 ["FillDirection"]
      109 GETTABLEKS                       R15 R3 K21 ["layout"]
      111 GETTABLEKS                       R15 R15 K27 ["ItemLineAlignment"]
      113 SETTABLEKS                       R15 R14 K27 ["ItemLineAlignment"]
      115 GETTABLEKS                       R15 R3 K21 ["layout"]
      117 GETTABLEKS                       R15 R15 K28 ["HorizontalAlignment"]
      119 SETTABLEKS                       R15 R14 K28 ["HorizontalAlignment"]
      121 GETTABLEKS                       R15 R3 K21 ["layout"]
      123 GETTABLEKS                       R15 R15 K29 ["HorizontalFlex"]
      125 SETTABLEKS                       R15 R14 K29 ["HorizontalFlex"]
      127 GETTABLEKS                       R15 R3 K21 ["layout"]
      129 GETTABLEKS                       R15 R15 K30 ["VerticalAlignment"]
      131 SETTABLEKS                       R15 R14 K30 ["VerticalAlignment"]
      133 GETTABLEKS                       R15 R3 K21 ["layout"]
      135 GETTABLEKS                       R15 R15 K31 ["VerticalFlex"]
      137 SETTABLEKS                       R15 R14 K31 ["VerticalFlex"]
      139 GETTABLEKS                       R15 R3 K21 ["layout"]
      141 GETTABLEKS                       R15 R15 K32 ["Padding"]
      143 SETTABLEKS                       R15 R14 K32 ["Padding"]
      145 GETTABLEKS                       R15 R3 K21 ["layout"]
      147 GETTABLEKS                       R15 R15 K33 ["SortOrder"]
      149 SETTABLEKS                       R15 R14 K33 ["SortOrder"]
      151 GETTABLEKS                       R15 R3 K21 ["layout"]
      153 GETTABLEKS                       R15 R15 K34 ["Wraps"]
      155 SETTABLEKS                       R15 R14 K34 ["Wraps"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K22 ["ListLayout"]
      160 GETUPVAL                         R12 6
      161 GETTABLEKS                       R12 R12 K24 ["createElement"]
      163 GETUPVAL                         R13 10
      164 MOVE                             R14 R10
      165 DUPTABLE                         R15 K37 [{"ScrollingFrame"}]
      166 GETUPVAL                         R16 6
      167 GETTABLEKS                       R16 R16 K24 ["createElement"]
      169 GETUPVAL                         R17 11
      170 DUPTABLE                         R18 K51 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      171 SETTABLEKS                       R6 R18 K38 ["controlState"]
      173 GETTABLEKS                       R19 R3 K14 ["selection"]
      175 SETTABLEKS                       R19 R18 K14 ["selection"]
      177 GETTABLEKS                       R19 R3 K20 ["scroll"]
      179 GETTABLEKS                       R19 R19 K39 ["scrollBarVisibility"]
      181 SETTABLEKS                       R19 R18 K39 ["scrollBarVisibility"]
      183 GETTABLEKS                       R19 R3 K40 ["onCanvasPositionChanged"]
      185 SETTABLEKS                       R19 R18 K40 ["onCanvasPositionChanged"]
      187 GETTABLEKS                       R19 R3 K41 ["onAbsoluteCanvasSizeChanged"]
      189 SETTABLEKS                       R19 R18 K41 ["onAbsoluteCanvasSizeChanged"]
      191 GETTABLEKS                       R19 R3 K42 ["onAbsoluteWindowSizeChanged"]
      193 SETTABLEKS                       R19 R18 K42 ["onAbsoluteWindowSizeChanged"]
      195 GETTABLEKS                       R19 R3 K20 ["scroll"]
      197 GETTABLEKS                       R19 R19 K43 ["AutomaticSize"]
      199 SETTABLEKS                       R19 R18 K43 ["AutomaticSize"]
      201 GETTABLEKS                       R19 R3 K20 ["scroll"]
      203 GETTABLEKS                       R19 R19 K44 ["AutomaticCanvasSize"]
      205 SETTABLEKS                       R19 R18 K44 ["AutomaticCanvasSize"]
      207 GETTABLEKS                       R19 R3 K20 ["scroll"]
      209 GETTABLEKS                       R19 R19 K45 ["CanvasSize"]
      211 SETTABLEKS                       R19 R18 K45 ["CanvasSize"]
      213 GETUPVAL                         R20 0
      214 GETTABLEKS                       R20 R20 K52 ["FoundationScrollViewMoveClipOutside"]
      216 JUMPIFNOT                        R20 ; [+2]
      217 LOADB                            R19 0
      218 JUMP                             ; [+1]
      219 LOADNIL                          R19
      220 SETTABLEKS                       R19 R18 K46 ["ClipsDescendants"]
      222 GETTABLEKS                       R19 R3 K20 ["scroll"]
      224 GETTABLEKS                       R19 R19 K47 ["ScrollingDirection"]
      226 SETTABLEKS                       R19 R18 K47 ["ScrollingDirection"]
      228 GETTABLEKS                       R19 R3 K20 ["scroll"]
      230 GETTABLEKS                       R19 R19 K48 ["ScrollingEnabled"]
      232 SETTABLEKS                       R19 R18 K48 ["ScrollingEnabled"]
      234 GETTABLEKS                       R19 R3 K20 ["scroll"]
      236 GETTABLEKS                       R19 R19 K49 ["VerticalScrollBarInset"]
      238 SETTABLEKS                       R19 R18 K49 ["VerticalScrollBarInset"]
      240 GETTABLEKS                       R19 R3 K20 ["scroll"]
      242 GETTABLEKS                       R19 R19 K50 ["HorizontalScrollBarInset"]
      244 SETTABLEKS                       R19 R18 K50 ["HorizontalScrollBarInset"]
      246 GETTABLEKS                       R19 R3 K53 ["scrollingFrameRef"]
      248 SETTABLEKS                       R19 R18 K15 ["ref"]
      250 GETTABLEKS                       R20 R3 K54 ["children"]
      252 JUMPIFNOT                        R20 ; [+40]
      253 GETTABLEKS                       R21 R3 K54 ["children"]
      255 FASTCALL1                        TYPEOF R21 ; [+2]
      256 GETIMPORT                        R20 K56 [typeof]
      258 CALL                             R20 1 1
      259 JUMPIFNOTEQKS                    R20 K57 ["table"] ; [+33]
      261 GETTABLEKS                       R20 R3 K21 ["layout"]
      263 JUMPIFEQKNIL                     R20 ; [+29]
      265 GETTABLEKS                       R20 R3 K21 ["layout"]
      267 GETTABLEKS                       R20 R20 K26 ["FillDirection"]
      269 JUMPIFEQKNIL                     R20 ; [+23]
      271 GETUPVAL                         R20 0
      272 GETTABLEKS                       R20 R20 K17 ["FoundationMigrateCryoToDash"]
      274 JUMPIFNOT                        R20 ; [+8]
      275 GETUPVAL                         R19 8
      276 GETTABLEKS                       R19 R19 K18 ["union"]
      278 MOVE                             R20 R11
      279 GETTABLEKS                       R21 R3 K54 ["children"]
      281 CALL                             R19 2 1
      282 JUMP                             ; [+12]
      283 GETUPVAL                         R19 9
      284 GETTABLEKS                       R19 R19 K19 ["Dictionary"]
      286 GETTABLEKS                       R19 R19 K18 ["union"]
      288 MOVE                             R20 R11
      289 GETTABLEKS                       R21 R3 K54 ["children"]
      291 CALL                             R19 2 1
      292 JUMP                             ; [+2]
      293 GETTABLEKS                       R19 R3 K54 ["children"]
      295 CALL                             R16 3 1
      296 SETTABLEKS                       R16 R15 K36 ["ScrollingFrame"]
      298 CALL                             R12 3 -1
      299 RETURN                           R12 -1

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
       98 DUPTABLE                         R15 K32 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
       99 DUPTABLE                         R16 K34 [{"SortOrder"}]
      100 GETIMPORT                        R17 K37 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R17 R16 K33 ["SortOrder"]
      104 SETTABLEKS                       R16 R15 K25 ["layout"]
      106 DUPTABLE                         R16 K39 [{"scrollBarVisibility"}]
      107 GETTABLEKS                       R17 R13 K40 ["Auto"]
      109 SETTABLEKS                       R17 R16 K38 ["scrollBarVisibility"]
      111 SETTABLEKS                       R16 R15 K26 ["scroll"]
      113 LOADB                            R16 0
      114 SETTABLEKS                       R16 R15 K27 ["AutoLocalize"]
      116 LOADN                            R16 0
      117 SETTABLEKS                       R16 R15 K28 ["BorderSizePixel"]
      119 GETTABLEKS                       R17 R2 K41 ["FoundationScrollViewMoveClipOutside"]
      121 JUMPIFNOT                        R17 ; [+2]
      122 LOADB                            R16 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R16
      125 SETTABLEKS                       R16 R15 K29 ["ClipsDescendants"]
      127 LOADB                            R16 0
      128 SETTABLEKS                       R16 R15 K30 ["isDisabled"]
      130 LOADK                            R16 K42 ["--foundation-scroll-view"]
      131 SETTABLEKS                       R16 R15 K31 ["testId"]
      133 DUPCLOSURE                       R16 K43 [PROTO_1]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R6
      146 GETTABLEKS                       R17 R3 K44 ["memo"]
      148 GETTABLEKS                       R18 R3 K45 ["forwardRef"]
      150 MOVE                             R19 R16
      151 CALL                             R18 1 -1
      152 CALL                             R17 -1 -1
      153 RETURN                           R17 -1
