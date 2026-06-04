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
      280 JUMPIF                           R15 ; [+287]
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
      318 JUMPIFNOT                        R17 ; [+2]
      319 LOADNIL                          R16
      320 JUMP                             ; [+54]
      321 GETUPVAL                         R16 1
      322 GETTABLEKS                       R16 R16 K13 ["createElement"]
      324 LOADK                            R17 K14 ["Frame"]
      325 NEWTABLE                         R18 8 0
      327 GETIMPORT                        R19 K42 [UDim2.new]
      329 LOADN                            R20 1
      330 LOADN                            R21 0
      331 LOADN                            R22 0
      332 LOADN                            R23 0
      333 CALL                             R19 4 1
      334 SETTABLEKS                       R19 R18 K16 ["Size"]
      336 GETIMPORT                        R19 K91 [Enum.AutomaticSize.Y]
      338 SETTABLEKS                       R19 R18 K90 ["AutomaticSize"]
      340 LOADN                            R19 1
      341 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      343 LOADN                            R19 0
      344 SETTABLEKS                       R19 R18 K88 ["LayoutOrder"]
      346 GETUPVAL                         R19 1
      347 GETTABLEKS                       R19 R19 K92 ["Change"]
      349 GETTABLEKS                       R19 R19 K93 ["AbsoluteSize"]
      351 NEWCLOSURE                       R20 P1
      352 CAPTURE                          VAL R0
      353 SETTABLE                         R20 R18 R19
      354 DUPTABLE                         R19 K95 [{"Banner"}]
      355 GETUPVAL                         R20 1
      356 GETTABLEKS                       R20 R20 K13 ["createElement"]
      358 GETUPVAL                         R21 11
      359 DUPTABLE                         R22 K97 [{"GameId", "BannerText"}]
      360 GETTABLEKS                       R23 R1 K5 ["GameId"]
      362 SETTABLEKS                       R23 R22 K5 ["GameId"]
      364 LOADK                            R25 K24 ["General"]
      365 LOADK                            R26 K98 ["PermissionsBannerText"]
      366 NAMECALL                         R23 R4 K26 ["getText"]
      368 CALL                             R23 3 1
      369 SETTABLEKS                       R23 R22 K96 ["BannerText"]
      371 CALL                             R20 2 1
      372 SETTABLEKS                       R20 R19 K94 ["Banner"]
      374 CALL                             R16 3 1
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
      394 GETTABLEKS                       R26 R0 K1 ["state"]
      396 GETTABLEKS                       R26 R26 K102 ["BannerHeight"]
      398 ADD                              R24 R25 R26
      399 MINUS                            R23 R24
      400 CALL                             R19 4 1
      401 SETTABLEKS                       R19 R18 K16 ["Size"]
      403 DUPTABLE                         R19 K106 [{"Layout", "MenuBar", "Separator", "PageContent"}]
      404 GETUPVAL                         R20 1
      405 GETTABLEKS                       R20 R20 K13 ["createElement"]
      407 LOADK                            R21 K81 ["UIListLayout"]
      408 DUPTABLE                         R22 K84 [{"FillDirection", "SortOrder"}]
      409 GETIMPORT                        R23 K108 [Enum.FillDirection.Horizontal]
      411 SETTABLEKS                       R23 R22 K82 ["FillDirection"]
      413 GETIMPORT                        R23 K89 [Enum.SortOrder.LayoutOrder]
      415 SETTABLEKS                       R23 R22 K83 ["SortOrder"]
      417 CALL                             R20 2 1
      418 SETTABLEKS                       R20 R19 K71 ["Layout"]
      420 GETUPVAL                         R20 1
      421 GETTABLEKS                       R20 R20 K13 ["createElement"]
      423 GETUPVAL                         R21 13
      424 DUPTABLE                         R22 K111 [{"LayoutOrder", "Entries", "Selected", "SelectionChanged"}]
      425 LOADN                            R23 1
      426 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      428 SETTABLEKS                       R8 R22 K109 ["Entries"]
      430 SETTABLEKS                       R2 R22 K2 ["Selected"]
      432 NEWCLOSURE                       R23 P2
      433 CAPTURE                          VAL R0
      434 SETTABLEKS                       R23 R22 K110 ["SelectionChanged"]
      436 CALL                             R20 2 1
      437 SETTABLEKS                       R20 R19 K103 ["MenuBar"]
      439 GETUPVAL                         R20 1
      440 GETTABLEKS                       R20 R20 K13 ["createElement"]
      442 GETUPVAL                         R21 14
      443 DUPTABLE                         R22 K112 [{"LayoutOrder", "Size", "Position"}]
      444 LOADN                            R23 2
      445 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      447 GETIMPORT                        R23 K42 [UDim2.new]
      449 LOADN                            R24 0
      450 LOADN                            R25 3
      451 LOADN                            R26 1
      452 LOADN                            R27 0
      453 CALL                             R23 4 1
      454 SETTABLEKS                       R23 R22 K16 ["Size"]
      456 GETIMPORT                        R23 K42 [UDim2.new]
      458 LOADN                            R24 0
      459 GETUPVAL                         R25 15
      460 GETTABLEKS                       R25 R25 K113 ["MENU_BAR_WIDTH"]
      462 LOADN                            R26 0
      463 LOADN                            R27 0
      464 CALL                             R23 4 1
      465 SETTABLEKS                       R23 R22 K49 ["Position"]
      467 CALL                             R20 2 1
      468 SETTABLEKS                       R20 R19 K104 ["Separator"]
      470 GETUPVAL                         R20 1
      471 GETTABLEKS                       R20 R20 K13 ["createElement"]
      473 LOADK                            R21 K14 ["Frame"]
      474 NEWTABLE                         R22 4 0
      476 LOADN                            R23 3
      477 SETTABLEKS                       R23 R22 K88 ["LayoutOrder"]
      479 GETIMPORT                        R23 K42 [UDim2.new]
      481 LOADN                            R24 1
      482 GETTABLEKS                       R26 R0 K1 ["state"]
      484 GETTABLEKS                       R26 R26 K114 ["PageContentOffset"]
      486 MINUS                            R25 R26
      487 LOADN                            R26 1
      488 LOADN                            R27 0
      489 CALL                             R23 4 1
      490 SETTABLEKS                       R23 R22 K16 ["Size"]
      492 LOADN                            R23 1
      493 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
      495 GETUPVAL                         R23 1
      496 GETTABLEKS                       R23 R23 K92 ["Change"]
      498 GETTABLEKS                       R23 R23 K115 ["AbsolutePosition"]
      500 NEWCLOSURE                       R24 P3
      501 CAPTURE                          VAL R0
      502 SETTABLE                         R24 R22 R23
      503 GETUPVAL                         R23 5
      504 GETTABLEKS                       R23 R23 K47 ["Dictionary"]
      506 GETTABLEKS                       R23 R23 K48 ["join"]
      508 MOVE                             R24 R7
      509 DUPTABLE                         R25 K116 [{"UIPadding"}]
      510 GETUPVAL                         R26 1
      511 GETTABLEKS                       R26 R26 K13 ["createElement"]
      513 LOADK                            R27 K76 ["UIPadding"]
      514 DUPTABLE                         R28 K78 [{"PaddingTop"}]
      515 GETIMPORT                        R29 K80 [UDim.new]
      517 LOADN                            R30 0
      518 LOADN                            R31 12
      519 CALL                             R29 2 1
      520 SETTABLEKS                       R29 R28 K77 ["PaddingTop"]
      522 CALL                             R26 2 1
      523 SETTABLEKS                       R26 R25 K76 ["UIPadding"]
      525 CALL                             R23 2 -1
      526 CALL                             R20 -1 1
      527 SETTABLEKS                       R20 R19 K105 ["PageContent"]
      529 CALL                             R16 3 1
      530 SETTABLEKS                       R16 R15 K73 ["CenterContent"]
      532 GETUPVAL                         R16 1
      533 GETTABLEKS                       R16 R16 K13 ["createElement"]
      535 GETUPVAL                         R17 12
      536 DUPTABLE                         R18 K117 [{"Size", "LayoutOrder"}]
      537 GETIMPORT                        R19 K42 [UDim2.new]
      539 LOADN                            R20 1
      540 LOADN                            R21 0
      541 LOADN                            R22 0
      542 GETTABLEKS                       R23 R3 K100 ["footer"]
      544 GETTABLEKS                       R23 R23 K101 ["height"]
      546 CALL                             R19 4 1
      547 SETTABLEKS                       R19 R18 K16 ["Size"]
      549 LOADN                            R19 2
      550 SETTABLEKS                       R19 R18 K88 ["LayoutOrder"]
      552 DUPTABLE                         R19 K119 [{"Footer"}]
      553 GETUPVAL                         R20 1
      554 GETTABLEKS                       R20 R20 K13 ["createElement"]
      556 GETUPVAL                         R21 16
      557 DUPTABLE                         R22 K121 [{"OnClose"}]
      558 NEWCLOSURE                       R23 P4
      559 CAPTURE                          VAL R0
      560 SETTABLEKS                       R23 R22 K120 ["OnClose"]
      562 CALL                             R20 2 1
      563 SETTABLEKS                       R20 R19 K118 ["Footer"]
      565 CALL                             R16 3 1
      566 SETTABLEKS                       R16 R15 K74 ["FooterContent"]
      568 CALL                             R12 3 -1
      569 RETURN                           R12 -1

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
