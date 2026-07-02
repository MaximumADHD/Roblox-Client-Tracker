PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["descriptionRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"descriptionWidth"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K5 ["X"]
       13 SETTABLEKS                       R4 R3 K2 ["descriptionWidth"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K5 ["descriptionRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["onResize"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
        5 GETTABLEKS                       R0 R0 K1 ["SmallError"]
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
       11 GETTABLEKS                       R0 R0 K2 ["Subtext"]
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+58]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["createElement"]
       18 GETUPVAL                         R2 4
       19 DUPTABLE                         R3 K18 [{["Font"], ["TextSize"], ["TextColor"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True}]
       20 GETTABLEKS                       R4 R0 K4 ["Font"]
       22 SETTABLEKS                       R4 R3 K4 ["Font"]
       24 GETTABLEKS                       R4 R0 K5 ["TextSize"]
       26 SETTABLEKS                       R4 R3 K5 ["TextSize"]
       28 GETTABLEKS                       R4 R0 K19 ["TextColor3"]
       30 SETTABLEKS                       R4 R3 K6 ["TextColor"]
       32 GETIMPORT                        R4 K22 [UDim2.new]
       34 LOADN                            R5 0
       35 GETUPVAL                         R6 5
       36 LOADN                            R7 0
       37 LOADN                            R8 0
       38 CALL                             R4 4 1
       39 SETTABLEKS                       R4 R3 K7 ["Size"]
       41 GETIMPORT                        R4 K25 [Enum.AutomaticSize.Y]
       43 SETTABLEKS                       R4 R3 K8 ["AutomaticSize"]
       45 GETUPVAL                         R4 6
       46 NAMECALL                         R4 R4 K26 ["getNextOrder"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K11 ["LayoutOrder"]
       51 GETUPVAL                         R5 7
       52 GETTABLEKS                       R5 R5 K27 ["Disabled"]
       54 JUMPIFNOT                        R5 ; [+2]
       55 LOADK                            R4 K28 [0.5]
       56 JUMP                             ; [+1]
       57 LOADN                            R4 0
       58 SETTABLEKS                       R4 R3 K12 ["TextTransparency"]
       60 GETIMPORT                        R4 K30 [Enum.TextXAlignment.Left]
       62 SETTABLEKS                       R4 R3 K13 ["TextXAlignment"]
       64 GETIMPORT                        R4 K32 [Enum.TextYAlignment.Top]
       66 SETTABLEKS                       R4 R3 K14 ["TextYAlignment"]
       68 GETUPVAL                         R4 8
       69 SETTABLEKS                       R4 R3 K15 ["Text"]
       71 CALL                             R1 2 -1
       72 RETURN                           R1 -1
       73 GETUPVAL                         R1 3
       74 GETTABLEKS                       R1 R1 K3 ["createElement"]
       76 GETUPVAL                         R2 4
       77 GETUPVAL                         R3 9
       78 GETTABLEKS                       R3 R3 K33 ["Dictionary"]
       80 GETTABLEKS                       R3 R3 K34 ["join"]
       82 MOVE                             R4 R0
       83 DUPTABLE                         R5 K36 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True, ["width"]}]
       84 GETIMPORT                        R6 K38 [Enum.AutomaticSize.XY]
       86 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       88 GETUPVAL                         R6 6
       89 NAMECALL                         R6 R6 K26 ["getNextOrder"]
       91 CALL                             R6 1 1
       92 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       94 GETUPVAL                         R7 7
       95 GETTABLEKS                       R7 R7 K27 ["Disabled"]
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADK                            R6 K28 [0.5]
       99 JUMP                             ; [+1]
      100 LOADN                            R6 0
      101 SETTABLEKS                       R6 R5 K12 ["TextTransparency"]
      103 GETIMPORT                        R6 K30 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R6 R5 K13 ["TextXAlignment"]
      107 GETIMPORT                        R6 K32 [Enum.TextYAlignment.Top]
      109 SETTABLEKS                       R6 R5 K14 ["TextYAlignment"]
      111 GETUPVAL                         R6 8
      112 SETTABLEKS                       R6 R5 K15 ["Text"]
      114 GETIMPORT                        R6 K40 [UDim.new]
      116 LOADN                            R7 0
      117 GETUPVAL                         R8 5
      118 CALL                             R6 2 1
      119 SETTABLEKS                       R6 R5 K35 ["width"]
      121 CALL                             R3 2 -1
      122 CALL                             R1 -1 -1
      123 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["descriptionWidth"]
        8 GETTABLEKS                       R4 R1 K4 ["Description"]
       10 GETTABLEKS                       R5 R1 K5 ["Disabled"]
       12 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R1 K7 ["Selected"]
       16 GETTABLEKS                       R8 R1 K8 ["Title"]
       18 GETTABLEKS                       R9 R1 K9 ["OnClick"]
       20 GETTABLEKS                       R10 R1 K10 ["ShowWarning"]
       22 GETTABLEKS                       R11 R1 K11 ["LinkProps"]
       24 GETUPVAL                         R12 0
       25 JUMPIFNOT                        R12 ; [+6]
       26 GETTABLEKS                       R13 R1 K12 ["WarningTooltipText"]
       28 JUMPIFNOTEQKNIL                  R13 ; [+2]
       30 LOADB                            R12 0 +1
       31 LOADB                            R12 1
       32 GETTABLEKS                       R13 R1 K12 ["WarningTooltipText"]
       34 GETUPVAL                         R14 1
       35 GETTABLEKS                       R14 R14 K13 ["new"]
       37 CALL                             R14 0 1
       38 LOADNIL                          R15
       39 JUMPIFNOT                        R12 ; [+91]
       40 GETUPVAL                         R16 2
       41 GETTABLEKS                       R16 R16 K14 ["createElement"]
       43 GETUPVAL                         R17 3
       44 DUPTABLE                         R18 K20 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Spacing"}]
       45 GETIMPORT                        R19 K23 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
       49 GETIMPORT                        R19 K25 [Enum.HorizontalAlignment.Left]
       51 SETTABLEKS                       R19 R18 K16 ["HorizontalAlignment"]
       53 GETIMPORT                        R19 K27 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R19 R18 K17 ["VerticalAlignment"]
       57 GETIMPORT                        R19 K30 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R19 R18 K18 ["Layout"]
       61 NAMECALL                         R19 R14 K31 ["getNextOrder"]
       63 CALL                             R19 1 1
       64 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
       66 GETIMPORT                        R19 K33 [UDim.new]
       68 LOADN                            R20 0
       69 LOADN                            R21 8
       70 CALL                             R19 2 1
       71 SETTABLEKS                       R19 R18 K19 ["Spacing"]
       73 DUPTABLE                         R19 K36 [{"Toggle", "Warning"}]
       74 GETUPVAL                         R20 2
       75 GETTABLEKS                       R20 R20 K14 ["createElement"]
       77 GETUPVAL                         R21 4
       78 DUPTABLE                         R22 K38 [{"Disabled", "Selected", "OnClick", "Size"}]
       79 SETTABLEKS                       R5 R22 K5 ["Disabled"]
       81 SETTABLEKS                       R7 R22 K7 ["Selected"]
       83 SETTABLEKS                       R9 R22 K9 ["OnClick"]
       85 GETTABLEKS                       R23 R2 K39 ["settingsPage"]
       87 GETTABLEKS                       R23 R23 K40 ["toggleButtonSize"]
       89 SETTABLEKS                       R23 R22 K37 ["Size"]
       91 CALL                             R20 2 1
       92 SETTABLEKS                       R20 R19 K34 ["Toggle"]
       94 GETUPVAL                         R20 2
       95 GETTABLEKS                       R20 R20 K14 ["createElement"]
       97 GETUPVAL                         R21 5
       98 DUPTABLE                         R22 K43 [{["Size"], ["Style"] = "WarningStyle"}]
       99 GETIMPORT                        R23 K46 [UDim2.fromOffset]
      101 LOADN                            R24 16
      102 LOADN                            R25 16
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K37 ["Size"]
      106 DUPTABLE                         R23 K49 [{"Tooltip", "HoverArea"}]
      107 GETUPVAL                         R24 2
      108 GETTABLEKS                       R24 R24 K14 ["createElement"]
      110 GETUPVAL                         R25 6
      111 DUPTABLE                         R26 K51 [{"Text"}]
      112 SETTABLEKS                       R13 R26 K50 ["Text"]
      114 CALL                             R24 2 1
      115 SETTABLEKS                       R24 R23 K47 ["Tooltip"]
      117 GETUPVAL                         R24 2
      118 GETTABLEKS                       R24 R24 K14 ["createElement"]
      120 GETUPVAL                         R25 7
      121 DUPTABLE                         R26 K54 [{["Cursor"] = "PointingHand"}]
      122 CALL                             R24 2 1
      123 SETTABLEKS                       R24 R23 K48 ["HoverArea"]
      125 CALL                             R20 3 1
      126 SETTABLEKS                       R20 R19 K35 ["Warning"]
      128 CALL                             R16 3 1
      129 MOVE                             R15 R16
      130 JUMP                             ; [+24]
      131 GETUPVAL                         R16 2
      132 GETTABLEKS                       R16 R16 K14 ["createElement"]
      134 GETUPVAL                         R17 4
      135 DUPTABLE                         R18 K55 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
      136 SETTABLEKS                       R5 R18 K5 ["Disabled"]
      138 SETTABLEKS                       R7 R18 K7 ["Selected"]
      140 NAMECALL                         R19 R14 K31 ["getNextOrder"]
      142 CALL                             R19 1 1
      143 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      145 SETTABLEKS                       R9 R18 K9 ["OnClick"]
      147 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      149 GETTABLEKS                       R19 R19 K40 ["toggleButtonSize"]
      151 SETTABLEKS                       R19 R18 K37 ["Size"]
      153 CALL                             R16 2 1
      154 MOVE                             R15 R16
      155 GETUPVAL                         R16 2
      156 GETTABLEKS                       R16 R16 K14 ["createElement"]
      158 GETUPVAL                         R17 8
      159 DUPTABLE                         R18 K57 [{"Title", "TitleWidth", "LayoutOrder"}]
      160 SETTABLEKS                       R8 R18 K8 ["Title"]
      162 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      164 GETTABLEKS                       R19 R19 K58 ["toggleButtonTitleWidth"]
      166 SETTABLEKS                       R19 R18 K56 ["TitleWidth"]
      168 SETTABLEKS                       R6 R18 K6 ["LayoutOrder"]
      170 DUPTABLE                         R19 K62 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
      171 SETTABLEKS                       R15 R19 K59 ["ToggleButton"]
      173 GETTABLEKS                       R20 R1 K4 ["Description"]
      175 JUMPIFNOT                        R20 ; [+12]
      176 NEWCLOSURE                       R20 P0
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U0
      180 CAPTURE                          UPVAL U2
      181 CAPTURE                          UPVAL U9
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R4
      186 CAPTURE                          UPVAL U10
      187 CALL                             R20 0 1
      188 SETTABLEKS                       R20 R19 K4 ["Description"]
      190 GETTABLEKS                       R21 R1 K63 ["LinkMap"]
      192 JUMPIFNOT                        R21 ; [+67]
      193 GETTABLEKS                       R21 R1 K60 ["LinkText"]
      195 JUMPIFNOT                        R21 ; [+64]
      196 GETUPVAL                         R20 2
      197 GETTABLEKS                       R20 R20 K14 ["createElement"]
      199 GETUPVAL                         R21 11
      200 GETUPVAL                         R22 10
      201 GETTABLEKS                       R22 R22 K64 ["Dictionary"]
      203 GETTABLEKS                       R22 R22 K65 ["join"]
      205 DUPTABLE                         R23 K67 [{"Size", "LayoutOrder", "Text", "LinkMap", "TextProps", "HorizontalAlignment"}]
      206 GETIMPORT                        R24 K68 [UDim2.new]
      208 LOADN                            R25 0
      209 MOVE                             R26 R3
      210 LOADN                            R27 0
      211 LOADN                            R28 0
      212 CALL                             R24 4 1
      213 SETTABLEKS                       R24 R23 K37 ["Size"]
      215 NAMECALL                         R24 R14 K31 ["getNextOrder"]
      217 CALL                             R24 1 1
      218 SETTABLEKS                       R24 R23 K6 ["LayoutOrder"]
      220 GETTABLEKS                       R24 R1 K60 ["LinkText"]
      222 SETTABLEKS                       R24 R23 K50 ["Text"]
      224 GETTABLEKS                       R24 R1 K63 ["LinkMap"]
      226 SETTABLEKS                       R24 R23 K63 ["LinkMap"]
      228 GETUPVAL                         R24 10
      229 GETTABLEKS                       R24 R24 K64 ["Dictionary"]
      231 GETTABLEKS                       R24 R24 K65 ["join"]
      233 GETTABLEKS                       R25 R2 K69 ["fontStyle"]
      235 GETTABLEKS                       R25 R25 K70 ["Subtext"]
      237 DUPTABLE                         R26 K75 [{["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTransparency"]}]
      238 GETIMPORT                        R27 K76 [Enum.TextXAlignment.Left]
      240 SETTABLEKS                       R27 R26 K73 ["TextXAlignment"]
      242 GETTABLEKS                       R28 R1 K5 ["Disabled"]
      244 JUMPIFNOT                        R28 ; [+2]
      245 LOADK                            R27 K77 [0.5]
      246 JUMP                             ; [+1]
      247 LOADN                            R27 0
      248 SETTABLEKS                       R27 R26 K74 ["TextTransparency"]
      250 CALL                             R24 2 1
      251 SETTABLEKS                       R24 R23 K66 ["TextProps"]
      253 GETIMPORT                        R24 K25 [Enum.HorizontalAlignment.Left]
      255 SETTABLEKS                       R24 R23 K16 ["HorizontalAlignment"]
      257 CALL                             R22 1 -1
      258 CALL                             R20 -1 1
      259 JUMP                             ; [+44]
      260 GETTABLEKS                       R20 R1 K11 ["LinkProps"]
      262 JUMPIFNOT                        R20 ; [+41]
      263 GETUPVAL                         R20 2
      264 GETTABLEKS                       R20 R20 K14 ["createElement"]
      266 GETUPVAL                         R21 12
      267 GETUPVAL                         R22 10
      268 GETTABLEKS                       R22 R22 K64 ["Dictionary"]
      270 GETTABLEKS                       R22 R22 K65 ["join"]
      272 MOVE                             R23 R11
      273 DUPTABLE                         R24 K81 [{["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["LayoutOrder"], ["TextProps"], ["HorizontalAlignment"]}]
      274 SETTABLEKS                       R3 R24 K80 ["MaxWidth"]
      276 NAMECALL                         R25 R14 K31 ["getNextOrder"]
      278 CALL                             R25 1 1
      279 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      281 GETUPVAL                         R25 10
      282 GETTABLEKS                       R25 R25 K64 ["Dictionary"]
      284 GETTABLEKS                       R25 R25 K65 ["join"]
      286 GETTABLEKS                       R26 R2 K69 ["fontStyle"]
      288 GETTABLEKS                       R26 R26 K70 ["Subtext"]
      290 DUPTABLE                         R27 K82 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      291 GETIMPORT                        R28 K76 [Enum.TextXAlignment.Left]
      293 SETTABLEKS                       R28 R27 K73 ["TextXAlignment"]
      295 CALL                             R25 2 1
      296 SETTABLEKS                       R25 R24 K66 ["TextProps"]
      298 GETIMPORT                        R25 K25 [Enum.HorizontalAlignment.Left]
      300 SETTABLEKS                       R25 R24 K16 ["HorizontalAlignment"]
      302 CALL                             R22 2 -1
      303 CALL                             R20 -1 1
      304 SETTABLEKS                       R20 R19 K60 ["LinkText"]
      306 GETUPVAL                         R20 2
      307 GETTABLEKS                       R20 R20 K14 ["createElement"]
      309 LOADK                            R21 K83 ["Frame"]
      310 NEWTABLE                         R22 8 0
      312 LOADN                            R23 1
      313 SETTABLEKS                       R23 R22 K71 ["BackgroundTransparency"]
      315 NAMECALL                         R23 R14 K31 ["getNextOrder"]
      317 CALL                             R23 1 1
      318 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      320 GETIMPORT                        R23 K68 [UDim2.new]
      322 LOADN                            R24 1
      323 LOADN                            R25 0
      324 LOADN                            R26 0
      325 LOADN                            R27 0
      326 CALL                             R23 4 1
      327 SETTABLEKS                       R23 R22 K37 ["Size"]
      329 GETUPVAL                         R23 2
      330 GETTABLEKS                       R23 R23 K84 ["Ref"]
      332 GETTABLEKS                       R24 R0 K85 ["descriptionRef"]
      334 SETTABLE                         R24 R22 R23
      335 GETUPVAL                         R23 2
      336 GETTABLEKS                       R23 R23 K86 ["Change"]
      338 GETTABLEKS                       R23 R23 K87 ["AbsoluteSize"]
      340 GETTABLEKS                       R24 R0 K88 ["onResize"]
      342 SETTABLE                         R24 R22 R23
      343 CALL                             R20 2 1
      344 SETTABLEKS                       R20 R19 K61 ["DescriptionWidth"]
      346 CALL                             R16 3 -1
      347 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["Util"]
       36 GETTABLEKS                       R7 R3 K12 ["UI"]
       38 GETTABLEKS                       R8 R7 K13 ["HoverArea"]
       40 GETTABLEKS                       R9 R7 K14 ["Image"]
       42 GETTABLEKS                       R10 R7 K15 ["Pane"]
       44 GETTABLEKS                       R11 R7 K16 ["TitledFrame"]
       46 GETTABLEKS                       R12 R7 K17 ["ToggleButton"]
       48 GETTABLEKS                       R13 R7 K18 ["Tooltip"]
       50 GETTABLEKS                       R14 R7 K19 ["TextWithInlineLink"]
       52 GETTABLEKS                       R15 R7 K20 ["TextWithLinks"]
       54 GETTABLEKS                       R16 R7 K21 ["TextLabel"]
       56 GETTABLEKS                       R17 R6 K22 ["LayoutOrderIterator"]
       58 GETTABLEKS                       R18 R1 K23 ["PureComponent"]
       60 LOADK                            R20 K24 ["ToggleButtonWithTitle"]
       61 NAMECALL                         R18 R18 K25 ["extend"]
       63 CALL                             R18 2 1
       64 GETIMPORT                        R19 K4 [require]
       66 GETTABLEKS                       R20 R0 K26 ["Src"]
       68 GETTABLEKS                       R20 R20 K27 ["Flags"]
       70 GETTABLEKS                       R20 R20 K28 ["getFFlagPruneGameSettings"]
       72 CALL                             R19 1 1
       73 CALL                             R19 0 1
       74 DUPCLOSURE                       R20 K29 [PROTO_1]
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R20 R18 K30 ["init"]
       78 DUPCLOSURE                       R20 K31 [PROTO_3]
       79 CAPTURE                          VAL R19
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 SETTABLEKS                       R20 R18 K32 ["render"]
       94 MOVE                             R20 R5
       95 DUPTABLE                         R21 K34 [{"Stylizer"}]
       96 GETTABLEKS                       R22 R4 K33 ["Stylizer"]
       98 SETTABLEKS                       R22 R21 K33 ["Stylizer"]
      100 CALL                             R20 1 1
      101 MOVE                             R21 R18
      102 CALL                             R20 1 1
      103 MOVE                             R18 R20
      104 RETURN                           R18 1
