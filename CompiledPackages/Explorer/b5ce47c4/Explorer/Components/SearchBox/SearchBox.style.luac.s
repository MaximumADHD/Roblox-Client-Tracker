MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R5 K11 ["getFFlagExplorerFixBlurryTextHopefully"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R6 K12 ["getFFlagExplorerUseBuilderSans"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R2 K13 ["Styling"]
       37 GETTABLEKS                       R5 R6 K14 ["createStyleRule"]
       39 MOVE                             R6 R5
       40 LOADK                            R7 K15 [".Explorer-SearchBox"]
       41 DUPTABLE                         R8 K18 [{"BackgroundTransparency", "Size"}]
       42 LOADN                            R9 1
       43 SETTABLEKS                       R9 R8 K16 ["BackgroundTransparency"]
       45 GETIMPORT                        R9 K21 [UDim2.fromScale]
       47 LOADN                            R10 1
       48 LOADN                            R11 1
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K17 ["Size"]
       52 NEWTABLE                         R9 0 8
       54 MOVE                             R10 R5
       55 LOADK                            R11 K22 [">> .Explorer-SearchBox-Corner ::UICorner"]
       56 DUPTABLE                         R12 K24 [{"CornerRadius"}]
       57 GETIMPORT                        R13 K27 [UDim.new]
       59 LOADN                            R14 0
       60 LOADN                            R15 6
       61 CALL                             R13 2 1
       62 SETTABLEKS                       R13 R12 K23 ["CornerRadius"]
       64 CALL                             R10 2 1
       65 MOVE                             R11 R5
       66 LOADK                            R12 K28 [">> .Explorer-SearchBox-SearchBar"]
       67 NEWTABLE                         R13 0 0
       69 NEWTABLE                         R14 0 2
       71 MOVE                             R15 R5
       72 LOADK                            R16 K29 [">> UIStroke"]
       73 DUPTABLE                         R17 K32 [{"Color", "Thickness"}]
       74 LOADK                            R18 K33 ["$RDLSemanticColorActionPrimaryBrandFill"]
       75 SETTABLEKS                       R18 R17 K30 ["Color"]
       77 LOADK                            R18 K34 [1.5]
       78 SETTABLEKS                       R18 R17 K31 ["Thickness"]
       80 CALL                             R15 2 1
       81 MOVE                             R16 R5
       82 LOADK                            R17 K35 [">> TextBox"]
       83 DUPTABLE                         R18 K47 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "PlaceholderColor3", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
       84 GETIMPORT                        R19 K49 [Vector2.new]
       86 LOADK                            R20 K50 [0.5]
       87 LOADK                            R21 K50 [0.5]
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K36 ["AnchorPoint"]
       91 LOADN                            R19 1
       92 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
       94 LOADN                            R19 0
       95 SETTABLEKS                       R19 R18 K37 ["BorderSizePixel"]
       97 LOADB                            R19 0
       98 SETTABLEKS                       R19 R18 K38 ["ClearTextOnFocus"]
      100 LOADB                            R19 1
      101 SETTABLEKS                       R19 R18 K39 ["ClipsDescendants"]
      103 MOVE                             R20 R4
      104 CALL                             R20 0 1
      105 JUMPIFNOT                        R20 ; [+2]
      106 LOADNIL                          R19
      107 JUMP                             ; [+2]
      108 GETIMPORT                        R19 K53 [Enum.Font.SourceSans]
      110 SETTABLEKS                       R19 R18 K40 ["Font"]
      112 LOADK                            R19 K54 ["$RDLSemanticColorContentMuted"]
      113 SETTABLEKS                       R19 R18 K41 ["PlaceholderColor3"]
      115 GETIMPORT                        R19 K21 [UDim2.fromScale]
      117 LOADK                            R20 K50 [0.5]
      118 LOADK                            R21 K50 [0.5]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K42 ["Position"]
      122 MOVE                             R20 R3
      123 CALL                             R20 0 1
      124 JUMPIFNOT                        R20 ; [+2]
      125 LOADNIL                          R19
      126 JUMP                             ; [+1]
      127 LOADK                            R19 K54 ["$RDLSemanticColorContentMuted"]
      128 SETTABLEKS                       R19 R18 K43 ["TextColor3"]
      130 LOADK                            R19 K55 [""]
      131 SETTABLEKS                       R19 R18 K44 ["Text"]
      133 MOVE                             R20 R3
      134 CALL                             R20 0 1
      135 JUMPIFNOT                        R20 ; [+2]
      136 LOADNIL                          R19
      137 JUMP                             ; [+1]
      138 LOADK                            R19 K56 [17.598]
      139 SETTABLEKS                       R19 R18 K45 ["TextSize"]
      141 GETIMPORT                        R19 K58 [Enum.TextXAlignment.Left]
      143 SETTABLEKS                       R19 R18 K46 ["TextXAlignment"]
      145 CALL                             R16 2 -1
      146 SETLIST                          R14 R15 -1 [1]
      148 CALL                             R11 3 1
      149 MOVE                             R12 R5
      150 LOADK                            R13 K59 [">> .Explorer-SearchBox-SearchBrowser"]
      151 DUPTABLE                         R14 K18 [{"BackgroundTransparency", "Size"}]
      152 LOADN                            R15 1
      153 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
      155 GETIMPORT                        R15 K60 [UDim2.new]
      157 LOADN                            R16 1
      158 LOADN                            R17 0
      159 LOADN                            R18 0
      160 LOADN                            R19 20
      161 CALL                             R15 4 1
      162 SETTABLEKS                       R15 R14 K17 ["Size"]
      164 NEWTABLE                         R15 0 1
      166 MOVE                             R16 R5
      167 LOADK                            R17 K61 [">> TextLabel"]
      168 DUPTABLE                         R18 K62 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
      169 LOADN                            R19 1
      170 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      172 LOADB                            R19 1
      173 SETTABLEKS                       R19 R18 K39 ["ClipsDescendants"]
      175 MOVE                             R20 R4
      176 CALL                             R20 0 1
      177 JUMPIFNOT                        R20 ; [+2]
      178 LOADNIL                          R19
      179 JUMP                             ; [+2]
      180 GETIMPORT                        R19 K53 [Enum.Font.SourceSans]
      182 SETTABLEKS                       R19 R18 K40 ["Font"]
      184 GETIMPORT                        R19 K21 [UDim2.fromScale]
      186 LOADN                            R20 1
      187 LOADN                            R21 1
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K17 ["Size"]
      191 MOVE                             R20 R3
      192 CALL                             R20 0 1
      193 JUMPIFNOT                        R20 ; [+2]
      194 LOADNIL                          R19
      195 JUMP                             ; [+1]
      196 LOADK                            R19 K54 ["$RDLSemanticColorContentMuted"]
      197 SETTABLEKS                       R19 R18 K43 ["TextColor3"]
      199 MOVE                             R20 R3
      200 CALL                             R20 0 1
      201 JUMPIFNOT                        R20 ; [+2]
      202 LOADNIL                          R19
      203 JUMP                             ; [+1]
      204 LOADK                            R19 K56 [17.598]
      205 SETTABLEKS                       R19 R18 K45 ["TextSize"]
      207 GETIMPORT                        R19 K58 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R19 R18 K46 ["TextXAlignment"]
      211 CALL                             R16 2 -1
      212 SETLIST                          R15 R16 -1 [1]
      214 CALL                             R12 3 1
      215 MOVE                             R13 R5
      216 LOADK                            R14 K63 [">> .Explorer-SearchBox-BottomBorder"]
      217 DUPTABLE                         R15 K64 [{"AnchorPoint", "BorderSizePixel", "Size"}]
      218 GETIMPORT                        R16 K49 [Vector2.new]
      220 LOADK                            R17 K50 [0.5]
      221 LOADN                            R18 0
      222 CALL                             R16 2 1
      223 SETTABLEKS                       R16 R15 K36 ["AnchorPoint"]
      225 LOADN                            R16 0
      226 SETTABLEKS                       R16 R15 K37 ["BorderSizePixel"]
      228 GETIMPORT                        R16 K60 [UDim2.new]
      230 LOADN                            R17 1
      231 LOADN                            R18 10
      232 LOADN                            R19 0
      233 GETTABLEKS                       R20 R1 K65 ["searchHeaderBottomBorderWidth"]
      235 CALL                             R16 4 1
      236 SETTABLEKS                       R16 R15 K17 ["Size"]
      238 CALL                             R13 2 1
      239 MOVE                             R14 R5
      240 LOADK                            R15 K66 [">> .Explorer-SearchBox-Dropdown"]
      241 DUPTABLE                         R16 K68 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
      242 GETIMPORT                        R17 K49 [Vector2.new]
      244 LOADK                            R18 K50 [0.5]
      245 LOADN                            R19 0
      246 CALL                             R17 2 1
      247 SETTABLEKS                       R17 R16 K36 ["AnchorPoint"]
      249 GETIMPORT                        R17 K70 [Enum.AutomaticSize.Y]
      251 SETTABLEKS                       R17 R16 K67 ["AutomaticSize"]
      253 GETIMPORT                        R17 K21 [UDim2.fromScale]
      255 LOADK                            R18 K50 [0.5]
      256 LOADN                            R19 0
      257 CALL                             R17 2 1
      258 SETTABLEKS                       R17 R16 K42 ["Position"]
      260 GETIMPORT                        R17 K60 [UDim2.new]
      262 LOADN                            R18 1
      263 LOADN                            R19 246
      264 LOADN                            R20 0
      265 LOADN                            R21 0
      266 CALL                             R17 4 1
      267 SETTABLEKS                       R17 R16 K17 ["Size"]
      269 NEWTABLE                         R17 0 2
      271 MOVE                             R18 R5
      272 LOADK                            R19 K71 ["::UIStroke"]
      273 DUPTABLE                         R20 K73 [{"Color", "Transparency", "Thickness"}]
      274 LOADK                            R21 K74 ["$RDLSemanticColorComponentInputFill"]
      275 SETTABLEKS                       R21 R20 K30 ["Color"]
      277 LOADK                            R21 K75 ["$RDLSemanticColorComponentInputFillTransparency"]
      278 SETTABLEKS                       R21 R20 K72 ["Transparency"]
      280 LOADK                            R21 K34 [1.5]
      281 SETTABLEKS                       R21 R20 K31 ["Thickness"]
      283 CALL                             R18 2 1
      284 MOVE                             R19 R5
      285 LOADK                            R20 K76 [">> ScrollingFrame"]
      286 DUPTABLE                         R21 K80 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollingDirection"}]
      287 GETIMPORT                        R22 K49 [Vector2.new]
      289 LOADK                            R23 K50 [0.5]
      290 LOADK                            R24 K50 [0.5]
      291 CALL                             R22 2 1
      292 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      294 GETIMPORT                        R22 K70 [Enum.AutomaticSize.Y]
      296 SETTABLEKS                       R22 R21 K77 ["AutomaticCanvasSize"]
      298 LOADN                            R22 1
      299 SETTABLEKS                       R22 R21 K16 ["BackgroundTransparency"]
      301 LOADN                            R22 0
      302 SETTABLEKS                       R22 R21 K37 ["BorderSizePixel"]
      304 GETIMPORT                        R22 K21 [UDim2.fromScale]
      306 LOADN                            R23 1
      307 LOADN                            R24 0
      308 CALL                             R22 2 1
      309 SETTABLEKS                       R22 R21 K78 ["CanvasSize"]
      311 GETIMPORT                        R22 K21 [UDim2.fromScale]
      313 LOADK                            R23 K50 [0.5]
      314 LOADK                            R24 K50 [0.5]
      315 CALL                             R22 2 1
      316 SETTABLEKS                       R22 R21 K42 ["Position"]
      318 GETIMPORT                        R22 K81 [Enum.ScrollingDirection.Y]
      320 SETTABLEKS                       R22 R21 K79 ["ScrollingDirection"]
      322 CALL                             R19 2 -1
      323 SETLIST                          R17 R18 -1 [1]
      325 CALL                             R14 3 1
      326 MOVE                             R15 R5
      327 LOADK                            R16 K82 [">> .Explorer-SearchBox-DropdownHeader"]
      328 DUPTABLE                         R17 K18 [{"BackgroundTransparency", "Size"}]
      329 LOADN                            R18 1
      330 SETTABLEKS                       R18 R17 K16 ["BackgroundTransparency"]
      332 GETIMPORT                        R18 K60 [UDim2.new]
      334 LOADN                            R19 1
      335 LOADN                            R20 0
      336 LOADN                            R21 0
      337 LOADN                            R22 25
      338 CALL                             R18 4 1
      339 SETTABLEKS                       R18 R17 K17 ["Size"]
      341 CALL                             R15 2 1
      342 MOVE                             R16 R5
      343 LOADK                            R17 K83 [">> .Explorer-SearchBox-DropdownTitle"]
      344 DUPTABLE                         R18 K85 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      345 LOADN                            R19 1
      346 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      348 MOVE                             R20 R4
      349 CALL                             R20 0 1
      350 JUMPIFNOT                        R20 ; [+2]
      351 LOADNIL                          R19
      352 JUMP                             ; [+2]
      353 GETIMPORT                        R19 K53 [Enum.Font.SourceSans]
      355 SETTABLEKS                       R19 R18 K40 ["Font"]
      357 MOVE                             R20 R3
      358 CALL                             R20 0 1
      359 JUMPIFNOT                        R20 ; [+2]
      360 LOADNIL                          R19
      361 JUMP                             ; [+1]
      362 LOADK                            R19 K54 ["$RDLSemanticColorContentMuted"]
      363 SETTABLEKS                       R19 R18 K43 ["TextColor3"]
      365 MOVE                             R20 R3
      366 CALL                             R20 0 1
      367 JUMPIFNOT                        R20 ; [+2]
      368 LOADNIL                          R19
      369 JUMP                             ; [+1]
      370 LOADK                            R19 K56 [17.598]
      371 SETTABLEKS                       R19 R18 K45 ["TextSize"]
      373 GETIMPORT                        R19 K58 [Enum.TextXAlignment.Left]
      375 SETTABLEKS                       R19 R18 K46 ["TextXAlignment"]
      377 GETIMPORT                        R19 K87 [Enum.TextYAlignment.Top]
      379 SETTABLEKS                       R19 R18 K84 ["TextYAlignment"]
      381 CALL                             R16 2 1
      382 MOVE                             R17 R5
      383 LOADK                            R18 K88 [">> .Explorer-SearchBox-DropdownItem"]
      384 DUPTABLE                         R19 K90 [{"BackgroundColor3", "Text"}]
      385 LOADK                            R20 K91 ["$RDLSemanticColorStatesHover"]
      386 SETTABLEKS                       R20 R19 K89 ["BackgroundColor3"]
      388 LOADK                            R20 K55 [""]
      389 SETTABLEKS                       R20 R19 K44 ["Text"]
      391 NEWTABLE                         R20 0 1
      393 MOVE                             R21 R5
      394 LOADK                            R22 K61 [">> TextLabel"]
      395 DUPTABLE                         R23 K92 [{"BackgroundTransparency", "TextXAlignment"}]
      396 LOADN                            R24 1
      397 SETTABLEKS                       R24 R23 K16 ["BackgroundTransparency"]
      399 GETIMPORT                        R24 K58 [Enum.TextXAlignment.Left]
      401 SETTABLEKS                       R24 R23 K46 ["TextXAlignment"]
      403 CALL                             R21 2 -1
      404 SETLIST                          R20 R21 -1 [1]
      406 CALL                             R17 3 -1
      407 SETLIST                          R9 R10 -1 [1]
      409 CALL                             R6 3 -1
      410 RETURN                           R6 -1
