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
      112 JUMP                             ; [+19]
      113 DUPTABLE                         R21 K45 [{["axis"], ["minimumSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      114 GETUPVAL                         R22 6
      115 GETTABLEKS                       R22 R22 K46 ["Axis"]
      117 GETTABLEKS                       R22 R22 K38 ["Vertical"]
      119 SETTABLEKS                       R22 R21 K41 ["axis"]
      121 GETIMPORT                        R22 K48 [UDim2.new]
      123 LOADN                            R23 1
      124 LOADN                            R24 0
      125 LOADN                            R25 0
      126 LOADN                            R26 0
      127 CALL                             R22 4 1
      128 SETTABLEKS                       R22 R21 K42 ["minimumSize"]
      130 SETTABLEKS                       R10 R21 K11 ["LayoutOrder"]
      132 GETUPVAL                         R23 1
      133 JUMPIFNOT                        R23 ; [+56]
      134 DUPTABLE                         R22 K50 [{"PaidAccessTitle"}]
      135 GETUPVAL                         R23 4
      136 GETTABLEKS                       R23 R23 K29 ["createElement"]
      138 GETUPVAL                         R24 7
      139 DUPTABLE                         R25 K52 [{["LayoutOrder"] = 1, ["Title"]}]
      140 SETTABLEKS                       R5 R25 K51 ["Title"]
      142 DUPTABLE                         R26 K55 [{"Padding", "LinkText"}]
      143 GETUPVAL                         R27 4
      144 GETTABLEKS                       R27 R27 K29 ["createElement"]
      146 LOADK                            R28 K56 ["UIPadding"]
      147 DUPTABLE                         R29 K58 [{"PaddingTop"}]
      148 GETIMPORT                        R30 K60 [UDim.new]
      150 LOADN                            R31 0
      151 LOADN                            R32 4
      152 CALL                             R30 2 1
      153 SETTABLEKS                       R30 R29 K57 ["PaddingTop"]
      155 CALL                             R27 2 1
      156 SETTABLEKS                       R27 R26 K53 ["Padding"]
      158 GETUPVAL                         R27 4
      159 GETTABLEKS                       R27 R27 K29 ["createElement"]
      161 GETUPVAL                         R28 8
      162 DUPTABLE                         R29 K65 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
      163 NEWCLOSURE                       R30 P0
      164 CAPTURE                          REF R2
      165 CAPTURE                          UPVAL U9
      166 SETTABLEKS                       R30 R29 K61 ["OnClick"]
      168 LOADK                            R32 K4 ["Monetization"]
      169 LOADK                            R33 K66 ["PaidAccessDeepLink"]
      170 NAMECALL                         R30 R3 K6 ["getText"]
      172 CALL                             R30 3 1
      173 SETTABLEKS                       R30 R29 K62 ["Text"]
      175 GETIMPORT                        R30 K68 [Enum.TextXAlignment.Left]
      177 SETTABLEKS                       R30 R29 K63 ["TextXAlignment"]
      179 GETIMPORT                        R30 K70 [Enum.TextYAlignment.Top]
      181 SETTABLEKS                       R30 R29 K64 ["TextYAlignment"]
      183 CALL                             R27 2 1
      184 SETTABLEKS                       R27 R26 K54 ["LinkText"]
      186 CALL                             R23 3 1
      187 SETTABLEKS                       R23 R22 K49 ["PaidAccessTitle"]
      189 JUMP                             ; [+155]
      190 DUPTABLE                         R22 K73 [{"ToggleAndSubscriptionsAndTotal", "PriceConfigPaidOnly"}]
      191 GETUPVAL                         R23 4
      192 GETTABLEKS                       R23 R23 K29 ["createElement"]
      194 GETUPVAL                         R24 7
      195 DUPTABLE                         R25 K52 [{["LayoutOrder"] = 1, ["Title"]}]
      196 SETTABLEKS                       R5 R25 K51 ["Title"]
      198 DUPTABLE                         R26 K77 [{"UIListLayout", "ToggleButton", "SubText"}]
      199 GETUPVAL                         R27 4
      200 GETTABLEKS                       R27 R27 K29 ["createElement"]
      202 LOADK                            R28 K74 ["UIListLayout"]
      203 DUPTABLE                         R29 K79 [{"SortOrder", "FillDirection"}]
      204 GETIMPORT                        R30 K80 [Enum.SortOrder.LayoutOrder]
      206 SETTABLEKS                       R30 R29 K78 ["SortOrder"]
      208 GETIMPORT                        R30 K39 [Enum.FillDirection.Vertical]
      210 SETTABLEKS                       R30 R29 K37 ["FillDirection"]
      212 CALL                             R27 2 1
      213 SETTABLEKS                       R27 R26 K74 ["UIListLayout"]
      215 GETUPVAL                         R27 4
      216 GETTABLEKS                       R27 R27 K29 ["createElement"]
      218 GETUPVAL                         R28 10
      219 DUPTABLE                         R29 K82 [{["Disabled"], ["LayoutOrder"] = 1, ["OnClick"], ["Selected"]}]
      220 NOT                              R30 R11
      221 SETTABLEKS                       R30 R29 K81 ["Disabled"]
      223 SETTABLEKS                       R13 R29 K61 ["OnClick"]
      225 SETTABLEKS                       R12 R29 K13 ["Selected"]
      227 CALL                             R27 2 1
      228 SETTABLEKS                       R27 R26 K75 ["ToggleButton"]
      230 NOT                              R27 R12
      231 JUMPIFNOT                        R27 ; [+60]
      232 GETUPVAL                         R28 2
      233 JUMPIFNOT                        R28 ; [+17]
      234 GETUPVAL                         R27 4
      235 GETTABLEKS                       R27 R27 K29 ["createElement"]
      237 GETUPVAL                         R28 11
      238 DUPTABLE                         R29 K88 [{["AutomaticSize"], ["Style"] = "Label", ["Text"], ["LayoutOrder"] = 2, ["TextWrapped"] = True, ["TextXAlignment"]}]
      239 GETIMPORT                        R30 K36 [Enum.AutomaticSize.XY]
      241 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      243 SETTABLEKS                       R17 R29 K62 ["Text"]
      245 GETIMPORT                        R30 K68 [Enum.TextXAlignment.Left]
      247 SETTABLEKS                       R30 R29 K63 ["TextXAlignment"]
      249 CALL                             R27 2 1
      250 JUMP                             ; [+41]
      251 GETUPVAL                         R27 4
      252 GETTABLEKS                       R27 R27 K29 ["createElement"]
      254 LOADK                            R28 K89 ["TextLabel"]
      255 GETUPVAL                         R29 12
      256 GETTABLEKS                       R29 R29 K90 ["Dictionary"]
      258 GETTABLEKS                       R29 R29 K91 ["join"]
      260 GETTABLEKS                       R30 R4 K18 ["fontStyle"]
      262 GETTABLEKS                       R30 R30 K19 ["Subtext"]
      264 DUPTABLE                         R31 K93 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextYAlignment"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      265 GETIMPORT                        R32 K48 [UDim2.new]
      267 LOADN                            R33 0
      268 GETTABLEKS                       R35 R18 K94 ["X"]
      270 FASTCALL1                        MATH_CEIL R35 ; [+2]
      271 GETIMPORT                        R34 K97 [math.ceil]
      273 CALL                             R34 1 1
      274 LOADN                            R35 0
      275 GETTABLEKS                       R36 R18 K98 ["Y"]
      277 CALL                             R32 4 1
      278 SETTABLEKS                       R32 R31 K92 ["Size"]
      280 SETTABLEKS                       R17 R31 K62 ["Text"]
      282 GETIMPORT                        R32 K100 [Enum.TextYAlignment.Center]
      284 SETTABLEKS                       R32 R31 K64 ["TextYAlignment"]
      286 GETIMPORT                        R32 K68 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R32 R31 K63 ["TextXAlignment"]
      290 CALL                             R29 2 -1
      291 CALL                             R27 -1 1
      292 SETTABLEKS                       R27 R26 K76 ["SubText"]
      294 CALL                             R23 3 1
      295 SETTABLEKS                       R23 R22 K71 ["ToggleAndSubscriptionsAndTotal"]
      297 MOVE                             R23 R12
      298 JUMPIFNOT                        R23 ; [+44]
      299 GETUPVAL                         R23 4
      300 GETTABLEKS                       R23 R23 K29 ["createElement"]
      302 GETUPVAL                         R24 7
      303 DUPTABLE                         R25 K102 [{["FillDirection"], ["LayoutOrder"] = 3, ["Style"], ["Title"]}]
      304 GETUPVAL                         R27 2
      305 JUMPIFNOT                        R27 ; [+3]
      306 GETIMPORT                        R26 K104 [Enum.FillDirection.Horizontal]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R26
      310 SETTABLEKS                       R26 R25 K37 ["FillDirection"]
      312 GETUPVAL                         R27 2
      313 JUMPIFNOT                        R27 ; [+2]
      314 LOADK                            R26 K105 ["Subtitle"]
      315 JUMP                             ; [+1]
      316 LOADNIL                          R26
      317 SETTABLEKS                       R26 R25 K83 ["Style"]
      319 SETTABLEKS                       R6 R25 K51 ["Title"]
      321 DUPTABLE                         R26 K107 [{"RobuxFeeBase"}]
      322 GETUPVAL                         R27 4
      323 GETTABLEKS                       R27 R27 K29 ["createElement"]
      325 GETUPVAL                         R28 13
      326 DUPTABLE                         R29 K109 [{"Price", "TaxRate", "MinimumFee", "SubText", "Enabled", "OnPriceChanged"}]
      327 SETTABLEKS                       R7 R29 K8 ["Price"]
      329 SETTABLEKS                       R8 R29 K9 ["TaxRate"]
      331 SETTABLEKS                       R9 R29 K10 ["MinimumFee"]
      333 SETTABLEKS                       R15 R29 K76 ["SubText"]
      335 SETTABLEKS                       R11 R29 K12 ["Enabled"]
      337 SETTABLEKS                       R14 R29 K108 ["OnPriceChanged"]
      339 CALL                             R27 2 1
      340 SETTABLEKS                       R27 R26 K106 ["RobuxFeeBase"]
      342 CALL                             R23 3 1
      343 SETTABLEKS                       R23 R22 K72 ["PriceConfigPaidOnly"]
      345 CALL                             R19 3 -1
      346 CLOSEUPVALS                      R2
      347 RETURN                           R19 -1

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
