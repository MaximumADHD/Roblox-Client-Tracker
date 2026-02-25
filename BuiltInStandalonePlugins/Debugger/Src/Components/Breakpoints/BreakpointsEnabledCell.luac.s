PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R0 K2 ["OnToggle"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["Row"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 GETIMPORT                        R1 K3 [game]
        7 LOADK                            R3 K4 ["MetaBreakpointManager"]
        8 NAMECALL                         R1 R1 K5 ["GetService"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R5 R0 K6 ["item"]
       13 GETTABLEKS                       R4 R5 K7 ["id"]
       15 NAMECALL                         R2 R1 K8 ["GetBreakpointById"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K9 ["setBreakpointRowEnabled"]
       21 MOVE                             R4 R2
       22 MOVE                             R5 R0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K0 ["props"]
       26 GETTABLEKS                       R6 R7 K10 ["Analytics"]
       28 LOADK                            R7 K11 ["LuaBreakpointsTable.BreakpointIconClicked"]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K12 ["CurrentConnectionId"]
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
        0 GETTABLEKS                       R2 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R2 K1 ["isValid"]
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
        8 GETTABLEKS                       R1 R2 K3 ["invalidBreakpoint"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R2 R0 K0 ["item"]
       13 GETTABLEKS                       R1 R2 K4 ["debugpointType"]
       15 JUMPIFNOTEQKS                    R1 K5 ["Breakpoint"] ; [+46]
       17 GETTABLEKS                       R2 R0 K0 ["item"]
       19 GETTABLEKS                       R1 R2 K6 ["condition"]
       21 JUMPIFNOT                        R1 ; [+6]
       22 GETTABLEKS                       R2 R0 K0 ["item"]
       24 GETTABLEKS                       R1 R2 K6 ["condition"]
       26 JUMPIFNOTEQKS                    R1 K7 [""] ; [+18]
       28 GETTABLEKS                       R3 R0 K0 ["item"]
       30 GETTABLEKS                       R2 R3 K8 ["isEnabled"]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       36 GETTABLEKS                       R1 R2 K9 ["breakpointEnabled"]
       38 JUMPIF                           R1 ; [+5]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       42 GETTABLEKS                       R1 R2 K10 ["breakpointDisabled"]
       44 RETURN                           R1 1
       45 GETTABLEKS                       R3 R0 K0 ["item"]
       47 GETTABLEKS                       R2 R3 K8 ["isEnabled"]
       49 JUMPIFNOT                        R2 ; [+6]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       53 GETTABLEKS                       R1 R2 K11 ["conditionalEnabled"]
       55 JUMPIF                           R1 ; [+5]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       59 GETTABLEKS                       R1 R2 K12 ["conditionalDisabled"]
       61 RETURN                           R1 1
       62 GETTABLEKS                       R3 R0 K0 ["item"]
       64 GETTABLEKS                       R2 R3 K8 ["isEnabled"]
       66 JUMPIFNOT                        R2 ; [+6]
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       70 GETTABLEKS                       R1 R2 K13 ["logpointEnabled"]
       72 JUMPIF                           R1 ; [+5]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       76 GETTABLEKS                       R1 R2 K14 ["logpointDisabled"]
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
       19 GETTABLEKS                       R9 R3 K8 ["CellPadding"]
       21 GETTABLEKS                       R8 R9 K9 ["Left"]
       23 ADD                              R7 R8 R6
       24 JUMPIF                           R4 ; [+2]
       25 MULK                             R8 R6 K10 [2]
       26 ADD                              R7 R7 R8
       27 GETTABLEKS                       R9 R3 K11 ["Arrow"]
       29 GETTABLEKS                       R8 R9 K12 ["Size"]
       31 GETTABLEKS                       R11 R1 K13 ["CellProps"]
       33 GETTABLEKS                       R10 R11 K14 ["Expansion"]
       35 GETTABLEKS                       R11 R2 K15 ["item"]
       37 GETTABLE                         R9 R10 R11
       38 JUMPIFNOT                        R5 ; [+22]
       39 DUPTABLE                         R10 K19 [{"Top", "Left", "Right", "Bottom"}]
       40 GETTABLEKS                       R12 R3 K8 ["CellPadding"]
       42 GETTABLEKS                       R11 R12 K16 ["Top"]
       44 SETTABLEKS                       R11 R10 K16 ["Top"]
       46 SETTABLEKS                       R7 R10 K9 ["Left"]
       48 GETTABLEKS                       R12 R3 K8 ["CellPadding"]
       50 GETTABLEKS                       R11 R12 K17 ["Right"]
       52 SETTABLEKS                       R11 R10 K17 ["Right"]
       54 GETTABLEKS                       R12 R3 K8 ["CellPadding"]
       56 GETTABLEKS                       R11 R12 K18 ["Bottom"]
       58 SETTABLEKS                       R11 R10 K18 ["Bottom"]
       60 JUMPIF                           R10 ; [+2]
       61 GETTABLEKS                       R10 R3 K8 ["CellPadding"]
       63 GETUPVAL                         R11 0
       64 MOVE                             R12 R2
       65 CALL                             R11 1 1
       66 GETUPVAL                         R13 1
       67 GETTABLEKS                       R12 R13 K20 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K25 [{"Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       71 LOADK                            R15 K26 ["Box"]
       72 SETTABLEKS                       R15 R14 K2 ["Style"]
       74 GETTABLEKS                       R15 R1 K27 ["BackgroundColor"]
       76 SETTABLEKS                       R15 R14 K21 ["BackgroundColor3"]
       78 LOADN                            R15 1
       79 SETTABLEKS                       R15 R14 K22 ["BorderSizePixel"]
       81 GETTABLEKS                       R15 R3 K28 ["Border"]
       83 SETTABLEKS                       R15 R14 K23 ["BorderColor3"]
       85 GETIMPORT                        R15 K31 [UDim2.new]
       87 GETTABLEKS                       R17 R1 K32 ["Width"]
       89 GETTABLEKS                       R16 R17 K33 ["Scale"]
       91 GETTABLEKS                       R18 R1 K32 ["Width"]
       93 GETTABLEKS                       R17 R18 K34 ["Offset"]
       95 LOADN                            R18 1
       96 LOADN                            R19 0
       97 CALL                             R15 4 1
       98 SETTABLEKS                       R15 R14 K12 ["Size"]
      100 LOADB                            R15 1
      101 SETTABLEKS                       R15 R14 K24 ["ClipsDescendants"]
      103 DUPTABLE                         R15 K35 [{"Left"}]
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R16 R17 K20 ["createElement"]
      107 GETUPVAL                         R17 2
      108 DUPTABLE                         R18 K42 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "AutomaticSize"}]
      109 GETIMPORT                        R19 K46 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R19 R18 K36 ["Layout"]
      113 LOADN                            R19 0
      114 SETTABLEKS                       R19 R18 K37 ["LayoutOrder"]
      116 SETTABLEKS                       R10 R18 K38 ["Padding"]
      118 GETTABLEKS                       R19 R3 K47 ["CellSpacing"]
      120 SETTABLEKS                       R19 R18 K39 ["Spacing"]
      122 GETIMPORT                        R19 K48 [Enum.HorizontalAlignment.Left]
      124 SETTABLEKS                       R19 R18 K40 ["HorizontalAlignment"]
      126 GETIMPORT                        R19 K50 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R19 R18 K41 ["AutomaticSize"]
      130 DUPTABLE                         R19 K54 [{"Toggle", "ChildCountIndicator", "BreakpointIconPane"}]
      131 JUMPIFNOT                        R4 ; [+62]
      132 GETUPVAL                         R21 1
      133 GETTABLEKS                       R20 R21 K20 ["createElement"]
      135 LOADK                            R21 K55 ["ImageButton"]
      136 NEWTABLE                         R22 8 0
      138 LOADN                            R23 0
      139 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      141 GETIMPORT                        R23 K31 [UDim2.new]
      143 LOADN                            R24 0
      144 MOVE                             R25 R8
      145 LOADN                            R26 0
      146 MOVE                             R27 R8
      147 CALL                             R23 4 1
      148 SETTABLEKS                       R23 R22 K12 ["Size"]
      150 LOADN                            R23 1
      151 SETTABLEKS                       R23 R22 K56 ["BackgroundTransparency"]
      153 GETTABLEKS                       R24 R3 K11 ["Arrow"]
      155 GETTABLEKS                       R23 R24 K57 ["Image"]
      157 SETTABLEKS                       R23 R22 K57 ["Image"]
      159 GETTABLEKS                       R24 R3 K11 ["Arrow"]
      161 GETTABLEKS                       R23 R24 K58 ["Color"]
      163 SETTABLEKS                       R23 R22 K59 ["ImageColor3"]
      165 GETIMPORT                        R23 K61 [Vector2.new]
      167 MOVE                             R24 R8
      168 MOVE                             R25 R8
      169 CALL                             R23 2 1
      170 SETTABLEKS                       R23 R22 K62 ["ImageRectSize"]
      172 JUMPIFNOT                        R9 ; [+5]
      173 GETTABLEKS                       R24 R3 K11 ["Arrow"]
      175 GETTABLEKS                       R23 R24 K63 ["ExpandedOffset"]
      177 JUMPIF                           R23 ; [+4]
      178 GETTABLEKS                       R24 R3 K11 ["Arrow"]
      180 GETTABLEKS                       R23 R24 K64 ["CollapsedOffset"]
      182 SETTABLEKS                       R23 R22 K65 ["ImageRectOffset"]
      184 GETUPVAL                         R25 1
      185 GETTABLEKS                       R24 R25 K66 ["Event"]
      187 GETTABLEKS                       R23 R24 K67 ["Activated"]
      189 GETTABLEKS                       R24 R0 K68 ["onToggle"]
      191 SETTABLE                         R24 R22 R23
      192 CALL                             R20 2 1
      193 JUMPIF                           R20 ; [+1]
      194 LOADNIL                          R20
      195 SETTABLEKS                       R20 R19 K51 ["Toggle"]
      197 MOVE                             R20 R4
      198 JUMPIFNOT                        R20 ; [+35]
      199 GETUPVAL                         R21 1
      200 GETTABLEKS                       R20 R21 K20 ["createElement"]
      202 GETUPVAL                         R21 3
      203 DUPTABLE                         R22 K70 [{"Text", "BackgroundTransparency", "LayoutOrder", "Size"}]
      204 LOADK                            R24 K71 ["(x"]
      205 GETTABLEKS                       R28 R2 K15 ["item"]
      207 GETTABLEKS                       R27 R28 K72 ["children"]
      209 LENGTH                           R25 R27
      210 LOADK                            R26 K73 [")"]
      211 CONCAT                           R23 R24 R26
      212 SETTABLEKS                       R23 R22 K69 ["Text"]
      214 LOADN                            R23 1
      215 SETTABLEKS                       R23 R22 K56 ["BackgroundTransparency"]
      217 LOADN                            R23 1
      218 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      220 GETIMPORT                        R23 K31 [UDim2.new]
      222 LOADN                            R24 0
      223 GETUPVAL                         R26 4
      224 GETTABLEKS                       R25 R26 K74 ["ICON_SIZE"]
      226 LOADN                            R26 0
      227 GETUPVAL                         R28 4
      228 GETTABLEKS                       R27 R28 K74 ["ICON_SIZE"]
      230 CALL                             R23 4 1
      231 SETTABLEKS                       R23 R22 K12 ["Size"]
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K52 ["ChildCountIndicator"]
      236 GETUPVAL                         R21 1
      237 GETTABLEKS                       R20 R21 K20 ["createElement"]
      239 GETUPVAL                         R21 2
      240 DUPTABLE                         R22 K76 [{"LayoutOrder", "OnPress", "AutomaticSize"}]
      241 LOADN                            R23 2
      242 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      244 GETTABLEKS                       R23 R0 K77 ["onBreakpointIconClicked"]
      246 SETTABLEKS                       R23 R22 K75 ["OnPress"]
      248 GETIMPORT                        R23 K50 [Enum.AutomaticSize.XY]
      250 SETTABLEKS                       R23 R22 K41 ["AutomaticSize"]
      252 DUPTABLE                         R23 K79 [{"BreakpointIcon"}]
      253 GETUPVAL                         R25 1
      254 GETTABLEKS                       R24 R25 K20 ["createElement"]
      256 GETUPVAL                         R25 5
      257 DUPTABLE                         R26 K80 [{"Size", "Image"}]
      258 GETIMPORT                        R27 K31 [UDim2.new]
      260 LOADN                            R28 0
      261 GETUPVAL                         R30 4
      262 GETTABLEKS                       R29 R30 K74 ["ICON_SIZE"]
      264 LOADN                            R30 0
      265 GETUPVAL                         R32 4
      266 GETTABLEKS                       R31 R32 K74 ["ICON_SIZE"]
      268 CALL                             R27 4 1
      269 SETTABLEKS                       R27 R26 K12 ["Size"]
      271 SETTABLEKS                       R11 R26 K57 ["Image"]
      273 CALL                             R24 2 1
      274 SETTABLEKS                       R24 R23 K78 ["BreakpointIcon"]
      276 CALL                             R20 3 1
      277 SETTABLEKS                       R20 R19 K53 ["BreakpointIconPane"]
      279 CALL                             R16 3 1
      280 SETTABLEKS                       R16 R15 K9 ["Left"]
      282 CALL                             R12 3 -1
      283 RETURN                           R12 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R3 R2 K1 ["currentDebuggerConnectionId"]
        4 DUPTABLE                         R4 K3 [{"CurrentConnectionId"}]
        5 SETTABLEKS                       R3 R4 K2 ["CurrentConnectionId"]
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Util"]
       38 GETTABLEKS                       R5 R6 K11 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K10 ["Util"]
       47 GETTABLEKS                       R6 R7 K12 ["BreakpointHelperFunctions"]
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
