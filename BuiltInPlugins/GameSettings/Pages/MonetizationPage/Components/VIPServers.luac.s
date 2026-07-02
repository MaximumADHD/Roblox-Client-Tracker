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
      210 DUPTABLE                         R32 K52 [{["Id"] = True, ["Title"]}]
      211 LOADK                            R35 K4 ["Monetization"]
      212 LOADK                            R36 K53 ["Free"]
      213 NAMECALL                         R33 R2 K6 ["getText"]
      215 CALL                             R33 3 1
      216 SETTABLEKS                       R33 R32 K51 ["Title"]
      218 DUPTABLE                         R33 K56 [{["Id"] = False, ["Title"], ["Children"]}]
      219 LOADK                            R36 K4 ["Monetization"]
      220 LOADK                            R37 K57 ["Paid"]
      221 NAMECALL                         R34 R2 K6 ["getText"]
      223 CALL                             R34 3 1
      224 SETTABLEKS                       R34 R33 K51 ["Title"]
      226 DUPTABLE                         R34 K59 [{"RobuxFeeBase"}]
      227 GETUPVAL                         R35 5
      228 GETTABLEKS                       R35 R35 K60 ["createElement"]
      230 GETUPVAL                         R36 6
      231 DUPTABLE                         R37 K66 [{"Price", "TaxRate", "MinimumFee", "SubText", "Enabled", "OnPriceChanged", "HasPriceChanged", "LayoutOrder", "ShowPriceChangeWarning"}]
      232 SETTABLEKS                       R13 R37 K61 ["Price"]
      234 SETTABLEKS                       R10 R37 K11 ["TaxRate"]
      236 SETTABLEKS                       R11 R37 K12 ["MinimumFee"]
      238 SETTABLEKS                       R24 R37 K62 ["SubText"]
      240 NOT                              R38 R18
      241 SETTABLEKS                       R38 R37 K10 ["Enabled"]
      243 SETTABLEKS                       R20 R37 K63 ["OnPriceChanged"]
      245 SETTABLEKS                       R16 R37 K64 ["HasPriceChanged"]
      247 NAMECALL                         R38 R4 K67 ["getNextOrder"]
      249 CALL                             R38 1 1
      250 SETTABLEKS                       R38 R37 K8 ["LayoutOrder"]
      252 GETUPVAL                         R39 3
      253 JUMPIFNOT                        R39 ; [+2]
      254 LOADNIL                          R38
      255 JUMP                             ; [+1]
      256 MOVE                             R38 R27
      257 SETTABLEKS                       R38 R37 K65 ["ShowPriceChangeWarning"]
      259 CALL                             R35 2 1
      260 SETTABLEKS                       R35 R34 K58 ["RobuxFeeBase"]
      262 SETTABLEKS                       R34 R33 K55 ["Children"]
      264 SETLIST                          R31 R32 2 [1]
      266 GETUPVAL                         R32 5
      267 GETTABLEKS                       R32 R32 K60 ["createElement"]
      269 GETUPVAL                         R34 2
      270 JUMPIFNOT                        R34 ; [+2]
      271 GETUPVAL                         R33 7
      272 JUMP                             ; [+1]
      273 GETUPVAL                         R33 8
      274 GETUPVAL                         R35 2
      275 JUMPIFNOT                        R35 ; [+20]
      276 DUPTABLE                         R34 K71 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      277 GETIMPORT                        R35 K74 [Enum.AutomaticSize.XY]
      279 SETTABLEKS                       R35 R34 K68 ["AutomaticSize"]
      281 GETIMPORT                        R35 K77 [Enum.FillDirection.Vertical]
      283 SETTABLEKS                       R35 R34 K69 ["Layout"]
      285 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      287 GETUPVAL                         R36 2
      288 JUMPIFNOT                        R36 ; [+3]
      289 GETTABLEKS                       R35 R3 K78 ["titleSpacing"]
      291 JUMP                             ; [+1]
      292 LOADNIL                          R35
      293 SETTABLEKS                       R35 R34 K70 ["Spacing"]
      295 JUMP                             ; [+19]
      296 DUPTABLE                         R34 K83 [{["axis"], ["minimumSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      297 GETUPVAL                         R35 8
      298 GETTABLEKS                       R35 R35 K84 ["Axis"]
      300 GETTABLEKS                       R35 R35 K76 ["Vertical"]
      302 SETTABLEKS                       R35 R34 K79 ["axis"]
      304 GETIMPORT                        R35 K86 [UDim2.new]
      306 LOADN                            R36 1
      307 LOADN                            R37 0
      308 LOADN                            R38 0
      309 LOADN                            R39 0
      310 CALL                             R35 4 1
      311 SETTABLEKS                       R35 R34 K80 ["minimumSize"]
      313 SETTABLEKS                       R7 R34 K8 ["LayoutOrder"]
      315 DUPTABLE                         R35 K89 [{"ToggleAndSubscriptionsAndTotal", "PriceConfig"}]
      316 GETUPVAL                         R36 5
      317 GETTABLEKS                       R36 R36 K60 ["createElement"]
      319 GETUPVAL                         R37 9
      320 DUPTABLE                         R38 K90 [{["LayoutOrder"] = 1, ["Title"]}]
      321 SETTABLEKS                       R5 R38 K51 ["Title"]
      323 DUPTABLE                         R39 K95 [{"UIListLayout", "ToggleButton", "SubText", "Subscriptions", "TotalVIPServers"}]
      324 GETUPVAL                         R41 2
      325 JUMPIFNOT                        R41 ; [+2]
      326 LOADNIL                          R40
      327 JUMP                             ; [+14]
      328 GETUPVAL                         R40 5
      329 GETTABLEKS                       R40 R40 K60 ["createElement"]
      331 LOADK                            R41 K91 ["UIListLayout"]
      332 DUPTABLE                         R42 K97 [{"SortOrder", "FillDirection"}]
      333 GETIMPORT                        R43 K98 [Enum.SortOrder.LayoutOrder]
      335 SETTABLEKS                       R43 R42 K96 ["SortOrder"]
      337 GETIMPORT                        R43 K77 [Enum.FillDirection.Vertical]
      339 SETTABLEKS                       R43 R42 K75 ["FillDirection"]
      341 CALL                             R40 2 1
      342 SETTABLEKS                       R40 R39 K91 ["UIListLayout"]
      344 GETUPVAL                         R40 5
      345 GETTABLEKS                       R40 R40 K60 ["createElement"]
      347 GETUPVAL                         R41 10
      348 DUPTABLE                         R42 K102 [{["Disabled"], ["Selected"], ["OnClick"], ["LayoutOrder"] = 1}]
      349 NOT                              R43 R9
      350 SETTABLEKS                       R43 R42 K99 ["Disabled"]
      352 SETTABLEKS                       R12 R42 K100 ["Selected"]
      354 SETTABLEKS                       R19 R42 K101 ["OnClick"]
      356 CALL                             R40 2 1
      357 SETTABLEKS                       R40 R39 K92 ["ToggleButton"]
      359 MOVE                             R40 R29
      360 JUMPIFNOT                        R40 ; [+57]
      361 GETUPVAL                         R41 2
      362 JUMPIFNOT                        R41 ; [+17]
      363 GETUPVAL                         R40 5
      364 GETTABLEKS                       R40 R40 K60 ["createElement"]
      366 GETUPVAL                         R41 11
      367 DUPTABLE                         R42 K109 [{["AutomaticSize"], ["Style"] = "Label", ["Text"], ["LayoutOrder"] = 2, ["TextWrapped"] = True, ["TextXAlignment"]}]
      368 GETIMPORT                        R43 K74 [Enum.AutomaticSize.XY]
      370 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      372 SETTABLEKS                       R25 R42 K105 ["Text"]
      374 GETIMPORT                        R43 K111 [Enum.TextXAlignment.Left]
      376 SETTABLEKS                       R43 R42 K108 ["TextXAlignment"]
      378 CALL                             R40 2 1
      379 JUMP                             ; [+38]
      380 GETUPVAL                         R40 5
      381 GETTABLEKS                       R40 R40 K60 ["createElement"]
      383 LOADK                            R41 K112 ["TextLabel"]
      384 GETUPVAL                         R42 12
      385 GETTABLEKS                       R42 R42 K113 ["Dictionary"]
      387 GETTABLEKS                       R42 R42 K114 ["join"]
      389 MOVE                             R43 R30
      390 DUPTABLE                         R44 K117 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextYAlignment"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      391 GETIMPORT                        R45 K86 [UDim2.new]
      393 LOADN                            R46 0
      394 GETTABLEKS                       R48 R28 K118 ["X"]
      396 FASTCALL1                        MATH_CEIL R48 ; [+2]
      397 GETIMPORT                        R47 K121 [math.ceil]
      399 CALL                             R47 1 1
      400 LOADN                            R48 0
      401 GETTABLEKS                       R49 R28 K122 ["Y"]
      403 CALL                             R45 4 1
      404 SETTABLEKS                       R45 R44 K115 ["Size"]
      406 SETTABLEKS                       R25 R44 K105 ["Text"]
      408 GETIMPORT                        R45 K124 [Enum.TextYAlignment.Center]
      410 SETTABLEKS                       R45 R44 K116 ["TextYAlignment"]
      412 GETIMPORT                        R45 K111 [Enum.TextXAlignment.Left]
      414 SETTABLEKS                       R45 R44 K108 ["TextXAlignment"]
      416 CALL                             R42 2 -1
      417 CALL                             R40 -1 1
      418 SETTABLEKS                       R40 R39 K62 ["SubText"]
      420 MOVE                             R40 R12
      421 JUMPIFNOT                        R40 ; [+79]
      422 GETUPVAL                         R41 2
      423 JUMPIFNOT                        R41 ; [+17]
      424 GETUPVAL                         R40 5
      425 GETTABLEKS                       R40 R40 K60 ["createElement"]
      427 GETUPVAL                         R41 11
      428 DUPTABLE                         R42 K125 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"] = "Label", ["Text"], ["TextXAlignment"]}]
      429 GETIMPORT                        R43 K74 [Enum.AutomaticSize.XY]
      431 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      433 SETTABLEKS                       R21 R42 K105 ["Text"]
      435 GETIMPORT                        R43 K111 [Enum.TextXAlignment.Left]
      437 SETTABLEKS                       R43 R42 K108 ["TextXAlignment"]
      439 CALL                             R40 2 1
      440 JUMP                             ; [+60]
      441 GETUPVAL                         R40 5
      442 GETTABLEKS                       R40 R40 K60 ["createElement"]
      444 LOADK                            R41 K112 ["TextLabel"]
      445 DUPTABLE                         R42 K128 [{["Font"], ["TextSize"], ["TextColor3"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextTransparency"], ["LayoutOrder"] = 2}]
      446 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      448 GETTABLEKS                       R43 R43 K129 ["Normal"]
      450 GETTABLEKS                       R43 R43 K42 ["Font"]
      452 SETTABLEKS                       R43 R42 K42 ["Font"]
      454 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      456 GETTABLEKS                       R43 R43 K129 ["Normal"]
      458 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      460 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      462 JUMPIFNOT                        R12 ; [+7]
      463 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      465 GETTABLEKS                       R43 R43 K129 ["Normal"]
      467 GETTABLEKS                       R43 R43 K126 ["TextColor3"]
      469 JUMPIF                           R43 ; [+6]
      470 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      472 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      474 GETTABLEKS                       R43 R43 K126 ["TextColor3"]
      476 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      478 SETTABLEKS                       R21 R42 K105 ["Text"]
      480 GETIMPORT                        R43 K86 [UDim2.new]
      482 LOADN                            R44 1
      483 LOADN                            R45 0
      484 LOADN                            R46 0
      485 GETTABLEKS                       R47 R3 K130 ["rowHeight"]
      487 CALL                             R43 4 1
      488 SETTABLEKS                       R43 R42 K115 ["Size"]
      490 GETIMPORT                        R43 K111 [Enum.TextXAlignment.Left]
      492 SETTABLEKS                       R43 R42 K108 ["TextXAlignment"]
      494 GETIMPORT                        R43 K124 [Enum.TextYAlignment.Center]
      496 SETTABLEKS                       R43 R42 K116 ["TextYAlignment"]
      498 SETTABLEKS                       R23 R42 K127 ["TextTransparency"]
      500 CALL                             R40 2 1
      501 SETTABLEKS                       R40 R39 K93 ["Subscriptions"]
      503 MOVE                             R40 R12
      504 JUMPIFNOT                        R40 ; [+79]
      505 GETUPVAL                         R41 2
      506 JUMPIFNOT                        R41 ; [+17]
      507 GETUPVAL                         R40 5
      508 GETTABLEKS                       R40 R40 K60 ["createElement"]
      510 GETUPVAL                         R41 11
      511 DUPTABLE                         R42 K132 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Style"] = "Label", ["Text"], ["TextXAlignment"]}]
      512 GETIMPORT                        R43 K74 [Enum.AutomaticSize.XY]
      514 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      516 SETTABLEKS                       R22 R42 K105 ["Text"]
      518 GETIMPORT                        R43 K111 [Enum.TextXAlignment.Left]
      520 SETTABLEKS                       R43 R42 K108 ["TextXAlignment"]
      522 CALL                             R40 2 1
      523 JUMP                             ; [+60]
      524 GETUPVAL                         R40 5
      525 GETTABLEKS                       R40 R40 K60 ["createElement"]
      527 LOADK                            R41 K112 ["TextLabel"]
      528 DUPTABLE                         R42 K133 [{["Font"], ["TextSize"], ["TextColor3"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextTransparency"], ["LayoutOrder"] = 3}]
      529 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      531 GETTABLEKS                       R43 R43 K129 ["Normal"]
      533 GETTABLEKS                       R43 R43 K42 ["Font"]
      535 SETTABLEKS                       R43 R42 K42 ["Font"]
      537 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      539 GETTABLEKS                       R43 R43 K129 ["Normal"]
      541 GETTABLEKS                       R43 R43 K41 ["TextSize"]
      543 SETTABLEKS                       R43 R42 K41 ["TextSize"]
      545 JUMPIFNOT                        R12 ; [+7]
      546 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      548 GETTABLEKS                       R43 R43 K129 ["Normal"]
      550 GETTABLEKS                       R43 R43 K126 ["TextColor3"]
      552 JUMPIF                           R43 ; [+6]
      553 GETTABLEKS                       R43 R3 K39 ["fontStyle"]
      555 GETTABLEKS                       R43 R43 K40 ["Subtext"]
      557 GETTABLEKS                       R43 R43 K126 ["TextColor3"]
      559 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      561 SETTABLEKS                       R22 R42 K105 ["Text"]
      563 GETIMPORT                        R43 K86 [UDim2.new]
      565 LOADN                            R44 1
      566 LOADN                            R45 0
      567 LOADN                            R46 0
      568 GETTABLEKS                       R47 R3 K130 ["rowHeight"]
      570 CALL                             R43 4 1
      571 SETTABLEKS                       R43 R42 K115 ["Size"]
      573 GETIMPORT                        R43 K111 [Enum.TextXAlignment.Left]
      575 SETTABLEKS                       R43 R42 K108 ["TextXAlignment"]
      577 GETIMPORT                        R43 K124 [Enum.TextYAlignment.Center]
      579 SETTABLEKS                       R43 R42 K116 ["TextYAlignment"]
      581 SETTABLEKS                       R23 R42 K127 ["TextTransparency"]
      583 CALL                             R40 2 1
      584 SETTABLEKS                       R40 R39 K94 ["TotalVIPServers"]
      586 CALL                             R36 3 1
      587 SETTABLEKS                       R36 R35 K87 ["ToggleAndSubscriptionsAndTotal"]
      589 MOVE                             R36 R12
      590 JUMPIFNOT                        R36 ; [+27]
      591 GETUPVAL                         R36 5
      592 GETTABLEKS                       R36 R36 K60 ["createElement"]
      594 GETUPVAL                         R37 13
      595 DUPTABLE                         R38 K136 [{["Title"], ["FillDirection"], ["Buttons"], ["Enabled"], ["Selected"], ["SelectionChanged"], ["LayoutOrder"] = 2}]
      596 SETTABLEKS                       R6 R38 K51 ["Title"]
      598 GETUPVAL                         R40 2
      599 JUMPIFNOT                        R40 ; [+3]
      600 GETIMPORT                        R39 K138 [Enum.FillDirection.Horizontal]
      602 JUMP                             ; [+1]
      603 LOADNIL                          R39
      604 SETTABLEKS                       R39 R38 K75 ["FillDirection"]
      606 SETTABLEKS                       R31 R38 K134 ["Buttons"]
      608 SETTABLEKS                       R12 R38 K10 ["Enabled"]
      610 SETTABLEKS                       R18 R38 K100 ["Selected"]
      612 NEWCLOSURE                       R39 P0
      613 CAPTURE                          VAL R20
      614 CAPTURE                          VAL R0
      615 SETTABLEKS                       R39 R38 K135 ["SelectionChanged"]
      617 CALL                             R36 2 1
      618 SETTABLEKS                       R36 R35 K88 ["PriceConfig"]
      620 CALL                             R32 3 -1
      621 RETURN                           R32 -1

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
