PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["FirstSelectedId"]
        5 JUMPIFNOT                        R2 ; [+27]
        6 JUMPIFEQKS                       R2 K2 [""] ; [+26]
        8 GETIMPORT                        R3 K4 [ipairs]
       10 GETUPVAL                         R4 0
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 JUMPIFNOT                        R7 ; [+6]
       14 GETTABLEKS                       R8 R7 K5 ["LocalizationId"]
       16 JUMPIFNOTEQ                      R8 R2 ; [+3]
       18 MOVE                             R1 R6
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R3 2 [inext] ; [-8]
       22 LOADK                            R6 K6 ["There are no pages in PageManifest with LocalizationId \""]
       23 MOVE                             R7 R2
       24 LOADK                            R8 K7 ["\""]
       25 CONCAT                           R5 R6 R8
       26 FASTCALL2                        ASSERT R1 R5 ; [+4]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R3 K9 [assert]
       31 CALL                             R3 2 0
       32 JUMP                             ; [+19]
       33 LOADNIL                          R3
       34 GETIMPORT                        R4 K4 [ipairs]
       36 GETUPVAL                         R5 0
       37 CALL                             R4 1 3
       38 FORGPREP_INEXT                   R4
       39 JUMPIFNOT                        R8 ; [+2]
       40 MOVE                             R3 R7
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R4 2 [inext] ; [-4]
       44 FASTCALL2K                       ASSERT R3 K10 ; [+5]
       46 MOVE                             R5 R3
       47 LOADK                            R6 K10 ["There are no valid pages in PageManifest"]
       48 GETIMPORT                        R4 K9 [assert]
       50 CALL                             R4 2 0
       51 MOVE                             R1 R3
       52 DUPTABLE                         R3 K15 [{["Selected"], ["PageContentOffset"] = 0, ["BannerHeight"] = 0}]
       53 SETTABLEKS                       R1 R3 K11 ["Selected"]
       55 SETTABLEKS                       R3 R0 K16 ["state"]
       57 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["state"]
        3 GETTABLEKS                       R4 R4 K1 ["Selected"]
        5 GETTABLE                         R2 R3 R4
        6 GETTABLEKS                       R2 R2 K2 ["LocalizationId"]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLEKS                       R3 R3 K2 ["LocalizationId"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["onTabChangeEvent"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 DUPTABLE                         R6 K4 [{"Selected"}]
       19 SETTABLEKS                       R1 R6 K1 ["Selected"]
       21 NAMECALL                         R4 R0 K5 ["setState"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 LOADB                            R3 0
        3 GETIMPORT                        R4 K3 [Enum.StudioCloseMode.None]
        5 NAMECALL                         R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
        7 CALL                             R0 4 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K5 ["props"]
       11 GETTABLEKS                       R0 R0 K6 ["OnClose"]
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"BannerHeight"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["BannerHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["pageSelected"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
        8 SUB                              R2 R3 R4
        9 GETUPVAL                         R3 0
       10 DUPTABLE                         R5 K3 [{"PageContentOffset"}]
       11 GETTABLEKS                       R6 R2 K4 ["X"]
       13 SETTABLEKS                       R6 R5 K2 ["PageContentOffset"]
       15 NAMECALL                         R3 R3 K5 ["setState"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnClose"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["Selected"]
        6 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R1 K5 ["GameId"]
       12 JUMPIFNOTEQKN                    R6 K6 [0] ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 GETTABLEKS                       R6 R1 K7 ["PageLoadStates"]
       18 NEWTABLE                         R7 0 0
       20 NEWTABLE                         R8 0 0
       22 JUMPIFNOT                        R5 ; [+52]
       23 GETIMPORT                        R9 K9 [ipairs]
       25 GETUPVAL                         R10 0
       26 CALL                             R9 1 3
       27 FORGPREP_INEXT                   R9
       28 JUMPIFNOT                        R13 ; [+44]
       29 GETTABLEKS                       R15 R13 K10 ["LocalizationId"]
       31 GETTABLE                         R14 R6 R15
       32 GETTABLEKS                       R15 R13 K10 ["LocalizationId"]
       34 SETTABLE                         R15 R8 R12
       35 FASTCALL1                        TOSTRING R13 ; [+3]
       36 MOVE                             R16 R13
       37 GETIMPORT                        R15 K12 [tostring]
       39 CALL                             R15 1 1
       40 JUMPIFEQ                         R12 R2 ; [+4]
       42 LOADB                            R16 0
       43 JUMPIFEQKNIL                     R14 ; [+28]
       45 GETUPVAL                         R16 1
       46 GETTABLEKS                       R16 R16 K13 ["createElement"]
       48 LOADK                            R17 K14 ["Frame"]
       49 DUPTABLE                         R18 K19 [{["BackgroundTransparency"] = 1, ["Size"], ["Visible"]}]
       50 GETIMPORT                        R19 K22 [UDim2.fromScale]
       52 LOADN                            R20 1
       53 LOADN                            R21 1
       54 CALL                             R19 2 1
       55 SETTABLEKS                       R19 R18 K17 ["Size"]
       57 JUMPIFEQ                         R12 R2 ; [+2]
       59 LOADB                            R19 0 +1
       60 LOADB                            R19 1
       61 SETTABLEKS                       R19 R18 K18 ["Visible"]
       63 DUPTABLE                         R19 K24 [{"PageContents"}]
       64 GETUPVAL                         R20 1
       65 GETTABLEKS                       R20 R20 K13 ["createElement"]
       67 MOVE                             R21 R13
       68 CALL                             R20 1 1
       69 SETTABLEKS                       R20 R19 K23 ["PageContents"]
       71 CALL                             R16 3 1
       72 SETTABLE                         R16 R7 R15
       73 FORGLOOP                         R9 2 [inext] ; [-46]
       75 LOADK                            R11 K25 ["General"]
       76 LOADK                            R12 K26 ["PublishText"]
       77 NAMECALL                         R9 R4 K27 ["getText"]
       79 CALL                             R9 3 1
       80 LOADK                            R12 K25 ["General"]
       81 LOADK                            R13 K28 ["ButtonPublish"]
       82 NAMECALL                         R10 R4 K27 ["getText"]
       84 CALL                             R10 3 1
       85 GETUPVAL                         R11 2
       86 JUMPIFNOT                        R11 ; [+7]
       87 LOADK                            R13 K25 ["General"]
       88 LOADK                            R14 K29 ["SaveTextExp"]
       89 NAMECALL                         R11 R4 K27 ["getText"]
       91 CALL                             R11 3 1
       92 MOVE                             R9 R11
       93 JUMP                             ; [+6]
       94 LOADK                            R13 K25 ["General"]
       95 LOADK                            R14 K30 ["SaveText"]
       96 NAMECALL                         R11 R4 K27 ["getText"]
       98 CALL                             R11 3 1
       99 MOVE                             R9 R11
      100 LOADK                            R13 K25 ["General"]
      101 LOADK                            R14 K31 ["ButtonSaveToRoblox"]
      102 NAMECALL                         R11 R4 K27 ["getText"]
      104 CALL                             R11 3 1
      105 MOVE                             R10 R11
      106 GETUPVAL                         R11 3
      107 MOVE                             R13 R10
      108 GETTABLEKS                       R14 R3 K32 ["fontStyle"]
      110 GETTABLEKS                       R14 R14 K33 ["Normal"]
      112 GETTABLEKS                       R14 R14 K34 ["TextSize"]
      114 GETTABLEKS                       R15 R3 K32 ["fontStyle"]
      116 GETTABLEKS                       R15 R15 K33 ["Normal"]
      118 GETTABLEKS                       R15 R15 K35 ["Font"]
      120 GETIMPORT                        R16 K38 [Vector2.new]
      122 LOADK                            R17 K39 [∞]
      123 LOADK                            R18 K39 [∞]
      124 CALL                             R16 2 -1
      125 NAMECALL                         R11 R11 K40 ["GetTextSize"]
      127 CALL                             R11 -1 1
      128 GETUPVAL                         R12 1
      129 GETTABLEKS                       R12 R12 K13 ["createElement"]
      131 LOADK                            R13 K14 ["Frame"]
      132 DUPTABLE                         R14 K42 [{"Size", "BackgroundColor3"}]
      133 GETIMPORT                        R15 K43 [UDim2.new]
      135 LOADN                            R16 1
      136 LOADN                            R17 0
      137 LOADN                            R18 1
      138 LOADN                            R19 0
      139 CALL                             R15 4 1
      140 SETTABLEKS                       R15 R14 K17 ["Size"]
      142 GETTABLEKS                       R15 R3 K44 ["backgroundColor"]
      144 SETTABLEKS                       R15 R14 K41 ["BackgroundColor3"]
      146 JUMPIF                           R5 ; [+122]
      147 DUPTABLE                         R15 K47 [{"UseText", "PublishButton"}]
      148 GETUPVAL                         R16 1
      149 GETTABLEKS                       R16 R16 K13 ["createElement"]
      151 GETUPVAL                         R17 4
      152 GETUPVAL                         R18 5
      153 GETTABLEKS                       R18 R18 K48 ["Dictionary"]
      155 GETTABLEKS                       R18 R18 K49 ["join"]
      157 GETTABLEKS                       R19 R3 K32 ["fontStyle"]
      159 GETTABLEKS                       R19 R19 K33 ["Normal"]
      161 DUPTABLE                         R20 K54 [{["Position"], ["AnchorPoint"], ["Text"], ["BackgroundTransparency"] = 1, ["width"]}]
      162 GETIMPORT                        R21 K43 [UDim2.new]
      164 LOADK                            R22 K55 [0.5]
      165 LOADN                            R23 0
      166 LOADN                            R24 0
      167 GETTABLEKS                       R25 R3 K56 ["mainView"]
      169 GETTABLEKS                       R25 R25 K57 ["publishText"]
      171 GETTABLEKS                       R25 R25 K58 ["offset"]
      173 CALL                             R21 4 1
      174 SETTABLEKS                       R21 R20 K50 ["Position"]
      176 GETIMPORT                        R21 K38 [Vector2.new]
      178 LOADK                            R22 K55 [0.5]
      179 LOADK                            R23 K55 [0.5]
      180 CALL                             R21 2 1
      181 SETTABLEKS                       R21 R20 K51 ["AnchorPoint"]
      183 SETTABLEKS                       R9 R20 K52 ["Text"]
      185 GETTABLEKS                       R21 R3 K56 ["mainView"]
      187 GETTABLEKS                       R21 R21 K57 ["publishText"]
      189 GETTABLEKS                       R21 R21 K53 ["width"]
      191 SETTABLEKS                       R21 R20 K53 ["width"]
      193 CALL                             R18 2 -1
      194 CALL                             R16 -1 1
      195 SETTABLEKS                       R16 R15 K45 ["UseText"]
      197 GETUPVAL                         R16 1
      198 GETTABLEKS                       R16 R16 K13 ["createElement"]
      200 GETUPVAL                         R17 6
      201 DUPTABLE                         R18 K62 [{["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["Position"], ["AnchorPoint"], ["OnClick"]}]
      202 SETTABLEKS                       R10 R18 K52 ["Text"]
      204 GETIMPORT                        R19 K43 [UDim2.new]
      206 LOADN                            R20 0
      207 GETTABLEKS                       R22 R11 K63 ["X"]
      209 GETTABLEKS                       R23 R3 K56 ["mainView"]
      211 GETTABLEKS                       R23 R23 K64 ["publishButton"]
      213 GETTABLEKS                       R23 R23 K65 ["paddingX"]
      215 ADD                              R21 R22 R23
      216 LOADN                            R22 0
      217 GETTABLEKS                       R24 R11 K66 ["Y"]
      219 GETTABLEKS                       R25 R3 K56 ["mainView"]
      221 GETTABLEKS                       R25 R25 K64 ["publishButton"]
      223 GETTABLEKS                       R25 R25 K67 ["paddingY"]
      225 ADD                              R23 R24 R25
      226 CALL                             R19 4 1
      227 SETTABLEKS                       R19 R18 K17 ["Size"]
      229 GETIMPORT                        R19 K43 [UDim2.new]
      231 LOADK                            R20 K55 [0.5]
      232 LOADN                            R21 0
      233 LOADN                            R22 0
      234 GETTABLEKS                       R23 R3 K56 ["mainView"]
      236 GETTABLEKS                       R23 R23 K64 ["publishButton"]
      238 GETTABLEKS                       R23 R23 K58 ["offset"]
      240 CALL                             R19 4 1
      241 SETTABLEKS                       R19 R18 K50 ["Position"]
      243 GETIMPORT                        R19 K38 [Vector2.new]
      245 LOADK                            R20 K55 [0.5]
      246 LOADK                            R21 K55 [0.5]
      247 CALL                             R19 2 1
      248 SETTABLEKS                       R19 R18 K51 ["AnchorPoint"]
      250 NEWCLOSURE                       R19 P0
      251 CAPTURE                          UPVAL U7
      252 CAPTURE                          VAL R0
      253 SETTABLEKS                       R19 R18 K61 ["OnClick"]
      255 NEWTABLE                         R19 0 1
      257 GETUPVAL                         R20 1
      258 GETTABLEKS                       R20 R20 K13 ["createElement"]
      260 GETUPVAL                         R21 8
      261 DUPTABLE                         R22 K70 [{["Cursor"] = "PointingHand"}]
      262 CALL                             R20 2 -1
      263 SETLIST                          R19 R20 -1 [1]
      265 CALL                             R16 3 1
      266 SETTABLEKS                       R16 R15 K46 ["PublishButton"]
      268 JUMPIF                           R15 ; [+275]
      269 DUPTABLE                         R15 K76 [{"Padding", "Layout", "PermissionsBanner", "CenterContent", "FooterContent"}]
      270 GETUPVAL                         R17 9
      271 JUMPIFNOT                        R17 ; [+2]
      272 LOADNIL                          R16
      273 JUMP                             ; [+13]
      274 GETUPVAL                         R16 1
      275 GETTABLEKS                       R16 R16 K13 ["createElement"]
      277 LOADK                            R17 K77 ["UIPadding"]
      278 DUPTABLE                         R18 K79 [{"PaddingTop"}]
      279 GETIMPORT                        R19 K81 [UDim.new]
      281 LOADN                            R20 0
      282 LOADN                            R21 5
      283 CALL                             R19 2 1
      284 SETTABLEKS                       R19 R18 K78 ["PaddingTop"]
      286 CALL                             R16 2 1
      287 SETTABLEKS                       R16 R15 K71 ["Padding"]
      289 GETUPVAL                         R16 1
      290 GETTABLEKS                       R16 R16 K13 ["createElement"]
      292 LOADK                            R17 K82 ["UIListLayout"]
      293 DUPTABLE                         R18 K85 [{"FillDirection", "SortOrder"}]
      294 GETIMPORT                        R19 K88 [Enum.FillDirection.Vertical]
      296 SETTABLEKS                       R19 R18 K83 ["FillDirection"]
      298 GETIMPORT                        R19 K90 [Enum.SortOrder.LayoutOrder]
      300 SETTABLEKS                       R19 R18 K84 ["SortOrder"]
      302 CALL                             R16 2 1
      303 SETTABLEKS                       R16 R15 K72 ["Layout"]
      305 GETUPVAL                         R17 10
      306 JUMPIFNOT                        R17 ; [+2]
      307 LOADNIL                          R16
      308 JUMP                             ; [+54]
      309 GETUPVAL                         R16 1
      310 GETTABLEKS                       R16 R16 K13 ["createElement"]
      312 LOADK                            R17 K14 ["Frame"]
      313 NEWTABLE                         R18 8 0
      315 GETIMPORT                        R19 K43 [UDim2.new]
      317 LOADN                            R20 1
      318 LOADN                            R21 0
      319 LOADN                            R22 0
      320 LOADN                            R23 0
      321 CALL                             R19 4 1
      322 SETTABLEKS                       R19 R18 K17 ["Size"]
      324 GETIMPORT                        R19 K92 [Enum.AutomaticSize.Y]
      326 SETTABLEKS                       R19 R18 K91 ["AutomaticSize"]
      328 LOADN                            R19 1
      329 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      331 LOADN                            R19 0
      332 SETTABLEKS                       R19 R18 K89 ["LayoutOrder"]
      334 GETUPVAL                         R19 1
      335 GETTABLEKS                       R19 R19 K93 ["Change"]
      337 GETTABLEKS                       R19 R19 K94 ["AbsoluteSize"]
      339 NEWCLOSURE                       R20 P1
      340 CAPTURE                          VAL R0
      341 SETTABLE                         R20 R18 R19
      342 DUPTABLE                         R19 K96 [{"Banner"}]
      343 GETUPVAL                         R20 1
      344 GETTABLEKS                       R20 R20 K13 ["createElement"]
      346 GETUPVAL                         R21 11
      347 DUPTABLE                         R22 K98 [{"GameId", "BannerText"}]
      348 GETTABLEKS                       R23 R1 K5 ["GameId"]
      350 SETTABLEKS                       R23 R22 K5 ["GameId"]
      352 LOADK                            R25 K25 ["General"]
      353 LOADK                            R26 K99 ["PermissionsBannerText"]
      354 NAMECALL                         R23 R4 K27 ["getText"]
      356 CALL                             R23 3 1
      357 SETTABLEKS                       R23 R22 K97 ["BannerText"]
      359 CALL                             R20 2 1
      360 SETTABLEKS                       R20 R19 K95 ["Banner"]
      362 CALL                             R16 3 1
      363 SETTABLEKS                       R16 R15 K73 ["PermissionsBanner"]
      365 GETUPVAL                         R16 1
      366 GETTABLEKS                       R16 R16 K13 ["createElement"]
      368 GETUPVAL                         R17 12
      369 DUPTABLE                         R18 K100 [{["LayoutOrder"] = 1, ["Size"]}]
      370 GETIMPORT                        R19 K43 [UDim2.new]
      372 LOADN                            R20 1
      373 LOADN                            R21 0
      374 LOADN                            R22 1
      375 GETTABLEKS                       R25 R3 K101 ["footer"]
      377 GETTABLEKS                       R25 R25 K102 ["height"]
      379 GETTABLEKS                       R26 R0 K1 ["state"]
      381 GETTABLEKS                       R26 R26 K103 ["BannerHeight"]
      383 ADD                              R24 R25 R26
      384 MINUS                            R23 R24
      385 CALL                             R19 4 1
      386 SETTABLEKS                       R19 R18 K17 ["Size"]
      388 DUPTABLE                         R19 K107 [{"Layout", "MenuBar", "Separator", "PageContent"}]
      389 GETUPVAL                         R20 1
      390 GETTABLEKS                       R20 R20 K13 ["createElement"]
      392 LOADK                            R21 K82 ["UIListLayout"]
      393 DUPTABLE                         R22 K85 [{"FillDirection", "SortOrder"}]
      394 GETIMPORT                        R23 K109 [Enum.FillDirection.Horizontal]
      396 SETTABLEKS                       R23 R22 K83 ["FillDirection"]
      398 GETIMPORT                        R23 K90 [Enum.SortOrder.LayoutOrder]
      400 SETTABLEKS                       R23 R22 K84 ["SortOrder"]
      402 CALL                             R20 2 1
      403 SETTABLEKS                       R20 R19 K72 ["Layout"]
      405 GETUPVAL                         R20 1
      406 GETTABLEKS                       R20 R20 K13 ["createElement"]
      408 GETUPVAL                         R21 13
      409 DUPTABLE                         R22 K112 [{["LayoutOrder"] = 1, ["Entries"], ["Selected"], ["SelectionChanged"]}]
      410 SETTABLEKS                       R8 R22 K110 ["Entries"]
      412 SETTABLEKS                       R2 R22 K2 ["Selected"]
      414 NEWCLOSURE                       R23 P2
      415 CAPTURE                          VAL R0
      416 SETTABLEKS                       R23 R22 K111 ["SelectionChanged"]
      418 CALL                             R20 2 1
      419 SETTABLEKS                       R20 R19 K104 ["MenuBar"]
      421 GETUPVAL                         R20 1
      422 GETTABLEKS                       R20 R20 K13 ["createElement"]
      424 GETUPVAL                         R21 14
      425 DUPTABLE                         R22 K114 [{["LayoutOrder"] = 2, ["Size"], ["Position"]}]
      426 GETIMPORT                        R23 K43 [UDim2.new]
      428 LOADN                            R24 0
      429 LOADN                            R25 3
      430 LOADN                            R26 1
      431 LOADN                            R27 0
      432 CALL                             R23 4 1
      433 SETTABLEKS                       R23 R22 K17 ["Size"]
      435 GETIMPORT                        R23 K43 [UDim2.new]
      437 LOADN                            R24 0
      438 GETUPVAL                         R25 15
      439 GETTABLEKS                       R25 R25 K115 ["MENU_BAR_WIDTH"]
      441 LOADN                            R26 0
      442 LOADN                            R27 0
      443 CALL                             R23 4 1
      444 SETTABLEKS                       R23 R22 K50 ["Position"]
      446 CALL                             R20 2 1
      447 SETTABLEKS                       R20 R19 K105 ["Separator"]
      449 GETUPVAL                         R20 1
      450 GETTABLEKS                       R20 R20 K13 ["createElement"]
      452 LOADK                            R21 K14 ["Frame"]
      453 NEWTABLE                         R22 4 0
      455 LOADN                            R23 3
      456 SETTABLEKS                       R23 R22 K89 ["LayoutOrder"]
      458 GETIMPORT                        R23 K43 [UDim2.new]
      460 LOADN                            R24 1
      461 GETTABLEKS                       R26 R0 K1 ["state"]
      463 GETTABLEKS                       R26 R26 K116 ["PageContentOffset"]
      465 MINUS                            R25 R26
      466 LOADN                            R26 1
      467 LOADN                            R27 0
      468 CALL                             R23 4 1
      469 SETTABLEKS                       R23 R22 K17 ["Size"]
      471 LOADN                            R23 1
      472 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
      474 GETUPVAL                         R23 1
      475 GETTABLEKS                       R23 R23 K93 ["Change"]
      477 GETTABLEKS                       R23 R23 K117 ["AbsolutePosition"]
      479 NEWCLOSURE                       R24 P3
      480 CAPTURE                          VAL R0
      481 SETTABLE                         R24 R22 R23
      482 GETUPVAL                         R23 5
      483 GETTABLEKS                       R23 R23 K48 ["Dictionary"]
      485 GETTABLEKS                       R23 R23 K49 ["join"]
      487 MOVE                             R24 R7
      488 DUPTABLE                         R25 K118 [{"UIPadding"}]
      489 GETUPVAL                         R26 1
      490 GETTABLEKS                       R26 R26 K13 ["createElement"]
      492 LOADK                            R27 K77 ["UIPadding"]
      493 DUPTABLE                         R28 K79 [{"PaddingTop"}]
      494 GETIMPORT                        R29 K81 [UDim.new]
      496 LOADN                            R30 0
      497 LOADN                            R31 12
      498 CALL                             R29 2 1
      499 SETTABLEKS                       R29 R28 K78 ["PaddingTop"]
      501 CALL                             R26 2 1
      502 SETTABLEKS                       R26 R25 K77 ["UIPadding"]
      504 CALL                             R23 2 -1
      505 CALL                             R20 -1 1
      506 SETTABLEKS                       R20 R19 K106 ["PageContent"]
      508 CALL                             R16 3 1
      509 SETTABLEKS                       R16 R15 K74 ["CenterContent"]
      511 GETUPVAL                         R16 1
      512 GETTABLEKS                       R16 R16 K13 ["createElement"]
      514 GETUPVAL                         R17 12
      515 DUPTABLE                         R18 K119 [{["Size"], ["LayoutOrder"] = 2}]
      516 GETIMPORT                        R19 K43 [UDim2.new]
      518 LOADN                            R20 1
      519 LOADN                            R21 0
      520 LOADN                            R22 0
      521 GETTABLEKS                       R23 R3 K101 ["footer"]
      523 GETTABLEKS                       R23 R23 K102 ["height"]
      525 CALL                             R19 4 1
      526 SETTABLEKS                       R19 R18 K17 ["Size"]
      528 DUPTABLE                         R19 K121 [{"Footer"}]
      529 GETUPVAL                         R20 1
      530 GETTABLEKS                       R20 R20 K13 ["createElement"]
      532 GETUPVAL                         R21 16
      533 DUPTABLE                         R22 K123 [{"OnClose"}]
      534 NEWCLOSURE                       R23 P4
      535 CAPTURE                          VAL R0
      536 SETTABLEKS                       R23 R22 K122 ["OnClose"]
      538 CALL                             R20 2 1
      539 SETTABLEKS                       R20 R19 K120 ["Footer"]
      541 CALL                             R16 3 1
      542 SETTABLEKS                       R16 R15 K75 ["FooterContent"]
      544 CALL                             R12 3 -1
      545 RETURN                           R12 -1

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"GameId", "PageLoadStates"}]
        1 GETTABLEKS                       R3 R0 K3 ["Metadata"]
        3 GETTABLEKS                       R3 R3 K4 ["gameId"]
        5 SETTABLEKS                       R3 R2 K0 ["GameId"]
        7 GETTABLEKS                       R3 R0 K5 ["PageLoadState"]
        9 SETTABLEKS                       R3 R2 K1 ["PageLoadStates"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R3 R0 K5 ["Src"]
       23 GETTABLEKS                       R3 R3 K6 ["Flags"]
       25 GETTABLEKS                       R3 R3 K8 ["getFFlagGameSettingsGameToExperience"]
       27 CALL                             R2 1 1
       28 CALL                             R2 0 1
       29 GETIMPORT                        R3 K10 [game]
       31 LOADK                            R5 K11 ["RemoveGameSettingsPermissionsBanner"]
       32 NAMECALL                         R3 R3 K12 ["GetFastFlag"]
       34 CALL                             R3 2 1
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R5 R0 K13 ["Packages"]
       39 GETTABLEKS                       R5 R5 K14 ["FitFrame"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R0 K13 ["Packages"]
       46 GETTABLEKS                       R6 R6 K15 ["Roact"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K13 ["Packages"]
       53 GETTABLEKS                       R7 R7 K16 ["RoactRodux"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K13 ["Packages"]
       60 GETTABLEKS                       R8 R8 K17 ["Cryo"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K5 ["Src"]
       67 GETTABLEKS                       R9 R9 K18 ["Util"]
       69 GETTABLEKS                       R9 R9 K19 ["DEPRECATED_Constants"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K13 ["Packages"]
       76 GETTABLEKS                       R10 R10 K20 ["Framework"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R9 K21 ["ContextServices"]
       81 GETTABLEKS                       R11 R10 K22 ["withContext"]
       83 GETTABLEKS                       R12 R9 K23 ["UI"]
       85 GETTABLEKS                       R13 R12 K24 ["Button"]
       87 GETTABLEKS                       R14 R12 K25 ["Container"]
       89 GETTABLEKS                       R15 R12 K26 ["HoverArea"]
       91 GETTABLEKS                       R16 R4 K27 ["FitTextLabel"]
       93 GETIMPORT                        R17 K4 [require]
       95 GETTABLEKS                       R18 R0 K5 ["Src"]
       97 GETTABLEKS                       R18 R18 K28 ["Components"]
       99 GETTABLEKS                       R18 R18 K29 ["MenuBar"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K4 [require]
      104 GETTABLEKS                       R19 R0 K5 ["Src"]
      106 GETTABLEKS                       R19 R19 K28 ["Components"]
      108 GETTABLEKS                       R19 R19 K30 ["Separator"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K4 [require]
      113 GETTABLEKS                       R20 R0 K5 ["Src"]
      115 GETTABLEKS                       R20 R20 K28 ["Components"]
      117 GETTABLEKS                       R20 R20 K31 ["Footer"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K4 [require]
      122 GETTABLEKS                       R21 R0 K5 ["Src"]
      124 GETTABLEKS                       R21 R21 K28 ["Components"]
      126 GETTABLEKS                       R21 R21 K32 ["PermissionsBanner"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K4 [require]
      131 GETTABLEKS                       R22 R0 K33 ["Pages"]
      133 GETTABLEKS                       R22 R22 K34 ["PageManifest"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K4 [require]
      138 GETTABLEKS                       R23 R0 K5 ["Src"]
      140 GETTABLEKS                       R23 R23 K18 ["Util"]
      142 GETTABLEKS                       R23 R23 K35 ["Analytics"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K10 [game]
      147 LOADK                            R25 K36 ["TextService"]
      148 NAMECALL                         R23 R23 K37 ["GetService"]
      150 CALL                             R23 2 1
      151 GETTABLEKS                       R24 R5 K38 ["PureComponent"]
      153 LOADK                            R26 K39 ["MainView"]
      154 NAMECALL                         R24 R24 K40 ["extend"]
      156 CALL                             R24 2 1
      157 GETIMPORT                        R25 K10 [game]
      159 LOADK                            R27 K41 ["StudioPublishService"]
      160 NAMECALL                         R25 R25 K37 ["GetService"]
      162 CALL                             R25 2 1
      163 DUPCLOSURE                       R26 K42 [PROTO_0]
      164 CAPTURE                          VAL R21
      165 SETTABLEKS                       R26 R24 K43 ["init"]
      167 DUPCLOSURE                       R26 K44 [PROTO_1]
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R22
      170 SETTABLEKS                       R26 R24 K45 ["pageSelected"]
      172 DUPCLOSURE                       R26 K46 [PROTO_7]
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R19
      190 SETTABLEKS                       R26 R24 K47 ["render"]
      192 MOVE                             R26 R11
      193 DUPTABLE                         R27 K50 [{"Localization", "Stylizer"}]
      194 GETTABLEKS                       R28 R10 K48 ["Localization"]
      196 SETTABLEKS                       R28 R27 K48 ["Localization"]
      198 GETTABLEKS                       R28 R10 K49 ["Stylizer"]
      200 SETTABLEKS                       R28 R27 K49 ["Stylizer"]
      202 CALL                             R26 1 1
      203 MOVE                             R27 R24
      204 CALL                             R26 1 1
      205 MOVE                             R24 R26
      206 GETTABLEKS                       R26 R6 K51 ["connect"]
      208 DUPCLOSURE                       R27 K52 [PROTO_8]
      209 CALL                             R26 1 1
      210 MOVE                             R27 R24
      211 CALL                             R26 1 1
      212 MOVE                             R24 R26
      213 RETURN                           R24 1
