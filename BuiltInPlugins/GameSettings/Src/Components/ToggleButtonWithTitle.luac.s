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
       14 GETTABLEKS                       R1 R1 K3 ["createElement"]
       16 GETUPVAL                         R2 3
       17 DUPTABLE                         R3 K18 [{["Font"], ["TextSize"], ["TextColor"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True}]
       18 GETTABLEKS                       R4 R0 K4 ["Font"]
       20 SETTABLEKS                       R4 R3 K4 ["Font"]
       22 GETTABLEKS                       R4 R0 K5 ["TextSize"]
       24 SETTABLEKS                       R4 R3 K5 ["TextSize"]
       26 GETTABLEKS                       R4 R0 K19 ["TextColor3"]
       28 SETTABLEKS                       R4 R3 K6 ["TextColor"]
       30 GETIMPORT                        R4 K22 [UDim2.new]
       32 LOADN                            R5 0
       33 GETUPVAL                         R6 4
       34 LOADN                            R7 0
       35 LOADN                            R8 0
       36 CALL                             R4 4 1
       37 SETTABLEKS                       R4 R3 K7 ["Size"]
       39 GETIMPORT                        R4 K25 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R4 R3 K8 ["AutomaticSize"]
       43 GETUPVAL                         R4 5
       44 NAMECALL                         R4 R4 K26 ["getNextOrder"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K11 ["LayoutOrder"]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R5 R5 K27 ["Disabled"]
       52 JUMPIFNOT                        R5 ; [+2]
       53 LOADK                            R4 K28 [0.5]
       54 JUMP                             ; [+1]
       55 LOADN                            R4 0
       56 SETTABLEKS                       R4 R3 K12 ["TextTransparency"]
       58 GETIMPORT                        R4 K30 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R4 R3 K13 ["TextXAlignment"]
       62 GETIMPORT                        R4 K32 [Enum.TextYAlignment.Top]
       64 SETTABLEKS                       R4 R3 K14 ["TextYAlignment"]
       66 GETUPVAL                         R4 7
       67 SETTABLEKS                       R4 R3 K15 ["Text"]
       69 CALL                             R1 2 -1
       70 RETURN                           R1 -1

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
       24 GETTABLEKS                       R13 R1 K12 ["WarningTooltipText"]
       26 JUMPIFNOTEQKNIL                  R13 ; [+2]
       28 LOADB                            R12 0 +1
       29 LOADB                            R12 1
       30 GETTABLEKS                       R13 R1 K12 ["WarningTooltipText"]
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R14 R14 K13 ["new"]
       35 CALL                             R14 0 1
       36 LOADNIL                          R15
       37 JUMPIFNOT                        R12 ; [+91]
       38 GETUPVAL                         R16 1
       39 GETTABLEKS                       R16 R16 K14 ["createElement"]
       41 GETUPVAL                         R17 2
       42 DUPTABLE                         R18 K20 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Spacing"}]
       43 GETIMPORT                        R19 K23 [Enum.AutomaticSize.XY]
       45 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
       47 GETIMPORT                        R19 K25 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R19 R18 K16 ["HorizontalAlignment"]
       51 GETIMPORT                        R19 K27 [Enum.VerticalAlignment.Center]
       53 SETTABLEKS                       R19 R18 K17 ["VerticalAlignment"]
       55 GETIMPORT                        R19 K30 [Enum.FillDirection.Horizontal]
       57 SETTABLEKS                       R19 R18 K18 ["Layout"]
       59 NAMECALL                         R19 R14 K31 ["getNextOrder"]
       61 CALL                             R19 1 1
       62 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
       64 GETIMPORT                        R19 K33 [UDim.new]
       66 LOADN                            R20 0
       67 LOADN                            R21 8
       68 CALL                             R19 2 1
       69 SETTABLEKS                       R19 R18 K19 ["Spacing"]
       71 DUPTABLE                         R19 K36 [{"Toggle", "Warning"}]
       72 GETUPVAL                         R20 1
       73 GETTABLEKS                       R20 R20 K14 ["createElement"]
       75 GETUPVAL                         R21 3
       76 DUPTABLE                         R22 K38 [{"Disabled", "Selected", "OnClick", "Size"}]
       77 SETTABLEKS                       R5 R22 K5 ["Disabled"]
       79 SETTABLEKS                       R7 R22 K7 ["Selected"]
       81 SETTABLEKS                       R9 R22 K9 ["OnClick"]
       83 GETTABLEKS                       R23 R2 K39 ["settingsPage"]
       85 GETTABLEKS                       R23 R23 K40 ["toggleButtonSize"]
       87 SETTABLEKS                       R23 R22 K37 ["Size"]
       89 CALL                             R20 2 1
       90 SETTABLEKS                       R20 R19 K34 ["Toggle"]
       92 GETUPVAL                         R20 1
       93 GETTABLEKS                       R20 R20 K14 ["createElement"]
       95 GETUPVAL                         R21 4
       96 DUPTABLE                         R22 K43 [{["Size"], ["Style"] = "WarningStyle"}]
       97 GETIMPORT                        R23 K46 [UDim2.fromOffset]
       99 LOADN                            R24 16
      100 LOADN                            R25 16
      101 CALL                             R23 2 1
      102 SETTABLEKS                       R23 R22 K37 ["Size"]
      104 DUPTABLE                         R23 K49 [{"Tooltip", "HoverArea"}]
      105 GETUPVAL                         R24 1
      106 GETTABLEKS                       R24 R24 K14 ["createElement"]
      108 GETUPVAL                         R25 5
      109 DUPTABLE                         R26 K51 [{"Text"}]
      110 SETTABLEKS                       R13 R26 K50 ["Text"]
      112 CALL                             R24 2 1
      113 SETTABLEKS                       R24 R23 K47 ["Tooltip"]
      115 GETUPVAL                         R24 1
      116 GETTABLEKS                       R24 R24 K14 ["createElement"]
      118 GETUPVAL                         R25 6
      119 DUPTABLE                         R26 K54 [{["Cursor"] = "PointingHand"}]
      120 CALL                             R24 2 1
      121 SETTABLEKS                       R24 R23 K48 ["HoverArea"]
      123 CALL                             R20 3 1
      124 SETTABLEKS                       R20 R19 K35 ["Warning"]
      126 CALL                             R16 3 1
      127 MOVE                             R15 R16
      128 JUMP                             ; [+24]
      129 GETUPVAL                         R16 1
      130 GETTABLEKS                       R16 R16 K14 ["createElement"]
      132 GETUPVAL                         R17 3
      133 DUPTABLE                         R18 K55 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
      134 SETTABLEKS                       R5 R18 K5 ["Disabled"]
      136 SETTABLEKS                       R7 R18 K7 ["Selected"]
      138 NAMECALL                         R19 R14 K31 ["getNextOrder"]
      140 CALL                             R19 1 1
      141 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      143 SETTABLEKS                       R9 R18 K9 ["OnClick"]
      145 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      147 GETTABLEKS                       R19 R19 K40 ["toggleButtonSize"]
      149 SETTABLEKS                       R19 R18 K37 ["Size"]
      151 CALL                             R16 2 1
      152 MOVE                             R15 R16
      153 GETUPVAL                         R16 1
      154 GETTABLEKS                       R16 R16 K14 ["createElement"]
      156 GETUPVAL                         R17 7
      157 DUPTABLE                         R18 K57 [{"Title", "TitleWidth", "LayoutOrder"}]
      158 SETTABLEKS                       R8 R18 K8 ["Title"]
      160 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      162 GETTABLEKS                       R19 R19 K58 ["toggleButtonTitleWidth"]
      164 SETTABLEKS                       R19 R18 K56 ["TitleWidth"]
      166 SETTABLEKS                       R6 R18 K6 ["LayoutOrder"]
      168 DUPTABLE                         R19 K62 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
      169 SETTABLEKS                       R15 R19 K59 ["ToggleButton"]
      171 GETTABLEKS                       R20 R1 K4 ["Description"]
      173 JUMPIFNOT                        R20 ; [+65]
      174 JUMPIFNOT                        R10 ; [+5]
      175 GETTABLEKS                       R21 R2 K63 ["fontStyle"]
      177 GETTABLEKS                       R21 R21 K64 ["SmallError"]
      179 JUMP                             ; [+4]
      180 GETTABLEKS                       R21 R2 K63 ["fontStyle"]
      182 GETTABLEKS                       R21 R21 K65 ["Subtext"]
      184 GETUPVAL                         R22 1
      185 GETTABLEKS                       R22 R22 K14 ["createElement"]
      187 GETUPVAL                         R23 8
      188 DUPTABLE                         R24 K76 [{["Font"], ["TextSize"], ["TextColor"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True}]
      189 GETTABLEKS                       R25 R21 K66 ["Font"]
      191 SETTABLEKS                       R25 R24 K66 ["Font"]
      193 GETTABLEKS                       R25 R21 K67 ["TextSize"]
      195 SETTABLEKS                       R25 R24 K67 ["TextSize"]
      197 GETTABLEKS                       R25 R21 K77 ["TextColor3"]
      199 SETTABLEKS                       R25 R24 K68 ["TextColor"]
      201 GETIMPORT                        R25 K78 [UDim2.new]
      203 LOADN                            R26 0
      204 MOVE                             R27 R3
      205 LOADN                            R28 0
      206 LOADN                            R29 0
      207 CALL                             R25 4 1
      208 SETTABLEKS                       R25 R24 K37 ["Size"]
      210 GETIMPORT                        R25 K80 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      214 NAMECALL                         R25 R14 K31 ["getNextOrder"]
      216 CALL                             R25 1 1
      217 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      219 GETTABLEKS                       R26 R1 K5 ["Disabled"]
      221 JUMPIFNOT                        R26 ; [+2]
      222 LOADK                            R25 K81 [0.5]
      223 JUMP                             ; [+1]
      224 LOADN                            R25 0
      225 SETTABLEKS                       R25 R24 K71 ["TextTransparency"]
      227 GETIMPORT                        R25 K82 [Enum.TextXAlignment.Left]
      229 SETTABLEKS                       R25 R24 K72 ["TextXAlignment"]
      231 GETIMPORT                        R25 K84 [Enum.TextYAlignment.Top]
      233 SETTABLEKS                       R25 R24 K73 ["TextYAlignment"]
      235 SETTABLEKS                       R4 R24 K50 ["Text"]
      237 CALL                             R22 2 1
      238 MOVE                             R20 R22
      239 SETTABLEKS                       R20 R19 K4 ["Description"]
      241 GETTABLEKS                       R21 R1 K85 ["LinkMap"]
      243 JUMPIFNOT                        R21 ; [+67]
      244 GETTABLEKS                       R21 R1 K60 ["LinkText"]
      246 JUMPIFNOT                        R21 ; [+64]
      247 GETUPVAL                         R20 1
      248 GETTABLEKS                       R20 R20 K14 ["createElement"]
      250 GETUPVAL                         R21 9
      251 GETUPVAL                         R22 10
      252 GETTABLEKS                       R22 R22 K86 ["Dictionary"]
      254 GETTABLEKS                       R22 R22 K87 ["join"]
      256 DUPTABLE                         R23 K89 [{"Size", "LayoutOrder", "Text", "LinkMap", "TextProps", "HorizontalAlignment"}]
      257 GETIMPORT                        R24 K78 [UDim2.new]
      259 LOADN                            R25 0
      260 MOVE                             R26 R3
      261 LOADN                            R27 0
      262 LOADN                            R28 0
      263 CALL                             R24 4 1
      264 SETTABLEKS                       R24 R23 K37 ["Size"]
      266 NAMECALL                         R24 R14 K31 ["getNextOrder"]
      268 CALL                             R24 1 1
      269 SETTABLEKS                       R24 R23 K6 ["LayoutOrder"]
      271 GETTABLEKS                       R24 R1 K60 ["LinkText"]
      273 SETTABLEKS                       R24 R23 K50 ["Text"]
      275 GETTABLEKS                       R24 R1 K85 ["LinkMap"]
      277 SETTABLEKS                       R24 R23 K85 ["LinkMap"]
      279 GETUPVAL                         R24 10
      280 GETTABLEKS                       R24 R24 K86 ["Dictionary"]
      282 GETTABLEKS                       R24 R24 K87 ["join"]
      284 GETTABLEKS                       R25 R2 K63 ["fontStyle"]
      286 GETTABLEKS                       R25 R25 K65 ["Subtext"]
      288 DUPTABLE                         R26 K90 [{["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTransparency"]}]
      289 GETIMPORT                        R27 K82 [Enum.TextXAlignment.Left]
      291 SETTABLEKS                       R27 R26 K72 ["TextXAlignment"]
      293 GETTABLEKS                       R28 R1 K5 ["Disabled"]
      295 JUMPIFNOT                        R28 ; [+2]
      296 LOADK                            R27 K81 [0.5]
      297 JUMP                             ; [+1]
      298 LOADN                            R27 0
      299 SETTABLEKS                       R27 R26 K71 ["TextTransparency"]
      301 CALL                             R24 2 1
      302 SETTABLEKS                       R24 R23 K88 ["TextProps"]
      304 GETIMPORT                        R24 K25 [Enum.HorizontalAlignment.Left]
      306 SETTABLEKS                       R24 R23 K16 ["HorizontalAlignment"]
      308 CALL                             R22 1 -1
      309 CALL                             R20 -1 1
      310 JUMP                             ; [+44]
      311 GETTABLEKS                       R20 R1 K11 ["LinkProps"]
      313 JUMPIFNOT                        R20 ; [+41]
      314 GETUPVAL                         R20 1
      315 GETTABLEKS                       R20 R20 K14 ["createElement"]
      317 GETUPVAL                         R21 11
      318 GETUPVAL                         R22 10
      319 GETTABLEKS                       R22 R22 K86 ["Dictionary"]
      321 GETTABLEKS                       R22 R22 K87 ["join"]
      323 MOVE                             R23 R11
      324 DUPTABLE                         R24 K94 [{["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["LayoutOrder"], ["TextProps"], ["HorizontalAlignment"]}]
      325 SETTABLEKS                       R3 R24 K93 ["MaxWidth"]
      327 NAMECALL                         R25 R14 K31 ["getNextOrder"]
      329 CALL                             R25 1 1
      330 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      332 GETUPVAL                         R25 10
      333 GETTABLEKS                       R25 R25 K86 ["Dictionary"]
      335 GETTABLEKS                       R25 R25 K87 ["join"]
      337 GETTABLEKS                       R26 R2 K63 ["fontStyle"]
      339 GETTABLEKS                       R26 R26 K65 ["Subtext"]
      341 DUPTABLE                         R27 K95 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      342 GETIMPORT                        R28 K82 [Enum.TextXAlignment.Left]
      344 SETTABLEKS                       R28 R27 K72 ["TextXAlignment"]
      346 CALL                             R25 2 1
      347 SETTABLEKS                       R25 R24 K88 ["TextProps"]
      349 GETIMPORT                        R25 K25 [Enum.HorizontalAlignment.Left]
      351 SETTABLEKS                       R25 R24 K16 ["HorizontalAlignment"]
      353 CALL                             R22 2 -1
      354 CALL                             R20 -1 1
      355 SETTABLEKS                       R20 R19 K60 ["LinkText"]
      357 GETUPVAL                         R20 1
      358 GETTABLEKS                       R20 R20 K14 ["createElement"]
      360 LOADK                            R21 K96 ["Frame"]
      361 NEWTABLE                         R22 8 0
      363 LOADN                            R23 1
      364 SETTABLEKS                       R23 R22 K69 ["BackgroundTransparency"]
      366 NAMECALL                         R23 R14 K31 ["getNextOrder"]
      368 CALL                             R23 1 1
      369 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      371 GETIMPORT                        R23 K78 [UDim2.new]
      373 LOADN                            R24 1
      374 LOADN                            R25 0
      375 LOADN                            R26 0
      376 LOADN                            R27 0
      377 CALL                             R23 4 1
      378 SETTABLEKS                       R23 R22 K37 ["Size"]
      380 GETUPVAL                         R23 1
      381 GETTABLEKS                       R23 R23 K97 ["Ref"]
      383 GETTABLEKS                       R24 R0 K98 ["descriptionRef"]
      385 SETTABLE                         R24 R22 R23
      386 GETUPVAL                         R23 1
      387 GETTABLEKS                       R23 R23 K99 ["Change"]
      389 GETTABLEKS                       R23 R23 K100 ["AbsoluteSize"]
      391 GETTABLEKS                       R24 R0 K101 ["onResize"]
      393 SETTABLE                         R24 R22 R23
      394 CALL                             R20 2 1
      395 SETTABLEKS                       R20 R19 K61 ["DescriptionWidth"]
      397 CALL                             R16 3 -1
      398 RETURN                           R16 -1

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
       64 DUPCLOSURE                       R19 K26 [PROTO_1]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R19 R18 K27 ["init"]
       68 DUPCLOSURE                       R19 K28 [PROTO_3]
       69 CAPTURE                          VAL R17
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R14
       81 SETTABLEKS                       R19 R18 K29 ["render"]
       83 MOVE                             R19 R5
       84 DUPTABLE                         R20 K31 [{"Stylizer"}]
       85 GETTABLEKS                       R21 R4 K30 ["Stylizer"]
       87 SETTABLEKS                       R21 R20 K30 ["Stylizer"]
       89 CALL                             R19 1 1
       90 MOVE                             R20 R18
       91 CALL                             R19 1 1
       92 MOVE                             R18 R19
       93 RETURN                           R18 1
