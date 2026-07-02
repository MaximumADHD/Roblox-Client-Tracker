PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R0 K2 ["OnToggle"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["Row"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Row"]
        5 GETIMPORT                        R1 K3 [game]
        7 LOADK                            R3 K4 ["MetaBreakpointManager"]
        8 NAMECALL                         R1 R1 K5 ["GetService"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R4 R0 K6 ["item"]
       13 GETTABLEKS                       R4 R4 K7 ["id"]
       15 NAMECALL                         R2 R1 K8 ["GetBreakpointById"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K9 ["setBreakpointRowEnabled"]
       21 MOVE                             R4 R2
       22 MOVE                             R5 R0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K0 ["props"]
       26 GETTABLEKS                       R6 R6 K10 ["Analytics"]
       28 LOADK                            R7 K11 ["LuaBreakpointsTable.BreakpointIconClicked"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["props"]
       32 GETTABLEKS                       R8 R8 K12 ["CurrentConnectionId"]
       34 CALL                             R3 5 0
       35 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onToggle"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["onBreakpointIconClicked"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R1 K1 ["isValid"]
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
        8 GETTABLEKS                       R1 R1 K3 ["invalidBreakpoint"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["item"]
       13 GETTABLEKS                       R1 R1 K4 ["debugpointType"]
       15 JUMPIFNOTEQKS                    R1 K5 ["Breakpoint"] ; [+46]
       17 GETTABLEKS                       R1 R0 K0 ["item"]
       19 GETTABLEKS                       R1 R1 K6 ["condition"]
       21 JUMPIFNOT                        R1 ; [+6]
       22 GETTABLEKS                       R1 R0 K0 ["item"]
       24 GETTABLEKS                       R1 R1 K6 ["condition"]
       26 JUMPIFNOTEQKS                    R1 K7 [""] ; [+18]
       28 GETTABLEKS                       R2 R0 K0 ["item"]
       30 GETTABLEKS                       R2 R2 K8 ["isEnabled"]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       36 GETTABLEKS                       R1 R1 K9 ["breakpointEnabled"]
       38 JUMPIF                           R1 ; [+5]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       42 GETTABLEKS                       R1 R1 K10 ["breakpointDisabled"]
       44 RETURN                           R1 1
       45 GETTABLEKS                       R2 R0 K0 ["item"]
       47 GETTABLEKS                       R2 R2 K8 ["isEnabled"]
       49 JUMPIFNOT                        R2 ; [+6]
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       53 GETTABLEKS                       R1 R1 K11 ["conditionalEnabled"]
       55 JUMPIF                           R1 ; [+5]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       59 GETTABLEKS                       R1 R1 K12 ["conditionalDisabled"]
       61 RETURN                           R1 1
       62 GETTABLEKS                       R2 R0 K0 ["item"]
       64 GETTABLEKS                       R2 R2 K8 ["isEnabled"]
       66 JUMPIFNOT                        R2 ; [+6]
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       70 GETTABLEKS                       R1 R1 K13 ["logpointEnabled"]
       72 JUMPIF                           R1 ; [+5]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       76 GETTABLEKS                       R1 R1 K14 ["logpointDisabled"]
       78 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R4 R1 K3 ["HasChildren"]
        8 GETTABLEKS                       R6 R1 K4 ["ColumnIndex"]
       10 JUMPIFEQKN                       R6 K5 [1] ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 GETTABLEKS                       R7 R2 K6 ["depth"]
       16 GETTABLEKS                       R8 R3 K7 ["Indent"]
       18 MUL                              R6 R7 R8
       19 GETTABLEKS                       R8 R3 K8 ["CellPadding"]
       21 GETTABLEKS                       R8 R8 K9 ["Left"]
       23 ADD                              R7 R8 R6
       24 JUMPIF                           R4 ; [+2]
       25 MULK                             R8 R6 K10 [2]
       26 ADD                              R7 R7 R8
       27 GETTABLEKS                       R8 R3 K11 ["Arrow"]
       29 GETTABLEKS                       R8 R8 K12 ["Size"]
       31 GETTABLEKS                       R10 R1 K13 ["CellProps"]
       33 GETTABLEKS                       R10 R10 K14 ["Expansion"]
       35 GETTABLEKS                       R11 R2 K15 ["item"]
       37 GETTABLE                         R9 R10 R11
       38 JUMPIFNOT                        R5 ; [+22]
       39 DUPTABLE                         R10 K19 [{"Top", "Left", "Right", "Bottom"}]
       40 GETTABLEKS                       R11 R3 K8 ["CellPadding"]
       42 GETTABLEKS                       R11 R11 K16 ["Top"]
       44 SETTABLEKS                       R11 R10 K16 ["Top"]
       46 SETTABLEKS                       R7 R10 K9 ["Left"]
       48 GETTABLEKS                       R11 R3 K8 ["CellPadding"]
       50 GETTABLEKS                       R11 R11 K17 ["Right"]
       52 SETTABLEKS                       R11 R10 K17 ["Right"]
       54 GETTABLEKS                       R11 R3 K8 ["CellPadding"]
       56 GETTABLEKS                       R11 R11 K18 ["Bottom"]
       58 SETTABLEKS                       R11 R10 K18 ["Bottom"]
       60 JUMPIF                           R10 ; [+2]
       61 GETTABLEKS                       R10 R3 K8 ["CellPadding"]
       63 GETUPVAL                         R11 0
       64 MOVE                             R12 R2
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R12 R12 K20 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K27 [{["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       71 GETTABLEKS                       R15 R1 K28 ["BackgroundColor"]
       73 SETTABLEKS                       R15 R14 K22 ["BackgroundColor3"]
       75 GETTABLEKS                       R15 R3 K29 ["Border"]
       77 SETTABLEKS                       R15 R14 K24 ["BorderColor3"]
       79 GETIMPORT                        R15 K32 [UDim2.new]
       81 GETTABLEKS                       R16 R1 K33 ["Width"]
       83 GETTABLEKS                       R16 R16 K34 ["Scale"]
       85 GETTABLEKS                       R17 R1 K33 ["Width"]
       87 GETTABLEKS                       R17 R17 K35 ["Offset"]
       89 LOADN                            R18 1
       90 LOADN                            R19 0
       91 CALL                             R15 4 1
       92 SETTABLEKS                       R15 R14 K12 ["Size"]
       94 DUPTABLE                         R15 K36 [{"Left"}]
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R16 R16 K20 ["createElement"]
       98 GETUPVAL                         R17 2
       99 DUPTABLE                         R18 K44 [{["Layout"], ["LayoutOrder"] = 0, ["Padding"], ["Spacing"], ["HorizontalAlignment"], ["AutomaticSize"]}]
      100 GETIMPORT                        R19 K48 [Enum.FillDirection.Horizontal]
      102 SETTABLEKS                       R19 R18 K37 ["Layout"]
      104 SETTABLEKS                       R10 R18 K40 ["Padding"]
      106 GETTABLEKS                       R19 R3 K49 ["CellSpacing"]
      108 SETTABLEKS                       R19 R18 K41 ["Spacing"]
      110 GETIMPORT                        R19 K50 [Enum.HorizontalAlignment.Left]
      112 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      114 GETIMPORT                        R19 K52 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R19 R18 K43 ["AutomaticSize"]
      118 DUPTABLE                         R19 K56 [{"Toggle", "ChildCountIndicator", "BreakpointIconPane"}]
      119 JUMPIFNOT                        R4 ; [+62]
      120 GETUPVAL                         R20 1
      121 GETTABLEKS                       R20 R20 K20 ["createElement"]
      123 LOADK                            R21 K57 ["ImageButton"]
      124 NEWTABLE                         R22 8 0
      126 LOADN                            R23 0
      127 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      129 GETIMPORT                        R23 K32 [UDim2.new]
      131 LOADN                            R24 0
      132 MOVE                             R25 R8
      133 LOADN                            R26 0
      134 MOVE                             R27 R8
      135 CALL                             R23 4 1
      136 SETTABLEKS                       R23 R22 K12 ["Size"]
      138 LOADN                            R23 1
      139 SETTABLEKS                       R23 R22 K58 ["BackgroundTransparency"]
      141 GETTABLEKS                       R23 R3 K11 ["Arrow"]
      143 GETTABLEKS                       R23 R23 K59 ["Image"]
      145 SETTABLEKS                       R23 R22 K59 ["Image"]
      147 GETTABLEKS                       R23 R3 K11 ["Arrow"]
      149 GETTABLEKS                       R23 R23 K60 ["Color"]
      151 SETTABLEKS                       R23 R22 K61 ["ImageColor3"]
      153 GETIMPORT                        R23 K63 [Vector2.new]
      155 MOVE                             R24 R8
      156 MOVE                             R25 R8
      157 CALL                             R23 2 1
      158 SETTABLEKS                       R23 R22 K64 ["ImageRectSize"]
      160 JUMPIFNOT                        R9 ; [+5]
      161 GETTABLEKS                       R23 R3 K11 ["Arrow"]
      163 GETTABLEKS                       R23 R23 K65 ["ExpandedOffset"]
      165 JUMPIF                           R23 ; [+4]
      166 GETTABLEKS                       R23 R3 K11 ["Arrow"]
      168 GETTABLEKS                       R23 R23 K66 ["CollapsedOffset"]
      170 SETTABLEKS                       R23 R22 K67 ["ImageRectOffset"]
      172 GETUPVAL                         R23 1
      173 GETTABLEKS                       R23 R23 K68 ["Event"]
      175 GETTABLEKS                       R23 R23 K69 ["Activated"]
      177 GETTABLEKS                       R24 R0 K70 ["onToggle"]
      179 SETTABLE                         R24 R22 R23
      180 CALL                             R20 2 1
      181 JUMPIF                           R20 ; [+1]
      182 LOADNIL                          R20
      183 SETTABLEKS                       R20 R19 K53 ["Toggle"]
      185 MOVE                             R20 R4
      186 JUMPIFNOT                        R20 ; [+29]
      187 GETUPVAL                         R20 1
      188 GETTABLEKS                       R20 R20 K20 ["createElement"]
      190 GETUPVAL                         R21 3
      191 DUPTABLE                         R22 K72 [{["Text"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
      192 LOADK                            R24 K73 ["(x"]
      193 GETTABLEKS                       R27 R2 K15 ["item"]
      195 GETTABLEKS                       R27 R27 K74 ["children"]
      197 LENGTH                           R25 R27
      198 LOADK                            R26 K75 [")"]
      199 CONCAT                           R23 R24 R26
      200 SETTABLEKS                       R23 R22 K71 ["Text"]
      202 GETIMPORT                        R23 K32 [UDim2.new]
      204 LOADN                            R24 0
      205 GETUPVAL                         R25 4
      206 GETTABLEKS                       R25 R25 K76 ["ICON_SIZE"]
      208 LOADN                            R26 0
      209 GETUPVAL                         R27 4
      210 GETTABLEKS                       R27 R27 K76 ["ICON_SIZE"]
      212 CALL                             R23 4 1
      213 SETTABLEKS                       R23 R22 K12 ["Size"]
      215 CALL                             R20 2 1
      216 SETTABLEKS                       R20 R19 K54 ["ChildCountIndicator"]
      218 GETUPVAL                         R20 1
      219 GETTABLEKS                       R20 R20 K20 ["createElement"]
      221 GETUPVAL                         R21 2
      222 DUPTABLE                         R22 K78 [{["LayoutOrder"] = 2, ["OnPress"], ["AutomaticSize"]}]
      223 GETTABLEKS                       R23 R0 K79 ["onBreakpointIconClicked"]
      225 SETTABLEKS                       R23 R22 K77 ["OnPress"]
      227 GETIMPORT                        R23 K52 [Enum.AutomaticSize.XY]
      229 SETTABLEKS                       R23 R22 K43 ["AutomaticSize"]
      231 DUPTABLE                         R23 K81 [{"BreakpointIcon"}]
      232 GETUPVAL                         R24 1
      233 GETTABLEKS                       R24 R24 K20 ["createElement"]
      235 GETUPVAL                         R25 5
      236 DUPTABLE                         R26 K82 [{"Size", "Image"}]
      237 GETIMPORT                        R27 K32 [UDim2.new]
      239 LOADN                            R28 0
      240 GETUPVAL                         R29 4
      241 GETTABLEKS                       R29 R29 K76 ["ICON_SIZE"]
      243 LOADN                            R30 0
      244 GETUPVAL                         R31 4
      245 GETTABLEKS                       R31 R31 K76 ["ICON_SIZE"]
      247 CALL                             R27 4 1
      248 SETTABLEKS                       R27 R26 K12 ["Size"]
      250 SETTABLEKS                       R11 R26 K59 ["Image"]
      252 CALL                             R24 2 1
      253 SETTABLEKS                       R24 R23 K80 ["BreakpointIcon"]
      255 CALL                             R20 3 1
      256 SETTABLEKS                       R20 R19 K55 ["BreakpointIconPane"]
      258 CALL                             R16 3 1
      259 SETTABLEKS                       R16 R15 K9 ["Left"]
      261 CALL                             R12 3 -1
      262 RETURN                           R12 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R3 R2 K1 ["currentDebuggerConnectionId"]
        4 DUPTABLE                         R4 K3 [{"CurrentConnectionId"}]
        5 SETTABLEKS                       R3 R4 K2 ["CurrentConnectionId"]
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K12 ["BreakpointHelperFunctions"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       52 GETTABLEKS                       R7 R6 K14 ["Analytics"]
       54 GETTABLEKS                       R8 R3 K15 ["UI"]
       56 GETTABLEKS                       R9 R8 K16 ["Pane"]
       58 GETTABLEKS                       R10 R8 K17 ["Image"]
       60 GETTABLEKS                       R11 R8 K18 ["TextLabel"]
       62 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       64 LOADK                            R14 K20 ["BreakpointsEnabledCell"]
       65 NAMECALL                         R12 R12 K21 ["extend"]
       67 CALL                             R12 2 1
       68 DUPCLOSURE                       R13 K22 [PROTO_2]
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R13 R12 K23 ["init"]
       72 DUPCLOSURE                       R13 K24 [PROTO_3]
       73 CAPTURE                          VAL R4
       74 DUPCLOSURE                       R14 K25 [PROTO_4]
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R14 R12 K26 ["render"]
       83 GETTABLEKS                       R14 R6 K27 ["withContext"]
       85 DUPTABLE                         R15 K28 [{"Analytics"}]
       86 SETTABLEKS                       R7 R15 K14 ["Analytics"]
       88 CALL                             R14 1 1
       89 MOVE                             R15 R12
       90 CALL                             R14 1 1
       91 MOVE                             R12 R14
       92 GETTABLEKS                       R14 R2 K29 ["connect"]
       94 DUPCLOSURE                       R15 K30 [PROTO_5]
       95 CALL                             R14 1 1
       96 MOVE                             R15 R12
       97 CALL                             R14 1 1
       98 MOVE                             R12 R14
       99 RETURN                           R12 1
