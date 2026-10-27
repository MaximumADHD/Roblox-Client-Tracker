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
      237 GETTABLEKS                       R24 R2 K70 ["ExpandablePaneHeader"]
      239 ORK                              R23 R24 K69 ["Section"]
      240 SETTABLEKS                       R23 R22 K26 ["Style"]
      242 GETTABLEKS                       R23 R8 K16 ["Label"]
      244 SETTABLEKS                       R23 R22 K67 ["Text"]
      246 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Top]
      248 SETTABLEKS                       R23 R22 K44 ["VerticalAlignment"]
      250 MOVE                             R23 R9
      251 CALL                             R20 3 1
      252 SETTABLEKS                       R20 R19 K59 ["ExpandablePane"]
      254 JUMPIFNOT                        R11 ; [+61]
      255 GETUPVAL                         R20 0
      256 GETTABLEKS                       R20 R20 K11 ["createElement"]
      258 GETUPVAL                         R21 4
      259 DUPTABLE                         R22 K71 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      260 GETIMPORT                        R23 K50 [Enum.HorizontalAlignment.Center]
      262 SETTABLEKS                       R23 R22 K41 ["HorizontalAlignment"]
      264 GETIMPORT                        R23 K53 [Enum.FillDirection.Vertical]
      266 SETTABLEKS                       R23 R22 K14 ["Layout"]
      268 NAMECALL                         R23 R12 K72 ["getNextOrder"]
      270 CALL                             R23 1 1
      271 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      273 GETIMPORT                        R23 K37 [UDim2.new]
      275 LOADN                            R24 1
      276 GETTABLEKS                       R27 R2 K54 ["FormItem"]
      278 GETTABLEKS                       R27 R27 K42 ["Spacing"]
      280 MINUS                            R26 R27
      281 MULK                             R25 R26 K73 [2]
      282 LOADN                            R26 0
      283 LOADN                            R27 1
      284 CALL                             R23 4 1
      285 SETTABLEKS                       R23 R22 K43 ["Size"]
      287 GETUPVAL                         R24 7
      288 JUMPIFNOT                        R24 ; [+11]
      289 GETUPVAL                         R23 0
      290 GETTABLEKS                       R23 R23 K11 ["createElement"]
      292 GETUPVAL                         R24 8
      293 DUPTABLE                         R25 K75 [{"DominantAxis"}]
      294 GETIMPORT                        R26 K77 [Enum.DominantAxis.Width]
      296 SETTABLEKS                       R26 R25 K74 ["DominantAxis"]
      298 CALL                             R23 2 1
      299 JUMP                             ; [+14]
      300 NEWTABLE                         R23 0 1
      302 GETUPVAL                         R24 0
      303 GETTABLEKS                       R24 R24 K11 ["createElement"]
      305 GETUPVAL                         R25 8
      306 DUPTABLE                         R26 K75 [{"DominantAxis"}]
      307 GETIMPORT                        R27 K77 [Enum.DominantAxis.Width]
      309 SETTABLEKS                       R27 R26 K74 ["DominantAxis"]
      311 CALL                             R24 2 -1
      312 SETLIST                          R23 R24 -1 [1]
      314 CALL                             R20 3 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R20
      317 SETTABLEKS                       R20 R19 K35 ["Separator"]
      319 CALL                             R16 3 1
      320 SETTABLE                         R16 R3 R15
      321 FORGLOOP                         R4 2 ; [-311]
      323 DUPTABLE                         R4 K81 [{"Anchorpoint", "LayoutOrder", "Padding", "Position", "Size"}]
      324 GETTABLEKS                       R5 R1 K82 ["AnchorPoint"]
      326 SETTABLEKS                       R5 R4 K78 ["Anchorpoint"]
      328 GETTABLEKS                       R5 R1 K15 ["LayoutOrder"]
      330 SETTABLEKS                       R5 R4 K15 ["LayoutOrder"]
      332 DUPTABLE                         R5 K84 [{"Bottom"}]
      333 GETTABLEKS                       R6 R2 K54 ["FormItem"]
      335 GETTABLEKS                       R6 R6 K42 ["Spacing"]
      337 SETTABLEKS                       R6 R5 K83 ["Bottom"]
      339 SETTABLEKS                       R5 R4 K79 ["Padding"]
      341 GETTABLEKS                       R5 R1 K80 ["Position"]
      343 SETTABLEKS                       R5 R4 K80 ["Position"]
      345 GETTABLEKS                       R5 R1 K43 ["Size"]
      347 SETTABLEKS                       R5 R4 K43 ["Size"]
      349 GETTABLEKS                       R5 R1 K85 ["UseScrollingFrame"]
      351 JUMPIFNOT                        R5 ; [+49]
      352 GETUPVAL                         R5 0
      353 GETTABLEKS                       R5 R5 K11 ["createElement"]
      355 GETUPVAL                         R6 9
      356 MOVE                             R7 R4
      357 DUPTABLE                         R8 K87 [{"Pane"}]
      358 GETUPVAL                         R9 0
      359 GETTABLEKS                       R9 R9 K11 ["createElement"]
      361 GETUPVAL                         R10 4
      362 NEWTABLE                         R11 8 0
      364 GETIMPORT                        R12 K48 [Enum.AutomaticSize.Y]
      366 SETTABLEKS                       R12 R11 K40 ["AutomaticSize"]
      368 GETIMPORT                        R12 K53 [Enum.FillDirection.Vertical]
      370 SETTABLEKS                       R12 R11 K14 ["Layout"]
      372 GETIMPORT                        R12 K56 [UDim2.fromScale]
      374 LOADN                            R13 1
      375 LOADN                            R14 0
      376 CALL                             R12 2 1
      377 SETTABLEKS                       R12 R11 K43 ["Size"]
      379 GETTABLEKS                       R12 R2 K42 ["Spacing"]
      381 SETTABLEKS                       R12 R11 K42 ["Spacing"]
      383 GETIMPORT                        R12 K58 [Enum.VerticalAlignment.Top]
      385 SETTABLEKS                       R12 R11 K44 ["VerticalAlignment"]
      387 GETUPVAL                         R12 0
      388 GETTABLEKS                       R12 R12 K88 ["Change"]
      390 GETTABLEKS                       R12 R12 K89 ["AbsoluteSize"]
      392 NEWCLOSURE                       R13 P4
      393 CAPTURE                          VAL R0
      394 SETTABLE                         R13 R11 R12
      395 MOVE                             R12 R3
      396 CALL                             R9 3 1
      397 SETTABLEKS                       R9 R8 K86 ["Pane"]
      399 CALL                             R5 3 -1
      400 RETURN                           R5 -1
      401 GETUPVAL                         R5 0
      402 GETTABLEKS                       R5 R5 K11 ["createElement"]
      404 GETUPVAL                         R6 4
      405 GETUPVAL                         R7 6
      406 MOVE                             R8 R4
      407 NEWTABLE                         R9 8 0
      409 GETIMPORT                        R10 K48 [Enum.AutomaticSize.Y]
      411 SETTABLEKS                       R10 R9 K40 ["AutomaticSize"]
      413 GETIMPORT                        R10 K53 [Enum.FillDirection.Vertical]
      415 SETTABLEKS                       R10 R9 K14 ["Layout"]
      417 GETIMPORT                        R10 K58 [Enum.VerticalAlignment.Top]
      419 SETTABLEKS                       R10 R9 K44 ["VerticalAlignment"]
      421 GETTABLEKS                       R10 R2 K42 ["Spacing"]
      423 SETTABLEKS                       R10 R9 K42 ["Spacing"]
      425 GETUPVAL                         R10 0
      426 GETTABLEKS                       R10 R10 K88 ["Change"]
      428 GETTABLEKS                       R10 R10 K89 ["AbsoluteSize"]
      430 NEWCLOSURE                       R11 P5
      431 CAPTURE                          VAL R0
      432 SETTABLE                         R11 R9 R10
      433 CALL                             R7 2 1
      434 MOVE                             R8 R3
      435 CALL                             R5 3 -1
      436 RETURN                           R5 -1

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
       40 GETTABLEKS                       R6 R0 K10 ["Util"]
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R6 K14 ["deepCopy"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K4 ["Parent"]
       51 GETTABLEKS                       R9 R9 K15 ["Dash"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K16 ["join"]
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K2 ["UI"]
       60 GETTABLEKS                       R11 R11 K17 ["Components"]
       62 GETTABLEKS                       R11 R11 K18 ["ExpandablePane"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R12 R0 K2 ["UI"]
       69 GETTABLEKS                       R12 R12 K17 ["Components"]
       71 GETTABLEKS                       R12 R12 K19 ["Pane"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K2 ["UI"]
       78 GETTABLEKS                       R13 R13 K17 ["Components"]
       80 GETTABLEKS                       R13 R13 K20 ["ScrollingFrame"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K6 [require]
       85 GETTABLEKS                       R14 R0 K2 ["UI"]
       87 GETTABLEKS                       R14 R14 K17 ["Components"]
       89 GETTABLEKS                       R14 R14 K21 ["Separator"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETIMPORT                        R15 K1 [script]
       96 GETTABLEKS                       R15 R15 K22 ["FormItem"]
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R15 R1 K23 ["PureComponent"]
      101 LOADK                            R17 K24 ["Form"]
      102 NAMECALL                         R15 R15 K25 ["extend"]
      104 CALL                             R15 2 1
      105 DUPTABLE                         R16 K28 [{["UseScrollingFrame"] = True}]
      106 SETTABLEKS                       R16 R15 K29 ["defaultProps"]
      108 DUPCLOSURE                       R16 K30 [PROTO_0]
      109 SETTABLEKS                       R16 R15 K31 ["init"]
      111 DUPCLOSURE                       R16 K32 [PROTO_7]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R12
      122 SETTABLEKS                       R16 R15 K33 ["render"]
      124 MOVE                             R16 R3
      125 DUPTABLE                         R17 K36 [{"Localization", "Stylizer"}]
      126 GETTABLEKS                       R18 R2 K34 ["Localization"]
      128 SETTABLEKS                       R18 R17 K34 ["Localization"]
      130 GETTABLEKS                       R18 R2 K35 ["Stylizer"]
      132 SETTABLEKS                       R18 R17 K35 ["Stylizer"]
      134 CALL                             R16 1 1
      135 MOVE                             R17 R15
      136 CALL                             R16 1 1
      137 MOVE                             R15 R16
      138 RETURN                           R15 1
