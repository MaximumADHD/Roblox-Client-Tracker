MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["Image"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K9 ["Components"]
       31 GETTABLEKS                       R4 R5 K11 ["Box"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["deepCopy"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R7 R0 K4 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["Cryo"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R9 R0 K2 ["UI"]
       52 GETTABLEKS                       R8 R9 K9 ["Components"]
       54 GETTABLEKS                       R7 R8 K15 ["UIFolderData"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R9 R6 K16 ["RoundBox"]
       61 GETTABLEKS                       R8 R9 K17 ["style"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R10 R6 K18 ["DEPRECATED_Button"]
       68 GETTABLEKS                       R9 R10 K17 ["style"]
       70 CALL                             R8 1 1
       71 MOVE                             R9 R4
       72 MOVE                             R10 R7
       73 CALL                             R9 1 1
       74 MOVE                             R10 R4
       75 MOVE                             R11 R8
       76 CALL                             R10 1 1
       77 DUPTABLE                         R11 K25 [{"BackgroundColor", "BackgroundStyle", "CloseButton", "ScrollingFrame", "AssetRenderMargin", "ButtonArea"}]
       78 GETTABLEKS                       R12 R1 K26 ["MainBackground"]
       80 SETTABLEKS                       R12 R11 K19 ["BackgroundColor"]
       82 SETTABLEKS                       R9 R11 K20 ["BackgroundStyle"]
       84 DUPTABLE                         R12 K30 [{"Position", "AnchorPoint", "Image", "Size"}]
       85 GETIMPORT                        R13 K33 [UDim2.new]
       87 LOADN                            R14 1
       88 LOADN                            R15 0
       89 LOADN                            R16 0
       90 LOADN                            R17 0
       91 CALL                             R13 4 1
       92 SETTABLEKS                       R13 R12 K27 ["Position"]
       94 GETIMPORT                        R13 K35 [Vector2.new]
       96 LOADN                            R14 0
       97 LOADN                            R15 1
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K28 ["AnchorPoint"]
      101 LOADK                            R13 K36 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
      102 SETTABLEKS                       R13 R12 K10 ["Image"]
      104 GETIMPORT                        R13 K38 [UDim2.fromOffset]
      106 LOADN                            R14 28
      107 LOADN                            R15 28
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K29 ["Size"]
      111 SETTABLEKS                       R12 R11 K21 ["CloseButton"]
      113 DUPTABLE                         R12 K48 [{"ElementPadding", "Padding", "AssetHeader", "AssetName", "AssetDescription", "CreatorName", "FlagAsset", "InfoRow", "SuggestionsSection"}]
      114 LOADN                            R13 10
      115 SETTABLEKS                       R13 R12 K39 ["ElementPadding"]
      117 DUPTABLE                         R13 K53 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      118 GETIMPORT                        R14 K55 [UDim.new]
      120 LOADN                            R15 0
      121 LOADN                            R16 5
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K49 ["PaddingTop"]
      125 GETIMPORT                        R14 K55 [UDim.new]
      127 LOADN                            R15 0
      128 LOADN                            R16 10
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K50 ["PaddingRight"]
      132 GETIMPORT                        R14 K55 [UDim.new]
      134 LOADN                            R15 0
      135 LOADN                            R16 25
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K51 ["PaddingBottom"]
      139 GETIMPORT                        R14 K55 [UDim.new]
      141 LOADN                            R15 0
      142 LOADN                            R16 15
      143 CALL                             R14 2 1
      144 SETTABLEKS                       R14 R13 K52 ["PaddingLeft"]
      146 SETTABLEKS                       R13 R12 K40 ["Padding"]
      148 DUPTABLE                         R13 K58 [{"Spacing", "VoteSpacing"}]
      149 LOADN                            R14 5
      150 SETTABLEKS                       R14 R13 K56 ["Spacing"]
      152 LOADN                            R14 4
      153 SETTABLEKS                       R14 R13 K57 ["VoteSpacing"]
      155 SETTABLEKS                       R13 R12 K41 ["AssetHeader"]
      157 DUPTABLE                         R13 K63 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      158 GETIMPORT                        R14 K66 [Enum.Font.SourceSansBold]
      160 SETTABLEKS                       R14 R13 K59 ["Font"]
      162 GETTABLEKS                       R14 R1 K67 ["MainText"]
      164 SETTABLEKS                       R14 R13 K60 ["TextColor"]
      166 LOADN                            R14 24
      167 SETTABLEKS                       R14 R13 K61 ["TextSize"]
      169 GETIMPORT                        R14 K69 [Enum.TextXAlignment.Left]
      171 SETTABLEKS                       R14 R13 K62 ["TextXAlignment"]
      173 SETTABLEKS                       R13 R12 K42 ["AssetName"]
      175 DUPTABLE                         R13 K63 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      176 GETIMPORT                        R14 K71 [Enum.Font.SourceSans]
      178 SETTABLEKS                       R14 R13 K59 ["Font"]
      180 GETTABLEKS                       R14 R1 K67 ["MainText"]
      182 SETTABLEKS                       R14 R13 K60 ["TextColor"]
      184 LOADN                            R14 18
      185 SETTABLEKS                       R14 R13 K61 ["TextSize"]
      187 GETIMPORT                        R14 K69 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R14 R13 K62 ["TextXAlignment"]
      191 SETTABLEKS                       R13 R12 K43 ["AssetDescription"]
      193 DUPTABLE                         R13 K63 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      194 GETIMPORT                        R14 K71 [Enum.Font.SourceSans]
      196 SETTABLEKS                       R14 R13 K59 ["Font"]
      198 GETTABLEKS                       R14 R1 K67 ["MainText"]
      200 SETTABLEKS                       R14 R13 K60 ["TextColor"]
      202 LOADN                            R14 18
      203 SETTABLEKS                       R14 R13 K61 ["TextSize"]
      205 GETIMPORT                        R14 K69 [Enum.TextXAlignment.Left]
      207 SETTABLEKS                       R14 R13 K62 ["TextXAlignment"]
      209 SETTABLEKS                       R13 R12 K44 ["CreatorName"]
      211 DUPTABLE                         R13 K73 [{"Image", "ImageColor3", "Size"}]
      212 LOADK                            R14 K74 ["rbxasset://textures/DeveloperFramework/AssetPreview/flag_rounded.png"]
      213 SETTABLEKS                       R14 R13 K10 ["Image"]
      215 GETTABLEKS                       R14 R1 K75 ["Icon"]
      217 SETTABLEKS                       R14 R13 K72 ["ImageColor3"]
      219 GETIMPORT                        R14 K38 [UDim2.fromOffset]
      221 LOADN                            R15 24
      222 LOADN                            R16 24
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K29 ["Size"]
      226 SETTABLEKS                       R13 R12 K45 ["FlagAsset"]
      228 DUPTABLE                         R13 K80 [{"CodeSummary", "Text", "LeftText", "RightText"}]
      229 DUPTABLE                         R14 K82 [{"BackgroundColor", "Padding", "DisclaimerText"}]
      230 GETTABLEKS                       R15 R1 K83 ["BackgroundPaper"]
      232 SETTABLEKS                       R15 R14 K19 ["BackgroundColor"]
      234 LOADN                            R15 12
      235 SETTABLEKS                       R15 R14 K40 ["Padding"]
      237 DUPTABLE                         R15 K63 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      238 GETIMPORT                        R16 K71 [Enum.Font.SourceSans]
      240 SETTABLEKS                       R16 R15 K59 ["Font"]
      242 GETTABLEKS                       R16 R1 K84 ["DimmedText"]
      244 SETTABLEKS                       R16 R15 K60 ["TextColor"]
      246 LOADN                            R16 16
      247 SETTABLEKS                       R16 R15 K61 ["TextSize"]
      249 GETIMPORT                        R16 K69 [Enum.TextXAlignment.Left]
      251 SETTABLEKS                       R16 R15 K62 ["TextXAlignment"]
      253 SETTABLEKS                       R15 R14 K81 ["DisclaimerText"]
      255 SETTABLEKS                       R14 R13 K76 ["CodeSummary"]
      257 DUPTABLE                         R14 K85 [{"Font", "TextColor", "TextSize"}]
      258 GETIMPORT                        R15 K71 [Enum.Font.SourceSans]
      260 SETTABLEKS                       R15 R14 K59 ["Font"]
      262 GETTABLEKS                       R15 R1 K67 ["MainText"]
      264 SETTABLEKS                       R15 R14 K60 ["TextColor"]
      266 LOADN                            R15 18
      267 SETTABLEKS                       R15 R14 K61 ["TextSize"]
      269 SETTABLEKS                       R14 R13 K77 ["Text"]
      271 DUPTABLE                         R14 K87 [{"Font", "TextColor", "TextSize", "TextTransparency", "TextXAlignment"}]
      272 GETIMPORT                        R15 K71 [Enum.Font.SourceSans]
      274 SETTABLEKS                       R15 R14 K59 ["Font"]
      276 GETTABLEKS                       R15 R1 K67 ["MainText"]
      278 SETTABLEKS                       R15 R14 K60 ["TextColor"]
      280 LOADN                            R15 18
      281 SETTABLEKS                       R15 R14 K61 ["TextSize"]
      283 LOADK                            R15 K88 [0.5]
      284 SETTABLEKS                       R15 R14 K86 ["TextTransparency"]
      286 GETIMPORT                        R15 K69 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R15 R14 K62 ["TextXAlignment"]
      290 SETTABLEKS                       R14 R13 K78 ["LeftText"]
      292 DUPTABLE                         R14 K90 [{"Font", "TextColor", "TextSize", "TextTruncate", "TextXAlignment"}]
      293 GETIMPORT                        R15 K71 [Enum.Font.SourceSans]
      295 SETTABLEKS                       R15 R14 K59 ["Font"]
      297 GETTABLEKS                       R15 R1 K67 ["MainText"]
      299 SETTABLEKS                       R15 R14 K60 ["TextColor"]
      301 LOADN                            R15 18
      302 SETTABLEKS                       R15 R14 K61 ["TextSize"]
      304 GETIMPORT                        R15 K92 [Enum.TextTruncate.AtEnd]
      306 SETTABLEKS                       R15 R14 K89 ["TextTruncate"]
      308 GETIMPORT                        R15 K94 [Enum.TextXAlignment.Right]
      310 SETTABLEKS                       R15 R14 K62 ["TextXAlignment"]
      312 SETTABLEKS                       R14 R13 K79 ["RightText"]
      314 SETTABLEKS                       R13 R12 K46 ["InfoRow"]
      316 DUPTABLE                         R13 K95 [{"Padding"}]
      317 DUPTABLE                         R14 K98 [{"Top", "Bottom"}]
      318 LOADN                            R15 5
      319 SETTABLEKS                       R15 R14 K96 ["Top"]
      321 LOADN                            R15 20
      322 SETTABLEKS                       R15 R14 K97 ["Bottom"]
      324 SETTABLEKS                       R14 R13 K40 ["Padding"]
      326 SETTABLEKS                       R13 R12 K47 ["SuggestionsSection"]
      328 SETTABLEKS                       R12 R11 K22 ["ScrollingFrame"]
      330 DUPTABLE                         R12 K99 [{"Top", "Right", "Bottom", "Left"}]
      331 LOADN                            R13 0
      332 SETTABLEKS                       R13 R12 K96 ["Top"]
      334 LOADN                            R13 246
      335 SETTABLEKS                       R13 R12 K93 ["Right"]
      337 LOADN                            R13 0
      338 SETTABLEKS                       R13 R12 K97 ["Bottom"]
      340 LOADN                            R13 241
      341 SETTABLEKS                       R13 R12 K68 ["Left"]
      343 SETTABLEKS                       R12 R11 K23 ["AssetRenderMargin"]
      345 DUPTABLE                         R12 K105 [{"ActionButtonHeight", "ElementPadding", "Padding", "Size", "Context", "Action", "ActionBuy", "ActionSubText"}]
      346 LOADN                            R13 30
      347 SETTABLEKS                       R13 R12 K100 ["ActionButtonHeight"]
      349 GETIMPORT                        R13 K55 [UDim.new]
      351 LOADN                            R14 0
      352 LOADN                            R15 10
      353 CALL                             R13 2 1
      354 SETTABLEKS                       R13 R12 K39 ["ElementPadding"]
      356 DUPTABLE                         R13 K53 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      357 GETIMPORT                        R14 K55 [UDim.new]
      359 LOADN                            R15 0
      360 LOADN                            R16 12
      361 CALL                             R14 2 1
      362 SETTABLEKS                       R14 R13 K49 ["PaddingTop"]
      364 GETIMPORT                        R14 K55 [UDim.new]
      366 LOADN                            R15 0
      367 LOADN                            R16 10
      368 CALL                             R14 2 1
      369 SETTABLEKS                       R14 R13 K50 ["PaddingRight"]
      371 GETIMPORT                        R14 K55 [UDim.new]
      373 LOADN                            R15 0
      374 LOADN                            R16 15
      375 CALL                             R14 2 1
      376 SETTABLEKS                       R14 R13 K51 ["PaddingBottom"]
      378 GETIMPORT                        R14 K55 [UDim.new]
      380 LOADN                            R15 0
      381 LOADN                            R16 12
      382 CALL                             R14 2 1
      383 SETTABLEKS                       R14 R13 K52 ["PaddingLeft"]
      385 SETTABLEKS                       R13 R12 K40 ["Padding"]
      387 GETIMPORT                        R13 K33 [UDim2.new]
      389 LOADN                            R14 1
      390 LOADN                            R15 0
      391 LOADN                            R16 0
      392 LOADN                            R17 52
      393 CALL                             R13 4 1
      394 SETTABLEKS                       R13 R12 K29 ["Size"]
      396 DUPTABLE                         R13 K109 [{"Size", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle"}]
      397 GETIMPORT                        R14 K38 [UDim2.fromOffset]
      399 LOADN                            R15 28
      400 LOADN                            R16 28
      401 CALL                             R14 2 1
      402 SETTABLEKS                       R14 R13 K29 ["Size"]
      404 SETTABLEKS                       R3 R13 K106 ["Background"]
      406 DUPTABLE                         R14 K112 [{"Color", "Transparency"}]
      407 GETTABLEKS                       R15 R1 K113 ["ImageButtonBackground"]
      409 SETTABLEKS                       R15 R14 K110 ["Color"]
      411 LOADN                            R15 0
      412 SETTABLEKS                       R15 R14 K111 ["Transparency"]
      414 SETTABLEKS                       R14 R13 K20 ["BackgroundStyle"]
      416 SETTABLEKS                       R2 R13 K107 ["Foreground"]
      418 DUPTABLE                         R14 K115 [{"AnchorPoint", "Image", "Position", "Size", "ScaleType"}]
      419 GETIMPORT                        R15 K35 [Vector2.new]
      421 LOADK                            R16 K88 [0.5]
      422 LOADK                            R17 K88 [0.5]
      423 CALL                             R15 2 1
      424 SETTABLEKS                       R15 R14 K28 ["AnchorPoint"]
      426 LOADK                            R15 K116 ["rbxasset://textures/DeveloperFramework/AssetPreview/more.png"]
      427 SETTABLEKS                       R15 R14 K10 ["Image"]
      429 GETIMPORT                        R15 K33 [UDim2.new]
      431 LOADK                            R16 K88 [0.5]
      432 LOADN                            R17 0
      433 LOADK                            R18 K88 [0.5]
      434 LOADN                            R19 0
      435 CALL                             R15 4 1
      436 SETTABLEKS                       R15 R14 K27 ["Position"]
      438 GETIMPORT                        R15 K33 [UDim2.new]
      440 LOADK                            R16 K117 [0.6]
      441 LOADN                            R17 0
      442 LOADK                            R18 K117 [0.6]
      443 LOADN                            R19 0
      444 CALL                             R15 4 1
      445 SETTABLEKS                       R15 R14 K29 ["Size"]
      447 GETIMPORT                        R15 K119 [Enum.ScaleType.Stretch]
      449 SETTABLEKS                       R15 R14 K114 ["ScaleType"]
      451 SETTABLEKS                       R14 R13 K108 ["ForegroundStyle"]
      453 SETTABLEKS                       R13 R12 K101 ["Context"]
      455 LOADK                            R13 K120 ["RoundPrimary"]
      456 SETTABLEKS                       R13 R12 K102 ["Action"]
      458 GETTABLEKS                       R14 R5 K121 ["Dictionary"]
      460 GETTABLEKS                       R13 R14 K122 ["join"]
      462 GETTABLEKS                       R14 R10 K123 ["&RoundPrimary"]
      464 DUPTABLE                         R15 K124 [{"Foreground", "ForegroundStyle", "TextSize"}]
      465 SETTABLEKS                       R2 R15 K107 ["Foreground"]
      467 DUPTABLE                         R16 K115 [{"AnchorPoint", "Image", "Position", "Size", "ScaleType"}]
      468 GETIMPORT                        R17 K35 [Vector2.new]
      470 LOADK                            R18 K88 [0.5]
      471 LOADK                            R19 K88 [0.5]
      472 CALL                             R17 2 1
      473 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
      475 LOADK                            R17 K125 ["rbxasset://textures/ui/common/robux_small.png"]
      476 SETTABLEKS                       R17 R16 K10 ["Image"]
      478 GETIMPORT                        R17 K33 [UDim2.new]
      480 LOADK                            R18 K126 [0.05]
      481 LOADN                            R19 0
      482 LOADK                            R20 K88 [0.5]
      483 LOADN                            R21 0
      484 CALL                             R17 4 1
      485 SETTABLEKS                       R17 R16 K27 ["Position"]
      487 GETIMPORT                        R17 K33 [UDim2.new]
      489 LOADN                            R18 0
      490 LOADN                            R19 16
      491 LOADK                            R20 K117 [0.6]
      492 LOADN                            R21 0
      493 CALL                             R17 4 1
      494 SETTABLEKS                       R17 R16 K29 ["Size"]
      496 GETIMPORT                        R17 K128 [Enum.ScaleType.Fit]
      498 SETTABLEKS                       R17 R16 K114 ["ScaleType"]
      500 SETTABLEKS                       R16 R15 K108 ["ForegroundStyle"]
      502 LOADN                            R16 18
      503 SETTABLEKS                       R16 R15 K61 ["TextSize"]
      505 CALL                             R13 2 1
      506 SETTABLEKS                       R13 R12 K103 ["ActionBuy"]
      508 DUPTABLE                         R13 K130 [{"SpacingTop", "TextSize", "TextColor"}]
      509 LOADN                            R14 4
      510 SETTABLEKS                       R14 R13 K129 ["SpacingTop"]
      512 LOADN                            R14 14
      513 SETTABLEKS                       R14 R13 K61 ["TextSize"]
      515 GETTABLEKS                       R14 R1 K131 ["ErrorText"]
      517 SETTABLEKS                       R14 R13 K60 ["TextColor"]
      519 SETTABLEKS                       R13 R12 K104 ["ActionSubText"]
      521 SETTABLEKS                       R12 R11 K24 ["ButtonArea"]
      523 RETURN                           R11 1
