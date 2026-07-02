MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AnnotationListView"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UISizeConstraint"]
       26 DUPTABLE                         R9 K13 [{"MinSize"}]
       27 GETIMPORT                        R10 K16 [Vector2.new]
       29 LOADN                            R11 200
       30 LOADN                            R12 0
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["MinSize"]
       34 CALL                             R7 2 1
       35 MOVE                             R8 R2
       36 LOADK                            R9 K17 ["> #Header"]
       37 DUPTABLE                         R10 K22 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       38 GETIMPORT                        R11 K24 [UDim2.new]
       40 LOADN                            R12 1
       41 LOADN                            R13 0
       42 LOADN                            R14 0
       43 LOADN                            R15 0
       44 CALL                             R11 4 1
       45 SETTABLEKS                       R11 R10 K18 ["Size"]
       47 GETIMPORT                        R11 K27 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R11 R10 K19 ["AutomaticSize"]
       51 NEWTABLE                         R11 0 2
       53 MOVE                             R12 R2
       54 LOADK                            R13 K28 ["::UIPadding"]
       55 DUPTABLE                         R14 K33 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       56 GETIMPORT                        R15 K35 [UDim.new]
       58 LOADN                            R16 0
       59 LOADN                            R17 16
       60 CALL                             R15 2 1
       61 SETTABLEKS                       R15 R14 K29 ["PaddingTop"]
       63 GETIMPORT                        R15 K35 [UDim.new]
       65 LOADN                            R16 0
       66 LOADN                            R17 8
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K30 ["PaddingLeft"]
       70 GETIMPORT                        R15 K35 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 8
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K31 ["PaddingRight"]
       77 GETIMPORT                        R15 K35 [UDim.new]
       79 LOADN                            R16 0
       80 LOADN                            R17 16
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K32 ["PaddingBottom"]
       84 CALL                             R12 2 1
       85 MOVE                             R13 R2
       86 LOADK                            R14 K36 ["> #ButtonGroup"]
       87 DUPTABLE                         R15 K39 [{["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["AutomaticSize"]}]
       88 GETIMPORT                        R16 K41 [UDim2.fromScale]
       90 LOADN                            R17 1
       91 LOADK                            R18 K42 [0.5]
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K37 ["Position"]
       95 GETIMPORT                        R16 K16 [Vector2.new]
       97 LOADN                            R17 1
       98 LOADK                            R18 K42 [0.5]
       99 CALL                             R16 2 1
      100 SETTABLEKS                       R16 R15 K38 ["AnchorPoint"]
      102 GETIMPORT                        R16 K44 [Enum.AutomaticSize.XY]
      104 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      106 NEWTABLE                         R16 0 2
      108 MOVE                             R17 R2
      109 LOADK                            R18 K45 ["> #AddButton"]
      110 DUPTABLE                         R19 K51 [{["Size"], ["Position"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = "$Shift200Transparency", ["BackgroundColor3"] = "$Shift200Color"}]
      111 GETIMPORT                        R20 K53 [UDim2.fromOffset]
      113 LOADN                            R21 20
      114 LOADN                            R22 20
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K18 ["Size"]
      118 GETIMPORT                        R20 K53 [UDim2.fromOffset]
      120 LOADN                            R21 20
      121 LOADN                            R22 0
      122 CALL                             R20 2 1
      123 SETTABLEKS                       R20 R19 K37 ["Position"]
      125 NEWTABLE                         R20 0 4
      127 MOVE                             R21 R2
      128 LOADK                            R22 K28 ["::UIPadding"]
      129 DUPTABLE                         R23 K33 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      130 GETIMPORT                        R24 K35 [UDim.new]
      132 LOADN                            R25 0
      133 LOADN                            R26 2
      134 CALL                             R24 2 1
      135 SETTABLEKS                       R24 R23 K29 ["PaddingTop"]
      137 GETIMPORT                        R24 K35 [UDim.new]
      139 LOADN                            R25 0
      140 LOADN                            R26 2
      141 CALL                             R24 2 1
      142 SETTABLEKS                       R24 R23 K30 ["PaddingLeft"]
      144 GETIMPORT                        R24 K35 [UDim.new]
      146 LOADN                            R25 0
      147 LOADN                            R26 2
      148 CALL                             R24 2 1
      149 SETTABLEKS                       R24 R23 K31 ["PaddingRight"]
      151 GETIMPORT                        R24 K35 [UDim.new]
      153 LOADN                            R25 0
      154 LOADN                            R26 2
      155 CALL                             R24 2 1
      156 SETTABLEKS                       R24 R23 K32 ["PaddingBottom"]
      158 CALL                             R21 2 1
      159 MOVE                             R22 R2
      160 LOADK                            R23 K54 ["::UICorner"]
      161 DUPTABLE                         R24 K56 [{"CornerRadius"}]
      162 GETIMPORT                        R25 K35 [UDim.new]
      164 LOADN                            R26 0
      165 LOADN                            R27 4
      166 CALL                             R25 2 1
      167 SETTABLEKS                       R25 R24 K55 ["CornerRadius"]
      169 CALL                             R22 2 1
      170 MOVE                             R23 R2
      171 LOADK                            R24 K57 [":hover"]
      172 DUPTABLE                         R25 K59 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift100Transparency"}]
      173 CALL                             R23 2 1
      174 MOVE                             R24 R2
      175 LOADK                            R25 K60 [":press"]
      176 DUPTABLE                         R26 K61 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
      177 CALL                             R24 2 -1
      178 SETLIST                          R20 R21 -1 [1]
      180 CALL                             R17 3 1
      181 MOVE                             R18 R2
      182 LOADK                            R19 K62 ["> #SettingsWrapper"]
      183 DUPTABLE                         R20 K63 [{["Size"], ["Position"], ["BackgroundTransparency"] = "$Shift200Transparency", ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$Shift200Color"}]
      184 GETIMPORT                        R21 K53 [UDim2.fromOffset]
      186 LOADN                            R22 20
      187 LOADN                            R23 20
      188 CALL                             R21 2 1
      189 SETTABLEKS                       R21 R20 K18 ["Size"]
      191 GETIMPORT                        R21 K53 [UDim2.fromOffset]
      193 LOADN                            R22 46
      194 LOADN                            R23 0
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K37 ["Position"]
      198 NEWTABLE                         R21 0 4
      200 MOVE                             R22 R2
      201 LOADK                            R23 K54 ["::UICorner"]
      202 DUPTABLE                         R24 K56 [{"CornerRadius"}]
      203 GETIMPORT                        R25 K35 [UDim.new]
      205 LOADN                            R26 0
      206 LOADN                            R27 4
      207 CALL                             R25 2 1
      208 SETTABLEKS                       R25 R24 K55 ["CornerRadius"]
      210 CALL                             R22 2 1
      211 MOVE                             R23 R2
      212 LOADK                            R24 K64 ["> .Dropdown"]
      213 DUPTABLE                         R25 K65 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"]}]
      214 GETIMPORT                        R26 K16 [Vector2.new]
      216 LOADK                            R27 K42 [0.5]
      217 LOADK                            R28 K42 [0.5]
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K38 ["AnchorPoint"]
      221 GETIMPORT                        R26 K24 [UDim2.new]
      223 LOADK                            R27 K42 [0.5]
      224 LOADK                            R28 K66 [-0.5]
      225 LOADK                            R29 K42 [0.5]
      226 LOADN                            R30 0
      227 CALL                             R26 4 1
      228 SETTABLEKS                       R26 R25 K37 ["Position"]
      230 CALL                             R23 2 1
      231 MOVE                             R24 R2
      232 LOADK                            R25 K57 [":hover"]
      233 DUPTABLE                         R26 K59 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift100Transparency"}]
      234 CALL                             R24 2 1
      235 MOVE                             R25 R2
      236 LOADK                            R26 K60 [":press"]
      237 DUPTABLE                         R27 K61 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
      238 CALL                             R25 2 -1
      239 SETLIST                          R21 R22 -1 [1]
      241 CALL                             R18 3 -1
      242 SETLIST                          R16 R17 -1 [1]
      244 CALL                             R13 3 -1
      245 SETLIST                          R11 R12 -1 [1]
      247 CALL                             R8 3 1
      248 MOVE                             R9 R2
      249 LOADK                            R10 K67 ["> #AnnotationList"]
      250 DUPTABLE                         R11 K68 [{["BackgroundTransparency"] = 1, ["Size"]}]
      251 GETIMPORT                        R12 K41 [UDim2.fromScale]
      253 LOADN                            R13 1
      254 LOADN                            R14 0
      255 CALL                             R12 2 1
      256 SETTABLEKS                       R12 R11 K18 ["Size"]
      258 NEWTABLE                         R12 0 2
      260 MOVE                             R13 R2
      261 LOADK                            R14 K69 ["::UIFlexItem"]
      262 DUPTABLE                         R15 K71 [{"FlexMode"}]
      263 GETIMPORT                        R16 K74 [Enum.UIFlexMode.Grow]
      265 SETTABLEKS                       R16 R15 K70 ["FlexMode"]
      267 CALL                             R13 2 1
      268 MOVE                             R14 R2
      269 LOADK                            R15 K75 [">> ScrollingFrame"]
      270 DUPTABLE                         R16 K80 [{["ScrollBarThickness"] = 8, ["ScrollBarImageColor3"] = "$BackgroundDefault"}]
      271 CALL                             R14 2 -1
      272 SETLIST                          R12 R13 -1 [1]
      274 CALL                             R9 3 1
      275 MOVE                             R10 R2
      276 LOADK                            R11 K81 [">> #EmptyState"]
      277 DUPTABLE                         R12 K82 [{"Size"}]
      278 GETIMPORT                        R13 K41 [UDim2.fromScale]
      280 LOADN                            R14 1
      281 LOADN                            R15 0
      282 CALL                             R13 2 1
      283 SETTABLEKS                       R13 R12 K18 ["Size"]
      285 NEWTABLE                         R13 0 5
      287 MOVE                             R14 R2
      288 LOADK                            R15 K69 ["::UIFlexItem"]
      289 DUPTABLE                         R16 K71 [{"FlexMode"}]
      290 GETIMPORT                        R17 K74 [Enum.UIFlexMode.Grow]
      292 SETTABLEKS                       R17 R16 K70 ["FlexMode"]
      294 CALL                             R14 2 1
      295 MOVE                             R15 R2
      296 LOADK                            R16 K83 ["> #AnnotationIcon"]
      297 DUPTABLE                         R17 K88 [{["Image"] = "$AnnotationLarge", ["ImageTransparency"] = 0.4, ["Size"]}]
      298 GETIMPORT                        R18 K53 [UDim2.fromOffset]
      300 LOADN                            R19 40
      301 LOADN                            R20 40
      302 CALL                             R18 2 1
      303 SETTABLEKS                       R18 R17 K18 ["Size"]
      305 CALL                             R15 2 1
      306 MOVE                             R16 R2
      307 LOADK                            R17 K89 ["> #NoCommentsYet"]
      308 DUPTABLE                         R18 K92 [{["Font"] = "$FontBold", ["Size"]}]
      309 GETIMPORT                        R19 K24 [UDim2.new]
      311 LOADN                            R20 1
      312 LOADN                            R21 -40
      313 LOADN                            R22 0
      314 LOADN                            R23 0
      315 CALL                             R19 4 1
      316 SETTABLEKS                       R19 R18 K18 ["Size"]
      318 CALL                             R16 2 1
      319 MOVE                             R17 R2
      320 LOADK                            R18 K93 ["> #ToAdd"]
      321 DUPTABLE                         R19 K99 [{["TextTransparency"] = 0.4, ["TextSize"] = "$FontSizeS", ["TextWrapped"] = True, ["AutomaticSize"], ["Size"]}]
      322 GETIMPORT                        R20 K27 [Enum.AutomaticSize.Y]
      324 SETTABLEKS                       R20 R19 K19 ["AutomaticSize"]
      326 GETIMPORT                        R20 K24 [UDim2.new]
      328 LOADN                            R21 1
      329 LOADN                            R22 -40
      330 LOADN                            R23 0
      331 LOADN                            R24 0
      332 CALL                             R20 4 1
      333 SETTABLEKS                       R20 R19 K18 ["Size"]
      335 CALL                             R17 2 1
      336 MOVE                             R18 R2
      337 LOADK                            R19 K100 ["> TextButton"]
      338 DUPTABLE                         R20 K105 [{["TextColor3"] = "$SemanticColorContentStaticLight", ["TextSize"] = "$FontSizeM", ["Font"] = "$FontBold", ["AutomaticSize"], ["BackgroundColor3"] = "$EmptyStateButtonFill"}]
      339 GETIMPORT                        R21 K44 [Enum.AutomaticSize.XY]
      341 SETTABLEKS                       R21 R20 K19 ["AutomaticSize"]
      343 NEWTABLE                         R21 0 4
      345 MOVE                             R22 R2
      346 LOADK                            R23 K54 ["::UICorner"]
      347 DUPTABLE                         R24 K56 [{"CornerRadius"}]
      348 GETIMPORT                        R25 K35 [UDim.new]
      350 LOADK                            R26 K106 [0.3]
      351 LOADN                            R27 0
      352 CALL                             R25 2 1
      353 SETTABLEKS                       R25 R24 K55 ["CornerRadius"]
      355 CALL                             R22 2 1
      356 MOVE                             R23 R2
      357 LOADK                            R24 K57 [":hover"]
      358 DUPTABLE                         R25 K108 [{["BackgroundColor3"] = "$EmptyStateButtonHovered"}]
      359 CALL                             R23 2 1
      360 MOVE                             R24 R2
      361 LOADK                            R25 K60 [":press"]
      362 DUPTABLE                         R26 K110 [{["BackgroundColor3"] = "$EmptyStateButtonSelected"}]
      363 CALL                             R24 2 1
      364 MOVE                             R25 R2
      365 LOADK                            R26 K28 ["::UIPadding"]
      366 DUPTABLE                         R27 K33 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      367 GETIMPORT                        R28 K35 [UDim.new]
      369 LOADN                            R29 0
      370 LOADN                            R30 4
      371 CALL                             R28 2 1
      372 SETTABLEKS                       R28 R27 K29 ["PaddingTop"]
      374 GETIMPORT                        R28 K35 [UDim.new]
      376 LOADN                            R29 0
      377 LOADN                            R30 10
      378 CALL                             R28 2 1
      379 SETTABLEKS                       R28 R27 K30 ["PaddingLeft"]
      381 GETIMPORT                        R28 K35 [UDim.new]
      383 LOADN                            R29 0
      384 LOADN                            R30 10
      385 CALL                             R28 2 1
      386 SETTABLEKS                       R28 R27 K31 ["PaddingRight"]
      388 GETIMPORT                        R28 K35 [UDim.new]
      390 LOADN                            R29 0
      391 LOADN                            R30 4
      392 CALL                             R28 2 1
      393 SETTABLEKS                       R28 R27 K32 ["PaddingBottom"]
      395 CALL                             R25 2 -1
      396 SETLIST                          R21 R22 -1 [1]
      398 CALL                             R18 3 -1
      399 SETLIST                          R13 R14 -1 [1]
      401 CALL                             R10 3 1
      402 MOVE                             R11 R2
      403 LOADK                            R12 K111 ["> #ErrorWrapper >> #ErrorAlert"]
      404 DUPTABLE                         R13 K113 [{["BackgroundColor3"] = "$BackgroundPaper"}]
      405 NEWTABLE                         R14 0 1
      407 MOVE                             R15 R2
      408 LOADK                            R16 K114 [">> TextButton"]
      409 DUPTABLE                         R17 K115 [{["AutomaticSize"], ["BackgroundColor3"] = "$EmptyStateButtonFill", ["TextColor3"] = "$SemanticColorContentStaticLight", ["TextSize"] = "$FontSizeS", ["Font"] = "$FontBold", ["BackgroundTransparency"] = 0}]
      410 GETIMPORT                        R18 K44 [Enum.AutomaticSize.XY]
      412 SETTABLEKS                       R18 R17 K19 ["AutomaticSize"]
      414 NEWTABLE                         R18 0 4
      416 MOVE                             R19 R2
      417 LOADK                            R20 K54 ["::UICorner"]
      418 DUPTABLE                         R21 K56 [{"CornerRadius"}]
      419 GETIMPORT                        R22 K35 [UDim.new]
      421 LOADN                            R23 0
      422 LOADN                            R24 4
      423 CALL                             R22 2 1
      424 SETTABLEKS                       R22 R21 K55 ["CornerRadius"]
      426 CALL                             R19 2 1
      427 MOVE                             R20 R2
      428 LOADK                            R21 K28 ["::UIPadding"]
      429 DUPTABLE                         R22 K33 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      430 GETIMPORT                        R23 K35 [UDim.new]
      432 LOADN                            R24 0
      433 LOADN                            R25 4
      434 CALL                             R23 2 1
      435 SETTABLEKS                       R23 R22 K29 ["PaddingTop"]
      437 GETIMPORT                        R23 K35 [UDim.new]
      439 LOADN                            R24 0
      440 LOADN                            R25 10
      441 CALL                             R23 2 1
      442 SETTABLEKS                       R23 R22 K30 ["PaddingLeft"]
      444 GETIMPORT                        R23 K35 [UDim.new]
      446 LOADN                            R24 0
      447 LOADN                            R25 10
      448 CALL                             R23 2 1
      449 SETTABLEKS                       R23 R22 K31 ["PaddingRight"]
      451 GETIMPORT                        R23 K35 [UDim.new]
      453 LOADN                            R24 0
      454 LOADN                            R25 4
      455 CALL                             R23 2 1
      456 SETTABLEKS                       R23 R22 K32 ["PaddingBottom"]
      458 CALL                             R20 2 1
      459 MOVE                             R21 R2
      460 LOADK                            R22 K57 [":hover"]
      461 DUPTABLE                         R23 K108 [{["BackgroundColor3"] = "$EmptyStateButtonHovered"}]
      462 CALL                             R21 2 1
      463 MOVE                             R22 R2
      464 LOADK                            R23 K60 [":press"]
      465 DUPTABLE                         R24 K110 [{["BackgroundColor3"] = "$EmptyStateButtonSelected"}]
      466 CALL                             R22 2 -1
      467 SETLIST                          R18 R19 -1 [1]
      469 CALL                             R15 3 -1
      470 SETLIST                          R14 R15 -1 [1]
      472 CALL                             R11 3 -1
      473 SETLIST                          R6 R7 -1 [1]
      475 CALL                             R3 3 -1
      476 RETURN                           R3 -1
