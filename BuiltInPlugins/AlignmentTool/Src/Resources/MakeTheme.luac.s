PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R2 R1 K2 ["extend"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Style"]
       25 GETTABLEKS                       R4 R3 K9 ["Colors"]
       27 GETTABLEKS                       R5 R3 K10 ["Themes"]
       29 GETTABLEKS                       R5 R5 K11 ["StudioTheme"]
       31 GETTABLEKS                       R6 R3 K12 ["StyleKey"]
       33 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R8 R3 K14 ["getRawComponentStyle"]
       37 GETTABLEKS                       R9 R2 K15 ["Util"]
       39 GETTABLEKS                       R10 R9 K16 ["StyleModifier"]
       41 GETIMPORT                        R11 K4 [require]
       43 GETTABLEKS                       R12 R0 K17 ["Src"]
       45 GETTABLEKS                       R12 R12 K18 ["Utility"]
       47 GETTABLEKS                       R12 R12 K19 ["AlignmentMode"]
       49 CALL                             R11 1 1
       50 GETTABLEKS                       R12 R1 K20 ["join"]
       52 GETIMPORT                        R13 K23 [string.format]
       54 LOADK                            R14 K24 ["rbxasset://studio_svg_textures/Lua/AlignTool/%s/Large/"]
       55 LOADK                            R15 K25 ["Light"]
       56 CALL                             R13 2 1
       57 GETIMPORT                        R14 K23 [string.format]
       59 LOADK                            R15 K24 ["rbxasset://studio_svg_textures/Lua/AlignTool/%s/Large/"]
       60 LOADK                            R16 K26 ["Dark"]
       61 CALL                             R14 2 1
       62 GETIMPORT                        R15 K23 [string.format]
       64 LOADK                            R16 K27 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
       65 LOADK                            R17 K25 ["Light"]
       66 CALL                             R15 2 1
       67 GETIMPORT                        R16 K23 [string.format]
       69 LOADK                            R17 K27 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
       70 LOADK                            R18 K26 ["Dark"]
       71 CALL                             R16 2 1
       72 NEWTABLE                         R17 8 0
       74 GETTABLEKS                       R18 R6 K28 ["HelpIconColor"]
       76 GETTABLEKS                       R19 R4 K29 ["Gray_Light"]
       78 SETTABLE                         R19 R17 R18
       79 GETTABLEKS                       R18 R6 K30 ["SelectableButtonBorderColor"]
       81 GETTABLEKS                       R19 R4 K31 ["Gray"]
       83 SETTABLE                         R19 R17 R18
       84 GETTABLEKS                       R18 R6 K32 ["SelectableButtonSelectedColor"]
       86 GETTABLEKS                       R19 R4 K33 ["Gray_Mid"]
       88 SETTABLE                         R19 R17 R18
       89 GETTABLEKS                       R18 R6 K34 ["ModeButtonMin"]
       91 MOVE                             R20 R14
       92 LOADK                            R21 K35 ["AlignMin.png"]
       93 CONCAT                           R19 R20 R21
       94 SETTABLE                         R19 R17 R18
       95 GETTABLEKS                       R18 R6 K36 ["ModeButtonCenter"]
       97 MOVE                             R20 R14
       98 LOADK                            R21 K37 ["AlignCenter.png"]
       99 CONCAT                           R19 R20 R21
      100 SETTABLE                         R19 R17 R18
      101 GETTABLEKS                       R18 R6 K38 ["ModeButtonMax"]
      103 MOVE                             R20 R14
      104 LOADK                            R21 K39 ["AlignMax.png"]
      105 CONCAT                           R19 R20 R21
      106 SETTABLE                         R19 R17 R18
      107 GETTABLEKS                       R18 R6 K40 ["Help"]
      109 MOVE                             R20 R16
      110 LOADK                            R21 K41 ["Help.png"]
      111 CONCAT                           R19 R20 R21
      112 SETTABLE                         R19 R17 R18
      113 NEWTABLE                         R18 8 0
      115 GETTABLEKS                       R19 R6 K28 ["HelpIconColor"]
      117 GETIMPORT                        R20 K44 [Color3.fromRGB]
      119 LOADN                            R21 184
      120 LOADN                            R22 184
      121 LOADN                            R23 184
      122 CALL                             R20 3 1
      123 SETTABLE                         R20 R18 R19
      124 GETTABLEKS                       R19 R6 K30 ["SelectableButtonBorderColor"]
      126 GETTABLEKS                       R20 R4 K29 ["Gray_Light"]
      128 SETTABLE                         R20 R18 R19
      129 GETTABLEKS                       R19 R6 K32 ["SelectableButtonSelectedColor"]
      131 GETTABLEKS                       R20 R4 K45 ["Gray_Lighter"]
      133 SETTABLE                         R20 R18 R19
      134 GETTABLEKS                       R19 R6 K34 ["ModeButtonMin"]
      136 MOVE                             R21 R13
      137 LOADK                            R22 K35 ["AlignMin.png"]
      138 CONCAT                           R20 R21 R22
      139 SETTABLE                         R20 R18 R19
      140 GETTABLEKS                       R19 R6 K36 ["ModeButtonCenter"]
      142 MOVE                             R21 R13
      143 LOADK                            R22 K37 ["AlignCenter.png"]
      144 CONCAT                           R20 R21 R22
      145 SETTABLE                         R20 R18 R19
      146 GETTABLEKS                       R19 R6 K38 ["ModeButtonMax"]
      148 MOVE                             R21 R13
      149 LOADK                            R22 K39 ["AlignMax.png"]
      150 CONCAT                           R20 R21 R22
      151 SETTABLE                         R20 R18 R19
      152 GETTABLEKS                       R19 R6 K40 ["Help"]
      154 MOVE                             R21 R15
      155 LOADK                            R22 K41 ["Help.png"]
      156 CONCAT                           R20 R21 R22
      157 SETTABLE                         R20 R18 R19
      158 NEWTABLE                         R19 16 0
      160 GETIMPORT                        R20 K48 [UDim.new]
      162 LOADN                            R21 0
      163 LOADN                            R22 15
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K49 ["SectionPadding"]
      167 GETIMPORT                        R20 K48 [UDim.new]
      169 LOADN                            R21 0
      170 LOADN                            R22 10
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K50 ["SectionContentPadding"]
      174 GETIMPORT                        R20 K48 [UDim.new]
      176 LOADN                            R21 0
      177 LOADN                            R22 6
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K51 ["SectionContentPaddingCompact"]
      181 NEWTABLE                         R20 0 3
      183 DUPTABLE                         R21 K54 [{"Image", "Mode"}]
      184 GETTABLEKS                       R22 R6 K34 ["ModeButtonMin"]
      186 SETTABLEKS                       R22 R21 K52 ["Image"]
      188 GETTABLEKS                       R22 R11 K55 ["Min"]
      190 SETTABLEKS                       R22 R21 K53 ["Mode"]
      192 SETTABLEN                        R21 R20 1
      193 DUPTABLE                         R21 K54 [{"Image", "Mode"}]
      194 GETTABLEKS                       R22 R6 K36 ["ModeButtonCenter"]
      196 SETTABLEKS                       R22 R21 K52 ["Image"]
      198 GETTABLEKS                       R22 R11 K56 ["Center"]
      200 SETTABLEKS                       R22 R21 K53 ["Mode"]
      202 SETTABLEN                        R21 R20 2
      203 DUPTABLE                         R21 K54 [{"Image", "Mode"}]
      204 GETTABLEKS                       R22 R6 K38 ["ModeButtonMax"]
      206 SETTABLEKS                       R22 R21 K52 ["Image"]
      208 GETTABLEKS                       R22 R11 K57 ["Max"]
      210 SETTABLEKS                       R22 R21 K53 ["Mode"]
      212 SETTABLEN                        R21 R20 3
      213 SETTABLEKS                       R20 R19 K58 ["ModeButtons"]
      215 DUPTABLE                         R20 K62 [{"ErrorTextColor", "WarningTextColor", "InfoTextColor"}]
      216 GETTABLEKS                       R21 R6 K63 ["ErrorText"]
      218 SETTABLEKS                       R21 R20 K59 ["ErrorTextColor"]
      220 GETTABLEKS                       R21 R6 K64 ["WarningText"]
      222 SETTABLEKS                       R21 R20 K60 ["WarningTextColor"]
      224 GETTABLEKS                       R21 R6 K65 ["MainText"]
      226 SETTABLEKS                       R21 R20 K61 ["InfoTextColor"]
      228 SETTABLEKS                       R20 R19 K66 ["InfoLabel"]
      230 DUPTABLE                         R20 K71 [{["ListItemPadding"], ["Padding"] = 10, ["PrimaryButtonSize"]}]
      231 GETIMPORT                        R21 K48 [UDim.new]
      233 LOADN                            R22 0
      234 LOADN                            R23 10
      235 CALL                             R21 2 1
      236 SETTABLEKS                       R21 R20 K67 ["ListItemPadding"]
      238 GETIMPORT                        R21 K73 [UDim2.new]
      240 LOADN                            R22 0
      241 LOADN                            R23 160
      242 LOADN                            R24 0
      243 LOADN                            R25 32
      244 CALL                             R21 4 1
      245 SETTABLEKS                       R21 R20 K70 ["PrimaryButtonSize"]
      247 SETTABLEKS                       R20 R19 K74 ["MainView"]
      249 DUPTABLE                         R20 K76 [{"HelpIconPadding"}]
      250 GETIMPORT                        R21 K48 [UDim.new]
      252 LOADN                            R22 0
      253 LOADN                            R23 2
      254 CALL                             R21 2 1
      255 SETTABLEKS                       R21 R20 K75 ["HelpIconPadding"]
      257 SETTABLEKS                       R20 R19 K77 ["RelativeToSetting"]
      259 DUPTABLE                         R20 K83 [{["ItemContentPadding"], ["ItemPaddingHorizontal"], ["ItemPaddingVertical"], ["MaximumLabelWidth"] = 100, ["SectionPadding"]}]
      260 GETIMPORT                        R21 K48 [UDim.new]
      262 LOADN                            R22 0
      263 LOADN                            R23 10
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K78 ["ItemContentPadding"]
      267 GETIMPORT                        R21 K48 [UDim.new]
      269 LOADN                            R22 0
      270 LOADN                            R23 15
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K79 ["ItemPaddingHorizontal"]
      274 GETIMPORT                        R21 K48 [UDim.new]
      276 LOADN                            R22 0
      277 LOADN                            R23 8
      278 CALL                             R21 2 1
      279 SETTABLEKS                       R21 R20 K80 ["ItemPaddingVertical"]
      281 GETIMPORT                        R21 K48 [UDim.new]
      283 LOADN                            R22 0
      284 LOADN                            R23 15
      285 CALL                             R21 2 1
      286 SETTABLEKS                       R21 R20 K49 ["SectionPadding"]
      288 SETTABLEKS                       R20 R19 K84 ["LabeledElementList"]
      290 GETTABLEKS                       R20 R7 K85 ["Button"]
      292 MOVE                             R21 R12
      293 MOVE                             R22 R8
      294 LOADK                            R23 K85 ["Button"]
      295 CALL                             R22 1 1
      296 NEWTABLE                         R23 1 0
      298 NEWTABLE                         R24 4 0
      300 DUPTABLE                         R25 K89 [{["BorderSize"] = 1, ["Transparency"] = 1}]
      301 SETTABLEKS                       R25 R24 K90 ["BackgroundStyle"]
      303 GETTABLEKS                       R25 R10 K91 ["Hover"]
      305 DUPTABLE                         R26 K92 [{"BackgroundStyle"}]
      306 DUPTABLE                         R27 K96 [{["BorderColor"], ["BorderSize"] = 1, ["Color"], ["Transparency"] = 0}]
      307 GETTABLEKS                       R28 R6 K30 ["SelectableButtonBorderColor"]
      309 SETTABLEKS                       R28 R27 K93 ["BorderColor"]
      311 GETTABLEKS                       R28 R6 K97 ["ButtonHover"]
      313 SETTABLEKS                       R28 R27 K94 ["Color"]
      315 SETTABLEKS                       R27 R26 K90 ["BackgroundStyle"]
      317 SETTABLE                         R26 R24 R25
      318 GETTABLEKS                       R25 R10 K98 ["Selected"]
      320 DUPTABLE                         R26 K92 [{"BackgroundStyle"}]
      321 DUPTABLE                         R27 K96 [{["BorderColor"], ["BorderSize"] = 1, ["Color"], ["Transparency"] = 0}]
      322 GETTABLEKS                       R28 R6 K30 ["SelectableButtonBorderColor"]
      324 SETTABLEKS                       R28 R27 K93 ["BorderColor"]
      326 GETTABLEKS                       R28 R6 K32 ["SelectableButtonSelectedColor"]
      328 SETTABLEKS                       R28 R27 K94 ["Color"]
      330 SETTABLEKS                       R27 R26 K90 ["BackgroundStyle"]
      332 SETTABLE                         R26 R24 R25
      333 SETTABLEKS                       R24 R23 K99 ["&Selectable"]
      335 CALL                             R21 2 1
      336 SETTABLE                         R21 R19 R20
      337 GETTABLEKS                       R20 R7 K52 ["Image"]
      339 MOVE                             R21 R12
      340 MOVE                             R22 R8
      341 LOADK                            R23 K52 ["Image"]
      342 CALL                             R22 1 1
      343 NEWTABLE                         R23 1 0
      345 NEWTABLE                         R24 8 0
      347 GETIMPORT                        R25 K101 [Vector2.new]
      349 LOADK                            R26 K102 [0.5]
      350 LOADK                            R27 K102 [0.5]
      351 CALL                             R25 2 1
      352 SETTABLEKS                       R25 R24 K103 ["AnchorPoint"]
      354 GETTABLEKS                       R25 R6 K28 ["HelpIconColor"]
      356 SETTABLEKS                       R25 R24 K94 ["Color"]
      358 GETTABLEKS                       R25 R6 K40 ["Help"]
      360 SETTABLEKS                       R25 R24 K52 ["Image"]
      362 GETIMPORT                        R25 K73 [UDim2.new]
      364 LOADK                            R26 K102 [0.5]
      365 LOADN                            R27 0
      366 LOADK                            R28 K102 [0.5]
      367 LOADN                            R29 0
      368 CALL                             R25 4 1
      369 SETTABLEKS                       R25 R24 K104 ["Position"]
      371 GETIMPORT                        R25 K106 [UDim2.fromOffset]
      373 LOADN                            R26 14
      374 LOADN                            R27 14
      375 CALL                             R25 2 1
      376 SETTABLEKS                       R25 R24 K107 ["Size"]
      378 GETTABLEKS                       R25 R10 K108 ["Disabled"]
      380 DUPTABLE                         R26 K109 [{["Transparency"] = 0.5}]
      381 SETTABLE                         R26 R24 R25
      382 SETTABLEKS                       R24 R23 K110 ["&HelpIcon"]
      384 CALL                             R21 2 1
      385 SETTABLE                         R21 R19 R20
      386 DUPCLOSURE                       R20 K111 [PROTO_0]
      387 CAPTURE                          VAL R5
      388 CAPTURE                          VAL R17
      389 CAPTURE                          VAL R18
      390 CAPTURE                          VAL R19
      391 RETURN                           R20 1
