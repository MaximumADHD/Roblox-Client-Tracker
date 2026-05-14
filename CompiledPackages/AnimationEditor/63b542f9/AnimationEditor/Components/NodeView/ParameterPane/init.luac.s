PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["false"] ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["canvasFrameRef"]
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K0 ["className"]
       17 JUMPIFNOTEQKS                    R8 K1 ["Parameter"] ; [+29]
       19 GETTABLEKS                       R8 R7 K2 ["name"]
       21 JUMPIFEQKNIL                     R8 ; [+25]
       23 GETTABLE                         R9 R0 R8
       24 JUMPIF                           R9 ; [+22]
       25 GETTABLEKS                       R10 R7 K3 ["nodeType"]
       27 FASTCALL1                        TYPE R10 ; [+2]
       28 GETIMPORT                        R9 K5 [type]
       30 CALL                             R9 1 1
       31 JUMPIFNOTEQKS                    R9 K6 ["string"] ; [+15]
       33 LOADB                            R9 1
       34 SETTABLE                         R9 R0 R8
       35 GETIMPORT                        R9 K8 [string.lower]
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 SETTABLE                         R9 R2 R7
       40 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       42 MOVE                             R10 R1
       43 MOVE                             R11 R7
       44 GETIMPORT                        R9 K11 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R3 2 ; [-33]
       49 GETIMPORT                        R3 K13 [table.sort]
       51 MOVE                             R4 R1
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          VAL R2
       54 CALL                             R3 2 0
       55 NEWTABLE                         R3 0 0
       57 MOVE                             R4 R1
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 FORGPREP                         R4
       61 GETTABLEKS                       R9 R8 K14 ["id"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K15 ["createElement"]
       66 GETUPVAL                         R11 2
       67 DUPTABLE                         R12 K18 [{"LayoutOrder", "node"}]
       68 SETTABLEKS                       R7 R12 K16 ["LayoutOrder"]
       70 SETTABLEKS                       R8 R12 K17 ["node"]
       72 CALL                             R10 2 1
       73 SETTABLE                         R10 R3 R9
       74 FORGLOOP                         R4 2 ; [-14]
       76 RETURN                           R3 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETIMPORT                        R1 K2 [UDim2.fromScale]
        3 LOADN                            R2 1
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K3 ["Size"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETIMPORT                        R0 K2 [Vector2.new]
        4 LOADK                            R1 K3 [∞]
        5 LOADK                            R2 K3 [∞]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1
        8 GETIMPORT                        R0 K2 [Vector2.new]
       10 LOADK                            R1 K3 [∞]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["Y"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K6 ["PARAMETER_PANE_POSITION_OFFSET"]
       17 GETTABLEKS                       R5 R5 K5 ["Y"]
       19 GETTABLEKS                       R5 R5 K7 ["Offset"]
       21 SUB                              R3 R4 R5
       22 SUBK                             R2 R3 K4 [8]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R1 K3 ["observeGraphNodeMap"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["createNextOrder"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 LOADK                            R5 K5 ["ParameterPaneExpanded"]
       19 LOADB                            R6 1
       20 GETIMPORT                        R7 K7 [tostring]
       22 DUPCLOSURE                       R8 K8 [PROTO_0]
       23 CALL                             R4 4 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       27 NEWCLOSURE                       R7 P1
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R2
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 5
       36 CALL                             R7 0 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       40 NEWCLOSURE                       R9 P2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R10 0 2
       45 GETTABLEKS                       R11 R7 K11 ["setFrame"]
       47 GETTABLEKS                       R12 R0 K12 ["canvasFrameRef"]
       49 GETTABLEKS                       R12 R12 K13 ["current"]
       51 SETLIST                          R10 R11 2 [1]
       53 CALL                             R8 2 0
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       57 NEWCLOSURE                       R9 P3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U6
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R2
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       72 GETTABLEKS                       R10 R10 K18 ["useScaledValue"]
       74 GETUPVAL                         R11 8
       75 GETTABLEKS                       R11 R11 K19 ["PARAMETER_PANE_WIDTH"]
       77 CALL                             R10 1 1
       78 LOADN                            R11 0
       79 CALL                             R9 2 1
       80 GETIMPORT                        R11 K21 [next]
       82 MOVE                             R12 R8
       83 CALL                             R11 1 1
       84 JUMPIFNOTEQKNIL                  R11 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K22 ["useCallback"]
       91 DUPCLOSURE                       R12 K23 [PROTO_5]
       92 NEWTABLE                         R13 0 0
       94 CALL                             R11 2 1
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K2 ["useSignalState"]
       98 GETTABLEKS                       R13 R7 K24 ["observeAbsoluteSize"]
      100 CALL                             R12 1 1
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      104 NEWCLOSURE                       R14 P5
      105 CAPTURE                          VAL R12
      106 CAPTURE                          UPVAL U8
      107 NEWTABLE                         R15 0 1
      109 MOVE                             R16 R12
      110 SETLIST                          R15 R16 1 [1]
      112 CALL                             R13 2 1
      113 JUMPIFNOT                        R6 ; [+2]
      114 LOADNIL                          R14
      115 RETURN                           R14 1
      116 GETUPVAL                         R14 0
      117 GETTABLEKS                       R14 R14 K25 ["createElement"]
      119 GETUPVAL                         R15 7
      120 GETTABLEKS                       R15 R15 K26 ["View"]
      122 DUPTABLE                         R16 K31 [{"tag", "Size", "Position", "stateLayer"}]
      123 LOADK                            R17 K32 ["bg-surface-200 auto-y col stroke-muted align-x-center radius-small gap-xsmall padding-bottom-small"]
      124 SETTABLEKS                       R17 R16 K27 ["tag"]
      126 SETTABLEKS                       R9 R16 K28 ["Size"]
      128 GETUPVAL                         R17 8
      129 GETTABLEKS                       R17 R17 K33 ["PARAMETER_PANE_POSITION_OFFSET"]
      131 SETTABLEKS                       R17 R16 K29 ["Position"]
      133 DUPTABLE                         R17 K35 [{"affordance"}]
      134 GETUPVAL                         R18 7
      135 GETTABLEKS                       R18 R18 K36 ["Enums"]
      137 GETTABLEKS                       R18 R18 K37 ["StateLayerAffordance"]
      139 GETTABLEKS                       R18 R18 K38 ["None"]
      141 SETTABLEKS                       R18 R17 K34 ["affordance"]
      143 SETTABLEKS                       R17 R16 K30 ["stateLayer"]
      145 DUPTABLE                         R17 K42 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      146 GETUPVAL                         R18 0
      147 GETTABLEKS                       R18 R18 K25 ["createElement"]
      149 LOADK                            R19 K39 ["UISizeConstraint"]
      150 DUPTABLE                         R20 K44 [{"MaxSize"}]
      151 SETTABLEKS                       R13 R20 K43 ["MaxSize"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K39 ["UISizeConstraint"]
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R18 R18 K25 ["createElement"]
      159 GETUPVAL                         R19 9
      160 DUPTABLE                         R20 K50 [{"LayoutOrder", "canExpand", "expanded", "canAddParameter", "setExpanded"}]
      161 MOVE                             R21 R3
      162 CALL                             R21 0 1
      163 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      165 SETTABLEKS                       R10 R20 K46 ["canExpand"]
      167 SETTABLEKS                       R4 R20 K47 ["expanded"]
      169 NOT                              R21 R6
      170 SETTABLEKS                       R21 R20 K48 ["canAddParameter"]
      172 SETTABLEKS                       R5 R20 K49 ["setExpanded"]
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K40 ["ParameterPaneHeader"]
      177 JUMPIFNOT                        R4 ; [+70]
      178 GETUPVAL                         R18 0
      179 GETTABLEKS                       R18 R18 K25 ["createElement"]
      181 GETUPVAL                         R19 7
      182 GETTABLEKS                       R19 R19 K51 ["ScrollView"]
      184 DUPTABLE                         R20 K56 [{"tag", "AutomaticSize", "scroll", "scrollingFrameRef", "Visible", "LayoutOrder"}]
      185 LOADK                            R21 K57 ["size-full-0 auto-y fill"]
      186 SETTABLEKS                       R21 R20 K27 ["tag"]
      188 GETIMPORT                        R21 K60 [Enum.AutomaticSize.Y]
      190 SETTABLEKS                       R21 R20 K52 ["AutomaticSize"]
      192 DUPTABLE                         R21 K65 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      193 GETIMPORT                        R22 K16 [UDim2.fromOffset]
      195 LOADN                            R23 0
      196 LOADN                            R24 0
      197 CALL                             R22 2 1
      198 SETTABLEKS                       R22 R21 K61 ["CanvasSize"]
      200 GETIMPORT                        R22 K60 [Enum.AutomaticSize.Y]
      202 SETTABLEKS                       R22 R21 K52 ["AutomaticSize"]
      204 GETIMPORT                        R22 K60 [Enum.AutomaticSize.Y]
      206 SETTABLEKS                       R22 R21 K62 ["AutomaticCanvasSize"]
      208 GETUPVAL                         R22 7
      209 GETTABLEKS                       R22 R22 K36 ["Enums"]
      211 GETTABLEKS                       R22 R22 K66 ["Visibility"]
      213 GETTABLEKS                       R22 R22 K67 ["Auto"]
      215 SETTABLEKS                       R22 R21 K63 ["scrollBarVisibility"]
      217 GETIMPORT                        R22 K68 [Enum.ScrollingDirection.Y]
      219 SETTABLEKS                       R22 R21 K64 ["ScrollingDirection"]
      221 SETTABLEKS                       R21 R20 K53 ["scroll"]
      223 SETTABLEKS                       R11 R20 K54 ["scrollingFrameRef"]
      225 SETTABLEKS                       R10 R20 K55 ["Visible"]
      227 MOVE                             R21 R3
      228 CALL                             R21 0 1
      229 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      231 DUPTABLE                         R21 K70 [{"ParameterNodeItemContainer"}]
      232 GETUPVAL                         R22 0
      233 GETTABLEKS                       R22 R22 K25 ["createElement"]
      235 GETUPVAL                         R23 7
      236 GETTABLEKS                       R23 R23 K26 ["View"]
      238 DUPTABLE                         R24 K71 [{"tag"}]
      239 LOADK                            R25 K72 ["col size-full-0 auto-y"]
      240 SETTABLEKS                       R25 R24 K27 ["tag"]
      242 MOVE                             R25 R8
      243 CALL                             R22 3 1
      244 SETTABLEKS                       R22 R21 K69 ["ParameterNodeItemContainer"]
      246 CALL                             R18 3 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R18
      249 SETTABLEKS                       R18 R17 K41 ["ParameterPaneScrollView"]
      251 CALL                             R14 3 -1
      252 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       32 GETTABLEKS                       R5 R5 K13 ["ParameterPane"]
       34 GETTABLEKS                       R5 R5 K14 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Components"]
       41 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       43 GETTABLEKS                       R6 R6 K13 ["ParameterPane"]
       45 GETTABLEKS                       R6 R6 K15 ["ParameterPaneHeader"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K11 ["Components"]
       52 GETTABLEKS                       R7 R7 K12 ["NodeView"]
       54 GETTABLEKS                       R7 R7 K13 ["ParameterPane"]
       56 GETTABLEKS                       R7 R7 K16 ["ParameterPaneItem"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Parent"]
       63 GETTABLEKS                       R8 R8 K17 ["React"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Parent"]
       70 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Parent"]
       77 GETTABLEKS                       R10 R10 K19 ["SignalsReact"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K21 ["useAbsoluteSize"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       91 GETTABLEKS                       R12 R12 K22 ["usePluginSetting"]
       93 CALL                             R11 1 1
       94 DUPCLOSURE                       R12 K23 [PROTO_7]
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 RETURN                           R12 1
