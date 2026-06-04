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
        0 DUPTABLE                         R1 K1 [{"descriptionWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["descriptionWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["descriptionRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onResize"]
       16 RETURN                           R0 0

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
       14 JUMPIFNOT                        R1 ; [+64]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["createElement"]
       18 GETUPVAL                         R2 4
       19 DUPTABLE                         R3 K16 [{"Font", "TextSize", "TextColor", "Size", "AutomaticSize", "BackgroundTransparency", "LayoutOrder", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped"}]
       20 GETTABLEKS                       R4 R0 K4 ["Font"]
       22 SETTABLEKS                       R4 R3 K4 ["Font"]
       24 GETTABLEKS                       R4 R0 K5 ["TextSize"]
       26 SETTABLEKS                       R4 R3 K5 ["TextSize"]
       28 GETTABLEKS                       R4 R0 K17 ["TextColor3"]
       30 SETTABLEKS                       R4 R3 K6 ["TextColor"]
       32 GETIMPORT                        R4 K20 [UDim2.new]
       34 LOADN                            R5 0
       35 GETUPVAL                         R6 5
       36 LOADN                            R7 0
       37 LOADN                            R8 0
       38 CALL                             R4 4 1
       39 SETTABLEKS                       R4 R3 K7 ["Size"]
       41 GETIMPORT                        R4 K23 [Enum.AutomaticSize.Y]
       43 SETTABLEKS                       R4 R3 K8 ["AutomaticSize"]
       45 LOADN                            R4 1
       46 SETTABLEKS                       R4 R3 K9 ["BackgroundTransparency"]
       48 GETUPVAL                         R4 6
       49 NAMECALL                         R4 R4 K24 ["getNextOrder"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K10 ["LayoutOrder"]
       54 GETUPVAL                         R5 7
       55 GETTABLEKS                       R5 R5 K25 ["Disabled"]
       57 JUMPIFNOT                        R5 ; [+2]
       58 LOADK                            R4 K26 [0.5]
       59 JUMP                             ; [+1]
       60 LOADN                            R4 0
       61 SETTABLEKS                       R4 R3 K11 ["TextTransparency"]
       63 GETIMPORT                        R4 K28 [Enum.TextXAlignment.Left]
       65 SETTABLEKS                       R4 R3 K12 ["TextXAlignment"]
       67 GETIMPORT                        R4 K30 [Enum.TextYAlignment.Top]
       69 SETTABLEKS                       R4 R3 K13 ["TextYAlignment"]
       71 GETUPVAL                         R4 8
       72 SETTABLEKS                       R4 R3 K14 ["Text"]
       74 LOADB                            R4 1
       75 SETTABLEKS                       R4 R3 K15 ["TextWrapped"]
       77 CALL                             R1 2 -1
       78 RETURN                           R1 -1
       79 GETUPVAL                         R1 3
       80 GETTABLEKS                       R1 R1 K3 ["createElement"]
       82 GETUPVAL                         R2 4
       83 GETUPVAL                         R3 9
       84 GETTABLEKS                       R3 R3 K31 ["Dictionary"]
       86 GETTABLEKS                       R3 R3 K32 ["join"]
       88 MOVE                             R4 R0
       89 DUPTABLE                         R5 K34 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped", "width"}]
       90 GETIMPORT                        R6 K36 [Enum.AutomaticSize.XY]
       92 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       94 LOADN                            R6 1
       95 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       97 GETUPVAL                         R6 6
       98 NAMECALL                         R6 R6 K24 ["getNextOrder"]
      100 CALL                             R6 1 1
      101 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
      103 GETUPVAL                         R7 7
      104 GETTABLEKS                       R7 R7 K25 ["Disabled"]
      106 JUMPIFNOT                        R7 ; [+2]
      107 LOADK                            R6 K26 [0.5]
      108 JUMP                             ; [+1]
      109 LOADN                            R6 0
      110 SETTABLEKS                       R6 R5 K11 ["TextTransparency"]
      112 GETIMPORT                        R6 K28 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R6 R5 K12 ["TextXAlignment"]
      116 GETIMPORT                        R6 K30 [Enum.TextYAlignment.Top]
      118 SETTABLEKS                       R6 R5 K13 ["TextYAlignment"]
      120 GETUPVAL                         R6 8
      121 SETTABLEKS                       R6 R5 K14 ["Text"]
      123 LOADB                            R6 1
      124 SETTABLEKS                       R6 R5 K15 ["TextWrapped"]
      126 GETIMPORT                        R6 K38 [UDim.new]
      128 LOADN                            R7 0
      129 GETUPVAL                         R8 5
      130 CALL                             R6 2 1
      131 SETTABLEKS                       R6 R5 K33 ["width"]
      133 CALL                             R3 2 -1
      134 CALL                             R1 -1 -1
      135 RETURN                           R1 -1

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
       39 JUMPIFNOT                        R12 ; [+97]
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
       98 DUPTABLE                         R22 K42 [{"Size", "Style"}]
       99 GETIMPORT                        R23 K45 [UDim2.fromOffset]
      101 LOADN                            R24 16
      102 LOADN                            R25 16
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K37 ["Size"]
      106 LOADK                            R23 K46 ["WarningStyle"]
      107 SETTABLEKS                       R23 R22 K41 ["Style"]
      109 DUPTABLE                         R23 K49 [{"Tooltip", "HoverArea"}]
      110 GETUPVAL                         R24 2
      111 GETTABLEKS                       R24 R24 K14 ["createElement"]
      113 GETUPVAL                         R25 6
      114 DUPTABLE                         R26 K51 [{"Text"}]
      115 SETTABLEKS                       R13 R26 K50 ["Text"]
      117 CALL                             R24 2 1
      118 SETTABLEKS                       R24 R23 K47 ["Tooltip"]
      120 GETUPVAL                         R24 2
      121 GETTABLEKS                       R24 R24 K14 ["createElement"]
      123 GETUPVAL                         R25 7
      124 DUPTABLE                         R26 K53 [{"Cursor"}]
      125 LOADK                            R27 K54 ["PointingHand"]
      126 SETTABLEKS                       R27 R26 K52 ["Cursor"]
      128 CALL                             R24 2 1
      129 SETTABLEKS                       R24 R23 K48 ["HoverArea"]
      131 CALL                             R20 3 1
      132 SETTABLEKS                       R20 R19 K35 ["Warning"]
      134 CALL                             R16 3 1
      135 MOVE                             R15 R16
      136 JUMP                             ; [+24]
      137 GETUPVAL                         R16 2
      138 GETTABLEKS                       R16 R16 K14 ["createElement"]
      140 GETUPVAL                         R17 4
      141 DUPTABLE                         R18 K55 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
      142 SETTABLEKS                       R5 R18 K5 ["Disabled"]
      144 SETTABLEKS                       R7 R18 K7 ["Selected"]
      146 NAMECALL                         R19 R14 K31 ["getNextOrder"]
      148 CALL                             R19 1 1
      149 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      151 SETTABLEKS                       R9 R18 K9 ["OnClick"]
      153 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      155 GETTABLEKS                       R19 R19 K40 ["toggleButtonSize"]
      157 SETTABLEKS                       R19 R18 K37 ["Size"]
      159 CALL                             R16 2 1
      160 MOVE                             R15 R16
      161 GETUPVAL                         R16 2
      162 GETTABLEKS                       R16 R16 K14 ["createElement"]
      164 GETUPVAL                         R17 8
      165 DUPTABLE                         R18 K57 [{"Title", "TitleWidth", "LayoutOrder"}]
      166 SETTABLEKS                       R8 R18 K8 ["Title"]
      168 GETTABLEKS                       R19 R2 K39 ["settingsPage"]
      170 GETTABLEKS                       R19 R19 K58 ["toggleButtonTitleWidth"]
      172 SETTABLEKS                       R19 R18 K56 ["TitleWidth"]
      174 SETTABLEKS                       R6 R18 K6 ["LayoutOrder"]
      176 DUPTABLE                         R19 K62 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
      177 SETTABLEKS                       R15 R19 K59 ["ToggleButton"]
      179 GETTABLEKS                       R20 R1 K4 ["Description"]
      181 JUMPIFNOT                        R20 ; [+12]
      182 NEWCLOSURE                       R20 P0
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R2
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          UPVAL U9
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R4
      192 CAPTURE                          UPVAL U10
      193 CALL                             R20 0 1
      194 SETTABLEKS                       R20 R19 K4 ["Description"]
      196 GETUPVAL                         R21 11
      197 CALL                             R21 0 1
      198 JUMPIFNOT                        R21 ; [+73]
      199 GETTABLEKS                       R21 R1 K63 ["LinkMap"]
      201 JUMPIFNOT                        R21 ; [+70]
      202 GETTABLEKS                       R21 R1 K60 ["LinkText"]
      204 JUMPIFNOT                        R21 ; [+67]
      205 GETUPVAL                         R20 2
      206 GETTABLEKS                       R20 R20 K14 ["createElement"]
      208 GETUPVAL                         R21 12
      209 GETUPVAL                         R22 10
      210 GETTABLEKS                       R22 R22 K64 ["Dictionary"]
      212 GETTABLEKS                       R22 R22 K65 ["join"]
      214 DUPTABLE                         R23 K67 [{"Size", "LayoutOrder", "Text", "LinkMap", "TextProps", "HorizontalAlignment"}]
      215 GETIMPORT                        R24 K68 [UDim2.new]
      217 LOADN                            R25 0
      218 MOVE                             R26 R3
      219 LOADN                            R27 0
      220 LOADN                            R28 0
      221 CALL                             R24 4 1
      222 SETTABLEKS                       R24 R23 K37 ["Size"]
      224 NAMECALL                         R24 R14 K31 ["getNextOrder"]
      226 CALL                             R24 1 1
      227 SETTABLEKS                       R24 R23 K6 ["LayoutOrder"]
      229 GETTABLEKS                       R24 R1 K60 ["LinkText"]
      231 SETTABLEKS                       R24 R23 K50 ["Text"]
      233 GETTABLEKS                       R24 R1 K63 ["LinkMap"]
      235 SETTABLEKS                       R24 R23 K63 ["LinkMap"]
      237 GETUPVAL                         R24 10
      238 GETTABLEKS                       R24 R24 K64 ["Dictionary"]
      240 GETTABLEKS                       R24 R24 K65 ["join"]
      242 GETTABLEKS                       R25 R2 K69 ["fontStyle"]
      244 GETTABLEKS                       R25 R25 K70 ["Subtext"]
      246 DUPTABLE                         R26 K74 [{"BackgroundTransparency", "TextXAlignment", "TextTransparency"}]
      247 LOADN                            R27 1
      248 SETTABLEKS                       R27 R26 K71 ["BackgroundTransparency"]
      250 GETIMPORT                        R27 K75 [Enum.TextXAlignment.Left]
      252 SETTABLEKS                       R27 R26 K72 ["TextXAlignment"]
      254 GETTABLEKS                       R28 R1 K5 ["Disabled"]
      256 JUMPIFNOT                        R28 ; [+2]
      257 LOADK                            R27 K76 [0.5]
      258 JUMP                             ; [+1]
      259 LOADN                            R27 0
      260 SETTABLEKS                       R27 R26 K73 ["TextTransparency"]
      262 CALL                             R24 2 1
      263 SETTABLEKS                       R24 R23 K66 ["TextProps"]
      265 GETIMPORT                        R24 K25 [Enum.HorizontalAlignment.Left]
      267 SETTABLEKS                       R24 R23 K16 ["HorizontalAlignment"]
      269 CALL                             R22 1 -1
      270 CALL                             R20 -1 1
      271 JUMP                             ; [+50]
      272 GETTABLEKS                       R20 R1 K11 ["LinkProps"]
      274 JUMPIFNOT                        R20 ; [+47]
      275 GETUPVAL                         R20 2
      276 GETTABLEKS                       R20 R20 K14 ["createElement"]
      278 GETUPVAL                         R21 13
      279 GETUPVAL                         R22 10
      280 GETTABLEKS                       R22 R22 K64 ["Dictionary"]
      282 GETTABLEKS                       R22 R22 K65 ["join"]
      284 MOVE                             R23 R11
      285 DUPTABLE                         R24 K79 [{"LinkPlaceholder", "MaxWidth", "LayoutOrder", "TextProps", "HorizontalAlignment"}]
      286 LOADK                            R25 K80 ["[link]"]
      287 SETTABLEKS                       R25 R24 K77 ["LinkPlaceholder"]
      289 SETTABLEKS                       R3 R24 K78 ["MaxWidth"]
      291 NAMECALL                         R25 R14 K31 ["getNextOrder"]
      293 CALL                             R25 1 1
      294 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      296 GETUPVAL                         R25 10
      297 GETTABLEKS                       R25 R25 K64 ["Dictionary"]
      299 GETTABLEKS                       R25 R25 K65 ["join"]
      301 GETTABLEKS                       R26 R2 K69 ["fontStyle"]
      303 GETTABLEKS                       R26 R26 K70 ["Subtext"]
      305 DUPTABLE                         R27 K81 [{"BackgroundTransparency", "TextXAlignment"}]
      306 LOADN                            R28 1
      307 SETTABLEKS                       R28 R27 K71 ["BackgroundTransparency"]
      309 GETIMPORT                        R28 K75 [Enum.TextXAlignment.Left]
      311 SETTABLEKS                       R28 R27 K72 ["TextXAlignment"]
      313 CALL                             R25 2 1
      314 SETTABLEKS                       R25 R24 K66 ["TextProps"]
      316 GETIMPORT                        R25 K25 [Enum.HorizontalAlignment.Left]
      318 SETTABLEKS                       R25 R24 K16 ["HorizontalAlignment"]
      320 CALL                             R22 2 -1
      321 CALL                             R20 -1 1
      322 SETTABLEKS                       R20 R19 K60 ["LinkText"]
      324 GETUPVAL                         R20 2
      325 GETTABLEKS                       R20 R20 K14 ["createElement"]
      327 LOADK                            R21 K82 ["Frame"]
      328 NEWTABLE                         R22 8 0
      330 LOADN                            R23 1
      331 SETTABLEKS                       R23 R22 K71 ["BackgroundTransparency"]
      333 NAMECALL                         R23 R14 K31 ["getNextOrder"]
      335 CALL                             R23 1 1
      336 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      338 GETIMPORT                        R23 K68 [UDim2.new]
      340 LOADN                            R24 1
      341 LOADN                            R25 0
      342 LOADN                            R26 0
      343 LOADN                            R27 0
      344 CALL                             R23 4 1
      345 SETTABLEKS                       R23 R22 K37 ["Size"]
      347 GETUPVAL                         R23 2
      348 GETTABLEKS                       R23 R23 K83 ["Ref"]
      350 GETTABLEKS                       R24 R0 K84 ["descriptionRef"]
      352 SETTABLE                         R24 R22 R23
      353 GETUPVAL                         R23 2
      354 GETTABLEKS                       R23 R23 K85 ["Change"]
      356 GETTABLEKS                       R23 R23 K86 ["AbsoluteSize"]
      358 GETTABLEKS                       R24 R0 K87 ["onResize"]
      360 SETTABLE                         R24 R22 R23
      361 CALL                             R20 2 1
      362 SETTABLEKS                       R20 R19 K61 ["DescriptionWidth"]
      364 CALL                             R16 3 -1
      365 RETURN                           R16 -1

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
       74 GETIMPORT                        R20 K4 [require]
       76 GETTABLEKS                       R21 R0 K26 ["Src"]
       78 GETTABLEKS                       R21 R21 K27 ["Flags"]
       80 GETTABLEKS                       R21 R21 K29 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
       82 CALL                             R20 1 1
       83 DUPCLOSURE                       R21 K30 [PROTO_1]
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R21 R18 K31 ["init"]
       87 DUPCLOSURE                       R21 K32 [PROTO_3]
       88 CAPTURE                          VAL R19
       89 CAPTURE                          VAL R17
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R20
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R21 R18 K33 ["render"]
      104 MOVE                             R21 R5
      105 DUPTABLE                         R22 K35 [{"Stylizer"}]
      106 GETTABLEKS                       R23 R4 K34 ["Stylizer"]
      108 SETTABLEKS                       R23 R22 K34 ["Stylizer"]
      110 CALL                             R21 1 1
      111 MOVE                             R22 R18
      112 CALL                             R21 1 1
      113 MOVE                             R18 R21
      114 RETURN                           R18 1
