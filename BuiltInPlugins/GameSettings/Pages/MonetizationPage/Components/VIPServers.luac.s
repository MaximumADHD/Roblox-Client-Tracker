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
      139 JUMP                             ; [+10]
      140 JUMPIFNOT                        R16 ; [+9]
      141 GETUPVAL                         R28 3
      142 JUMPIF                           R28 ; [+7]
      143 LOADK                            R30 K4 ["Monetization"]
      144 LOADK                            R31 K36 ["PrivateServersPriceChangeWarning"]
      145 NAMECALL                         R28 R2 K6 ["getText"]
      147 CALL                             R28 3 1
      148 MOVE                             R24 R28
      149 LOADB                            R27 1
      150 LOADK                            R30 K4 ["Monetization"]
      151 LOADK                            R31 K37 ["PrivateServersHint"]
      152 NAMECALL                         R28 R2 K6 ["getText"]
      154 CALL                             R28 3 1
      155 MOVE                             R25 R28
      156 JUMPIFNOT                        R17 ; [+6]
      157 LOADK                            R30 K4 ["Monetization"]
      158 LOADK                            R31 K38 ["PrivateServersShutdownWarning"]
      159 NAMECALL                         R28 R2 K6 ["getText"]
      161 CALL                             R28 3 1
      162 MOVE                             R25 R28
      163 GETUPVAL                         R29 2
      164 JUMPIFNOT                        R29 ; [+2]
      165 LOADNIL                          R28
      166 JUMP                             ; [+25]
      167 GETUPVAL                         R28 4
      168 MOVE                             R29 R25
      169 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      171 GETTABLEKS                       R30 R30 K40 ["Subtext"]
      173 GETTABLEKS                       R30 R30 K41 ["TextSize"]
      175 GETTABLEKS                       R31 R3 K39 ["fontStyle"]
      177 GETTABLEKS                       R31 R31 K40 ["Subtext"]
      179 GETTABLEKS                       R31 R31 K42 ["Font"]
      181 GETIMPORT                        R32 K44 [Vector2.new]
      183 GETTABLEKS                       R33 R3 K31 ["robuxFeeBase"]
      185 GETTABLEKS                       R33 R33 K45 ["subText"]
      187 GETTABLEKS                       R33 R33 K46 ["width"]
      189 LOADK                            R34 K47 [∞]
      190 CALL                             R32 2 -1
      191 CALL                             R28 -1 1
      192 NOT                              R29 R12
      193 JUMPIF                           R29 ; [+2]
      194 NOT                              R30 R12
      195 AND                              R29 R30 R16
      196 JUMPIF                           R12 ; [+7]
      197 JUMPIF                           R16 ; [+1]
      198 JUMPIFNOT                        R17 ; [+5]
      199 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      201 GETTABLEKS                       R30 R30 K48 ["SmallError"]
      203 JUMPIF                           R30 ; [+4]
      204 GETTABLEKS                       R30 R3 K39 ["fontStyle"]
      206 GETTABLEKS                       R30 R30 K40 ["Subtext"]
      208 NEWTABLE                         R31 0 2
      210 DUPTABLE                         R32 K51 [{"Id", "Title"}]
      211 LOADB                            R33 1
      212 SETTABLEKS                       R33 R32 K49 ["Id"]
      214 LOADK                            R35 K4 ["Monetization"]
      215 LOADK                            R36 K52 ["Free"]
      216 NAMECALL                         R33 R2 K6 ["getText"]
      218 CALL                             R33 3 1
      219 SETTABLEKS                       R33 R32 K50 ["Title"]
      221 DUPTABLE                         R33 K54 [{"Id", "Title", "Children"}]
      222 LOADB                            R34 0
      223 SETTABLEKS                       R34 R33 K49 ["Id"]
      225 LOADK                            R36 K4 ["Monetization"]
      226 LOADK                            R37 K55 ["Paid"]
      227 NAMECALL                         R34 R2 K6 ["getText"]
      229 CALL                             R34 3 1
      230 SETTABLEKS                       R34 R33 K50 ["Title"]
      232 DUPTABLE                         R34 K57 [{"RobuxFeeBase"}]
      233 GETUPVAL                         R35 5
      234 GETTABLEKS                       R35 R35 K58 ["createElement"]
      236 GETUPVAL                         R36 6
      237 DUPTABLE                         R37 K64 [{"Price", "TaxRate", "MinimumFee", "SubText", "Enabled", "OnPriceChanged", "HasPriceChanged", "LayoutOrder", "ShowPriceChangeWarning"}]
      238 SETTABLEKS                       R13 R37 K59 ["Price"]
      240 SETTABLEKS                       R10 R37 K11 ["TaxRate"]
      242 SETTABLEKS                       R11 R37 K12 ["MinimumFee"]
      244 SETTABLEKS                       R24 R37 K60 ["SubText"]
      246 NOT                              R38 R18
      247 SETTABLEKS                       R38 R37 K10 ["Enabled"]
      249 SETTABLEKS                       R20 R37 K61 ["OnPriceChanged"]
      251 SETTABLEKS                       R16 R37 K62 ["HasPriceChanged"]
      253 NAMECALL                         R38 R4 K65 ["getNextOrder"]
      255 CALL                             R38 1 1
      256 SETTABLEKS                       R38 R37 K8 ["LayoutOrder"]
      258 GETUPVAL                         R39 3
      259 JUMPIFNOT                        R39 ; [+2]
      260 LOADNIL                          R38
      261 JUMP                             ; [+1]
      262 MOVE                             R38 R27
      263 SETTABLEKS                       R38 R37 K63 ["ShowPriceChangeWarning"]
      265 CALL                             R35 2 1
      266 SETTABLEKS                       R35 R34 K56 ["RobuxFeeBase"]
      268 SETTABLEKS                       R34 R33 K53 ["Children"]
      270 SETLIST                          R31 R32 2 [1]
      272 GETUPVAL                         R32 5
      273 GETTABLEKS                       R32 R32 K58 ["createElement"]
      275 GETUPVAL                         R34 2
      276 JUMPIFNOT                        R34 ; [+2]
      277 GETUPVAL                         R33 7
      278 JUMP                             ; [+1]
      279 GETUPVAL                         R33 8
      280 GETUPVAL                         R35 2
      281 JUMPIFNOT                        R35 ; [+20]
      282 DUPTABLE                         R34 K69 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      283 GETIMPORT                        R35 K72 [Enum.AutomaticSize.XY]
      285 SETTABLEKS                       R35 R34 K66 ["AutomaticSize"]
      287 GETIMPORT                        R35 K75 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R35 R34 K67 ["Layout"]
      291 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      293 GETUPVAL                         R36 2
      294 JUMPIFNOT                        R36 ; [+3]
      295 GETTABLEKS                       R35 R3 K76 ["titleSpacing"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R35
      299 SETTABLEKS                       R35 R34 K68 ["Spacing"]
      301 JUMP                             ; [+22]
      302 DUPTABLE                         R34 K80 [{"axis", "minimumSize", "BackgroundTransparency", "LayoutOrder"}]
      303 GETUPVAL                         R35 8
      304 GETTABLEKS                       R35 R35 K81 ["Axis"]
      306 GETTABLEKS                       R35 R35 K74 ["Vertical"]
      308 SETTABLEKS                       R35 R34 K77 ["axis"]
      310 GETIMPORT                        R35 K83 [UDim2.new]
      312 LOADN                            R36 1
      313 LOADN                            R37 0
      314 LOADN                            R38 0
      315 LOADN                            R39 0
      316 CALL                             R35 4 1
      317 SETTABLEKS                       R35 R34 K78 ["minimumSize"]
      319 LOADN                            R35 1
      320 SETTABLEKS                       R35 R34 K79 ["BackgroundTransparency"]
      322 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      324 DUPTABLE                         R35 K86 [{"ToggleAndSubscriptionsAndTotal", "PriceConfig"}]
      325 GETUPVAL                         R36 5
      326 GETTABLEKS                       R36 R36 K58 ["createElement"]
      328 GETUPVAL                         R37 9
      329 DUPTABLE                         R38 K87 [{"LayoutOrder", "Title"}]
      330 LOADN                            R39 1
      331 SETTABLEKS                       R39 R38 K8 ["LayoutOrder"]
      333 SETTABLEKS                       R5 R38 K50 ["Title"]
      335 DUPTABLE                         R39 K92 [{"UIListLayout", "ToggleButton", "SubText", "Subscriptions", "TotalVIPServers"}]
      336 GETUPVAL                         R41 2
      337 JUMPIFNOT                        R41 ; [+2]
      338 LOADNIL                          R40
      339 JUMP                             ; [+14]
      340 GETUPVAL                         R40 5
      341 GETTABLEKS                       R40 R40 K58 ["createElement"]
      343 LOADK                            R41 K88 ["UIListLayout"]
      344 DUPTABLE                         R42 K94 [{"SortOrder", "FillDirection"}]
      345 GETIMPORT                        R43 K95 [Enum.SortOrder.LayoutOrder]
      347 SETTABLEKS                       R43 R42 K93 ["SortOrder"]
      349 GETIMPORT                        R43 K75 [Enum.FillDirection.Vertical]
      351 SETTABLEKS                       R43 R42 K73 ["FillDirection"]
      353 CALL                             R40 2 1
      354 SETTABLEKS                       R40 R39 K88 ["UIListLayout"]
      356 GETUPVAL                         R40 5
      357 GETTABLEKS                       R40 R40 K58 ["createElement"]
      359 GETUPVAL                         R41 10
      360 DUPTABLE                         R42 K99 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
      361 NOT                              R43 R9
      362 SETTABLEKS                       R43 R42 K96 ["Disabled"]
      364 SETTABLEKS                       R12 R42 K97 ["Selected"]
      366 SETTABLEKS                       R19 R42 K98 ["OnClick"]
      368 LOADN                            R43 1
      369 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      371 CALL                             R40 2 1
      372 SETTABLEKS                       R40 R39 K89 ["ToggleButton"]
      374 MOVE                             R40 R29
      375 JUMPIFNOT                        R40 ; [+75]
      376 GETUPVAL                         R41 2
      377 JUMPIFNOT                        R41 ; [+26]
      378 GETUPVAL                         R40 5
      379 GETTABLEKS                       R40 R40 K58 ["createElement"]
      381 GETUPVAL                         R41 11
      382 DUPTABLE                         R42 K104 [{"AutomaticSize", "Style", "Text", "LayoutOrder", "TextWrapped", "TextXAlignment"}]
      383 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      385 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      387 LOADK                            R43 K105 ["Label"]
      388 SETTABLEKS                       R43 R42 K100 ["Style"]
      390 SETTABLEKS                       R25 R42 K101 ["Text"]
      392 LOADN                            R43 2
      393 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      395 LOADB                            R43 1
      396 SETTABLEKS                       R43 R42 K102 ["TextWrapped"]
      398 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      400 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      402 CALL                             R40 2 1
      403 JUMP                             ; [+47]
      404 GETUPVAL                         R40 5
      405 GETTABLEKS                       R40 R40 K58 ["createElement"]
      407 LOADK                            R41 K108 ["TextLabel"]
      408 GETUPVAL                         R42 12
      409 GETTABLEKS                       R42 R42 K109 ["Dictionary"]
      411 GETTABLEKS                       R42 R42 K110 ["join"]
      413 MOVE                             R43 R30
      414 DUPTABLE                         R44 K113 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      415 GETIMPORT                        R45 K83 [UDim2.new]
      417 LOADN                            R46 0
      418 GETTABLEKS                       R48 R28 K114 ["X"]
      420 FASTCALL1                        MATH_CEIL R48 ; [+2]
      421 GETIMPORT                        R47 K117 [math.ceil]
      423 CALL                             R47 1 1
      424 LOADN                            R48 0
      425 GETTABLEKS                       R49 R28 K118 ["Y"]
      427 CALL                             R45 4 1
      428 SETTABLEKS                       R45 R44 K111 ["Size"]
      430 LOADN                            R45 1
      431 SETTABLEKS                       R45 R44 K79 ["BackgroundTransparency"]
      433 SETTABLEKS                       R25 R44 K101 ["Text"]
      435 GETIMPORT                        R45 K120 [Enum.TextYAlignment.Center]
      437 SETTABLEKS                       R45 R44 K112 ["TextYAlignment"]
      439 GETIMPORT                        R45 K107 [Enum.TextXAlignment.Left]
      441 SETTABLEKS                       R45 R44 K103 ["TextXAlignment"]
      443 LOADB                            R45 1
      444 SETTABLEKS                       R45 R44 K102 ["TextWrapped"]
      446 LOADN                            R45 2
      447 SETTABLEKS                       R45 R44 K8 ["LayoutOrder"]
      449 CALL                             R42 2 -1
      450 CALL                             R40 -1 1
      451 SETTABLEKS                       R40 R39 K60 ["SubText"]
      453 MOVE                             R40 R12
      454 JUMPIFNOT                        R40 ; [+91]
      455 GETUPVAL                         R41 2
      456 JUMPIFNOT                        R41 ; [+23]
      457 GETUPVAL                         R40 5
      458 GETTABLEKS                       R40 R40 K58 ["createElement"]
      460 GETUPVAL                         R41 11
      461 DUPTABLE                         R42 K121 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
      462 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      464 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      466 LOADN                            R43 2
      467 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      469 LOADK                            R43 K105 ["Label"]
      470 SETTABLEKS                       R43 R42 K100 ["Style"]
      472 SETTABLEKS                       R21 R42 K101 ["Text"]
      474 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      476 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      478 CALL                             R40 2 1
      479 JUMP                             ; [+66]
      480 GETUPVAL                         R40 5
      481 GETTABLEKS                       R40 R40 K58 ["createElement"]
      483 LOADK                            R41 K108 ["TextLabel"]
      484 DUPTABLE                         R42 K124 [{"Font", "TextSize", "TextColor3", "Text", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTransparency", "LayoutOrder"}]
      485 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      487 GETTABLEKS                       R43 R43 K125 ["Normal"]
      489 GETTABLEKS                       R43 R43 K42 ["Font"]
      491 SETTABLEKS                       R43 R42 K42 ["Font"]
      493 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      495 GETTABLEKS                       R43 R43 K125 ["Normal"]
      497 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      499 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      501 JUMPIFNOT                        R12 ; [+7]
      502 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      504 GETTABLEKS                       R43 R43 K125 ["Normal"]
      506 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      508 JUMPIF                           R43 ; [+6]
      509 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      511 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      513 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      515 SETTABLEKS                       R43 R42 K122 ["TextColor3"]
      517 SETTABLEKS                       R21 R42 K101 ["Text"]
      519 GETIMPORT                        R43 K83 [UDim2.new]
      521 LOADN                            R44 1
      522 LOADN                            R45 0
      523 LOADN                            R46 0
      524 GETTABLEKS                       R47 R3 K126 ["rowHeight"]
      526 CALL                             R43 4 1
      527 SETTABLEKS                       R43 R42 K111 ["Size"]
      529 LOADN                            R43 1
      530 SETTABLEKS                       R43 R42 K79 ["BackgroundTransparency"]
      532 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      534 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      536 GETIMPORT                        R43 K120 [Enum.TextYAlignment.Center]
      538 SETTABLEKS                       R43 R42 K112 ["TextYAlignment"]
      540 SETTABLEKS                       R23 R42 K123 ["TextTransparency"]
      542 LOADN                            R43 2
      543 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      545 CALL                             R40 2 1
      546 SETTABLEKS                       R40 R39 K90 ["Subscriptions"]
      548 MOVE                             R40 R12
      549 JUMPIFNOT                        R40 ; [+91]
      550 GETUPVAL                         R41 2
      551 JUMPIFNOT                        R41 ; [+23]
      552 GETUPVAL                         R40 5
      553 GETTABLEKS                       R40 R40 K58 ["createElement"]
      555 GETUPVAL                         R41 11
      556 DUPTABLE                         R42 K121 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
      557 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      559 SETTABLEKS                       R43 R42 K66 ["AutomaticSize"]
      561 LOADN                            R43 3
      562 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      564 LOADK                            R43 K105 ["Label"]
      565 SETTABLEKS                       R43 R42 K100 ["Style"]
      567 SETTABLEKS                       R22 R42 K101 ["Text"]
      569 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      571 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      573 CALL                             R40 2 1
      574 JUMP                             ; [+66]
      575 GETUPVAL                         R40 5
      576 GETTABLEKS                       R40 R40 K58 ["createElement"]
      578 LOADK                            R41 K108 ["TextLabel"]
      579 DUPTABLE                         R42 K124 [{"Font", "TextSize", "TextColor3", "Text", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTransparency", "LayoutOrder"}]
      580 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      582 GETTABLEKS                       R43 R43 K125 ["Normal"]
      584 GETTABLEKS                       R43 R43 K42 ["Font"]
      586 SETTABLEKS                       R43 R42 K42 ["Font"]
      588 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      590 GETTABLEKS                       R43 R43 K125 ["Normal"]
      592 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      594 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      596 JUMPIFNOT                        R12 ; [+7]
      597 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      599 GETTABLEKS                       R43 R43 K125 ["Normal"]
      601 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      603 JUMPIF                           R43 ; [+6]
      604 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      606 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      608 GETTABLEKS                       R43 R43 K122 ["TextColor3"]
      610 SETTABLEKS                       R43 R42 K122 ["TextColor3"]
      612 SETTABLEKS                       R22 R42 K101 ["Text"]
      614 GETIMPORT                        R43 K83 [UDim2.new]
      616 LOADN                            R44 1
      617 LOADN                            R45 0
      618 LOADN                            R46 0
      619 GETTABLEKS                       R47 R3 K126 ["rowHeight"]
      621 CALL                             R43 4 1
      622 SETTABLEKS                       R43 R42 K111 ["Size"]
      624 LOADN                            R43 1
      625 SETTABLEKS                       R43 R42 K79 ["BackgroundTransparency"]
      627 GETIMPORT                        R43 K107 [Enum.TextXAlignment.Left]
      629 SETTABLEKS                       R43 R42 K103 ["TextXAlignment"]
      631 GETIMPORT                        R43 K120 [Enum.TextYAlignment.Center]
      633 SETTABLEKS                       R43 R42 K112 ["TextYAlignment"]
      635 SETTABLEKS                       R23 R42 K123 ["TextTransparency"]
      637 LOADN                            R43 3
      638 SETTABLEKS                       R43 R42 K8 ["LayoutOrder"]
      640 CALL                             R40 2 1
      641 SETTABLEKS                       R40 R39 K91 ["TotalVIPServers"]
      643 CALL                             R36 3 1
      644 SETTABLEKS                       R36 R35 K84 ["ToggleAndSubscriptionsAndTotal"]
      646 MOVE                             R36 R12
      647 JUMPIFNOT                        R36 ; [+30]
      648 GETUPVAL                         R36 5
      649 GETTABLEKS                       R36 R36 K58 ["createElement"]
      651 GETUPVAL                         R37 13
      652 DUPTABLE                         R38 K129 [{"Title", "FillDirection", "Buttons", "Enabled", "Selected", "SelectionChanged", "LayoutOrder"}]
      653 SETTABLEKS                       R6 R38 K50 ["Title"]
      655 GETUPVAL                         R40 2
      656 JUMPIFNOT                        R40 ; [+3]
      657 GETIMPORT                        R39 K131 [Enum.FillDirection.Horizontal]
      659 JUMP                             ; [+1]
      660 LOADNIL                          R39
      661 SETTABLEKS                       R39 R38 K73 ["FillDirection"]
      663 SETTABLEKS                       R31 R38 K127 ["Buttons"]
      665 SETTABLEKS                       R12 R38 K10 ["Enabled"]
      667 SETTABLEKS                       R18 R38 K97 ["Selected"]
      669 NEWCLOSURE                       R39 P0
      670 CAPTURE                          VAL R20
      671 CAPTURE                          VAL R0
      672 SETTABLEKS                       R39 R38 K128 ["SelectionChanged"]
      674 LOADN                            R39 2
      675 SETTABLEKS                       R39 R38 K8 ["LayoutOrder"]
      677 CALL                             R36 2 1
      678 SETTABLEKS                       R36 R35 K85 ["PriceConfig"]
      680 CALL                             R32 3 -1
      681 RETURN                           R32 -1

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
       55 GETIMPORT                        R7 K4 [require]
       57 GETTABLEKS                       R8 R0 K11 ["Flags"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K13 ["GetFFlagGameSettingsVIPServerPriceChangeTooSoon"]
       62 CALL                             R8 0 1
       63 GETTABLEKS                       R9 R5 K14 ["Util"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 LOADNIL                          R10
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R10 R2 K15 ["FitFrameOnAxis"]
       70 GETTABLEKS                       R11 R9 K16 ["GetTextSize"]
       72 GETTABLEKS                       R12 R9 K17 ["LayoutOrderIterator"]
       74 GETTABLEKS                       R13 R5 K18 ["ContextServices"]
       76 GETTABLEKS                       R14 R13 K19 ["withContext"]
       78 GETIMPORT                        R15 K4 [require]
       80 GETTABLEKS                       R16 R1 K10 ["Src"]
       82 GETTABLEKS                       R16 R16 K20 ["Components"]
       84 GETTABLEKS                       R16 R16 K21 ["RadioButtonSet"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K4 [require]
       89 GETTABLEKS                       R17 R0 K20 ["Components"]
       91 GETTABLEKS                       R17 R17 K22 ["RobuxFeeBase"]
       93 CALL                             R16 1 1
       94 GETTABLEKS                       R17 R5 K23 ["UI"]
       96 GETTABLEKS                       R18 R17 K24 ["Pane"]
       98 GETTABLEKS                       R19 R17 K25 ["TextLabel"]
      100 GETTABLEKS                       R20 R17 K26 ["TitledFrame"]
      102 GETTABLEKS                       R21 R17 K27 ["ToggleButton"]
      104 GETIMPORT                        R22 K4 [require]
      106 GETTABLEKS                       R23 R1 K10 ["Src"]
      108 GETTABLEKS                       R23 R23 K14 ["Util"]
      110 GETTABLEKS                       R23 R23 K28 ["GameSettingsUtilities"]
      112 CALL                             R22 1 1
      113 GETTABLEKS                       R22 R22 K29 ["shouldDisablePrivateServersAndPaidAccess"]
      115 GETTABLEKS                       R23 R4 K30 ["PureComponent"]
      117 LOADK                            R25 K31 ["VIPServers"]
      118 NAMECALL                         R23 R23 K32 ["extend"]
      120 CALL                             R23 2 1
      121 DUPCLOSURE                       R24 K33 [PROTO_0]
      122 SETTABLEKS                       R24 R23 K34 ["init"]
      124 DUPCLOSURE                       R24 K35 [PROTO_2]
      125 CAPTURE                          VAL R22
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R15
      139 SETTABLEKS                       R24 R23 K36 ["render"]
      141 MOVE                             R24 R14
      142 DUPTABLE                         R25 K40 [{"Localization", "Stylizer", "Mouse"}]
      143 GETTABLEKS                       R26 R13 K37 ["Localization"]
      145 SETTABLEKS                       R26 R25 K37 ["Localization"]
      147 GETTABLEKS                       R26 R13 K38 ["Stylizer"]
      149 SETTABLEKS                       R26 R25 K38 ["Stylizer"]
      151 GETTABLEKS                       R26 R13 K39 ["Mouse"]
      153 SETTABLEKS                       R26 R25 K39 ["Mouse"]
      155 CALL                             R24 1 1
      156 MOVE                             R25 R23
      157 CALL                             R24 1 1
      158 MOVE                             R23 R24
      159 RETURN                           R23 1
