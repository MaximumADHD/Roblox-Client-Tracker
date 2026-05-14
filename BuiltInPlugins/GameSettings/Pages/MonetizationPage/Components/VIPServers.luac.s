PROTO_0:
        0 LOADN                            R1 10
        1 SETTABLEKS                       R1 R0 K0 ["lastNonFreePrice"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["lastNonFreePrice"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["Localization"]
        9 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["new"]
       14 CALL                             R4 0 1
       15 LOADK                            R7 K4 ["Monetization"]
       16 LOADK                            R8 K5 ["PrivateServersTitle"]
       17 NAMECALL                         R5 R2 K6 ["getText"]
       19 CALL                             R5 3 1
       20 LOADK                            R8 K4 ["Monetization"]
       21 LOADK                            R9 K7 ["PriceTitle"]
       22 NAMECALL                         R6 R2 K6 ["getText"]
       24 CALL                             R6 3 1
       25 GETTABLEKS                       R7 R1 K8 ["LayoutOrder"]
       27 GETTABLEKS                       R9 R1 K9 ["VIPServersData"]
       29 JUMPIFNOT                        R9 ; [+3]
       30 GETTABLEKS                       R8 R1 K9 ["VIPServersData"]
       32 JUMPIF                           R8 ; [+2]
       33 NEWTABLE                         R8 0 0
       35 GETTABLEKS                       R9 R1 K10 ["Enabled"]
       37 GETTABLEKS                       R10 R1 K11 ["TaxRate"]
       39 GETTABLEKS                       R11 R1 K12 ["MinimumFee"]
       41 GETTABLEKS                       R12 R8 K13 ["isEnabled"]
       43 GETTABLEKS                       R14 R8 K14 ["price"]
       45 JUMPIFNOT                        R14 ; [+3]
       46 GETTABLEKS                       R13 R8 K14 ["price"]
       48 JUMPIF                           R13 ; [+1]
       49 LOADN                            R13 0
       50 GETTABLEKS                       R15 R8 K15 ["activeServersCount"]
       52 JUMPIFNOT                        R15 ; [+3]
       53 GETTABLEKS                       R14 R8 K15 ["activeServersCount"]
       55 JUMPIF                           R14 ; [+1]
       56 LOADN                            R14 0
       57 GETTABLEKS                       R16 R8 K16 ["activeSubscriptionsCount"]
       59 JUMPIFNOT                        R16 ; [+3]
       60 GETTABLEKS                       R15 R8 K16 ["activeSubscriptionsCount"]
       62 JUMPIF                           R15 ; [+1]
       63 LOADN                            R15 0
       64 GETTABLEKS                       R16 R8 K17 ["changed"]
       66 GETTABLEKS                       R17 R8 K18 ["willShutdown"]
       68 JUMPIFEQKN                       R13 K19 [0] ; [+2]
       70 LOADB                            R18 0 +1
       71 LOADB                            R18 1
       72 JUMPIF                           R18 ; [+2]
       73 SETTABLEKS                       R13 R0 K20 ["lastNonFreePrice"]
       75 GETTABLEKS                       R19 R1 K21 ["OnVipServersToggled"]
       77 GETTABLEKS                       R20 R1 K22 ["OnVipServersPriceChanged"]
       79 LOADNIL                          R21
       80 LOADNIL                          R22
       81 LOADN                            R23 0
       82 JUMPIFNOTLT                      R15 R23 ; [+12]
       84 LOADK                            R25 K4 ["Monetization"]
       85 LOADK                            R26 K23 ["OverPrivateServerSubscriptions"]
       86 DUPTABLE                         R27 K25 [{"numOfSubscriptions"}]
       87 MULK                             R28 R15 K26 [-1]
       88 SETTABLEKS                       R28 R27 K24 ["numOfSubscriptions"]
       90 NAMECALL                         R23 R2 K6 ["getText"]
       92 CALL                             R23 4 1
       93 MOVE                             R21 R23
       94 JUMP                             ; [+9]
       95 LOADK                            R25 K4 ["Monetization"]
       96 LOADK                            R26 K27 ["PrivateServerSubscriptions"]
       97 DUPTABLE                         R27 K25 [{"numOfSubscriptions"}]
       98 SETTABLEKS                       R15 R27 K24 ["numOfSubscriptions"]
      100 NAMECALL                         R23 R2 K6 ["getText"]
      102 CALL                             R23 4 1
      103 MOVE                             R21 R23
      104 LOADK                            R25 K4 ["Monetization"]
      105 LOADK                            R26 K28 ["PrivateServersActive"]
      106 DUPTABLE                         R27 K30 [{"totalVipServers"}]
      107 SETTABLEKS                       R14 R27 K29 ["totalVipServers"]
      109 NAMECALL                         R23 R2 K6 ["getText"]
      111 CALL                             R23 4 1
      112 MOVE                             R22 R23
      113 GETUPVAL                         R24 2
      114 JUMPIFNOT                        R24 ; [+2]
      115 LOADNIL                          R23
      116 JUMP                             ; [+14]
      117 JUMPIFNOT                        R9 ; [+7]
      118 GETTABLEKS                       R23 R3 K31 ["robuxFeeBase"]
      120 GETTABLEKS                       R23 R23 K32 ["transparency"]
      122 GETTABLEKS                       R23 R23 K33 ["enabled"]
      124 JUMPIF                           R23 ; [+6]
      125 GETTABLEKS                       R23 R3 K31 ["robuxFeeBase"]
      127 GETTABLEKS                       R23 R23 K32 ["transparency"]
      129 GETTABLEKS                       R23 R23 K34 ["disabled"]
      131 LOADNIL                          R24
      132 LOADNIL                          R25
      133 GETTABLEKS                       R26 R1 K35 ["PriceError"]
      135 LOADNIL                          R27
      136 JUMPIFNOT                        R9 ; [+3]
      137 JUMPIFNOT                        R26 ; [+2]
      138 MOVE                             R24 R26
      139 JUMP                             ; [+8]
      140 JUMPIFNOT                        R16 ; [+7]
      141 LOADK                            R30 K4 ["Monetization"]
      142 LOADK                            R31 K36 ["PrivateServersPriceChangeWarning"]
      143 NAMECALL                         R28 R2 K6 ["getText"]
      145 CALL                             R28 3 1
      146 MOVE                             R24 R28
      147 LOADB                            R27 1
      148 LOADK                            R30 K4 ["Monetization"]
      149 LOADK                            R31 K37 ["PrivateServersHint"]
      150 NAMECALL                         R28 R2 K6 ["getText"]
      152 CALL                             R28 3 1
      153 MOVE                             R25 R28
      154 JUMPIFNOT                        R17 ; [+6]
      155 LOADK                            R30 K4 ["Monetization"]
      156 LOADK                            R31 K38 ["PrivateServersShutdownWarning"]
      157 NAMECALL                         R28 R2 K6 ["getText"]
      159 CALL                             R28 3 1
      160 MOVE                             R25 R28
      161 GETUPVAL                         R29 2
      162 JUMPIFNOT                        R29 ; [+2]
      163 LOADNIL                          R28
      164 JUMP                             ; [+25]
      165 GETUPVAL                         R28 3
      166 MOVE                             R29 R25
      167 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      169 GETTABLEKS                       R30 R30 K40 ["Subtext"]
      171 GETTABLEKS                       R30 R30 K41 ["TextSize"]
      173 GETTABLEKS                       R31 R3 K39 ["fontStyle"]
      175 GETTABLEKS                       R31 R31 K40 ["Subtext"]
      177 GETTABLEKS                       R31 R31 K42 ["Font"]
      179 GETIMPORT                        R32 K44 [Vector2.new]
      181 GETTABLEKS                       R33 R3 K31 ["robuxFeeBase"]
      183 GETTABLEKS                       R33 R33 K45 ["subText"]
      185 GETTABLEKS                       R33 R33 K46 ["width"]
      187 LOADK                            R34 K47 [∞]
      188 CALL                             R32 2 -1
      189 CALL                             R28 -1 1
      190 NOT                              R29 R12
      191 JUMPIF                           R29 ; [+2]
      192 NOT                              R30 R12
      193 AND                              R29 R30 R16
      194 JUMPIF                           R12 ; [+7]
      195 JUMPIF                           R16 ; [+1]
      196 JUMPIFNOT                        R17 ; [+5]
      197 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      199 GETTABLEKS                       R30 R30 K48 ["SmallError"]
      201 JUMPIF                           R30 ; [+4]
      202 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      204 GETTABLEKS                       R30 R30 K40 ["Subtext"]
      206 NEWTABLE                         R31 0 2
      208 DUPTABLE                         R32 K51 [{"Id", "Title"}]
      209 LOADB                            R33 1
      210 SETTABLEKS                       R33 R32 K49 ["Id"]
      212 LOADK                            R35 K4 ["Monetization"]
      213 LOADK                            R36 K52 ["Free"]
      214 NAMECALL                         R33 R2 K6 ["getText"]
      216 CALL                             R33 3 1
      217 SETTABLEKS                       R33 R32 K50 ["Title"]
      219 DUPTABLE                         R33 K54 [{"Id", "Title", "Children"}]
      220 LOADB                            R34 0
      221 SETTABLEKS                       R34 R33 K49 ["Id"]
      223 LOADK                            R36 K4 ["Monetization"]
      224 LOADK                            R37 K55 ["Paid"]
      225 NAMECALL                         R34 R2 K6 ["getText"]
      227 CALL                             R34 3 1
      228 SETTABLEKS                       R34 R33 K50 ["Title"]
      230 DUPTABLE                         R34 K57 [{"RobuxFeeBase"}]
      231 GETUPVAL                         R35 4
      232 GETTABLEKS                       R35 R35 K58 ["createElement"]
      234 GETUPVAL                         R36 5
      235 DUPTABLE                         R37 K64 [{"Price", "TaxRate", "MinimumFee", "SubText", "Enabled", "OnPriceChanged", "HasPriceChanged", "LayoutOrder", "ShowPriceChangeWarning"}]
      236 SETTABLEKS                       R13 R37 K59 ["Price"]
      238 SETTABLEKS                       R10 R37 K11 ["TaxRate"]
      240 SETTABLEKS                       R11 R37 K12 ["MinimumFee"]
      242 SETTABLEKS                       R24 R37 K60 ["SubText"]
      244 NOT                              R38 R18
      245 SETTABLEKS                       R38 R37 K10 ["Enabled"]
      247 SETTABLEKS                       R20 R37 K61 ["OnPriceChanged"]
      249 SETTABLEKS                       R16 R37 K62 ["HasPriceChanged"]
      251 NAMECALL                         R38 R4 K65 ["getNextOrder"]
      253 CALL                             R38 1 1
      254 SETTABLEKS                       R38 R37 K8 ["LayoutOrder"]
      256 SETTABLEKS                       R27 R37 K63 ["ShowPriceChangeWarning"]
      258 CALL                             R35 2 1
      259 SETTABLEKS                       R35 R34 K56 ["RobuxFeeBase"]
      261 SETTABLEKS                       R34 R33 K53 ["Children"]
      263 SETLIST                          R31 R32 2 [1]
      265 GETUPVAL                         R32 4
      266 GETTABLEKS                       R32 R32 K58 ["createElement"]
      268 GETUPVAL                         R34 2
      269 JUMPIFNOT                        R34 ; [+2]
      270 GETUPVAL                         R33 6
      271 JUMP                             ; [+1]
      272 GETUPVAL                         R33 7
      273 GETUPVAL                         R35 2
      274 JUMPIFNOT                        R35 ; [+20]
      275 DUPTABLE                         R34 K69 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      276 GETIMPORT                        R35 K72 [Enum.AutomaticSize.XY]
      278 SETTABLEKS                       R35 R34 K66 ["AutomaticSize"]
      280 GETIMPORT                        R35 K75 [Enum.FillDirection.Vertical]
      282 SETTABLEKS                       R35 R34 K67 ["Layout"]
      284 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      286 GETUPVAL                         R36 2
      287 JUMPIFNOT                        R36 ; [+3]
      288 GETTABLEKS                       R35 R3 K76 ["titleSpacing"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R35
      292 SETTABLEKS                       R35 R34 K68 ["Spacing"]
      294 JUMP                             ; [+22]
      295 DUPTABLE                         R34 K80 [{"axis", "minimumSize", "BackgroundTransparency", "LayoutOrder"}]
      296 GETUPVAL                         R35 7
      297 GETTABLEKS                       R35 R35 K81 ["Axis"]
      299 GETTABLEKS                       R35 R35 K74 ["Vertical"]
      301 SETTABLEKS                       R35 R34 K77 ["axis"]
      303 GETIMPORT                        R35 K83 [UDim2.new]
      305 LOADN                            R36 1
      306 LOADN                            R37 0
      307 LOADN                            R38 0
      308 LOADN                            R39 0
      309 CALL                             R35 4 1
      310 SETTABLEKS                       R35 R34 K78 ["minimumSize"]
      312 LOADN                            R35 1
      313 SETTABLEKS                       R35 R34 K79 ["BackgroundTransparency"]
      315 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      317 DUPTABLE                         R35 K86 [{"ToggleAndSubscriptionsAndTotal", "PriceConfig"}]
      318 GETUPVAL                         R36 4
      319 GETTABLEKS                       R36 R36 K58 ["createElement"]
      321 GETUPVAL                         R37 8
      322 DUPTABLE                         R38 K87 [{"LayoutOrder", "Title"}]
      323 LOADN                            R39 1
      324 SETTABLEKS                       R39 R38 K8 ["LayoutOrder"]
      326 SETTABLEKS                       R5 R38 K50 ["Title"]
      328 DUPTABLE                         R39 K92 [{"UIListLayout", "ToggleButton", "SubText", "Subscriptions", "TotalVIPServers"}]
      329 GETUPVAL                         R41 2
      330 JUMPIFNOT                        R41 ; [+2]
      331 LOADNIL                          R40
      332 JUMP                             ; [+14]
      333 GETUPVAL                         R40 4
      334 GETTABLEKS                       R40 R40 K58 ["createElement"]
      336 LOADK                            R41 K88 ["UIListLayout"]
      337 DUPTABLE                         R42 K94 [{"SortOrder", "FillDirection"}]
      338 GETIMPORT                        R43 K95 [Enum.SortOrder.LayoutOrder]
      340 SETTABLEKS                       R43 R42 K93 ["SortOrder"]
      342 GETIMPORT                        R43 K75 [Enum.FillDirection.Vertical]
      344 SETTABLEKS                       R43 R42 K73 ["FillDirection"]
      346 CALL                             R40 2 1
      347 SETTABLEKS                       R40 R39 K88 ["UIListLayout"]
      349 GETUPVAL                         R40 4
      350 GETTABLEKS                       R40 R40 K58 ["createElement"]
      352 GETUPVAL                         R41 9
      353 DUPTABLE                         R42 K99 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
      354 NOT                              R43 R9
      355 SETTABLEKS                       R43 R42 K96 ["Disabled"]
      357 SETTABLEKS                       R12 R42 K97 ["Selected"]
      359 SETTABLEKS                       R19 R42 K98 ["OnClick"]
      361 LOADN                            R43 1
      362 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      364 CALL                             R40 2 1
      365 SETTABLEKS                       R40 R39 K89 ["ToggleButton"]
      367 MOVE                             R40 R29
      368 JUMPIFNOT                        R40 ; [+75]
      369 GETUPVAL                         R41 2
      370 JUMPIFNOT                        R41 ; [+26]
      371 GETUPVAL                         R40 4
      372 GETTABLEKS                       R40 R40 K58 ["createElement"]
      374 GETUPVAL                         R41 10
      375 DUPTABLE                         R42 K104 [{"AutomaticSize", "Style", "Text", "LayoutOrder", "TextWrapped", "TextXAlignment"}]
      376 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      378 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      380 LOADK                            R43 K105 ["Label"]
      381 SETTABLEKS                       R43 R42 K100 ["Style"]
      383 SETTABLEKS                       R25 R42 K101 ["Text"]
      385 LOADN                            R43 2
      386 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      388 LOADB                            R43 1
      389 SETTABLEKS                       R43 R42 K102 ["TextWrapped"]
      391 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      393 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      395 CALL                             R40 2 1
      396 JUMP                             ; [+47]
      397 GETUPVAL                         R40 4
      398 GETTABLEKS                       R40 R40 K58 ["createElement"]
      400 LOADK                            R41 K108 ["TextLabel"]
      401 GETUPVAL                         R42 11
      402 GETTABLEKS                       R42 R42 K109 ["Dictionary"]
      404 GETTABLEKS                       R42 R42 K110 ["join"]
      406 MOVE                             R43 R30
      407 DUPTABLE                         R44 K113 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      408 GETIMPORT                        R45 K83 [UDim2.new]
      410 LOADN                            R46 0
      411 GETTABLEKS                       R48 R28 K114 ["X"]
      413 FASTCALL1                        MATH_CEIL R48 ; [+2]
      414 GETIMPORT                        R47 K117 [math.ceil]
      416 CALL                             R47 1 1
      417 LOADN                            R48 0
      418 GETTABLEKS                       R49 R28 K118 ["Y"]
      420 CALL                             R45 4 1
      421 SETTABLEKS                       R45 R44 K111 ["Size"]
      423 LOADN                            R45 1
      424 SETTABLEKS                       R45 R44 K79 ["BackgroundTransparency"]
      426 SETTABLEKS                       R25 R44 K101 ["Text"]
      428 GETIMPORT                        R45 K120 [Enum.TextYAlignment.Center]
      430 SETTABLEKS                       R45 R44 K112 ["TextYAlignment"]
      432 GETIMPORT                        R45 K107 [Enum.TextXAlignment.Left]
      434 SETTABLEKS                       R45 R44 K103 ["TextXAlignment"]
      436 LOADB                            R45 1
      437 SETTABLEKS                       R45 R44 K102 ["TextWrapped"]
      439 LOADN                            R45 2
      440 SETTABLEKS                       R45 R44 K8 ["LayoutOrder"]
      442 CALL                             R42 2 -1
      443 CALL                             R40 -1 1
      444 SETTABLEKS                       R40 R39 K60 ["SubText"]
      446 MOVE                             R40 R12
      447 JUMPIFNOT                        R40 ; [+91]
      448 GETUPVAL                         R41 2
      449 JUMPIFNOT                        R41 ; [+23]
      450 GETUPVAL                         R40 4
      451 GETTABLEKS                       R40 R40 K58 ["createElement"]
      453 GETUPVAL                         R41 10
      454 DUPTABLE                         R42 K121 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
      455 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      457 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      459 LOADN                            R43 2
      460 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      462 LOADK                            R43 K105 ["Label"]
      463 SETTABLEKS                       R43 R42 K100 ["Style"]
      465 SETTABLEKS                       R21 R42 K101 ["Text"]
      467 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      469 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      471 CALL                             R40 2 1
      472 JUMP                             ; [+66]
      473 GETUPVAL                         R40 4
      474 GETTABLEKS                       R40 R40 K58 ["createElement"]
      476 LOADK                            R41 K108 ["TextLabel"]
      477 DUPTABLE                         R42 K124 [{"Font", "TextSize", "TextColor3", "Text", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTransparency", "LayoutOrder"}]
      478 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      480 GETTABLEKS                       R43 R43 K125 ["Normal"]
      482 GETTABLEKS                       R43 R43 K42 ["Font"]
      484 SETTABLEKS                       R43 R42 K42 ["Font"]
      486 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      488 GETTABLEKS                       R43 R43 K125 ["Normal"]
      490 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      492 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      494 JUMPIFNOT                        R12 ; [+7]
      495 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      497 GETTABLEKS                       R43 R43 K125 ["Normal"]
      499 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      501 JUMPIF                           R43 ; [+6]
      502 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      504 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      506 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      508 SETTABLEKS                       R43 R42 K122 ["TextColor3"]
      510 SETTABLEKS                       R21 R42 K101 ["Text"]
      512 GETIMPORT                        R43 K83 [UDim2.new]
      514 LOADN                            R44 1
      515 LOADN                            R45 0
      516 LOADN                            R46 0
      517 GETTABLEKS                       R47 R3 K126 ["rowHeight"]
      519 CALL                             R43 4 1
      520 SETTABLEKS                       R43 R42 K111 ["Size"]
      522 LOADN                            R43 1
      523 SETTABLEKS                       R43 R42 K79 ["BackgroundTransparency"]
      525 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      527 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      529 GETIMPORT                        R43 K120 [Enum.TextYAlignment.Center]
      531 SETTABLEKS                       R43 R42 K112 ["TextYAlignment"]
      533 SETTABLEKS                       R23 R42 K123 ["TextTransparency"]
      535 LOADN                            R43 2
      536 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      538 CALL                             R40 2 1
      539 SETTABLEKS                       R40 R39 K90 ["Subscriptions"]
      541 MOVE                             R40 R12
      542 JUMPIFNOT                        R40 ; [+91]
      543 GETUPVAL                         R41 2
      544 JUMPIFNOT                        R41 ; [+23]
      545 GETUPVAL                         R40 4
      546 GETTABLEKS                       R40 R40 K58 ["createElement"]
      548 GETUPVAL                         R41 10
      549 DUPTABLE                         R42 K121 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
      550 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      552 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      554 LOADN                            R43 3
      555 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      557 LOADK                            R43 K105 ["Label"]
      558 SETTABLEKS                       R43 R42 K100 ["Style"]
      560 SETTABLEKS                       R22 R42 K101 ["Text"]
      562 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      564 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      566 CALL                             R40 2 1
      567 JUMP                             ; [+66]
      568 GETUPVAL                         R40 4
      569 GETTABLEKS                       R40 R40 K58 ["createElement"]
      571 LOADK                            R41 K108 ["TextLabel"]
      572 DUPTABLE                         R42 K124 [{"Font", "TextSize", "TextColor3", "Text", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTransparency", "LayoutOrder"}]
      573 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      575 GETTABLEKS                       R43 R43 K125 ["Normal"]
      577 GETTABLEKS                       R43 R43 K42 ["Font"]
      579 SETTABLEKS                       R43 R42 K42 ["Font"]
      581 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      583 GETTABLEKS                       R43 R43 K125 ["Normal"]
      585 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      587 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      589 JUMPIFNOT                        R12 ; [+7]
      590 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      592 GETTABLEKS                       R43 R43 K125 ["Normal"]
      594 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      596 JUMPIF                           R43 ; [+6]
      597 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      599 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      601 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      603 SETTABLEKS                       R43 R42 K122 ["TextColor3"]
      605 SETTABLEKS                       R22 R42 K101 ["Text"]
      607 GETIMPORT                        R43 K83 [UDim2.new]
      609 LOADN                            R44 1
      610 LOADN                            R45 0
      611 LOADN                            R46 0
      612 GETTABLEKS                       R47 R3 K126 ["rowHeight"]
      614 CALL                             R43 4 1
      615 SETTABLEKS                       R43 R42 K111 ["Size"]
      617 LOADN                            R43 1
      618 SETTABLEKS                       R43 R42 K79 ["BackgroundTransparency"]
      620 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      622 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      624 GETIMPORT                        R43 K120 [Enum.TextYAlignment.Center]
      626 SETTABLEKS                       R43 R42 K112 ["TextYAlignment"]
      628 SETTABLEKS                       R23 R42 K123 ["TextTransparency"]
      630 LOADN                            R43 3
      631 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      633 CALL                             R40 2 1
      634 SETTABLEKS                       R40 R39 K91 ["TotalVIPServers"]
      636 CALL                             R36 3 1
      637 SETTABLEKS                       R36 R35 K84 ["ToggleAndSubscriptionsAndTotal"]
      639 MOVE                             R36 R12
      640 JUMPIFNOT                        R36 ; [+30]
      641 GETUPVAL                         R36 4
      642 GETTABLEKS                       R36 R36 K58 ["createElement"]
      644 GETUPVAL                         R37 12
      645 DUPTABLE                         R38 K129 [{"Title", "FillDirection", "Buttons", "Enabled", "Selected", "SelectionChanged", "LayoutOrder"}]
      646 SETTABLEKS                       R6 R38 K50 ["Title"]
      648 GETUPVAL                         R40 2
      649 JUMPIFNOT                        R40 ; [+3]
      650 GETIMPORT                        R39 K131 [Enum.FillDirection.Horizontal]
      652 JUMP                             ; [+1]
      653 LOADNIL                          R39
      654 SETTABLEKS                       R39 R38 K73 ["FillDirection"]
      656 SETTABLEKS                       R31 R38 K127 ["Buttons"]
      658 SETTABLEKS                       R12 R38 K10 ["Enabled"]
      660 SETTABLEKS                       R18 R38 K97 ["Selected"]
      662 NEWCLOSURE                       R39 P0
      663 CAPTURE                          VAL R20
      664 CAPTURE                          VAL R0
      665 SETTABLEKS                       R39 R38 K128 ["SelectionChanged"]
      667 LOADN                            R39 2
      668 SETTABLEKS                       R39 R38 K8 ["LayoutOrder"]
      670 CALL                             R36 2 1
      671 SETTABLEKS                       R36 R35 K85 ["PriceConfig"]
      673 CALL                             R32 3 -1
      674 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["FitFrame"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Cryo"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R1 K5 ["Packages"]
       35 GETTABLEKS                       R5 R5 K8 ["Roact"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R1 K5 ["Packages"]
       42 GETTABLEKS                       R6 R6 K9 ["Framework"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Src"]
       49 GETTABLEKS                       R7 R7 K11 ["Flags"]
       51 GETTABLEKS                       R7 R7 K12 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       53 CALL                             R6 1 1
       54 CALL                             R6 0 1
       55 GETTABLEKS                       R7 R5 K13 ["Util"]
       57 JUMPIFNOT                        R6 ; [+2]
       58 LOADNIL                          R8
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R8 R2 K14 ["FitFrameOnAxis"]
       62 GETTABLEKS                       R9 R7 K15 ["GetTextSize"]
       64 GETTABLEKS                       R10 R7 K16 ["LayoutOrderIterator"]
       66 GETTABLEKS                       R11 R5 K17 ["ContextServices"]
       68 GETTABLEKS                       R12 R11 K18 ["withContext"]
       70 GETIMPORT                        R13 K4 [require]
       72 GETTABLEKS                       R14 R1 K10 ["Src"]
       74 GETTABLEKS                       R14 R14 K19 ["Components"]
       76 GETTABLEKS                       R14 R14 K20 ["RadioButtonSet"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R0 K19 ["Components"]
       83 GETTABLEKS                       R15 R15 K21 ["RobuxFeeBase"]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R15 R5 K22 ["UI"]
       88 GETTABLEKS                       R16 R15 K23 ["Pane"]
       90 GETTABLEKS                       R17 R15 K24 ["TextLabel"]
       92 GETTABLEKS                       R18 R15 K25 ["TitledFrame"]
       94 GETTABLEKS                       R19 R15 K26 ["ToggleButton"]
       96 GETIMPORT                        R20 K4 [require]
       98 GETTABLEKS                       R21 R1 K10 ["Src"]
      100 GETTABLEKS                       R21 R21 K13 ["Util"]
      102 GETTABLEKS                       R21 R21 K27 ["GameSettingsUtilities"]
      104 CALL                             R20 1 1
      105 GETTABLEKS                       R20 R20 K28 ["shouldDisablePrivateServersAndPaidAccess"]
      107 GETTABLEKS                       R21 R4 K29 ["PureComponent"]
      109 LOADK                            R23 K30 ["VIPServers"]
      110 NAMECALL                         R21 R21 K31 ["extend"]
      112 CALL                             R21 2 1
      113 DUPCLOSURE                       R22 K32 [PROTO_0]
      114 SETTABLEKS                       R22 R21 K33 ["init"]
      116 DUPCLOSURE                       R22 K34 [PROTO_2]
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R22 R21 K35 ["render"]
      132 MOVE                             R22 R12
      133 DUPTABLE                         R23 K39 [{"Localization", "Stylizer", "Mouse"}]
      134 GETTABLEKS                       R24 R11 K36 ["Localization"]
      136 SETTABLEKS                       R24 R23 K36 ["Localization"]
      138 GETTABLEKS                       R24 R11 K37 ["Stylizer"]
      140 SETTABLEKS                       R24 R23 K37 ["Stylizer"]
      142 GETTABLEKS                       R24 R11 K38 ["Mouse"]
      144 SETTABLEKS                       R24 R23 K38 ["Mouse"]
      146 CALL                             R22 1 1
      147 MOVE                             R23 R21
      148 CALL                             R22 1 1
      149 MOVE                             R21 R22
      150 RETURN                           R21 1
