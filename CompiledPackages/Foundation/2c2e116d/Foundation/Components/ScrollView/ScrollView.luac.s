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
       36 JUMP                             ; [+1]
       37 DUPTABLE                         R9 K12 [{["affordance"] = "None"}]
       38 SETTABLEKS                       R9 R8 K9 ["stateLayer"]
       40 DUPTABLE                         R9 K15 [{["Selectable"] = False}]
       41 SETTABLEKS                       R9 R8 K16 ["selection"]
       43 SETTABLEKS                       R1 R8 K17 ["ref"]
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K18 ["Tag"]
       48 SETTABLE                         R4 R8 R9
       49 LOADNIL                          R9
       50 SETTABLEKS                       R9 R8 K19 ["scroll"]
       52 LOADNIL                          R9
       53 SETTABLEKS                       R9 R8 K20 ["layout"]
       55 DUPTABLE                         R9 K22 [{"ListLayout"}]
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R10 R10 K23 ["createElement"]
       59 LOADK                            R11 K24 ["UIListLayout"]
       60 DUPTABLE                         R12 K34 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
       61 GETTABLEKS                       R13 R2 K20 ["layout"]
       63 GETTABLEKS                       R13 R13 K25 ["FillDirection"]
       65 SETTABLEKS                       R13 R12 K25 ["FillDirection"]
       67 GETTABLEKS                       R13 R2 K20 ["layout"]
       69 GETTABLEKS                       R13 R13 K26 ["ItemLineAlignment"]
       71 SETTABLEKS                       R13 R12 K26 ["ItemLineAlignment"]
       73 GETTABLEKS                       R13 R2 K20 ["layout"]
       75 GETTABLEKS                       R13 R13 K27 ["HorizontalAlignment"]
       77 SETTABLEKS                       R13 R12 K27 ["HorizontalAlignment"]
       79 GETTABLEKS                       R13 R2 K20 ["layout"]
       81 GETTABLEKS                       R13 R13 K28 ["HorizontalFlex"]
       83 SETTABLEKS                       R13 R12 K28 ["HorizontalFlex"]
       85 GETTABLEKS                       R13 R2 K20 ["layout"]
       87 GETTABLEKS                       R13 R13 K29 ["VerticalAlignment"]
       89 SETTABLEKS                       R13 R12 K29 ["VerticalAlignment"]
       91 GETTABLEKS                       R13 R2 K20 ["layout"]
       93 GETTABLEKS                       R13 R13 K30 ["VerticalFlex"]
       95 SETTABLEKS                       R13 R12 K30 ["VerticalFlex"]
       97 GETTABLEKS                       R13 R2 K20 ["layout"]
       99 GETTABLEKS                       R13 R13 K31 ["Padding"]
      101 SETTABLEKS                       R13 R12 K31 ["Padding"]
      103 GETTABLEKS                       R13 R2 K20 ["layout"]
      105 GETTABLEKS                       R13 R13 K32 ["SortOrder"]
      107 SETTABLEKS                       R13 R12 K32 ["SortOrder"]
      109 GETTABLEKS                       R13 R2 K20 ["layout"]
      111 GETTABLEKS                       R13 R13 K33 ["Wraps"]
      113 SETTABLEKS                       R13 R12 K33 ["Wraps"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K21 ["ListLayout"]
      118 LOADNIL                          R10
      119 GETTABLEKS                       R11 R2 K35 ["children"]
      121 JUMPIFNOT                        R11 ; [+28]
      122 GETTABLEKS                       R12 R2 K35 ["children"]
      124 FASTCALL1                        TYPEOF R12 ; [+2]
      125 GETIMPORT                        R11 K37 [typeof]
      127 CALL                             R11 1 1
      128 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+21]
      130 GETTABLEKS                       R11 R2 K20 ["layout"]
      132 JUMPIFEQKNIL                     R11 ; [+17]
      134 GETTABLEKS                       R11 R2 K20 ["layout"]
      136 GETTABLEKS                       R11 R11 K25 ["FillDirection"]
      138 JUMPIFEQKNIL                     R11 ; [+11]
      140 MOVE                             R10 R9
      141 GETTABLEKS                       R11 R2 K35 ["children"]
      143 LOADNIL                          R12
      144 LOADNIL                          R13
      145 FORGPREP                         R11
      146 SETTABLE                         R15 R10 R14
      147 FORGLOOP                         R11 2 ; [-2]
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R10 R2 K35 ["children"]
      152 GETUPVAL                         R11 4
      153 GETTABLEKS                       R11 R11 K23 ["createElement"]
      155 GETUPVAL                         R12 6
      156 MOVE                             R13 R8
      157 DUPTABLE                         R14 K39 [{"ScrollingFrame"}]
      158 GETUPVAL                         R15 4
      159 GETTABLEKS                       R15 R15 K23 ["createElement"]
      161 GETUPVAL                         R16 7
      162 DUPTABLE                         R17 K53 [{["controlState"], ["selection"], ["scrollBarVisibility"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["onAbsoluteWindowSizeChanged"], ["AutomaticSize"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = False, ["ScrollingDirection"], ["ScrollingEnabled"], ["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ref"]}]
      163 SETTABLEKS                       R5 R17 K40 ["controlState"]
      165 GETTABLEKS                       R18 R2 K16 ["selection"]
      167 SETTABLEKS                       R18 R17 K16 ["selection"]
      169 GETTABLEKS                       R18 R2 K19 ["scroll"]
      171 GETTABLEKS                       R18 R18 K41 ["scrollBarVisibility"]
      173 SETTABLEKS                       R18 R17 K41 ["scrollBarVisibility"]
      175 GETTABLEKS                       R18 R2 K42 ["onCanvasPositionChanged"]
      177 SETTABLEKS                       R18 R17 K42 ["onCanvasPositionChanged"]
      179 GETTABLEKS                       R18 R2 K43 ["onAbsoluteCanvasSizeChanged"]
      181 SETTABLEKS                       R18 R17 K43 ["onAbsoluteCanvasSizeChanged"]
      183 GETTABLEKS                       R18 R2 K44 ["onAbsoluteWindowSizeChanged"]
      185 SETTABLEKS                       R18 R17 K44 ["onAbsoluteWindowSizeChanged"]
      187 GETTABLEKS                       R18 R2 K19 ["scroll"]
      189 GETTABLEKS                       R18 R18 K45 ["AutomaticSize"]
      191 SETTABLEKS                       R18 R17 K45 ["AutomaticSize"]
      193 GETTABLEKS                       R18 R2 K19 ["scroll"]
      195 GETTABLEKS                       R18 R18 K46 ["AutomaticCanvasSize"]
      197 SETTABLEKS                       R18 R17 K46 ["AutomaticCanvasSize"]
      199 GETTABLEKS                       R18 R2 K19 ["scroll"]
      201 GETTABLEKS                       R18 R18 K47 ["CanvasSize"]
      203 SETTABLEKS                       R18 R17 K47 ["CanvasSize"]
      205 GETTABLEKS                       R18 R2 K19 ["scroll"]
      207 GETTABLEKS                       R18 R18 K49 ["ScrollingDirection"]
      209 SETTABLEKS                       R18 R17 K49 ["ScrollingDirection"]
      211 GETTABLEKS                       R18 R2 K19 ["scroll"]
      213 GETTABLEKS                       R18 R18 K50 ["ScrollingEnabled"]
      215 SETTABLEKS                       R18 R17 K50 ["ScrollingEnabled"]
      217 GETTABLEKS                       R18 R2 K19 ["scroll"]
      219 GETTABLEKS                       R18 R18 K51 ["VerticalScrollBarInset"]
      221 SETTABLEKS                       R18 R17 K51 ["VerticalScrollBarInset"]
      223 GETTABLEKS                       R18 R2 K19 ["scroll"]
      225 GETTABLEKS                       R18 R18 K52 ["HorizontalScrollBarInset"]
      227 SETTABLEKS                       R18 R17 K52 ["HorizontalScrollBarInset"]
      229 GETTABLEKS                       R18 R2 K54 ["scrollingFrameRef"]
      231 SETTABLEKS                       R18 R17 K17 ["ref"]
      233 MOVE                             R18 R10
      234 CALL                             R15 3 1
      235 SETTABLEKS                       R15 R14 K38 ["ScrollingFrame"]
      237 CALL                             R11 3 -1
      238 RETURN                           R11 -1

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
       74 DUPTABLE                         R11 K32 [{["layout"], ["scroll"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["isDisabled"] = False, ["testId"] = "--foundation-scroll-view"}]
       75 DUPTABLE                         R12 K34 [{"SortOrder"}]
       76 GETIMPORT                        R13 K37 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R13 R12 K33 ["SortOrder"]
       80 SETTABLEKS                       R12 R11 K21 ["layout"]
       82 DUPTABLE                         R12 K39 [{"scrollBarVisibility"}]
       83 GETTABLEKS                       R13 R9 K40 ["Auto"]
       85 SETTABLEKS                       R13 R12 K38 ["scrollBarVisibility"]
       87 SETTABLEKS                       R12 R11 K22 ["scroll"]
       89 DUPCLOSURE                       R12 K41 [PROTO_1]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R3
       98 GETTABLEKS                       R13 R2 K42 ["memo"]
      100 GETTABLEKS                       R14 R2 K43 ["forwardRef"]
      102 MOVE                             R15 R12
      103 CALL                             R14 1 -1
      104 CALL                             R13 -1 -1
      105 RETURN                           R13 -1
