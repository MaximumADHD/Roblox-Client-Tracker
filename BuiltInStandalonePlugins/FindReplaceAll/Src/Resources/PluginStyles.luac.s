MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["defineFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R1 K13 ["Styling"]
       34 GETTABLEKS                       R4 R5 K14 ["createStyleRule"]
       36 GETTABLEKS                       R6 R1 K13 ["Styling"]
       38 GETTABLEKS                       R5 R6 K15 ["createStyleSheet"]
       40 NEWTABLE                         R6 0 45
       42 MOVE                             R7 R4
       43 LOADK                            R8 K16 ["ImageButton"]
       44 DUPTABLE                         R9 K18 [{"Size"}]
       45 GETIMPORT                        R10 K21 [UDim2.fromOffset]
       47 LOADN                            R11 28
       48 LOADN                            R12 28
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K17 ["Size"]
       52 NEWTABLE                         R10 0 7
       54 MOVE                             R11 R4
       55 LOADK                            R12 K22 [".ClearTextIcon"]
       56 DUPTABLE                         R13 K24 [{"Image"}]
       57 LOADK                            R14 K25 ["$ClearText"]
       58 SETTABLEKS                       R14 R13 K23 ["Image"]
       60 CALL                             R11 2 1
       61 MOVE                             R12 R4
       62 LOADK                            R13 K26 [">ImageLabel .MatchCaseIcon"]
       63 DUPTABLE                         R14 K24 [{"Image"}]
       64 LOADK                            R15 K27 ["$MatchCase"]
       65 SETTABLEKS                       R15 R14 K23 ["Image"]
       67 CALL                             R12 2 1
       68 MOVE                             R13 R4
       69 LOADK                            R14 K28 [">ImageLabel .MatchWholeWordIcon"]
       70 DUPTABLE                         R15 K24 [{"Image"}]
       71 LOADK                            R16 K29 ["$MatchWholeWord"]
       72 SETTABLEKS                       R16 R15 K23 ["Image"]
       74 CALL                             R13 2 1
       75 MOVE                             R14 R4
       76 LOADK                            R15 K30 [">ImageLabel .RegularExpressionIcon"]
       77 DUPTABLE                         R16 K24 [{"Image"}]
       78 LOADK                            R17 K31 ["$RegularExpression"]
       79 SETTABLEKS                       R17 R16 K23 ["Image"]
       81 CALL                             R14 2 1
       82 MOVE                             R15 R4
       83 LOADK                            R16 K32 [">ImageLabel .FindPreviousIcon"]
       84 DUPTABLE                         R17 K24 [{"Image"}]
       85 LOADK                            R18 K33 ["$ArrowUp"]
       86 SETTABLEKS                       R18 R17 K23 ["Image"]
       88 CALL                             R15 2 1
       89 MOVE                             R16 R4
       90 LOADK                            R17 K34 [">ImageLabel .FindNextIcon"]
       91 DUPTABLE                         R18 K24 [{"Image"}]
       92 LOADK                            R19 K35 ["$ArrowDown"]
       93 SETTABLEKS                       R19 R18 K23 ["Image"]
       95 CALL                             R16 2 1
       96 MOVE                             R17 R4
       97 LOADK                            R18 K36 [">ImageLabel .ThreeDotsIcon"]
       98 DUPTABLE                         R19 K24 [{"Image"}]
       99 LOADK                            R20 K37 ["$ThreeDots"]
      100 SETTABLEKS                       R20 R19 K23 ["Image"]
      102 CALL                             R17 2 -1
      103 SETLIST                          R10 R11 -1 [1]
      105 CALL                             R7 3 1
      106 MOVE                             R8 R4
      107 LOADK                            R9 K38 ["ImageLabel"]
      108 NEWTABLE                         R10 0 0
      110 NEWTABLE                         R11 0 3
      112 MOVE                             R12 R4
      113 LOADK                            R13 K39 [".CheckboxOffIcon"]
      114 DUPTABLE                         R14 K24 [{"Image"}]
      115 LOADK                            R15 K40 ["$CheckboxOff"]
      116 SETTABLEKS                       R15 R14 K23 ["Image"]
      118 CALL                             R12 2 1
      119 MOVE                             R13 R4
      120 LOADK                            R14 K41 [".CheckboxOnIcon"]
      121 DUPTABLE                         R15 K24 [{"Image"}]
      122 LOADK                            R16 K42 ["$CheckboxOn"]
      123 SETTABLEKS                       R16 R15 K23 ["Image"]
      125 CALL                             R13 2 1
      126 MOVE                             R14 R4
      127 LOADK                            R15 K43 [".FindBarSearchIcon"]
      128 DUPTABLE                         R16 K24 [{"Image"}]
      129 LOADK                            R17 K44 ["$FindBarSearchIcon"]
      130 SETTABLEKS                       R17 R16 K23 ["Image"]
      132 CALL                             R14 2 -1
      133 SETLIST                          R11 R12 -1 [1]
      135 CALL                             R8 3 1
      136 MOVE                             R9 R4
      137 LOADK                            R10 K45 [".FindReplaceAll-ResultRowNode-Pill"]
      138 DUPTABLE                         R11 K49 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      139 LOADK                            R12 K50 ["$SemanticColorShift300"]
      140 SETTABLEKS                       R12 R11 K46 ["BackgroundColor3"]
      142 LOADK                            R12 K51 ["$SemanticColorShift300Transparency"]
      143 SETTABLEKS                       R12 R11 K47 ["BackgroundTransparency"]
      145 LOADK                            R12 K52 ["$SemanticColorContentEmphasis"]
      146 SETTABLEKS                       R12 R11 K48 ["TextColor3"]
      148 NEWTABLE                         R12 0 1
      150 MOVE                             R13 R4
      151 LOADK                            R14 K53 ["::UICorner"]
      152 DUPTABLE                         R15 K55 [{"CornerRadius"}]
      153 GETIMPORT                        R16 K58 [UDim.new]
      155 LOADN                            R17 1
      156 LOADN                            R18 0
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K54 ["CornerRadius"]
      160 CALL                             R13 2 -1
      161 SETLIST                          R12 R13 -1 [1]
      163 CALL                             R9 3 1
      164 MOVE                             R10 R4
      165 LOADK                            R11 K59 [".FindReplaceAll-ResultRowNode"]
      166 DUPTABLE                         R12 K63 [{"BackgroundTransparency", "BorderSizePixel", "AutoButtonColor", "Text"}]
      167 LOADN                            R13 1
      168 SETTABLEKS                       R13 R12 K47 ["BackgroundTransparency"]
      170 LOADN                            R13 0
      171 SETTABLEKS                       R13 R12 K60 ["BorderSizePixel"]
      173 LOADB                            R13 0
      174 SETTABLEKS                       R13 R12 K61 ["AutoButtonColor"]
      176 LOADK                            R13 K64 [""]
      177 SETTABLEKS                       R13 R12 K62 ["Text"]
      179 CALL                             R10 2 1
      180 MOVE                             R11 R4
      181 LOADK                            R12 K65 [".FindReplaceAll-ScrollingFrame"]
      182 DUPTABLE                         R13 K71 [{"BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
      183 LOADK                            R14 K72 ["$BottomImage"]
      184 SETTABLEKS                       R14 R13 K66 ["BottomImage"]
      186 LOADK                            R14 K73 ["$MidImage"]
      187 SETTABLEKS                       R14 R13 K67 ["MidImage"]
      189 LOADK                            R14 K74 ["$TopImage"]
      190 SETTABLEKS                       R14 R13 K68 ["TopImage"]
      192 LOADK                            R14 K75 ["$ColorActionStandardBackground"]
      193 SETTABLEKS                       R14 R13 K69 ["ScrollBarImageColor3"]
      195 LOADK                            R14 K76 ["$ColorActionStandardBackgroundTransparency"]
      196 SETTABLEKS                       R14 R13 K70 ["ScrollBarImageTransparency"]
      198 CALL                             R11 2 1
      199 MOVE                             R12 R4
      200 LOADK                            R13 K77 [".FindReplaceAll-Content-Default"]
      201 DUPTABLE                         R14 K79 [{"ImageColor3", "TextColor3"}]
      202 LOADK                            R15 K80 ["$SemanticColorContentDefault"]
      203 SETTABLEKS                       R15 R14 K78 ["ImageColor3"]
      205 LOADK                            R15 K80 ["$SemanticColorContentDefault"]
      206 SETTABLEKS                       R15 R14 K48 ["TextColor3"]
      208 CALL                             R12 2 1
      209 MOVE                             R13 R4
      210 LOADK                            R14 K81 [".FindReplaceAll-Content-Emphasis"]
      211 DUPTABLE                         R15 K79 [{"ImageColor3", "TextColor3"}]
      212 LOADK                            R16 K52 ["$SemanticColorContentEmphasis"]
      213 SETTABLEKS                       R16 R15 K78 ["ImageColor3"]
      215 LOADK                            R16 K52 ["$SemanticColorContentEmphasis"]
      216 SETTABLEKS                       R16 R15 K48 ["TextColor3"]
      218 CALL                             R13 2 1
      219 MOVE                             R14 R4
      220 LOADK                            R15 K82 [".FindReplaceAll-Hovered"]
      221 DUPTABLE                         R16 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      222 LOADK                            R17 K84 ["$SemanticColorStatesHover"]
      223 SETTABLEKS                       R17 R16 K46 ["BackgroundColor3"]
      225 LOADK                            R17 K85 ["$SemanticColorStatesHoverTransparency"]
      226 SETTABLEKS                       R17 R16 K47 ["BackgroundTransparency"]
      228 CALL                             R14 2 1
      229 MOVE                             R15 R4
      230 LOADK                            R16 K86 [".FindReplaceAll-Selected"]
      231 DUPTABLE                         R17 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      232 LOADK                            R18 K87 ["$SemanticColorActionPrimaryBrandFill"]
      233 SETTABLEKS                       R18 R17 K46 ["BackgroundColor3"]
      235 LOADK                            R18 K88 [0.76]
      236 SETTABLEKS                       R18 R17 K47 ["BackgroundTransparency"]
      238 CALL                             R15 2 1
      239 MOVE                             R16 R4
      240 LOADK                            R17 K89 [".FindReplaceAll-NotSelected"]
      241 DUPTABLE                         R18 K90 [{"BackgroundTransparency"}]
      242 LOADN                            R19 1
      243 SETTABLEKS                       R19 R18 K47 ["BackgroundTransparency"]
      245 CALL                             R16 2 1
      246 MOVE                             R17 R4
      247 LOADK                            R18 K91 [".FindReplaceAll-BG-Surface0"]
      248 DUPTABLE                         R19 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      249 LOADK                            R20 K92 ["$SemanticColorSurface0"]
      250 SETTABLEKS                       R20 R19 K46 ["BackgroundColor3"]
      252 LOADN                            R20 0
      253 SETTABLEKS                       R20 R19 K47 ["BackgroundTransparency"]
      255 CALL                             R17 2 1
      256 MOVE                             R18 R4
      257 LOADK                            R19 K93 [".FindReplaceAll-BG-Surface100"]
      258 DUPTABLE                         R20 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      259 LOADK                            R21 K94 ["$SemanticColorSurface100"]
      260 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      262 LOADN                            R21 0
      263 SETTABLEKS                       R21 R20 K47 ["BackgroundTransparency"]
      265 CALL                             R18 2 1
      266 MOVE                             R19 R4
      267 LOADK                            R20 K95 [".FindReplaceAll-BG-Shift300"]
      268 DUPTABLE                         R21 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      269 LOADK                            R22 K50 ["$SemanticColorShift300"]
      270 SETTABLEKS                       R22 R21 K46 ["BackgroundColor3"]
      272 LOADK                            R22 K51 ["$SemanticColorShift300Transparency"]
      273 SETTABLEKS                       R22 R21 K47 ["BackgroundTransparency"]
      275 CALL                             R19 2 1
      276 MOVE                             R20 R4
      277 LOADK                            R21 K96 [".FindReplaceAll-BG-Input"]
      278 DUPTABLE                         R22 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
      279 LOADK                            R23 K97 ["$SemanticColorComponentInputFill"]
      280 SETTABLEKS                       R23 R22 K46 ["BackgroundColor3"]
      282 LOADK                            R23 K98 ["$SemanticColorComponentInputFillTransparency"]
      283 SETTABLEKS                       R23 R22 K47 ["BackgroundTransparency"]
      285 CALL                             R20 2 1
      286 MOVE                             R21 R4
      287 LOADK                            R22 K99 [".FindReplaceAll-Button"]
      288 DUPTABLE                         R23 K100 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
      289 LOADB                            R24 0
      290 SETTABLEKS                       R24 R23 K61 ["AutoButtonColor"]
      292 LOADN                            R24 1
      293 SETTABLEKS                       R24 R23 K47 ["BackgroundTransparency"]
      295 LOADK                            R24 K64 [""]
      296 SETTABLEKS                       R24 R23 K62 ["Text"]
      298 CALL                             R21 2 1
      299 MOVE                             R22 R4
      300 LOADK                            R23 K101 [".FindReplaceAll-GrowX"]
      301 DUPTABLE                         R24 K18 [{"Size"}]
      302 GETIMPORT                        R25 K103 [UDim2.fromScale]
      304 LOADN                            R26 0
      305 LOADN                            R27 1
      306 CALL                             R25 2 1
      307 SETTABLEKS                       R25 R24 K17 ["Size"]
      309 NEWTABLE                         R25 0 1
      311 MOVE                             R26 R4
      312 LOADK                            R27 K104 ["::UIFlexItem"]
      313 DUPTABLE                         R28 K106 [{"FlexMode"}]
      314 GETIMPORT                        R29 K110 [Enum.UIFlexMode.Grow]
      316 SETTABLEKS                       R29 R28 K105 ["FlexMode"]
      318 CALL                             R26 2 -1
      319 SETLIST                          R25 R26 -1 [1]
      321 CALL                             R22 3 1
      322 SETLIST                          R6 R7 16 [1]
      324 MOVE                             R7 R4
      325 LOADK                            R8 K111 [".FindReplaceAll-ShrinkX"]
      326 DUPTABLE                         R9 K113 [{"AutomaticSize"}]
      327 GETIMPORT                        R10 K115 [Enum.AutomaticSize.X]
      329 SETTABLEKS                       R10 R9 K112 ["AutomaticSize"]
      331 NEWTABLE                         R10 0 1
      333 MOVE                             R11 R4
      334 LOADK                            R12 K104 ["::UIFlexItem"]
      335 DUPTABLE                         R13 K106 [{"FlexMode"}]
      336 GETIMPORT                        R14 K117 [Enum.UIFlexMode.Shrink]
      338 SETTABLEKS                       R14 R13 K105 ["FlexMode"]
      340 CALL                             R11 2 -1
      341 SETLIST                          R10 R11 -1 [1]
      343 CALL                             R7 3 1
      344 MOVE                             R8 R4
      345 LOADK                            R9 K118 [".FindReplaceAll-FillX"]
      346 DUPTABLE                         R10 K18 [{"Size"}]
      347 GETIMPORT                        R11 K103 [UDim2.fromScale]
      349 LOADN                            R12 1
      350 LOADN                            R13 1
      351 CALL                             R11 2 1
      352 SETTABLEKS                       R11 R10 K17 ["Size"]
      354 NEWTABLE                         R11 0 1
      356 MOVE                             R12 R4
      357 LOADK                            R13 K104 ["::UIFlexItem"]
      358 DUPTABLE                         R14 K106 [{"FlexMode"}]
      359 GETIMPORT                        R15 K120 [Enum.UIFlexMode.Fill]
      361 SETTABLEKS                       R15 R14 K105 ["FlexMode"]
      363 CALL                             R12 2 -1
      364 SETLIST                          R11 R12 -1 [1]
      366 CALL                             R8 3 1
      367 MOVE                             R9 R4
      368 LOADK                            R10 K121 [".FindReplaceAll-SidePadS ::UIPadding"]
      369 DUPTABLE                         R11 K124 [{"PaddingLeft", "PaddingRight"}]
      370 GETIMPORT                        R12 K58 [UDim.new]
      372 LOADN                            R13 0
      373 LOADN                            R14 4
      374 CALL                             R12 2 1
      375 SETTABLEKS                       R12 R11 K122 ["PaddingLeft"]
      377 GETIMPORT                        R12 K58 [UDim.new]
      379 LOADN                            R13 0
      380 LOADN                            R14 4
      381 CALL                             R12 2 1
      382 SETTABLEKS                       R12 R11 K123 ["PaddingRight"]
      384 CALL                             R9 2 1
      385 MOVE                             R10 R4
      386 LOADK                            R11 K125 [".FindReplaceAll-SidePadM ::UIPadding"]
      387 DUPTABLE                         R12 K124 [{"PaddingLeft", "PaddingRight"}]
      388 GETIMPORT                        R13 K58 [UDim.new]
      390 LOADN                            R14 0
      391 LOADN                            R15 8
      392 CALL                             R13 2 1
      393 SETTABLEKS                       R13 R12 K122 ["PaddingLeft"]
      395 GETIMPORT                        R13 K58 [UDim.new]
      397 LOADN                            R14 0
      398 LOADN                            R15 8
      399 CALL                             R13 2 1
      400 SETTABLEKS                       R13 R12 K123 ["PaddingRight"]
      402 CALL                             R10 2 1
      403 MOVE                             R11 R4
      404 LOADK                            R12 K126 [".FindReplaceAll-XColumnS"]
      405 NEWTABLE                         R13 0 0
      407 NEWTABLE                         R14 0 1
      409 MOVE                             R15 R4
      410 LOADK                            R16 K127 ["::UIListLayout"]
      411 DUPTABLE                         R17 K131 [{"FillDirection", "Padding", "SortOrder"}]
      412 GETIMPORT                        R18 K133 [Enum.FillDirection.Vertical]
      414 SETTABLEKS                       R18 R17 K128 ["FillDirection"]
      416 GETIMPORT                        R18 K58 [UDim.new]
      418 LOADN                            R19 0
      419 LOADN                            R20 4
      420 CALL                             R18 2 1
      421 SETTABLEKS                       R18 R17 K129 ["Padding"]
      423 GETIMPORT                        R18 K135 [Enum.SortOrder.LayoutOrder]
      425 SETTABLEKS                       R18 R17 K130 ["SortOrder"]
      427 CALL                             R15 2 -1
      428 SETLIST                          R14 R15 -1 [1]
      430 CALL                             R11 3 1
      431 MOVE                             R12 R4
      432 LOADK                            R13 K136 [".FindReplaceAll-TopPadM ::UIPadding"]
      433 DUPTABLE                         R14 K138 [{"PaddingTop"}]
      434 GETIMPORT                        R15 K58 [UDim.new]
      436 LOADN                            R16 0
      437 LOADN                            R17 8
      438 CALL                             R15 2 1
      439 SETTABLEKS                       R15 R14 K137 ["PaddingTop"]
      441 CALL                             R12 2 1
      442 MOVE                             R13 R4
      443 LOADK                            R14 K139 [".FindReplaceAll-XPad ::UIPadding"]
      444 DUPTABLE                         R15 K141 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      445 GETIMPORT                        R16 K58 [UDim.new]
      447 LOADN                            R17 0
      448 LOADN                            R18 8
      449 CALL                             R16 2 1
      450 SETTABLEKS                       R16 R15 K122 ["PaddingLeft"]
      452 GETIMPORT                        R16 K58 [UDim.new]
      454 LOADN                            R17 0
      455 LOADN                            R18 8
      456 CALL                             R16 2 1
      457 SETTABLEKS                       R16 R15 K123 ["PaddingRight"]
      459 GETIMPORT                        R16 K58 [UDim.new]
      461 LOADN                            R17 0
      462 LOADN                            R18 8
      463 CALL                             R16 2 1
      464 SETTABLEKS                       R16 R15 K137 ["PaddingTop"]
      466 GETIMPORT                        R16 K58 [UDim.new]
      468 LOADN                            R17 0
      469 LOADN                            R18 8
      470 CALL                             R16 2 1
      471 SETTABLEKS                       R16 R15 K140 ["PaddingBottom"]
      473 CALL                             R13 2 1
      474 MOVE                             R14 R4
      475 LOADK                            R15 K142 [".FindReplaceAll-PadRight ::UIPadding"]
      476 DUPTABLE                         R16 K143 [{"PaddingRight"}]
      477 GETIMPORT                        R17 K58 [UDim.new]
      479 LOADN                            R18 0
      480 LOADN                            R19 8
      481 CALL                             R17 2 1
      482 SETTABLEKS                       R17 R16 K123 ["PaddingRight"]
      484 CALL                             R14 2 1
      485 MOVE                             R15 R4
      486 LOADK                            R16 K144 [".FindReplaceAll-PadLeftS ::UIPadding"]
      487 DUPTABLE                         R17 K145 [{"PaddingLeft"}]
      488 GETIMPORT                        R18 K58 [UDim.new]
      490 LOADN                            R19 0
      491 LOADN                            R20 6
      492 CALL                             R18 2 1
      493 SETTABLEKS                       R18 R17 K122 ["PaddingLeft"]
      495 CALL                             R15 2 1
      496 MOVE                             R16 R4
      497 LOADK                            R17 K146 [".FindReplaceAll-Content-Disabled"]
      498 DUPTABLE                         R18 K147 [{"TextColor3"}]
      499 LOADK                            R19 K148 ["$SemanticColorContentDisabled"]
      500 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      502 CALL                             R16 2 1
      503 MOVE                             R17 R4
      504 LOADK                            R18 K149 [".FindReplaceAll-Content-Muted"]
      505 DUPTABLE                         R19 K79 [{"ImageColor3", "TextColor3"}]
      506 LOADK                            R20 K150 ["$SemanticColorContentMuted"]
      507 SETTABLEKS                       R20 R19 K78 ["ImageColor3"]
      509 LOADK                            R20 K150 ["$SemanticColorContentMuted"]
      510 SETTABLEKS                       R20 R19 K48 ["TextColor3"]
      512 CALL                             R17 2 1
      513 MOVE                             R18 R4
      514 LOADK                            R19 K151 [".FindReplaceAll-Content-PrimaryBrandFill"]
      515 DUPTABLE                         R20 K79 [{"ImageColor3", "TextColor3"}]
      516 LOADK                            R21 K87 ["$SemanticColorActionPrimaryBrandFill"]
      517 SETTABLEKS                       R21 R20 K78 ["ImageColor3"]
      519 LOADK                            R21 K87 ["$SemanticColorActionPrimaryBrandFill"]
      520 SETTABLEKS                       R21 R20 K48 ["TextColor3"]
      522 CALL                             R18 2 1
      523 MOVE                             R19 R4
      524 LOADK                            R20 K152 [".FindReplaceAll-Content-Standard"]
      525 DUPTABLE                         R21 K153 [{"ImageColor3"}]
      526 LOADK                            R22 K154 ["$SemanticColorContentStandard"]
      527 SETTABLEKS                       R22 R21 K78 ["ImageColor3"]
      529 CALL                             R19 2 1
      530 MOVE                             R20 R4
      531 LOADK                            R21 K155 [".FindReplaceAll-Content-Surface-Outline"]
      532 DUPTABLE                         R22 K157 [{"ImageColor3", "ImageTransparency"}]
      533 LOADK                            R23 K158 ["$SemanticColorSurfaceOutline"]
      534 SETTABLEKS                       R23 R22 K78 ["ImageColor3"]
      536 LOADK                            R23 K159 ["$SemanticColorSurfaceOutlineTransparency"]
      537 SETTABLEKS                       R23 R22 K156 ["ImageTransparency"]
      539 CALL                             R20 2 1
      540 MOVE                             R21 R4
      541 LOADK                            R22 K160 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
      542 DUPTABLE                         R23 K153 [{"ImageColor3"}]
      543 LOADK                            R24 K158 ["$SemanticColorSurfaceOutline"]
      544 SETTABLEKS                       R24 R23 K78 ["ImageColor3"]
      546 CALL                             R21 2 1
      547 MOVE                             R22 R4
      548 LOADK                            R23 K161 [".FindReplaceAll-Text-Size-12"]
      549 DUPTABLE                         R24 K163 [{"TextSize"}]
      550 LOADN                            R26 12
      551 GETTABLEKS                       R28 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
      553 CALL                             R28 0 1
      554 JUMPIFNOT                        R28 ; [+3]
      555 GETTABLEKS                       R27 R2 K165 ["defaultFontScale"]
      557 JUMP                             ; [+1]
      558 LOADK                            R27 K166 [1.257]
      559 MUL                              R25 R26 R27
      560 SETTABLEKS                       R25 R24 K162 ["TextSize"]
      562 CALL                             R22 2 1
      563 SETLIST                          R6 R7 16 [17]
      565 MOVE                             R7 R4
      566 LOADK                            R8 K167 [".FindReplaceAll-Text-Size-14"]
      567 DUPTABLE                         R9 K163 [{"TextSize"}]
      568 LOADN                            R11 14
      569 GETTABLEKS                       R13 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
      571 CALL                             R13 0 1
      572 JUMPIFNOT                        R13 ; [+3]
      573 GETTABLEKS                       R12 R2 K165 ["defaultFontScale"]
      575 JUMP                             ; [+1]
      576 LOADK                            R12 K166 [1.257]
      577 MUL                              R10 R11 R12
      578 SETTABLEKS                       R10 R9 K162 ["TextSize"]
      580 CALL                             R7 2 1
      581 MOVE                             R8 R4
      582 LOADK                            R9 K168 [".FindReplaceAll-Text-Size-20"]
      583 DUPTABLE                         R10 K163 [{"TextSize"}]
      584 LOADN                            R12 20
      585 GETTABLEKS                       R14 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
      587 CALL                             R14 0 1
      588 JUMPIFNOT                        R14 ; [+3]
      589 GETTABLEKS                       R13 R2 K165 ["defaultFontScale"]
      591 JUMP                             ; [+1]
      592 LOADK                            R13 K166 [1.257]
      593 MUL                              R11 R12 R13
      594 SETTABLEKS                       R11 R10 K162 ["TextSize"]
      596 CALL                             R8 2 1
      597 MOVE                             R9 R4
      598 LOADK                            R10 K169 [".FindReplaceAll-View"]
      599 DUPTABLE                         R11 K170 [{"BackgroundTransparency", "Size"}]
      600 LOADN                            R12 1
      601 SETTABLEKS                       R12 R11 K47 ["BackgroundTransparency"]
      603 GETIMPORT                        R12 K103 [UDim2.fromScale]
      605 LOADN                            R13 1
      606 LOADN                            R14 1
      607 CALL                             R12 2 1
      608 SETTABLEKS                       R12 R11 K17 ["Size"]
      610 CALL                             R9 2 1
      611 MOVE                             R10 R4
      612 LOADK                            R11 K171 [".FindReplaceAll-X-RowS"]
      613 NEWTABLE                         R12 0 0
      615 NEWTABLE                         R13 0 1
      617 MOVE                             R14 R4
      618 LOADK                            R15 K127 ["::UIListLayout"]
      619 DUPTABLE                         R16 K131 [{"FillDirection", "Padding", "SortOrder"}]
      620 GETIMPORT                        R17 K173 [Enum.FillDirection.Horizontal]
      622 SETTABLEKS                       R17 R16 K128 ["FillDirection"]
      624 GETIMPORT                        R17 K58 [UDim.new]
      626 LOADN                            R18 0
      627 LOADN                            R19 5
      628 CALL                             R17 2 1
      629 SETTABLEKS                       R17 R16 K129 ["Padding"]
      631 GETIMPORT                        R17 K135 [Enum.SortOrder.LayoutOrder]
      633 SETTABLEKS                       R17 R16 K130 ["SortOrder"]
      635 CALL                             R14 2 -1
      636 SETLIST                          R13 R14 -1 [1]
      638 CALL                             R10 3 1
      639 MOVE                             R11 R4
      640 LOADK                            R12 K174 [".FindReplaceAll-SessionView-ScrollingFrame"]
      641 DUPTABLE                         R13 K175 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
      642 LOADK                            R14 K176 ["$SemanticColorActionSecondary"]
      643 SETTABLEKS                       R14 R13 K69 ["ScrollBarImageColor3"]
      645 LOADK                            R14 K177 ["$SemanticColorActionSecondaryTransparency"]
      646 SETTABLEKS                       R14 R13 K70 ["ScrollBarImageTransparency"]
      648 CALL                             R11 2 1
      649 MOVE                             R12 R4
      650 LOADK                            R13 K178 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
      651 DUPTABLE                         R14 K180 [{"AspectRatio"}]
      652 LOADN                            R15 1
      653 SETTABLEKS                       R15 R14 K179 ["AspectRatio"]
      655 CALL                             R12 2 1
      656 MOVE                             R13 R4
      657 LOADK                            R14 K181 [".FindReplaceAll-Icon"]
      658 DUPTABLE                         R15 K170 [{"BackgroundTransparency", "Size"}]
      659 LOADN                            R16 1
      660 SETTABLEKS                       R16 R15 K47 ["BackgroundTransparency"]
      662 GETIMPORT                        R16 K21 [UDim2.fromOffset]
      664 LOADN                            R17 16
      665 LOADN                            R18 16
      666 CALL                             R16 2 1
      667 SETTABLEKS                       R16 R15 K17 ["Size"]
      669 CALL                             R13 2 1
      670 MOVE                             R14 R4
      671 LOADK                            R15 K182 [".FindReplaceAll-ToggleButton"]
      672 DUPTABLE                         R16 K170 [{"BackgroundTransparency", "Size"}]
      673 LOADN                            R17 1
      674 SETTABLEKS                       R17 R16 K47 ["BackgroundTransparency"]
      676 GETIMPORT                        R17 K21 [UDim2.fromOffset]
      678 LOADN                            R18 24
      679 LOADN                            R19 24
      680 CALL                             R17 2 1
      681 SETTABLEKS                       R17 R16 K17 ["Size"]
      683 NEWTABLE                         R17 0 1
      685 MOVE                             R18 R4
      686 LOADK                            R19 K183 [":: UICorner"]
      687 DUPTABLE                         R20 K55 [{"CornerRadius"}]
      688 GETIMPORT                        R21 K58 [UDim.new]
      690 LOADN                            R22 0
      691 LOADN                            R23 5
      692 CALL                             R21 2 1
      693 SETTABLEKS                       R21 R20 K54 ["CornerRadius"]
      695 CALL                             R18 2 -1
      696 SETLIST                          R17 R18 -1 [1]
      698 CALL                             R14 3 1
      699 MOVE                             R15 R4
      700 LOADK                            R16 K184 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
      701 DUPTABLE                         R17 K180 [{"AspectRatio"}]
      702 LOADN                            R18 2
      703 SETTABLEKS                       R18 R17 K179 ["AspectRatio"]
      705 CALL                             R15 2 1
      706 MOVE                             R16 R4
      707 LOADK                            R17 K185 [">> .FindReplaceAll-StandardText"]
      708 DUPTABLE                         R18 K187 [{"Font", "TextColor3", "TextSize"}]
      709 GETTABLEKS                       R19 R2 K188 ["defaultFont"]
      711 SETTABLEKS                       R19 R18 K186 ["Font"]
      713 LOADK                            R19 K154 ["$SemanticColorContentStandard"]
      714 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      716 GETTABLEKS                       R20 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
      718 CALL                             R20 0 1
      719 JUMPIFNOT                        R20 ; [+5]
      720 LOADN                            R20 12
      721 GETTABLEKS                       R21 R2 K165 ["defaultFontScale"]
      723 MUL                              R19 R20 R21
      724 JUMP                             ; [+1]
      725 LOADK                            R19 K189 [17.598]
      726 SETTABLEKS                       R19 R18 K162 ["TextSize"]
      728 CALL                             R16 2 1
      729 MOVE                             R17 R4
      730 LOADK                            R18 K190 ["TextLabel"]
      731 DUPTABLE                         R19 K191 [{"Font"}]
      732 GETTABLEKS                       R20 R2 K188 ["defaultFont"]
      734 SETTABLEKS                       R20 R19 K186 ["Font"]
      736 CALL                             R17 2 1
      737 MOVE                             R18 R4
      738 LOADK                            R19 K192 ["TextButton"]
      739 DUPTABLE                         R20 K191 [{"Font"}]
      740 GETTABLEKS                       R21 R2 K188 ["defaultFont"]
      742 SETTABLEKS                       R21 R20 K186 ["Font"]
      744 CALL                             R18 2 1
      745 MOVE                             R19 R4
      746 LOADK                            R20 K193 [".FindReplaceAll-UIStroke"]
      747 DUPTABLE                         R21 K197 [{"Color", "Transparency", "Thickness", "BorderSizePixel"}]
      748 LOADK                            R22 K50 ["$SemanticColorShift300"]
      749 SETTABLEKS                       R22 R21 K194 ["Color"]
      751 LOADK                            R22 K51 ["$SemanticColorShift300Transparency"]
      752 SETTABLEKS                       R22 R21 K195 ["Transparency"]
      754 LOADN                            R22 1
      755 SETTABLEKS                       R22 R21 K196 ["Thickness"]
      757 LOADN                            R22 0
      758 SETTABLEKS                       R22 R21 K60 ["BorderSizePixel"]
      760 CALL                             R19 2 -1
      761 SETLIST                          R6 R7 -1 [33]
      763 NEWTABLE                         R7 0 0
      765 MOVE                             R8 R5
      766 LOADK                            R9 K198 ["FindReplaceAllPlugin"]
      767 MOVE                             R10 R6
      768 MOVE                             R11 R7
      769 CALL                             R8 3 -1
      770 RETURN                           R8 -1
