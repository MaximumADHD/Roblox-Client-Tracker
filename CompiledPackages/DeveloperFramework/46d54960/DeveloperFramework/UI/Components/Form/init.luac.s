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
      152 LOADNIL                          R13
      153 GETUPVAL                         R14 4
      154 JUMPIFNOT                        R14 ; [+13]
      155 GETTABLEKS                       R14 R8 K16 ["Label"]
      157 JUMPIF                           R14 ; [+9]
      158 GETIMPORT                        R14 K37 [UDim2.new]
      160 LOADN                            R15 1
      161 LOADN                            R16 0
      162 LOADN                            R17 0
      163 LOADN                            R18 0
      164 CALL                             R14 4 1
      165 MOVE                             R13 R14
      166 JUMP                             ; [+1]
      167 LOADNIL                          R13
      168 GETTABLEKS                       R15 R1 K38 ["Expansion"]
      170 GETTABLEKS                       R16 R8 K10 ["Id"]
      172 GETTABLE                         R14 R15 R16
      173 GETTABLEKS                       R15 R1 K39 ["ExpandByDefault"]
      175 JUMPIFNOT                        R15 ; [+8]
      176 MOVE                             R15 R14
      177 JUMPIF                           R15 ; [+4]
      178 JUMPIFEQKNIL                     R14 ; [+2]
      180 LOADB                            R15 0 +1
      181 LOADB                            R15 1
      182 MOVE                             R14 R15
      183 JUMP                             ; [0]
      184 GETTABLEKS                       R15 R8 K10 ["Id"]
      186 GETUPVAL                         R16 0
      187 GETTABLEKS                       R16 R16 K11 ["createElement"]
      189 GETUPVAL                         R17 5
      190 DUPTABLE                         R18 K45 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Size", "VerticalAlignment"}]
      191 GETIMPORT                        R19 K48 [Enum.AutomaticSize.Y]
      193 SETTABLEKS                       R19 R18 K40 ["AutomaticSize"]
      195 GETIMPORT                        R19 K50 [Enum.HorizontalAlignment.Center]
      197 SETTABLEKS                       R19 R18 K41 ["HorizontalAlignment"]
      199 GETIMPORT                        R19 K53 [Enum.FillDirection.Vertical]
      201 SETTABLEKS                       R19 R18 K14 ["Layout"]
      203 SETTABLEKS                       R7 R18 K15 ["LayoutOrder"]
      205 GETTABLEKS                       R19 R2 K54 ["FormItem"]
      207 GETTABLEKS                       R19 R19 K42 ["Spacing"]
      209 SETTABLEKS                       R19 R18 K42 ["Spacing"]
      211 GETIMPORT                        R19 K56 [UDim2.fromScale]
      213 LOADN                            R20 1
      214 LOADN                            R21 0
      215 CALL                             R19 2 1
      216 SETTABLEKS                       R19 R18 K43 ["Size"]
      218 GETIMPORT                        R19 K58 [Enum.VerticalAlignment.Top]
      220 SETTABLEKS                       R19 R18 K44 ["VerticalAlignment"]
      222 DUPTABLE                         R19 K60 [{"ExpandablePane", "Separator"}]
      223 GETUPVAL                         R20 0
      224 GETTABLEKS                       R20 R20 K11 ["createElement"]
      226 GETUPVAL                         R21 6
      227 DUPTABLE                         R22 K68 [{["AlwaysExpanded"], ["ContentPadding"] = 0, ["Expanded"], ["LayoutOrder"] = 1, ["OnExpandedChanged"], ["Size"], ["Style"], ["Text"], ["VerticalAlignment"]}]
      228 NOT                              R23 R10
      229 SETTABLEKS                       R23 R22 K61 ["AlwaysExpanded"]
      231 SETTABLEKS                       R14 R22 K64 ["Expanded"]
      233 NEWCLOSURE                       R23 P3
      234 CAPTURE                          VAL R1
      235 CAPTURE                          UPVAL U7
      236 CAPTURE                          VAL R8
      237 SETTABLEKS                       R23 R22 K66 ["OnExpandedChanged"]
      239 SETTABLEKS                       R13 R22 K43 ["Size"]
      241 GETUPVAL                         R24 8
      242 CALL                             R24 0 1
      243 JUMPIFNOT                        R24 ; [+3]
      244 GETTABLEKS                       R23 R2 K69 ["ExpandablePaneHeader"]
      246 JUMPIF                           R23 ; [+1]
      247 LOADK                            R23 K70 ["Section"]
      248 SETTABLEKS                       R23 R22 K26 ["Style"]
      250 GETTABLEKS                       R23 R8 K16 ["Label"]
      252 SETTABLEKS                       R23 R22 K67 ["Text"]
      254 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Top]
      256 SETTABLEKS                       R23 R22 K44 ["VerticalAlignment"]
      258 MOVE                             R23 R9
      259 CALL                             R20 3 1
      260 SETTABLEKS                       R20 R19 K59 ["ExpandablePane"]
      262 JUMPIFNOT                        R11 ; [+61]
      263 GETUPVAL                         R20 0
      264 GETTABLEKS                       R20 R20 K11 ["createElement"]
      266 GETUPVAL                         R21 5
      267 DUPTABLE                         R22 K71 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      268 GETIMPORT                        R23 K50 [Enum.HorizontalAlignment.Center]
      270 SETTABLEKS                       R23 R22 K41 ["HorizontalAlignment"]
      272 GETIMPORT                        R23 K53 [Enum.FillDirection.Vertical]
      274 SETTABLEKS                       R23 R22 K14 ["Layout"]
      276 NAMECALL                         R23 R12 K72 ["getNextOrder"]
      278 CALL                             R23 1 1
      279 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      281 GETIMPORT                        R23 K37 [UDim2.new]
      283 LOADN                            R24 1
      284 GETTABLEKS                       R27 R2 K54 ["FormItem"]
      286 GETTABLEKS                       R27 R27 K42 ["Spacing"]
      288 MINUS                            R26 R27
      289 MULK                             R25 R26 K73 [2]
      290 LOADN                            R26 0
      291 LOADN                            R27 1
      292 CALL                             R23 4 1
      293 SETTABLEKS                       R23 R22 K43 ["Size"]
      295 GETUPVAL                         R24 9
      296 JUMPIFNOT                        R24 ; [+11]
      297 GETUPVAL                         R23 0
      298 GETTABLEKS                       R23 R23 K11 ["createElement"]
      300 GETUPVAL                         R24 10
      301 DUPTABLE                         R25 K75 [{"DominantAxis"}]
      302 GETIMPORT                        R26 K77 [Enum.DominantAxis.Width]
      304 SETTABLEKS                       R26 R25 K74 ["DominantAxis"]
      306 CALL                             R23 2 1
      307 JUMP                             ; [+14]
      308 NEWTABLE                         R23 0 1
      310 GETUPVAL                         R24 0
      311 GETTABLEKS                       R24 R24 K11 ["createElement"]
      313 GETUPVAL                         R25 10
      314 DUPTABLE                         R26 K75 [{"DominantAxis"}]
      315 GETIMPORT                        R27 K77 [Enum.DominantAxis.Width]
      317 SETTABLEKS                       R27 R26 K74 ["DominantAxis"]
      319 CALL                             R24 2 -1
      320 SETLIST                          R23 R24 -1 [1]
      322 CALL                             R20 3 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R20
      325 SETTABLEKS                       R20 R19 K35 ["Separator"]
      327 CALL                             R16 3 1
      328 SETTABLE                         R16 R3 R15
      329 FORGLOOP                         R4 2 ; [-319]
      331 DUPTABLE                         R4 K81 [{"Anchorpoint", "LayoutOrder", "Padding", "Position", "Size"}]
      332 GETTABLEKS                       R5 R1 K82 ["AnchorPoint"]
      334 SETTABLEKS                       R5 R4 K78 ["Anchorpoint"]
      336 GETTABLEKS                       R5 R1 K15 ["LayoutOrder"]
      338 SETTABLEKS                       R5 R4 K15 ["LayoutOrder"]
      340 DUPTABLE                         R5 K84 [{"Bottom"}]
      341 GETTABLEKS                       R6 R2 K54 ["FormItem"]
      343 GETTABLEKS                       R6 R6 K42 ["Spacing"]
      345 SETTABLEKS                       R6 R5 K83 ["Bottom"]
      347 SETTABLEKS                       R5 R4 K79 ["Padding"]
      349 GETTABLEKS                       R5 R1 K80 ["Position"]
      351 SETTABLEKS                       R5 R4 K80 ["Position"]
      353 GETTABLEKS                       R5 R1 K43 ["Size"]
      355 SETTABLEKS                       R5 R4 K43 ["Size"]
      357 GETTABLEKS                       R5 R1 K85 ["UseScrollingFrame"]
      359 JUMPIFNOT                        R5 ; [+54]
      360 GETUPVAL                         R5 0
      361 GETTABLEKS                       R5 R5 K11 ["createElement"]
      363 GETUPVAL                         R6 11
      364 MOVE                             R7 R4
      365 DUPTABLE                         R8 K87 [{"Pane"}]
      366 GETUPVAL                         R9 0
      367 GETTABLEKS                       R9 R9 K11 ["createElement"]
      369 GETUPVAL                         R10 5
      370 NEWTABLE                         R11 8 0
      372 GETIMPORT                        R12 K48 [Enum.AutomaticSize.Y]
      374 SETTABLEKS                       R12 R11 K40 ["AutomaticSize"]
      376 GETIMPORT                        R12 K53 [Enum.FillDirection.Vertical]
      378 SETTABLEKS                       R12 R11 K14 ["Layout"]
      380 GETIMPORT                        R12 K56 [UDim2.fromScale]
      382 LOADN                            R13 1
      383 LOADN                            R14 0
      384 CALL                             R12 2 1
      385 SETTABLEKS                       R12 R11 K43 ["Size"]
      387 GETUPVAL                         R13 8
      388 CALL                             R13 0 1
      389 JUMPIFNOT                        R13 ; [+3]
      390 GETTABLEKS                       R12 R2 K42 ["Spacing"]
      392 JUMP                             ; [+1]
      393 LOADNIL                          R12
      394 SETTABLEKS                       R12 R11 K42 ["Spacing"]
      396 GETIMPORT                        R12 K58 [Enum.VerticalAlignment.Top]
      398 SETTABLEKS                       R12 R11 K44 ["VerticalAlignment"]
      400 GETUPVAL                         R12 0
      401 GETTABLEKS                       R12 R12 K88 ["Change"]
      403 GETTABLEKS                       R12 R12 K89 ["AbsoluteSize"]
      405 NEWCLOSURE                       R13 P4
      406 CAPTURE                          VAL R0
      407 SETTABLE                         R13 R11 R12
      408 MOVE                             R12 R3
      409 CALL                             R9 3 1
      410 SETTABLEKS                       R9 R8 K86 ["Pane"]
      412 CALL                             R5 3 -1
      413 RETURN                           R5 -1
      414 GETUPVAL                         R5 0
      415 GETTABLEKS                       R5 R5 K11 ["createElement"]
      417 GETUPVAL                         R6 5
      418 GETUPVAL                         R7 7
      419 MOVE                             R8 R4
      420 NEWTABLE                         R9 8 0
      422 GETIMPORT                        R10 K48 [Enum.AutomaticSize.Y]
      424 SETTABLEKS                       R10 R9 K40 ["AutomaticSize"]
      426 GETIMPORT                        R10 K53 [Enum.FillDirection.Vertical]
      428 SETTABLEKS                       R10 R9 K14 ["Layout"]
      430 GETIMPORT                        R10 K58 [Enum.VerticalAlignment.Top]
      432 SETTABLEKS                       R10 R9 K44 ["VerticalAlignment"]
      434 GETUPVAL                         R11 8
      435 CALL                             R11 0 1
      436 JUMPIFNOT                        R11 ; [+3]
      437 GETTABLEKS                       R10 R2 K42 ["Spacing"]
      439 JUMP                             ; [+1]
      440 LOADNIL                          R10
      441 SETTABLEKS                       R10 R9 K42 ["Spacing"]
      443 GETUPVAL                         R10 0
      444 GETTABLEKS                       R10 R10 K88 ["Change"]
      446 GETTABLEKS                       R10 R10 K89 ["AbsoluteSize"]
      448 NEWCLOSURE                       R11 P5
      449 CAPTURE                          VAL R0
      450 SETTABLE                         R11 R9 R10
      451 CALL                             R7 2 1
      452 MOVE                             R8 R3
      453 CALL                             R5 3 -1
      454 RETURN                           R5 -1

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
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagDevFrameworkFormHideHeader"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K12 ["SharedFlags"]
       52 GETTABLEKS                       R8 R8 K15 ["getFFlagDevFrameworkAdjustTextFontSize"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R0 K10 ["Util"]
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R8 K16 ["deepCopy"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K6 [require]
       64 GETTABLEKS                       R11 R0 K4 ["Parent"]
       66 GETTABLEKS                       R11 R11 K17 ["Dash"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R10 K18 ["join"]
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K2 ["UI"]
       75 GETTABLEKS                       R13 R13 K19 ["Components"]
       77 GETTABLEKS                       R13 R13 K20 ["ExpandablePane"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K2 ["UI"]
       84 GETTABLEKS                       R14 R14 K19 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["Pane"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K2 ["UI"]
       93 GETTABLEKS                       R15 R15 K19 ["Components"]
       95 GETTABLEKS                       R15 R15 K22 ["ScrollingFrame"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K2 ["UI"]
      102 GETTABLEKS                       R16 R16 K19 ["Components"]
      104 GETTABLEKS                       R16 R16 K23 ["Separator"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETIMPORT                        R17 K1 [script]
      111 GETTABLEKS                       R17 R17 K24 ["FormItem"]
      113 CALL                             R16 1 1
      114 GETTABLEKS                       R17 R1 K25 ["PureComponent"]
      116 LOADK                            R19 K26 ["Form"]
      117 NAMECALL                         R17 R17 K27 ["extend"]
      119 CALL                             R17 2 1
      120 DUPTABLE                         R18 K30 [{["UseScrollingFrame"] = True}]
      121 SETTABLEKS                       R18 R17 K31 ["defaultProps"]
      123 DUPCLOSURE                       R18 K32 [PROTO_0]
      124 SETTABLEKS                       R18 R17 K33 ["init"]
      126 DUPCLOSURE                       R18 K34 [PROTO_7]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R14
      139 SETTABLEKS                       R18 R17 K35 ["render"]
      141 MOVE                             R18 R3
      142 DUPTABLE                         R19 K38 [{"Localization", "Stylizer"}]
      143 GETTABLEKS                       R20 R2 K36 ["Localization"]
      145 SETTABLEKS                       R20 R19 K36 ["Localization"]
      147 GETTABLEKS                       R20 R2 K37 ["Stylizer"]
      149 SETTABLEKS                       R20 R19 K37 ["Stylizer"]
      151 CALL                             R18 1 1
      152 MOVE                             R19 R17
      153 CALL                             R18 1 1
      154 MOVE                             R17 R18
      155 RETURN                           R17 1
