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
       98 DUPTABLE                         R18 K41 [{["AutomaticSize"], ["BackgroundColor"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Position"], ["Size"], ["Spacing"] = 10, ["Style"] = "RoundBox"}]
       99 GETIMPORT                        R19 K43 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R19 R18 K30 ["AutomaticSize"]
      103 GETTABLEKS                       R19 R2 K31 ["BackgroundColor"]
      105 SETTABLEKS                       R19 R18 K31 ["BackgroundColor"]
      107 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Left]
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
      129 GETTABLEKS                       R19 R1 K46 ["WrapperProps"]
      131 CALL                             R17 2 1
      132 DUPTABLE                         R18 K53 [{"VoteBar", "VoteSeparator", "Favorites", "Separator", "PackageContainer", "ScriptsContainer"}]
      133 GETUPVAL                         R19 5
      134 GETTABLEKS                       R19 R19 K29 ["createElement"]
      136 GETUPVAL                         R20 6
      137 DUPTABLE                         R21 K54 [{"AutomaticSize", "LayoutOrder", "Size"}]
      138 GETIMPORT                        R22 K43 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      142 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      144 CALL                             R22 1 1
      145 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      147 GETIMPORT                        R22 K57 [UDim2.new]
      149 LOADN                            R23 1
      150 LOADN                            R24 0
      151 LOADN                            R25 0
      152 LOADN                            R26 0
      153 CALL                             R22 4 1
      154 SETTABLEKS                       R22 R21 K3 ["Size"]
      156 DUPTABLE                         R22 K59 [{"Left", "Right"}]
      157 GETTABLEKS                       R24 R1 K13 ["Voting"]
      159 JUMPIFNOT                        R24 ; [+117]
      160 GETUPVAL                         R23 5
      161 GETTABLEKS                       R23 R23 K29 ["createElement"]
      163 GETUPVAL                         R24 6
      164 DUPTABLE                         R25 K61 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      165 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      167 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      169 GETIMPORT                        R26 K45 [Enum.HorizontalAlignment.Left]
      171 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      173 SETTABLEKS                       R11 R25 K33 ["Layout"]
      175 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      177 CALL                             R26 1 1
      178 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      180 GETIMPORT                        R26 K57 [UDim2.new]
      182 MOVE                             R27 R5
      183 LOADN                            R28 0
      184 LOADN                            R29 0
      185 LOADN                            R30 0
      186 CALL                             R26 4 1
      187 SETTABLEKS                       R26 R25 K3 ["Size"]
      189 SETTABLEKS                       R12 R25 K37 ["Spacing"]
      191 GETIMPORT                        R26 K65 [Enum.VerticalAlignment.Center]
      193 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      195 DUPTABLE                         R26 K67 [{"Votes", "VoteCount"}]
      196 JUMPIFNOT                        R10 ; [+36]
      197 GETTABLEKS                       R28 R1 K13 ["Voting"]
      199 JUMPIFNOT                        R28 ; [+33]
      200 GETUPVAL                         R27 5
      201 GETTABLEKS                       R27 R27 K29 ["createElement"]
      203 GETUPVAL                         R28 8
      204 DUPTABLE                         R29 K68 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Voting"}]
      205 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      207 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      209 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      211 CALL                             R30 1 1
      212 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      214 GETTABLEKS                       R30 R2 K66 ["Votes"]
      216 SETTABLEKS                       R30 R29 K39 ["Style"]
      218 GETIMPORT                        R30 K57 [UDim2.new]
      220 LOADN                            R31 0
      221 LOADN                            R32 0
      222 LOADN                            R33 0
      223 LOADN                            R34 0
      224 CALL                             R30 4 1
      225 SETTABLEKS                       R30 R29 K3 ["Size"]
      227 GETTABLEKS                       R30 R1 K13 ["Voting"]
      229 SETTABLEKS                       R30 R29 K13 ["Voting"]
      231 CALL                             R27 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R27
      234 SETTABLEKS                       R27 R26 K66 ["Votes"]
      236 GETUPVAL                         R27 5
      237 GETTABLEKS                       R27 R27 K29 ["createElement"]
      239 GETUPVAL                         R28 9
      240 DUPTABLE                         R29 K72 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      241 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      243 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      245 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      247 CALL                             R30 1 1
      248 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      250 GETTABLEKS                       R30 R2 K14 ["VoteCount"]
      252 SETTABLEKS                       R30 R29 K39 ["Style"]
      254 GETUPVAL                         R30 4
      255 GETTABLEKS                       R30 R30 K73 ["getFormattedVoteNumberAndText"]
      257 MOVE                             R31 R9
      258 MOVE                             R32 R3
      259 LOADB                            R33 0
      260 LOADB                            R34 1
      261 CALL                             R30 4 1
      262 SETTABLEKS                       R30 R29 K69 ["Text"]
      264 GETIMPORT                        R30 K74 [Enum.TextXAlignment.Left]
      266 SETTABLEKS                       R30 R29 K70 ["TextXAlignment"]
      268 GETIMPORT                        R30 K76 [Enum.TextTruncate.AtEnd]
      270 SETTABLEKS                       R30 R29 K71 ["TextTruncate"]
      272 CALL                             R27 2 1
      273 SETTABLEKS                       R27 R26 K14 ["VoteCount"]
      275 CALL                             R23 3 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R23
      278 SETTABLEKS                       R23 R22 K44 ["Left"]
      280 JUMPIFNOT                        R14 ; [+124]
      281 GETUPVAL                         R23 5
      282 GETTABLEKS                       R23 R23 K29 ["createElement"]
      284 GETUPVAL                         R24 6
      285 DUPTABLE                         R25 K78 [{"AutomaticSize", "Size", "AnchorPoint", "Position", "Spacing", "Layout", "LayoutOrder", "VerticalAlignment"}]
      286 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      288 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      290 GETIMPORT                        R26 K57 [UDim2.new]
      292 LOADN                            R27 0
      293 LOADN                            R28 0
      294 LOADN                            R29 0
      295 LOADN                            R30 0
      296 CALL                             R26 4 1
      297 SETTABLEKS                       R26 R25 K3 ["Size"]
      299 GETIMPORT                        R26 K80 [Vector2.new]
      301 LOADN                            R27 1
      302 LOADN                            R28 0
      303 CALL                             R26 2 1
      304 SETTABLEKS                       R26 R25 K77 ["AnchorPoint"]
      306 GETIMPORT                        R26 K57 [UDim2.new]
      308 LOADN                            R27 1
      309 LOADN                            R28 0
      310 LOADN                            R29 0
      311 LOADN                            R30 0
      312 CALL                             R26 4 1
      313 SETTABLEKS                       R26 R25 K36 ["Position"]
      315 GETTABLEKS                       R26 R2 K81 ["AssetHeader"]
      317 GETTABLEKS                       R26 R26 K82 ["VoteSpacing"]
      319 SETTABLEKS                       R26 R25 K37 ["Spacing"]
      321 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      323 SETTABLEKS                       R26 R25 K33 ["Layout"]
      325 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      327 CALL                             R26 1 1
      328 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      330 GETIMPORT                        R26 K84 [Enum.VerticalAlignment.Top]
      332 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      334 DUPTABLE                         R26 K87 [{"VoteUp", "VoteDown"}]
      335 GETUPVAL                         R27 5
      336 GETTABLEKS                       R27 R27 K29 ["createElement"]
      338 GETUPVAL                         R28 10
      339 DUPTABLE                         R29 K91 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
      340 SETTABLEKS                       R13 R29 K27 ["CanVote"]
      342 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      344 CALL                             R30 1 1
      345 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      347 GETTABLEKS                       R30 R0 K0 ["props"]
      349 GETTABLEKS                       R30 R30 K92 ["OnVoteUp"]
      351 SETTABLEKS                       R30 R29 K88 ["OnClick"]
      353 GETTABLEKS                       R30 R1 K13 ["Voting"]
      355 GETTABLEKS                       R30 R30 K89 ["UserVote"]
      357 SETTABLEKS                       R30 R29 K89 ["UserVote"]
      359 GETUPVAL                         R30 10
      360 GETTABLEKS                       R30 R30 K90 ["VoteType"]
      362 GETTABLEKS                       R30 R30 K93 ["UpVote"]
      364 SETTABLEKS                       R30 R29 K90 ["VoteType"]
      366 CALL                             R27 2 1
      367 SETTABLEKS                       R27 R26 K85 ["VoteUp"]
      369 GETUPVAL                         R27 5
      370 GETTABLEKS                       R27 R27 K29 ["createElement"]
      372 GETUPVAL                         R28 10
      373 DUPTABLE                         R29 K91 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
      374 SETTABLEKS                       R13 R29 K27 ["CanVote"]
      376 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      378 CALL                             R30 1 1
      379 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      381 GETTABLEKS                       R30 R0 K0 ["props"]
      383 GETTABLEKS                       R30 R30 K94 ["OnVoteDown"]
      385 SETTABLEKS                       R30 R29 K88 ["OnClick"]
      387 GETTABLEKS                       R30 R1 K13 ["Voting"]
      389 GETTABLEKS                       R30 R30 K89 ["UserVote"]
      391 SETTABLEKS                       R30 R29 K89 ["UserVote"]
      393 GETUPVAL                         R30 10
      394 GETTABLEKS                       R30 R30 K90 ["VoteType"]
      396 GETTABLEKS                       R30 R30 K95 ["DownVote"]
      398 SETTABLEKS                       R30 R29 K90 ["VoteType"]
      400 CALL                             R27 2 1
      401 SETTABLEKS                       R27 R26 K86 ["VoteDown"]
      403 CALL                             R23 3 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R23
      406 SETTABLEKS                       R23 R22 K58 ["Right"]
      408 CALL                             R19 3 1
      409 SETTABLEKS                       R19 R18 K47 ["VoteBar"]
      411 GETTABLEKS                       R20 R1 K49 ["Favorites"]
      413 JUMPIFNOT                        R20 ; [+12]
      414 GETUPVAL                         R19 5
      415 GETTABLEKS                       R19 R19 K29 ["createElement"]
      417 GETUPVAL                         R20 11
      418 DUPTABLE                         R21 K96 [{"LayoutOrder"}]
      419 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      421 CALL                             R22 1 1
      422 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      424 CALL                             R19 2 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R19
      427 SETTABLEKS                       R19 R18 K48 ["VoteSeparator"]
      429 GETTABLEKS                       R20 R1 K49 ["Favorites"]
      431 JUMPIFNOT                        R20 ; [+191]
      432 GETUPVAL                         R19 5
      433 GETTABLEKS                       R19 R19 K29 ["createElement"]
      435 GETUPVAL                         R20 6
      436 DUPTABLE                         R21 K54 [{"AutomaticSize", "LayoutOrder", "Size"}]
      437 GETIMPORT                        R22 K43 [Enum.AutomaticSize.Y]
      439 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      441 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      443 CALL                             R22 1 1
      444 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      446 GETIMPORT                        R22 K57 [UDim2.new]
      448 LOADN                            R23 1
      449 LOADN                            R24 0
      450 LOADN                            R25 0
      451 LOADN                            R26 0
      452 CALL                             R22 4 1
      453 SETTABLEKS                       R22 R21 K3 ["Size"]
      455 DUPTABLE                         R22 K59 [{"Left", "Right"}]
      456 GETUPVAL                         R23 5
      457 GETTABLEKS                       R23 R23 K29 ["createElement"]
      459 GETUPVAL                         R24 6
      460 DUPTABLE                         R25 K61 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      461 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      463 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      465 GETIMPORT                        R26 K45 [Enum.HorizontalAlignment.Left]
      467 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      469 SETTABLEKS                       R11 R25 K33 ["Layout"]
      471 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      473 CALL                             R26 1 1
      474 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      476 GETIMPORT                        R26 K57 [UDim2.new]
      478 MOVE                             R27 R5
      479 LOADN                            R28 0
      480 LOADN                            R29 0
      481 LOADN                            R30 0
      482 CALL                             R26 4 1
      483 SETTABLEKS                       R26 R25 K3 ["Size"]
      485 SETTABLEKS                       R12 R25 K37 ["Spacing"]
      487 GETIMPORT                        R26 K65 [Enum.VerticalAlignment.Center]
      489 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      491 DUPTABLE                         R26 K98 [{"FavoriteLabel"}]
      492 GETUPVAL                         R27 5
      493 GETTABLEKS                       R27 R27 K29 ["createElement"]
      495 GETUPVAL                         R28 9
      496 DUPTABLE                         R29 K72 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      497 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      499 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      501 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      503 CALL                             R30 1 1
      504 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      506 GETTABLEKS                       R30 R2 K99 ["InfoRow"]
      508 GETTABLEKS                       R30 R30 K100 ["TitleText"]
      510 SETTABLEKS                       R30 R29 K39 ["Style"]
      512 GETUPVAL                         R32 3
      513 LOADK                            R33 K9 ["AssetPreview"]
      514 LOADK                            R34 K49 ["Favorites"]
      515 NAMECALL                         R30 R3 K12 ["getProjectText"]
      517 CALL                             R30 4 1
      518 SETTABLEKS                       R30 R29 K69 ["Text"]
      520 GETIMPORT                        R30 K74 [Enum.TextXAlignment.Left]
      522 SETTABLEKS                       R30 R29 K70 ["TextXAlignment"]
      524 GETIMPORT                        R30 K76 [Enum.TextTruncate.AtEnd]
      526 SETTABLEKS                       R30 R29 K71 ["TextTruncate"]
      528 CALL                             R27 2 1
      529 SETTABLEKS                       R27 R26 K97 ["FavoriteLabel"]
      531 CALL                             R23 3 1
      532 SETTABLEKS                       R23 R22 K44 ["Left"]
      534 GETUPVAL                         R23 5
      535 GETTABLEKS                       R23 R23 K29 ["createElement"]
      537 GETUPVAL                         R24 6
      538 DUPTABLE                         R25 K101 [{"AutomaticSize", "AnchorPoint", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size", "VerticalAlignment"}]
      539 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      541 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      543 GETIMPORT                        R26 K80 [Vector2.new]
      545 LOADN                            R27 1
      546 LOADN                            R28 0
      547 CALL                             R26 2 1
      548 SETTABLEKS                       R26 R25 K77 ["AnchorPoint"]
      550 GETIMPORT                        R26 K102 [Enum.HorizontalAlignment.Right]
      552 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      554 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      556 SETTABLEKS                       R26 R25 K33 ["Layout"]
      558 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      560 CALL                             R26 1 1
      561 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      563 GETIMPORT                        R26 K57 [UDim2.new]
      565 LOADN                            R27 1
      566 LOADN                            R28 0
      567 LOADN                            R29 0
      568 LOADN                            R30 0
      569 CALL                             R26 4 1
      570 SETTABLEKS                       R26 R25 K36 ["Position"]
      572 GETIMPORT                        R26 K57 [UDim2.new]
      574 SUBRK                            R27 K103 [1] R5
      575 LOADN                            R28 0
      576 LOADN                            R29 0
      577 LOADN                            R30 0
      578 CALL                             R26 4 1
      579 SETTABLEKS                       R26 R25 K3 ["Size"]
      581 GETIMPORT                        R26 K65 [Enum.VerticalAlignment.Center]
      583 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      585 DUPTABLE                         R26 K104 [{"Favorites"}]
      586 GETUPVAL                         R27 5
      587 GETTABLEKS                       R27 R27 K29 ["createElement"]
      589 GETUPVAL                         R28 12
      590 GETUPVAL                         R29 13
      591 GETTABLEKS                       R29 R29 K105 ["JoinDictionaries"]
      593 DUPTABLE                         R30 K54 [{"AutomaticSize", "LayoutOrder", "Size"}]
      594 GETIMPORT                        R31 K106 [Enum.AutomaticSize.X]
      596 SETTABLEKS                       R31 R30 K30 ["AutomaticSize"]
      598 NAMECALL                         R31 R6 K55 ["getNextOrder"]
      600 CALL                             R31 1 1
      601 SETTABLEKS                       R31 R30 K34 ["LayoutOrder"]
      603 GETIMPORT                        R31 K57 [UDim2.new]
      605 LOADN                            R32 0
      606 LOADN                            R33 0
      607 LOADN                            R34 0
      608 LOADN                            R35 20
      609 CALL                             R31 4 1
      610 SETTABLEKS                       R31 R30 K3 ["Size"]
      612 GETTABLEKS                       R31 R1 K49 ["Favorites"]
      614 CALL                             R29 2 -1
      615 CALL                             R27 -1 1
      616 SETTABLEKS                       R27 R26 K49 ["Favorites"]
      618 CALL                             R23 3 1
      619 SETTABLEKS                       R23 R22 K58 ["Right"]
      621 CALL                             R19 3 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R19
      624 SETTABLEKS                       R19 R18 K49 ["Favorites"]
      626 GETTABLEKS                       R20 R1 K13 ["Voting"]
      628 JUMPIF                           R20 ; [+3]
      629 GETTABLEKS                       R20 R1 K49 ["Favorites"]
      631 JUMPIFNOT                        R20 ; [+18]
      632 GETTABLEKS                       R20 R1 K107 ["IsPackage"]
      634 JUMPIF                           R20 ; [+3]
      635 GETTABLEKS                       R20 R1 K108 ["HasScripts"]
      637 JUMPIFNOT                        R20 ; [+12]
      638 GETUPVAL                         R19 5
      639 GETTABLEKS                       R19 R19 K29 ["createElement"]
      641 GETUPVAL                         R20 11
      642 DUPTABLE                         R21 K96 [{"LayoutOrder"}]
      643 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      645 CALL                             R22 1 1
      646 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      648 CALL                             R19 2 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R19
      651 SETTABLEKS                       R19 R18 K50 ["Separator"]
      653 GETTABLEKS                       R20 R1 K107 ["IsPackage"]
      655 JUMPIFNOT                        R20 ; [+186]
      656 GETUPVAL                         R19 5
      657 GETTABLEKS                       R19 R19 K29 ["createElement"]
      659 GETUPVAL                         R20 6
      660 DUPTABLE                         R21 K109 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
      661 GETIMPORT                        R22 K63 [Enum.AutomaticSize.XY]
      663 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      665 GETIMPORT                        R22 K19 [Enum.FillDirection.Horizontal]
      667 SETTABLEKS                       R22 R21 K33 ["Layout"]
      669 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      671 CALL                             R22 1 1
      672 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      674 GETTABLEKS                       R22 R2 K99 ["InfoRow"]
      676 GETTABLEKS                       R22 R22 K110 ["ElementPadding"]
      678 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      680 GETIMPORT                        R22 K84 [Enum.VerticalAlignment.Top]
      682 SETTABLEKS                       R22 R21 K60 ["VerticalAlignment"]
      684 DUPTABLE                         R22 K113 [{"PackageIconContainer", "TitleContainer"}]
      685 GETUPVAL                         R23 5
      686 GETTABLEKS                       R23 R23 K29 ["createElement"]
      688 GETUPVAL                         R24 6
      689 DUPTABLE                         R25 K114 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "VerticalAlignment"}]
      690 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      692 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      694 GETIMPORT                        R26 K19 [Enum.FillDirection.Horizontal]
      696 SETTABLEKS                       R26 R25 K33 ["Layout"]
      698 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      700 CALL                             R26 1 1
      701 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      703 DUPTABLE                         R26 K116 [{["Top"] = 2}]
      704 SETTABLEKS                       R26 R25 K35 ["Padding"]
      706 GETIMPORT                        R26 K65 [Enum.VerticalAlignment.Center]
      708 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      710 DUPTABLE                         R26 K118 [{"PackageIcon"}]
      711 GETUPVAL                         R27 5
      712 GETTABLEKS                       R27 R27 K29 ["createElement"]
      714 GETUPVAL                         R28 14
      715 DUPTABLE                         R29 K119 [{"LayoutOrder", "Style"}]
      716 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      718 CALL                             R30 1 1
      719 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      721 GETTABLEKS                       R30 R2 K117 ["PackageIcon"]
      723 SETTABLEKS                       R30 R29 K39 ["Style"]
      725 CALL                             R27 2 1
      726 SETTABLEKS                       R27 R26 K117 ["PackageIcon"]
      728 CALL                             R23 3 1
      729 SETTABLEKS                       R23 R22 K111 ["PackageIconContainer"]
      731 GETUPVAL                         R23 5
      732 GETTABLEKS                       R23 R23 K29 ["createElement"]
      734 GETUPVAL                         R24 6
      735 DUPTABLE                         R25 K120 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      736 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      738 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      740 GETIMPORT                        R26 K45 [Enum.HorizontalAlignment.Left]
      742 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      744 GETIMPORT                        R26 K25 [Enum.FillDirection.Vertical]
      746 SETTABLEKS                       R26 R25 K33 ["Layout"]
      748 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      750 CALL                             R26 1 1
      751 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      753 GETTABLEKS                       R26 R2 K99 ["InfoRow"]
      755 GETTABLEKS                       R26 R26 K121 ["DescriptionSpacing"]
      757 SETTABLEKS                       R26 R25 K37 ["Spacing"]
      759 DUPTABLE                         R26 K124 [{"UpdateableText", "LastUpdatedText"}]
      760 GETUPVAL                         R27 5
      761 GETTABLEKS                       R27 R27 K29 ["createElement"]
      763 GETUPVAL                         R28 9
      764 DUPTABLE                         R29 K72 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      765 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      767 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      769 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      771 CALL                             R30 1 1
      772 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      774 GETTABLEKS                       R30 R2 K99 ["InfoRow"]
      776 GETTABLEKS                       R30 R30 K100 ["TitleText"]
      778 SETTABLEKS                       R30 R29 K39 ["Style"]
      780 GETUPVAL                         R32 3
      781 LOADK                            R33 K9 ["AssetPreview"]
      782 LOADK                            R34 K125 ["Updateable"]
      783 NAMECALL                         R30 R3 K12 ["getProjectText"]
      785 CALL                             R30 4 1
      786 SETTABLEKS                       R30 R29 K69 ["Text"]
      788 GETIMPORT                        R30 K74 [Enum.TextXAlignment.Left]
      790 SETTABLEKS                       R30 R29 K70 ["TextXAlignment"]
      792 GETIMPORT                        R30 K76 [Enum.TextTruncate.AtEnd]
      794 SETTABLEKS                       R30 R29 K71 ["TextTruncate"]
      796 CALL                             R27 2 1
      797 SETTABLEKS                       R27 R26 K122 ["UpdateableText"]
      799 GETTABLEKS                       R28 R1 K6 ["LastUpdatedDate"]
      801 JUMPIFNOT                        R28 ; [+32]
      802 GETUPVAL                         R27 5
      803 GETTABLEKS                       R27 R27 K29 ["createElement"]
      805 GETUPVAL                         R28 9
      806 DUPTABLE                         R29 K72 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      807 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      809 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      811 NAMECALL                         R30 R6 K55 ["getNextOrder"]
      813 CALL                             R30 1 1
      814 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      816 GETTABLEKS                       R30 R2 K99 ["InfoRow"]
      818 GETTABLEKS                       R30 R30 K126 ["DescriptionText"]
      820 SETTABLEKS                       R30 R29 K39 ["Style"]
      822 SETTABLEKS                       R8 R29 K69 ["Text"]
      824 GETIMPORT                        R30 K74 [Enum.TextXAlignment.Left]
      826 SETTABLEKS                       R30 R29 K70 ["TextXAlignment"]
      828 GETIMPORT                        R30 K76 [Enum.TextTruncate.AtEnd]
      830 SETTABLEKS                       R30 R29 K71 ["TextTruncate"]
      832 CALL                             R27 2 1
      833 JUMP                             ; [+1]
      834 LOADNIL                          R27
      835 SETTABLEKS                       R27 R26 K123 ["LastUpdatedText"]
      837 CALL                             R23 3 1
      838 SETTABLEKS                       R23 R22 K112 ["TitleContainer"]
      840 CALL                             R19 3 1
      841 JUMP                             ; [+1]
      842 LOADNIL                          R19
      843 SETTABLEKS                       R19 R18 K51 ["PackageContainer"]
      845 GETTABLEKS                       R20 R1 K108 ["HasScripts"]
      847 JUMPIFNOT                        R20 ; [+125]
      848 GETUPVAL                         R19 5
      849 GETTABLEKS                       R19 R19 K29 ["createElement"]
      851 GETUPVAL                         R20 6
      852 DUPTABLE                         R21 K127 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      853 GETIMPORT                        R22 K63 [Enum.AutomaticSize.XY]
      855 SETTABLEKS                       R22 R21 K30 ["AutomaticSize"]
      857 GETIMPORT                        R22 K19 [Enum.FillDirection.Horizontal]
      859 SETTABLEKS                       R22 R21 K33 ["Layout"]
      861 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      863 CALL                             R22 1 1
      864 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      866 GETTABLEKS                       R22 R2 K99 ["InfoRow"]
      868 GETTABLEKS                       R22 R22 K110 ["ElementPadding"]
      870 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      872 DUPTABLE                         R22 K131 [{"ScriptIcon", "ScriptText", "ScriptInfoIcon"}]
      873 GETUPVAL                         R23 5
      874 GETTABLEKS                       R23 R23 K29 ["createElement"]
      876 GETUPVAL                         R24 14
      877 DUPTABLE                         R25 K119 [{"LayoutOrder", "Style"}]
      878 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      880 CALL                             R26 1 1
      881 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      883 GETTABLEKS                       R26 R2 K132 ["ScriptArea"]
      885 GETTABLEKS                       R26 R26 K128 ["ScriptIcon"]
      887 SETTABLEKS                       R26 R25 K39 ["Style"]
      889 CALL                             R23 2 1
      890 SETTABLEKS                       R23 R22 K128 ["ScriptIcon"]
      892 GETUPVAL                         R23 5
      893 GETTABLEKS                       R23 R23 K29 ["createElement"]
      895 GETUPVAL                         R24 9
      896 DUPTABLE                         R25 K135 [{["AutomaticSize"], ["TextWrapped"] = False, ["Style"], ["LayoutOrder"], ["Text"]}]
      897 GETIMPORT                        R26 K63 [Enum.AutomaticSize.XY]
      899 SETTABLEKS                       R26 R25 K30 ["AutomaticSize"]
      901 GETTABLEKS                       R26 R2 K99 ["InfoRow"]
      903 GETTABLEKS                       R26 R26 K100 ["TitleText"]
      905 SETTABLEKS                       R26 R25 K39 ["Style"]
      907 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      909 CALL                             R26 1 1
      910 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      912 GETUPVAL                         R28 3
      913 LOADK                            R29 K9 ["AssetPreview"]
      914 LOADK                            R30 K136 ["ContainsScripts"]
      915 NAMECALL                         R26 R3 K12 ["getProjectText"]
      917 CALL                             R26 4 1
      918 SETTABLEKS                       R26 R25 K69 ["Text"]
      920 CALL                             R23 2 1
      921 SETTABLEKS                       R23 R22 K129 ["ScriptText"]
      923 GETUPVAL                         R23 5
      924 GETTABLEKS                       R23 R23 K29 ["createElement"]
      926 GETUPVAL                         R24 14
      927 DUPTABLE                         R25 K119 [{"LayoutOrder", "Style"}]
      928 NAMECALL                         R26 R6 K55 ["getNextOrder"]
      930 CALL                             R26 1 1
      931 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      933 GETTABLEKS                       R26 R2 K132 ["ScriptArea"]
      935 GETTABLEKS                       R26 R26 K130 ["ScriptInfoIcon"]
      937 SETTABLEKS                       R26 R25 K39 ["Style"]
      939 DUPTABLE                         R26 K139 [{"Tooltip", "HoverArea"}]
      940 GETUPVAL                         R27 5
      941 GETTABLEKS                       R27 R27 K29 ["createElement"]
      943 GETUPVAL                         R28 15
      944 DUPTABLE                         R29 K140 [{"AutomaticSize", "Text"}]
      945 GETIMPORT                        R30 K63 [Enum.AutomaticSize.XY]
      947 SETTABLEKS                       R30 R29 K30 ["AutomaticSize"]
      949 GETUPVAL                         R32 3
      950 LOADK                            R33 K9 ["AssetPreview"]
      951 LOADK                            R34 K141 ["HasScriptsTooltip"]
      952 NAMECALL                         R30 R3 K12 ["getProjectText"]
      954 CALL                             R30 4 1
      955 SETTABLEKS                       R30 R29 K69 ["Text"]
      957 CALL                             R27 2 1
      958 SETTABLEKS                       R27 R26 K137 ["Tooltip"]
      960 GETUPVAL                         R27 5
      961 GETTABLEKS                       R27 R27 K29 ["createElement"]
      963 GETUPVAL                         R28 16
      964 DUPTABLE                         R29 K144 [{["Cursor"] = "PointingHand"}]
      965 CALL                             R27 2 1
      966 SETTABLEKS                       R27 R26 K138 ["HoverArea"]
      968 CALL                             R23 3 1
      969 SETTABLEKS                       R23 R22 K130 ["ScriptInfoIcon"]
      971 CALL                             R19 3 1
      972 JUMP                             ; [+1]
      973 LOADNIL                          R19
      974 SETTABLEKS                       R19 R18 K52 ["ScriptsContainer"]
      976 CALL                             R15 3 -1
      977 RETURN                           R15 -1

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
