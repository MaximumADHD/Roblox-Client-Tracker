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
        3 JUMPIFNOT                        R1 ; [+28]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K2 [{"isPublic"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R5 R0 K3 ["audiences"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K1 ["isPublic"]
       15 NAMECALL                         R1 R1 K4 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 DUPTABLE                         R3 K2 [{"isPublic"}]
       21 GETTABLEKS                       R5 R0 K5 ["privacyType"]
       23 JUMPIFEQKS                       R5 K6 ["Public"] ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K1 ["isPublic"]
       29 NAMECALL                         R1 R1 K4 ["setState"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

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
       20 JUMPIFNOT                        R1 ; [+26]
       21 JUMPIFEQKN                       R1 K5 [0] ; [+25]
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
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 DUPCLOSURE                       R5 K10 [PROTO_5]
       44 NAMECALL                         R2 R2 K9 ["andThen"]
       46 CALL                             R2 3 0
       47 CLOSEUPVALS                      R1
       48 RETURN                           R0 0

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
       67 JUMPIFNOT                        R13 ; [+427]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K18 ["createElement"]
       71 LOADK                            R13 K19 ["Frame"]
       72 DUPTABLE                         R14 K24 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       73 GETIMPORT                        R15 K27 [UDim2.new]
       75 LOADN                            R16 1
       76 LOADN                            R17 0
       77 LOADN                            R18 1
       78 LOADN                            R19 0
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K20 ["Size"]
       82 GETTABLEKS                       R15 R2 K28 ["backgroundColor"]
       84 SETTABLEKS                       R15 R14 K21 ["BackgroundColor3"]
       86 DUPTABLE                         R15 K31 [{"CenterStack", "BottomBar"}]
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R16 R16 K18 ["createElement"]
       90 LOADK                            R17 K19 ["Frame"]
       91 DUPTABLE                         R18 K35 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
       92 GETIMPORT                        R19 K27 [UDim2.new]
       94 LOADN                            R20 1
       95 LOADN                            R21 0
       96 LOADN                            R22 1
       97 GETTABLEKS                       R24 R2 K36 ["FOOTER_HEIGHT"]
       99 MINUS                            R23 R24
      100 CALL                             R19 4 1
      101 SETTABLEKS                       R19 R18 K20 ["Size"]
      103 GETIMPORT                        R19 K27 [UDim2.new]
      105 LOADN                            R20 0
      106 LOADN                            R21 0
      107 LOADN                            R22 0
      108 LOADN                            R23 0
      109 CALL                             R19 4 1
      110 SETTABLEKS                       R19 R18 K34 ["Position"]
      112 DUPTABLE                         R19 K45 [{"Layout", "Success", "SpacerAfterSuccess", "Icon", "SpacerAfterIcon", "Name", "SpacerAfterName", "Rating", "SpacerAfterRating", "Description"}]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R20 R20 K18 ["createElement"]
      116 LOADK                            R21 K46 ["UIListLayout"]
      117 DUPTABLE                         R22 K52 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      118 GETIMPORT                        R23 K55 [Enum.FillDirection.Vertical]
      120 SETTABLEKS                       R23 R22 K47 ["FillDirection"]
      122 GETIMPORT                        R23 K57 [Enum.HorizontalAlignment.Center]
      124 SETTABLEKS                       R23 R22 K48 ["HorizontalAlignment"]
      126 GETIMPORT                        R23 K58 [Enum.VerticalAlignment.Center]
      128 SETTABLEKS                       R23 R22 K49 ["VerticalAlignment"]
      130 GETIMPORT                        R23 K60 [UDim.new]
      132 LOADN                            R24 0
      133 LOADN                            R25 0
      134 CALL                             R23 2 1
      135 SETTABLEKS                       R23 R22 K50 ["Padding"]
      137 GETIMPORT                        R23 K62 [Enum.SortOrder.LayoutOrder]
      139 SETTABLEKS                       R23 R22 K51 ["SortOrder"]
      141 CALL                             R20 2 1
      142 SETTABLEKS                       R20 R19 K37 ["Layout"]
      144 GETUPVAL                         R20 0
      145 GETTABLEKS                       R20 R20 K18 ["createElement"]
      147 LOADK                            R21 K63 ["TextLabel"]
      148 DUPTABLE                         R22 K72 [{["LayoutOrder"] = 1, ["Text"], ["AutomaticSize"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Font"]}]
      149 SETTABLEKS                       R8 R22 K64 ["Text"]
      151 GETIMPORT                        R23 K74 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R23 R22 K65 ["AutomaticSize"]
      155 GETIMPORT                        R23 K75 [Enum.TextXAlignment.Center]
      157 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      159 GETIMPORT                        R23 K77 [Enum.TextYAlignment.Top]
      161 SETTABLEKS                       R23 R22 K69 ["TextYAlignment"]
      163 GETTABLEKS                       R23 R2 K78 ["successText"]
      165 GETTABLEKS                       R23 R23 K79 ["text"]
      167 SETTABLEKS                       R23 R22 K70 ["TextColor3"]
      169 GETTABLEKS                       R23 R2 K78 ["successText"]
      171 GETTABLEKS                       R23 R23 K80 ["font"]
      173 SETTABLEKS                       R23 R22 K71 ["Font"]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K9 ["Success"]
      178 GETUPVAL                         R20 0
      179 GETTABLEKS                       R20 R20 K18 ["createElement"]
      181 LOADK                            R21 K19 ["Frame"]
      182 DUPTABLE                         R22 K82 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"]}]
      183 GETIMPORT                        R23 K27 [UDim2.new]
      185 LOADN                            R24 0
      186 LOADN                            R25 0
      187 LOADN                            R26 0
      188 LOADN                            R27 28
      189 CALL                             R23 4 1
      190 SETTABLEKS                       R23 R22 K20 ["Size"]
      192 CALL                             R20 2 1
      193 SETTABLEKS                       R20 R19 K38 ["SpacerAfterSuccess"]
      195 GETUPVAL                         R20 0
      196 GETTABLEKS                       R20 R20 K18 ["createElement"]
      198 LOADK                            R21 K83 ["ImageLabel"]
      199 DUPTABLE                         R22 K86 [{["LayoutOrder"] = 3, ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["BorderSizePixel"] = 0}]
      200 GETIMPORT                        R23 K27 [UDim2.new]
      202 LOADN                            R24 0
      203 LOADN                            R25 150
      204 LOADN                            R26 0
      205 LOADN                            R27 150
      206 CALL                             R23 4 1
      207 SETTABLEKS                       R23 R22 K20 ["Size"]
      209 GETTABLEKS                       R24 R0 K12 ["state"]
      211 GETTABLEKS                       R24 R24 K87 ["assetFetchStatus"]
      213 GETIMPORT                        R25 K89 [Enum.AssetFetchStatus.Success]
      215 JUMPIFNOTEQ                      R24 R25 ; [+4]
      217 GETTABLEKS                       R23 R0 K90 ["thumbnailUrl"]
      219 JUMPIF                           R23 ; [+4]
      220 GETTABLEKS                       R23 R2 K91 ["icons"]
      222 GETTABLEKS                       R23 R23 K92 ["thumbnailPlaceHolder"]
      224 SETTABLEKS                       R23 R22 K85 ["Image"]
      226 CALL                             R20 2 1
      227 SETTABLEKS                       R20 R19 K39 ["Icon"]
      229 GETUPVAL                         R20 0
      230 GETTABLEKS                       R20 R20 K18 ["createElement"]
      232 LOADK                            R21 K19 ["Frame"]
      233 DUPTABLE                         R22 K94 [{["LayoutOrder"] = 4, ["BackgroundTransparency"] = 1, ["Size"]}]
      234 GETIMPORT                        R23 K27 [UDim2.new]
      236 LOADN                            R24 0
      237 LOADN                            R25 0
      238 LOADN                            R26 0
      239 LOADN                            R27 24
      240 CALL                             R23 4 1
      241 SETTABLEKS                       R23 R22 K20 ["Size"]
      243 CALL                             R20 2 1
      244 SETTABLEKS                       R20 R19 K40 ["SpacerAfterIcon"]
      246 GETUPVAL                         R20 0
      247 GETTABLEKS                       R20 R20 K18 ["createElement"]
      249 LOADK                            R21 K63 ["TextLabel"]
      250 DUPTABLE                         R22 K97 [{["LayoutOrder"] = 5, ["Text"], ["AutomaticSize"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      251 SETTABLEKS                       R5 R22 K64 ["Text"]
      253 GETIMPORT                        R23 K74 [Enum.AutomaticSize.XY]
      255 SETTABLEKS                       R23 R22 K65 ["AutomaticSize"]
      257 GETTABLEKS                       R23 R2 K98 ["header"]
      259 GETTABLEKS                       R23 R23 K79 ["text"]
      261 SETTABLEKS                       R23 R22 K70 ["TextColor3"]
      263 GETIMPORT                        R23 K75 [Enum.TextXAlignment.Center]
      265 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      267 GETTABLEKS                       R23 R2 K98 ["header"]
      269 GETTABLEKS                       R23 R23 K80 ["font"]
      271 SETTABLEKS                       R23 R22 K71 ["Font"]
      273 CALL                             R20 2 1
      274 SETTABLEKS                       R20 R19 K4 ["Name"]
      276 GETUPVAL                         R20 0
      277 GETTABLEKS                       R20 R20 K18 ["createElement"]
      279 LOADK                            R21 K19 ["Frame"]
      280 DUPTABLE                         R22 K100 [{["LayoutOrder"] = 6, ["BackgroundTransparency"] = 1, ["Size"]}]
      281 GETIMPORT                        R23 K27 [UDim2.new]
      283 LOADN                            R24 0
      284 LOADN                            R25 0
      285 LOADN                            R26 0
      286 LOADN                            R27 6
      287 CALL                             R23 4 1
      288 SETTABLEKS                       R23 R22 K20 ["Size"]
      290 CALL                             R20 2 1
      291 SETTABLEKS                       R20 R19 K41 ["SpacerAfterName"]
      293 GETUPVAL                         R20 0
      294 GETTABLEKS                       R20 R20 K18 ["createElement"]
      296 LOADK                            R21 K63 ["TextLabel"]
      297 DUPTABLE                         R22 K102 [{["LayoutOrder"] = 7, ["Text"], ["AutomaticSize"], ["TextSize"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      298 SETTABLEKS                       R11 R22 K64 ["Text"]
      300 GETIMPORT                        R23 K74 [Enum.AutomaticSize.XY]
      302 SETTABLEKS                       R23 R22 K65 ["AutomaticSize"]
      304 GETTABLEKS                       R24 R2 K103 ["fontStyle"]
      306 GETTABLEKS                       R24 R24 K104 ["Subtext"]
      308 GETTABLEKS                       R24 R24 K66 ["TextSize"]
      310 ORK                              R23 R24 K96 [20]
      311 SETTABLEKS                       R23 R22 K66 ["TextSize"]
      313 JUMPIFNOT                        R9 ; [+9]
      314 JUMPIFNOT                        R10 ; [+3]
      315 GETTABLEKS                       R23 R2 K105 ["errorColor"]
      317 JUMPIF                           R23 ; [+9]
      318 GETTABLEKS                       R23 R2 K78 ["successText"]
      320 GETTABLEKS                       R23 R23 K79 ["text"]
      322 JUMPIF                           R23 ; [+4]
      323 GETTABLEKS                       R23 R2 K98 ["header"]
      325 GETTABLEKS                       R23 R23 K79 ["text"]
      327 SETTABLEKS                       R23 R22 K70 ["TextColor3"]
      329 GETIMPORT                        R23 K75 [Enum.TextXAlignment.Center]
      331 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      333 GETTABLEKS                       R23 R2 K103 ["fontStyle"]
      335 GETTABLEKS                       R23 R23 K104 ["Subtext"]
      337 GETTABLEKS                       R23 R23 K71 ["Font"]
      339 JUMPIF                           R23 ; [+2]
      340 GETTABLEKS                       R23 R2 K80 ["font"]
      342 SETTABLEKS                       R23 R22 K71 ["Font"]
      344 CALL                             R20 2 1
      345 SETTABLEKS                       R20 R19 K42 ["Rating"]
      347 GETUPVAL                         R20 0
      348 GETTABLEKS                       R20 R20 K18 ["createElement"]
      350 LOADK                            R21 K19 ["Frame"]
      351 DUPTABLE                         R22 K107 [{["LayoutOrder"] = 8, ["BackgroundTransparency"] = 1, ["Size"]}]
      352 GETIMPORT                        R23 K27 [UDim2.new]
      354 LOADN                            R24 0
      355 LOADN                            R25 0
      356 LOADN                            R26 0
      357 LOADN                            R27 30
      358 CALL                             R23 4 1
      359 SETTABLEKS                       R23 R22 K20 ["Size"]
      361 CALL                             R20 2 1
      362 SETTABLEKS                       R20 R19 K43 ["SpacerAfterRating"]
      364 GETUPVAL                         R20 0
      365 GETTABLEKS                       R20 R20 K18 ["createElement"]
      367 LOADK                            R21 K63 ["TextLabel"]
      368 DUPTABLE                         R22 K111 [{["LayoutOrder"] = 9, ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["TextSize"], ["TextColor3"]}]
      369 GETIMPORT                        R23 K74 [Enum.AutomaticSize.XY]
      371 SETTABLEKS                       R23 R22 K65 ["AutomaticSize"]
      373 JUMPIFNOT                        R9 ; [+7]
      374 JUMPIFNOT                        R10 ; [+6]
      375 LOADK                            R25 K6 ["PublishSuccess"]
      376 LOADK                            R26 K112 ["PostPublishInfoUnrated"]
      377 NAMECALL                         R23 R3 K8 ["getText"]
      379 CALL                             R23 3 1
      380 JUMP                             ; [+5]
      381 LOADK                            R25 K6 ["PublishSuccess"]
      382 LOADK                            R26 K113 ["PostPublishInfo"]
      383 NAMECALL                         R23 R3 K8 ["getText"]
      385 CALL                             R23 3 1
      386 SETTABLEKS                       R23 R22 K64 ["Text"]
      388 GETIMPORT                        R23 K75 [Enum.TextXAlignment.Center]
      390 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      392 GETIMPORT                        R23 K77 [Enum.TextYAlignment.Top]
      394 SETTABLEKS                       R23 R22 K69 ["TextYAlignment"]
      396 GETTABLEKS                       R23 R2 K103 ["fontStyle"]
      398 GETTABLEKS                       R23 R23 K104 ["Subtext"]
      400 GETTABLEKS                       R23 R23 K71 ["Font"]
      402 JUMPIF                           R23 ; [+2]
      403 GETTABLEKS                       R23 R2 K80 ["font"]
      405 SETTABLEKS                       R23 R22 K71 ["Font"]
      407 GETTABLEKS                       R23 R2 K103 ["fontStyle"]
      409 GETTABLEKS                       R23 R23 K104 ["Subtext"]
      411 GETTABLEKS                       R23 R23 K66 ["TextSize"]
      413 SETTABLEKS                       R23 R22 K66 ["TextSize"]
      415 GETTABLEKS                       R23 R2 K103 ["fontStyle"]
      417 GETTABLEKS                       R23 R23 K104 ["Subtext"]
      419 GETTABLEKS                       R23 R23 K70 ["TextColor3"]
      421 SETTABLEKS                       R23 R22 K70 ["TextColor3"]
      423 CALL                             R20 2 1
      424 SETTABLEKS                       R20 R19 K44 ["Description"]
      426 CALL                             R16 3 1
      427 SETTABLEKS                       R16 R15 K29 ["CenterStack"]
      429 GETUPVAL                         R16 0
      430 GETTABLEKS                       R16 R16 K18 ["createElement"]
      432 GETUPVAL                         R17 1
      433 DUPTABLE                         R18 K120 [{["AnchorPoint"], ["Position"], ["HorizontalAlignment"], ["LocalizationNamespace"] = "PublishSuccess", ["AutoWidth"] = True, ["Spacing"] = 8, ["Buttons"], ["buttonActivated"]}]
      434 GETIMPORT                        R19 K122 [Vector2.new]
      436 LOADK                            R20 K123 [0.5]
      437 LOADN                            R21 1
      438 CALL                             R19 2 1
      439 SETTABLEKS                       R19 R18 K114 ["AnchorPoint"]
      441 GETIMPORT                        R19 K27 [UDim2.new]
      443 LOADK                            R20 K123 [0.5]
      444 LOADN                            R21 0
      445 LOADN                            R22 1
      446 LOADN                            R23 -10
      447 CALL                             R19 4 1
      448 SETTABLEKS                       R19 R18 K34 ["Position"]
      450 GETIMPORT                        R19 K57 [Enum.HorizontalAlignment.Center]
      452 SETTABLEKS                       R19 R18 K48 ["HorizontalAlignment"]
      454 JUMPIFNOT                        R9 ; [+13]
      455 JUMPIFNOT                        R10 ; [+12]
      456 NEWTABLE                         R19 0 2
      458 DUPTABLE                         R20 K128 [{["Name"] = "Done", ["Default"] = False, ["Value"] = False}]
      459 DUPTABLE                         R21 K131 [{["Name"] = "ViewQuestionnaire", ["Default"] = True, ["Value"] = True, ["LeftIcon"]}]
      460 GETUPVAL                         R23 2
      461 GETTABLEKS                       R22 R23 K132 ["icons/navigation/externallink"]
      463 SETTABLEKS                       R22 R21 K130 ["LeftIcon"]
      465 SETLIST                          R19 R20 2 [1]
      467 JUMP                             ; [+11]
      468 NEWTABLE                         R19 0 2
      470 DUPTABLE                         R20 K134 [{["Name"] = "ViewOnCreatorHub", ["Default"] = True, ["Value"] = True, ["LeftIcon"]}]
      471 GETUPVAL                         R22 2
      472 GETTABLEKS                       R21 R22 K132 ["icons/navigation/externallink"]
      474 SETTABLEKS                       R21 R20 K130 ["LeftIcon"]
      476 DUPTABLE                         R21 K128 [{["Name"] = "Done", ["Default"] = False, ["Value"] = False}]
      477 SETLIST                          R19 R20 2 [1]
      479 SETTABLEKS                       R19 R18 K118 ["Buttons"]
      481 NEWCLOSURE                       R19 P0
      482 CAPTURE                          VAL R9
      483 CAPTURE                          VAL R10
      484 CAPTURE                          UPVAL U3
      485 CAPTURE                          VAL R1
      486 CAPTURE                          VAL R4
      487 CAPTURE                          UPVAL U4
      488 SETTABLEKS                       R19 R18 K119 ["buttonActivated"]
      490 CALL                             R16 2 1
      491 SETTABLEKS                       R16 R15 K30 ["BottomBar"]
      493 CALL                             R12 3 1
      494 RETURN                           R12 1
      495 GETUPVAL                         R12 0
      496 GETTABLEKS                       R12 R12 K18 ["createElement"]
      498 LOADK                            R13 K19 ["Frame"]
      499 DUPTABLE                         R14 K24 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      500 GETIMPORT                        R15 K27 [UDim2.new]
      502 LOADN                            R16 1
      503 LOADN                            R17 0
      504 LOADN                            R18 1
      505 LOADN                            R19 0
      506 CALL                             R15 4 1
      507 SETTABLEKS                       R15 R14 K20 ["Size"]
      509 GETTABLEKS                       R15 R2 K28 ["backgroundColor"]
      511 SETTABLEKS                       R15 R14 K21 ["BackgroundColor3"]
      513 DUPTABLE                         R15 K137 [{"Icon", "Name", "Success", "ParentGame", "CloseButton"}]
      514 GETUPVAL                         R16 0
      515 GETTABLEKS                       R16 R16 K18 ["createElement"]
      517 LOADK                            R17 K83 ["ImageLabel"]
      518 DUPTABLE                         R18 K138 [{["Position"], ["AnchorPoint"], ["Size"], ["Image"], ["BorderSizePixel"] = 0}]
      519 GETIMPORT                        R19 K27 [UDim2.new]
      521 LOADK                            R20 K123 [0.5]
      522 LOADN                            R21 0
      523 LOADK                            R22 K139 [0.2]
      524 LOADN                            R23 0
      525 CALL                             R19 4 1
      526 SETTABLEKS                       R19 R18 K34 ["Position"]
      528 GETIMPORT                        R19 K122 [Vector2.new]
      530 LOADK                            R20 K123 [0.5]
      531 LOADK                            R21 K123 [0.5]
      532 CALL                             R19 2 1
      533 SETTABLEKS                       R19 R18 K114 ["AnchorPoint"]
      535 GETIMPORT                        R19 K27 [UDim2.new]
      537 LOADN                            R20 0
      538 LOADN                            R21 150
      539 LOADN                            R22 0
      540 LOADN                            R23 150
      541 CALL                             R19 4 1
      542 SETTABLEKS                       R19 R18 K20 ["Size"]
      544 GETTABLEKS                       R20 R0 K12 ["state"]
      546 GETTABLEKS                       R20 R20 K87 ["assetFetchStatus"]
      548 GETIMPORT                        R21 K89 [Enum.AssetFetchStatus.Success]
      550 JUMPIFNOTEQ                      R20 R21 ; [+4]
      552 GETTABLEKS                       R19 R0 K90 ["thumbnailUrl"]
      554 JUMPIF                           R19 ; [+4]
      555 GETTABLEKS                       R19 R2 K91 ["icons"]
      557 GETTABLEKS                       R19 R19 K92 ["thumbnailPlaceHolder"]
      559 SETTABLEKS                       R19 R18 K85 ["Image"]
      561 CALL                             R16 2 1
      562 SETTABLEKS                       R16 R15 K39 ["Icon"]
      564 GETUPVAL                         R16 0
      565 GETTABLEKS                       R16 R16 K18 ["createElement"]
      567 LOADK                            R17 K63 ["TextLabel"]
      568 DUPTABLE                         R18 K140 [{["Text"], ["Position"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      569 SETTABLEKS                       R5 R18 K64 ["Text"]
      571 GETIMPORT                        R19 K27 [UDim2.new]
      573 LOADK                            R20 K123 [0.5]
      574 LOADN                            R21 0
      575 LOADK                            R22 K141 [0.35]
      576 LOADN                            R23 0
      577 CALL                             R19 4 1
      578 SETTABLEKS                       R19 R18 K34 ["Position"]
      580 GETTABLEKS                       R19 R2 K98 ["header"]
      582 GETTABLEKS                       R19 R19 K79 ["text"]
      584 SETTABLEKS                       R19 R18 K70 ["TextColor3"]
      586 GETIMPORT                        R19 K75 [Enum.TextXAlignment.Center]
      588 SETTABLEKS                       R19 R18 K68 ["TextXAlignment"]
      590 GETTABLEKS                       R19 R2 K98 ["header"]
      592 GETTABLEKS                       R19 R19 K80 ["font"]
      594 SETTABLEKS                       R19 R18 K71 ["Font"]
      596 CALL                             R16 2 1
      597 SETTABLEKS                       R16 R15 K4 ["Name"]
      599 GETUPVAL                         R16 0
      600 GETTABLEKS                       R16 R16 K18 ["createElement"]
      602 LOADK                            R17 K63 ["TextLabel"]
      603 DUPTABLE                         R18 K142 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Font"]}]
      604 SETTABLEKS                       R8 R18 K64 ["Text"]
      606 GETIMPORT                        R19 K27 [UDim2.new]
      608 LOADK                            R20 K123 [0.5]
      609 LOADN                            R21 0
      610 LOADK                            R22 K143 [0.4]
      611 LOADN                            R23 0
      612 CALL                             R19 4 1
      613 SETTABLEKS                       R19 R18 K34 ["Position"]
      615 GETIMPORT                        R19 K75 [Enum.TextXAlignment.Center]
      617 SETTABLEKS                       R19 R18 K68 ["TextXAlignment"]
      619 GETTABLEKS                       R19 R2 K78 ["successText"]
      621 GETTABLEKS                       R19 R19 K79 ["text"]
      623 SETTABLEKS                       R19 R18 K70 ["TextColor3"]
      625 GETTABLEKS                       R19 R2 K78 ["successText"]
      627 GETTABLEKS                       R19 R19 K80 ["font"]
      629 SETTABLEKS                       R19 R18 K71 ["Font"]
      631 CALL                             R16 2 1
      632 SETTABLEKS                       R16 R15 K9 ["Success"]
      634 GETUPVAL                         R16 0
      635 GETTABLEKS                       R16 R16 K18 ["createElement"]
      637 LOADK                            R17 K63 ["TextLabel"]
      638 DUPTABLE                         R18 K145 [{["Text"], ["Position"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      639 SETTABLEKS                       R7 R18 K64 ["Text"]
      641 GETIMPORT                        R19 K27 [UDim2.new]
      643 LOADK                            R20 K123 [0.5]
      644 LOADN                            R21 0
      645 LOADK                            R22 K123 [0.5]
      646 LOADN                            R23 0
      647 CALL                             R19 4 1
      648 SETTABLEKS                       R19 R18 K34 ["Position"]
      650 GETTABLEKS                       R19 R2 K98 ["header"]
      652 GETTABLEKS                       R19 R19 K79 ["text"]
      654 SETTABLEKS                       R19 R18 K70 ["TextColor3"]
      656 GETIMPORT                        R19 K75 [Enum.TextXAlignment.Center]
      658 SETTABLEKS                       R19 R18 K68 ["TextXAlignment"]
      660 GETTABLEKS                       R19 R2 K98 ["header"]
      662 GETTABLEKS                       R19 R19 K80 ["font"]
      664 SETTABLEKS                       R19 R18 K71 ["Font"]
      666 CALL                             R16 2 1
      667 SETTABLEKS                       R16 R15 K135 ["ParentGame"]
      669 GETUPVAL                         R16 0
      670 GETTABLEKS                       R16 R16 K18 ["createElement"]
      672 GETUPVAL                         R17 5
      673 DUPTABLE                         R18 K149 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
      674 GETIMPORT                        R19 K122 [Vector2.new]
      676 LOADK                            R20 K123 [0.5]
      677 LOADK                            R21 K123 [0.5]
      678 CALL                             R19 2 1
      679 SETTABLEKS                       R19 R18 K114 ["AnchorPoint"]
      681 SETTABLEKS                       R4 R18 K146 ["OnClick"]
      683 GETIMPORT                        R19 K27 [UDim2.new]
      685 LOADK                            R20 K123 [0.5]
      686 LOADN                            R21 0
      687 LOADK                            R22 K150 [0.9]
      688 LOADN                            R23 0
      689 CALL                             R19 4 1
      690 SETTABLEKS                       R19 R18 K34 ["Position"]
      692 GETIMPORT                        R19 K27 [UDim2.new]
      694 LOADN                            R20 0
      695 LOADN                            R21 150
      696 LOADN                            R22 0
      697 LOADN                            R23 30
      698 CALL                             R19 4 1
      699 SETTABLEKS                       R19 R18 K20 ["Size"]
      701 LOADK                            R21 K151 ["Button"]
      702 LOADK                            R22 K152 ["Close"]
      703 NAMECALL                         R19 R3 K8 ["getText"]
      705 CALL                             R19 3 1
      706 SETTABLEKS                       R19 R18 K64 ["Text"]
      708 CALL                             R16 2 1
      709 SETTABLEKS                       R16 R15 K136 ["CloseButton"]
      711 CALL                             R12 3 1
      712 RETURN                           R12 1

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
      149 GETIMPORT                        R23 K9 [require]
      151 GETTABLEKS                       R24 R0 K26 ["Src"]
      153 GETTABLEKS                       R24 R24 K27 ["Util"]
      155 GETTABLEKS                       R24 R24 K39 ["AudienceUtils"]
      157 CALL                             R23 1 1
      158 GETTABLEKS                       R24 R23 K40 ["audiencesIncludePublic"]
      160 GETIMPORT                        R25 K9 [require]
      162 GETTABLEKS                       R26 R0 K26 ["Src"]
      164 GETTABLEKS                       R26 R26 K41 ["Flags"]
      166 GETTABLEKS                       R26 R26 K42 ["getFFlagPublishPlaceAsAudiencesReplacement"]
      168 CALL                             R25 1 1
      169 GETTABLEKS                       R26 R4 K43 ["PureComponent"]
      171 LOADK                            R28 K44 ["ScreenPublishSuccessful"]
      172 NAMECALL                         R26 R26 K45 ["extend"]
      174 CALL                             R26 2 1
      175 DUPCLOSURE                       R27 K46 [PROTO_0]
      176 SETTABLEKS                       R27 R26 K47 ["init"]
      178 DUPCLOSURE                       R27 K48 [PROTO_6]
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R24
      184 SETTABLEKS                       R27 R26 K49 ["didMount"]
      186 DUPCLOSURE                       R27 K50 [PROTO_7]
      187 CAPTURE                          VAL R1
      188 SETTABLEKS                       R27 R26 K51 ["willUnmount"]
      190 DUPCLOSURE                       R27 K52 [PROTO_9]
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R13
      197 SETTABLEKS                       R27 R26 K53 ["render"]
      199 MOVE                             R27 R11
      200 DUPTABLE                         R28 K56 [{"Stylizer", "Localization"}]
      201 GETTABLEKS                       R29 R10 K54 ["Stylizer"]
      203 SETTABLEKS                       R29 R28 K54 ["Stylizer"]
      205 GETTABLEKS                       R29 R10 K55 ["Localization"]
      207 SETTABLEKS                       R29 R28 K55 ["Localization"]
      209 CALL                             R27 1 1
      210 MOVE                             R28 R26
      211 CALL                             R27 1 1
      212 MOVE                             R26 R27
      213 DUPCLOSURE                       R27 K57 [PROTO_10]
      214 GETTABLEKS                       R28 R5 K58 ["connect"]
      216 MOVE                             R29 R27
      217 CALL                             R28 1 1
      218 MOVE                             R29 R26
      219 CALL                             R28 1 -1
      220 RETURN                           R28 -1
