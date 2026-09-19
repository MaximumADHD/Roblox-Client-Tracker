MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Image"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["Box"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["deepCopy"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K4 ["Parent"]
       45 GETTABLEKS                       R6 R6 K14 ["Cryo"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K2 ["UI"]
       52 GETTABLEKS                       R7 R7 K9 ["Components"]
       54 GETTABLEKS                       R7 R7 K15 ["UIFolderData"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R8 R6 K16 ["RoundBox"]
       61 GETTABLEKS                       R8 R8 K17 ["style"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R9 R6 K18 ["DEPRECATED_Button"]
       68 GETTABLEKS                       R9 R9 K17 ["style"]
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
       84 DUPTABLE                         R12 K31 [{["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png", ["Size"]}]
       85 GETIMPORT                        R13 K34 [UDim2.new]
       87 LOADN                            R14 1
       88 LOADN                            R15 0
       89 LOADN                            R16 0
       90 LOADN                            R17 0
       91 CALL                             R13 4 1
       92 SETTABLEKS                       R13 R12 K27 ["Position"]
       94 GETIMPORT                        R13 K36 [Vector2.new]
       96 LOADN                            R14 0
       97 LOADN                            R15 1
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K28 ["AnchorPoint"]
      101 GETIMPORT                        R13 K38 [UDim2.fromOffset]
      103 LOADN                            R14 28
      104 LOADN                            R15 28
      105 CALL                             R13 2 1
      106 SETTABLEKS                       R13 R12 K30 ["Size"]
      108 SETTABLEKS                       R12 R11 K21 ["CloseButton"]
      110 DUPTABLE                         R12 K49 [{["ElementPadding"] = 10, ["Padding"], ["AssetHeader"], ["AssetName"], ["AssetDescription"], ["CreatorName"], ["FlagAsset"], ["InfoRow"], ["SuggestionsSection"]}]
      111 DUPTABLE                         R13 K54 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      112 GETIMPORT                        R14 K56 [UDim.new]
      114 LOADN                            R15 0
      115 LOADN                            R16 5
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K50 ["PaddingTop"]
      119 GETIMPORT                        R14 K56 [UDim.new]
      121 LOADN                            R15 0
      122 LOADN                            R16 10
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K51 ["PaddingRight"]
      126 GETIMPORT                        R14 K56 [UDim.new]
      128 LOADN                            R15 0
      129 LOADN                            R16 25
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K52 ["PaddingBottom"]
      133 GETIMPORT                        R14 K56 [UDim.new]
      135 LOADN                            R15 0
      136 LOADN                            R16 15
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K53 ["PaddingLeft"]
      140 SETTABLEKS                       R13 R12 K41 ["Padding"]
      142 DUPTABLE                         R13 K61 [{["Spacing"] = 5, ["VoteSpacing"] = 4}]
      143 SETTABLEKS                       R13 R12 K42 ["AssetHeader"]
      145 DUPTABLE                         R13 K67 [{["Font"], ["TextColor"], ["TextSize"] = 24, ["TextXAlignment"]}]
      146 GETIMPORT                        R14 K70 [Enum.Font.SourceSansBold]
      148 SETTABLEKS                       R14 R13 K62 ["Font"]
      150 GETTABLEKS                       R14 R1 K71 ["MainText"]
      152 SETTABLEKS                       R14 R13 K63 ["TextColor"]
      154 GETIMPORT                        R14 K73 [Enum.TextXAlignment.Left]
      156 SETTABLEKS                       R14 R13 K66 ["TextXAlignment"]
      158 SETTABLEKS                       R13 R12 K43 ["AssetName"]
      160 DUPTABLE                         R13 K75 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextXAlignment"]}]
      161 GETIMPORT                        R14 K77 [Enum.Font.SourceSans]
      163 SETTABLEKS                       R14 R13 K62 ["Font"]
      165 GETTABLEKS                       R14 R1 K71 ["MainText"]
      167 SETTABLEKS                       R14 R13 K63 ["TextColor"]
      169 GETIMPORT                        R14 K73 [Enum.TextXAlignment.Left]
      171 SETTABLEKS                       R14 R13 K66 ["TextXAlignment"]
      173 SETTABLEKS                       R13 R12 K44 ["AssetDescription"]
      175 DUPTABLE                         R13 K75 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextXAlignment"]}]
      176 GETIMPORT                        R14 K77 [Enum.Font.SourceSans]
      178 SETTABLEKS                       R14 R13 K62 ["Font"]
      180 GETTABLEKS                       R14 R1 K71 ["MainText"]
      182 SETTABLEKS                       R14 R13 K63 ["TextColor"]
      184 GETIMPORT                        R14 K73 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R14 R13 K66 ["TextXAlignment"]
      188 SETTABLEKS                       R13 R12 K45 ["CreatorName"]
      190 DUPTABLE                         R13 K80 [{["Image"] = "rbxasset://textures/DeveloperFramework/AssetPreview/flag_rounded.png", ["ImageColor3"], ["Size"]}]
      191 GETTABLEKS                       R14 R1 K81 ["Icon"]
      193 SETTABLEKS                       R14 R13 K79 ["ImageColor3"]
      195 GETIMPORT                        R14 K38 [UDim2.fromOffset]
      197 LOADN                            R15 24
      198 LOADN                            R16 24
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K30 ["Size"]
      202 SETTABLEKS                       R13 R12 K46 ["FlagAsset"]
      204 DUPTABLE                         R13 K86 [{"CodeSummary", "Text", "LeftText", "RightText"}]
      205 DUPTABLE                         R14 K89 [{["BackgroundColor"], ["Padding"] = 12, ["DisclaimerText"]}]
      206 GETTABLEKS                       R15 R1 K90 ["BackgroundPaper"]
      208 SETTABLEKS                       R15 R14 K19 ["BackgroundColor"]
      210 DUPTABLE                         R15 K92 [{["Font"], ["TextColor"], ["TextSize"] = 16, ["TextXAlignment"]}]
      211 GETIMPORT                        R16 K77 [Enum.Font.SourceSans]
      213 SETTABLEKS                       R16 R15 K62 ["Font"]
      215 GETTABLEKS                       R16 R1 K93 ["DimmedText"]
      217 SETTABLEKS                       R16 R15 K63 ["TextColor"]
      219 GETIMPORT                        R16 K73 [Enum.TextXAlignment.Left]
      221 SETTABLEKS                       R16 R15 K66 ["TextXAlignment"]
      223 SETTABLEKS                       R15 R14 K88 ["DisclaimerText"]
      225 SETTABLEKS                       R14 R13 K82 ["CodeSummary"]
      227 DUPTABLE                         R14 K94 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
      228 GETIMPORT                        R15 K77 [Enum.Font.SourceSans]
      230 SETTABLEKS                       R15 R14 K62 ["Font"]
      232 GETTABLEKS                       R15 R1 K71 ["MainText"]
      234 SETTABLEKS                       R15 R14 K63 ["TextColor"]
      236 SETTABLEKS                       R14 R13 K83 ["Text"]
      238 DUPTABLE                         R14 K97 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextTransparency"] = 0.5, ["TextXAlignment"]}]
      239 GETIMPORT                        R15 K77 [Enum.Font.SourceSans]
      241 SETTABLEKS                       R15 R14 K62 ["Font"]
      243 GETTABLEKS                       R15 R1 K71 ["MainText"]
      245 SETTABLEKS                       R15 R14 K63 ["TextColor"]
      247 GETIMPORT                        R15 K73 [Enum.TextXAlignment.Left]
      249 SETTABLEKS                       R15 R14 K66 ["TextXAlignment"]
      251 SETTABLEKS                       R14 R13 K84 ["LeftText"]
      253 DUPTABLE                         R14 K99 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextTruncate"], ["TextXAlignment"]}]
      254 GETIMPORT                        R15 K77 [Enum.Font.SourceSans]
      256 SETTABLEKS                       R15 R14 K62 ["Font"]
      258 GETTABLEKS                       R15 R1 K71 ["MainText"]
      260 SETTABLEKS                       R15 R14 K63 ["TextColor"]
      262 GETIMPORT                        R15 K101 [Enum.TextTruncate.AtEnd]
      264 SETTABLEKS                       R15 R14 K98 ["TextTruncate"]
      266 GETIMPORT                        R15 K103 [Enum.TextXAlignment.Right]
      268 SETTABLEKS                       R15 R14 K66 ["TextXAlignment"]
      270 SETTABLEKS                       R14 R13 K85 ["RightText"]
      272 SETTABLEKS                       R13 R12 K47 ["InfoRow"]
      274 DUPTABLE                         R13 K104 [{"Padding"}]
      275 DUPTABLE                         R14 K108 [{["Top"] = 5, ["Bottom"] = 20}]
      276 SETTABLEKS                       R14 R13 K41 ["Padding"]
      278 SETTABLEKS                       R13 R12 K48 ["SuggestionsSection"]
      280 SETTABLEKS                       R12 R11 K22 ["ScrollingFrame"]
      282 DUPTABLE                         R12 K112 [{["Top"] = 0, ["Right"] = -10, ["Bottom"] = 0, ["Left"] = -15}]
      283 SETTABLEKS                       R12 R11 K23 ["AssetRenderMargin"]
      285 DUPTABLE                         R12 K120 [{["ActionButtonHeight"] = 30, ["ElementPadding"], ["Padding"], ["Size"], ["Context"], ["Action"] = "RoundPrimary", ["ActionBuy"], ["ActionSubText"]}]
      286 GETIMPORT                        R13 K56 [UDim.new]
      288 LOADN                            R14 0
      289 LOADN                            R15 10
      290 CALL                             R13 2 1
      291 SETTABLEKS                       R13 R12 K39 ["ElementPadding"]
      293 DUPTABLE                         R13 K54 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      294 GETIMPORT                        R14 K56 [UDim.new]
      296 LOADN                            R15 0
      297 LOADN                            R16 12
      298 CALL                             R14 2 1
      299 SETTABLEKS                       R14 R13 K50 ["PaddingTop"]
      301 GETIMPORT                        R14 K56 [UDim.new]
      303 LOADN                            R15 0
      304 LOADN                            R16 10
      305 CALL                             R14 2 1
      306 SETTABLEKS                       R14 R13 K51 ["PaddingRight"]
      308 GETIMPORT                        R14 K56 [UDim.new]
      310 LOADN                            R15 0
      311 LOADN                            R16 15
      312 CALL                             R14 2 1
      313 SETTABLEKS                       R14 R13 K52 ["PaddingBottom"]
      315 GETIMPORT                        R14 K56 [UDim.new]
      317 LOADN                            R15 0
      318 LOADN                            R16 12
      319 CALL                             R14 2 1
      320 SETTABLEKS                       R14 R13 K53 ["PaddingLeft"]
      322 SETTABLEKS                       R13 R12 K41 ["Padding"]
      324 GETIMPORT                        R13 K34 [UDim2.new]
      326 LOADN                            R14 1
      327 LOADN                            R15 0
      328 LOADN                            R16 0
      329 LOADN                            R17 52
      330 CALL                             R13 4 1
      331 SETTABLEKS                       R13 R12 K30 ["Size"]
      333 DUPTABLE                         R13 K124 [{"Size", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle"}]
      334 GETIMPORT                        R14 K38 [UDim2.fromOffset]
      336 LOADN                            R15 28
      337 LOADN                            R16 28
      338 CALL                             R14 2 1
      339 SETTABLEKS                       R14 R13 K30 ["Size"]
      341 SETTABLEKS                       R3 R13 K121 ["Background"]
      343 DUPTABLE                         R14 K127 [{["Color"], ["Transparency"] = 0}]
      344 GETTABLEKS                       R15 R1 K128 ["ImageButtonBackground"]
      346 SETTABLEKS                       R15 R14 K125 ["Color"]
      348 SETTABLEKS                       R14 R13 K20 ["BackgroundStyle"]
      350 SETTABLEKS                       R2 R13 K122 ["Foreground"]
      352 DUPTABLE                         R14 K131 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperFramework/AssetPreview/more.png", ["Position"], ["Size"], ["ScaleType"]}]
      353 GETIMPORT                        R15 K36 [Vector2.new]
      355 LOADK                            R16 K96 [0.5]
      356 LOADK                            R17 K96 [0.5]
      357 CALL                             R15 2 1
      358 SETTABLEKS                       R15 R14 K28 ["AnchorPoint"]
      360 GETIMPORT                        R15 K34 [UDim2.new]
      362 LOADK                            R16 K96 [0.5]
      363 LOADN                            R17 0
      364 LOADK                            R18 K96 [0.5]
      365 LOADN                            R19 0
      366 CALL                             R15 4 1
      367 SETTABLEKS                       R15 R14 K27 ["Position"]
      369 GETIMPORT                        R15 K34 [UDim2.new]
      371 LOADK                            R16 K132 [0.6]
      372 LOADN                            R17 0
      373 LOADK                            R18 K132 [0.6]
      374 LOADN                            R19 0
      375 CALL                             R15 4 1
      376 SETTABLEKS                       R15 R14 K30 ["Size"]
      378 GETIMPORT                        R15 K134 [Enum.ScaleType.Stretch]
      380 SETTABLEKS                       R15 R14 K130 ["ScaleType"]
      382 SETTABLEKS                       R14 R13 K123 ["ForegroundStyle"]
      384 SETTABLEKS                       R13 R12 K115 ["Context"]
      386 GETTABLEKS                       R13 R5 K135 ["Dictionary"]
      388 GETTABLEKS                       R13 R13 K136 ["join"]
      390 GETTABLEKS                       R14 R10 K137 ["&RoundPrimary"]
      392 DUPTABLE                         R15 K138 [{["Foreground"], ["ForegroundStyle"], ["TextSize"] = 18}]
      393 SETTABLEKS                       R2 R15 K122 ["Foreground"]
      395 DUPTABLE                         R16 K140 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/ui/common/robux_small.png", ["Position"], ["Size"], ["ScaleType"]}]
      396 GETIMPORT                        R17 K36 [Vector2.new]
      398 LOADK                            R18 K96 [0.5]
      399 LOADK                            R19 K96 [0.5]
      400 CALL                             R17 2 1
      401 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
      403 GETIMPORT                        R17 K34 [UDim2.new]
      405 LOADK                            R18 K141 [0.05]
      406 LOADN                            R19 0
      407 LOADK                            R20 K96 [0.5]
      408 LOADN                            R21 0
      409 CALL                             R17 4 1
      410 SETTABLEKS                       R17 R16 K27 ["Position"]
      412 GETIMPORT                        R17 K34 [UDim2.new]
      414 LOADN                            R18 0
      415 LOADN                            R19 16
      416 LOADK                            R20 K132 [0.6]
      417 LOADN                            R21 0
      418 CALL                             R17 4 1
      419 SETTABLEKS                       R17 R16 K30 ["Size"]
      421 GETIMPORT                        R17 K143 [Enum.ScaleType.Fit]
      423 SETTABLEKS                       R17 R16 K130 ["ScaleType"]
      425 SETTABLEKS                       R16 R15 K123 ["ForegroundStyle"]
      427 CALL                             R13 2 1
      428 SETTABLEKS                       R13 R12 K118 ["ActionBuy"]
      430 DUPTABLE                         R13 K146 [{["SpacingTop"] = 4, ["TextSize"] = 14, ["TextColor"]}]
      431 GETTABLEKS                       R14 R1 K147 ["ErrorText"]
      433 SETTABLEKS                       R14 R13 K63 ["TextColor"]
      435 SETTABLEKS                       R13 R12 K119 ["ActionSubText"]
      437 SETTABLEKS                       R12 R11 K24 ["ButtonArea"]
      439 RETURN                           R11 1
