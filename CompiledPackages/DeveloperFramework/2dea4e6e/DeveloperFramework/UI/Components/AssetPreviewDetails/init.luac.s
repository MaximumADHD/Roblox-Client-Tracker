PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R5 R1 K3 ["Size"]
        9 GETTABLEKS                       R6 R2 K3 ["Size"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R5 R2 K4 ["LeftWidthScale"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["new"]
       17 CALL                             R6 0 1
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 GETTABLEKS                       R9 R1 K6 ["LastUpdatedDate"]
       22 JUMPIFNOT                        R9 ; [+19]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R10 R1 K6 ["LastUpdatedDate"]
       26 LOADK                            R11 K7 ["LL"]
       27 NAMECALL                         R12 R3 K8 ["getLocale"]
       29 CALL                             R12 1 -1
       30 CALL                             R9 -1 1
       31 MOVE                             R7 R9
       32 GETUPVAL                         R11 3
       33 LOADK                            R12 K9 ["AssetPreview"]
       34 LOADK                            R13 K6 ["LastUpdatedDate"]
       35 DUPTABLE                         R14 K11 [{"date"}]
       36 SETTABLEKS                       R7 R14 K10 ["date"]
       38 NAMECALL                         R9 R3 K12 ["getProjectText"]
       40 CALL                             R9 5 1
       41 MOVE                             R8 R9
       42 LOADN                            R9 0
       43 LOADB                            R10 0
       44 GETTABLEKS                       R11 R1 K13 ["Voting"]
       46 JUMPIFNOT                        R11 ; [+18]
       47 GETTABLEKS                       R11 R1 K13 ["Voting"]
       49 GETTABLEKS                       R11 R11 K14 ["VoteCount"]
       51 JUMPIFEQKNIL                     R11 ; [+6]
       53 GETTABLEKS                       R11 R1 K13 ["Voting"]
       55 GETTABLEKS                       R9 R11 K14 ["VoteCount"]
       57 JUMP                             ; [+1]
       58 LOADN                            R9 0
       59 GETUPVAL                         R11 4
       60 GETTABLEKS                       R11 R11 K15 ["hasEnoughRatings"]
       62 MOVE                             R12 R9
       63 CALL                             R11 1 1
       64 MOVE                             R10 R11
       65 GETIMPORT                        R11 K19 [Enum.FillDirection.Horizontal]
       67 GETTABLEKS                       R12 R2 K20 ["VoteSpacingHorizontal"]
       69 GETTABLEKS                       R13 R1 K21 ["AbsoluteSize"]
       71 GETTABLEKS                       R13 R13 K22 ["X"]
       73 GETTABLEKS                       R14 R2 K23 ["MinBreakpointWidth"]
       75 JUMPIFNOTLT                      R13 R14 ; [+5]
       77 GETIMPORT                        R11 K25 [Enum.FillDirection.Vertical]
       79 GETTABLEKS                       R12 R2 K26 ["VoteSpacingVertical"]
       81 GETTABLEKS                       R13 R1 K13 ["Voting"]
       83 JUMPIFNOT                        R13 ; [+4]
       84 GETTABLEKS                       R13 R1 K13 ["Voting"]
       86 GETTABLEKS                       R13 R13 K27 ["CanVote"]
       88 MOVE                             R14 R13
       89 JUMPIFNOT                        R14 ; [+3]
       90 GETTABLEKS                       R15 R1 K28 ["IsUninstalledPlugin"]
       92 NOT                              R14 R15
       93 GETUPVAL                         R15 5
       94 GETTABLEKS                       R15 R15 K29 ["createElement"]
       96 GETUPVAL                         R16 6
       97 GETUPVAL                         R17 7
       98 DUPTABLE                         R18 K39 [{"AutomaticSize", "BackgroundColor", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Position", "Size", "Spacing", "Style"}]
       99 GETIMPORT                        R19 K41 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R19 R18 K30 ["AutomaticSize"]
      103 GETTABLEKS                       R19 R2 K31 ["BackgroundColor"]
      105 SETTABLEKS                       R19 R18 K31 ["BackgroundColor"]
      107 GETIMPORT                        R19 K43 [Enum.HorizontalAlignment.Left]
      109 SETTABLEKS                       R19 R18 K32 ["HorizontalAlignment"]
      111 GETIMPORT                        R19 K25 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R19 R18 K33 ["Layout"]
      115 GETTABLEKS                       R19 R1 K34 ["LayoutOrder"]
      117 SETTABLEKS                       R19 R18 K34 ["LayoutOrder"]
      119 GETTABLEKS                       R19 R2 K35 ["Padding"]
      121 SETTABLEKS                       R19 R18 K35 ["Padding"]
      123 GETTABLEKS                       R19 R1 K36 ["Position"]
      125 SETTABLEKS                       R19 R18 K36 ["Position"]
      127 SETTABLEKS                       R4 R18 K3 ["Size"]
      129 LOADN                            R19 10
      130 SETTABLEKS                       R19 R18 K37 ["Spacing"]
      132 LOADK                            R19 K44 ["RoundBox"]
      133 SETTABLEKS                       R19 R18 K38 ["Style"]
      135 GETTABLEKS                       R19 R1 K45 ["WrapperProps"]
      137 CALL                             R17 2 1
      138 DUPTABLE                         R18 K52 [{"VoteBar", "VoteSeparator", "Favorites", "Separator", "PackageContainer", "ScriptsContainer"}]
      139 GETUPVAL                         R19 5
      140 GETTABLEKS                       R19 R19 K29 ["createElement"]
      142 GETUPVAL                         R20 6
      143 DUPTABLE                         R21 K53 [{"AutomaticSize", "LayoutOrder", "Size"}]
      144 GETIMPORT                        R22 K41 [Enum.AutomaticSize.Y]
      146 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      148 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      150 CALL                             R22 1 1
      151 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      153 GETIMPORT                        R22 K56 [UDim2.new]
      155 LOADN                            R23 1
      156 LOADN                            R24 0
      157 LOADN                            R25 0
      158 LOADN                            R26 0
      159 CALL                             R22 4 1
      160 SETTABLEKS                       R22 R21 K3 ["Size"]
      162 DUPTABLE                         R22 K58 [{"Left", "Right"}]
      163 GETTABLEKS                       R24 R1 K13 ["Voting"]
      165 JUMPIFNOT                        R24 ; [+117]
      166 GETUPVAL                         R23 5
      167 GETTABLEKS                       R23 R23 K29 ["createElement"]
      169 GETUPVAL                         R24 6
      170 DUPTABLE                         R25 K60 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      171 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      173 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      175 GETIMPORT                        R26 K43 [Enum.HorizontalAlignment.Left]
      177 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      179 SETTABLEKS                       R11 R25 K33 ["Layout"]
      181 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      183 CALL                             R26 1 1
      184 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      186 GETIMPORT                        R26 K56 [UDim2.new]
      188 MOVE                             R27 R5
      189 LOADN                            R28 0
      190 LOADN                            R29 0
      191 LOADN                            R30 0
      192 CALL                             R26 4 1
      193 SETTABLEKS                       R26 R25 K3 ["Size"]
      195 SETTABLEKS                       R12 R25 K37 ["Spacing"]
      197 GETIMPORT                        R26 K64 [Enum.VerticalAlignment.Center]
      199 SETTABLEKS                       R26 R25 K59 ["VerticalAlignment"]
      201 DUPTABLE                         R26 K66 [{"Votes", "VoteCount"}]
      202 JUMPIFNOT                        R10 ; [+36]
      203 GETTABLEKS                       R28 R1 K13 ["Voting"]
      205 JUMPIFNOT                        R28 ; [+33]
      206 GETUPVAL                         R27 5
      207 GETTABLEKS                       R27 R27 K29 ["createElement"]
      209 GETUPVAL                         R28 8
      210 DUPTABLE                         R29 K67 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Voting"}]
      211 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      213 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      215 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      217 CALL                             R30 1 1
      218 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      220 GETTABLEKS                       R30 R2 K65 ["Votes"]
      222 SETTABLEKS                       R30 R29 K38 ["Style"]
      224 GETIMPORT                        R30 K56 [UDim2.new]
      226 LOADN                            R31 0
      227 LOADN                            R32 0
      228 LOADN                            R33 0
      229 LOADN                            R34 0
      230 CALL                             R30 4 1
      231 SETTABLEKS                       R30 R29 K3 ["Size"]
      233 GETTABLEKS                       R30 R1 K13 ["Voting"]
      235 SETTABLEKS                       R30 R29 K13 ["Voting"]
      237 CALL                             R27 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R27
      240 SETTABLEKS                       R27 R26 K65 ["Votes"]
      242 GETUPVAL                         R27 5
      243 GETTABLEKS                       R27 R27 K29 ["createElement"]
      245 GETUPVAL                         R28 9
      246 DUPTABLE                         R29 K71 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      247 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      249 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      251 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      253 CALL                             R30 1 1
      254 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      256 GETTABLEKS                       R30 R2 K14 ["VoteCount"]
      258 SETTABLEKS                       R30 R29 K38 ["Style"]
      260 GETUPVAL                         R30 4
      261 GETTABLEKS                       R30 R30 K72 ["getFormattedVoteNumberAndText"]
      263 MOVE                             R31 R9
      264 MOVE                             R32 R3
      265 LOADB                            R33 0
      266 LOADB                            R34 1
      267 CALL                             R30 4 1
      268 SETTABLEKS                       R30 R29 K68 ["Text"]
      270 GETIMPORT                        R30 K73 [Enum.TextXAlignment.Left]
      272 SETTABLEKS                       R30 R29 K69 ["TextXAlignment"]
      274 GETIMPORT                        R30 K75 [Enum.TextTruncate.AtEnd]
      276 SETTABLEKS                       R30 R29 K70 ["TextTruncate"]
      278 CALL                             R27 2 1
      279 SETTABLEKS                       R27 R26 K14 ["VoteCount"]
      281 CALL                             R23 3 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R23
      284 SETTABLEKS                       R23 R22 K42 ["Left"]
      286 JUMPIFNOT                        R14 ; [+124]
      287 GETUPVAL                         R23 5
      288 GETTABLEKS                       R23 R23 K29 ["createElement"]
      290 GETUPVAL                         R24 6
      291 DUPTABLE                         R25 K77 [{"AutomaticSize", "Size", "AnchorPoint", "Position", "Spacing", "Layout", "LayoutOrder", "VerticalAlignment"}]
      292 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      294 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      296 GETIMPORT                        R26 K56 [UDim2.new]
      298 LOADN                            R27 0
      299 LOADN                            R28 0
      300 LOADN                            R29 0
      301 LOADN                            R30 0
      302 CALL                             R26 4 1
      303 SETTABLEKS                       R26 R25 K3 ["Size"]
      305 GETIMPORT                        R26 K79 [Vector2.new]
      307 LOADN                            R27 1
      308 LOADN                            R28 0
      309 CALL                             R26 2 1
      310 SETTABLEKS                       R26 R25 K76 ["AnchorPoint"]
      312 GETIMPORT                        R26 K56 [UDim2.new]
      314 LOADN                            R27 1
      315 LOADN                            R28 0
      316 LOADN                            R29 0
      317 LOADN                            R30 0
      318 CALL                             R26 4 1
      319 SETTABLEKS                       R26 R25 K36 ["Position"]
      321 GETTABLEKS                       R26 R2 K80 ["AssetHeader"]
      323 GETTABLEKS                       R26 R26 K81 ["VoteSpacing"]
      325 SETTABLEKS                       R26 R25 K37 ["Spacing"]
      327 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      329 SETTABLEKS                       R26 R25 K33 ["Layout"]
      331 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      333 CALL                             R26 1 1
      334 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      336 GETIMPORT                        R26 K83 [Enum.VerticalAlignment.Top]
      338 SETTABLEKS                       R26 R25 K59 ["VerticalAlignment"]
      340 DUPTABLE                         R26 K86 [{"VoteUp", "VoteDown"}]
      341 GETUPVAL                         R27 5
      342 GETTABLEKS                       R27 R27 K29 ["createElement"]
      344 GETUPVAL                         R28 10
      345 DUPTABLE                         R29 K90 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
      346 SETTABLEKS                       R13 R29 K27 ["CanVote"]
      348 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      350 CALL                             R30 1 1
      351 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      353 GETTABLEKS                       R30 R0 K0 ["props"]
      355 GETTABLEKS                       R30 R30 K91 ["OnVoteUp"]
      357 SETTABLEKS                       R30 R29 K87 ["OnClick"]
      359 GETTABLEKS                       R30 R1 K13 ["Voting"]
      361 GETTABLEKS                       R30 R30 K88 ["UserVote"]
      363 SETTABLEKS                       R30 R29 K88 ["UserVote"]
      365 GETUPVAL                         R30 10
      366 GETTABLEKS                       R30 R30 K89 ["VoteType"]
      368 GETTABLEKS                       R30 R30 K92 ["UpVote"]
      370 SETTABLEKS                       R30 R29 K89 ["VoteType"]
      372 CALL                             R27 2 1
      373 SETTABLEKS                       R27 R26 K84 ["VoteUp"]
      375 GETUPVAL                         R27 5
      376 GETTABLEKS                       R27 R27 K29 ["createElement"]
      378 GETUPVAL                         R28 10
      379 DUPTABLE                         R29 K90 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
      380 SETTABLEKS                       R13 R29 K27 ["CanVote"]
      382 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      384 CALL                             R30 1 1
      385 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      387 GETTABLEKS                       R30 R0 K0 ["props"]
      389 GETTABLEKS                       R30 R30 K93 ["OnVoteDown"]
      391 SETTABLEKS                       R30 R29 K87 ["OnClick"]
      393 GETTABLEKS                       R30 R1 K13 ["Voting"]
      395 GETTABLEKS                       R30 R30 K88 ["UserVote"]
      397 SETTABLEKS                       R30 R29 K88 ["UserVote"]
      399 GETUPVAL                         R30 10
      400 GETTABLEKS                       R30 R30 K89 ["VoteType"]
      402 GETTABLEKS                       R30 R30 K94 ["DownVote"]
      404 SETTABLEKS                       R30 R29 K89 ["VoteType"]
      406 CALL                             R27 2 1
      407 SETTABLEKS                       R27 R26 K85 ["VoteDown"]
      409 CALL                             R23 3 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R23
      412 SETTABLEKS                       R23 R22 K57 ["Right"]
      414 CALL                             R19 3 1
      415 SETTABLEKS                       R19 R18 K46 ["VoteBar"]
      417 GETTABLEKS                       R20 R1 K48 ["Favorites"]
      419 JUMPIFNOT                        R20 ; [+12]
      420 GETUPVAL                         R19 5
      421 GETTABLEKS                       R19 R19 K29 ["createElement"]
      423 GETUPVAL                         R20 11
      424 DUPTABLE                         R21 K95 [{"LayoutOrder"}]
      425 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      427 CALL                             R22 1 1
      428 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      430 CALL                             R19 2 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R19
      433 SETTABLEKS                       R19 R18 K47 ["VoteSeparator"]
      435 GETTABLEKS                       R20 R1 K48 ["Favorites"]
      437 JUMPIFNOT                        R20 ; [+191]
      438 GETUPVAL                         R19 5
      439 GETTABLEKS                       R19 R19 K29 ["createElement"]
      441 GETUPVAL                         R20 6
      442 DUPTABLE                         R21 K53 [{"AutomaticSize", "LayoutOrder", "Size"}]
      443 GETIMPORT                        R22 K41 [Enum.AutomaticSize.Y]
      445 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      447 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      449 CALL                             R22 1 1
      450 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      452 GETIMPORT                        R22 K56 [UDim2.new]
      454 LOADN                            R23 1
      455 LOADN                            R24 0
      456 LOADN                            R25 0
      457 LOADN                            R26 0
      458 CALL                             R22 4 1
      459 SETTABLEKS                       R22 R21 K3 ["Size"]
      461 DUPTABLE                         R22 K58 [{"Left", "Right"}]
      462 GETUPVAL                         R23 5
      463 GETTABLEKS                       R23 R23 K29 ["createElement"]
      465 GETUPVAL                         R24 6
      466 DUPTABLE                         R25 K60 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      467 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      469 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      471 GETIMPORT                        R26 K43 [Enum.HorizontalAlignment.Left]
      473 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      475 SETTABLEKS                       R11 R25 K33 ["Layout"]
      477 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      479 CALL                             R26 1 1
      480 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      482 GETIMPORT                        R26 K56 [UDim2.new]
      484 MOVE                             R27 R5
      485 LOADN                            R28 0
      486 LOADN                            R29 0
      487 LOADN                            R30 0
      488 CALL                             R26 4 1
      489 SETTABLEKS                       R26 R25 K3 ["Size"]
      491 SETTABLEKS                       R12 R25 K37 ["Spacing"]
      493 GETIMPORT                        R26 K64 [Enum.VerticalAlignment.Center]
      495 SETTABLEKS                       R26 R25 K59 ["VerticalAlignment"]
      497 DUPTABLE                         R26 K97 [{"FavoriteLabel"}]
      498 GETUPVAL                         R27 5
      499 GETTABLEKS                       R27 R27 K29 ["createElement"]
      501 GETUPVAL                         R28 9
      502 DUPTABLE                         R29 K71 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      503 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      505 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      507 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      509 CALL                             R30 1 1
      510 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      512 GETTABLEKS                       R30 R2 K98 ["InfoRow"]
      514 GETTABLEKS                       R30 R30 K99 ["TitleText"]
      516 SETTABLEKS                       R30 R29 K38 ["Style"]
      518 GETUPVAL                         R32 3
      519 LOADK                            R33 K9 ["AssetPreview"]
      520 LOADK                            R34 K48 ["Favorites"]
      521 NAMECALL                         R30 R3 K12 ["getProjectText"]
      523 CALL                             R30 4 1
      524 SETTABLEKS                       R30 R29 K68 ["Text"]
      526 GETIMPORT                        R30 K73 [Enum.TextXAlignment.Left]
      528 SETTABLEKS                       R30 R29 K69 ["TextXAlignment"]
      530 GETIMPORT                        R30 K75 [Enum.TextTruncate.AtEnd]
      532 SETTABLEKS                       R30 R29 K70 ["TextTruncate"]
      534 CALL                             R27 2 1
      535 SETTABLEKS                       R27 R26 K96 ["FavoriteLabel"]
      537 CALL                             R23 3 1
      538 SETTABLEKS                       R23 R22 K42 ["Left"]
      540 GETUPVAL                         R23 5
      541 GETTABLEKS                       R23 R23 K29 ["createElement"]
      543 GETUPVAL                         R24 6
      544 DUPTABLE                         R25 K100 [{"AutomaticSize", "AnchorPoint", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size", "VerticalAlignment"}]
      545 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      547 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      549 GETIMPORT                        R26 K79 [Vector2.new]
      551 LOADN                            R27 1
      552 LOADN                            R28 0
      553 CALL                             R26 2 1
      554 SETTABLEKS                       R26 R25 K76 ["AnchorPoint"]
      556 GETIMPORT                        R26 K101 [Enum.HorizontalAlignment.Right]
      558 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      560 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      562 SETTABLEKS                       R26 R25 K33 ["Layout"]
      564 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      566 CALL                             R26 1 1
      567 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      569 GETIMPORT                        R26 K56 [UDim2.new]
      571 LOADN                            R27 1
      572 LOADN                            R28 0
      573 LOADN                            R29 0
      574 LOADN                            R30 0
      575 CALL                             R26 4 1
      576 SETTABLEKS                       R26 R25 K36 ["Position"]
      578 GETIMPORT                        R26 K56 [UDim2.new]
      580 SUBRK                            R27 R102 K5 ["new"]
      581 LOADN                            R28 0
      582 LOADN                            R29 0
      583 LOADN                            R30 0
      584 CALL                             R26 4 1
      585 SETTABLEKS                       R26 R25 K3 ["Size"]
      587 GETIMPORT                        R26 K64 [Enum.VerticalAlignment.Center]
      589 SETTABLEKS                       R26 R25 K59 ["VerticalAlignment"]
      591 DUPTABLE                         R26 K103 [{"Favorites"}]
      592 GETUPVAL                         R27 5
      593 GETTABLEKS                       R27 R27 K29 ["createElement"]
      595 GETUPVAL                         R28 12
      596 GETUPVAL                         R29 13
      597 GETTABLEKS                       R29 R29 K104 ["JoinDictionaries"]
      599 DUPTABLE                         R30 K53 [{"AutomaticSize", "LayoutOrder", "Size"}]
      600 GETIMPORT                        R31 K105 [Enum.AutomaticSize.X]
      602 SETTABLEKS                       R31 R30 K30 ["AutomaticSize"]
      604 NAMECALL                         R31 R6 K54 ["getNextOrder"]
      606 CALL                             R31 1 1
      607 SETTABLEKS                       R31 R30 K34 ["LayoutOrder"]
      609 GETIMPORT                        R31 K56 [UDim2.new]
      611 LOADN                            R32 0
      612 LOADN                            R33 0
      613 LOADN                            R34 0
      614 LOADN                            R35 20
      615 CALL                             R31 4 1
      616 SETTABLEKS                       R31 R30 K3 ["Size"]
      618 GETTABLEKS                       R31 R1 K48 ["Favorites"]
      620 CALL                             R29 2 -1
      621 CALL                             R27 -1 1
      622 SETTABLEKS                       R27 R26 K48 ["Favorites"]
      624 CALL                             R23 3 1
      625 SETTABLEKS                       R23 R22 K57 ["Right"]
      627 CALL                             R19 3 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R19
      630 SETTABLEKS                       R19 R18 K48 ["Favorites"]
      632 GETTABLEKS                       R20 R1 K13 ["Voting"]
      634 JUMPIF                           R20 ; [+3]
      635 GETTABLEKS                       R20 R1 K48 ["Favorites"]
      637 JUMPIFNOT                        R20 ; [+18]
      638 GETTABLEKS                       R20 R1 K106 ["IsPackage"]
      640 JUMPIF                           R20 ; [+3]
      641 GETTABLEKS                       R20 R1 K107 ["HasScripts"]
      643 JUMPIFNOT                        R20 ; [+12]
      644 GETUPVAL                         R19 5
      645 GETTABLEKS                       R19 R19 K29 ["createElement"]
      647 GETUPVAL                         R20 11
      648 DUPTABLE                         R21 K95 [{"LayoutOrder"}]
      649 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      651 CALL                             R22 1 1
      652 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      654 CALL                             R19 2 1
      655 JUMP                             ; [+1]
      656 LOADNIL                          R19
      657 SETTABLEKS                       R19 R18 K49 ["Separator"]
      659 GETTABLEKS                       R20 R1 K106 ["IsPackage"]
      661 JUMPIFNOT                        R20 ; [+189]
      662 GETUPVAL                         R19 5
      663 GETTABLEKS                       R19 R19 K29 ["createElement"]
      665 GETUPVAL                         R20 6
      666 DUPTABLE                         R21 K108 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
      667 GETIMPORT                        R22 K62 [Enum.AutomaticSize.XY]
      669 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      671 GETIMPORT                        R22 K19 [Enum.FillDirection.Horizontal]
      673 SETTABLEKS                       R22 R21 K33 ["Layout"]
      675 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      677 CALL                             R22 1 1
      678 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      680 GETTABLEKS                       R22 R2 K98 ["InfoRow"]
      682 GETTABLEKS                       R22 R22 K109 ["ElementPadding"]
      684 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      686 GETIMPORT                        R22 K83 [Enum.VerticalAlignment.Top]
      688 SETTABLEKS                       R22 R21 K59 ["VerticalAlignment"]
      690 DUPTABLE                         R22 K112 [{"PackageIconContainer", "TitleContainer"}]
      691 GETUPVAL                         R23 5
      692 GETTABLEKS                       R23 R23 K29 ["createElement"]
      694 GETUPVAL                         R24 6
      695 DUPTABLE                         R25 K113 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "VerticalAlignment"}]
      696 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      698 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      700 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      702 SETTABLEKS                       R26 R25 K33 ["Layout"]
      704 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      706 CALL                             R26 1 1
      707 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      709 DUPTABLE                         R26 K114 [{"Top"}]
      710 LOADN                            R27 2
      711 SETTABLEKS                       R27 R26 K82 ["Top"]
      713 SETTABLEKS                       R26 R25 K35 ["Padding"]
      715 GETIMPORT                        R26 K64 [Enum.VerticalAlignment.Center]
      717 SETTABLEKS                       R26 R25 K59 ["VerticalAlignment"]
      719 DUPTABLE                         R26 K116 [{"PackageIcon"}]
      720 GETUPVAL                         R27 5
      721 GETTABLEKS                       R27 R27 K29 ["createElement"]
      723 GETUPVAL                         R28 14
      724 DUPTABLE                         R29 K117 [{"LayoutOrder", "Style"}]
      725 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      727 CALL                             R30 1 1
      728 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      730 GETTABLEKS                       R30 R2 K115 ["PackageIcon"]
      732 SETTABLEKS                       R30 R29 K38 ["Style"]
      734 CALL                             R27 2 1
      735 SETTABLEKS                       R27 R26 K115 ["PackageIcon"]
      737 CALL                             R23 3 1
      738 SETTABLEKS                       R23 R22 K110 ["PackageIconContainer"]
      740 GETUPVAL                         R23 5
      741 GETTABLEKS                       R23 R23 K29 ["createElement"]
      743 GETUPVAL                         R24 6
      744 DUPTABLE                         R25 K118 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      745 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      747 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      749 GETIMPORT                        R26 K43 [Enum.HorizontalAlignment.Left]
      751 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      753 GETIMPORT                        R26 K25 [Enum.FillDirection.Vertical]
      755 SETTABLEKS                       R26 R25 K33 ["Layout"]
      757 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      759 CALL                             R26 1 1
      760 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      762 GETTABLEKS                       R26 R2 K98 ["InfoRow"]
      764 GETTABLEKS                       R26 R26 K119 ["DescriptionSpacing"]
      766 SETTABLEKS                       R26 R25 K37 ["Spacing"]
      768 DUPTABLE                         R26 K122 [{"UpdateableText", "LastUpdatedText"}]
      769 GETUPVAL                         R27 5
      770 GETTABLEKS                       R27 R27 K29 ["createElement"]
      772 GETUPVAL                         R28 9
      773 DUPTABLE                         R29 K71 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      774 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      776 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      778 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      780 CALL                             R30 1 1
      781 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      783 GETTABLEKS                       R30 R2 K98 ["InfoRow"]
      785 GETTABLEKS                       R30 R30 K99 ["TitleText"]
      787 SETTABLEKS                       R30 R29 K38 ["Style"]
      789 GETUPVAL                         R32 3
      790 LOADK                            R33 K9 ["AssetPreview"]
      791 LOADK                            R34 K123 ["Updateable"]
      792 NAMECALL                         R30 R3 K12 ["getProjectText"]
      794 CALL                             R30 4 1
      795 SETTABLEKS                       R30 R29 K68 ["Text"]
      797 GETIMPORT                        R30 K73 [Enum.TextXAlignment.Left]
      799 SETTABLEKS                       R30 R29 K69 ["TextXAlignment"]
      801 GETIMPORT                        R30 K75 [Enum.TextTruncate.AtEnd]
      803 SETTABLEKS                       R30 R29 K70 ["TextTruncate"]
      805 CALL                             R27 2 1
      806 SETTABLEKS                       R27 R26 K120 ["UpdateableText"]
      808 GETTABLEKS                       R28 R1 K6 ["LastUpdatedDate"]
      810 JUMPIFNOT                        R28 ; [+32]
      811 GETUPVAL                         R27 5
      812 GETTABLEKS                       R27 R27 K29 ["createElement"]
      814 GETUPVAL                         R28 9
      815 DUPTABLE                         R29 K71 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      816 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      818 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      820 NAMECALL                         R30 R6 K54 ["getNextOrder"]
      822 CALL                             R30 1 1
      823 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      825 GETTABLEKS                       R30 R2 K98 ["InfoRow"]
      827 GETTABLEKS                       R30 R30 K124 ["DescriptionText"]
      829 SETTABLEKS                       R30 R29 K38 ["Style"]
      831 SETTABLEKS                       R8 R29 K68 ["Text"]
      833 GETIMPORT                        R30 K73 [Enum.TextXAlignment.Left]
      835 SETTABLEKS                       R30 R29 K69 ["TextXAlignment"]
      837 GETIMPORT                        R30 K75 [Enum.TextTruncate.AtEnd]
      839 SETTABLEKS                       R30 R29 K70 ["TextTruncate"]
      841 CALL                             R27 2 1
      842 JUMP                             ; [+1]
      843 LOADNIL                          R27
      844 SETTABLEKS                       R27 R26 K121 ["LastUpdatedText"]
      846 CALL                             R23 3 1
      847 SETTABLEKS                       R23 R22 K111 ["TitleContainer"]
      849 CALL                             R19 3 1
      850 JUMP                             ; [+1]
      851 LOADNIL                          R19
      852 SETTABLEKS                       R19 R18 K50 ["PackageContainer"]
      854 GETTABLEKS                       R20 R1 K107 ["HasScripts"]
      856 JUMPIFNOT                        R20 ; [+131]
      857 GETUPVAL                         R19 5
      858 GETTABLEKS                       R19 R19 K29 ["createElement"]
      860 GETUPVAL                         R20 6
      861 DUPTABLE                         R21 K125 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      862 GETIMPORT                        R22 K62 [Enum.AutomaticSize.XY]
      864 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      866 GETIMPORT                        R22 K19 [Enum.FillDirection.Horizontal]
      868 SETTABLEKS                       R22 R21 K33 ["Layout"]
      870 NAMECALL                         R22 R6 K54 ["getNextOrder"]
      872 CALL                             R22 1 1
      873 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      875 GETTABLEKS                       R22 R2 K98 ["InfoRow"]
      877 GETTABLEKS                       R22 R22 K109 ["ElementPadding"]
      879 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      881 DUPTABLE                         R22 K129 [{"ScriptIcon", "ScriptText", "ScriptInfoIcon"}]
      882 GETUPVAL                         R23 5
      883 GETTABLEKS                       R23 R23 K29 ["createElement"]
      885 GETUPVAL                         R24 14
      886 DUPTABLE                         R25 K117 [{"LayoutOrder", "Style"}]
      887 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      889 CALL                             R26 1 1
      890 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      892 GETTABLEKS                       R26 R2 K130 ["ScriptArea"]
      894 GETTABLEKS                       R26 R26 K126 ["ScriptIcon"]
      896 SETTABLEKS                       R26 R25 K38 ["Style"]
      898 CALL                             R23 2 1
      899 SETTABLEKS                       R23 R22 K126 ["ScriptIcon"]
      901 GETUPVAL                         R23 5
      902 GETTABLEKS                       R23 R23 K29 ["createElement"]
      904 GETUPVAL                         R24 9
      905 DUPTABLE                         R25 K132 [{"AutomaticSize", "TextWrapped", "Style", "LayoutOrder", "Text"}]
      906 GETIMPORT                        R26 K62 [Enum.AutomaticSize.XY]
      908 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      910 LOADB                            R26 0
      911 SETTABLEKS                       R26 R25 K131 ["TextWrapped"]
      913 GETTABLEKS                       R26 R2 K98 ["InfoRow"]
      915 GETTABLEKS                       R26 R26 K99 ["TitleText"]
      917 SETTABLEKS                       R26 R25 K38 ["Style"]
      919 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      921 CALL                             R26 1 1
      922 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      924 GETUPVAL                         R28 3
      925 LOADK                            R29 K9 ["AssetPreview"]
      926 LOADK                            R30 K133 ["ContainsScripts"]
      927 NAMECALL                         R26 R3 K12 ["getProjectText"]
      929 CALL                             R26 4 1
      930 SETTABLEKS                       R26 R25 K68 ["Text"]
      932 CALL                             R23 2 1
      933 SETTABLEKS                       R23 R22 K127 ["ScriptText"]
      935 GETUPVAL                         R23 5
      936 GETTABLEKS                       R23 R23 K29 ["createElement"]
      938 GETUPVAL                         R24 14
      939 DUPTABLE                         R25 K117 [{"LayoutOrder", "Style"}]
      940 NAMECALL                         R26 R6 K54 ["getNextOrder"]
      942 CALL                             R26 1 1
      943 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      945 GETTABLEKS                       R26 R2 K130 ["ScriptArea"]
      947 GETTABLEKS                       R26 R26 K128 ["ScriptInfoIcon"]
      949 SETTABLEKS                       R26 R25 K38 ["Style"]
      951 DUPTABLE                         R26 K136 [{"Tooltip", "HoverArea"}]
      952 GETUPVAL                         R27 5
      953 GETTABLEKS                       R27 R27 K29 ["createElement"]
      955 GETUPVAL                         R28 15
      956 DUPTABLE                         R29 K137 [{"AutomaticSize", "Text"}]
      957 GETIMPORT                        R30 K62 [Enum.AutomaticSize.XY]
      959 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      961 GETUPVAL                         R32 3
      962 LOADK                            R33 K9 ["AssetPreview"]
      963 LOADK                            R34 K138 ["HasScriptsTooltip"]
      964 NAMECALL                         R30 R3 K12 ["getProjectText"]
      966 CALL                             R30 4 1
      967 SETTABLEKS                       R30 R29 K68 ["Text"]
      969 CALL                             R27 2 1
      970 SETTABLEKS                       R27 R26 K134 ["Tooltip"]
      972 GETUPVAL                         R27 5
      973 GETTABLEKS                       R27 R27 K29 ["createElement"]
      975 GETUPVAL                         R28 16
      976 DUPTABLE                         R29 K140 [{"Cursor"}]
      977 LOADK                            R30 K141 ["PointingHand"]
      978 SETTABLEKS                       R30 R29 K139 ["Cursor"]
      980 CALL                             R27 2 1
      981 SETTABLEKS                       R27 R26 K135 ["HoverArea"]
      983 CALL                             R23 3 1
      984 SETTABLEKS                       R23 R22 K128 ["ScriptInfoIcon"]
      986 CALL                             R19 3 1
      987 JUMP                             ; [+1]
      988 LOADNIL                          R19
      989 SETTABLEKS                       R19 R18 K51 ["ScriptsContainer"]
      991 CALL                             R15 3 -1
      992 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["VoteButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K4 ["Parent"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["withContext"]
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Resources"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K13 ["LOCALIZATION_PROJECT_NAME"]
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Util"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K15 ["formatVoteNumber"]
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K14 ["Util"]
       52 GETTABLEKS                       R10 R10 K16 ["formatLocalDateTime"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R7 K17 ["Immutable"]
       57 GETTABLEKS                       R11 R7 K18 ["LayoutOrderIterator"]
       59 GETTABLEKS                       R12 R7 K19 ["prioritize"]
       61 GETIMPORT                        R13 K6 [require]
       63 GETTABLEKS                       R14 R0 K4 ["Parent"]
       65 GETTABLEKS                       R14 R14 K20 ["Dash"]
       67 CALL                             R13 1 1
       68 GETTABLEKS                       R14 R13 K21 ["join"]
       70 GETIMPORT                        R15 K6 [require]
       72 GETTABLEKS                       R16 R0 K2 ["UI"]
       74 GETTABLEKS                       R16 R16 K7 ["Components"]
       76 GETTABLEKS                       R16 R16 K22 ["HoverArea"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K6 [require]
       81 GETTABLEKS                       R17 R0 K2 ["UI"]
       83 GETTABLEKS                       R17 R17 K7 ["Components"]
       85 GETTABLEKS                       R17 R17 K23 ["Image"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K6 [require]
       90 GETTABLEKS                       R18 R0 K2 ["UI"]
       92 GETTABLEKS                       R18 R18 K7 ["Components"]
       94 GETTABLEKS                       R18 R18 K24 ["Pane"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K6 [require]
       99 GETTABLEKS                       R19 R0 K2 ["UI"]
      101 GETTABLEKS                       R19 R19 K7 ["Components"]
      103 GETTABLEKS                       R19 R19 K25 ["Separator"]
      105 CALL                             R18 1 1
      106 GETIMPORT                        R19 K6 [require]
      108 GETTABLEKS                       R20 R0 K2 ["UI"]
      110 GETTABLEKS                       R20 R20 K7 ["Components"]
      112 GETTABLEKS                       R20 R20 K26 ["TextLabel"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K6 [require]
      117 GETTABLEKS                       R21 R0 K2 ["UI"]
      119 GETTABLEKS                       R21 R21 K7 ["Components"]
      121 GETTABLEKS                       R21 R21 K27 ["Tooltip"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETTABLEKS                       R22 R0 K28 ["Wrappers"]
      128 GETTABLEKS                       R22 R22 K29 ["withAbsoluteSize"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K6 [require]
      133 GETIMPORT                        R23 K1 [script]
      135 GETTABLEKS                       R23 R23 K4 ["Parent"]
      137 GETTABLEKS                       R23 R23 K30 ["Favorites"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K6 [require]
      142 GETIMPORT                        R24 K1 [script]
      144 GETTABLEKS                       R24 R24 K4 ["Parent"]
      146 GETTABLEKS                       R24 R24 K31 ["Votes"]
      148 CALL                             R23 1 1
      149 GETTABLEKS                       R24 R2 K32 ["PureComponent"]
      151 LOADK                            R26 K33 ["AssetPreviewDetails"]
      152 NAMECALL                         R24 R24 K34 ["extend"]
      154 CALL                             R24 2 1
      155 DUPCLOSURE                       R25 K35 [PROTO_0]
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R15
      173 SETTABLEKS                       R25 R24 K36 ["render"]
      175 MOVE                             R25 R4
      176 DUPTABLE                         R26 K39 [{"Localization", "Stylizer"}]
      177 GETTABLEKS                       R27 R3 K37 ["Localization"]
      179 SETTABLEKS                       R27 R26 K37 ["Localization"]
      181 GETTABLEKS                       R27 R3 K38 ["Stylizer"]
      183 SETTABLEKS                       R27 R26 K38 ["Stylizer"]
      185 CALL                             R25 1 1
      186 MOVE                             R26 R24
      187 CALL                             R25 1 1
      188 MOVE                             R24 R25
      189 MOVE                             R25 R21
      190 MOVE                             R26 R24
      191 CALL                             R25 1 -1
      192 RETURN                           R25 -1
