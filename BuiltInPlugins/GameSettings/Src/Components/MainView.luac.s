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
       52 DUPTABLE                         R3 K14 [{"Selected", "PageContentOffset", "BannerHeight"}]
       53 SETTABLEKS                       R1 R3 K11 ["Selected"]
       55 LOADN                            R4 0
       56 SETTABLEKS                       R4 R3 K12 ["PageContentOffset"]
       58 LOADN                            R4 0
       59 SETTABLEKS                       R4 R3 K13 ["BannerHeight"]
       61 SETTABLEKS                       R3 R0 K15 ["state"]
       63 RETURN                           R0 0

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
       22 JUMPIFNOT                        R5 ; [+55]
       23 GETIMPORT                        R9 K9 [ipairs]
       25 GETUPVAL                         R10 0
       26 CALL                             R9 1 3
       27 FORGPREP_INEXT                   R9
       28 JUMPIFNOT                        R13 ; [+47]
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
       43 JUMPIFEQKNIL                     R14 ; [+31]
       45 GETUPVAL                         R16 1
       46 GETTABLEKS                       R16 R16 K13 ["createElement"]
       48 LOADK                            R17 K14 ["Frame"]
       49 DUPTABLE                         R18 K18 [{"BackgroundTransparency", "Size", "Visible"}]
       50 LOADN                            R19 1
       51 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
       53 GETIMPORT                        R19 K21 [UDim2.fromScale]
       55 LOADN                            R20 1
       56 LOADN                            R21 1
       57 CALL                             R19 2 1
       58 SETTABLEKS                       R19 R18 K16 ["Size"]
       60 JUMPIFEQ                         R12 R2 ; [+2]
       62 LOADB                            R19 0 +1
       63 LOADB                            R19 1
       64 SETTABLEKS                       R19 R18 K17 ["Visible"]
       66 DUPTABLE                         R19 K23 [{"PageContents"}]
       67 GETUPVAL                         R20 1
       68 GETTABLEKS                       R20 R20 K13 ["createElement"]
       70 MOVE                             R21 R13
       71 CALL                             R20 1 1
       72 SETTABLEKS                       R20 R19 K22 ["PageContents"]
       74 CALL                             R16 3 1
       75 SETTABLE                         R16 R7 R15
       76 FORGLOOP                         R9 2 [inext] ; [-49]
       78 LOADK                            R11 K24 ["General"]
       79 LOADK                            R12 K25 ["PublishText"]
       80 NAMECALL                         R9 R4 K26 ["getText"]
       82 CALL                             R9 3 1
       83 LOADK                            R12 K24 ["General"]
       84 LOADK                            R13 K27 ["ButtonPublish"]
       85 NAMECALL                         R10 R4 K26 ["getText"]
       87 CALL                             R10 3 1
       88 GETUPVAL                         R11 2
       89 JUMPIFNOT                        R11 ; [+7]
       90 LOADK                            R13 K24 ["General"]
       91 LOADK                            R14 K28 ["SaveTextExp"]
       92 NAMECALL                         R11 R4 K26 ["getText"]
       94 CALL                             R11 3 1
       95 MOVE                             R9 R11
       96 JUMP                             ; [+6]
       97 LOADK                            R13 K24 ["General"]
       98 LOADK                            R14 K29 ["SaveText"]
       99 NAMECALL                         R11 R4 K26 ["getText"]
      101 CALL                             R11 3 1
      102 MOVE                             R9 R11
      103 LOADK                            R13 K24 ["General"]
      104 LOADK                            R14 K30 ["ButtonSaveToRoblox"]
      105 NAMECALL                         R11 R4 K26 ["getText"]
      107 CALL                             R11 3 1
      108 MOVE                             R10 R11
      109 GETUPVAL                         R11 3
      110 MOVE                             R13 R10
      111 GETTABLEKS                       R14 R3 K31 ["fontStyle"]
      113 GETTABLEKS                       R14 R14 K32 ["Normal"]
      115 GETTABLEKS                       R14 R14 K33 ["TextSize"]
      117 GETTABLEKS                       R15 R3 K31 ["fontStyle"]
      119 GETTABLEKS                       R15 R15 K32 ["Normal"]
      121 GETTABLEKS                       R15 R15 K34 ["Font"]
      123 GETIMPORT                        R16 K37 [Vector2.new]
      125 LOADK                            R17 K38 [∞]
      126 LOADK                            R18 K38 [∞]
      127 CALL                             R16 2 -1
      128 NAMECALL                         R11 R11 K39 ["GetTextSize"]
      130 CALL                             R11 -1 1
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K13 ["createElement"]
      134 LOADK                            R13 K14 ["Frame"]
      135 DUPTABLE                         R14 K41 [{"Size", "BackgroundColor3"}]
      136 GETIMPORT                        R15 K42 [UDim2.new]
      138 LOADN                            R16 1
      139 LOADN                            R17 0
      140 LOADN                            R18 1
      141 LOADN                            R19 0
      142 CALL                             R15 4 1
      143 SETTABLEKS                       R15 R14 K16 ["Size"]
      145 GETTABLEKS                       R15 R3 K43 ["backgroundColor"]
      147 SETTABLEKS                       R15 R14 K40 ["BackgroundColor3"]
      149 JUMPIF                           R5 ; [+131]
      150 DUPTABLE                         R15 K46 [{"UseText", "PublishButton"}]
      151 GETUPVAL                         R16 1
      152 GETTABLEKS                       R16 R16 K13 ["createElement"]
      154 GETUPVAL                         R17 4
      155 GETUPVAL                         R18 5
      156 GETTABLEKS                       R18 R18 K47 ["Dictionary"]
      158 GETTABLEKS                       R18 R18 K48 ["join"]
      160 GETTABLEKS                       R19 R3 K31 ["fontStyle"]
      162 GETTABLEKS                       R19 R19 K32 ["Normal"]
      164 DUPTABLE                         R20 K53 [{"Position", "AnchorPoint", "Text", "BackgroundTransparency", "width"}]
      165 GETIMPORT                        R21 K42 [UDim2.new]
      167 LOADK                            R22 K54 [0.5]
      168 LOADN                            R23 0
      169 LOADN                            R24 0
      170 GETTABLEKS                       R25 R3 K55 ["mainView"]
      172 GETTABLEKS                       R25 R25 K56 ["publishText"]
      174 GETTABLEKS                       R25 R25 K57 ["offset"]
      176 CALL                             R21 4 1
      177 SETTABLEKS                       R21 R20 K49 ["Position"]
      179 GETIMPORT                        R21 K37 [Vector2.new]
      181 LOADK                            R22 K54 [0.5]
      182 LOADK                            R23 K54 [0.5]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K50 ["AnchorPoint"]
      186 SETTABLEKS                       R9 R20 K51 ["Text"]
      188 LOADN                            R21 1
      189 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
      191 GETTABLEKS                       R21 R3 K55 ["mainView"]
      193 GETTABLEKS                       R21 R21 K56 ["publishText"]
      195 GETTABLEKS                       R21 R21 K52 ["width"]
      197 SETTABLEKS                       R21 R20 K52 ["width"]
      199 CALL                             R18 2 -1
      200 CALL                             R16 -1 1
      201 SETTABLEKS                       R16 R15 K44 ["UseText"]
      203 GETUPVAL                         R16 1
      204 GETTABLEKS                       R16 R16 K13 ["createElement"]
      206 GETUPVAL                         R17 6
      207 DUPTABLE                         R18 K60 [{"Style", "Text", "Size", "Position", "AnchorPoint", "OnClick"}]
      208 LOADK                            R19 K61 ["GameSettingsPrimaryButton"]
      209 SETTABLEKS                       R19 R18 K58 ["Style"]
      211 SETTABLEKS                       R10 R18 K51 ["Text"]
      213 GETIMPORT                        R19 K42 [UDim2.new]
      215 LOADN                            R20 0
      216 GETTABLEKS                       R22 R11 K62 ["X"]
      218 GETTABLEKS                       R23 R3 K55 ["mainView"]
      220 GETTABLEKS                       R23 R23 K63 ["publishButton"]
      222 GETTABLEKS                       R23 R23 K64 ["paddingX"]
      224 ADD                              R21 R22 R23
      225 LOADN                            R22 0
      226 GETTABLEKS                       R24 R11 K65 ["Y"]
      228 GETTABLEKS                       R25 R3 K55 ["mainView"]
      230 GETTABLEKS                       R25 R25 K63 ["publishButton"]
      232 GETTABLEKS                       R25 R25 K66 ["paddingY"]
      234 ADD                              R23 R24 R25
      235 CALL                             R19 4 1
      236 SETTABLEKS                       R19 R18 K16 ["Size"]
      238 GETIMPORT                        R19 K42 [UDim2.new]
      240 LOADK                            R20 K54 [0.5]
      241 LOADN                            R21 0
      242 LOADN                            R22 0
      243 GETTABLEKS                       R23 R3 K55 ["mainView"]
      245 GETTABLEKS                       R23 R23 K63 ["publishButton"]
      247 GETTABLEKS                       R23 R23 K57 ["offset"]
      249 CALL                             R19 4 1
      250 SETTABLEKS                       R19 R18 K49 ["Position"]
      252 GETIMPORT                        R19 K37 [Vector2.new]
      254 LOADK                            R20 K54 [0.5]
      255 LOADK                            R21 K54 [0.5]
      256 CALL                             R19 2 1
      257 SETTABLEKS                       R19 R18 K50 ["AnchorPoint"]
      259 NEWCLOSURE                       R19 P0
      260 CAPTURE                          UPVAL U7
      261 CAPTURE                          VAL R0
      262 SETTABLEKS                       R19 R18 K59 ["OnClick"]
      264 NEWTABLE                         R19 0 1
      266 GETUPVAL                         R20 1
      267 GETTABLEKS                       R20 R20 K13 ["createElement"]
      269 GETUPVAL                         R21 8
      270 DUPTABLE                         R22 K68 [{"Cursor"}]
      271 LOADK                            R23 K69 ["PointingHand"]
      272 SETTABLEKS                       R23 R22 K67 ["Cursor"]
      274 CALL                             R20 2 -1
      275 SETLIST                          R19 R20 -1 [1]
      277 CALL                             R16 3 1
      278 SETTABLEKS                       R16 R15 K45 ["PublishButton"]
      280 JUMPIF                           R15 ; [+295]
      281 DUPTABLE                         R15 K75 [{"Padding", "Layout", "PermissionsBanner", "CenterContent", "FooterContent"}]
      282 GETUPVAL                         R17 9
      283 JUMPIFNOT                        R17 ; [+2]
      284 LOADNIL                          R16
      285 JUMP                             ; [+13]
      286 GETUPVAL                         R16 1
      287 GETTABLEKS                       R16 R16 K13 ["createElement"]
      289 LOADK                            R17 K76 ["UIPadding"]
      290 DUPTABLE                         R18 K78 [{"PaddingTop"}]
      291 GETIMPORT                        R19 K80 [UDim.new]
      293 LOADN                            R20 0
      294 LOADN                            R21 5
      295 CALL                             R19 2 1
      296 SETTABLEKS                       R19 R18 K77 ["PaddingTop"]
      298 CALL                             R16 2 1
      299 SETTABLEKS                       R16 R15 K70 ["Padding"]
      301 GETUPVAL                         R16 1
      302 GETTABLEKS                       R16 R16 K13 ["createElement"]
      304 LOADK                            R17 K81 ["UIListLayout"]
      305 DUPTABLE                         R18 K84 [{"FillDirection", "SortOrder"}]
      306 GETIMPORT                        R19 K87 [Enum.FillDirection.Vertical]
      308 SETTABLEKS                       R19 R18 K82 ["FillDirection"]
      310 GETIMPORT                        R19 K89 [Enum.SortOrder.LayoutOrder]
      312 SETTABLEKS                       R19 R18 K83 ["SortOrder"]
      314 CALL                             R16 2 1
      315 SETTABLEKS                       R16 R15 K71 ["Layout"]
      317 GETUPVAL                         R17 10
      318 JUMPIFNOT                        R17 ; [+55]
      319 GETUPVAL                         R16 1
      320 GETTABLEKS                       R16 R16 K13 ["createElement"]
      322 LOADK                            R17 K14 ["Frame"]
      323 NEWTABLE                         R18 8 0
      325 GETIMPORT                        R19 K42 [UDim2.new]
      327 LOADN                            R20 1
      328 LOADN                            R21 0
      329 LOADN                            R22 0
      330 LOADN                            R23 0
      331 CALL                             R19 4 1
      332 SETTABLEKS                       R19 R18 K16 ["Size"]
      334 GETIMPORT                        R19 K91 [Enum.AutomaticSize.Y]
      336 SETTABLEKS                       R19 R18 K90 ["AutomaticSize"]
      338 LOADN                            R19 1
      339 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      341 LOADN                            R19 0
      342 SETTABLEKS                       R19 R18 K88 ["LayoutOrder"]
      344 GETUPVAL                         R19 1
      345 GETTABLEKS                       R19 R19 K92 ["Change"]
      347 GETTABLEKS                       R19 R19 K93 ["AbsoluteSize"]
      349 NEWCLOSURE                       R20 P1
      350 CAPTURE                          VAL R0
      351 SETTABLE                         R20 R18 R19
      352 DUPTABLE                         R19 K95 [{"Banner"}]
      353 GETUPVAL                         R20 1
      354 GETTABLEKS                       R20 R20 K13 ["createElement"]
      356 GETUPVAL                         R21 11
      357 DUPTABLE                         R22 K97 [{"GameId", "BannerText"}]
      358 GETTABLEKS                       R23 R1 K5 ["GameId"]
      360 SETTABLEKS                       R23 R22 K5 ["GameId"]
      362 LOADK                            R25 K24 ["General"]
      363 LOADK                            R26 K98 ["PermissionsBannerText"]
      364 NAMECALL                         R23 R4 K26 ["getText"]
      366 CALL                             R23 3 1
      367 SETTABLEKS                       R23 R22 K96 ["BannerText"]
      369 CALL                             R20 2 1
      370 SETTABLEKS                       R20 R19 K94 ["Banner"]
      372 CALL                             R16 3 1
      373 JUMPIF                           R16 ; [+1]
      374 LOADNIL                          R16
      375 SETTABLEKS                       R16 R15 K72 ["PermissionsBanner"]
      377 GETUPVAL                         R16 1
      378 GETTABLEKS                       R16 R16 K13 ["createElement"]
      380 GETUPVAL                         R17 12
      381 DUPTABLE                         R18 K99 [{"LayoutOrder", "Size"}]
      382 LOADN                            R19 1
      383 SETTABLEKS                       R19 R18 K88 ["LayoutOrder"]
      385 GETIMPORT                        R19 K42 [UDim2.new]
      387 LOADN                            R20 1
      388 LOADN                            R21 0
      389 LOADN                            R22 1
      390 GETTABLEKS                       R25 R3 K100 ["footer"]
      392 GETTABLEKS                       R25 R25 K101 ["height"]
      394 GETUPVAL                         R27 10
      395 JUMPIFNOT                        R27 ; [+5]
      396 GETTABLEKS                       R26 R0 K1 ["state"]
      398 GETTABLEKS                       R26 R26 K102 ["BannerHeight"]
      400 JUMP                             ; [+1]
      401 LOADN                            R26 0
      402 ADD                              R24 R25 R26
      403 MINUS                            R23 R24
      404 CALL                             R19 4 1
      405 SETTABLEKS                       R19 R18 K16 ["Size"]
      407 DUPTABLE                         R19 K106 [{"Layout", "MenuBar", "Separator", "PageContent"}]
      408 GETUPVAL                         R20 1
      409 GETTABLEKS                       R20 R20 K13 ["createElement"]
      411 LOADK                            R21 K81 ["UIListLayout"]
      412 DUPTABLE                         R22 K84 [{"FillDirection", "SortOrder"}]
      413 GETIMPORT                        R23 K108 [Enum.FillDirection.Horizontal]
      415 SETTABLEKS                       R23 R22 K82 ["FillDirection"]
      417 GETIMPORT                        R23 K89 [Enum.SortOrder.LayoutOrder]
      419 SETTABLEKS                       R23 R22 K83 ["SortOrder"]
      421 CALL                             R20 2 1
      422 SETTABLEKS                       R20 R19 K71 ["Layout"]
      424 GETUPVAL                         R20 1
      425 GETTABLEKS                       R20 R20 K13 ["createElement"]
      427 GETUPVAL                         R21 13
      428 DUPTABLE                         R22 K111 [{"LayoutOrder", "Entries", "Selected", "SelectionChanged"}]
      429 LOADN                            R23 1
      430 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      432 SETTABLEKS                       R8 R22 K109 ["Entries"]
      434 SETTABLEKS                       R2 R22 K2 ["Selected"]
      436 NEWCLOSURE                       R23 P2
      437 CAPTURE                          VAL R0
      438 SETTABLEKS                       R23 R22 K110 ["SelectionChanged"]
      440 CALL                             R20 2 1
      441 SETTABLEKS                       R20 R19 K103 ["MenuBar"]
      443 GETUPVAL                         R20 1
      444 GETTABLEKS                       R20 R20 K13 ["createElement"]
      446 GETUPVAL                         R21 14
      447 DUPTABLE                         R22 K112 [{"LayoutOrder", "Size", "Position"}]
      448 LOADN                            R23 2
      449 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      451 GETIMPORT                        R23 K42 [UDim2.new]
      453 LOADN                            R24 0
      454 LOADN                            R25 3
      455 LOADN                            R26 1
      456 LOADN                            R27 0
      457 CALL                             R23 4 1
      458 SETTABLEKS                       R23 R22 K16 ["Size"]
      460 GETIMPORT                        R23 K42 [UDim2.new]
      462 LOADN                            R24 0
      463 GETUPVAL                         R25 15
      464 GETTABLEKS                       R25 R25 K113 ["MENU_BAR_WIDTH"]
      466 LOADN                            R26 0
      467 LOADN                            R27 0
      468 CALL                             R23 4 1
      469 SETTABLEKS                       R23 R22 K49 ["Position"]
      471 CALL                             R20 2 1
      472 SETTABLEKS                       R20 R19 K104 ["Separator"]
      474 GETUPVAL                         R20 1
      475 GETTABLEKS                       R20 R20 K13 ["createElement"]
      477 LOADK                            R21 K14 ["Frame"]
      478 NEWTABLE                         R22 4 0
      480 LOADN                            R23 3
      481 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      483 GETIMPORT                        R23 K42 [UDim2.new]
      485 LOADN                            R24 1
      486 GETTABLEKS                       R26 R0 K1 ["state"]
      488 GETTABLEKS                       R26 R26 K114 ["PageContentOffset"]
      490 MINUS                            R25 R26
      491 LOADN                            R26 1
      492 LOADN                            R27 0
      493 CALL                             R23 4 1
      494 SETTABLEKS                       R23 R22 K16 ["Size"]
      496 LOADN                            R23 1
      497 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
      499 GETUPVAL                         R23 1
      500 GETTABLEKS                       R23 R23 K92 ["Change"]
      502 GETTABLEKS                       R23 R23 K115 ["AbsolutePosition"]
      504 NEWCLOSURE                       R24 P3
      505 CAPTURE                          VAL R0
      506 SETTABLE                         R24 R22 R23
      507 GETUPVAL                         R23 5
      508 GETTABLEKS                       R23 R23 K47 ["Dictionary"]
      510 GETTABLEKS                       R23 R23 K48 ["join"]
      512 MOVE                             R24 R7
      513 DUPTABLE                         R25 K116 [{"UIPadding"}]
      514 GETUPVAL                         R27 10
      515 JUMPIFNOT                        R27 ; [+14]
      516 GETUPVAL                         R26 1
      517 GETTABLEKS                       R26 R26 K13 ["createElement"]
      519 LOADK                            R27 K76 ["UIPadding"]
      520 DUPTABLE                         R28 K78 [{"PaddingTop"}]
      521 GETIMPORT                        R29 K80 [UDim.new]
      523 LOADN                            R30 0
      524 LOADN                            R31 12
      525 CALL                             R29 2 1
      526 SETTABLEKS                       R29 R28 K77 ["PaddingTop"]
      528 CALL                             R26 2 1
      529 JUMPIF                           R26 ; [+1]
      530 LOADNIL                          R26
      531 SETTABLEKS                       R26 R25 K76 ["UIPadding"]
      533 CALL                             R23 2 -1
      534 CALL                             R20 -1 1
      535 SETTABLEKS                       R20 R19 K105 ["PageContent"]
      537 CALL                             R16 3 1
      538 SETTABLEKS                       R16 R15 K73 ["CenterContent"]
      540 GETUPVAL                         R16 1
      541 GETTABLEKS                       R16 R16 K13 ["createElement"]
      543 GETUPVAL                         R17 12
      544 DUPTABLE                         R18 K117 [{"Size", "LayoutOrder"}]
      545 GETIMPORT                        R19 K42 [UDim2.new]
      547 LOADN                            R20 1
      548 LOADN                            R21 0
      549 LOADN                            R22 0
      550 GETTABLEKS                       R23 R3 K100 ["footer"]
      552 GETTABLEKS                       R23 R23 K101 ["height"]
      554 CALL                             R19 4 1
      555 SETTABLEKS                       R19 R18 K16 ["Size"]
      557 LOADN                            R19 2
      558 SETTABLEKS                       R19 R18 K88 ["LayoutOrder"]
      560 DUPTABLE                         R19 K119 [{"Footer"}]
      561 GETUPVAL                         R20 1
      562 GETTABLEKS                       R20 R20 K13 ["createElement"]
      564 GETUPVAL                         R21 16
      565 DUPTABLE                         R22 K121 [{"OnClose"}]
      566 NEWCLOSURE                       R23 P4
      567 CAPTURE                          VAL R0
      568 SETTABLEKS                       R23 R22 K120 ["OnClose"]
      570 CALL                             R20 2 1
      571 SETTABLEKS                       R20 R19 K118 ["Footer"]
      573 CALL                             R16 3 1
      574 SETTABLEKS                       R16 R15 K74 ["FooterContent"]
      576 CALL                             R12 3 -1
      577 RETURN                           R12 -1

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
       19 GETIMPORT                        R2 K9 [game]
       21 LOADK                            R4 K10 ["RemoveGameSettingsPermissionsPage"]
       22 NAMECALL                         R2 R2 K11 ["GetFastFlag"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K6 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["getFFlagGameSettingsGameToExperience"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
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
       85 GETTABLEKS                       R13 R9 K18 ["Util"]
       87 GETTABLEKS                       R14 R12 K24 ["Button"]
       89 GETTABLEKS                       R15 R12 K25 ["Container"]
       91 GETTABLEKS                       R16 R12 K26 ["HoverArea"]
       93 GETTABLEKS                       R17 R4 K27 ["FitTextLabel"]
       95 GETIMPORT                        R18 K4 [require]
       97 GETTABLEKS                       R19 R0 K5 ["Src"]
       99 GETTABLEKS                       R19 R19 K28 ["Components"]
      101 GETTABLEKS                       R19 R19 K29 ["MenuBar"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K4 [require]
      106 GETTABLEKS                       R20 R0 K5 ["Src"]
      108 GETTABLEKS                       R20 R20 K28 ["Components"]
      110 GETTABLEKS                       R20 R20 K30 ["Separator"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K4 [require]
      115 GETTABLEKS                       R21 R0 K5 ["Src"]
      117 GETTABLEKS                       R21 R21 K28 ["Components"]
      119 GETTABLEKS                       R21 R21 K31 ["Footer"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K4 [require]
      124 GETTABLEKS                       R22 R0 K5 ["Src"]
      126 GETTABLEKS                       R22 R22 K28 ["Components"]
      128 GETTABLEKS                       R22 R22 K32 ["PermissionsBanner"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K4 [require]
      133 GETTABLEKS                       R23 R0 K33 ["Pages"]
      135 GETTABLEKS                       R23 R23 K34 ["PageManifest"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K4 [require]
      140 GETTABLEKS                       R24 R0 K5 ["Src"]
      142 GETTABLEKS                       R24 R24 K18 ["Util"]
      144 GETTABLEKS                       R24 R24 K35 ["Analytics"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K9 [game]
      149 LOADK                            R26 K36 ["TextService"]
      150 NAMECALL                         R24 R24 K37 ["GetService"]
      152 CALL                             R24 2 1
      153 GETTABLEKS                       R25 R5 K38 ["PureComponent"]
      155 LOADK                            R27 K39 ["MainView"]
      156 NAMECALL                         R25 R25 K40 ["extend"]
      158 CALL                             R25 2 1
      159 GETIMPORT                        R26 K9 [game]
      161 LOADK                            R28 K41 ["StudioPublishService"]
      162 NAMECALL                         R26 R26 K37 ["GetService"]
      164 CALL                             R26 2 1
      165 DUPCLOSURE                       R27 K42 [PROTO_0]
      166 CAPTURE                          VAL R22
      167 SETTABLEKS                       R27 R25 K43 ["init"]
      169 DUPCLOSURE                       R27 K44 [PROTO_1]
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R23
      172 SETTABLEKS                       R27 R25 K45 ["pageSelected"]
      174 DUPCLOSURE                       R27 K46 [PROTO_7]
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R20
      192 SETTABLEKS                       R27 R25 K47 ["render"]
      194 MOVE                             R27 R11
      195 DUPTABLE                         R28 K50 [{"Localization", "Stylizer"}]
      196 GETTABLEKS                       R29 R10 K48 ["Localization"]
      198 SETTABLEKS                       R29 R28 K48 ["Localization"]
      200 GETTABLEKS                       R29 R10 K49 ["Stylizer"]
      202 SETTABLEKS                       R29 R28 K49 ["Stylizer"]
      204 CALL                             R27 1 1
      205 MOVE                             R28 R25
      206 CALL                             R27 1 1
      207 MOVE                             R25 R27
      208 GETTABLEKS                       R27 R6 K51 ["connect"]
      210 DUPCLOSURE                       R28 K52 [PROTO_8]
      211 CALL                             R27 1 1
      212 MOVE                             R28 R25
      213 CALL                             R27 1 1
      214 MOVE                             R25 R27
      215 RETURN                           R25 1
