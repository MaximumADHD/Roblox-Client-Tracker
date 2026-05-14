PROTO_0:
        0 LOADK                            R1 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K1 ["/access"]
        3 CONCAT                           R0 R1 R3
        4 JUMPIFNOT                        R0 ; [+14]
        5 FASTCALL1                        STRING_LEN R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K4 [string.len]
        9 CALL                             R1 1 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+7]
       13 GETUPVAL                         R1 1
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K5 ["OpenBrowserWindow"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R1 K7 [error]
       21 LOADK                            R2 K8 ["Failed to open Creation Experiences Access page"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R2 R1 K1 ["GameId"]
       12 GETTABLEKS                       R3 R1 K2 ["Localization"]
       14 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
       16 LOADK                            R7 K4 ["Monetization"]
       17 LOADK                            R8 K5 ["TitlePaidAccess"]
       18 NAMECALL                         R5 R3 K6 ["getText"]
       20 CALL                             R5 3 1
       21 LOADK                            R8 K4 ["Monetization"]
       22 LOADK                            R9 K7 ["PriceTitle"]
       23 NAMECALL                         R6 R3 K6 ["getText"]
       25 CALL                             R6 3 1
       26 GETTABLEKS                       R8 R1 K8 ["Price"]
       28 JUMPIFNOT                        R8 ; [+3]
       29 GETTABLEKS                       R7 R1 K8 ["Price"]
       31 JUMPIF                           R7 ; [+1]
       32 LOADN                            R7 0
       33 GETTABLEKS                       R8 R1 K9 ["TaxRate"]
       35 GETTABLEKS                       R9 R1 K10 ["MinimumFee"]
       37 GETTABLEKS                       R10 R1 K11 ["LayoutOrder"]
       39 GETTABLEKS                       R11 R1 K12 ["Enabled"]
       41 GETTABLEKS                       R12 R1 K13 ["Selected"]
       43 GETTABLEKS                       R13 R1 K14 ["OnPaidAccessToggle"]
       45 GETTABLEKS                       R14 R1 K15 ["OnPaidAccessPriceChanged"]
       47 LOADNIL                          R15
       48 GETTABLEKS                       R16 R1 K16 ["PriceError"]
       50 JUMPIFNOT                        R11 ; [+2]
       51 JUMPIFNOT                        R16 ; [+1]
       52 MOVE                             R15 R16
       53 LOADK                            R19 K4 ["Monetization"]
       54 LOADK                            R20 K17 ["PaidAccessHint"]
       55 NAMECALL                         R17 R3 K6 ["getText"]
       57 CALL                             R17 3 1
       58 GETUPVAL                         R19 2
       59 JUMPIFNOT                        R19 ; [+2]
       60 LOADNIL                          R18
       61 JUMP                             ; [+25]
       62 GETUPVAL                         R18 3
       63 MOVE                             R19 R17
       64 GETTABLEKS                       R20 R4 K18 ["fontStyle"]
       66 GETTABLEKS                       R20 R20 K19 ["Subtext"]
       68 GETTABLEKS                       R20 R20 K20 ["TextSize"]
       70 GETTABLEKS                       R21 R4 K18 ["fontStyle"]
       72 GETTABLEKS                       R21 R21 K19 ["Subtext"]
       74 GETTABLEKS                       R21 R21 K21 ["Font"]
       76 GETIMPORT                        R22 K24 [Vector2.new]
       78 GETTABLEKS                       R23 R4 K25 ["robuxFeeBase"]
       80 GETTABLEKS                       R23 R23 K26 ["subText"]
       82 GETTABLEKS                       R23 R23 K27 ["width"]
       84 LOADK                            R24 K28 [∞]
       85 CALL                             R22 2 -1
       86 CALL                             R18 -1 1
       87 GETUPVAL                         R19 4
       88 GETTABLEKS                       R19 R19 K29 ["createElement"]
       90 GETUPVAL                         R21 2
       91 JUMPIFNOT                        R21 ; [+2]
       92 GETUPVAL                         R20 5
       93 JUMP                             ; [+1]
       94 GETUPVAL                         R20 6
       95 GETUPVAL                         R22 2
       96 JUMPIFNOT                        R22 ; [+16]
       97 DUPTABLE                         R21 K33 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
       98 GETIMPORT                        R22 K36 [Enum.AutomaticSize.XY]
      100 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      102 GETIMPORT                        R22 K39 [Enum.FillDirection.Vertical]
      104 SETTABLEKS                       R22 R21 K31 ["Layout"]
      106 SETTABLEKS                       R10 R21 K11 ["LayoutOrder"]
      108 GETTABLEKS                       R22 R4 K40 ["titleSpacing"]
      110 SETTABLEKS                       R22 R21 K32 ["Spacing"]
      112 JUMP                             ; [+22]
      113 DUPTABLE                         R21 K44 [{"axis", "minimumSize", "BackgroundTransparency", "LayoutOrder"}]
      114 GETUPVAL                         R22 6
      115 GETTABLEKS                       R22 R22 K45 ["Axis"]
      117 GETTABLEKS                       R22 R22 K38 ["Vertical"]
      119 SETTABLEKS                       R22 R21 K41 ["axis"]
      121 GETIMPORT                        R22 K47 [UDim2.new]
      123 LOADN                            R23 1
      124 LOADN                            R24 0
      125 LOADN                            R25 0
      126 LOADN                            R26 0
      127 CALL                             R22 4 1
      128 SETTABLEKS                       R22 R21 K42 ["minimumSize"]
      130 LOADN                            R22 1
      131 SETTABLEKS                       R22 R21 K43 ["BackgroundTransparency"]
      133 SETTABLEKS                       R10 R21 K11 ["LayoutOrder"]
      135 GETUPVAL                         R23 1
      136 JUMPIFNOT                        R23 ; [+59]
      137 DUPTABLE                         R22 K49 [{"PaidAccessTitle"}]
      138 GETUPVAL                         R23 4
      139 GETTABLEKS                       R23 R23 K29 ["createElement"]
      141 GETUPVAL                         R24 7
      142 DUPTABLE                         R25 K51 [{"LayoutOrder", "Title"}]
      143 LOADN                            R26 1
      144 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      146 SETTABLEKS                       R5 R25 K50 ["Title"]
      148 DUPTABLE                         R26 K54 [{"Padding", "LinkText"}]
      149 GETUPVAL                         R27 4
      150 GETTABLEKS                       R27 R27 K29 ["createElement"]
      152 LOADK                            R28 K55 ["UIPadding"]
      153 DUPTABLE                         R29 K57 [{"PaddingTop"}]
      154 GETIMPORT                        R30 K59 [UDim.new]
      156 LOADN                            R31 0
      157 LOADN                            R32 4
      158 CALL                             R30 2 1
      159 SETTABLEKS                       R30 R29 K56 ["PaddingTop"]
      161 CALL                             R27 2 1
      162 SETTABLEKS                       R27 R26 K52 ["Padding"]
      164 GETUPVAL                         R27 4
      165 GETTABLEKS                       R27 R27 K29 ["createElement"]
      167 GETUPVAL                         R28 8
      168 DUPTABLE                         R29 K64 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
      169 NEWCLOSURE                       R30 P0
      170 CAPTURE                          REF R2
      171 CAPTURE                          UPVAL U9
      172 SETTABLEKS                       R30 R29 K60 ["OnClick"]
      174 LOADK                            R32 K4 ["Monetization"]
      175 LOADK                            R33 K65 ["PaidAccessDeepLink"]
      176 NAMECALL                         R30 R3 K6 ["getText"]
      178 CALL                             R30 3 1
      179 SETTABLEKS                       R30 R29 K61 ["Text"]
      181 GETIMPORT                        R30 K67 [Enum.TextXAlignment.Left]
      183 SETTABLEKS                       R30 R29 K62 ["TextXAlignment"]
      185 GETIMPORT                        R30 K69 [Enum.TextYAlignment.Top]
      187 SETTABLEKS                       R30 R29 K63 ["TextYAlignment"]
      189 CALL                             R27 2 1
      190 SETTABLEKS                       R27 R26 K53 ["LinkText"]
      192 CALL                             R23 3 1
      193 SETTABLEKS                       R23 R22 K48 ["PaidAccessTitle"]
      195 JUMP                             ; [+182]
      196 DUPTABLE                         R22 K72 [{"ToggleAndSubscriptionsAndTotal", "PriceConfigPaidOnly"}]
      197 GETUPVAL                         R23 4
      198 GETTABLEKS                       R23 R23 K29 ["createElement"]
      200 GETUPVAL                         R24 7
      201 DUPTABLE                         R25 K51 [{"LayoutOrder", "Title"}]
      202 LOADN                            R26 1
      203 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      205 SETTABLEKS                       R5 R25 K50 ["Title"]
      207 DUPTABLE                         R26 K76 [{"UIListLayout", "ToggleButton", "SubText"}]
      208 GETUPVAL                         R27 4
      209 GETTABLEKS                       R27 R27 K29 ["createElement"]
      211 LOADK                            R28 K73 ["UIListLayout"]
      212 DUPTABLE                         R29 K78 [{"SortOrder", "FillDirection"}]
      213 GETIMPORT                        R30 K79 [Enum.SortOrder.LayoutOrder]
      215 SETTABLEKS                       R30 R29 K77 ["SortOrder"]
      217 GETIMPORT                        R30 K39 [Enum.FillDirection.Vertical]
      219 SETTABLEKS                       R30 R29 K37 ["FillDirection"]
      221 CALL                             R27 2 1
      222 SETTABLEKS                       R27 R26 K73 ["UIListLayout"]
      224 GETUPVAL                         R27 4
      225 GETTABLEKS                       R27 R27 K29 ["createElement"]
      227 GETUPVAL                         R28 10
      228 DUPTABLE                         R29 K81 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
      229 NOT                              R30 R11
      230 SETTABLEKS                       R30 R29 K80 ["Disabled"]
      232 LOADN                            R30 1
      233 SETTABLEKS                       R30 R29 K11 ["LayoutOrder"]
      235 SETTABLEKS                       R13 R29 K60 ["OnClick"]
      237 SETTABLEKS                       R12 R29 K13 ["Selected"]
      239 CALL                             R27 2 1
      240 SETTABLEKS                       R27 R26 K74 ["ToggleButton"]
      242 NOT                              R27 R12
      243 JUMPIFNOT                        R27 ; [+78]
      244 GETUPVAL                         R28 2
      245 JUMPIFNOT                        R28 ; [+26]
      246 GETUPVAL                         R27 4
      247 GETTABLEKS                       R27 R27 K29 ["createElement"]
      249 GETUPVAL                         R28 11
      250 DUPTABLE                         R29 K84 [{"AutomaticSize", "Style", "Text", "LayoutOrder", "TextWrapped", "TextXAlignment"}]
      251 GETIMPORT                        R30 K36 [Enum.AutomaticSize.XY]
      253 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      255 LOADK                            R30 K85 ["Label"]
      256 SETTABLEKS                       R30 R29 K82 ["Style"]
      258 SETTABLEKS                       R17 R29 K61 ["Text"]
      260 LOADN                            R30 2
      261 SETTABLEKS                       R30 R29 K11 ["LayoutOrder"]
      263 LOADB                            R30 1
      264 SETTABLEKS                       R30 R29 K83 ["TextWrapped"]
      266 GETIMPORT                        R30 K67 [Enum.TextXAlignment.Left]
      268 SETTABLEKS                       R30 R29 K62 ["TextXAlignment"]
      270 CALL                             R27 2 1
      271 JUMP                             ; [+50]
      272 GETUPVAL                         R27 4
      273 GETTABLEKS                       R27 R27 K29 ["createElement"]
      275 LOADK                            R28 K86 ["TextLabel"]
      276 GETUPVAL                         R29 12
      277 GETTABLEKS                       R29 R29 K87 ["Dictionary"]
      279 GETTABLEKS                       R29 R29 K88 ["join"]
      281 GETTABLEKS                       R30 R4 K18 ["fontStyle"]
      283 GETTABLEKS                       R30 R30 K19 ["Subtext"]
      285 DUPTABLE                         R31 K90 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      286 GETIMPORT                        R32 K47 [UDim2.new]
      288 LOADN                            R33 0
      289 GETTABLEKS                       R35 R18 K91 ["X"]
      291 FASTCALL1                        MATH_CEIL R35 ; [+2]
      292 GETIMPORT                        R34 K94 [math.ceil]
      294 CALL                             R34 1 1
      295 LOADN                            R35 0
      296 GETTABLEKS                       R36 R18 K95 ["Y"]
      298 CALL                             R32 4 1
      299 SETTABLEKS                       R32 R31 K89 ["Size"]
      301 LOADN                            R32 1
      302 SETTABLEKS                       R32 R31 K43 ["BackgroundTransparency"]
      304 SETTABLEKS                       R17 R31 K61 ["Text"]
      306 GETIMPORT                        R32 K97 [Enum.TextYAlignment.Center]
      308 SETTABLEKS                       R32 R31 K63 ["TextYAlignment"]
      310 GETIMPORT                        R32 K67 [Enum.TextXAlignment.Left]
      312 SETTABLEKS                       R32 R31 K62 ["TextXAlignment"]
      314 LOADB                            R32 1
      315 SETTABLEKS                       R32 R31 K83 ["TextWrapped"]
      317 LOADN                            R32 2
      318 SETTABLEKS                       R32 R31 K11 ["LayoutOrder"]
      320 CALL                             R29 2 -1
      321 CALL                             R27 -1 1
      322 SETTABLEKS                       R27 R26 K75 ["SubText"]
      324 CALL                             R23 3 1
      325 SETTABLEKS                       R23 R22 K70 ["ToggleAndSubscriptionsAndTotal"]
      327 MOVE                             R23 R12
      328 JUMPIFNOT                        R23 ; [+47]
      329 GETUPVAL                         R23 4
      330 GETTABLEKS                       R23 R23 K29 ["createElement"]
      332 GETUPVAL                         R24 7
      333 DUPTABLE                         R25 K98 [{"FillDirection", "LayoutOrder", "Style", "Title"}]
      334 GETUPVAL                         R27 2
      335 JUMPIFNOT                        R27 ; [+3]
      336 GETIMPORT                        R26 K100 [Enum.FillDirection.Horizontal]
      338 JUMP                             ; [+1]
      339 LOADNIL                          R26
      340 SETTABLEKS                       R26 R25 K37 ["FillDirection"]
      342 LOADN                            R26 3
      343 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      345 GETUPVAL                         R27 2
      346 JUMPIFNOT                        R27 ; [+2]
      347 LOADK                            R26 K101 ["Subtitle"]
      348 JUMP                             ; [+1]
      349 LOADNIL                          R26
      350 SETTABLEKS                       R26 R25 K82 ["Style"]
      352 SETTABLEKS                       R6 R25 K50 ["Title"]
      354 DUPTABLE                         R26 K103 [{"RobuxFeeBase"}]
      355 GETUPVAL                         R27 4
      356 GETTABLEKS                       R27 R27 K29 ["createElement"]
      358 GETUPVAL                         R28 13
      359 DUPTABLE                         R29 K105 [{"Price", "TaxRate", "MinimumFee", "SubText", "Enabled", "OnPriceChanged"}]
      360 SETTABLEKS                       R7 R29 K8 ["Price"]
      362 SETTABLEKS                       R8 R29 K9 ["TaxRate"]
      364 SETTABLEKS                       R9 R29 K10 ["MinimumFee"]
      366 SETTABLEKS                       R15 R29 K75 ["SubText"]
      368 SETTABLEKS                       R11 R29 K12 ["Enabled"]
      370 SETTABLEKS                       R14 R29 K104 ["OnPriceChanged"]
      372 CALL                             R27 2 1
      373 SETTABLEKS                       R27 R26 K102 ["RobuxFeeBase"]
      375 CALL                             R23 3 1
      376 SETTABLEKS                       R23 R22 K71 ["PriceConfigPaidOnly"]
      378 CALL                             R19 3 -1
      379 CLOSEUPVALS                      R2
      380 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["FitFrame"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K7 ["Src"]
       28 GETTABLEKS                       R4 R4 K8 ["Flags"]
       30 GETTABLEKS                       R4 R4 K9 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       32 CALL                             R3 1 1
       33 CALL                             R3 0 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R1 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Cryo"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R1 K5 ["Packages"]
       45 GETTABLEKS                       R6 R6 K11 ["Roact"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R1 K5 ["Packages"]
       52 GETTABLEKS                       R7 R7 K12 ["Framework"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K13 ["Util"]
       57 JUMPIFNOT                        R3 ; [+2]
       58 LOADNIL                          R8
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R8 R2 K14 ["FitFrameOnAxis"]
       62 GETTABLEKS                       R9 R7 K15 ["GetTextSize"]
       64 GETTABLEKS                       R10 R6 K16 ["ContextServices"]
       66 GETTABLEKS                       R11 R10 K17 ["withContext"]
       68 GETTABLEKS                       R12 R6 K18 ["UI"]
       70 GETTABLEKS                       R13 R12 K19 ["LinkText"]
       72 GETTABLEKS                       R14 R12 K20 ["Pane"]
       74 GETTABLEKS                       R15 R12 K21 ["TextLabel"]
       76 GETTABLEKS                       R16 R12 K22 ["TitledFrame"]
       78 GETTABLEKS                       R17 R12 K23 ["ToggleButton"]
       80 GETIMPORT                        R18 K25 [game]
       82 LOADK                            R20 K26 ["GuiService"]
       83 NAMECALL                         R18 R18 K27 ["GetService"]
       85 CALL                             R18 2 1
       86 GETIMPORT                        R19 K25 [game]
       88 LOADK                            R21 K28 ["PaidAccessInFiat"]
       89 NAMECALL                         R19 R19 K29 ["GetFastFlag"]
       91 CALL                             R19 2 1
       92 GETIMPORT                        R20 K4 [require]
       94 GETTABLEKS                       R21 R0 K30 ["Components"]
       96 GETTABLEKS                       R21 R21 K31 ["RobuxFeeBase"]
       98 CALL                             R20 1 1
       99 GETIMPORT                        R21 K4 [require]
      101 GETTABLEKS                       R22 R1 K7 ["Src"]
      103 GETTABLEKS                       R22 R22 K13 ["Util"]
      105 GETTABLEKS                       R22 R22 K32 ["GameSettingsUtilities"]
      107 CALL                             R21 1 1
      108 GETTABLEKS                       R21 R21 K33 ["shouldDisablePrivateServersAndPaidAccess"]
      110 GETTABLEKS                       R22 R5 K34 ["PureComponent"]
      112 LOADK                            R24 K35 ["PaidAccess"]
      113 NAMECALL                         R22 R22 K36 ["extend"]
      115 CALL                             R22 2 1
      116 DUPCLOSURE                       R23 K37 [PROTO_1]
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R20
      131 SETTABLEKS                       R23 R22 K38 ["render"]
      133 MOVE                             R23 R11
      134 DUPTABLE                         R24 K42 [{"Localization", "Stylizer", "Mouse"}]
      135 GETTABLEKS                       R25 R10 K39 ["Localization"]
      137 SETTABLEKS                       R25 R24 K39 ["Localization"]
      139 GETTABLEKS                       R25 R10 K40 ["Stylizer"]
      141 SETTABLEKS                       R25 R24 K40 ["Stylizer"]
      143 GETTABLEKS                       R25 R10 K41 ["Mouse"]
      145 SETTABLEKS                       R25 R24 K41 ["Mouse"]
      147 CALL                             R23 1 1
      148 MOVE                             R24 R22
      149 CALL                             R23 1 1
      150 MOVE                             R22 R23
      151 RETURN                           R22 1
