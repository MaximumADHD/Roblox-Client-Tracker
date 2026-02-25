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
       27 GETTABLEKS                       R5 R3 K10 ["StyleKey"]
       29 GETTABLEKS                       R7 R2 K11 ["Util"]
       31 GETTABLEKS                       R6 R7 K12 ["StyleModifier"]
       33 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R9 R2 K14 ["UI"]
       37 GETTABLEKS                       R8 R9 K15 ["Image"]
       39 GETTABLEKS                       R9 R2 K16 ["UIData"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R12 R9 K17 ["Alert"]
       45 GETTABLEKS                       R11 R12 K18 ["style"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R13 R9 K19 ["Button"]
       52 GETTABLEKS                       R12 R13 K18 ["style"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K4 [require]
       57 GETTABLEKS                       R15 R0 K20 ["Src"]
       59 GETTABLEKS                       R14 R15 K11 ["Util"]
       61 GETTABLEKS                       R13 R14 K21 ["Constants"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R12 K22 ["PROMPT_HEIGHT"]
       66 GETTABLEKS                       R14 R12 K23 ["TOOLBAR_HEIGHT"]
       68 NEWTABLE                         R15 0 0
       70 LOADK                            R18 K24 ["LoadingButton"]
       71 NAMECALL                         R16 R7 K25 ["add"]
       73 CALL                             R16 2 0
       74 GETTABLEKS                       R16 R7 K24 ["LoadingButton"]
       76 DUPTABLE                         R17 K27 [{"LoadingIndicatorSize"}]
       77 GETIMPORT                        R18 K30 [UDim2.fromOffset]
       79 LOADN                            R19 24
       80 LOADN                            R20 16
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K26 ["LoadingIndicatorSize"]
       84 SETTABLE                         R17 R15 R16
       85 LOADK                            R18 K31 ["App"]
       86 NAMECALL                         R16 R7 K25 ["add"]
       88 CALL                             R16 2 0
       89 GETTABLEKS                       R16 R7 K31 ["App"]
       91 DUPTABLE                         R17 K35 [{"BrowserSize", "BrowserHiddenSize", "PromptSize"}]
       92 GETIMPORT                        R18 K37 [UDim2.new]
       94 LOADN                            R19 1
       95 LOADN                            R20 0
       96 LOADN                            R21 1
       97 MINUS                            R22 R13
       98 CALL                             R18 4 1
       99 SETTABLEKS                       R18 R17 K32 ["BrowserSize"]
      101 GETIMPORT                        R18 K37 [UDim2.new]
      103 LOADN                            R19 1
      104 LOADN                            R20 0
      105 LOADN                            R21 1
      106 MINUS                            R23 R13
      107 ADDK                             R22 R23 K38 [10]
      108 CALL                             R18 4 1
      109 SETTABLEKS                       R18 R17 K33 ["BrowserHiddenSize"]
      111 GETIMPORT                        R18 K37 [UDim2.new]
      113 LOADN                            R19 1
      114 LOADN                            R20 0
      115 LOADN                            R21 0
      116 MOVE                             R22 R13
      117 CALL                             R18 4 1
      118 SETTABLEKS                       R18 R17 K34 ["PromptSize"]
      120 SETTABLE                         R17 R15 R16
      121 LOADK                            R18 K39 ["Prompt"]
      122 NAMECALL                         R16 R7 K25 ["add"]
      124 CALL                             R16 2 0
      125 GETTABLEKS                       R16 R7 K39 ["Prompt"]
      127 DUPTABLE                         R17 K44 [{"BackgroundColor", "MultiLine", "Padding", "PromptToolbarSize"}]
      128 GETTABLEKS                       R18 R5 K45 ["Titlebar"]
      130 SETTABLEKS                       R18 R17 K40 ["BackgroundColor"]
      132 LOADB                            R18 1
      133 SETTABLEKS                       R18 R17 K41 ["MultiLine"]
      135 LOADN                            R18 8
      136 SETTABLEKS                       R18 R17 K42 ["Padding"]
      138 GETIMPORT                        R18 K37 [UDim2.new]
      140 LOADN                            R19 1
      141 LOADN                            R20 0
      142 LOADN                            R21 0
      143 MOVE                             R22 R14
      144 CALL                             R18 4 1
      145 SETTABLEKS                       R18 R17 K43 ["PromptToolbarSize"]
      147 SETTABLE                         R17 R15 R16
      148 LOADK                            R18 K46 ["PromptToolbar"]
      149 NAMECALL                         R16 R7 K25 ["add"]
      151 CALL                             R16 2 0
      152 GETTABLEKS                       R16 R7 K46 ["PromptToolbar"]
      154 DUPTABLE                         R17 K48 [{"GenerateButtonSize"}]
      155 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      157 LOADN                            R19 80
      158 LOADN                            R20 32
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K47 ["GenerateButtonSize"]
      162 SETTABLE                         R17 R15 R16
      163 LOADK                            R18 K49 ["Browser"]
      164 NAMECALL                         R16 R7 K25 ["add"]
      166 CALL                             R16 2 0
      167 GETTABLEKS                       R16 R7 K49 ["Browser"]
      169 DUPTABLE                         R17 K54 [{"CellGroupHeader", "Padding", "StatusIconImageColor", "StatusIconPosition", "StatusIconSize"}]
      170 DUPTABLE                         R18 K58 [{"AfterContent", "Collapsible", "Size"}]
      171 LOADB                            R19 1
      172 SETTABLEKS                       R19 R18 K55 ["AfterContent"]
      174 LOADB                            R19 0
      175 SETTABLEKS                       R19 R18 K56 ["Collapsible"]
      177 GETIMPORT                        R19 K37 [UDim2.new]
      179 LOADN                            R20 1
      180 LOADN                            R21 0
      181 LOADN                            R22 0
      182 MOVE                             R23 R14
      183 CALL                             R19 4 1
      184 SETTABLEKS                       R19 R18 K57 ["Size"]
      186 SETTABLEKS                       R18 R17 K50 ["CellGroupHeader"]
      188 LOADN                            R18 4
      189 SETTABLEKS                       R18 R17 K42 ["Padding"]
      191 GETTABLEKS                       R18 R4 K59 ["Gray_Light"]
      193 SETTABLEKS                       R18 R17 K51 ["StatusIconImageColor"]
      195 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      197 LOADN                            R19 6
      198 LOADN                            R20 6
      199 CALL                             R18 2 1
      200 SETTABLEKS                       R18 R17 K52 ["StatusIconPosition"]
      202 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      204 LOADN                            R19 16
      205 LOADN                            R20 16
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K53 ["StatusIconSize"]
      209 SETTABLE                         R17 R15 R16
      210 LOADK                            R18 K60 ["PromptGroupFooter"]
      211 NAMECALL                         R16 R7 K25 ["add"]
      213 CALL                             R16 2 0
      214 GETTABLEKS                       R16 R7 K60 ["PromptGroupFooter"]
      216 DUPTABLE                         R17 K68 [{"BackgroundColor", "ButtonColor", "ButtonImageSize", "ButtonSize", "ButtonSpacing", "CopyPromptButtonImage", "CornerRadius", "Padding", "Style", "TextColor"}]
      217 GETTABLEKS                       R18 R5 K69 ["ForegroundContrast"]
      219 SETTABLEKS                       R18 R17 K40 ["BackgroundColor"]
      221 GETTABLEKS                       R18 R5 K70 ["TextSecondary"]
      223 SETTABLEKS                       R18 R17 K61 ["ButtonColor"]
      225 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      227 LOADN                            R19 16
      228 LOADN                            R20 16
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K62 ["ButtonImageSize"]
      232 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      234 LOADN                            R19 24
      235 LOADN                            R20 24
      236 CALL                             R18 2 1
      237 SETTABLEKS                       R18 R17 K63 ["ButtonSize"]
      239 LOADN                            R18 4
      240 SETTABLEKS                       R18 R17 K64 ["ButtonSpacing"]
      242 LOADK                            R18 K71 ["rbxasset://textures/MaterialGenerator/Copy_16x16.png"]
      243 SETTABLEKS                       R18 R17 K65 ["CopyPromptButtonImage"]
      245 GETIMPORT                        R18 K73 [UDim.new]
      247 LOADN                            R19 0
      248 LOADN                            R20 4
      249 CALL                             R18 2 1
      250 SETTABLEKS                       R18 R17 K66 ["CornerRadius"]
      252 DUPTABLE                         R18 K76 [{"Left", "Right"}]
      253 LOADN                            R19 6
      254 SETTABLEKS                       R19 R18 K74 ["Left"]
      256 LOADN                            R19 4
      257 SETTABLEKS                       R19 R18 K75 ["Right"]
      259 SETTABLEKS                       R18 R17 K42 ["Padding"]
      261 LOADK                            R18 K77 ["RoundBox"]
      262 SETTABLEKS                       R18 R17 K8 ["Style"]
      264 GETTABLEKS                       R18 R5 K70 ["TextSecondary"]
      266 SETTABLEKS                       R18 R17 K67 ["TextColor"]
      268 SETTABLE                         R17 R15 R16
      269 LOADK                            R18 K78 ["Editor"]
      270 NAMECALL                         R16 R7 K25 ["add"]
      272 CALL                             R16 2 0
      273 GETTABLEKS                       R16 R7 K78 ["Editor"]
      275 DUPTABLE                         R17 K92 [{"ApplyButtonBackgroundColor", "ApplyButtonIcon", "ApplyButtonSize", "CloseButtonSize", "LabelWidth", "Padding", "PreviewBackgroundColor", "PreviewHeight", "PreviewTileSize", "SettingsPadding", "SettingSpacing", "StudsPerTileSettingSize", "UploadAndApplyButtonIcon", "UploadAndApplyButtonSize"}]
      276 GETTABLEKS                       R18 R5 K19 ["Button"]
      278 SETTABLEKS                       R18 R17 K79 ["ApplyButtonBackgroundColor"]
      280 LOADK                            R18 K93 ["rbxasset://textures/MaterialManager/Apply_to_Selection.png"]
      281 SETTABLEKS                       R18 R17 K80 ["ApplyButtonIcon"]
      283 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      285 LOADN                            R19 0
      286 LOADN                            R20 32
      287 CALL                             R18 2 1
      288 SETTABLEKS                       R18 R17 K81 ["ApplyButtonSize"]
      290 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      292 LOADN                            R19 24
      293 LOADN                            R20 24
      294 CALL                             R18 2 1
      295 SETTABLEKS                       R18 R17 K82 ["CloseButtonSize"]
      297 LOADN                            R18 100
      298 SETTABLEKS                       R18 R17 K83 ["LabelWidth"]
      300 LOADN                            R18 8
      301 SETTABLEKS                       R18 R17 K42 ["Padding"]
      303 GETTABLEKS                       R18 R5 K94 ["ScrollBarBackground"]
      305 SETTABLEKS                       R18 R17 K84 ["PreviewBackgroundColor"]
      307 LOADN                            R18 44
      308 SETTABLEKS                       R18 R17 K85 ["PreviewHeight"]
      310 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      312 LOADN                            R19 192
      313 LOADN                            R20 192
      314 CALL                             R18 2 1
      315 SETTABLEKS                       R18 R17 K86 ["PreviewTileSize"]
      317 DUPTABLE                         R18 K97 [{"Left", "Right", "Top", "Bottom"}]
      318 LOADN                            R19 10
      319 SETTABLEKS                       R19 R18 K74 ["Left"]
      321 LOADN                            R19 10
      322 SETTABLEKS                       R19 R18 K75 ["Right"]
      324 LOADN                            R19 10
      325 SETTABLEKS                       R19 R18 K95 ["Top"]
      327 LOADN                            R19 30
      328 SETTABLEKS                       R19 R18 K96 ["Bottom"]
      330 SETTABLEKS                       R18 R17 K87 ["SettingsPadding"]
      332 LOADN                            R18 8
      333 SETTABLEKS                       R18 R17 K88 ["SettingSpacing"]
      335 GETIMPORT                        R18 K37 [UDim2.new]
      337 LOADN                            R19 1
      338 LOADN                            R20 0
      339 LOADN                            R21 0
      340 LOADN                            R22 30
      341 CALL                             R18 4 1
      342 SETTABLEKS                       R18 R17 K89 ["StudsPerTileSettingSize"]
      344 LOADK                            R18 K98 ["rbxasset://textures/MaterialGenerator/Submit_16x16.png"]
      345 SETTABLEKS                       R18 R17 K90 ["UploadAndApplyButtonIcon"]
      347 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      349 LOADN                            R19 180
      350 LOADN                            R20 32
      351 CALL                             R18 2 1
      352 SETTABLEKS                       R18 R17 K91 ["UploadAndApplyButtonSize"]
      354 SETTABLE                         R17 R15 R16
      355 LOADK                            R18 K99 ["Setting"]
      356 NAMECALL                         R16 R7 K25 ["add"]
      358 CALL                             R16 2 0
      359 GETTABLEKS                       R16 R7 K99 ["Setting"]
      361 DUPTABLE                         R17 K102 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
      362 LOADN                            R18 16
      363 SETTABLEKS                       R18 R17 K100 ["HorizontalSpacing"]
      365 GETIMPORT                        R18 K37 [UDim2.new]
      367 LOADN                            R19 1
      368 LOADN                            R20 0
      369 LOADN                            R21 0
      370 LOADN                            R22 30
      371 CALL                             R18 4 1
      372 SETTABLEKS                       R18 R17 K57 ["Size"]
      374 LOADN                            R18 30
      375 SETTABLEKS                       R18 R17 K101 ["ValueLabelWidth"]
      377 SETTABLE                         R17 R15 R16
      378 GETTABLEKS                       R16 R7 K17 ["Alert"]
      380 GETTABLEKS                       R17 R1 K103 ["join"]
      382 MOVE                             R18 R10
      383 NEWTABLE                         R19 1 0
      385 GETTABLEKS                       R20 R1 K103 ["join"]
      387 GETTABLEKS                       R21 R10 K104 ["&Error"]
      389 DUPTABLE                         R22 K107 [{"HorizontalPadding", "MaxWidth"}]
      390 GETIMPORT                        R23 K73 [UDim.new]
      392 LOADN                            R24 0
      393 LOADN                            R25 16
      394 CALL                             R23 2 1
      395 SETTABLEKS                       R23 R22 K105 ["HorizontalPadding"]
      397 LOADK                            R23 K108 [∞]
      398 SETTABLEKS                       R23 R22 K106 ["MaxWidth"]
      400 CALL                             R20 2 1
      401 SETTABLEKS                       R20 R19 K109 ["&AppError"]
      403 CALL                             R17 2 1
      404 SETTABLE                         R17 R15 R16
      405 DUPTABLE                         R16 K111 [{"Color", "Image", "Size"}]
      406 GETTABLEKS                       R17 R5 K112 ["ErrorText"]
      408 SETTABLEKS                       R17 R16 K110 ["Color"]
      410 LOADK                            R17 K113 ["rbxasset://textures/DevConsole/Close.png"]
      411 SETTABLEKS                       R17 R16 K15 ["Image"]
      413 GETIMPORT                        R17 K115 [UDim2.fromScale]
      415 LOADN                            R18 1
      416 LOADN                            R19 1
      417 CALL                             R17 2 1
      418 SETTABLEKS                       R17 R16 K57 ["Size"]
      420 GETTABLEKS                       R17 R7 K19 ["Button"]
      422 GETTABLEKS                       R18 R1 K103 ["join"]
      424 MOVE                             R19 R11
      425 NEWTABLE                         R20 2 0
      427 NEWTABLE                         R21 4 0
      429 SETTABLEKS                       R8 R21 K116 ["Background"]
      431 DUPTABLE                         R22 K119 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
      432 GETIMPORT                        R23 K121 [Vector2.new]
      434 LOADK                            R24 K122 [0.5]
      435 LOADK                            R25 K122 [0.5]
      436 CALL                             R23 2 1
      437 SETTABLEKS                       R23 R22 K117 ["AnchorPoint"]
      439 LOADK                            R23 K123 ["rbxasset://textures/ui/TopBar/close.png"]
      440 SETTABLEKS                       R23 R22 K15 ["Image"]
      442 GETTABLEKS                       R23 R5 K124 ["ButtonText"]
      444 SETTABLEKS                       R23 R22 K110 ["Color"]
      446 GETIMPORT                        R23 K115 [UDim2.fromScale]
      448 LOADK                            R24 K122 [0.5]
      449 LOADK                            R25 K122 [0.5]
      450 CALL                             R23 2 1
      451 SETTABLEKS                       R23 R22 K118 ["Position"]
      453 GETIMPORT                        R23 K30 [UDim2.fromOffset]
      455 LOADN                            R24 18
      456 LOADN                            R25 18
      457 CALL                             R23 2 1
      458 SETTABLEKS                       R23 R22 K57 ["Size"]
      460 SETTABLEKS                       R22 R21 K125 ["BackgroundStyle"]
      462 GETTABLEKS                       R22 R6 K126 ["Hover"]
      464 DUPTABLE                         R23 K127 [{"BackgroundStyle"}]
      465 DUPTABLE                         R24 K119 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
      466 GETIMPORT                        R25 K121 [Vector2.new]
      468 LOADK                            R26 K122 [0.5]
      469 LOADK                            R27 K122 [0.5]
      470 CALL                             R25 2 1
      471 SETTABLEKS                       R25 R24 K117 ["AnchorPoint"]
      473 LOADK                            R25 K123 ["rbxasset://textures/ui/TopBar/close.png"]
      474 SETTABLEKS                       R25 R24 K15 ["Image"]
      476 GETTABLEKS                       R25 R5 K128 ["BrightText"]
      478 SETTABLEKS                       R25 R24 K110 ["Color"]
      480 GETIMPORT                        R25 K115 [UDim2.fromScale]
      482 LOADK                            R26 K122 [0.5]
      483 LOADK                            R27 K122 [0.5]
      484 CALL                             R25 2 1
      485 SETTABLEKS                       R25 R24 K118 ["Position"]
      487 GETIMPORT                        R25 K30 [UDim2.fromOffset]
      489 LOADN                            R26 18
      490 LOADN                            R27 18
      491 CALL                             R25 2 1
      492 SETTABLEKS                       R25 R24 K57 ["Size"]
      494 SETTABLEKS                       R24 R23 K125 ["BackgroundStyle"]
      496 SETTABLE                         R23 R21 R22
      497 SETTABLEKS                       R21 R20 K129 ["&Close"]
      499 NEWTABLE                         R21 4 0
      501 SETTABLEKS                       R8 R21 K116 ["Background"]
      503 SETTABLEKS                       R16 R21 K125 ["BackgroundStyle"]
      505 GETTABLEKS                       R22 R6 K126 ["Hover"]
      507 DUPTABLE                         R23 K127 [{"BackgroundStyle"}]
      508 SETTABLEKS                       R16 R23 K125 ["BackgroundStyle"]
      510 SETTABLE                         R23 R21 R22
      511 SETTABLEKS                       R21 R20 K130 ["&ErrorClose"]
      513 CALL                             R18 2 1
      514 SETTABLE                         R18 R15 R17
      515 RETURN                           R15 1
