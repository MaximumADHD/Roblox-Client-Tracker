PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["LabelWidths"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["MaxLabelWidth"]
        7 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETIMPORT                        R2 K2 [table.remove]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["LabelWidths"]
        6 GETIMPORT                        R4 K5 [table.find]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["LabelWidths"]
       11 MOVE                             R6 R0
       12 CALL                             R4 2 -1
       13 CALL                             R2 -1 0
       14 JUMPIFNOT                        R1 ; [+9]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["LabelWidths"]
       18 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R2 K7 [table.insert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K8 ["MaxLabelWidth"]
       27 JUMPIFNOT                        R1 ; [+16]
       28 JUMPIFNOTLT                      R2 R1 ; [+15]
       30 GETUPVAL                         R3 0
       31 SETTABLEKS                       R1 R3 K8 ["MaxLabelWidth"]
       33 GETUPVAL                         R3 0
       34 DUPTABLE                         R5 K9 [{"MaxLabelWidth"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K8 ["MaxLabelWidth"]
       38 SETTABLEKS                       R6 R5 K8 ["MaxLabelWidth"]
       40 NAMECALL                         R3 R3 K10 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0
       44 JUMPIFNOTEQ                      R0 R2 ; [+32]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K3 ["LabelWidths"]
       49 LENGTH                           R3 R4
       50 LOADN                            R4 0
       51 JUMPIFNOTLT                      R4 R3 ; [+25]
       53 GETUPVAL                         R3 0
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K3 ["LabelWidths"]
       57 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       58 GETIMPORT                        R5 K12 [unpack]
       60 CALL                             R5 1 -1
       61 FASTCALL                         MATH_MAX ; [+2]
       62 GETIMPORT                        R4 K15 [math.max]
       64 CALL                             R4 -1 1
       65 SETTABLEKS                       R4 R3 K8 ["MaxLabelWidth"]
       67 GETUPVAL                         R3 0
       68 DUPTABLE                         R5 K9 [{"MaxLabelWidth"}]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K8 ["MaxLabelWidth"]
       72 SETTABLEKS                       R6 R5 K8 ["MaxLabelWidth"]
       74 NAMECALL                         R3 R3 K10 ["setState"]
       76 CALL                             R3 2 0
       77 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R2 R2 K1 ["Children"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 GETTABLEKS                       R1 R1 K2 ["Value"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["Items"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLE                         R3 R1 R4
       21 GETTABLEKS                       R3 R3 K1 ["Children"]
       23 GETUPVAL                         R4 2
       24 GETTABLE                         R2 R3 R4
       25 SETTABLEKS                       R0 R2 K2 ["Value"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K3 ["OnChange"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Items"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 2
        6 GETTABLE                         R3 R1 R4
        7 GETTABLEKS                       R3 R3 K1 ["Children"]
        9 GETUPVAL                         R4 3
       10 GETTABLE                         R2 R3 R4
       11 SETTABLEKS                       R0 R2 K1 ["Children"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["OnChange"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnExpansionChange"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Expansion"]
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["Id"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K1 ["Expansion"]
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K2 ["Id"]
       18 GETTABLE                         R6 R7 R8
       19 NOT                              R5 R6
       20 SETTABLE                         R5 R3 R4
       21 CALL                             R1 2 -1
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"FormWidth"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["X"]
        6 SETTABLEKS                       R4 R3 K0 ["FormWidth"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"FormWidth"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["X"]
        6 SETTABLEKS                       R4 R3 K0 ["FormWidth"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R1 K2 ["Items"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 NEWTABLE                         R9 0 0
       13 GETTABLEKS                       R10 R8 K3 ["Children"]
       15 LOADNIL                          R11
       16 LOADNIL                          R12
       17 FORGPREP                         R10
       18 GETTABLEKS                       R15 R14 K4 ["Disabled"]
       20 GETTABLEKS                       R16 R14 K5 ["Height"]
       22 GETTABLEKS                       R17 R14 K6 ["Hidden"]
       24 GETTABLEKS                       R18 R14 K7 ["MinWidth"]
       26 GETTABLEKS                       R19 R14 K8 ["Value"]
       28 GETTABLEKS                       R20 R14 K9 ["Validate"]
       30 GETTABLEKS                       R21 R14 K10 ["Id"]
       32 JUMPIFEQKNIL                     R19 ; [+95]
       34 JUMPIF                           R17 ; [+93]
       35 GETUPVAL                         R22 0
       36 GETTABLEKS                       R22 R22 K11 ["createElement"]
       38 GETUPVAL                         R23 1
       39 DUPTABLE                         R24 K28 [{"ItemChildren", "Disabled", "FormWidth", "Height", "Layout", "LayoutOrder", "Label", "LabelHeight", "LabelWidth", "Localization", "MinWidth", "OnLabelWidthChanged", "OnChanged", "OnChildrenChanged", "OnValidate", "Renderers", "Schema", "Style", "Tooltip", "Value"}]
       40 GETTABLEKS                       R25 R14 K3 ["Children"]
       42 SETTABLEKS                       R25 R24 K12 ["ItemChildren"]
       44 SETTABLEKS                       R15 R24 K4 ["Disabled"]
       46 GETTABLEKS                       R25 R0 K29 ["state"]
       48 GETTABLEKS                       R25 R25 K13 ["FormWidth"]
       50 SETTABLEKS                       R25 R24 K13 ["FormWidth"]
       52 SETTABLEKS                       R16 R24 K5 ["Height"]
       54 GETTABLEKS                       R25 R14 K14 ["Layout"]
       56 SETTABLEKS                       R25 R24 K14 ["Layout"]
       58 SETTABLEKS                       R13 R24 K15 ["LayoutOrder"]
       60 GETTABLEKS                       R25 R14 K16 ["Label"]
       62 SETTABLEKS                       R25 R24 K16 ["Label"]
       64 GETTABLEKS                       R25 R1 K17 ["LabelHeight"]
       66 SETTABLEKS                       R25 R24 K17 ["LabelHeight"]
       68 GETTABLEKS                       R26 R1 K18 ["LabelWidth"]
       70 JUMPIF                           R26 ; [+7]
       71 GETIMPORT                        R25 K32 [UDim.new]
       73 LOADN                            R26 0
       74 GETTABLEKS                       R27 R0 K33 ["MaxLabelWidth"]
       76 CALL                             R25 2 1
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R25 R1 K18 ["LabelWidth"]
       80 SETTABLEKS                       R25 R24 K18 ["LabelWidth"]
       82 GETTABLEKS                       R25 R1 K19 ["Localization"]
       84 SETTABLEKS                       R25 R24 K19 ["Localization"]
       86 SETTABLEKS                       R18 R24 K7 ["MinWidth"]
       88 NEWCLOSURE                       R25 P0
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R25 R24 K20 ["OnLabelWidthChanged"]
       92 NEWCLOSURE                       R25 P1
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R13
       96 CAPTURE                          UPVAL U2
       97 SETTABLEKS                       R25 R24 K21 ["OnChanged"]
       99 NEWCLOSURE                       R25 P2
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R13
      104 SETTABLEKS                       R25 R24 K22 ["OnChildrenChanged"]
      106 SETTABLEKS                       R20 R24 K23 ["OnValidate"]
      108 GETTABLEKS                       R25 R1 K24 ["Renderers"]
      110 SETTABLEKS                       R25 R24 K24 ["Renderers"]
      112 GETTABLEKS                       R25 R14 K25 ["Schema"]
      114 SETTABLEKS                       R25 R24 K25 ["Schema"]
      116 GETTABLEKS                       R25 R1 K1 ["Stylizer"]
      118 SETTABLEKS                       R25 R24 K26 ["Style"]
      120 GETTABLEKS                       R25 R14 K27 ["Tooltip"]
      122 SETTABLEKS                       R25 R24 K27 ["Tooltip"]
      124 SETTABLEKS                       R19 R24 K8 ["Value"]
      126 CALL                             R22 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R22
      129 SETTABLE                         R22 R9 R21
      130 FORGLOOP                         R10 2 ; [-113]
      132 GETTABLEKS                       R11 R8 K34 ["Expandable"]
      134 JUMPIFEQKNIL                     R11 ; [+4]
      136 GETTABLEKS                       R10 R8 K34 ["Expandable"]
      138 JUMP                             ; [+1]
      139 LOADB                            R10 1
      140 GETTABLEKS                       R12 R8 K35 ["Separator"]
      142 JUMPIFEQKNIL                     R12 ; [+4]
      144 GETTABLEKS                       R11 R8 K35 ["Separator"]
      146 JUMP                             ; [+1]
      147 LOADB                            R11 0
      148 GETUPVAL                         R12 3
      149 GETTABLEKS                       R12 R12 K31 ["new"]
      151 CALL                             R12 0 1
      152 GETTABLEKS                       R14 R8 K16 ["Label"]
      154 JUMPIF                           R14 ; [+8]
      155 GETIMPORT                        R13 K37 [UDim2.new]
      157 LOADN                            R14 1
      158 LOADN                            R15 0
      159 LOADN                            R16 0
      160 LOADN                            R17 0
      161 CALL                             R13 4 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R13
      164 GETTABLEKS                       R15 R1 K38 ["Expansion"]
      166 GETTABLEKS                       R16 R8 K10 ["Id"]
      168 GETTABLE                         R14 R15 R16
      169 GETTABLEKS                       R15 R1 K39 ["ExpandByDefault"]
      171 JUMPIFNOT                        R15 ; [+8]
      172 MOVE                             R15 R14
      173 JUMPIF                           R15 ; [+4]
      174 JUMPIFEQKNIL                     R14 ; [+2]
      176 LOADB                            R15 0 +1
      177 LOADB                            R15 1
      178 MOVE                             R14 R15
      179 JUMP                             ; [0]
      180 GETTABLEKS                       R15 R8 K10 ["Id"]
      182 GETUPVAL                         R16 0
      183 GETTABLEKS                       R16 R16 K11 ["createElement"]
      185 GETUPVAL                         R17 4
      186 DUPTABLE                         R18 K45 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Size", "VerticalAlignment"}]
      187 GETIMPORT                        R19 K48 [Enum.AutomaticSize.Y]
      189 SETTABLEKS                       R19 R18 K40 ["AutomaticSize"]
      191 GETIMPORT                        R19 K50 [Enum.HorizontalAlignment.Center]
      193 SETTABLEKS                       R19 R18 K41 ["HorizontalAlignment"]
      195 GETIMPORT                        R19 K53 [Enum.FillDirection.Vertical]
      197 SETTABLEKS                       R19 R18 K14 ["Layout"]
      199 SETTABLEKS                       R7 R18 K15 ["LayoutOrder"]
      201 GETTABLEKS                       R19 R2 K54 ["FormItem"]
      203 GETTABLEKS                       R19 R19 K42 ["Spacing"]
      205 SETTABLEKS                       R19 R18 K42 ["Spacing"]
      207 GETIMPORT                        R19 K56 [UDim2.fromScale]
      209 LOADN                            R20 1
      210 LOADN                            R21 0
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K43 ["Size"]
      214 GETIMPORT                        R19 K58 [Enum.VerticalAlignment.Top]
      216 SETTABLEKS                       R19 R18 K44 ["VerticalAlignment"]
      218 DUPTABLE                         R19 K60 [{"ExpandablePane", "Separator"}]
      219 GETUPVAL                         R20 0
      220 GETTABLEKS                       R20 R20 K11 ["createElement"]
      222 GETUPVAL                         R21 5
      223 DUPTABLE                         R22 K68 [{["AlwaysExpanded"], ["ContentPadding"] = 0, ["Expanded"], ["LayoutOrder"] = 1, ["OnExpandedChanged"], ["Size"], ["Style"], ["Text"], ["VerticalAlignment"]}]
      224 NOT                              R23 R10
      225 SETTABLEKS                       R23 R22 K61 ["AlwaysExpanded"]
      227 SETTABLEKS                       R14 R22 K64 ["Expanded"]
      229 NEWCLOSURE                       R23 P3
      230 CAPTURE                          VAL R1
      231 CAPTURE                          UPVAL U6
      232 CAPTURE                          VAL R8
      233 SETTABLEKS                       R23 R22 K66 ["OnExpandedChanged"]
      235 SETTABLEKS                       R13 R22 K43 ["Size"]
      237 GETUPVAL                         R24 7
      238 CALL                             R24 0 1
      239 JUMPIFNOT                        R24 ; [+3]
      240 GETTABLEKS                       R23 R2 K69 ["ExpandablePaneHeader"]
      242 JUMPIF                           R23 ; [+1]
      243 LOADK                            R23 K70 ["Section"]
      244 SETTABLEKS                       R23 R22 K26 ["Style"]
      246 GETTABLEKS                       R23 R8 K16 ["Label"]
      248 SETTABLEKS                       R23 R22 K67 ["Text"]
      250 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Top]
      252 SETTABLEKS                       R23 R22 K44 ["VerticalAlignment"]
      254 MOVE                             R23 R9
      255 CALL                             R20 3 1
      256 SETTABLEKS                       R20 R19 K59 ["ExpandablePane"]
      258 JUMPIFNOT                        R11 ; [+61]
      259 GETUPVAL                         R20 0
      260 GETTABLEKS                       R20 R20 K11 ["createElement"]
      262 GETUPVAL                         R21 4
      263 DUPTABLE                         R22 K71 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      264 GETIMPORT                        R23 K50 [Enum.HorizontalAlignment.Center]
      266 SETTABLEKS                       R23 R22 K41 ["HorizontalAlignment"]
      268 GETIMPORT                        R23 K53 [Enum.FillDirection.Vertical]
      270 SETTABLEKS                       R23 R22 K14 ["Layout"]
      272 NAMECALL                         R23 R12 K72 ["getNextOrder"]
      274 CALL                             R23 1 1
      275 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      277 GETIMPORT                        R23 K37 [UDim2.new]
      279 LOADN                            R24 1
      280 GETTABLEKS                       R27 R2 K54 ["FormItem"]
      282 GETTABLEKS                       R27 R27 K42 ["Spacing"]
      284 MINUS                            R26 R27
      285 MULK                             R25 R26 K73 [2]
      286 LOADN                            R26 0
      287 LOADN                            R27 1
      288 CALL                             R23 4 1
      289 SETTABLEKS                       R23 R22 K43 ["Size"]
      291 GETUPVAL                         R24 8
      292 JUMPIFNOT                        R24 ; [+11]
      293 GETUPVAL                         R23 0
      294 GETTABLEKS                       R23 R23 K11 ["createElement"]
      296 GETUPVAL                         R24 9
      297 DUPTABLE                         R25 K75 [{"DominantAxis"}]
      298 GETIMPORT                        R26 K77 [Enum.DominantAxis.Width]
      300 SETTABLEKS                       R26 R25 K74 ["DominantAxis"]
      302 CALL                             R23 2 1
      303 JUMP                             ; [+14]
      304 NEWTABLE                         R23 0 1
      306 GETUPVAL                         R24 0
      307 GETTABLEKS                       R24 R24 K11 ["createElement"]
      309 GETUPVAL                         R25 9
      310 DUPTABLE                         R26 K75 [{"DominantAxis"}]
      311 GETIMPORT                        R27 K77 [Enum.DominantAxis.Width]
      313 SETTABLEKS                       R27 R26 K74 ["DominantAxis"]
      315 CALL                             R24 2 -1
      316 SETLIST                          R23 R24 -1 [1]
      318 CALL                             R20 3 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R20
      321 SETTABLEKS                       R20 R19 K35 ["Separator"]
      323 CALL                             R16 3 1
      324 SETTABLE                         R16 R3 R15
      325 FORGLOOP                         R4 2 ; [-315]
      327 DUPTABLE                         R4 K81 [{"Anchorpoint", "LayoutOrder", "Padding", "Position", "Size"}]
      328 GETTABLEKS                       R5 R1 K82 ["AnchorPoint"]
      330 SETTABLEKS                       R5 R4 K78 ["Anchorpoint"]
      332 GETTABLEKS                       R5 R1 K15 ["LayoutOrder"]
      334 SETTABLEKS                       R5 R4 K15 ["LayoutOrder"]
      336 DUPTABLE                         R5 K84 [{"Bottom"}]
      337 GETTABLEKS                       R6 R2 K54 ["FormItem"]
      339 GETTABLEKS                       R6 R6 K42 ["Spacing"]
      341 SETTABLEKS                       R6 R5 K83 ["Bottom"]
      343 SETTABLEKS                       R5 R4 K79 ["Padding"]
      345 GETTABLEKS                       R5 R1 K80 ["Position"]
      347 SETTABLEKS                       R5 R4 K80 ["Position"]
      349 GETTABLEKS                       R5 R1 K43 ["Size"]
      351 SETTABLEKS                       R5 R4 K43 ["Size"]
      353 GETTABLEKS                       R5 R1 K85 ["UseScrollingFrame"]
      355 JUMPIFNOT                        R5 ; [+54]
      356 GETUPVAL                         R5 0
      357 GETTABLEKS                       R5 R5 K11 ["createElement"]
      359 GETUPVAL                         R6 10
      360 MOVE                             R7 R4
      361 DUPTABLE                         R8 K87 [{"Pane"}]
      362 GETUPVAL                         R9 0
      363 GETTABLEKS                       R9 R9 K11 ["createElement"]
      365 GETUPVAL                         R10 4
      366 NEWTABLE                         R11 8 0
      368 GETIMPORT                        R12 K48 [Enum.AutomaticSize.Y]
      370 SETTABLEKS                       R12 R11 K40 ["AutomaticSize"]
      372 GETIMPORT                        R12 K53 [Enum.FillDirection.Vertical]
      374 SETTABLEKS                       R12 R11 K14 ["Layout"]
      376 GETIMPORT                        R12 K56 [UDim2.fromScale]
      378 LOADN                            R13 1
      379 LOADN                            R14 0
      380 CALL                             R12 2 1
      381 SETTABLEKS                       R12 R11 K43 ["Size"]
      383 GETUPVAL                         R13 7
      384 CALL                             R13 0 1
      385 JUMPIFNOT                        R13 ; [+3]
      386 GETTABLEKS                       R12 R2 K42 ["Spacing"]
      388 JUMP                             ; [+1]
      389 LOADNIL                          R12
      390 SETTABLEKS                       R12 R11 K42 ["Spacing"]
      392 GETIMPORT                        R12 K58 [Enum.VerticalAlignment.Top]
      394 SETTABLEKS                       R12 R11 K44 ["VerticalAlignment"]
      396 GETUPVAL                         R12 0
      397 GETTABLEKS                       R12 R12 K88 ["Change"]
      399 GETTABLEKS                       R12 R12 K89 ["AbsoluteSize"]
      401 NEWCLOSURE                       R13 P4
      402 CAPTURE                          VAL R0
      403 SETTABLE                         R13 R11 R12
      404 MOVE                             R12 R3
      405 CALL                             R9 3 1
      406 SETTABLEKS                       R9 R8 K86 ["Pane"]
      408 CALL                             R5 3 -1
      409 RETURN                           R5 -1
      410 GETUPVAL                         R5 0
      411 GETTABLEKS                       R5 R5 K11 ["createElement"]
      413 GETUPVAL                         R6 4
      414 GETUPVAL                         R7 6
      415 MOVE                             R8 R4
      416 NEWTABLE                         R9 8 0
      418 GETIMPORT                        R10 K48 [Enum.AutomaticSize.Y]
      420 SETTABLEKS                       R10 R9 K40 ["AutomaticSize"]
      422 GETIMPORT                        R10 K53 [Enum.FillDirection.Vertical]
      424 SETTABLEKS                       R10 R9 K14 ["Layout"]
      426 GETIMPORT                        R10 K58 [Enum.VerticalAlignment.Top]
      428 SETTABLEKS                       R10 R9 K44 ["VerticalAlignment"]
      430 GETUPVAL                         R11 7
      431 CALL                             R11 0 1
      432 JUMPIFNOT                        R11 ; [+3]
      433 GETTABLEKS                       R10 R2 K42 ["Spacing"]
      435 JUMP                             ; [+1]
      436 LOADNIL                          R10
      437 SETTABLEKS                       R10 R9 K42 ["Spacing"]
      439 GETUPVAL                         R10 0
      440 GETTABLEKS                       R10 R10 K88 ["Change"]
      442 GETTABLEKS                       R10 R10 K89 ["AbsoluteSize"]
      444 NEWCLOSURE                       R11 P5
      445 CAPTURE                          VAL R0
      446 SETTABLE                         R11 R9 R10
      447 CALL                             R7 2 1
      448 MOVE                             R8 R3
      449 CALL                             R5 3 -1
      450 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["LayoutOrderIterator"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["SharedFlags"]
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       38 CALL                             R5 1 1
       39 CALL                             R5 0 1
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R7 R0 K12 ["SharedFlags"]
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagDevFrameworkAdjustTextFontSize"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R0 K10 ["Util"]
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R7 K15 ["deepCopy"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K4 ["Parent"]
       58 GETTABLEKS                       R10 R10 K16 ["Dash"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R9 K17 ["join"]
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K2 ["UI"]
       67 GETTABLEKS                       R12 R12 K18 ["Components"]
       69 GETTABLEKS                       R12 R12 K19 ["ExpandablePane"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R13 R0 K2 ["UI"]
       76 GETTABLEKS                       R13 R13 K18 ["Components"]
       78 GETTABLEKS                       R13 R13 K20 ["Pane"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K2 ["UI"]
       85 GETTABLEKS                       R14 R14 K18 ["Components"]
       87 GETTABLEKS                       R14 R14 K21 ["ScrollingFrame"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R15 R0 K2 ["UI"]
       94 GETTABLEKS                       R15 R15 K18 ["Components"]
       96 GETTABLEKS                       R15 R15 K22 ["Separator"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETIMPORT                        R16 K1 [script]
      103 GETTABLEKS                       R16 R16 K23 ["FormItem"]
      105 CALL                             R15 1 1
      106 GETTABLEKS                       R16 R1 K24 ["PureComponent"]
      108 LOADK                            R18 K25 ["Form"]
      109 NAMECALL                         R16 R16 K26 ["extend"]
      111 CALL                             R16 2 1
      112 DUPTABLE                         R17 K29 [{["UseScrollingFrame"] = True}]
      113 SETTABLEKS                       R17 R16 K30 ["defaultProps"]
      115 DUPCLOSURE                       R17 K31 [PROTO_0]
      116 SETTABLEKS                       R17 R16 K32 ["init"]
      118 DUPCLOSURE                       R17 K33 [PROTO_7]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R17 R16 K34 ["render"]
      132 MOVE                             R17 R3
      133 DUPTABLE                         R18 K37 [{"Localization", "Stylizer"}]
      134 GETTABLEKS                       R19 R2 K35 ["Localization"]
      136 SETTABLEKS                       R19 R18 K35 ["Localization"]
      138 GETTABLEKS                       R19 R2 K36 ["Stylizer"]
      140 SETTABLEKS                       R19 R18 K36 ["Stylizer"]
      142 CALL                             R17 1 1
      143 MOVE                             R18 R16
      144 CALL                             R17 1 1
      145 MOVE                             R16 R17
      146 RETURN                           R16 1
