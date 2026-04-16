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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R2 K0 ["tag"]
        7 LOADK                            R5 K1 ["gui-object-defaults"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K2 ["useState"]
       15 GETUPVAL                         R7 5
       16 GETTABLEKS                       R6 R7 K3 ["Initialize"]
       18 CALL                             R5 1 2
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 8 0
       24 SETTABLEKS                       R7 R8 K4 ["onStateChanged"]
       26 GETTABLEKS                       R10 R2 K4 ["onStateChanged"]
       28 JUMPIF                           R10 ; [+3]
       29 GETTABLEKS                       R10 R2 K5 ["onActivated"]
       31 JUMPIFNOT                        R10 ; [+3]
       32 GETTABLEKS                       R9 R2 K6 ["stateLayer"]
       34 JUMP                             ; [+4]
       35 DUPTABLE                         R9 K8 [{"affordance"}]
       36 LOADK                            R10 K9 ["None"]
       37 SETTABLEKS                       R10 R9 K7 ["affordance"]
       39 SETTABLEKS                       R9 R8 K6 ["stateLayer"]
       41 DUPTABLE                         R9 K11 [{"Selectable"}]
       42 LOADB                            R10 0
       43 SETTABLEKS                       R10 R9 K10 ["Selectable"]
       45 SETTABLEKS                       R9 R8 K12 ["selection"]
       47 SETTABLEKS                       R1 R8 K13 ["ref"]
       49 GETUPVAL                         R10 4
       50 GETTABLEKS                       R9 R10 K14 ["Tag"]
       52 SETTABLE                         R4 R8 R9
       53 LOADNIL                          R9
       54 GETUPVAL                         R11 6
       55 GETTABLEKS                       R10 R11 K15 ["FoundationBuildingBlocksRemoveDashUnion"]
       57 JUMPIFNOT                        R10 ; [+41]
       58 GETIMPORT                        R10 K18 [table.clone]
       60 MOVE                             R11 R2
       61 CALL                             R10 1 1
       62 MOVE                             R9 R10
       63 SETTABLEKS                       R7 R9 K4 ["onStateChanged"]
       65 GETTABLEKS                       R11 R2 K4 ["onStateChanged"]
       67 JUMPIF                           R11 ; [+3]
       68 GETTABLEKS                       R11 R2 K5 ["onActivated"]
       70 JUMPIFNOT                        R11 ; [+3]
       71 GETTABLEKS                       R10 R2 K6 ["stateLayer"]
       73 JUMP                             ; [+4]
       74 DUPTABLE                         R10 K8 [{"affordance"}]
       75 LOADK                            R11 K9 ["None"]
       76 SETTABLEKS                       R11 R10 K7 ["affordance"]
       78 SETTABLEKS                       R10 R9 K6 ["stateLayer"]
       80 DUPTABLE                         R10 K11 [{"Selectable"}]
       81 LOADB                            R11 0
       82 SETTABLEKS                       R11 R10 K10 ["Selectable"]
       84 SETTABLEKS                       R10 R9 K12 ["selection"]
       86 SETTABLEKS                       R1 R9 K13 ["ref"]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R10 R11 K14 ["Tag"]
       91 SETTABLE                         R4 R9 R10
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K19 ["scroll"]
       95 LOADNIL                          R10
       96 SETTABLEKS                       R10 R9 K20 ["layout"]
       98 JUMP                             ; [+13]
       99 GETUPVAL                         R11 7
      100 GETTABLEKS                       R10 R11 K21 ["union"]
      102 MOVE                             R11 R2
      103 MOVE                             R12 R8
      104 CALL                             R10 2 1
      105 MOVE                             R9 R10
      106 LOADNIL                          R10
      107 SETTABLEKS                       R10 R9 K19 ["scroll"]
      109 LOADNIL                          R10
      110 SETTABLEKS                       R10 R9 K20 ["layout"]
      112 DUPTABLE                         R10 K23 [{"ListLayout"}]
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R11 R12 K24 ["createElement"]
      116 LOADK                            R12 K25 ["UIListLayout"]
      117 DUPTABLE                         R13 K35 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
      118 GETTABLEKS                       R15 R2 K20 ["layout"]
      120 GETTABLEKS                       R14 R15 K26 ["FillDirection"]
      122 SETTABLEKS                       R14 R13 K26 ["FillDirection"]
      124 GETTABLEKS                       R15 R2 K20 ["layout"]
      126 GETTABLEKS                       R14 R15 K27 ["ItemLineAlignment"]
      128 SETTABLEKS                       R14 R13 K27 ["ItemLineAlignment"]
      130 GETTABLEKS                       R15 R2 K20 ["layout"]
      132 GETTABLEKS                       R14 R15 K28 ["HorizontalAlignment"]
      134 SETTABLEKS                       R14 R13 K28 ["HorizontalAlignment"]
      136 GETTABLEKS                       R15 R2 K20 ["layout"]
      138 GETTABLEKS                       R14 R15 K29 ["HorizontalFlex"]
      140 SETTABLEKS                       R14 R13 K29 ["HorizontalFlex"]
      142 GETTABLEKS                       R15 R2 K20 ["layout"]
      144 GETTABLEKS                       R14 R15 K30 ["VerticalAlignment"]
      146 SETTABLEKS                       R14 R13 K30 ["VerticalAlignment"]
      148 GETTABLEKS                       R15 R2 K20 ["layout"]
      150 GETTABLEKS                       R14 R15 K31 ["VerticalFlex"]
      152 SETTABLEKS                       R14 R13 K31 ["VerticalFlex"]
      154 GETTABLEKS                       R15 R2 K20 ["layout"]
      156 GETTABLEKS                       R14 R15 K32 ["Padding"]
      158 SETTABLEKS                       R14 R13 K32 ["Padding"]
      160 GETTABLEKS                       R15 R2 K20 ["layout"]
      162 GETTABLEKS                       R14 R15 K33 ["SortOrder"]
      164 SETTABLEKS                       R14 R13 K33 ["SortOrder"]
      166 GETTABLEKS                       R15 R2 K20 ["layout"]
      168 GETTABLEKS                       R14 R15 K34 ["Wraps"]
      170 SETTABLEKS                       R14 R13 K34 ["Wraps"]
      172 CALL                             R11 2 1
      173 SETTABLEKS                       R11 R10 K22 ["ListLayout"]
      175 LOADNIL                          R11
      176 GETUPVAL                         R13 6
      177 GETTABLEKS                       R12 R13 K15 ["FoundationBuildingBlocksRemoveDashUnion"]
      179 JUMPIFNOT                        R12 ; [+34]
      180 GETTABLEKS                       R12 R2 K36 ["children"]
      182 JUMPIFNOT                        R12 ; [+28]
      183 GETTABLEKS                       R13 R2 K36 ["children"]
      185 FASTCALL1                        TYPEOF R13 ; [+2]
      186 GETIMPORT                        R12 K38 [typeof]
      188 CALL                             R12 1 1
      189 JUMPIFNOTEQKS                    R12 K16 ["table"] ; [+21]
      191 GETTABLEKS                       R12 R2 K20 ["layout"]
      193 JUMPIFEQKNIL                     R12 ; [+17]
      195 GETTABLEKS                       R13 R2 K20 ["layout"]
      197 GETTABLEKS                       R12 R13 K26 ["FillDirection"]
      199 JUMPIFEQKNIL                     R12 ; [+11]
      201 MOVE                             R11 R10
      202 GETTABLEKS                       R12 R2 K36 ["children"]
      204 LOADNIL                          R13
      205 LOADNIL                          R14
      206 FORGPREP                         R12
      207 SETTABLE                         R16 R11 R15
      208 FORGLOOP                         R12 2 ; [-2]
      210 JUMP                             ; [+35]
      211 GETTABLEKS                       R11 R2 K36 ["children"]
      213 JUMP                             ; [+32]
      214 GETTABLEKS                       R12 R2 K36 ["children"]
      216 JUMPIFNOT                        R12 ; [+27]
      217 GETTABLEKS                       R13 R2 K36 ["children"]
      219 FASTCALL1                        TYPEOF R13 ; [+2]
      220 GETIMPORT                        R12 K38 [typeof]
      222 CALL                             R12 1 1
      223 JUMPIFNOTEQKS                    R12 K16 ["table"] ; [+20]
      225 GETTABLEKS                       R12 R2 K20 ["layout"]
      227 JUMPIFEQKNIL                     R12 ; [+16]
      229 GETTABLEKS                       R13 R2 K20 ["layout"]
      231 GETTABLEKS                       R12 R13 K26 ["FillDirection"]
      233 JUMPIFEQKNIL                     R12 ; [+10]
      235 GETUPVAL                         R13 7
      236 GETTABLEKS                       R12 R13 K21 ["union"]
      238 MOVE                             R13 R10
      239 GETTABLEKS                       R14 R2 K36 ["children"]
      241 CALL                             R12 2 1
      242 MOVE                             R11 R12
      243 JUMP                             ; [+2]
      244 GETTABLEKS                       R11 R2 K36 ["children"]
      246 GETUPVAL                         R13 4
      247 GETTABLEKS                       R12 R13 K24 ["createElement"]
      249 GETUPVAL                         R13 8
      250 MOVE                             R14 R9
      251 DUPTABLE                         R15 K40 [{"ScrollingFrame"}]
      252 GETUPVAL                         R17 4
      253 GETTABLEKS                       R16 R17 K24 ["createElement"]
      255 GETUPVAL                         R17 9
      256 DUPTABLE                         R18 K54 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      257 SETTABLEKS                       R5 R18 K41 ["controlState"]
      259 GETTABLEKS                       R19 R2 K12 ["selection"]
      261 SETTABLEKS                       R19 R18 K12 ["selection"]
      263 GETTABLEKS                       R20 R2 K19 ["scroll"]
      265 GETTABLEKS                       R19 R20 K42 ["scrollBarVisibility"]
      267 SETTABLEKS                       R19 R18 K42 ["scrollBarVisibility"]
      269 GETTABLEKS                       R19 R2 K43 ["onCanvasPositionChanged"]
      271 SETTABLEKS                       R19 R18 K43 ["onCanvasPositionChanged"]
      273 GETTABLEKS                       R19 R2 K44 ["onAbsoluteCanvasSizeChanged"]
      275 SETTABLEKS                       R19 R18 K44 ["onAbsoluteCanvasSizeChanged"]
      277 GETTABLEKS                       R19 R2 K45 ["onAbsoluteWindowSizeChanged"]
      279 SETTABLEKS                       R19 R18 K45 ["onAbsoluteWindowSizeChanged"]
      281 GETTABLEKS                       R20 R2 K19 ["scroll"]
      283 GETTABLEKS                       R19 R20 K46 ["AutomaticSize"]
      285 SETTABLEKS                       R19 R18 K46 ["AutomaticSize"]
      287 GETTABLEKS                       R20 R2 K19 ["scroll"]
      289 GETTABLEKS                       R19 R20 K47 ["AutomaticCanvasSize"]
      291 SETTABLEKS                       R19 R18 K47 ["AutomaticCanvasSize"]
      293 GETTABLEKS                       R20 R2 K19 ["scroll"]
      295 GETTABLEKS                       R19 R20 K48 ["CanvasSize"]
      297 SETTABLEKS                       R19 R18 K48 ["CanvasSize"]
      299 LOADB                            R19 0
      300 SETTABLEKS                       R19 R18 K49 ["ClipsDescendants"]
      302 GETTABLEKS                       R20 R2 K19 ["scroll"]
      304 GETTABLEKS                       R19 R20 K50 ["ScrollingDirection"]
      306 SETTABLEKS                       R19 R18 K50 ["ScrollingDirection"]
      308 GETTABLEKS                       R20 R2 K19 ["scroll"]
      310 GETTABLEKS                       R19 R20 K51 ["ScrollingEnabled"]
      312 SETTABLEKS                       R19 R18 K51 ["ScrollingEnabled"]
      314 GETTABLEKS                       R20 R2 K19 ["scroll"]
      316 GETTABLEKS                       R19 R20 K52 ["VerticalScrollBarInset"]
      318 SETTABLEKS                       R19 R18 K52 ["VerticalScrollBarInset"]
      320 GETTABLEKS                       R20 R2 K19 ["scroll"]
      322 GETTABLEKS                       R19 R20 K53 ["HorizontalScrollBarInset"]
      324 SETTABLEKS                       R19 R18 K53 ["HorizontalScrollBarInset"]
      326 GETTABLEKS                       R19 R2 K55 ["scrollingFrameRef"]
      328 SETTABLEKS                       R19 R18 K13 ["ref"]
      330 MOVE                             R19 R11
      331 CALL                             R16 3 1
      332 SETTABLEKS                       R16 R15 K39 ["ScrollingFrame"]
      334 CALL                             R12 3 -1
      335 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
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
       51 GETTABLEKS                       R10 R0 K9 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["useDefaultTags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K9 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Providers"]
       67 GETTABLEKS                       R12 R13 K18 ["Style"]
       69 GETTABLEKS                       R11 R12 K19 ["useStyleTags"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["Visibility"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K20 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["ControlState"]
       85 CALL                             R12 1 1
       86 DUPTABLE                         R13 K30 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
       87 DUPTABLE                         R14 K32 [{"SortOrder"}]
       88 GETIMPORT                        R15 K35 [Enum.SortOrder.LayoutOrder]
       90 SETTABLEKS                       R15 R14 K31 ["SortOrder"]
       92 SETTABLEKS                       R14 R13 K23 ["layout"]
       94 DUPTABLE                         R14 K37 [{"scrollBarVisibility"}]
       95 GETTABLEKS                       R15 R11 K38 ["Auto"]
       97 SETTABLEKS                       R15 R14 K36 ["scrollBarVisibility"]
       99 SETTABLEKS                       R14 R13 K24 ["scroll"]
      101 LOADB                            R14 0
      102 SETTABLEKS                       R14 R13 K25 ["AutoLocalize"]
      104 LOADN                            R14 0
      105 SETTABLEKS                       R14 R13 K26 ["BorderSizePixel"]
      107 LOADB                            R14 1
      108 SETTABLEKS                       R14 R13 K27 ["ClipsDescendants"]
      110 LOADB                            R14 0
      111 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      113 LOADK                            R14 K39 ["--foundation-scroll-view"]
      114 SETTABLEKS                       R14 R13 K29 ["testId"]
      116 DUPCLOSURE                       R14 K40 [PROTO_1]
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R5
      127 GETTABLEKS                       R15 R3 K41 ["memo"]
      129 GETTABLEKS                       R16 R3 K42 ["forwardRef"]
      131 MOVE                             R17 R14
      132 CALL                             R16 1 -1
      133 CALL                             R15 -1 -1
      134 RETURN                           R15 -1
