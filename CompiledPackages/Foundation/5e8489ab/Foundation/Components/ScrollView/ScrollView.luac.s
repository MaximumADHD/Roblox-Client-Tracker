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
       22 GETIMPORT                        R8 K6 [table.clone]
       24 MOVE                             R9 R2
       25 CALL                             R8 1 1
       26 SETTABLEKS                       R7 R8 K7 ["onStateChanged"]
       28 GETTABLEKS                       R10 R2 K7 ["onStateChanged"]
       30 JUMPIF                           R10 ; [+3]
       31 GETTABLEKS                       R10 R2 K8 ["onActivated"]
       33 JUMPIFNOT                        R10 ; [+3]
       34 GETTABLEKS                       R9 R2 K9 ["stateLayer"]
       36 JUMP                             ; [+4]
       37 DUPTABLE                         R9 K11 [{"affordance"}]
       38 LOADK                            R10 K12 ["None"]
       39 SETTABLEKS                       R10 R9 K10 ["affordance"]
       41 SETTABLEKS                       R9 R8 K9 ["stateLayer"]
       43 DUPTABLE                         R9 K14 [{"Selectable"}]
       44 LOADB                            R10 0
       45 SETTABLEKS                       R10 R9 K13 ["Selectable"]
       47 SETTABLEKS                       R9 R8 K15 ["selection"]
       49 SETTABLEKS                       R1 R8 K16 ["ref"]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K17 ["Tag"]
       54 SETTABLE                         R4 R8 R9
       55 LOADNIL                          R9
       56 SETTABLEKS                       R9 R8 K18 ["scroll"]
       58 LOADNIL                          R9
       59 SETTABLEKS                       R9 R8 K19 ["layout"]
       61 DUPTABLE                         R9 K21 [{"ListLayout"}]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K22 ["createElement"]
       65 LOADK                            R11 K23 ["UIListLayout"]
       66 DUPTABLE                         R12 K33 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
       67 GETTABLEKS                       R13 R2 K19 ["layout"]
       69 GETTABLEKS                       R13 R13 K24 ["FillDirection"]
       71 SETTABLEKS                       R13 R12 K24 ["FillDirection"]
       73 GETTABLEKS                       R13 R2 K19 ["layout"]
       75 GETTABLEKS                       R13 R13 K25 ["ItemLineAlignment"]
       77 SETTABLEKS                       R13 R12 K25 ["ItemLineAlignment"]
       79 GETTABLEKS                       R13 R2 K19 ["layout"]
       81 GETTABLEKS                       R13 R13 K26 ["HorizontalAlignment"]
       83 SETTABLEKS                       R13 R12 K26 ["HorizontalAlignment"]
       85 GETTABLEKS                       R13 R2 K19 ["layout"]
       87 GETTABLEKS                       R13 R13 K27 ["HorizontalFlex"]
       89 SETTABLEKS                       R13 R12 K27 ["HorizontalFlex"]
       91 GETTABLEKS                       R13 R2 K19 ["layout"]
       93 GETTABLEKS                       R13 R13 K28 ["VerticalAlignment"]
       95 SETTABLEKS                       R13 R12 K28 ["VerticalAlignment"]
       97 GETTABLEKS                       R13 R2 K19 ["layout"]
       99 GETTABLEKS                       R13 R13 K29 ["VerticalFlex"]
      101 SETTABLEKS                       R13 R12 K29 ["VerticalFlex"]
      103 GETTABLEKS                       R13 R2 K19 ["layout"]
      105 GETTABLEKS                       R13 R13 K30 ["Padding"]
      107 SETTABLEKS                       R13 R12 K30 ["Padding"]
      109 GETTABLEKS                       R13 R2 K19 ["layout"]
      111 GETTABLEKS                       R13 R13 K31 ["SortOrder"]
      113 SETTABLEKS                       R13 R12 K31 ["SortOrder"]
      115 GETTABLEKS                       R13 R2 K19 ["layout"]
      117 GETTABLEKS                       R13 R13 K32 ["Wraps"]
      119 SETTABLEKS                       R13 R12 K32 ["Wraps"]
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K20 ["ListLayout"]
      124 LOADNIL                          R10
      125 GETTABLEKS                       R11 R2 K34 ["children"]
      127 JUMPIFNOT                        R11 ; [+28]
      128 GETTABLEKS                       R12 R2 K34 ["children"]
      130 FASTCALL1                        TYPEOF R12 ; [+2]
      131 GETIMPORT                        R11 K36 [typeof]
      133 CALL                             R11 1 1
      134 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+21]
      136 GETTABLEKS                       R11 R2 K19 ["layout"]
      138 JUMPIFEQKNIL                     R11 ; [+17]
      140 GETTABLEKS                       R11 R2 K19 ["layout"]
      142 GETTABLEKS                       R11 R11 K24 ["FillDirection"]
      144 JUMPIFEQKNIL                     R11 ; [+11]
      146 MOVE                             R10 R9
      147 GETTABLEKS                       R11 R2 K34 ["children"]
      149 LOADNIL                          R12
      150 LOADNIL                          R13
      151 FORGPREP                         R11
      152 SETTABLE                         R15 R10 R14
      153 FORGLOOP                         R11 2 ; [-2]
      155 JUMP                             ; [+2]
      156 GETTABLEKS                       R10 R2 K34 ["children"]
      158 GETUPVAL                         R11 4
      159 GETTABLEKS                       R11 R11 K22 ["createElement"]
      161 GETUPVAL                         R12 6
      162 MOVE                             R13 R8
      163 DUPTABLE                         R14 K38 [{"ScrollingFrame"}]
      164 GETUPVAL                         R15 4
      165 GETTABLEKS                       R15 R15 K22 ["createElement"]
      167 GETUPVAL                         R16 7
      168 DUPTABLE                         R17 K52 [{"controlState", "selection", "scrollBarVisibility", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "ref"}]
      169 SETTABLEKS                       R5 R17 K39 ["controlState"]
      171 GETTABLEKS                       R18 R2 K15 ["selection"]
      173 SETTABLEKS                       R18 R17 K15 ["selection"]
      175 GETTABLEKS                       R18 R2 K18 ["scroll"]
      177 GETTABLEKS                       R18 R18 K40 ["scrollBarVisibility"]
      179 SETTABLEKS                       R18 R17 K40 ["scrollBarVisibility"]
      181 GETTABLEKS                       R18 R2 K41 ["onCanvasPositionChanged"]
      183 SETTABLEKS                       R18 R17 K41 ["onCanvasPositionChanged"]
      185 GETTABLEKS                       R18 R2 K42 ["onAbsoluteCanvasSizeChanged"]
      187 SETTABLEKS                       R18 R17 K42 ["onAbsoluteCanvasSizeChanged"]
      189 GETTABLEKS                       R18 R2 K43 ["onAbsoluteWindowSizeChanged"]
      191 SETTABLEKS                       R18 R17 K43 ["onAbsoluteWindowSizeChanged"]
      193 GETTABLEKS                       R18 R2 K18 ["scroll"]
      195 GETTABLEKS                       R18 R18 K44 ["AutomaticSize"]
      197 SETTABLEKS                       R18 R17 K44 ["AutomaticSize"]
      199 GETTABLEKS                       R18 R2 K18 ["scroll"]
      201 GETTABLEKS                       R18 R18 K45 ["AutomaticCanvasSize"]
      203 SETTABLEKS                       R18 R17 K45 ["AutomaticCanvasSize"]
      205 GETTABLEKS                       R18 R2 K18 ["scroll"]
      207 GETTABLEKS                       R18 R18 K46 ["CanvasSize"]
      209 SETTABLEKS                       R18 R17 K46 ["CanvasSize"]
      211 LOADB                            R18 0
      212 SETTABLEKS                       R18 R17 K47 ["ClipsDescendants"]
      214 GETTABLEKS                       R18 R2 K18 ["scroll"]
      216 GETTABLEKS                       R18 R18 K48 ["ScrollingDirection"]
      218 SETTABLEKS                       R18 R17 K48 ["ScrollingDirection"]
      220 GETTABLEKS                       R18 R2 K18 ["scroll"]
      222 GETTABLEKS                       R18 R18 K49 ["ScrollingEnabled"]
      224 SETTABLEKS                       R18 R17 K49 ["ScrollingEnabled"]
      226 GETTABLEKS                       R18 R2 K18 ["scroll"]
      228 GETTABLEKS                       R18 R18 K50 ["VerticalScrollBarInset"]
      230 SETTABLEKS                       R18 R17 K50 ["VerticalScrollBarInset"]
      232 GETTABLEKS                       R18 R2 K18 ["scroll"]
      234 GETTABLEKS                       R18 R18 K51 ["HorizontalScrollBarInset"]
      236 SETTABLEKS                       R18 R17 K51 ["HorizontalScrollBarInset"]
      238 GETTABLEKS                       R18 R2 K53 ["scrollingFrameRef"]
      240 SETTABLEKS                       R18 R17 K16 ["ref"]
      242 MOVE                             R18 R10
      243 CALL                             R15 3 1
      244 SETTABLEKS                       R15 R14 K37 ["ScrollingFrame"]
      246 CALL                             R11 3 -1
      247 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["ScrollingFrame"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Components"]
       27 GETTABLEKS                       R5 R5 K10 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Components"]
       34 GETTABLEKS                       R6 R6 K11 ["View"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Utility"]
       41 GETTABLEKS                       R7 R7 K13 ["useDefaultTags"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Utility"]
       48 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K15 ["Providers"]
       55 GETTABLEKS                       R9 R9 K16 ["Style"]
       57 GETTABLEKS                       R9 R9 K17 ["useStyleTags"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K18 ["Enums"]
       64 GETTABLEKS                       R10 R10 K19 ["Visibility"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K18 ["Enums"]
       71 GETTABLEKS                       R11 R11 K20 ["ControlState"]
       73 CALL                             R10 1 1
       74 DUPTABLE                         R11 K28 [{"layout", "scroll", "AutoLocalize", "BorderSizePixel", "ClipsDescendants", "isDisabled", "testId"}]
       75 DUPTABLE                         R12 K30 [{"SortOrder"}]
       76 GETIMPORT                        R13 K33 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R13 R12 K29 ["SortOrder"]
       80 SETTABLEKS                       R12 R11 K21 ["layout"]
       82 DUPTABLE                         R12 K35 [{"scrollBarVisibility"}]
       83 GETTABLEKS                       R13 R9 K36 ["Auto"]
       85 SETTABLEKS                       R13 R12 K34 ["scrollBarVisibility"]
       87 SETTABLEKS                       R12 R11 K22 ["scroll"]
       89 LOADB                            R12 0
       90 SETTABLEKS                       R12 R11 K23 ["AutoLocalize"]
       92 LOADN                            R12 0
       93 SETTABLEKS                       R12 R11 K24 ["BorderSizePixel"]
       95 LOADB                            R12 1
       96 SETTABLEKS                       R12 R11 K25 ["ClipsDescendants"]
       98 LOADB                            R12 0
       99 SETTABLEKS                       R12 R11 K26 ["isDisabled"]
      101 LOADK                            R12 K37 ["--foundation-scroll-view"]
      102 SETTABLEKS                       R12 R11 K27 ["testId"]
      104 DUPCLOSURE                       R12 K38 [PROTO_1]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R3
      113 GETTABLEKS                       R13 R2 K39 ["memo"]
      115 GETTABLEKS                       R14 R2 K40 ["forwardRef"]
      117 MOVE                             R15 R12
      118 CALL                             R14 1 -1
      119 CALL                             R13 -1 -1
      120 RETURN                           R13 -1
