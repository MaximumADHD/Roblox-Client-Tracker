PROTO_0:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R4 R0 K3 ["lastClickTime"]
        5 ADDK                             R3 R4 K2 [0.5]
        6 JUMPIFLT                         R1 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R1 R0 K3 ["lastClickTime"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnToggle"]
        5 GETTABLEKS                       R2 R0 K2 ["Row"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnClick"]
        5 GETTABLEKS                       R2 R0 K2 ["Row"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K1 ["isDoubleClick"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["OnDoubleClick"]
       10 GETTABLEKS                       R2 R0 K3 ["Row"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnRightClick"]
        5 GETTABLEKS                       R2 R0 K2 ["Row"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETIMPORT                        R1 K2 [print]
        5 LOADK                            R3 K3 ["Row %*"]
        6 GETIMPORT                        R5 K5 [game]
        8 GETTABLEKS                       R5 R5 K6 ["HttpService"]
       10 GETTABLEKS                       R7 R0 K7 ["Row"]
       12 NAMECALL                         R5 R5 K8 ["JSONEncode"]
       14 CALL                             R5 2 1
       15 NAMECALL                         R3 R3 K9 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R3 R0 K7 ["Row"]
       23 GETTABLEKS                       R3 R3 K10 ["item"]
       25 GETTABLEKS                       R3 R3 K11 ["url"]
       27 NAMECALL                         R1 R1 K12 ["OpenBrowserWindow"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADN                            R1 0
        3 NAMECALL                         R2 R0 K0 ["GetChildren"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Name"]
        9 JUMPIFEQKS                       R7 K2 ["Label"] ; [+11]
       11 LOADK                            R9 K3 ["GuiObject"]
       12 NAMECALL                         R7 R6 K4 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+5]
       16 GETTABLEKS                       R7 R6 K5 ["AbsoluteSize"]
       18 GETTABLEKS                       R7 R7 K6 ["X"]
       20 ADD                              R1 R1 R7
       21 FORGLOOP                         R2 2 ; [-15]
       23 GETUPVAL                         R2 0
       24 DUPTABLE                         R4 K8 [{"maxLabelSizeX"}]
       25 GETTABLEKS                       R7 R0 K5 ["AbsoluteSize"]
       27 GETTABLEKS                       R7 R7 K6 ["X"]
       29 SUB                              R6 R7 R1
       30 GETUPVAL                         R7 0
       31 NAMECALL                         R7 R7 K9 ["calculateIndent"]
       33 CALL                             R7 1 1
       34 SUB                              R5 R6 R7
       35 SETTABLEKS                       R5 R4 K7 ["maxLabelSizeX"]
       37 NAMECALL                         R2 R2 K10 ["setState"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K5 ["rowContainerRef"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K6 ["lastClickTime"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["onToggle"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K8 ["onClick"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K9 ["onDoubleClick"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K10 ["onRightClick"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 SETTABLEKS                       R1 R0 K11 ["onLinkClick"]
       33 NEWCLOSURE                       R1 P5
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K12 ["onAbsoluteSizeChanged"]
       37 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R2 K0 ["("]
        1 GETTABLEKS                       R3 R0 K1 ["startLine"]
        3 LOADK                            R4 K2 [","]
        4 GETTABLEKS                       R5 R0 K3 ["startCharacter"]
        6 LOADK                            R6 K4 [")"]
        7 CONCAT                           R1 R2 R6
        8 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Row"]
        6 GETTABLEKS                       R5 R3 K3 ["depth"]
        8 GETTABLEKS                       R6 R2 K4 ["Indent"]
       10 MUL                              R4 R5 R6
       11 RETURN                           R4 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Row"]
        4 GETTABLEKS                       R3 R1 K1 ["Row"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["onAbsoluteSizeChanged"]
       10 GETTABLEKS                       R3 R0 K3 ["rowContainerRef"]
       12 GETTABLEKS                       R3 R3 K4 ["current"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+22]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["createElement"]
        5 GETUPVAL                         R5 2
        6 DUPTABLE                         R6 K7 [{["Text"], ["TextSize"], ["LayoutOrder"], ["OnClick"], ["Disabled"] = True}]
        7 GETTABLEKS                       R7 R0 K8 ["codeText"]
        9 SETTABLEKS                       R7 R6 K1 ["Text"]
       11 GETTABLEKS                       R7 R2 K2 ["TextSize"]
       13 SETTABLEKS                       R7 R6 K2 ["TextSize"]
       15 NAMECALL                         R7 R1 K9 ["getNextOrder"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       20 SETTABLEKS                       R3 R6 K4 ["OnClick"]
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K0 ["createElement"]
       27 GETUPVAL                         R5 3
       28 DUPTABLE                         R6 K12 [{["Text"], ["TextSize"], ["LayoutOrder"], ["RichText"] = True, ["AutomaticSize"]}]
       29 LOADK                            R8 K13 ["<font color = \"rgb(43, 177, 255)\"> %* </font>"]
       30 GETTABLEKS                       R10 R0 K8 ["codeText"]
       32 NAMECALL                         R8 R8 K14 ["format"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 SETTABLEKS                       R7 R6 K1 ["Text"]
       38 GETTABLEKS                       R7 R2 K2 ["TextSize"]
       40 SETTABLEKS                       R7 R6 K2 ["TextSize"]
       42 NAMECALL                         R7 R1 K9 ["getNextOrder"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       47 GETIMPORT                        R7 K17 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R7 R6 K11 ["AutomaticSize"]
       51 CALL                             R4 2 -1
       52 RETURN                           R4 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["Size"]
        8 GETTABLEKS                       R5 R2 K4 ["Row"]
       10 GETTABLEKS                       R6 R5 K5 ["item"]
       12 GETTABLEKS                       R7 R2 K6 ["Expanded"]
       14 GETTABLEKS                       R8 R2 K7 ["Selected"]
       16 GETTABLEKS                       R9 R6 K8 ["children"]
       18 JUMPIFNOT                        R9 ; [+8]
       19 GETTABLEKS                       R11 R6 K8 ["children"]
       21 LENGTH                           R10 R11
       22 LOADN                            R11 0
       23 JUMPIFLT                         R11 R10 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 NAMECALL                         R10 R0 K9 ["calculateIndent"]
       29 CALL                             R10 1 1
       30 GETTABLEKS                       R11 R3 K10 ["Arrow"]
       32 GETTABLEKS                       R11 R11 K3 ["Size"]
       34 GETTABLEKS                       R13 R6 K11 ["codeText"]
       36 JUMPIFNOTEQKNIL                  R13 ; [+2]
       38 LOADB                            R12 0 +1
       39 LOADB                            R12 1
       40 GETTABLEKS                       R13 R6 K12 ["initialIssueCount"]
       42 GETTABLEKS                       R14 R1 K13 ["maxLabelSizeX"]
       44 GETUPVAL                         R15 0
       45 GETTABLEKS                       R15 R15 K14 ["new"]
       47 CALL                             R15 0 1
       48 GETUPVAL                         R16 1
       49 GETTABLEKS                       R16 R16 K15 ["createElement"]
       51 GETUPVAL                         R17 2
       52 DUPTABLE                         R18 K24 [{["Style"] = "Box", ["BorderSizePixel"] = 0, ["Size"], ["Position"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       53 SETTABLEKS                       R4 R18 K3 ["Size"]
       55 GETTABLEKS                       R19 R2 K20 ["Position"]
       57 SETTABLEKS                       R19 R18 K20 ["Position"]
       59 GETIMPORT                        R19 K28 [Enum.FillDirection.Horizontal]
       61 SETTABLEKS                       R19 R18 K21 ["Layout"]
       63 GETIMPORT                        R19 K30 [Enum.HorizontalAlignment.Left]
       65 SETTABLEKS                       R19 R18 K22 ["HorizontalAlignment"]
       67 GETIMPORT                        R19 K32 [Enum.VerticalAlignment.Center]
       69 SETTABLEKS                       R19 R18 K23 ["VerticalAlignment"]
       71 DUPTABLE                         R19 K35 [{"RowContainer", "IconContainer"}]
       72 GETUPVAL                         R20 1
       73 GETTABLEKS                       R20 R20 K15 ["createElement"]
       75 GETUPVAL                         R21 2
       76 NEWTABLE                         R22 16 0
       78 NAMECALL                         R23 R15 K36 ["getNextOrder"]
       80 CALL                             R23 1 1
       81 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
       83 GETIMPORT                        R23 K39 [UDim2.new]
       85 LOADN                            R24 1
       86 GETTABLEKS                       R27 R3 K40 ["IconViewSize"]
       88 GETTABLEKS                       R27 R27 K41 ["X"]
       90 GETTABLEKS                       R27 R27 K42 ["Offset"]
       92 MINUS                            R26 R27
       93 GETTABLEKS                       R27 R3 K43 ["Spacing"]
       95 SUB                              R25 R26 R27
       96 LOADN                            R26 1
       97 LOADN                            R27 0
       98 CALL                             R23 4 1
       99 SETTABLEKS                       R23 R22 K3 ["Size"]
      101 GETIMPORT                        R23 K28 [Enum.FillDirection.Horizontal]
      103 SETTABLEKS                       R23 R22 K21 ["Layout"]
      105 GETIMPORT                        R23 K30 [Enum.HorizontalAlignment.Left]
      107 SETTABLEKS                       R23 R22 K22 ["HorizontalAlignment"]
      109 GETIMPORT                        R23 K32 [Enum.VerticalAlignment.Center]
      111 SETTABLEKS                       R23 R22 K23 ["VerticalAlignment"]
      113 GETTABLEKS                       R23 R0 K44 ["onDoubleClick"]
      115 SETTABLEKS                       R23 R22 K45 ["OnClick"]
      117 GETTABLEKS                       R23 R0 K46 ["onRightClick"]
      119 SETTABLEKS                       R23 R22 K47 ["OnRightClick"]
      121 DUPTABLE                         R23 K48 [{"Left"}]
      122 SETTABLEKS                       R10 R23 K29 ["Left"]
      124 SETTABLEKS                       R23 R22 K49 ["Padding"]
      126 GETTABLEKS                       R23 R0 K50 ["rowContainerRef"]
      128 SETTABLEKS                       R23 R22 K51 ["ForwardRef"]
      130 GETUPVAL                         R23 1
      131 GETTABLEKS                       R23 R23 K52 ["Change"]
      133 GETTABLEKS                       R23 R23 K53 ["AbsoluteSize"]
      135 GETTABLEKS                       R24 R0 K54 ["onAbsoluteSizeChanged"]
      137 SETTABLE                         R24 R22 R23
      138 DUPTABLE                         R23 K62 [{"Checkbox", "Arrow", "ArrowPadding", "WarningLink", "RangeLabel", "Separator", "Label", "IssueCount"}]
      139 GETUPVAL                         R24 1
      140 GETTABLEKS                       R24 R24 K15 ["createElement"]
      142 GETUPVAL                         R25 3
      143 DUPTABLE                         R26 K64 [{"LayoutOrder", "Checked", "OnClick"}]
      144 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      146 CALL                             R27 1 1
      147 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      149 SETTABLEKS                       R8 R26 K63 ["Checked"]
      151 GETTABLEKS                       R27 R0 K65 ["onClick"]
      153 SETTABLEKS                       R27 R26 K45 ["OnClick"]
      155 CALL                             R24 2 1
      156 SETTABLEKS                       R24 R23 K55 ["Checkbox"]
      158 MOVE                             R24 R9
      159 JUMPIFNOT                        R24 ; [+63]
      160 GETUPVAL                         R24 1
      161 GETTABLEKS                       R24 R24 K15 ["createElement"]
      163 LOADK                            R25 K66 ["ImageButton"]
      164 NEWTABLE                         R26 8 0
      166 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      168 CALL                             R27 1 1
      169 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      171 GETIMPORT                        R27 K39 [UDim2.new]
      173 LOADN                            R28 0
      174 MOVE                             R29 R11
      175 LOADN                            R30 0
      176 MOVE                             R31 R11
      177 CALL                             R27 4 1
      178 SETTABLEKS                       R27 R26 K3 ["Size"]
      180 LOADN                            R27 1
      181 SETTABLEKS                       R27 R26 K67 ["BackgroundTransparency"]
      183 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      185 GETTABLEKS                       R27 R27 K68 ["Image"]
      187 SETTABLEKS                       R27 R26 K68 ["Image"]
      189 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      191 GETTABLEKS                       R27 R27 K69 ["Color"]
      193 SETTABLEKS                       R27 R26 K70 ["ImageColor3"]
      195 GETIMPORT                        R27 K72 [Vector2.new]
      197 MOVE                             R28 R11
      198 MOVE                             R29 R11
      199 CALL                             R27 2 1
      200 SETTABLEKS                       R27 R26 K73 ["ImageRectSize"]
      202 JUMPIFNOT                        R7 ; [+5]
      203 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      205 GETTABLEKS                       R27 R27 K74 ["ExpandedOffset"]
      207 JUMP                             ; [+4]
      208 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      210 GETTABLEKS                       R27 R27 K75 ["CollapsedOffset"]
      212 SETTABLEKS                       R27 R26 K76 ["ImageRectOffset"]
      214 GETUPVAL                         R27 1
      215 GETTABLEKS                       R27 R27 K77 ["Event"]
      217 GETTABLEKS                       R27 R27 K78 ["Activated"]
      219 GETTABLEKS                       R28 R0 K79 ["onToggle"]
      221 SETTABLE                         R28 R26 R27
      222 CALL                             R24 2 1
      223 SETTABLEKS                       R24 R23 K10 ["Arrow"]
      225 GETUPVAL                         R24 1
      226 GETTABLEKS                       R24 R24 K15 ["createElement"]
      228 GETUPVAL                         R25 2
      229 DUPTABLE                         R26 K80 [{"Size", "LayoutOrder"}]
      230 GETIMPORT                        R27 K82 [UDim2.fromOffset]
      232 GETTABLEKS                       R28 R3 K10 ["Arrow"]
      234 GETTABLEKS                       R28 R28 K49 ["Padding"]
      236 LOADN                            R29 0
      237 CALL                             R27 2 1
      238 SETTABLEKS                       R27 R26 K3 ["Size"]
      240 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      242 CALL                             R27 1 1
      243 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      245 CALL                             R24 2 1
      246 SETTABLEKS                       R24 R23 K56 ["ArrowPadding"]
      248 MOVE                             R24 R12
      249 JUMPIFNOT                        R24 ; [+7]
      250 GETUPVAL                         R24 4
      251 MOVE                             R25 R6
      252 MOVE                             R26 R15
      253 MOVE                             R27 R3
      254 GETTABLEKS                       R28 R0 K83 ["onLinkClick"]
      256 CALL                             R24 4 1
      257 SETTABLEKS                       R24 R23 K57 ["WarningLink"]
      259 MOVE                             R24 R12
      260 JUMPIFNOT                        R24 ; [+31]
      261 GETUPVAL                         R24 1
      262 GETTABLEKS                       R24 R24 K15 ["createElement"]
      264 GETUPVAL                         R25 5
      265 DUPTABLE                         R26 K87 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder"}]
      266 GETTABLEKS                       R28 R6 K88 ["range"]
      268 LOADK                            R29 K89 ["("]
      269 GETTABLEKS                       R30 R28 K90 ["startLine"]
      271 LOADK                            R31 K91 [","]
      272 GETTABLEKS                       R32 R28 K92 ["startCharacter"]
      274 LOADK                            R33 K93 [")"]
      275 CONCAT                           R27 R29 R33
      276 SETTABLEKS                       R27 R26 K84 ["Text"]
      278 GETTABLEKS                       R27 R3 K85 ["TextSize"]
      280 SETTABLEKS                       R27 R26 K85 ["TextSize"]
      282 GETIMPORT                        R27 K95 [Enum.AutomaticSize.XY]
      284 SETTABLEKS                       R27 R26 K86 ["AutomaticSize"]
      286 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      288 CALL                             R27 1 1
      289 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      291 CALL                             R24 2 1
      292 SETTABLEKS                       R24 R23 K58 ["RangeLabel"]
      294 MOVE                             R24 R12
      295 JUMPIFNOT                        R24 ; [+19]
      296 GETUPVAL                         R24 1
      297 GETTABLEKS                       R24 R24 K15 ["createElement"]
      299 GETUPVAL                         R25 5
      300 DUPTABLE                         R26 K97 [{["Text"] = ": ", ["TextSize"], ["AutomaticSize"], ["LayoutOrder"]}]
      301 GETTABLEKS                       R27 R3 K85 ["TextSize"]
      303 SETTABLEKS                       R27 R26 K85 ["TextSize"]
      305 GETIMPORT                        R27 K95 [Enum.AutomaticSize.XY]
      307 SETTABLEKS                       R27 R26 K86 ["AutomaticSize"]
      309 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      311 CALL                             R27 1 1
      312 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      314 CALL                             R24 2 1
      315 SETTABLEKS                       R24 R23 K59 ["Separator"]
      317 GETUPVAL                         R24 1
      318 GETTABLEKS                       R24 R24 K15 ["createElement"]
      320 GETUPVAL                         R25 5
      321 DUPTABLE                         R26 K100 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder", "TextTruncate", "TextXAlignment"}]
      322 GETTABLEKS                       R27 R6 K101 ["text"]
      324 SETTABLEKS                       R27 R26 K84 ["Text"]
      326 GETTABLEKS                       R27 R3 K85 ["TextSize"]
      328 SETTABLEKS                       R27 R26 K85 ["TextSize"]
      330 GETIMPORT                        R27 K95 [Enum.AutomaticSize.XY]
      332 SETTABLEKS                       R27 R26 K86 ["AutomaticSize"]
      334 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      336 CALL                             R27 1 1
      337 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      339 GETIMPORT                        R27 K103 [Enum.TextTruncate.AtEnd]
      341 SETTABLEKS                       R27 R26 K98 ["TextTruncate"]
      343 GETIMPORT                        R27 K104 [Enum.TextXAlignment.Left]
      345 SETTABLEKS                       R27 R26 K99 ["TextXAlignment"]
      347 DUPTABLE                         R27 K107 [{"SizeConstraint", "Tooltip"}]
      348 GETUPVAL                         R28 1
      349 GETTABLEKS                       R28 R28 K15 ["createElement"]
      351 LOADK                            R29 K108 ["UISizeConstraint"]
      352 DUPTABLE                         R30 K110 [{"MaxSize"}]
      353 GETIMPORT                        R31 K72 [Vector2.new]
      355 MOVE                             R32 R14
      356 GETTABLEKS                       R33 R4 K111 ["Y"]
      358 GETTABLEKS                       R33 R33 K42 ["Offset"]
      360 CALL                             R31 2 1
      361 SETTABLEKS                       R31 R30 K109 ["MaxSize"]
      363 CALL                             R28 2 1
      364 SETTABLEKS                       R28 R27 K105 ["SizeConstraint"]
      366 GETUPVAL                         R28 1
      367 GETTABLEKS                       R28 R28 K15 ["createElement"]
      369 GETUPVAL                         R29 6
      370 DUPTABLE                         R30 K112 [{"Text"}]
      371 GETTABLEKS                       R31 R6 K101 ["text"]
      373 SETTABLEKS                       R31 R30 K84 ["Text"]
      375 CALL                             R28 2 1
      376 SETTABLEKS                       R28 R27 K106 ["Tooltip"]
      378 CALL                             R24 3 1
      379 SETTABLEKS                       R24 R23 K60 ["Label"]
      381 LOADB                            R24 0
      382 JUMPIFEQKNIL                     R13 ; [+26]
      384 GETUPVAL                         R24 1
      385 GETTABLEKS                       R24 R24 K15 ["createElement"]
      387 GETUPVAL                         R25 5
      388 DUPTABLE                         R26 K113 [{["Text"], ["Style"] = "Label", ["TextSize"], ["AutomaticSize"], ["LayoutOrder"]}]
      389 LOADK                            R28 K89 ["("]
      390 MOVE                             R29 R13
      391 LOADK                            R30 K93 [")"]
      392 CONCAT                           R27 R28 R30
      393 SETTABLEKS                       R27 R26 K84 ["Text"]
      395 GETTABLEKS                       R27 R3 K85 ["TextSize"]
      397 SETTABLEKS                       R27 R26 K85 ["TextSize"]
      399 GETIMPORT                        R27 K95 [Enum.AutomaticSize.XY]
      401 SETTABLEKS                       R27 R26 K86 ["AutomaticSize"]
      403 NAMECALL                         R27 R15 K36 ["getNextOrder"]
      405 CALL                             R27 1 1
      406 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      408 CALL                             R24 2 1
      409 SETTABLEKS                       R24 R23 K61 ["IssueCount"]
      411 CALL                             R20 3 1
      412 SETTABLEKS                       R20 R19 K33 ["RowContainer"]
      414 GETTABLEKS                       R21 R6 K114 ["statuses"]
      416 JUMPIFNOT                        R21 ; [+36]
      417 GETUPVAL                         R20 1
      418 GETTABLEKS                       R20 R20 K15 ["createElement"]
      420 GETUPVAL                         R21 2
      421 DUPTABLE                         R22 K115 [{"AutomaticSize", "LayoutOrder"}]
      422 GETIMPORT                        R23 K95 [Enum.AutomaticSize.XY]
      424 SETTABLEKS                       R23 R22 K86 ["AutomaticSize"]
      426 NAMECALL                         R23 R15 K36 ["getNextOrder"]
      428 CALL                             R23 1 1
      429 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      431 DUPTABLE                         R23 K117 [{"ScriptIconView"}]
      432 GETUPVAL                         R24 1
      433 GETTABLEKS                       R24 R24 K15 ["createElement"]
      435 GETUPVAL                         R25 7
      436 DUPTABLE                         R26 K120 [{"Size", "Statuses", "ShowCounts"}]
      437 GETTABLEKS                       R27 R3 K40 ["IconViewSize"]
      439 SETTABLEKS                       R27 R26 K3 ["Size"]
      441 GETTABLEKS                       R27 R6 K114 ["statuses"]
      443 SETTABLEKS                       R27 R26 K118 ["Statuses"]
      445 NOT                              R27 R12
      446 SETTABLEKS                       R27 R26 K119 ["ShowCounts"]
      448 CALL                             R24 2 1
      449 SETTABLEKS                       R24 R23 K116 ["ScriptIconView"]
      451 CALL                             R20 3 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R20
      454 SETTABLEKS                       R20 R19 K34 ["IconContainer"]
      456 CALL                             R16 3 -1
      457 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R1 K14 ["Src"]
       33 GETTABLEKS                       R6 R6 K15 ["Util"]
       35 GETTABLEKS                       R6 R6 K16 ["ScriptAnalysis"]
       37 GETTABLEKS                       R6 R6 K17 ["Constants"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K18 ["UI"]
       42 GETTABLEKS                       R7 R6 K19 ["TextLabel"]
       44 GETTABLEKS                       R8 R6 K20 ["LinkText"]
       46 GETTABLEKS                       R9 R6 K21 ["Pane"]
       48 GETTABLEKS                       R10 R6 K22 ["Tooltip"]
       50 GETTABLEKS                       R11 R6 K23 ["Checkbox"]
       52 GETIMPORT                        R12 K9 [require]
       54 GETTABLEKS                       R13 R1 K14 ["Src"]
       56 GETTABLEKS                       R13 R13 K24 ["Components"]
       58 GETTABLEKS                       R13 R13 K25 ["ScriptIconView"]
       60 CALL                             R12 1 1
       61 GETTABLEKS                       R13 R3 K15 ["Util"]
       63 GETTABLEKS                       R14 R13 K26 ["LayoutOrderIterator"]
       65 GETTABLEKS                       R15 R2 K27 ["PureComponent"]
       67 LOADK                            R17 K28 ["ScriptIssueRow"]
       68 NAMECALL                         R15 R15 K29 ["extend"]
       70 CALL                             R15 2 1
       71 GETIMPORT                        R16 K1 [game]
       73 LOADK                            R18 K30 ["R15MigShowLinkedText"]
       74 NAMECALL                         R16 R16 K31 ["GetFastFlag"]
       76 CALL                             R16 2 1
       77 DUPCLOSURE                       R17 K32 [PROTO_0]
       78 SETTABLEKS                       R17 R15 K33 ["isDoubleClick"]
       80 DUPCLOSURE                       R17 K34 [PROTO_7]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R17 R15 K35 ["init"]
       85 DUPCLOSURE                       R17 K36 [PROTO_8]
       86 DUPCLOSURE                       R18 K37 [PROTO_9]
       87 SETTABLEKS                       R18 R15 K38 ["calculateIndent"]
       89 DUPCLOSURE                       R18 K39 [PROTO_10]
       90 SETTABLEKS                       R18 R15 K40 ["didUpdate"]
       92 DUPCLOSURE                       R18 K41 [PROTO_11]
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R7
       97 DUPCLOSURE                       R19 K42 [PROTO_12]
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 SETTABLEKS                       R19 R15 K43 ["render"]
      108 GETTABLEKS                       R19 R4 K44 ["withContext"]
      110 DUPTABLE                         R20 K47 [{"Stylizer", "Localization"}]
      111 GETTABLEKS                       R21 R4 K45 ["Stylizer"]
      113 SETTABLEKS                       R21 R20 K45 ["Stylizer"]
      115 GETTABLEKS                       R21 R4 K46 ["Localization"]
      117 SETTABLEKS                       R21 R20 K46 ["Localization"]
      119 CALL                             R19 1 1
      120 MOVE                             R20 R15
      121 CALL                             R19 1 1
      122 MOVE                             R15 R19
      123 RETURN                           R15 1
