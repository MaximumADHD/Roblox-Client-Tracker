PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["isMounted"]
        7 GETTABLEKS                       R1 R0 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["Id"]
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+5]
       13 GETIMPORT                        R2 K6 [game]
       15 GETTABLEKS                       R1 R2 K7 ["GameId"]
       17 GETIMPORT                        R2 K10 [string.format]
       19 LOADK                            R3 K11 ["rbxthumb://type=GameIcon&id=%i&w=%i&h=%i"]
       20 MOVE                             R4 R1
       21 LOADN                            R5 150
       22 LOADN                            R6 150
       23 CALL                             R2 4 1
       24 SETTABLEKS                       R2 R0 K12 ["thumbnailUrl"]
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"assetFetchStatus"}]
        6 SETTABLEKS                       R1 R4 K1 ["assetFetchStatus"]
        8 NAMECALL                         R2 R2 K3 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["thumbnailUrl"]
        5 SETLIST                          R0 R1 1 [1]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"isUnrated"}]
        6 GETTABLEKS                       R6 R0 K3 ["ratingByUniverse"]
        8 GETUPVAL                         R7 1
        9 GETTABLE                         R5 R6 R7
       10 JUMPIFEQKS                       R5 K4 ["unrated"] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K1 ["isUnrated"]
       16 NAMECALL                         R1 R1 K5 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K2 [{"isPublic"}]
        6 GETTABLEKS                       R5 R0 K3 ["privacyType"]
        8 JUMPIFEQKS                       R5 K4 ["Public"] ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K1 ["isPublic"]
       14 NAMECALL                         R1 R1 K5 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["config fetch failed"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["props"]
       11 GETTABLEKS                       R1 R1 K4 ["Id"]
       13 JUMPIFNOT                        R1 ; [+2]
       14 JUMPIFNOTEQKN                    R1 K5 [0] ; [+5]
       16 GETIMPORT                        R2 K7 [game]
       18 GETTABLEKS                       R1 R2 K8 ["GameId"]
       20 JUMPIFNOT                        R1 ; [+24]
       21 JUMPIFEQKN                       R1 K5 [0] ; [+23]
       23 GETUPVAL                         R2 1
       24 NEWTABLE                         R3 0 1
       26 MOVE                             R4 R1
       27 SETLIST                          R3 R4 1 [1]
       29 CALL                             R2 1 1
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R1
       33 NAMECALL                         R2 R2 K9 ["andThen"]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 2
       37 MOVE                             R3 R1
       38 CALL                             R2 1 1
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          VAL R0
       41 DUPCLOSURE                       R5 K10 [PROTO_5]
       42 NAMECALL                         R2 R2 K9 ["andThen"]
       44 CALL                             R2 3 0
       45 CLOSEUPVALS                      R1
       46 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["CloseMode"]
        8 NAMECALL                         R1 R1 K3 ["CloseAfterPublish"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["Id"]
        9 CALL                             R1 1 1
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 4
       13 CALL                             R1 0 0
       14 RETURN                           R0 0
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R1 5
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K0 ["Id"]
       20 CALL                             R1 1 1
       21 CALL                             R1 0 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 4
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["ParentGameName"]
       12 LOADK                            R9 K6 ["PublishSuccess"]
       13 LOADK                            R10 K7 ["FindInGame"]
       14 NEWTABLE                         R11 0 1
       16 MOVE                             R12 R6
       17 SETLIST                          R11 R12 1 [1]
       19 NAMECALL                         R7 R3 K8 ["getText"]
       21 CALL                             R7 4 1
       22 LOADK                            R10 K6 ["PublishSuccess"]
       23 LOADK                            R11 K9 ["Success"]
       24 NAMECALL                         R8 R3 K8 ["getText"]
       26 CALL                             R8 3 1
       27 GETTABLEKS                       R9 R1 K10 ["IsPublish"]
       29 JUMPIFNOTEQKB                    R9 FALSE ; [+7]
       31 LOADK                            R11 K6 ["PublishSuccess"]
       32 LOADK                            R12 K11 ["SaveSuccess"]
       33 NAMECALL                         R9 R3 K8 ["getText"]
       35 CALL                             R9 3 1
       36 MOVE                             R8 R9
       37 GETTABLEKS                       R9 R0 K12 ["state"]
       39 GETTABLEKS                       R9 R9 K13 ["isPublic"]
       41 GETTABLEKS                       R10 R0 K12 ["state"]
       43 GETTABLEKS                       R10 R10 K14 ["isUnrated"]
       45 LOADK                            R13 K6 ["PublishSuccess"]
       46 LOADK                            R14 K15 ["Private"]
       47 NAMECALL                         R11 R3 K8 ["getText"]
       49 CALL                             R11 3 1
       50 JUMPIFNOT                        R9 ; [+14]
       51 JUMPIFNOT                        R10 ; [+7]
       52 LOADK                            R14 K6 ["PublishSuccess"]
       53 LOADK                            R15 K16 ["PublicUnrated"]
       54 NAMECALL                         R12 R3 K8 ["getText"]
       56 CALL                             R12 3 1
       57 MOVE                             R11 R12
       58 JUMP                             ; [+6]
       59 LOADK                            R14 K6 ["PublishSuccess"]
       60 LOADK                            R15 K17 ["Public"]
       61 NAMECALL                         R12 R3 K8 ["getText"]
       63 CALL                             R12 3 1
       64 MOVE                             R11 R12
       65 GETTABLEKS                       R13 R1 K10 ["IsPublish"]
       67 JUMPIFNOT                        R13 ; [+544]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K18 ["createElement"]
       71 LOADK                            R13 K19 ["Frame"]
       72 DUPTABLE                         R14 K23 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       73 GETIMPORT                        R15 K26 [UDim2.new]
       75 LOADN                            R16 1
       76 LOADN                            R17 0
       77 LOADN                            R18 1
       78 LOADN                            R19 0
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K20 ["Size"]
       82 GETTABLEKS                       R15 R2 K27 ["backgroundColor"]
       84 SETTABLEKS                       R15 R14 K21 ["BackgroundColor3"]
       86 LOADN                            R15 0
       87 SETTABLEKS                       R15 R14 K22 ["BorderSizePixel"]
       89 DUPTABLE                         R15 K30 [{"CenterStack", "BottomBar"}]
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K18 ["createElement"]
       93 LOADK                            R17 K19 ["Frame"]
       94 DUPTABLE                         R18 K33 [{"BackgroundTransparency", "Size", "Position"}]
       95 LOADN                            R19 1
       96 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
       98 GETIMPORT                        R19 K26 [UDim2.new]
      100 LOADN                            R20 1
      101 LOADN                            R21 0
      102 LOADN                            R22 1
      103 GETTABLEKS                       R24 R2 K34 ["FOOTER_HEIGHT"]
      105 MINUS                            R23 R24
      106 CALL                             R19 4 1
      107 SETTABLEKS                       R19 R18 K20 ["Size"]
      109 GETIMPORT                        R19 K26 [UDim2.new]
      111 LOADN                            R20 0
      112 LOADN                            R21 0
      113 LOADN                            R22 0
      114 LOADN                            R23 0
      115 CALL                             R19 4 1
      116 SETTABLEKS                       R19 R18 K32 ["Position"]
      118 DUPTABLE                         R19 K43 [{"Layout", "Success", "SpacerAfterSuccess", "Icon", "SpacerAfterIcon", "Name", "SpacerAfterName", "Rating", "SpacerAfterRating", "Description"}]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K18 ["createElement"]
      122 LOADK                            R21 K44 ["UIListLayout"]
      123 DUPTABLE                         R22 K50 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      124 GETIMPORT                        R23 K53 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R23 R22 K45 ["FillDirection"]
      128 GETIMPORT                        R23 K55 [Enum.HorizontalAlignment.Center]
      130 SETTABLEKS                       R23 R22 K46 ["HorizontalAlignment"]
      132 GETIMPORT                        R23 K56 [Enum.VerticalAlignment.Center]
      134 SETTABLEKS                       R23 R22 K47 ["VerticalAlignment"]
      136 GETIMPORT                        R23 K58 [UDim.new]
      138 LOADN                            R24 0
      139 LOADN                            R25 0
      140 CALL                             R23 2 1
      141 SETTABLEKS                       R23 R22 K48 ["Padding"]
      143 GETIMPORT                        R23 K60 [Enum.SortOrder.LayoutOrder]
      145 SETTABLEKS                       R23 R22 K49 ["SortOrder"]
      147 CALL                             R20 2 1
      148 SETTABLEKS                       R20 R19 K35 ["Layout"]
      150 GETUPVAL                         R20 0
      151 GETTABLEKS                       R20 R20 K18 ["createElement"]
      153 LOADK                            R21 K61 ["TextLabel"]
      154 DUPTABLE                         R22 K69 [{"LayoutOrder", "Text", "AutomaticSize", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextColor3", "Font"}]
      155 LOADN                            R23 1
      156 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      158 SETTABLEKS                       R8 R22 K62 ["Text"]
      160 GETIMPORT                        R23 K71 [Enum.AutomaticSize.XY]
      162 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      164 LOADN                            R23 24
      165 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      167 LOADN                            R23 1
      168 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      170 GETIMPORT                        R23 K72 [Enum.TextXAlignment.Center]
      172 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      174 GETIMPORT                        R23 K74 [Enum.TextYAlignment.Top]
      176 SETTABLEKS                       R23 R22 K66 ["TextYAlignment"]
      178 GETTABLEKS                       R23 R2 K75 ["successText"]
      180 GETTABLEKS                       R23 R23 K76 ["text"]
      182 SETTABLEKS                       R23 R22 K67 ["TextColor3"]
      184 GETTABLEKS                       R23 R2 K75 ["successText"]
      186 GETTABLEKS                       R23 R23 K77 ["font"]
      188 SETTABLEKS                       R23 R22 K68 ["Font"]
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K9 ["Success"]
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R20 R20 K18 ["createElement"]
      196 LOADK                            R21 K19 ["Frame"]
      197 DUPTABLE                         R22 K78 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      198 LOADN                            R23 2
      199 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      201 LOADN                            R23 1
      202 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      204 GETIMPORT                        R23 K26 [UDim2.new]
      206 LOADN                            R24 0
      207 LOADN                            R25 0
      208 LOADN                            R26 0
      209 LOADN                            R27 28
      210 CALL                             R23 4 1
      211 SETTABLEKS                       R23 R22 K20 ["Size"]
      213 CALL                             R20 2 1
      214 SETTABLEKS                       R20 R19 K36 ["SpacerAfterSuccess"]
      216 GETUPVAL                         R20 0
      217 GETTABLEKS                       R20 R20 K18 ["createElement"]
      219 LOADK                            R21 K79 ["ImageLabel"]
      220 DUPTABLE                         R22 K81 [{"LayoutOrder", "Size", "BackgroundTransparency", "Image", "BorderSizePixel"}]
      221 LOADN                            R23 3
      222 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      224 GETIMPORT                        R23 K26 [UDim2.new]
      226 LOADN                            R24 0
      227 LOADN                            R25 150
      228 LOADN                            R26 0
      229 LOADN                            R27 150
      230 CALL                             R23 4 1
      231 SETTABLEKS                       R23 R22 K20 ["Size"]
      233 LOADN                            R23 1
      234 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      236 GETTABLEKS                       R24 R0 K12 ["state"]
      238 GETTABLEKS                       R24 R24 K82 ["assetFetchStatus"]
      240 GETIMPORT                        R25 K84 [Enum.AssetFetchStatus.Success]
      242 JUMPIFNOTEQ                      R24 R25 ; [+4]
      244 GETTABLEKS                       R23 R0 K85 ["thumbnailUrl"]
      246 JUMPIF                           R23 ; [+4]
      247 GETTABLEKS                       R23 R2 K86 ["icons"]
      249 GETTABLEKS                       R23 R23 K87 ["thumbnailPlaceHolder"]
      251 SETTABLEKS                       R23 R22 K80 ["Image"]
      253 LOADN                            R23 0
      254 SETTABLEKS                       R23 R22 K22 ["BorderSizePixel"]
      256 CALL                             R20 2 1
      257 SETTABLEKS                       R20 R19 K37 ["Icon"]
      259 GETUPVAL                         R20 0
      260 GETTABLEKS                       R20 R20 K18 ["createElement"]
      262 LOADK                            R21 K19 ["Frame"]
      263 DUPTABLE                         R22 K78 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      264 LOADN                            R23 4
      265 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      267 LOADN                            R23 1
      268 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      270 GETIMPORT                        R23 K26 [UDim2.new]
      272 LOADN                            R24 0
      273 LOADN                            R25 0
      274 LOADN                            R26 0
      275 LOADN                            R27 24
      276 CALL                             R23 4 1
      277 SETTABLEKS                       R23 R22 K20 ["Size"]
      279 CALL                             R20 2 1
      280 SETTABLEKS                       R20 R19 K38 ["SpacerAfterIcon"]
      282 GETUPVAL                         R20 0
      283 GETTABLEKS                       R20 R20 K18 ["createElement"]
      285 LOADK                            R21 K61 ["TextLabel"]
      286 DUPTABLE                         R22 K88 [{"LayoutOrder", "Text", "AutomaticSize", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      287 LOADN                            R23 5
      288 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      290 SETTABLEKS                       R5 R22 K62 ["Text"]
      292 GETIMPORT                        R23 K71 [Enum.AutomaticSize.XY]
      294 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      296 LOADN                            R23 20
      297 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      299 LOADN                            R23 1
      300 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      302 GETTABLEKS                       R23 R2 K89 ["header"]
      304 GETTABLEKS                       R23 R23 K76 ["text"]
      306 SETTABLEKS                       R23 R22 K67 ["TextColor3"]
      308 GETIMPORT                        R23 K72 [Enum.TextXAlignment.Center]
      310 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      312 GETTABLEKS                       R23 R2 K89 ["header"]
      314 GETTABLEKS                       R23 R23 K77 ["font"]
      316 SETTABLEKS                       R23 R22 K68 ["Font"]
      318 CALL                             R20 2 1
      319 SETTABLEKS                       R20 R19 K4 ["Name"]
      321 GETUPVAL                         R20 0
      322 GETTABLEKS                       R20 R20 K18 ["createElement"]
      324 LOADK                            R21 K19 ["Frame"]
      325 DUPTABLE                         R22 K78 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      326 LOADN                            R23 6
      327 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      329 LOADN                            R23 1
      330 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      332 GETIMPORT                        R23 K26 [UDim2.new]
      334 LOADN                            R24 0
      335 LOADN                            R25 0
      336 LOADN                            R26 0
      337 LOADN                            R27 6
      338 CALL                             R23 4 1
      339 SETTABLEKS                       R23 R22 K20 ["Size"]
      341 CALL                             R20 2 1
      342 SETTABLEKS                       R20 R19 K39 ["SpacerAfterName"]
      344 GETUPVAL                         R20 0
      345 GETTABLEKS                       R20 R20 K18 ["createElement"]
      347 LOADK                            R21 K61 ["TextLabel"]
      348 DUPTABLE                         R22 K88 [{"LayoutOrder", "Text", "AutomaticSize", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      349 LOADN                            R23 7
      350 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      352 SETTABLEKS                       R11 R22 K62 ["Text"]
      354 GETIMPORT                        R23 K71 [Enum.AutomaticSize.XY]
      356 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      358 GETTABLEKS                       R24 R2 K91 ["fontStyle"]
      360 GETTABLEKS                       R24 R24 K92 ["Subtext"]
      362 GETTABLEKS                       R24 R24 K64 ["TextSize"]
      364 ORK                              R23 R24 K90 [20]
      365 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      367 LOADN                            R23 1
      368 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      370 JUMPIFNOT                        R9 ; [+9]
      371 JUMPIFNOT                        R10 ; [+3]
      372 GETTABLEKS                       R23 R2 K93 ["errorColor"]
      374 JUMPIF                           R23 ; [+9]
      375 GETTABLEKS                       R23 R2 K75 ["successText"]
      377 GETTABLEKS                       R23 R23 K76 ["text"]
      379 JUMPIF                           R23 ; [+4]
      380 GETTABLEKS                       R23 R2 K89 ["header"]
      382 GETTABLEKS                       R23 R23 K76 ["text"]
      384 SETTABLEKS                       R23 R22 K67 ["TextColor3"]
      386 GETIMPORT                        R23 K72 [Enum.TextXAlignment.Center]
      388 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      390 GETTABLEKS                       R23 R2 K91 ["fontStyle"]
      392 GETTABLEKS                       R23 R23 K92 ["Subtext"]
      394 GETTABLEKS                       R23 R23 K68 ["Font"]
      396 JUMPIF                           R23 ; [+2]
      397 GETTABLEKS                       R23 R2 K77 ["font"]
      399 SETTABLEKS                       R23 R22 K68 ["Font"]
      401 CALL                             R20 2 1
      402 SETTABLEKS                       R20 R19 K40 ["Rating"]
      404 GETUPVAL                         R20 0
      405 GETTABLEKS                       R20 R20 K18 ["createElement"]
      407 LOADK                            R21 K19 ["Frame"]
      408 DUPTABLE                         R22 K78 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      409 LOADN                            R23 8
      410 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      412 LOADN                            R23 1
      413 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      415 GETIMPORT                        R23 K26 [UDim2.new]
      417 LOADN                            R24 0
      418 LOADN                            R25 0
      419 LOADN                            R26 0
      420 LOADN                            R27 30
      421 CALL                             R23 4 1
      422 SETTABLEKS                       R23 R22 K20 ["Size"]
      424 CALL                             R20 2 1
      425 SETTABLEKS                       R20 R19 K41 ["SpacerAfterRating"]
      427 GETUPVAL                         R20 0
      428 GETTABLEKS                       R20 R20 K18 ["createElement"]
      430 LOADK                            R21 K61 ["TextLabel"]
      431 DUPTABLE                         R22 K95 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextColor3"}]
      432 LOADN                            R23 9
      433 SETTABLEKS                       R23 R22 K59 ["LayoutOrder"]
      435 GETIMPORT                        R23 K71 [Enum.AutomaticSize.XY]
      437 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      439 LOADN                            R23 1
      440 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      442 JUMPIFNOT                        R9 ; [+7]
      443 JUMPIFNOT                        R10 ; [+6]
      444 LOADK                            R25 K6 ["PublishSuccess"]
      445 LOADK                            R26 K96 ["PostPublishInfoUnrated"]
      446 NAMECALL                         R23 R3 K8 ["getText"]
      448 CALL                             R23 3 1
      449 JUMP                             ; [+5]
      450 LOADK                            R25 K6 ["PublishSuccess"]
      451 LOADK                            R26 K97 ["PostPublishInfo"]
      452 NAMECALL                         R23 R3 K8 ["getText"]
      454 CALL                             R23 3 1
      455 SETTABLEKS                       R23 R22 K62 ["Text"]
      457 LOADB                            R23 1
      458 SETTABLEKS                       R23 R22 K94 ["TextWrapped"]
      460 GETIMPORT                        R23 K72 [Enum.TextXAlignment.Center]
      462 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      464 GETIMPORT                        R23 K74 [Enum.TextYAlignment.Top]
      466 SETTABLEKS                       R23 R22 K66 ["TextYAlignment"]
      468 GETTABLEKS                       R23 R2 K91 ["fontStyle"]
      470 GETTABLEKS                       R23 R23 K92 ["Subtext"]
      472 GETTABLEKS                       R23 R23 K68 ["Font"]
      474 JUMPIF                           R23 ; [+2]
      475 GETTABLEKS                       R23 R2 K77 ["font"]
      477 SETTABLEKS                       R23 R22 K68 ["Font"]
      479 GETTABLEKS                       R23 R2 K91 ["fontStyle"]
      481 GETTABLEKS                       R23 R23 K92 ["Subtext"]
      483 GETTABLEKS                       R23 R23 K64 ["TextSize"]
      485 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      487 GETTABLEKS                       R23 R2 K91 ["fontStyle"]
      489 GETTABLEKS                       R23 R23 K92 ["Subtext"]
      491 GETTABLEKS                       R23 R23 K67 ["TextColor3"]
      493 SETTABLEKS                       R23 R22 K67 ["TextColor3"]
      495 CALL                             R20 2 1
      496 SETTABLEKS                       R20 R19 K42 ["Description"]
      498 CALL                             R16 3 1
      499 SETTABLEKS                       R16 R15 K28 ["CenterStack"]
      501 GETUPVAL                         R16 0
      502 GETTABLEKS                       R16 R16 K18 ["createElement"]
      504 GETUPVAL                         R17 1
      505 DUPTABLE                         R18 K104 [{"AnchorPoint", "Position", "HorizontalAlignment", "LocalizationNamespace", "AutoWidth", "Spacing", "Buttons", "buttonActivated"}]
      506 GETIMPORT                        R19 K106 [Vector2.new]
      508 LOADK                            R20 K107 [0.5]
      509 LOADN                            R21 1
      510 CALL                             R19 2 1
      511 SETTABLEKS                       R19 R18 K98 ["AnchorPoint"]
      513 GETIMPORT                        R19 K26 [UDim2.new]
      515 LOADK                            R20 K107 [0.5]
      516 LOADN                            R21 0
      517 LOADN                            R22 1
      518 LOADN                            R23 246
      519 CALL                             R19 4 1
      520 SETTABLEKS                       R19 R18 K32 ["Position"]
      522 GETIMPORT                        R19 K55 [Enum.HorizontalAlignment.Center]
      524 SETTABLEKS                       R19 R18 K46 ["HorizontalAlignment"]
      526 LOADK                            R19 K6 ["PublishSuccess"]
      527 SETTABLEKS                       R19 R18 K99 ["LocalizationNamespace"]
      529 LOADB                            R19 1
      530 SETTABLEKS                       R19 R18 K100 ["AutoWidth"]
      532 LOADN                            R19 8
      533 SETTABLEKS                       R19 R18 K101 ["Spacing"]
      535 JUMPIFNOT                        R9 ; [+31]
      536 JUMPIFNOT                        R10 ; [+30]
      537 NEWTABLE                         R19 0 2
      539 DUPTABLE                         R20 K110 [{"Name", "Default", "Value"}]
      540 LOADK                            R21 K111 ["Done"]
      541 SETTABLEKS                       R21 R20 K4 ["Name"]
      543 LOADB                            R21 0
      544 SETTABLEKS                       R21 R20 K108 ["Default"]
      546 LOADB                            R21 0
      547 SETTABLEKS                       R21 R20 K109 ["Value"]
      549 DUPTABLE                         R21 K113 [{"Name", "Default", "Value", "LeftIcon"}]
      550 LOADK                            R22 K114 ["ViewQuestionnaire"]
      551 SETTABLEKS                       R22 R21 K4 ["Name"]
      553 LOADB                            R22 1
      554 SETTABLEKS                       R22 R21 K108 ["Default"]
      556 LOADB                            R22 1
      557 SETTABLEKS                       R22 R21 K109 ["Value"]
      559 GETUPVAL                         R23 2
      560 GETTABLEKS                       R22 R23 K115 ["icons/navigation/externallink"]
      562 SETTABLEKS                       R22 R21 K112 ["LeftIcon"]
      564 SETLIST                          R19 R20 2 [1]
      566 JUMP                             ; [+29]
      567 NEWTABLE                         R19 0 2
      569 DUPTABLE                         R20 K113 [{"Name", "Default", "Value", "LeftIcon"}]
      570 LOADK                            R21 K116 ["ViewOnCreatorHub"]
      571 SETTABLEKS                       R21 R20 K4 ["Name"]
      573 LOADB                            R21 1
      574 SETTABLEKS                       R21 R20 K108 ["Default"]
      576 LOADB                            R21 1
      577 SETTABLEKS                       R21 R20 K109 ["Value"]
      579 GETUPVAL                         R22 2
      580 GETTABLEKS                       R21 R22 K115 ["icons/navigation/externallink"]
      582 SETTABLEKS                       R21 R20 K112 ["LeftIcon"]
      584 DUPTABLE                         R21 K110 [{"Name", "Default", "Value"}]
      585 LOADK                            R22 K111 ["Done"]
      586 SETTABLEKS                       R22 R21 K4 ["Name"]
      588 LOADB                            R22 0
      589 SETTABLEKS                       R22 R21 K108 ["Default"]
      591 LOADB                            R22 0
      592 SETTABLEKS                       R22 R21 K109 ["Value"]
      594 SETLIST                          R19 R20 2 [1]
      596 SETTABLEKS                       R19 R18 K102 ["Buttons"]
      598 NEWCLOSURE                       R19 P0
      599 CAPTURE                          VAL R9
      600 CAPTURE                          VAL R10
      601 CAPTURE                          UPVAL U3
      602 CAPTURE                          VAL R1
      603 CAPTURE                          VAL R4
      604 CAPTURE                          UPVAL U4
      605 SETTABLEKS                       R19 R18 K103 ["buttonActivated"]
      607 CALL                             R16 2 1
      608 SETTABLEKS                       R16 R15 K29 ["BottomBar"]
      610 CALL                             R12 3 1
      611 RETURN                           R12 1
      612 GETUPVAL                         R12 0
      613 GETTABLEKS                       R12 R12 K18 ["createElement"]
      615 LOADK                            R13 K19 ["Frame"]
      616 DUPTABLE                         R14 K23 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      617 GETIMPORT                        R15 K26 [UDim2.new]
      619 LOADN                            R16 1
      620 LOADN                            R17 0
      621 LOADN                            R18 1
      622 LOADN                            R19 0
      623 CALL                             R15 4 1
      624 SETTABLEKS                       R15 R14 K20 ["Size"]
      626 GETTABLEKS                       R15 R2 K27 ["backgroundColor"]
      628 SETTABLEKS                       R15 R14 K21 ["BackgroundColor3"]
      630 LOADN                            R15 0
      631 SETTABLEKS                       R15 R14 K22 ["BorderSizePixel"]
      633 DUPTABLE                         R15 K119 [{"Icon", "Name", "Success", "ParentGame", "CloseButton"}]
      634 GETUPVAL                         R16 0
      635 GETTABLEKS                       R16 R16 K18 ["createElement"]
      637 LOADK                            R17 K79 ["ImageLabel"]
      638 DUPTABLE                         R18 K120 [{"Position", "AnchorPoint", "Size", "Image", "BorderSizePixel"}]
      639 GETIMPORT                        R19 K26 [UDim2.new]
      641 LOADK                            R20 K107 [0.5]
      642 LOADN                            R21 0
      643 LOADK                            R22 K121 [0.2]
      644 LOADN                            R23 0
      645 CALL                             R19 4 1
      646 SETTABLEKS                       R19 R18 K32 ["Position"]
      648 GETIMPORT                        R19 K106 [Vector2.new]
      650 LOADK                            R20 K107 [0.5]
      651 LOADK                            R21 K107 [0.5]
      652 CALL                             R19 2 1
      653 SETTABLEKS                       R19 R18 K98 ["AnchorPoint"]
      655 GETIMPORT                        R19 K26 [UDim2.new]
      657 LOADN                            R20 0
      658 LOADN                            R21 150
      659 LOADN                            R22 0
      660 LOADN                            R23 150
      661 CALL                             R19 4 1
      662 SETTABLEKS                       R19 R18 K20 ["Size"]
      664 GETTABLEKS                       R20 R0 K12 ["state"]
      666 GETTABLEKS                       R20 R20 K82 ["assetFetchStatus"]
      668 GETIMPORT                        R21 K84 [Enum.AssetFetchStatus.Success]
      670 JUMPIFNOTEQ                      R20 R21 ; [+4]
      672 GETTABLEKS                       R19 R0 K85 ["thumbnailUrl"]
      674 JUMPIF                           R19 ; [+4]
      675 GETTABLEKS                       R19 R2 K86 ["icons"]
      677 GETTABLEKS                       R19 R19 K87 ["thumbnailPlaceHolder"]
      679 SETTABLEKS                       R19 R18 K80 ["Image"]
      681 LOADN                            R19 0
      682 SETTABLEKS                       R19 R18 K22 ["BorderSizePixel"]
      684 CALL                             R16 2 1
      685 SETTABLEKS                       R16 R15 K37 ["Icon"]
      687 GETUPVAL                         R16 0
      688 GETTABLEKS                       R16 R16 K18 ["createElement"]
      690 LOADK                            R17 K61 ["TextLabel"]
      691 DUPTABLE                         R18 K122 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      692 SETTABLEKS                       R5 R18 K62 ["Text"]
      694 GETIMPORT                        R19 K26 [UDim2.new]
      696 LOADK                            R20 K107 [0.5]
      697 LOADN                            R21 0
      698 LOADK                            R22 K123 [0.35]
      699 LOADN                            R23 0
      700 CALL                             R19 4 1
      701 SETTABLEKS                       R19 R18 K32 ["Position"]
      703 LOADN                            R19 20
      704 SETTABLEKS                       R19 R18 K64 ["TextSize"]
      706 LOADN                            R19 1
      707 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      709 GETTABLEKS                       R19 R2 K89 ["header"]
      711 GETTABLEKS                       R19 R19 K76 ["text"]
      713 SETTABLEKS                       R19 R18 K67 ["TextColor3"]
      715 GETIMPORT                        R19 K72 [Enum.TextXAlignment.Center]
      717 SETTABLEKS                       R19 R18 K65 ["TextXAlignment"]
      719 GETTABLEKS                       R19 R2 K89 ["header"]
      721 GETTABLEKS                       R19 R19 K77 ["font"]
      723 SETTABLEKS                       R19 R18 K68 ["Font"]
      725 CALL                             R16 2 1
      726 SETTABLEKS                       R16 R15 K4 ["Name"]
      728 GETUPVAL                         R16 0
      729 GETTABLEKS                       R16 R16 K18 ["createElement"]
      731 LOADK                            R17 K61 ["TextLabel"]
      732 DUPTABLE                         R18 K124 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      733 SETTABLEKS                       R8 R18 K62 ["Text"]
      735 GETIMPORT                        R19 K26 [UDim2.new]
      737 LOADK                            R20 K107 [0.5]
      738 LOADN                            R21 0
      739 LOADK                            R22 K125 [0.4]
      740 LOADN                            R23 0
      741 CALL                             R19 4 1
      742 SETTABLEKS                       R19 R18 K32 ["Position"]
      744 LOADN                            R19 24
      745 SETTABLEKS                       R19 R18 K64 ["TextSize"]
      747 LOADN                            R19 1
      748 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      750 GETIMPORT                        R19 K72 [Enum.TextXAlignment.Center]
      752 SETTABLEKS                       R19 R18 K65 ["TextXAlignment"]
      754 GETTABLEKS                       R19 R2 K75 ["successText"]
      756 GETTABLEKS                       R19 R19 K76 ["text"]
      758 SETTABLEKS                       R19 R18 K67 ["TextColor3"]
      760 GETTABLEKS                       R19 R2 K75 ["successText"]
      762 GETTABLEKS                       R19 R19 K77 ["font"]
      764 SETTABLEKS                       R19 R18 K68 ["Font"]
      766 CALL                             R16 2 1
      767 SETTABLEKS                       R16 R15 K9 ["Success"]
      769 GETUPVAL                         R16 0
      770 GETTABLEKS                       R16 R16 K18 ["createElement"]
      772 LOADK                            R17 K61 ["TextLabel"]
      773 DUPTABLE                         R18 K122 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      774 SETTABLEKS                       R7 R18 K62 ["Text"]
      776 GETIMPORT                        R19 K26 [UDim2.new]
      778 LOADK                            R20 K107 [0.5]
      779 LOADN                            R21 0
      780 LOADK                            R22 K107 [0.5]
      781 LOADN                            R23 0
      782 CALL                             R19 4 1
      783 SETTABLEKS                       R19 R18 K32 ["Position"]
      785 LOADN                            R19 18
      786 SETTABLEKS                       R19 R18 K64 ["TextSize"]
      788 LOADN                            R19 1
      789 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      791 GETTABLEKS                       R19 R2 K89 ["header"]
      793 GETTABLEKS                       R19 R19 K76 ["text"]
      795 SETTABLEKS                       R19 R18 K67 ["TextColor3"]
      797 GETIMPORT                        R19 K72 [Enum.TextXAlignment.Center]
      799 SETTABLEKS                       R19 R18 K65 ["TextXAlignment"]
      801 GETTABLEKS                       R19 R2 K89 ["header"]
      803 GETTABLEKS                       R19 R19 K77 ["font"]
      805 SETTABLEKS                       R19 R18 K68 ["Font"]
      807 CALL                             R16 2 1
      808 SETTABLEKS                       R16 R15 K117 ["ParentGame"]
      810 GETUPVAL                         R16 0
      811 GETTABLEKS                       R16 R16 K18 ["createElement"]
      813 GETUPVAL                         R17 5
      814 DUPTABLE                         R18 K128 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
      815 GETIMPORT                        R19 K106 [Vector2.new]
      817 LOADK                            R20 K107 [0.5]
      818 LOADK                            R21 K107 [0.5]
      819 CALL                             R19 2 1
      820 SETTABLEKS                       R19 R18 K98 ["AnchorPoint"]
      822 SETTABLEKS                       R4 R18 K126 ["OnClick"]
      824 GETIMPORT                        R19 K26 [UDim2.new]
      826 LOADK                            R20 K107 [0.5]
      827 LOADN                            R21 0
      828 LOADK                            R22 K129 [0.9]
      829 LOADN                            R23 0
      830 CALL                             R19 4 1
      831 SETTABLEKS                       R19 R18 K32 ["Position"]
      833 GETIMPORT                        R19 K26 [UDim2.new]
      835 LOADN                            R20 0
      836 LOADN                            R21 150
      837 LOADN                            R22 0
      838 LOADN                            R23 30
      839 CALL                             R19 4 1
      840 SETTABLEKS                       R19 R18 K20 ["Size"]
      842 LOADK                            R19 K130 ["Round"]
      843 SETTABLEKS                       R19 R18 K127 ["Style"]
      845 LOADK                            R21 K131 ["Button"]
      846 LOADK                            R22 K132 ["Close"]
      847 NAMECALL                         R19 R3 K8 ["getText"]
      849 CALL                             R19 3 1
      850 SETTABLEKS                       R19 R18 K62 ["Text"]
      852 CALL                             R16 2 1
      853 SETTABLEKS                       R16 R15 K118 ["CloseButton"]
      855 CALL                             R12 3 1
      856 RETURN                           R12 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["PublishedPlace"]
        2 GETTABLEKS                       R2 R2 K1 ["publishInfo"]
        4 DUPTABLE                         R3 K6 [{"Id", "Name", "ParentGameName", "ParentGameId"}]
        5 GETTABLEKS                       R4 R2 K7 ["id"]
        7 SETTABLEKS                       R4 R3 K2 ["Id"]
        9 GETTABLEKS                       R4 R2 K8 ["name"]
       11 SETTABLEKS                       R4 R3 K3 ["Name"]
       13 GETTABLEKS                       R4 R2 K9 ["parentGameName"]
       15 SETTABLEKS                       R4 R3 K4 ["ParentGameName"]
       17 GETTABLEKS                       R4 R2 K10 ["parentGameId"]
       19 SETTABLEKS                       R4 R3 K5 ["ParentGameId"]
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioPublishService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["TextService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Packages"]
       46 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K15 ["Enums"]
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R0 K10 ["Packages"]
       55 GETTABLEKS                       R9 R9 K16 ["_Index"]
       57 GETTABLEKS                       R9 R9 K17 ["FoundationImages"]
       59 GETTABLEKS                       R9 R9 K17 ["FoundationImages"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K18 ["Images"]
       64 GETTABLEKS                       R10 R3 K19 ["ContextServices"]
       66 GETTABLEKS                       R11 R10 K20 ["withContext"]
       68 GETTABLEKS                       R12 R3 K21 ["UI"]
       70 GETTABLEKS                       R13 R12 K22 ["Button"]
       72 GETIMPORT                        R14 K4 [game]
       74 LOADK                            R16 K23 ["ContentProvider"]
       75 NAMECALL                         R14 R14 K6 ["GetService"]
       77 CALL                             R14 2 1
       78 GETTABLEKS                       R15 R12 K24 ["TextWithInlineLink"]
       80 GETIMPORT                        R16 K9 [require]
       82 GETTABLEKS                       R17 R0 K10 ["Packages"]
       84 GETTABLEKS                       R17 R17 K25 ["Cryo"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K9 [require]
       89 GETTABLEKS                       R18 R0 K26 ["Src"]
       91 GETTABLEKS                       R18 R18 K27 ["Util"]
       93 GETTABLEKS                       R18 R18 K28 ["BrowserUtils"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R17 R17 K29 ["OpenExperienceQuestionnaire"]
       98 GETIMPORT                        R18 K9 [require]
      100 GETTABLEKS                       R19 R0 K26 ["Src"]
      102 GETTABLEKS                       R19 R19 K27 ["Util"]
      104 GETTABLEKS                       R19 R19 K28 ["BrowserUtils"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R18 R18 K30 ["OpenCreatorHubSettings"]
      109 GETIMPORT                        R19 K9 [require]
      111 GETTABLEKS                       R20 R0 K26 ["Src"]
      113 GETTABLEKS                       R20 R20 K31 ["Components"]
      115 GETTABLEKS                       R20 R20 K32 ["ButtonBar"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K9 [require]
      120 GETTABLEKS                       R21 R0 K26 ["Src"]
      122 GETTABLEKS                       R21 R21 K33 ["Network"]
      124 GETTABLEKS                       R21 R21 K34 ["Requests"]
      126 GETTABLEKS                       R21 R21 K35 ["ApiFetchGameAgeRecommendation"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K9 [require]
      131 GETTABLEKS                       R22 R0 K26 ["Src"]
      133 GETTABLEKS                       R22 R22 K33 ["Network"]
      135 GETTABLEKS                       R22 R22 K34 ["Requests"]
      137 GETTABLEKS                       R22 R22 K36 ["ApiFetchGameConfiguration"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K9 [require]
      142 GETTABLEKS                       R23 R0 K26 ["Src"]
      144 GETTABLEKS                       R23 R23 K37 ["Thunks"]
      146 GETTABLEKS                       R23 R23 K38 ["LoadGameConfiguration"]
      148 CALL                             R22 1 1
      149 GETTABLEKS                       R23 R4 K39 ["PureComponent"]
      151 LOADK                            R25 K40 ["ScreenPublishSuccessful"]
      152 NAMECALL                         R23 R23 K41 ["extend"]
      154 CALL                             R23 2 1
      155 DUPCLOSURE                       R24 K42 [PROTO_0]
      156 SETTABLEKS                       R24 R23 K43 ["init"]
      158 DUPCLOSURE                       R24 K44 [PROTO_6]
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R21
      162 SETTABLEKS                       R24 R23 K45 ["didMount"]
      164 DUPCLOSURE                       R24 K46 [PROTO_7]
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R24 R23 K47 ["willUnmount"]
      168 DUPCLOSURE                       R24 K48 [PROTO_9]
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R24 R23 K49 ["render"]
      177 MOVE                             R24 R11
      178 DUPTABLE                         R25 K52 [{"Stylizer", "Localization"}]
      179 GETTABLEKS                       R26 R10 K50 ["Stylizer"]
      181 SETTABLEKS                       R26 R25 K50 ["Stylizer"]
      183 GETTABLEKS                       R26 R10 K51 ["Localization"]
      185 SETTABLEKS                       R26 R25 K51 ["Localization"]
      187 CALL                             R24 1 1
      188 MOVE                             R25 R23
      189 CALL                             R24 1 1
      190 MOVE                             R23 R24
      191 DUPCLOSURE                       R24 K53 [PROTO_10]
      192 GETTABLEKS                       R25 R5 K54 ["connect"]
      194 MOVE                             R26 R24
      195 CALL                             R25 1 1
      196 MOVE                             R26 R23
      197 CALL                             R25 1 -1
      198 RETURN                           R25 -1
