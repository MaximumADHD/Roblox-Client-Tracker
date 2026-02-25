PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Style"]
       25 GETTABLEKS                       R4 R3 K9 ["Colors"]
       27 GETTABLEKS                       R6 R3 K10 ["Themes"]
       29 GETTABLEKS                       R5 R6 K11 ["StudioTheme"]
       31 GETTABLEKS                       R6 R3 K12 ["StyleKey"]
       33 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R8 R3 K14 ["getRawComponentStyle"]
       37 GETTABLEKS                       R9 R2 K15 ["Util"]
       39 GETTABLEKS                       R10 R9 K16 ["StyleModifier"]
       41 GETIMPORT                        R11 K4 [require]
       43 GETTABLEKS                       R14 R0 K17 ["Src"]
       45 GETTABLEKS                       R13 R14 K18 ["Utility"]
       47 GETTABLEKS                       R12 R13 K19 ["AlignmentMode"]
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
      230 DUPTABLE                         R20 K70 [{"ListItemPadding", "Padding", "PrimaryButtonSize"}]
      231 GETIMPORT                        R21 K48 [UDim.new]
      233 LOADN                            R22 0
      234 LOADN                            R23 10
      235 CALL                             R21 2 1
      236 SETTABLEKS                       R21 R20 K67 ["ListItemPadding"]
      238 LOADN                            R21 10
      239 SETTABLEKS                       R21 R20 K68 ["Padding"]
      241 GETIMPORT                        R21 K72 [UDim2.new]
      243 LOADN                            R22 0
      244 LOADN                            R23 160
      245 LOADN                            R24 0
      246 LOADN                            R25 32
      247 CALL                             R21 4 1
      248 SETTABLEKS                       R21 R20 K69 ["PrimaryButtonSize"]
      250 SETTABLEKS                       R20 R19 K73 ["MainView"]
      252 DUPTABLE                         R20 K75 [{"HelpIconPadding"}]
      253 GETIMPORT                        R21 K48 [UDim.new]
      255 LOADN                            R22 0
      256 LOADN                            R23 2
      257 CALL                             R21 2 1
      258 SETTABLEKS                       R21 R20 K74 ["HelpIconPadding"]
      260 SETTABLEKS                       R20 R19 K76 ["RelativeToSetting"]
      262 DUPTABLE                         R20 K81 [{"ItemContentPadding", "ItemPaddingHorizontal", "ItemPaddingVertical", "MaximumLabelWidth", "SectionPadding"}]
      263 GETIMPORT                        R21 K48 [UDim.new]
      265 LOADN                            R22 0
      266 LOADN                            R23 10
      267 CALL                             R21 2 1
      268 SETTABLEKS                       R21 R20 K77 ["ItemContentPadding"]
      270 GETIMPORT                        R21 K48 [UDim.new]
      272 LOADN                            R22 0
      273 LOADN                            R23 15
      274 CALL                             R21 2 1
      275 SETTABLEKS                       R21 R20 K78 ["ItemPaddingHorizontal"]
      277 GETIMPORT                        R21 K48 [UDim.new]
      279 LOADN                            R22 0
      280 LOADN                            R23 8
      281 CALL                             R21 2 1
      282 SETTABLEKS                       R21 R20 K79 ["ItemPaddingVertical"]
      284 LOADN                            R21 100
      285 SETTABLEKS                       R21 R20 K80 ["MaximumLabelWidth"]
      287 GETIMPORT                        R21 K48 [UDim.new]
      289 LOADN                            R22 0
      290 LOADN                            R23 15
      291 CALL                             R21 2 1
      292 SETTABLEKS                       R21 R20 K49 ["SectionPadding"]
      294 SETTABLEKS                       R20 R19 K82 ["LabeledElementList"]
      296 GETTABLEKS                       R20 R7 K83 ["Button"]
      298 MOVE                             R21 R12
      299 MOVE                             R22 R8
      300 LOADK                            R23 K83 ["Button"]
      301 CALL                             R22 1 1
      302 NEWTABLE                         R23 1 0
      304 NEWTABLE                         R24 4 0
      306 DUPTABLE                         R25 K86 [{"BorderSize", "Transparency"}]
      307 LOADN                            R26 1
      308 SETTABLEKS                       R26 R25 K84 ["BorderSize"]
      310 LOADN                            R26 1
      311 SETTABLEKS                       R26 R25 K85 ["Transparency"]
      313 SETTABLEKS                       R25 R24 K87 ["BackgroundStyle"]
      315 GETTABLEKS                       R25 R10 K88 ["Hover"]
      317 DUPTABLE                         R26 K89 [{"BackgroundStyle"}]
      318 DUPTABLE                         R27 K92 [{"BorderColor", "BorderSize", "Color", "Transparency"}]
      319 GETTABLEKS                       R28 R6 K30 ["SelectableButtonBorderColor"]
      321 SETTABLEKS                       R28 R27 K90 ["BorderColor"]
      323 LOADN                            R28 1
      324 SETTABLEKS                       R28 R27 K84 ["BorderSize"]
      326 GETTABLEKS                       R28 R6 K93 ["ButtonHover"]
      328 SETTABLEKS                       R28 R27 K91 ["Color"]
      330 LOADN                            R28 0
      331 SETTABLEKS                       R28 R27 K85 ["Transparency"]
      333 SETTABLEKS                       R27 R26 K87 ["BackgroundStyle"]
      335 SETTABLE                         R26 R24 R25
      336 GETTABLEKS                       R25 R10 K94 ["Selected"]
      338 DUPTABLE                         R26 K89 [{"BackgroundStyle"}]
      339 DUPTABLE                         R27 K92 [{"BorderColor", "BorderSize", "Color", "Transparency"}]
      340 GETTABLEKS                       R28 R6 K30 ["SelectableButtonBorderColor"]
      342 SETTABLEKS                       R28 R27 K90 ["BorderColor"]
      344 LOADN                            R28 1
      345 SETTABLEKS                       R28 R27 K84 ["BorderSize"]
      347 GETTABLEKS                       R28 R6 K32 ["SelectableButtonSelectedColor"]
      349 SETTABLEKS                       R28 R27 K91 ["Color"]
      351 LOADN                            R28 0
      352 SETTABLEKS                       R28 R27 K85 ["Transparency"]
      354 SETTABLEKS                       R27 R26 K87 ["BackgroundStyle"]
      356 SETTABLE                         R26 R24 R25
      357 SETTABLEKS                       R24 R23 K95 ["&Selectable"]
      359 CALL                             R21 2 1
      360 SETTABLE                         R21 R19 R20
      361 GETTABLEKS                       R20 R7 K52 ["Image"]
      363 MOVE                             R21 R12
      364 MOVE                             R22 R8
      365 LOADK                            R23 K52 ["Image"]
      366 CALL                             R22 1 1
      367 NEWTABLE                         R23 1 0
      369 NEWTABLE                         R24 8 0
      371 GETIMPORT                        R25 K97 [Vector2.new]
      373 LOADK                            R26 K98 [0.5]
      374 LOADK                            R27 K98 [0.5]
      375 CALL                             R25 2 1
      376 SETTABLEKS                       R25 R24 K99 ["AnchorPoint"]
      378 GETTABLEKS                       R25 R6 K28 ["HelpIconColor"]
      380 SETTABLEKS                       R25 R24 K91 ["Color"]
      382 GETTABLEKS                       R25 R6 K40 ["Help"]
      384 SETTABLEKS                       R25 R24 K52 ["Image"]
      386 GETIMPORT                        R25 K72 [UDim2.new]
      388 LOADK                            R26 K98 [0.5]
      389 LOADN                            R27 0
      390 LOADK                            R28 K98 [0.5]
      391 LOADN                            R29 0
      392 CALL                             R25 4 1
      393 SETTABLEKS                       R25 R24 K100 ["Position"]
      395 GETIMPORT                        R25 K102 [UDim2.fromOffset]
      397 LOADN                            R26 14
      398 LOADN                            R27 14
      399 CALL                             R25 2 1
      400 SETTABLEKS                       R25 R24 K103 ["Size"]
      402 GETTABLEKS                       R25 R10 K104 ["Disabled"]
      404 DUPTABLE                         R26 K105 [{"Transparency"}]
      405 LOADK                            R27 K98 [0.5]
      406 SETTABLEKS                       R27 R26 K85 ["Transparency"]
      408 SETTABLE                         R26 R24 R25
      409 SETTABLEKS                       R24 R23 K106 ["&HelpIcon"]
      411 CALL                             R21 2 1
      412 SETTABLE                         R21 R19 R20
      413 DUPCLOSURE                       R20 K107 [PROTO_0]
      414 CAPTURE                          VAL R5
      415 CAPTURE                          VAL R17
      416 CAPTURE                          VAL R18
      417 CAPTURE                          VAL R19
      418 RETURN                           R20 1
