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
       10 GETTABLEKS                       R3 R1 K3 ["nodePayloadDispatcher"]
       12 GETTABLEKS                       R3 R3 K4 ["observeMap"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["createNextOrder"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 LOADK                            R5 K6 ["ParameterPaneExpanded"]
       21 LOADB                            R6 1
       22 GETIMPORT                        R7 K8 [tostring]
       24 DUPCLOSURE                       R8 K9 [PROTO_0]
       25 CALL                             R4 4 2
       26 GETUPVAL                         R7 5
       27 JUMPIFNOT                        R7 ; [+2]
       28 LOADNIL                          R6
       29 JUMP                             ; [+11]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R8 0 1
       37 MOVE                             R9 R2
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 6
       42 CALL                             R7 0 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K11 ["useEffect"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R10 0 2
       51 GETTABLEKS                       R11 R7 K12 ["setFrame"]
       53 GETTABLEKS                       R12 R0 K13 ["canvasFrameRef"]
       55 GETTABLEKS                       R12 R12 K14 ["current"]
       57 SETLIST                          R10 R11 2 [1]
       59 CALL                             R8 2 0
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       63 NEWCLOSURE                       R9 P3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U7
       67 NEWTABLE                         R10 0 1
       69 MOVE                             R11 R2
       70 SETLIST                          R10 R11 1 [1]
       72 CALL                             R8 2 1
       73 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       75 GETUPVAL                         R10 8
       76 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K19 ["useScaledValue"]
       80 GETUPVAL                         R11 9
       81 GETTABLEKS                       R11 R11 K20 ["PARAMETER_PANE_WIDTH"]
       83 CALL                             R10 1 1
       84 LOADN                            R11 0
       85 CALL                             R9 2 1
       86 GETIMPORT                        R11 K22 [next]
       88 MOVE                             R12 R8
       89 CALL                             R11 1 1
       90 JUMPIFNOTEQKNIL                  R11 ; [+2]
       92 LOADB                            R10 0 +1
       93 LOADB                            R10 1
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K23 ["useCallback"]
       97 DUPCLOSURE                       R12 K24 [PROTO_5]
       98 NEWTABLE                         R13 0 0
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 2
      102 GETTABLEKS                       R12 R12 K2 ["useSignalState"]
      104 GETTABLEKS                       R13 R7 K25 ["observeAbsoluteSize"]
      106 CALL                             R12 1 1
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K10 ["useMemo"]
      110 NEWCLOSURE                       R14 P5
      111 CAPTURE                          VAL R12
      112 CAPTURE                          UPVAL U9
      113 NEWTABLE                         R15 0 1
      115 MOVE                             R16 R12
      116 SETLIST                          R15 R16 1 [1]
      118 CALL                             R13 2 1
      119 GETUPVAL                         R14 5
      120 JUMPIF                           R14 ; [+3]
      121 JUMPIFNOT                        R6 ; [+2]
      122 LOADNIL                          R14
      123 RETURN                           R14 1
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K26 ["createElement"]
      127 GETUPVAL                         R15 8
      128 GETTABLEKS                       R15 R15 K27 ["View"]
      130 DUPTABLE                         R16 K33 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["stateLayer"]}]
      131 SETTABLEKS                       R9 R16 K30 ["Size"]
      133 GETUPVAL                         R17 9
      134 GETTABLEKS                       R17 R17 K34 ["PARAMETER_PANE_POSITION_OFFSET"]
      136 SETTABLEKS                       R17 R16 K31 ["Position"]
      138 DUPTABLE                         R17 K36 [{"affordance"}]
      139 GETUPVAL                         R18 8
      140 GETTABLEKS                       R18 R18 K37 ["Enums"]
      142 GETTABLEKS                       R18 R18 K38 ["StateLayerAffordance"]
      144 GETTABLEKS                       R18 R18 K39 ["None"]
      146 SETTABLEKS                       R18 R17 K35 ["affordance"]
      148 SETTABLEKS                       R17 R16 K32 ["stateLayer"]
      150 DUPTABLE                         R17 K43 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      151 GETUPVAL                         R18 0
      152 GETTABLEKS                       R18 R18 K26 ["createElement"]
      154 LOADK                            R19 K40 ["UISizeConstraint"]
      155 DUPTABLE                         R20 K45 [{"MaxSize"}]
      156 SETTABLEKS                       R13 R20 K44 ["MaxSize"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K40 ["UISizeConstraint"]
      161 GETUPVAL                         R18 0
      162 GETTABLEKS                       R18 R18 K26 ["createElement"]
      164 GETUPVAL                         R19 10
      165 DUPTABLE                         R20 K51 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      166 MOVE                             R21 R3
      167 CALL                             R21 0 1
      168 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      170 SETTABLEKS                       R10 R20 K47 ["canExpand"]
      172 SETTABLEKS                       R4 R20 K48 ["expanded"]
      174 GETUPVAL                         R22 5
      175 JUMPIFNOT                        R22 ; [+2]
      176 LOADB                            R21 1
      177 JUMP                             ; [+1]
      178 NOT                              R21 R6
      179 SETTABLEKS                       R21 R20 K49 ["DEPRECATED_canAddParameter"]
      181 SETTABLEKS                       R5 R20 K50 ["setExpanded"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K41 ["ParameterPaneHeader"]
      186 JUMPIFNOT                        R4 ; [+64]
      187 GETUPVAL                         R18 0
      188 GETTABLEKS                       R18 R18 K26 ["createElement"]
      190 GETUPVAL                         R19 8
      191 GETTABLEKS                       R19 R19 K52 ["ScrollView"]
      193 DUPTABLE                         R20 K58 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      194 GETIMPORT                        R21 K61 [Enum.AutomaticSize.Y]
      196 SETTABLEKS                       R21 R20 K54 ["AutomaticSize"]
      198 DUPTABLE                         R21 K66 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      199 GETIMPORT                        R22 K17 [UDim2.fromOffset]
      201 LOADN                            R23 0
      202 LOADN                            R24 0
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K62 ["CanvasSize"]
      206 GETIMPORT                        R22 K61 [Enum.AutomaticSize.Y]
      208 SETTABLEKS                       R22 R21 K54 ["AutomaticSize"]
      210 GETIMPORT                        R22 K61 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R22 R21 K63 ["AutomaticCanvasSize"]
      214 GETUPVAL                         R22 8
      215 GETTABLEKS                       R22 R22 K37 ["Enums"]
      217 GETTABLEKS                       R22 R22 K67 ["Visibility"]
      219 GETTABLEKS                       R22 R22 K68 ["Auto"]
      221 SETTABLEKS                       R22 R21 K64 ["scrollBarVisibility"]
      223 GETIMPORT                        R22 K69 [Enum.ScrollingDirection.Y]
      225 SETTABLEKS                       R22 R21 K65 ["ScrollingDirection"]
      227 SETTABLEKS                       R21 R20 K55 ["scroll"]
      229 SETTABLEKS                       R11 R20 K56 ["scrollingFrameRef"]
      231 SETTABLEKS                       R10 R20 K57 ["Visible"]
      233 MOVE                             R21 R3
      234 CALL                             R21 0 1
      235 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      237 DUPTABLE                         R21 K71 [{"ParameterNodeItemContainer"}]
      238 GETUPVAL                         R22 0
      239 GETTABLEKS                       R22 R22 K26 ["createElement"]
      241 GETUPVAL                         R23 8
      242 GETTABLEKS                       R23 R23 K27 ["View"]
      244 DUPTABLE                         R24 K73 [{["tag"] = "col size-full-0 auto-y"}]
      245 MOVE                             R25 R8
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K70 ["ParameterNodeItemContainer"]
      249 CALL                             R18 3 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R18
      252 SETTABLEKS                       R18 R17 K42 ["ParameterPaneScrollView"]
      254 CALL                             R14 3 -1
      255 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_AllowNoParameters"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K13 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K14 ["ParameterPaneHeader"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K15 ["ParameterPaneItem"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Parent"]
       58 GETTABLEKS                       R9 R9 K16 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Parent"]
       65 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["SignalsReact"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K20 ["useAbsoluteSize"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       86 GETTABLEKS                       R13 R13 K21 ["usePluginSetting"]
       88 CALL                             R12 1 1
       89 DUPCLOSURE                       R13 K22 [PROTO_7]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 RETURN                           R13 1
