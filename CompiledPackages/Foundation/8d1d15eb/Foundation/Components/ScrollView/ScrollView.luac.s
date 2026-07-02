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
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["useState"]
       15 GETUPVAL                         R6 5
       16 GETTABLEKS                       R6 R6 K3 ["Initialize"]
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
       34 JUMP                             ; [+1]
       35 DUPTABLE                         R9 K9 [{["affordance"] = "None"}]
       36 SETTABLEKS                       R9 R8 K6 ["stateLayer"]
       38 DUPTABLE                         R9 K12 [{["Selectable"] = False}]
       39 SETTABLEKS                       R9 R8 K13 ["selection"]
       41 SETTABLEKS                       R1 R8 K14 ["ref"]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K15 ["Tag"]
       46 SETTABLE                         R4 R8 R9
       47 LOADNIL                          R9
       48 GETUPVAL                         R10 6
       49 GETTABLEKS                       R10 R10 K16 ["FoundationBuildingBlocksRemoveDashUnion"]
       51 JUMPIFNOT                        R10 ; [+35]
       52 GETIMPORT                        R10 K19 [table.clone]
       54 MOVE                             R11 R2
       55 CALL                             R10 1 1
       56 MOVE                             R9 R10
       57 SETTABLEKS                       R7 R9 K4 ["onStateChanged"]
       59 GETTABLEKS                       R11 R2 K4 ["onStateChanged"]
       61 JUMPIF                           R11 ; [+3]
       62 GETTABLEKS                       R11 R2 K5 ["onActivated"]
       64 JUMPIFNOT                        R11 ; [+3]
       65 GETTABLEKS                       R10 R2 K6 ["stateLayer"]
       67 JUMP                             ; [+1]
       68 DUPTABLE                         R10 K9 [{["affordance"] = "None"}]
       69 SETTABLEKS                       R10 R9 K6 ["stateLayer"]
       71 DUPTABLE                         R10 K12 [{["Selectable"] = False}]
       72 SETTABLEKS                       R10 R9 K13 ["selection"]
       74 SETTABLEKS                       R1 R9 K14 ["ref"]
       76 GETUPVAL                         R10 4
       77 GETTABLEKS                       R10 R10 K15 ["Tag"]
       79 SETTABLE                         R4 R9 R10
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R9 K20 ["scroll"]
       83 LOADNIL                          R10
       84 SETTABLEKS                       R10 R9 K21 ["layout"]
       86 JUMP                             ; [+13]
       87 GETUPVAL                         R10 7
       88 GETTABLEKS                       R10 R10 K22 ["union"]
       90 MOVE                             R11 R2
       91 MOVE                             R12 R8
       92 CALL                             R10 2 1
       93 MOVE                             R9 R10
       94 LOADNIL                          R10
       95 SETTABLEKS                       R10 R9 K20 ["scroll"]
       97 LOADNIL                          R10
       98 SETTABLEKS                       R10 R9 K21 ["layout"]
      100 DUPTABLE                         R10 K24 [{"ListLayout"}]
      101 GETUPVAL                         R11 4
      102 GETTABLEKS                       R11 R11 K25 ["createElement"]
      104 LOADK                            R12 K26 ["UIListLayout"]
      105 DUPTABLE                         R13 K36 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
      106 GETTABLEKS                       R14 R2 K21 ["layout"]
      108 GETTABLEKS                       R14 R14 K27 ["FillDirection"]
      110 SETTABLEKS                       R14 R13 K27 ["FillDirection"]
      112 GETTABLEKS                       R14 R2 K21 ["layout"]
      114 GETTABLEKS                       R14 R14 K28 ["ItemLineAlignment"]
      116 SETTABLEKS                       R14 R13 K28 ["ItemLineAlignment"]
      118 GETTABLEKS                       R14 R2 K21 ["layout"]
      120 GETTABLEKS                       R14 R14 K29 ["HorizontalAlignment"]
      122 SETTABLEKS                       R14 R13 K29 ["HorizontalAlignment"]
      124 GETTABLEKS                       R14 R2 K21 ["layout"]
      126 GETTABLEKS                       R14 R14 K30 ["HorizontalFlex"]
      128 SETTABLEKS                       R14 R13 K30 ["HorizontalFlex"]
      130 GETTABLEKS                       R14 R2 K21 ["layout"]
      132 GETTABLEKS                       R14 R14 K31 ["VerticalAlignment"]
      134 SETTABLEKS                       R14 R13 K31 ["VerticalAlignment"]
      136 GETTABLEKS                       R14 R2 K21 ["layout"]
      138 GETTABLEKS                       R14 R14 K32 ["VerticalFlex"]
      140 SETTABLEKS                       R14 R13 K32 ["VerticalFlex"]
      142 GETTABLEKS                       R14 R2 K21 ["layout"]
      144 GETTABLEKS                       R14 R14 K33 ["Padding"]
      146 SETTABLEKS                       R14 R13 K33 ["Padding"]
      148 GETTABLEKS                       R14 R2 K21 ["layout"]
      150 GETTABLEKS                       R14 R14 K34 ["SortOrder"]
      152 SETTABLEKS                       R14 R13 K34 ["SortOrder"]
      154 GETTABLEKS                       R14 R2 K21 ["layout"]
      156 GETTABLEKS                       R14 R14 K35 ["Wraps"]
      158 SETTABLEKS                       R14 R13 K35 ["Wraps"]
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K23 ["ListLayout"]
      163 LOADNIL                          R11
      164 GETUPVAL                         R12 6
      165 GETTABLEKS                       R12 R12 K16 ["FoundationBuildingBlocksRemoveDashUnion"]
      167 JUMPIFNOT                        R12 ; [+34]
      168 GETTABLEKS                       R12 R2 K37 ["children"]
      170 JUMPIFNOT                        R12 ; [+28]
      171 GETTABLEKS                       R13 R2 K37 ["children"]
      173 FASTCALL1                        TYPEOF R13 ; [+2]
      174 GETIMPORT                        R12 K39 [typeof]
      176 CALL                             R12 1 1
      177 JUMPIFNOTEQKS                    R12 K17 ["table"] ; [+21]
      179 GETTABLEKS                       R12 R2 K21 ["layout"]
      181 JUMPIFEQKNIL                     R12 ; [+17]
      183 GETTABLEKS                       R12 R2 K21 ["layout"]
      185 GETTABLEKS                       R12 R12 K27 ["FillDirection"]
      187 JUMPIFEQKNIL                     R12 ; [+11]
      189 MOVE                             R11 R10
      190 GETTABLEKS                       R12 R2 K37 ["children"]
      192 LOADNIL                          R13
      193 LOADNIL                          R14
      194 FORGPREP                         R12
      195 SETTABLE                         R16 R11 R15
      196 FORGLOOP                         R12 2 ; [-2]
      198 JUMP                             ; [+35]
      199 GETTABLEKS                       R11 R2 K37 ["children"]
      201 JUMP                             ; [+32]
      202 GETTABLEKS                       R12 R2 K37 ["children"]
      204 JUMPIFNOT                        R12 ; [+27]
      205 GETTABLEKS                       R13 R2 K37 ["children"]
      207 FASTCALL1                        TYPEOF R13 ; [+2]
      208 GETIMPORT                        R12 K39 [typeof]
      210 CALL                             R12 1 1
      211 JUMPIFNOTEQKS                    R12 K17 ["table"] ; [+20]
      213 GETTABLEKS                       R12 R2 K21 ["layout"]
      215 JUMPIFEQKNIL                     R12 ; [+16]
      217 GETTABLEKS                       R12 R2 K21 ["layout"]
      219 GETTABLEKS                       R12 R12 K27 ["FillDirection"]
      221 JUMPIFEQKNIL                     R12 ; [+10]
      223 GETUPVAL                         R12 7
      224 GETTABLEKS                       R12 R12 K22 ["union"]
      226 MOVE                             R13 R10
      227 GETTABLEKS                       R14 R2 K37 ["children"]
      229 CALL                             R12 2 1
      230 MOVE                             R11 R12
      231 JUMP                             ; [+2]
      232 GETTABLEKS                       R11 R2 K37 ["children"]
      234 GETUPVAL                         R12 4
      235 GETTABLEKS                       R12 R12 K25 ["createElement"]
      237 GETUPVAL                         R13 8
      238 MOVE                             R14 R9
      239 DUPTABLE                         R15 K41 [{"ScrollingFrame"}]
      240 GETUPVAL                         R16 4
      241 GETTABLEKS                       R16 R16 K25 ["createElement"]
      243 GETUPVAL                         R17 9
      244 DUPTABLE                         R18 K55 [{["controlState"], ["selection"], ["scrollBarVisibility"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["AutomaticSize"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = False, ["ScrollingDirection"], ["ScrollingEnabled"], ["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ref"]}]
      245 SETTABLEKS                       R5 R18 K42 ["controlState"]
      247 GETTABLEKS                       R19 R2 K13 ["selection"]
      249 SETTABLEKS                       R19 R18 K13 ["selection"]
      251 GETTABLEKS                       R19 R2 K20 ["scroll"]
      253 GETTABLEKS                       R19 R19 K43 ["scrollBarVisibility"]
      255 SETTABLEKS                       R19 R18 K43 ["scrollBarVisibility"]
      257 GETTABLEKS                       R19 R2 K44 ["onCanvasPositionChanged"]
      259 SETTABLEKS                       R19 R18 K44 ["onCanvasPositionChanged"]
      261 GETTABLEKS                       R19 R2 K45 ["onAbsoluteCanvasSizeChanged"]
      263 SETTABLEKS                       R19 R18 K45 ["onAbsoluteCanvasSizeChanged"]
      265 GETTABLEKS                       R19 R2 K46 ["onAbsoluteWindowSizeChanged"]
      267 SETTABLEKS                       R19 R18 K46 ["onAbsoluteWindowSizeChanged"]
      269 GETTABLEKS                       R19 R2 K20 ["scroll"]
      271 GETTABLEKS                       R19 R19 K47 ["AutomaticSize"]
      273 SETTABLEKS                       R19 R18 K47 ["AutomaticSize"]
      275 GETTABLEKS                       R19 R2 K20 ["scroll"]
      277 GETTABLEKS                       R19 R19 K48 ["AutomaticCanvasSize"]
      279 SETTABLEKS                       R19 R18 K48 ["AutomaticCanvasSize"]
      281 GETTABLEKS                       R19 R2 K20 ["scroll"]
      283 GETTABLEKS                       R19 R19 K49 ["CanvasSize"]
      285 SETTABLEKS                       R19 R18 K49 ["CanvasSize"]
      287 GETTABLEKS                       R19 R2 K20 ["scroll"]
      289 GETTABLEKS                       R19 R19 K51 ["ScrollingDirection"]
      291 SETTABLEKS                       R19 R18 K51 ["ScrollingDirection"]
      293 GETTABLEKS                       R19 R2 K20 ["scroll"]
      295 GETTABLEKS                       R19 R19 K52 ["ScrollingEnabled"]
      297 SETTABLEKS                       R19 R18 K52 ["ScrollingEnabled"]
      299 GETTABLEKS                       R19 R2 K20 ["scroll"]
      301 GETTABLEKS                       R19 R19 K53 ["VerticalScrollBarInset"]
      303 SETTABLEKS                       R19 R18 K53 ["VerticalScrollBarInset"]
      305 GETTABLEKS                       R19 R2 K20 ["scroll"]
      307 GETTABLEKS                       R19 R19 K54 ["HorizontalScrollBarInset"]
      309 SETTABLEKS                       R19 R18 K54 ["HorizontalScrollBarInset"]
      311 GETTABLEKS                       R19 R2 K56 ["scrollingFrameRef"]
      313 SETTABLEKS                       R19 R18 K14 ["ref"]
      315 MOVE                             R19 R11
      316 CALL                             R16 3 1
      317 SETTABLEKS                       R16 R15 K40 ["ScrollingFrame"]
      319 CALL                             R12 3 -1
      320 RETURN                           R12 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
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
       51 GETTABLEKS                       R9 R0 K9 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["useDefaultTags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Providers"]
       67 GETTABLEKS                       R11 R11 K18 ["Style"]
       69 GETTABLEKS                       R11 R11 K19 ["useStyleTags"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["Visibility"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K20 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["ControlState"]
       85 CALL                             R12 1 1
       86 DUPTABLE                         R13 K34 [{["layout"], ["scroll"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["isDisabled"] = False, ["testId"] = "--foundation-scroll-view"}]
       87 DUPTABLE                         R14 K36 [{"SortOrder"}]
       88 GETIMPORT                        R15 K39 [Enum.SortOrder.LayoutOrder]
       90 SETTABLEKS                       R15 R14 K35 ["SortOrder"]
       92 SETTABLEKS                       R14 R13 K23 ["layout"]
       94 DUPTABLE                         R14 K41 [{"scrollBarVisibility"}]
       95 GETTABLEKS                       R15 R11 K42 ["Auto"]
       97 SETTABLEKS                       R15 R14 K40 ["scrollBarVisibility"]
       99 SETTABLEKS                       R14 R13 K24 ["scroll"]
      101 DUPCLOSURE                       R14 K43 [PROTO_1]
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R5
      112 GETTABLEKS                       R15 R3 K44 ["memo"]
      114 GETTABLEKS                       R16 R3 K45 ["forwardRef"]
      116 MOVE                             R17 R14
      117 CALL                             R16 1 -1
      118 CALL                             R15 -1 -1
      119 RETURN                           R15 -1
