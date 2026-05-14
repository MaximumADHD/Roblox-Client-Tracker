MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".LayerTreeRow"]
       20 DUPTABLE                         R5 K15 [{"BorderSizePixel", "Size", "Padding", "Spacing"}]
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
       24 GETIMPORT                        R6 K18 [UDim2.new]
       26 LOADN                            R7 1
       27 LOADN                            R8 0
       28 LOADN                            R9 0
       29 LOADN                            R10 24
       30 CALL                             R6 4 1
       31 SETTABLEKS                       R6 R5 K12 ["Size"]
       33 DUPTABLE                         R6 K23 [{"Top", "Bottom", "Left", "Right"}]
       34 LOADN                            R7 1
       35 SETTABLEKS                       R7 R6 K19 ["Top"]
       37 LOADN                            R7 1
       38 SETTABLEKS                       R7 R6 K20 ["Bottom"]
       40 LOADN                            R7 0
       41 SETTABLEKS                       R7 R6 K21 ["Left"]
       43 LOADN                            R7 0
       44 SETTABLEKS                       R7 R6 K22 ["Right"]
       46 SETTABLEKS                       R6 R5 K13 ["Padding"]
       48 LOADN                            R6 5
       49 SETTABLEKS                       R6 R5 K14 ["Spacing"]
       51 NEWTABLE                         R6 0 15
       53 MOVE                             R7 R2
       54 LOADK                            R8 K24 ["> .Client"]
       55 DUPTABLE                         R9 K27 [{"TextColor3", "ImageColor3"}]
       56 LOADK                            R10 K28 ["$Client"]
       57 SETTABLEKS                       R10 R9 K25 ["TextColor3"]
       59 LOADK                            R10 K28 ["$Client"]
       60 SETTABLEKS                       R10 R9 K26 ["ImageColor3"]
       62 CALL                             R7 2 1
       63 MOVE                             R8 R2
       64 LOADK                            R9 K29 ["> .Server"]
       65 DUPTABLE                         R10 K27 [{"TextColor3", "ImageColor3"}]
       66 LOADK                            R11 K30 ["$Server"]
       67 SETTABLEKS                       R11 R10 K25 ["TextColor3"]
       69 LOADK                            R11 K30 ["$Server"]
       70 SETTABLEKS                       R11 R10 K26 ["ImageColor3"]
       72 CALL                             R8 2 1
       73 MOVE                             R9 R2
       74 LOADK                            R10 K31 ["> #Toggle"]
       75 DUPTABLE                         R11 K32 [{"Size"}]
       76 LOADK                            R12 K33 ["$IconSize"]
       77 SETTABLEKS                       R12 R11 K12 ["Size"]
       79 NEWTABLE                         R12 0 1
       81 MOVE                             R13 R2
       82 LOADK                            R14 K34 ["> #ToggleButton"]
       83 DUPTABLE                         R15 K40 [{"Image", "Size", "ImageRectSize", "ImageColor3", "BackgroundTransparency", "Position", "AnchorPoint"}]
       84 LOADK                            R16 K41 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       85 SETTABLEKS                       R16 R15 K35 ["Image"]
       87 LOADK                            R16 K33 ["$IconSize"]
       88 SETTABLEKS                       R16 R15 K12 ["Size"]
       90 GETIMPORT                        R16 K43 [Vector2.new]
       92 LOADN                            R17 12
       93 LOADN                            R18 12
       94 CALL                             R16 2 1
       95 SETTABLEKS                       R16 R15 K36 ["ImageRectSize"]
       97 LOADK                            R16 K44 ["$TextPrimary"]
       98 SETTABLEKS                       R16 R15 K26 ["ImageColor3"]
      100 LOADN                            R16 1
      101 SETTABLEKS                       R16 R15 K37 ["BackgroundTransparency"]
      103 GETIMPORT                        R16 K46 [UDim2.fromScale]
      105 LOADK                            R17 K47 [0.5]
      106 LOADK                            R18 K47 [0.5]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K38 ["Position"]
      110 GETIMPORT                        R16 K43 [Vector2.new]
      112 LOADK                            R17 K47 [0.5]
      113 LOADK                            R18 K47 [0.5]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K39 ["AnchorPoint"]
      117 CALL                             R13 2 -1
      118 SETLIST                          R12 R13 -1 [1]
      120 CALL                             R9 3 1
      121 MOVE                             R10 R2
      122 LOADK                            R11 K48 ["> .LayerIcon"]
      123 DUPTABLE                         R12 K49 [{"Image", "Size"}]
      124 LOADK                            R13 K50 ["rbxasset://textures/CompositorDebugger/default.png"]
      125 SETTABLEKS                       R13 R12 K35 ["Image"]
      127 LOADK                            R13 K33 ["$IconSize"]
      128 SETTABLEKS                       R13 R12 K12 ["Size"]
      130 CALL                             R10 2 1
      131 MOVE                             R11 R2
      132 LOADK                            R12 K51 ["> .Blend1D"]
      133 DUPTABLE                         R13 K52 [{"Image"}]
      134 LOADK                            R14 K53 ["rbxasset://textures/CompositorDebugger/blend1d.png"]
      135 SETTABLEKS                       R14 R13 K35 ["Image"]
      137 CALL                             R11 2 1
      138 MOVE                             R12 R2
      139 LOADK                            R13 K54 ["> .Blend2D"]
      140 DUPTABLE                         R14 K52 [{"Image"}]
      141 LOADK                            R15 K55 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
      142 SETTABLEKS                       R15 R14 K35 ["Image"]
      144 CALL                             R12 2 1
      145 MOVE                             R13 R2
      146 LOADK                            R14 K56 ["> .BlendSpace"]
      147 DUPTABLE                         R15 K52 [{"Image"}]
      148 LOADK                            R16 K55 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
      149 SETTABLEKS                       R16 R15 K35 ["Image"]
      151 CALL                             R13 2 1
      152 MOVE                             R14 R2
      153 LOADK                            R15 K57 ["> .ClipLayer"]
      154 DUPTABLE                         R16 K52 [{"Image"}]
      155 LOADK                            R17 K58 ["rbxasset://textures/CompositorDebugger/clip.png"]
      156 SETTABLEKS                       R17 R16 K35 ["Image"]
      158 CALL                             R14 2 1
      159 MOVE                             R15 R2
      160 LOADK                            R16 K59 ["> .SelectLayer"]
      161 DUPTABLE                         R17 K52 [{"Image"}]
      162 LOADK                            R18 K60 ["rbxasset://textures/CompositorDebugger/select.png"]
      163 SETTABLEKS                       R18 R17 K35 ["Image"]
      165 CALL                             R15 2 1
      166 MOVE                             R16 R2
      167 LOADK                            R17 K61 ["> .SequenceLayer"]
      168 DUPTABLE                         R18 K52 [{"Image"}]
      169 LOADK                            R19 K62 ["rbxasset://textures/CompositorDebugger/sequence.png"]
      170 SETTABLEKS                       R19 R18 K35 ["Image"]
      172 CALL                             R16 2 1
      173 MOVE                             R17 R2
      174 LOADK                            R18 K63 ["> .Name"]
      175 DUPTABLE                         R19 K66 [{"TextTruncate", "TextXAlignment"}]
      176 GETIMPORT                        R20 K69 [Enum.TextTruncate.AtEnd]
      178 SETTABLEKS                       R20 R19 K64 ["TextTruncate"]
      180 GETIMPORT                        R20 K70 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R20 R19 K65 ["TextXAlignment"]
      184 CALL                             R17 2 1
      185 MOVE                             R18 R2
      186 LOADK                            R19 K71 ["> .RigName"]
      187 DUPTABLE                         R20 K73 [{"Font"}]
      188 GETIMPORT                        R21 K75 [Enum.Font.SourceSansBold]
      190 SETTABLEKS                       R21 R20 K72 ["Font"]
      192 CALL                             R18 2 1
      193 MOVE                             R19 R2
      194 LOADK                            R20 K76 ["> #Timestamp"]
      195 NEWTABLE                         R21 0 0
      197 NEWTABLE                         R22 0 1
      199 MOVE                             R23 R2
      200 LOADK                            R24 K77 ["> #ProgressBar"]
      201 DUPTABLE                         R25 K80 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "AnchorPoint", "Size", "Position"}]
      202 LOADK                            R26 K81 ["$BackgroundPaper"]
      203 SETTABLEKS                       R26 R25 K78 ["BackgroundColor3"]
      205 LOADN                            R26 0
      206 SETTABLEKS                       R26 R25 K37 ["BackgroundTransparency"]
      208 LOADK                            R26 K82 ["$TextSecondary"]
      209 SETTABLEKS                       R26 R25 K79 ["BorderColor3"]
      211 LOADN                            R26 1
      212 SETTABLEKS                       R26 R25 K11 ["BorderSizePixel"]
      214 GETIMPORT                        R26 K43 [Vector2.new]
      216 LOADK                            R27 K47 [0.5]
      217 LOADN                            R28 1
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K39 ["AnchorPoint"]
      221 GETIMPORT                        R26 K18 [UDim2.new]
      223 LOADN                            R27 1
      224 LOADN                            R28 0
      225 LOADN                            R29 0
      226 LOADN                            R30 2
      227 CALL                             R26 4 1
      228 SETTABLEKS                       R26 R25 K12 ["Size"]
      230 GETIMPORT                        R26 K18 [UDim2.new]
      232 LOADK                            R27 K47 [0.5]
      233 LOADN                            R28 0
      234 LOADN                            R29 1
      235 LOADN                            R30 255
      236 CALL                             R26 4 1
      237 SETTABLEKS                       R26 R25 K38 ["Position"]
      239 CALL                             R23 2 -1
      240 SETLIST                          R22 R23 -1 [1]
      242 CALL                             R19 3 1
      243 MOVE                             R20 R2
      244 LOADK                            R21 K83 ["> #Adornment"]
      245 DUPTABLE                         R22 K84 [{"Size", "BackgroundTransparency"}]
      246 GETIMPORT                        R23 K18 [UDim2.new]
      248 LOADN                            R24 0
      249 LOADN                            R25 12
      250 LOADN                            R26 1
      251 LOADN                            R27 0
      252 CALL                             R23 4 1
      253 SETTABLEKS                       R23 R22 K12 ["Size"]
      255 LOADN                            R23 1
      256 SETTABLEKS                       R23 R22 K37 ["BackgroundTransparency"]
      258 NEWTABLE                         R23 0 2
      260 MOVE                             R24 R2
      261 LOADK                            R25 K85 ["> #EyeIcon"]
      262 DUPTABLE                         R26 K87 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ImageTransparency", "Image"}]
      263 LOADK                            R27 K33 ["$IconSize"]
      264 SETTABLEKS                       R27 R26 K12 ["Size"]
      266 GETIMPORT                        R27 K46 [UDim2.fromScale]
      268 LOADK                            R28 K47 [0.5]
      269 LOADK                            R29 K47 [0.5]
      270 CALL                             R27 2 1
      271 SETTABLEKS                       R27 R26 K38 ["Position"]
      273 GETIMPORT                        R27 K43 [Vector2.new]
      275 LOADK                            R28 K47 [0.5]
      276 LOADK                            R29 K47 [0.5]
      277 CALL                             R27 2 1
      278 SETTABLEKS                       R27 R26 K39 ["AnchorPoint"]
      280 LOADN                            R27 1
      281 SETTABLEKS                       R27 R26 K37 ["BackgroundTransparency"]
      283 LOADN                            R27 0
      284 SETTABLEKS                       R27 R26 K86 ["ImageTransparency"]
      286 LOADK                            R27 K88 ["rbxasset://textures/CompositorDebugger/eye.png"]
      287 SETTABLEKS                       R27 R26 K35 ["Image"]
      289 NEWTABLE                         R27 0 2
      291 MOVE                             R28 R2
      292 LOADK                            R29 K89 [".AdornmentOff"]
      293 DUPTABLE                         R30 K90 [{"ImageColor3"}]
      294 LOADK                            R31 K81 ["$BackgroundPaper"]
      295 SETTABLEKS                       R31 R30 K26 ["ImageColor3"]
      297 CALL                             R28 2 1
      298 MOVE                             R29 R2
      299 LOADK                            R30 K91 [".AdornmentOn"]
      300 DUPTABLE                         R31 K90 [{"ImageColor3"}]
      301 LOADK                            R32 K44 ["$TextPrimary"]
      302 SETTABLEKS                       R32 R31 K26 ["ImageColor3"]
      304 CALL                             R29 2 -1
      305 SETLIST                          R27 R28 -1 [1]
      307 CALL                             R24 3 1
      308 MOVE                             R25 R2
      309 LOADK                            R26 K92 ["> #Dot"]
      310 DUPTABLE                         R27 K87 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ImageTransparency", "Image"}]
      311 GETIMPORT                        R28 K94 [UDim2.fromOffset]
      313 LOADN                            R29 10
      314 LOADN                            R30 10
      315 CALL                             R28 2 1
      316 SETTABLEKS                       R28 R27 K12 ["Size"]
      318 GETIMPORT                        R28 K46 [UDim2.fromScale]
      320 LOADK                            R29 K47 [0.5]
      321 LOADK                            R30 K47 [0.5]
      322 CALL                             R28 2 1
      323 SETTABLEKS                       R28 R27 K38 ["Position"]
      325 GETIMPORT                        R28 K43 [Vector2.new]
      327 LOADK                            R29 K47 [0.5]
      328 LOADK                            R30 K47 [0.5]
      329 CALL                             R28 2 1
      330 SETTABLEKS                       R28 R27 K39 ["AnchorPoint"]
      332 LOADN                            R28 1
      333 SETTABLEKS                       R28 R27 K37 ["BackgroundTransparency"]
      335 LOADN                            R28 0
      336 SETTABLEKS                       R28 R27 K86 ["ImageTransparency"]
      338 LOADK                            R28 K95 ["rbxasset://textures/CompositorDebugger/adornmentDot.png"]
      339 SETTABLEKS                       R28 R27 K35 ["Image"]
      341 NEWTABLE                         R28 0 12
      343 MOVE                             R29 R2
      344 LOADK                            R30 K96 [".AdornmentDotOff"]
      345 DUPTABLE                         R31 K97 [{"ImageTransparency"}]
      346 LOADN                            R32 1
      347 SETTABLEKS                       R32 R31 K86 ["ImageTransparency"]
      349 CALL                             R29 2 1
      350 MOVE                             R30 R2
      351 LOADK                            R31 K98 [".AdornmentDot1"]
      352 DUPTABLE                         R32 K90 [{"ImageColor3"}]
      353 LOADK                            R33 K99 ["$AdornmentDot1"]
      354 SETTABLEKS                       R33 R32 K26 ["ImageColor3"]
      356 CALL                             R30 2 1
      357 MOVE                             R31 R2
      358 LOADK                            R32 K100 [".AdornmentDot2"]
      359 DUPTABLE                         R33 K90 [{"ImageColor3"}]
      360 LOADK                            R34 K101 ["$AdornmentDot2"]
      361 SETTABLEKS                       R34 R33 K26 ["ImageColor3"]
      363 CALL                             R31 2 1
      364 MOVE                             R32 R2
      365 LOADK                            R33 K102 [".AdornmentDot3"]
      366 DUPTABLE                         R34 K90 [{"ImageColor3"}]
      367 LOADK                            R35 K103 ["$AdornmentDot3"]
      368 SETTABLEKS                       R35 R34 K26 ["ImageColor3"]
      370 CALL                             R32 2 1
      371 MOVE                             R33 R2
      372 LOADK                            R34 K104 [".AdornmentDot4"]
      373 DUPTABLE                         R35 K90 [{"ImageColor3"}]
      374 LOADK                            R36 K105 ["$AdornmentDot4"]
      375 SETTABLEKS                       R36 R35 K26 ["ImageColor3"]
      377 CALL                             R33 2 1
      378 MOVE                             R34 R2
      379 LOADK                            R35 K106 [".AdornmentDot5"]
      380 DUPTABLE                         R36 K90 [{"ImageColor3"}]
      381 LOADK                            R37 K107 ["$AdornmentDot5"]
      382 SETTABLEKS                       R37 R36 K26 ["ImageColor3"]
      384 CALL                             R34 2 1
      385 MOVE                             R35 R2
      386 LOADK                            R36 K108 [".AdornmentDot6"]
      387 DUPTABLE                         R37 K90 [{"ImageColor3"}]
      388 LOADK                            R38 K109 ["$AdornmentDot6"]
      389 SETTABLEKS                       R38 R37 K26 ["ImageColor3"]
      391 CALL                             R35 2 1
      392 MOVE                             R36 R2
      393 LOADK                            R37 K110 [".AdornmentDot7"]
      394 DUPTABLE                         R38 K90 [{"ImageColor3"}]
      395 LOADK                            R39 K111 ["$AdornmentDot7"]
      396 SETTABLEKS                       R39 R38 K26 ["ImageColor3"]
      398 CALL                             R36 2 1
      399 MOVE                             R37 R2
      400 LOADK                            R38 K112 [".AdornmentDot8"]
      401 DUPTABLE                         R39 K90 [{"ImageColor3"}]
      402 LOADK                            R40 K113 ["$AdornmentDot8"]
      403 SETTABLEKS                       R40 R39 K26 ["ImageColor3"]
      405 CALL                             R37 2 1
      406 MOVE                             R38 R2
      407 LOADK                            R39 K114 [".AdornmentDot9"]
      408 DUPTABLE                         R40 K90 [{"ImageColor3"}]
      409 LOADK                            R41 K115 ["$AdornmentDot9"]
      410 SETTABLEKS                       R41 R40 K26 ["ImageColor3"]
      412 CALL                             R38 2 1
      413 MOVE                             R39 R2
      414 LOADK                            R40 K116 [".AdornmentDot10"]
      415 DUPTABLE                         R41 K90 [{"ImageColor3"}]
      416 LOADK                            R42 K117 ["$AdornmentDot10"]
      417 SETTABLEKS                       R42 R41 K26 ["ImageColor3"]
      419 CALL                             R39 2 1
      420 MOVE                             R40 R2
      421 LOADK                            R41 K118 [".AdornmentDot11"]
      422 DUPTABLE                         R42 K90 [{"ImageColor3"}]
      423 LOADK                            R43 K119 ["$AdornmentDot11"]
      424 SETTABLEKS                       R43 R42 K26 ["ImageColor3"]
      426 CALL                             R40 2 -1
      427 SETLIST                          R28 R29 -1 [1]
      429 CALL                             R25 3 -1
      430 SETLIST                          R23 R24 -1 [1]
      432 CALL                             R20 3 1
      433 MOVE                             R21 R2
      434 LOADK                            R22 K120 [":hover"]
      435 DUPTABLE                         R23 K121 [{"BackgroundColor3", "BackgroundTransparency"}]
      436 LOADK                            R24 K122 ["$LayerHover"]
      437 SETTABLEKS                       R24 R23 K78 ["BackgroundColor3"]
      439 LOADN                            R24 0
      440 SETTABLEKS                       R24 R23 K37 ["BackgroundTransparency"]
      442 CALL                             R21 2 -1
      443 SETLIST                          R6 R7 -1 [1]
      445 DUPTABLE                         R7 K129 [{"Indent", "Client", "Server", "IconSize", "ExpandedOffset", "CollapsedOffset"}]
      446 LOADN                            R8 17
      447 SETTABLEKS                       R8 R7 K123 ["Indent"]
      449 GETIMPORT                        R8 K132 [Color3.fromHex]
      451 LOADK                            R9 K133 ["349AD5"]
      452 CALL                             R8 1 1
      453 SETTABLEKS                       R8 R7 K124 ["Client"]
      455 GETIMPORT                        R8 K132 [Color3.fromHex]
      457 LOADK                            R9 K134 ["00CC67"]
      458 CALL                             R8 1 1
      459 SETTABLEKS                       R8 R7 K125 ["Server"]
      461 GETIMPORT                        R8 K18 [UDim2.new]
      463 LOADN                            R9 0
      464 LOADN                            R10 12
      465 LOADN                            R11 0
      466 LOADN                            R12 12
      467 CALL                             R8 4 1
      468 SETTABLEKS                       R8 R7 K126 ["IconSize"]
      470 GETIMPORT                        R8 K43 [Vector2.new]
      472 LOADN                            R9 24
      473 LOADN                            R10 0
      474 CALL                             R8 2 1
      475 SETTABLEKS                       R8 R7 K127 ["ExpandedOffset"]
      477 GETIMPORT                        R8 K43 [Vector2.new]
      479 LOADN                            R9 12
      480 LOADN                            R10 0
      481 CALL                             R8 2 1
      482 SETTABLEKS                       R8 R7 K128 ["CollapsedOffset"]
      484 CALL                             R3 4 -1
      485 RETURN                           R3 -1
