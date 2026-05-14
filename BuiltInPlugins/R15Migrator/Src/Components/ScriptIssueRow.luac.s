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
        0 DUPTABLE                         R1 K1 [{"maxLabelSizeX"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["maxLabelSizeX"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["rowContainerRef"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K5 ["lastClickTime"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["onToggle"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onClick"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K8 ["onDoubleClick"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K9 ["onRightClick"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K10 ["onLinkClick"]
       36 NEWCLOSURE                       R1 P5
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K11 ["onAbsoluteSizeChanged"]
       40 RETURN                           R0 0

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
        1 JUMPIFNOT                        R4 ; [+25]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["createElement"]
        5 GETUPVAL                         R5 2
        6 DUPTABLE                         R6 K6 [{"Text", "TextSize", "LayoutOrder", "OnClick", "Disabled"}]
        7 GETTABLEKS                       R7 R0 K7 ["codeText"]
        9 SETTABLEKS                       R7 R6 K1 ["Text"]
       11 GETTABLEKS                       R7 R2 K2 ["TextSize"]
       13 SETTABLEKS                       R7 R6 K2 ["TextSize"]
       15 NAMECALL                         R7 R1 K8 ["getNextOrder"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       20 SETTABLEKS                       R3 R6 K4 ["OnClick"]
       22 LOADB                            R7 1
       23 SETTABLEKS                       R7 R6 K5 ["Disabled"]
       25 CALL                             R4 2 -1
       26 RETURN                           R4 -1
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K0 ["createElement"]
       30 GETUPVAL                         R5 3
       31 DUPTABLE                         R6 K11 [{"Text", "TextSize", "LayoutOrder", "RichText", "AutomaticSize"}]
       32 LOADK                            R8 K12 ["<font color = \"rgb(43, 177, 255)\"> %* </font>"]
       33 GETTABLEKS                       R10 R0 K7 ["codeText"]
       35 NAMECALL                         R8 R8 K13 ["format"]
       37 CALL                             R8 2 1
       38 MOVE                             R7 R8
       39 SETTABLEKS                       R7 R6 K1 ["Text"]
       41 GETTABLEKS                       R7 R2 K2 ["TextSize"]
       43 SETTABLEKS                       R7 R6 K2 ["TextSize"]
       45 NAMECALL                         R7 R1 K8 ["getNextOrder"]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       50 LOADB                            R7 1
       51 SETTABLEKS                       R7 R6 K9 ["RichText"]
       53 GETIMPORT                        R7 K16 [Enum.AutomaticSize.XY]
       55 SETTABLEKS                       R7 R6 K10 ["AutomaticSize"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1

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
       52 DUPTABLE                         R18 K22 [{"Style", "BorderSizePixel", "Size", "Position", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       53 LOADK                            R19 K23 ["Box"]
       54 SETTABLEKS                       R19 R18 K16 ["Style"]
       56 LOADN                            R19 0
       57 SETTABLEKS                       R19 R18 K17 ["BorderSizePixel"]
       59 SETTABLEKS                       R4 R18 K3 ["Size"]
       61 GETTABLEKS                       R19 R2 K18 ["Position"]
       63 SETTABLEKS                       R19 R18 K18 ["Position"]
       65 GETIMPORT                        R19 K27 [Enum.FillDirection.Horizontal]
       67 SETTABLEKS                       R19 R18 K19 ["Layout"]
       69 GETIMPORT                        R19 K29 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R19 R18 K20 ["HorizontalAlignment"]
       73 GETIMPORT                        R19 K31 [Enum.VerticalAlignment.Center]
       75 SETTABLEKS                       R19 R18 K21 ["VerticalAlignment"]
       77 DUPTABLE                         R19 K34 [{"RowContainer", "IconContainer"}]
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K15 ["createElement"]
       81 GETUPVAL                         R21 2
       82 NEWTABLE                         R22 16 0
       84 NAMECALL                         R23 R15 K35 ["getNextOrder"]
       86 CALL                             R23 1 1
       87 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
       89 GETIMPORT                        R23 K38 [UDim2.new]
       91 LOADN                            R24 1
       92 GETTABLEKS                       R27 R3 K39 ["IconViewSize"]
       94 GETTABLEKS                       R27 R27 K40 ["X"]
       96 GETTABLEKS                       R27 R27 K41 ["Offset"]
       98 MINUS                            R26 R27
       99 GETTABLEKS                       R27 R3 K42 ["Spacing"]
      101 SUB                              R25 R26 R27
      102 LOADN                            R26 1
      103 LOADN                            R27 0
      104 CALL                             R23 4 1
      105 SETTABLEKS                       R23 R22 K3 ["Size"]
      107 GETIMPORT                        R23 K27 [Enum.FillDirection.Horizontal]
      109 SETTABLEKS                       R23 R22 K19 ["Layout"]
      111 GETIMPORT                        R23 K29 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R23 R22 K20 ["HorizontalAlignment"]
      115 GETIMPORT                        R23 K31 [Enum.VerticalAlignment.Center]
      117 SETTABLEKS                       R23 R22 K21 ["VerticalAlignment"]
      119 GETTABLEKS                       R23 R0 K43 ["onDoubleClick"]
      121 SETTABLEKS                       R23 R22 K44 ["OnClick"]
      123 GETTABLEKS                       R23 R0 K45 ["onRightClick"]
      125 SETTABLEKS                       R23 R22 K46 ["OnRightClick"]
      127 DUPTABLE                         R23 K47 [{"Left"}]
      128 SETTABLEKS                       R10 R23 K28 ["Left"]
      130 SETTABLEKS                       R23 R22 K48 ["Padding"]
      132 GETTABLEKS                       R23 R0 K49 ["rowContainerRef"]
      134 SETTABLEKS                       R23 R22 K50 ["ForwardRef"]
      136 GETUPVAL                         R23 1
      137 GETTABLEKS                       R23 R23 K51 ["Change"]
      139 GETTABLEKS                       R23 R23 K52 ["AbsoluteSize"]
      141 GETTABLEKS                       R24 R0 K53 ["onAbsoluteSizeChanged"]
      143 SETTABLE                         R24 R22 R23
      144 DUPTABLE                         R23 K61 [{"Checkbox", "Arrow", "ArrowPadding", "WarningLink", "RangeLabel", "Separator", "Label", "IssueCount"}]
      145 GETUPVAL                         R24 1
      146 GETTABLEKS                       R24 R24 K15 ["createElement"]
      148 GETUPVAL                         R25 3
      149 DUPTABLE                         R26 K63 [{"LayoutOrder", "Checked", "OnClick"}]
      150 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      152 CALL                             R27 1 1
      153 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      155 SETTABLEKS                       R8 R26 K62 ["Checked"]
      157 GETTABLEKS                       R27 R0 K64 ["onClick"]
      159 SETTABLEKS                       R27 R26 K44 ["OnClick"]
      161 CALL                             R24 2 1
      162 SETTABLEKS                       R24 R23 K54 ["Checkbox"]
      164 MOVE                             R24 R9
      165 JUMPIFNOT                        R24 ; [+63]
      166 GETUPVAL                         R24 1
      167 GETTABLEKS                       R24 R24 K15 ["createElement"]
      169 LOADK                            R25 K65 ["ImageButton"]
      170 NEWTABLE                         R26 8 0
      172 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      174 CALL                             R27 1 1
      175 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      177 GETIMPORT                        R27 K38 [UDim2.new]
      179 LOADN                            R28 0
      180 MOVE                             R29 R11
      181 LOADN                            R30 0
      182 MOVE                             R31 R11
      183 CALL                             R27 4 1
      184 SETTABLEKS                       R27 R26 K3 ["Size"]
      186 LOADN                            R27 1
      187 SETTABLEKS                       R27 R26 K66 ["BackgroundTransparency"]
      189 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      191 GETTABLEKS                       R27 R27 K67 ["Image"]
      193 SETTABLEKS                       R27 R26 K67 ["Image"]
      195 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      197 GETTABLEKS                       R27 R27 K68 ["Color"]
      199 SETTABLEKS                       R27 R26 K69 ["ImageColor3"]
      201 GETIMPORT                        R27 K71 [Vector2.new]
      203 MOVE                             R28 R11
      204 MOVE                             R29 R11
      205 CALL                             R27 2 1
      206 SETTABLEKS                       R27 R26 K72 ["ImageRectSize"]
      208 JUMPIFNOT                        R7 ; [+5]
      209 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      211 GETTABLEKS                       R27 R27 K73 ["ExpandedOffset"]
      213 JUMP                             ; [+4]
      214 GETTABLEKS                       R27 R3 K10 ["Arrow"]
      216 GETTABLEKS                       R27 R27 K74 ["CollapsedOffset"]
      218 SETTABLEKS                       R27 R26 K75 ["ImageRectOffset"]
      220 GETUPVAL                         R27 1
      221 GETTABLEKS                       R27 R27 K76 ["Event"]
      223 GETTABLEKS                       R27 R27 K77 ["Activated"]
      225 GETTABLEKS                       R28 R0 K78 ["onToggle"]
      227 SETTABLE                         R28 R26 R27
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K10 ["Arrow"]
      231 GETUPVAL                         R24 1
      232 GETTABLEKS                       R24 R24 K15 ["createElement"]
      234 GETUPVAL                         R25 2
      235 DUPTABLE                         R26 K79 [{"Size", "LayoutOrder"}]
      236 GETIMPORT                        R27 K81 [UDim2.fromOffset]
      238 GETTABLEKS                       R28 R3 K10 ["Arrow"]
      240 GETTABLEKS                       R28 R28 K48 ["Padding"]
      242 LOADN                            R29 0
      243 CALL                             R27 2 1
      244 SETTABLEKS                       R27 R26 K3 ["Size"]
      246 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      248 CALL                             R27 1 1
      249 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K55 ["ArrowPadding"]
      254 MOVE                             R24 R12
      255 JUMPIFNOT                        R24 ; [+7]
      256 GETUPVAL                         R24 4
      257 MOVE                             R25 R6
      258 MOVE                             R26 R15
      259 MOVE                             R27 R3
      260 GETTABLEKS                       R28 R0 K82 ["onLinkClick"]
      262 CALL                             R24 4 1
      263 SETTABLEKS                       R24 R23 K56 ["WarningLink"]
      265 MOVE                             R24 R12
      266 JUMPIFNOT                        R24 ; [+31]
      267 GETUPVAL                         R24 1
      268 GETTABLEKS                       R24 R24 K15 ["createElement"]
      270 GETUPVAL                         R25 5
      271 DUPTABLE                         R26 K86 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder"}]
      272 GETTABLEKS                       R28 R6 K87 ["range"]
      274 LOADK                            R29 K88 ["("]
      275 GETTABLEKS                       R30 R28 K89 ["startLine"]
      277 LOADK                            R31 K90 [","]
      278 GETTABLEKS                       R32 R28 K91 ["startCharacter"]
      280 LOADK                            R33 K92 [")"]
      281 CONCAT                           R27 R29 R33
      282 SETTABLEKS                       R27 R26 K83 ["Text"]
      284 GETTABLEKS                       R27 R3 K84 ["TextSize"]
      286 SETTABLEKS                       R27 R26 K84 ["TextSize"]
      288 GETIMPORT                        R27 K94 [Enum.AutomaticSize.XY]
      290 SETTABLEKS                       R27 R26 K85 ["AutomaticSize"]
      292 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      294 CALL                             R27 1 1
      295 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      297 CALL                             R24 2 1
      298 SETTABLEKS                       R24 R23 K57 ["RangeLabel"]
      300 MOVE                             R24 R12
      301 JUMPIFNOT                        R24 ; [+22]
      302 GETUPVAL                         R24 1
      303 GETTABLEKS                       R24 R24 K15 ["createElement"]
      305 GETUPVAL                         R25 5
      306 DUPTABLE                         R26 K86 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder"}]
      307 LOADK                            R27 K95 [": "]
      308 SETTABLEKS                       R27 R26 K83 ["Text"]
      310 GETTABLEKS                       R27 R3 K84 ["TextSize"]
      312 SETTABLEKS                       R27 R26 K84 ["TextSize"]
      314 GETIMPORT                        R27 K94 [Enum.AutomaticSize.XY]
      316 SETTABLEKS                       R27 R26 K85 ["AutomaticSize"]
      318 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      320 CALL                             R27 1 1
      321 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      323 CALL                             R24 2 1
      324 SETTABLEKS                       R24 R23 K58 ["Separator"]
      326 GETUPVAL                         R24 1
      327 GETTABLEKS                       R24 R24 K15 ["createElement"]
      329 GETUPVAL                         R25 5
      330 DUPTABLE                         R26 K98 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder", "TextTruncate", "TextXAlignment"}]
      331 GETTABLEKS                       R27 R6 K99 ["text"]
      333 SETTABLEKS                       R27 R26 K83 ["Text"]
      335 GETTABLEKS                       R27 R3 K84 ["TextSize"]
      337 SETTABLEKS                       R27 R26 K84 ["TextSize"]
      339 GETIMPORT                        R27 K94 [Enum.AutomaticSize.XY]
      341 SETTABLEKS                       R27 R26 K85 ["AutomaticSize"]
      343 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      345 CALL                             R27 1 1
      346 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      348 GETIMPORT                        R27 K101 [Enum.TextTruncate.AtEnd]
      350 SETTABLEKS                       R27 R26 K96 ["TextTruncate"]
      352 GETIMPORT                        R27 K102 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R27 R26 K97 ["TextXAlignment"]
      356 DUPTABLE                         R27 K105 [{"SizeConstraint", "Tooltip"}]
      357 GETUPVAL                         R28 1
      358 GETTABLEKS                       R28 R28 K15 ["createElement"]
      360 LOADK                            R29 K106 ["UISizeConstraint"]
      361 DUPTABLE                         R30 K108 [{"MaxSize"}]
      362 GETIMPORT                        R31 K71 [Vector2.new]
      364 MOVE                             R32 R14
      365 GETTABLEKS                       R33 R4 K109 ["Y"]
      367 GETTABLEKS                       R33 R33 K41 ["Offset"]
      369 CALL                             R31 2 1
      370 SETTABLEKS                       R31 R30 K107 ["MaxSize"]
      372 CALL                             R28 2 1
      373 SETTABLEKS                       R28 R27 K103 ["SizeConstraint"]
      375 GETUPVAL                         R28 1
      376 GETTABLEKS                       R28 R28 K15 ["createElement"]
      378 GETUPVAL                         R29 6
      379 DUPTABLE                         R30 K110 [{"Text"}]
      380 GETTABLEKS                       R31 R6 K99 ["text"]
      382 SETTABLEKS                       R31 R30 K83 ["Text"]
      384 CALL                             R28 2 1
      385 SETTABLEKS                       R28 R27 K104 ["Tooltip"]
      387 CALL                             R24 3 1
      388 SETTABLEKS                       R24 R23 K59 ["Label"]
      390 LOADB                            R24 0
      391 JUMPIFEQKNIL                     R13 ; [+29]
      393 GETUPVAL                         R24 1
      394 GETTABLEKS                       R24 R24 K15 ["createElement"]
      396 GETUPVAL                         R25 5
      397 DUPTABLE                         R26 K111 [{"Text", "Style", "TextSize", "AutomaticSize", "LayoutOrder"}]
      398 LOADK                            R28 K88 ["("]
      399 MOVE                             R29 R13
      400 LOADK                            R30 K92 [")"]
      401 CONCAT                           R27 R28 R30
      402 SETTABLEKS                       R27 R26 K83 ["Text"]
      404 LOADK                            R27 K59 ["Label"]
      405 SETTABLEKS                       R27 R26 K16 ["Style"]
      407 GETTABLEKS                       R27 R3 K84 ["TextSize"]
      409 SETTABLEKS                       R27 R26 K84 ["TextSize"]
      411 GETIMPORT                        R27 K94 [Enum.AutomaticSize.XY]
      413 SETTABLEKS                       R27 R26 K85 ["AutomaticSize"]
      415 NAMECALL                         R27 R15 K35 ["getNextOrder"]
      417 CALL                             R27 1 1
      418 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      420 CALL                             R24 2 1
      421 SETTABLEKS                       R24 R23 K60 ["IssueCount"]
      423 CALL                             R20 3 1
      424 SETTABLEKS                       R20 R19 K32 ["RowContainer"]
      426 GETTABLEKS                       R21 R6 K112 ["statuses"]
      428 JUMPIFNOT                        R21 ; [+36]
      429 GETUPVAL                         R20 1
      430 GETTABLEKS                       R20 R20 K15 ["createElement"]
      432 GETUPVAL                         R21 2
      433 DUPTABLE                         R22 K113 [{"AutomaticSize", "LayoutOrder"}]
      434 GETIMPORT                        R23 K94 [Enum.AutomaticSize.XY]
      436 SETTABLEKS                       R23 R22 K85 ["AutomaticSize"]
      438 NAMECALL                         R23 R15 K35 ["getNextOrder"]
      440 CALL                             R23 1 1
      441 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      443 DUPTABLE                         R23 K115 [{"ScriptIconView"}]
      444 GETUPVAL                         R24 1
      445 GETTABLEKS                       R24 R24 K15 ["createElement"]
      447 GETUPVAL                         R25 7
      448 DUPTABLE                         R26 K118 [{"Size", "Statuses", "ShowCounts"}]
      449 GETTABLEKS                       R27 R3 K39 ["IconViewSize"]
      451 SETTABLEKS                       R27 R26 K3 ["Size"]
      453 GETTABLEKS                       R27 R6 K112 ["statuses"]
      455 SETTABLEKS                       R27 R26 K116 ["Statuses"]
      457 NOT                              R27 R12
      458 SETTABLEKS                       R27 R26 K117 ["ShowCounts"]
      460 CALL                             R24 2 1
      461 SETTABLEKS                       R24 R23 K114 ["ScriptIconView"]
      463 CALL                             R20 3 1
      464 JUMP                             ; [+1]
      465 LOADNIL                          R20
      466 SETTABLEKS                       R20 R19 K33 ["IconContainer"]
      468 CALL                             R16 3 -1
      469 RETURN                           R16 -1

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
