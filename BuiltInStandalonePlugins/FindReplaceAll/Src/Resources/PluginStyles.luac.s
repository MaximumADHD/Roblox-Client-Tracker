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
       23 GETTABLEKS                       R4 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R4 K12 ["createStyleRule"]
       27 GETTABLEKS                       R5 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R5 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 45
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageButton"]
       35 DUPTABLE                         R8 K16 [{"Size"}]
       36 GETIMPORT                        R9 K19 [UDim2.fromOffset]
       38 LOADN                            R10 28
       39 LOADN                            R11 28
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 NEWTABLE                         R9 0 7
       45 MOVE                             R10 R3
       46 LOADK                            R11 K20 [".ClearTextIcon"]
       47 DUPTABLE                         R12 K22 [{"Image"}]
       48 LOADK                            R13 K23 ["$ClearText"]
       49 SETTABLEKS                       R13 R12 K21 ["Image"]
       51 CALL                             R10 2 1
       52 MOVE                             R11 R3
       53 LOADK                            R12 K24 [">ImageLabel .MatchCaseIcon"]
       54 DUPTABLE                         R13 K22 [{"Image"}]
       55 LOADK                            R14 K25 ["$MatchCase"]
       56 SETTABLEKS                       R14 R13 K21 ["Image"]
       58 CALL                             R11 2 1
       59 MOVE                             R12 R3
       60 LOADK                            R13 K26 [">ImageLabel .MatchWholeWordIcon"]
       61 DUPTABLE                         R14 K22 [{"Image"}]
       62 LOADK                            R15 K27 ["$MatchWholeWord"]
       63 SETTABLEKS                       R15 R14 K21 ["Image"]
       65 CALL                             R12 2 1
       66 MOVE                             R13 R3
       67 LOADK                            R14 K28 [">ImageLabel .RegularExpressionIcon"]
       68 DUPTABLE                         R15 K22 [{"Image"}]
       69 LOADK                            R16 K29 ["$RegularExpression"]
       70 SETTABLEKS                       R16 R15 K21 ["Image"]
       72 CALL                             R13 2 1
       73 MOVE                             R14 R3
       74 LOADK                            R15 K30 [">ImageLabel .FindPreviousIcon"]
       75 DUPTABLE                         R16 K22 [{"Image"}]
       76 LOADK                            R17 K31 ["$ArrowUp"]
       77 SETTABLEKS                       R17 R16 K21 ["Image"]
       79 CALL                             R14 2 1
       80 MOVE                             R15 R3
       81 LOADK                            R16 K32 [">ImageLabel .FindNextIcon"]
       82 DUPTABLE                         R17 K22 [{"Image"}]
       83 LOADK                            R18 K33 ["$ArrowDown"]
       84 SETTABLEKS                       R18 R17 K21 ["Image"]
       86 CALL                             R15 2 1
       87 MOVE                             R16 R3
       88 LOADK                            R17 K34 [">ImageLabel .ThreeDotsIcon"]
       89 DUPTABLE                         R18 K22 [{"Image"}]
       90 LOADK                            R19 K35 ["$ThreeDots"]
       91 SETTABLEKS                       R19 R18 K21 ["Image"]
       93 CALL                             R16 2 -1
       94 SETLIST                          R9 R10 -1 [1]
       96 CALL                             R6 3 1
       97 MOVE                             R7 R3
       98 LOADK                            R8 K36 ["ImageLabel"]
       99 NEWTABLE                         R9 0 0
      101 NEWTABLE                         R10 0 3
      103 MOVE                             R11 R3
      104 LOADK                            R12 K37 [".CheckboxOffIcon"]
      105 DUPTABLE                         R13 K22 [{"Image"}]
      106 LOADK                            R14 K38 ["$CheckboxOff"]
      107 SETTABLEKS                       R14 R13 K21 ["Image"]
      109 CALL                             R11 2 1
      110 MOVE                             R12 R3
      111 LOADK                            R13 K39 [".CheckboxOnIcon"]
      112 DUPTABLE                         R14 K22 [{"Image"}]
      113 LOADK                            R15 K40 ["$CheckboxOn"]
      114 SETTABLEKS                       R15 R14 K21 ["Image"]
      116 CALL                             R12 2 1
      117 MOVE                             R13 R3
      118 LOADK                            R14 K41 [".FindBarSearchIcon"]
      119 DUPTABLE                         R15 K22 [{"Image"}]
      120 LOADK                            R16 K42 ["$FindBarSearchIcon"]
      121 SETTABLEKS                       R16 R15 K21 ["Image"]
      123 CALL                             R13 2 -1
      124 SETLIST                          R10 R11 -1 [1]
      126 CALL                             R7 3 1
      127 MOVE                             R8 R3
      128 LOADK                            R9 K43 [".FindReplaceAll-ResultRowNode-Pill"]
      129 DUPTABLE                         R10 K47 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      130 LOADK                            R11 K48 ["$SemanticColorShift300"]
      131 SETTABLEKS                       R11 R10 K44 ["BackgroundColor3"]
      133 LOADK                            R11 K49 ["$SemanticColorShift300Transparency"]
      134 SETTABLEKS                       R11 R10 K45 ["BackgroundTransparency"]
      136 LOADK                            R11 K50 ["$SemanticColorContentEmphasis"]
      137 SETTABLEKS                       R11 R10 K46 ["TextColor3"]
      139 NEWTABLE                         R11 0 1
      141 MOVE                             R12 R3
      142 LOADK                            R13 K51 ["::UICorner"]
      143 DUPTABLE                         R14 K53 [{"CornerRadius"}]
      144 GETIMPORT                        R15 K56 [UDim.new]
      146 LOADN                            R16 1
      147 LOADN                            R17 0
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      151 CALL                             R12 2 -1
      152 SETLIST                          R11 R12 -1 [1]
      154 CALL                             R8 3 1
      155 MOVE                             R9 R3
      156 LOADK                            R10 K57 [".FindReplaceAll-ResultRowNode"]
      157 DUPTABLE                         R11 K61 [{"BackgroundTransparency", "BorderSizePixel", "AutoButtonColor", "Text"}]
      158 LOADN                            R12 1
      159 SETTABLEKS                       R12 R11 K45 ["BackgroundTransparency"]
      161 LOADN                            R12 0
      162 SETTABLEKS                       R12 R11 K58 ["BorderSizePixel"]
      164 LOADB                            R12 0
      165 SETTABLEKS                       R12 R11 K59 ["AutoButtonColor"]
      167 LOADK                            R12 K62 [""]
      168 SETTABLEKS                       R12 R11 K60 ["Text"]
      170 CALL                             R9 2 1
      171 MOVE                             R10 R3
      172 LOADK                            R11 K63 [".FindReplaceAll-ScrollingFrame"]
      173 DUPTABLE                         R12 K69 [{"BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
      174 LOADK                            R13 K70 ["$BottomImage"]
      175 SETTABLEKS                       R13 R12 K64 ["BottomImage"]
      177 LOADK                            R13 K71 ["$MidImage"]
      178 SETTABLEKS                       R13 R12 K65 ["MidImage"]
      180 LOADK                            R13 K72 ["$TopImage"]
      181 SETTABLEKS                       R13 R12 K66 ["TopImage"]
      183 LOADK                            R13 K73 ["$ColorActionStandardBackground"]
      184 SETTABLEKS                       R13 R12 K67 ["ScrollBarImageColor3"]
      186 LOADK                            R13 K74 ["$ColorActionStandardBackgroundTransparency"]
      187 SETTABLEKS                       R13 R12 K68 ["ScrollBarImageTransparency"]
      189 CALL                             R10 2 1
      190 MOVE                             R11 R3
      191 LOADK                            R12 K75 [".FindReplaceAll-Content-Default"]
      192 DUPTABLE                         R13 K77 [{"ImageColor3", "TextColor3"}]
      193 LOADK                            R14 K78 ["$SemanticColorContentDefault"]
      194 SETTABLEKS                       R14 R13 K76 ["ImageColor3"]
      196 LOADK                            R14 K78 ["$SemanticColorContentDefault"]
      197 SETTABLEKS                       R14 R13 K46 ["TextColor3"]
      199 CALL                             R11 2 1
      200 MOVE                             R12 R3
      201 LOADK                            R13 K79 [".FindReplaceAll-Content-Emphasis"]
      202 DUPTABLE                         R14 K77 [{"ImageColor3", "TextColor3"}]
      203 LOADK                            R15 K50 ["$SemanticColorContentEmphasis"]
      204 SETTABLEKS                       R15 R14 K76 ["ImageColor3"]
      206 LOADK                            R15 K50 ["$SemanticColorContentEmphasis"]
      207 SETTABLEKS                       R15 R14 K46 ["TextColor3"]
      209 CALL                             R12 2 1
      210 MOVE                             R13 R3
      211 LOADK                            R14 K80 [".FindReplaceAll-Hovered"]
      212 DUPTABLE                         R15 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      213 LOADK                            R16 K82 ["$SemanticColorStatesHover"]
      214 SETTABLEKS                       R16 R15 K44 ["BackgroundColor3"]
      216 LOADK                            R16 K83 ["$SemanticColorStatesHoverTransparency"]
      217 SETTABLEKS                       R16 R15 K45 ["BackgroundTransparency"]
      219 CALL                             R13 2 1
      220 MOVE                             R14 R3
      221 LOADK                            R15 K84 [".FindReplaceAll-Selected"]
      222 DUPTABLE                         R16 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      223 LOADK                            R17 K85 ["$SemanticColorActionPrimaryBrandFill"]
      224 SETTABLEKS                       R17 R16 K44 ["BackgroundColor3"]
      226 LOADK                            R17 K86 [0.76]
      227 SETTABLEKS                       R17 R16 K45 ["BackgroundTransparency"]
      229 CALL                             R14 2 1
      230 MOVE                             R15 R3
      231 LOADK                            R16 K87 [".FindReplaceAll-NotSelected"]
      232 DUPTABLE                         R17 K88 [{"BackgroundTransparency"}]
      233 LOADN                            R18 1
      234 SETTABLEKS                       R18 R17 K45 ["BackgroundTransparency"]
      236 CALL                             R15 2 1
      237 MOVE                             R16 R3
      238 LOADK                            R17 K89 [".FindReplaceAll-BG-Surface0"]
      239 DUPTABLE                         R18 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      240 LOADK                            R19 K90 ["$SemanticColorSurface0"]
      241 SETTABLEKS                       R19 R18 K44 ["BackgroundColor3"]
      243 LOADN                            R19 0
      244 SETTABLEKS                       R19 R18 K45 ["BackgroundTransparency"]
      246 CALL                             R16 2 1
      247 MOVE                             R17 R3
      248 LOADK                            R18 K91 [".FindReplaceAll-BG-Surface100"]
      249 DUPTABLE                         R19 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      250 LOADK                            R20 K92 ["$SemanticColorSurface100"]
      251 SETTABLEKS                       R20 R19 K44 ["BackgroundColor3"]
      253 LOADN                            R20 0
      254 SETTABLEKS                       R20 R19 K45 ["BackgroundTransparency"]
      256 CALL                             R17 2 1
      257 MOVE                             R18 R3
      258 LOADK                            R19 K93 [".FindReplaceAll-BG-Shift300"]
      259 DUPTABLE                         R20 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      260 LOADK                            R21 K48 ["$SemanticColorShift300"]
      261 SETTABLEKS                       R21 R20 K44 ["BackgroundColor3"]
      263 LOADK                            R21 K49 ["$SemanticColorShift300Transparency"]
      264 SETTABLEKS                       R21 R20 K45 ["BackgroundTransparency"]
      266 CALL                             R18 2 1
      267 MOVE                             R19 R3
      268 LOADK                            R20 K94 [".FindReplaceAll-BG-Input"]
      269 DUPTABLE                         R21 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
      270 LOADK                            R22 K95 ["$SemanticColorComponentInputFill"]
      271 SETTABLEKS                       R22 R21 K44 ["BackgroundColor3"]
      273 LOADK                            R22 K96 ["$SemanticColorComponentInputFillTransparency"]
      274 SETTABLEKS                       R22 R21 K45 ["BackgroundTransparency"]
      276 CALL                             R19 2 1
      277 MOVE                             R20 R3
      278 LOADK                            R21 K97 [".FindReplaceAll-Button"]
      279 DUPTABLE                         R22 K98 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
      280 LOADB                            R23 0
      281 SETTABLEKS                       R23 R22 K59 ["AutoButtonColor"]
      283 LOADN                            R23 1
      284 SETTABLEKS                       R23 R22 K45 ["BackgroundTransparency"]
      286 LOADK                            R23 K62 [""]
      287 SETTABLEKS                       R23 R22 K60 ["Text"]
      289 CALL                             R20 2 1
      290 MOVE                             R21 R3
      291 LOADK                            R22 K99 [".FindReplaceAll-GrowX"]
      292 DUPTABLE                         R23 K16 [{"Size"}]
      293 GETIMPORT                        R24 K101 [UDim2.fromScale]
      295 LOADN                            R25 0
      296 LOADN                            R26 1
      297 CALL                             R24 2 1
      298 SETTABLEKS                       R24 R23 K15 ["Size"]
      300 NEWTABLE                         R24 0 1
      302 MOVE                             R25 R3
      303 LOADK                            R26 K102 ["::UIFlexItem"]
      304 DUPTABLE                         R27 K104 [{"FlexMode"}]
      305 GETIMPORT                        R28 K108 [Enum.UIFlexMode.Grow]
      307 SETTABLEKS                       R28 R27 K103 ["FlexMode"]
      309 CALL                             R25 2 -1
      310 SETLIST                          R24 R25 -1 [1]
      312 CALL                             R21 3 1
      313 SETLIST                          R5 R6 16 [1]
      315 MOVE                             R6 R3
      316 LOADK                            R7 K109 [".FindReplaceAll-ShrinkX"]
      317 DUPTABLE                         R8 K111 [{"AutomaticSize"}]
      318 GETIMPORT                        R9 K113 [Enum.AutomaticSize.X]
      320 SETTABLEKS                       R9 R8 K110 ["AutomaticSize"]
      322 NEWTABLE                         R9 0 1
      324 MOVE                             R10 R3
      325 LOADK                            R11 K102 ["::UIFlexItem"]
      326 DUPTABLE                         R12 K104 [{"FlexMode"}]
      327 GETIMPORT                        R13 K115 [Enum.UIFlexMode.Shrink]
      329 SETTABLEKS                       R13 R12 K103 ["FlexMode"]
      331 CALL                             R10 2 -1
      332 SETLIST                          R9 R10 -1 [1]
      334 CALL                             R6 3 1
      335 MOVE                             R7 R3
      336 LOADK                            R8 K116 [".FindReplaceAll-FillX"]
      337 DUPTABLE                         R9 K16 [{"Size"}]
      338 GETIMPORT                        R10 K101 [UDim2.fromScale]
      340 LOADN                            R11 1
      341 LOADN                            R12 1
      342 CALL                             R10 2 1
      343 SETTABLEKS                       R10 R9 K15 ["Size"]
      345 NEWTABLE                         R10 0 1
      347 MOVE                             R11 R3
      348 LOADK                            R12 K102 ["::UIFlexItem"]
      349 DUPTABLE                         R13 K104 [{"FlexMode"}]
      350 GETIMPORT                        R14 K118 [Enum.UIFlexMode.Fill]
      352 SETTABLEKS                       R14 R13 K103 ["FlexMode"]
      354 CALL                             R11 2 -1
      355 SETLIST                          R10 R11 -1 [1]
      357 CALL                             R7 3 1
      358 MOVE                             R8 R3
      359 LOADK                            R9 K119 [".FindReplaceAll-SidePadS ::UIPadding"]
      360 DUPTABLE                         R10 K122 [{"PaddingLeft", "PaddingRight"}]
      361 GETIMPORT                        R11 K56 [UDim.new]
      363 LOADN                            R12 0
      364 LOADN                            R13 4
      365 CALL                             R11 2 1
      366 SETTABLEKS                       R11 R10 K120 ["PaddingLeft"]
      368 GETIMPORT                        R11 K56 [UDim.new]
      370 LOADN                            R12 0
      371 LOADN                            R13 4
      372 CALL                             R11 2 1
      373 SETTABLEKS                       R11 R10 K121 ["PaddingRight"]
      375 CALL                             R8 2 1
      376 MOVE                             R9 R3
      377 LOADK                            R10 K123 [".FindReplaceAll-SidePadM ::UIPadding"]
      378 DUPTABLE                         R11 K122 [{"PaddingLeft", "PaddingRight"}]
      379 GETIMPORT                        R12 K56 [UDim.new]
      381 LOADN                            R13 0
      382 LOADN                            R14 8
      383 CALL                             R12 2 1
      384 SETTABLEKS                       R12 R11 K120 ["PaddingLeft"]
      386 GETIMPORT                        R12 K56 [UDim.new]
      388 LOADN                            R13 0
      389 LOADN                            R14 8
      390 CALL                             R12 2 1
      391 SETTABLEKS                       R12 R11 K121 ["PaddingRight"]
      393 CALL                             R9 2 1
      394 MOVE                             R10 R3
      395 LOADK                            R11 K124 [".FindReplaceAll-XColumnS"]
      396 NEWTABLE                         R12 0 0
      398 NEWTABLE                         R13 0 1
      400 MOVE                             R14 R3
      401 LOADK                            R15 K125 ["::UIListLayout"]
      402 DUPTABLE                         R16 K129 [{"FillDirection", "Padding", "SortOrder"}]
      403 GETIMPORT                        R17 K131 [Enum.FillDirection.Vertical]
      405 SETTABLEKS                       R17 R16 K126 ["FillDirection"]
      407 GETIMPORT                        R17 K56 [UDim.new]
      409 LOADN                            R18 0
      410 LOADN                            R19 4
      411 CALL                             R17 2 1
      412 SETTABLEKS                       R17 R16 K127 ["Padding"]
      414 GETIMPORT                        R17 K133 [Enum.SortOrder.LayoutOrder]
      416 SETTABLEKS                       R17 R16 K128 ["SortOrder"]
      418 CALL                             R14 2 -1
      419 SETLIST                          R13 R14 -1 [1]
      421 CALL                             R10 3 1
      422 MOVE                             R11 R3
      423 LOADK                            R12 K134 [".FindReplaceAll-TopPadM ::UIPadding"]
      424 DUPTABLE                         R13 K136 [{"PaddingTop"}]
      425 GETIMPORT                        R14 K56 [UDim.new]
      427 LOADN                            R15 0
      428 LOADN                            R16 8
      429 CALL                             R14 2 1
      430 SETTABLEKS                       R14 R13 K135 ["PaddingTop"]
      432 CALL                             R11 2 1
      433 MOVE                             R12 R3
      434 LOADK                            R13 K137 [".FindReplaceAll-XPad ::UIPadding"]
      435 DUPTABLE                         R14 K139 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      436 GETIMPORT                        R15 K56 [UDim.new]
      438 LOADN                            R16 0
      439 LOADN                            R17 8
      440 CALL                             R15 2 1
      441 SETTABLEKS                       R15 R14 K120 ["PaddingLeft"]
      443 GETIMPORT                        R15 K56 [UDim.new]
      445 LOADN                            R16 0
      446 LOADN                            R17 8
      447 CALL                             R15 2 1
      448 SETTABLEKS                       R15 R14 K121 ["PaddingRight"]
      450 GETIMPORT                        R15 K56 [UDim.new]
      452 LOADN                            R16 0
      453 LOADN                            R17 8
      454 CALL                             R15 2 1
      455 SETTABLEKS                       R15 R14 K135 ["PaddingTop"]
      457 GETIMPORT                        R15 K56 [UDim.new]
      459 LOADN                            R16 0
      460 LOADN                            R17 8
      461 CALL                             R15 2 1
      462 SETTABLEKS                       R15 R14 K138 ["PaddingBottom"]
      464 CALL                             R12 2 1
      465 MOVE                             R13 R3
      466 LOADK                            R14 K140 [".FindReplaceAll-PadRight ::UIPadding"]
      467 DUPTABLE                         R15 K141 [{"PaddingRight"}]
      468 GETIMPORT                        R16 K56 [UDim.new]
      470 LOADN                            R17 0
      471 LOADN                            R18 8
      472 CALL                             R16 2 1
      473 SETTABLEKS                       R16 R15 K121 ["PaddingRight"]
      475 CALL                             R13 2 1
      476 MOVE                             R14 R3
      477 LOADK                            R15 K142 [".FindReplaceAll-PadLeftS ::UIPadding"]
      478 DUPTABLE                         R16 K143 [{"PaddingLeft"}]
      479 GETIMPORT                        R17 K56 [UDim.new]
      481 LOADN                            R18 0
      482 LOADN                            R19 6
      483 CALL                             R17 2 1
      484 SETTABLEKS                       R17 R16 K120 ["PaddingLeft"]
      486 CALL                             R14 2 1
      487 MOVE                             R15 R3
      488 LOADK                            R16 K144 [".FindReplaceAll-Content-Disabled"]
      489 DUPTABLE                         R17 K145 [{"TextColor3"}]
      490 LOADK                            R18 K146 ["$SemanticColorContentDisabled"]
      491 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      493 CALL                             R15 2 1
      494 MOVE                             R16 R3
      495 LOADK                            R17 K147 [".FindReplaceAll-Content-Muted"]
      496 DUPTABLE                         R18 K77 [{"ImageColor3", "TextColor3"}]
      497 LOADK                            R19 K148 ["$SemanticColorContentMuted"]
      498 SETTABLEKS                       R19 R18 K76 ["ImageColor3"]
      500 LOADK                            R19 K148 ["$SemanticColorContentMuted"]
      501 SETTABLEKS                       R19 R18 K46 ["TextColor3"]
      503 CALL                             R16 2 1
      504 MOVE                             R17 R3
      505 LOADK                            R18 K149 [".FindReplaceAll-Content-PrimaryBrandFill"]
      506 DUPTABLE                         R19 K77 [{"ImageColor3", "TextColor3"}]
      507 LOADK                            R20 K85 ["$SemanticColorActionPrimaryBrandFill"]
      508 SETTABLEKS                       R20 R19 K76 ["ImageColor3"]
      510 LOADK                            R20 K85 ["$SemanticColorActionPrimaryBrandFill"]
      511 SETTABLEKS                       R20 R19 K46 ["TextColor3"]
      513 CALL                             R17 2 1
      514 MOVE                             R18 R3
      515 LOADK                            R19 K150 [".FindReplaceAll-Content-Standard"]
      516 DUPTABLE                         R20 K151 [{"ImageColor3"}]
      517 LOADK                            R21 K152 ["$SemanticColorContentStandard"]
      518 SETTABLEKS                       R21 R20 K76 ["ImageColor3"]
      520 CALL                             R18 2 1
      521 MOVE                             R19 R3
      522 LOADK                            R20 K153 [".FindReplaceAll-Content-Surface-Outline"]
      523 DUPTABLE                         R21 K155 [{"ImageColor3", "ImageTransparency"}]
      524 LOADK                            R22 K156 ["$SemanticColorSurfaceOutline"]
      525 SETTABLEKS                       R22 R21 K76 ["ImageColor3"]
      527 LOADK                            R22 K157 ["$SemanticColorSurfaceOutlineTransparency"]
      528 SETTABLEKS                       R22 R21 K154 ["ImageTransparency"]
      530 CALL                             R19 2 1
      531 MOVE                             R20 R3
      532 LOADK                            R21 K158 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
      533 DUPTABLE                         R22 K151 [{"ImageColor3"}]
      534 LOADK                            R23 K156 ["$SemanticColorSurfaceOutline"]
      535 SETTABLEKS                       R23 R22 K76 ["ImageColor3"]
      537 CALL                             R20 2 1
      538 MOVE                             R21 R3
      539 LOADK                            R22 K159 [".FindReplaceAll-Text-Size-12"]
      540 DUPTABLE                         R23 K161 [{"TextSize"}]
      541 LOADN                            R25 12
      542 GETTABLEKS                       R26 R2 K162 ["defaultFontScale"]
      544 MUL                              R24 R25 R26
      545 SETTABLEKS                       R24 R23 K160 ["TextSize"]
      547 CALL                             R21 2 1
      548 SETLIST                          R5 R6 16 [17]
      550 MOVE                             R6 R3
      551 LOADK                            R7 K163 [".FindReplaceAll-Text-Size-14"]
      552 DUPTABLE                         R8 K161 [{"TextSize"}]
      553 LOADN                            R10 14
      554 GETTABLEKS                       R11 R2 K162 ["defaultFontScale"]
      556 MUL                              R9 R10 R11
      557 SETTABLEKS                       R9 R8 K160 ["TextSize"]
      559 CALL                             R6 2 1
      560 MOVE                             R7 R3
      561 LOADK                            R8 K164 [".FindReplaceAll-Text-Size-20"]
      562 DUPTABLE                         R9 K161 [{"TextSize"}]
      563 LOADN                            R11 20
      564 GETTABLEKS                       R12 R2 K162 ["defaultFontScale"]
      566 MUL                              R10 R11 R12
      567 SETTABLEKS                       R10 R9 K160 ["TextSize"]
      569 CALL                             R7 2 1
      570 MOVE                             R8 R3
      571 LOADK                            R9 K165 [".FindReplaceAll-View"]
      572 DUPTABLE                         R10 K166 [{"BackgroundTransparency", "Size"}]
      573 LOADN                            R11 1
      574 SETTABLEKS                       R11 R10 K45 ["BackgroundTransparency"]
      576 GETIMPORT                        R11 K101 [UDim2.fromScale]
      578 LOADN                            R12 1
      579 LOADN                            R13 1
      580 CALL                             R11 2 1
      581 SETTABLEKS                       R11 R10 K15 ["Size"]
      583 CALL                             R8 2 1
      584 MOVE                             R9 R3
      585 LOADK                            R10 K167 [".FindReplaceAll-X-RowS"]
      586 NEWTABLE                         R11 0 0
      588 NEWTABLE                         R12 0 1
      590 MOVE                             R13 R3
      591 LOADK                            R14 K125 ["::UIListLayout"]
      592 DUPTABLE                         R15 K129 [{"FillDirection", "Padding", "SortOrder"}]
      593 GETIMPORT                        R16 K169 [Enum.FillDirection.Horizontal]
      595 SETTABLEKS                       R16 R15 K126 ["FillDirection"]
      597 GETIMPORT                        R16 K56 [UDim.new]
      599 LOADN                            R17 0
      600 LOADN                            R18 5
      601 CALL                             R16 2 1
      602 SETTABLEKS                       R16 R15 K127 ["Padding"]
      604 GETIMPORT                        R16 K133 [Enum.SortOrder.LayoutOrder]
      606 SETTABLEKS                       R16 R15 K128 ["SortOrder"]
      608 CALL                             R13 2 -1
      609 SETLIST                          R12 R13 -1 [1]
      611 CALL                             R9 3 1
      612 MOVE                             R10 R3
      613 LOADK                            R11 K170 [".FindReplaceAll-SessionView-ScrollingFrame"]
      614 DUPTABLE                         R12 K171 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
      615 LOADK                            R13 K172 ["$SemanticColorActionSecondary"]
      616 SETTABLEKS                       R13 R12 K67 ["ScrollBarImageColor3"]
      618 LOADK                            R13 K173 ["$SemanticColorActionSecondaryTransparency"]
      619 SETTABLEKS                       R13 R12 K68 ["ScrollBarImageTransparency"]
      621 CALL                             R10 2 1
      622 MOVE                             R11 R3
      623 LOADK                            R12 K174 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
      624 DUPTABLE                         R13 K176 [{"AspectRatio"}]
      625 LOADN                            R14 1
      626 SETTABLEKS                       R14 R13 K175 ["AspectRatio"]
      628 CALL                             R11 2 1
      629 MOVE                             R12 R3
      630 LOADK                            R13 K177 [".FindReplaceAll-Icon"]
      631 DUPTABLE                         R14 K166 [{"BackgroundTransparency", "Size"}]
      632 LOADN                            R15 1
      633 SETTABLEKS                       R15 R14 K45 ["BackgroundTransparency"]
      635 GETIMPORT                        R15 K19 [UDim2.fromOffset]
      637 LOADN                            R16 16
      638 LOADN                            R17 16
      639 CALL                             R15 2 1
      640 SETTABLEKS                       R15 R14 K15 ["Size"]
      642 CALL                             R12 2 1
      643 MOVE                             R13 R3
      644 LOADK                            R14 K178 [".FindReplaceAll-ToggleButton"]
      645 DUPTABLE                         R15 K166 [{"BackgroundTransparency", "Size"}]
      646 LOADN                            R16 1
      647 SETTABLEKS                       R16 R15 K45 ["BackgroundTransparency"]
      649 GETIMPORT                        R16 K19 [UDim2.fromOffset]
      651 LOADN                            R17 24
      652 LOADN                            R18 24
      653 CALL                             R16 2 1
      654 SETTABLEKS                       R16 R15 K15 ["Size"]
      656 NEWTABLE                         R16 0 1
      658 MOVE                             R17 R3
      659 LOADK                            R18 K179 [":: UICorner"]
      660 DUPTABLE                         R19 K53 [{"CornerRadius"}]
      661 GETIMPORT                        R20 K56 [UDim.new]
      663 LOADN                            R21 0
      664 LOADN                            R22 5
      665 CALL                             R20 2 1
      666 SETTABLEKS                       R20 R19 K52 ["CornerRadius"]
      668 CALL                             R17 2 -1
      669 SETLIST                          R16 R17 -1 [1]
      671 CALL                             R13 3 1
      672 MOVE                             R14 R3
      673 LOADK                            R15 K180 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
      674 DUPTABLE                         R16 K176 [{"AspectRatio"}]
      675 LOADN                            R17 2
      676 SETTABLEKS                       R17 R16 K175 ["AspectRatio"]
      678 CALL                             R14 2 1
      679 MOVE                             R15 R3
      680 LOADK                            R16 K181 [">> .FindReplaceAll-StandardText"]
      681 DUPTABLE                         R17 K183 [{"Font", "TextColor3", "TextSize"}]
      682 GETTABLEKS                       R18 R2 K184 ["defaultFont"]
      684 SETTABLEKS                       R18 R17 K182 ["Font"]
      686 LOADK                            R18 K152 ["$SemanticColorContentStandard"]
      687 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      689 LOADN                            R19 12
      690 GETTABLEKS                       R20 R2 K162 ["defaultFontScale"]
      692 MUL                              R18 R19 R20
      693 SETTABLEKS                       R18 R17 K160 ["TextSize"]
      695 CALL                             R15 2 1
      696 MOVE                             R16 R3
      697 LOADK                            R17 K185 ["TextLabel"]
      698 DUPTABLE                         R18 K186 [{"Font"}]
      699 GETTABLEKS                       R19 R2 K184 ["defaultFont"]
      701 SETTABLEKS                       R19 R18 K182 ["Font"]
      703 CALL                             R16 2 1
      704 MOVE                             R17 R3
      705 LOADK                            R18 K187 ["TextButton"]
      706 DUPTABLE                         R19 K186 [{"Font"}]
      707 GETTABLEKS                       R20 R2 K184 ["defaultFont"]
      709 SETTABLEKS                       R20 R19 K182 ["Font"]
      711 CALL                             R17 2 1
      712 MOVE                             R18 R3
      713 LOADK                            R19 K188 [".FindReplaceAll-UIStroke"]
      714 DUPTABLE                         R20 K192 [{"Color", "Transparency", "Thickness", "BorderSizePixel"}]
      715 LOADK                            R21 K48 ["$SemanticColorShift300"]
      716 SETTABLEKS                       R21 R20 K189 ["Color"]
      718 LOADK                            R21 K49 ["$SemanticColorShift300Transparency"]
      719 SETTABLEKS                       R21 R20 K190 ["Transparency"]
      721 LOADN                            R21 1
      722 SETTABLEKS                       R21 R20 K191 ["Thickness"]
      724 LOADN                            R21 0
      725 SETTABLEKS                       R21 R20 K58 ["BorderSizePixel"]
      727 CALL                             R18 2 -1
      728 SETLIST                          R5 R6 -1 [33]
      730 NEWTABLE                         R6 0 0
      732 MOVE                             R7 R4
      733 LOADK                            R8 K193 ["FindReplaceAllPlugin"]
      734 MOVE                             R9 R5
      735 MOVE                             R10 R6
      736 CALL                             R7 3 -1
      737 RETURN                           R7 -1
