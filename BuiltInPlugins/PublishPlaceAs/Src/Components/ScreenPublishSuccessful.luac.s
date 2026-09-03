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
       15 JUMPIF                           R0 ; [+3]
       16 GETUPVAL                         R1 4
       17 CALL                             R1 0 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 5
       20 CALL                             R1 0 1
       21 JUMPIFNOT                        R1 ; [+16]
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K1 ["PublishStatusPanel"]
       27 NAMECALL                         R1 R1 K2 ["open"]
       29 CALL                             R1 1 1
       30 JUMPIF                           R1 ; [+13]
       31 GETUPVAL                         R1 6
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K0 ["Id"]
       35 CALL                             R1 1 1
       36 CALL                             R1 0 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 6
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K0 ["Id"]
       42 CALL                             R1 1 1
       43 CALL                             R1 0 0
       44 RETURN                           R0 0

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
       65 GETUPVAL                         R13 0
       66 CALL                             R13 0 1
       67 JUMPIFNOT                        R13 ; [+2]
       68 DUPTABLE                         R12 K22 [{["Name"] = "ViewPublishStatus", ["Default"] = True, ["Value"] = True}]
       69 JUMP                             ; [+6]
       70 DUPTABLE                         R12 K25 [{["Name"] = "ViewOnCreatorHub", ["Default"] = True, ["Value"] = True, ["LeftIcon"]}]
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R13 R14 K26 ["icons/navigation/externallink"]
       74 SETTABLEKS                       R13 R12 K24 ["LeftIcon"]
       76 GETTABLEKS                       R14 R1 K10 ["IsPublish"]
       78 JUMPIFNOT                        R14 ; [+423]
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K27 ["createElement"]
       82 LOADK                            R14 K28 ["Frame"]
       83 DUPTABLE                         R15 K33 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       84 GETIMPORT                        R16 K36 [UDim2.new]
       86 LOADN                            R17 1
       87 LOADN                            R18 0
       88 LOADN                            R19 1
       89 LOADN                            R20 0
       90 CALL                             R16 4 1
       91 SETTABLEKS                       R16 R15 K29 ["Size"]
       93 GETTABLEKS                       R16 R2 K37 ["backgroundColor"]
       95 SETTABLEKS                       R16 R15 K30 ["BackgroundColor3"]
       97 DUPTABLE                         R16 K40 [{"CenterStack", "BottomBar"}]
       98 GETUPVAL                         R17 2
       99 GETTABLEKS                       R17 R17 K27 ["createElement"]
      101 LOADK                            R18 K28 ["Frame"]
      102 DUPTABLE                         R19 K44 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
      103 GETIMPORT                        R20 K36 [UDim2.new]
      105 LOADN                            R21 1
      106 LOADN                            R22 0
      107 LOADN                            R23 1
      108 GETTABLEKS                       R25 R2 K45 ["FOOTER_HEIGHT"]
      110 MINUS                            R24 R25
      111 CALL                             R20 4 1
      112 SETTABLEKS                       R20 R19 K29 ["Size"]
      114 GETIMPORT                        R20 K36 [UDim2.new]
      116 LOADN                            R21 0
      117 LOADN                            R22 0
      118 LOADN                            R23 0
      119 LOADN                            R24 0
      120 CALL                             R20 4 1
      121 SETTABLEKS                       R20 R19 K43 ["Position"]
      123 DUPTABLE                         R20 K54 [{"Layout", "Success", "SpacerAfterSuccess", "Icon", "SpacerAfterIcon", "Name", "SpacerAfterName", "Rating", "SpacerAfterRating", "Description"}]
      124 GETUPVAL                         R21 2
      125 GETTABLEKS                       R21 R21 K27 ["createElement"]
      127 LOADK                            R22 K55 ["UIListLayout"]
      128 DUPTABLE                         R23 K61 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      129 GETIMPORT                        R24 K64 [Enum.FillDirection.Vertical]
      131 SETTABLEKS                       R24 R23 K56 ["FillDirection"]
      133 GETIMPORT                        R24 K66 [Enum.HorizontalAlignment.Center]
      135 SETTABLEKS                       R24 R23 K57 ["HorizontalAlignment"]
      137 GETIMPORT                        R24 K67 [Enum.VerticalAlignment.Center]
      139 SETTABLEKS                       R24 R23 K58 ["VerticalAlignment"]
      141 GETIMPORT                        R24 K69 [UDim.new]
      143 LOADN                            R25 0
      144 LOADN                            R26 0
      145 CALL                             R24 2 1
      146 SETTABLEKS                       R24 R23 K59 ["Padding"]
      148 GETIMPORT                        R24 K71 [Enum.SortOrder.LayoutOrder]
      150 SETTABLEKS                       R24 R23 K60 ["SortOrder"]
      152 CALL                             R21 2 1
      153 SETTABLEKS                       R21 R20 K46 ["Layout"]
      155 GETUPVAL                         R21 2
      156 GETTABLEKS                       R21 R21 K27 ["createElement"]
      158 LOADK                            R22 K72 ["TextLabel"]
      159 DUPTABLE                         R23 K81 [{["LayoutOrder"] = 1, ["Text"], ["AutomaticSize"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Font"]}]
      160 SETTABLEKS                       R8 R23 K73 ["Text"]
      162 GETIMPORT                        R24 K83 [Enum.AutomaticSize.XY]
      164 SETTABLEKS                       R24 R23 K74 ["AutomaticSize"]
      166 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      168 SETTABLEKS                       R24 R23 K77 ["TextXAlignment"]
      170 GETIMPORT                        R24 K86 [Enum.TextYAlignment.Top]
      172 SETTABLEKS                       R24 R23 K78 ["TextYAlignment"]
      174 GETTABLEKS                       R24 R2 K87 ["successText"]
      176 GETTABLEKS                       R24 R24 K88 ["text"]
      178 SETTABLEKS                       R24 R23 K79 ["TextColor3"]
      180 GETTABLEKS                       R24 R2 K87 ["successText"]
      182 GETTABLEKS                       R24 R24 K89 ["font"]
      184 SETTABLEKS                       R24 R23 K80 ["Font"]
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K9 ["Success"]
      189 GETUPVAL                         R21 2
      190 GETTABLEKS                       R21 R21 K27 ["createElement"]
      192 LOADK                            R22 K28 ["Frame"]
      193 DUPTABLE                         R23 K91 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"]}]
      194 GETIMPORT                        R24 K36 [UDim2.new]
      196 LOADN                            R25 0
      197 LOADN                            R26 0
      198 LOADN                            R27 0
      199 LOADN                            R28 28
      200 CALL                             R24 4 1
      201 SETTABLEKS                       R24 R23 K29 ["Size"]
      203 CALL                             R21 2 1
      204 SETTABLEKS                       R21 R20 K47 ["SpacerAfterSuccess"]
      206 GETUPVAL                         R21 2
      207 GETTABLEKS                       R21 R21 K27 ["createElement"]
      209 LOADK                            R22 K92 ["ImageLabel"]
      210 DUPTABLE                         R23 K95 [{["LayoutOrder"] = 3, ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["BorderSizePixel"] = 0}]
      211 GETIMPORT                        R24 K36 [UDim2.new]
      213 LOADN                            R25 0
      214 LOADN                            R26 150
      215 LOADN                            R27 0
      216 LOADN                            R28 150
      217 CALL                             R24 4 1
      218 SETTABLEKS                       R24 R23 K29 ["Size"]
      220 GETTABLEKS                       R25 R0 K12 ["state"]
      222 GETTABLEKS                       R25 R25 K96 ["assetFetchStatus"]
      224 GETIMPORT                        R26 K98 [Enum.AssetFetchStatus.Success]
      226 JUMPIFNOTEQ                      R25 R26 ; [+4]
      228 GETTABLEKS                       R24 R0 K99 ["thumbnailUrl"]
      230 JUMPIF                           R24 ; [+4]
      231 GETTABLEKS                       R24 R2 K100 ["icons"]
      233 GETTABLEKS                       R24 R24 K101 ["thumbnailPlaceHolder"]
      235 SETTABLEKS                       R24 R23 K94 ["Image"]
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K48 ["Icon"]
      240 GETUPVAL                         R21 2
      241 GETTABLEKS                       R21 R21 K27 ["createElement"]
      243 LOADK                            R22 K28 ["Frame"]
      244 DUPTABLE                         R23 K103 [{["LayoutOrder"] = 4, ["BackgroundTransparency"] = 1, ["Size"]}]
      245 GETIMPORT                        R24 K36 [UDim2.new]
      247 LOADN                            R25 0
      248 LOADN                            R26 0
      249 LOADN                            R27 0
      250 LOADN                            R28 24
      251 CALL                             R24 4 1
      252 SETTABLEKS                       R24 R23 K29 ["Size"]
      254 CALL                             R21 2 1
      255 SETTABLEKS                       R21 R20 K49 ["SpacerAfterIcon"]
      257 GETUPVAL                         R21 2
      258 GETTABLEKS                       R21 R21 K27 ["createElement"]
      260 LOADK                            R22 K72 ["TextLabel"]
      261 DUPTABLE                         R23 K106 [{["LayoutOrder"] = 5, ["Text"], ["AutomaticSize"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      262 SETTABLEKS                       R5 R23 K73 ["Text"]
      264 GETIMPORT                        R24 K83 [Enum.AutomaticSize.XY]
      266 SETTABLEKS                       R24 R23 K74 ["AutomaticSize"]
      268 GETTABLEKS                       R24 R2 K107 ["header"]
      270 GETTABLEKS                       R24 R24 K88 ["text"]
      272 SETTABLEKS                       R24 R23 K79 ["TextColor3"]
      274 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      276 SETTABLEKS                       R24 R23 K77 ["TextXAlignment"]
      278 GETTABLEKS                       R24 R2 K107 ["header"]
      280 GETTABLEKS                       R24 R24 K89 ["font"]
      282 SETTABLEKS                       R24 R23 K80 ["Font"]
      284 CALL                             R21 2 1
      285 SETTABLEKS                       R21 R20 K4 ["Name"]
      287 GETUPVAL                         R21 2
      288 GETTABLEKS                       R21 R21 K27 ["createElement"]
      290 LOADK                            R22 K28 ["Frame"]
      291 DUPTABLE                         R23 K109 [{["LayoutOrder"] = 6, ["BackgroundTransparency"] = 1, ["Size"]}]
      292 GETIMPORT                        R24 K36 [UDim2.new]
      294 LOADN                            R25 0
      295 LOADN                            R26 0
      296 LOADN                            R27 0
      297 LOADN                            R28 6
      298 CALL                             R24 4 1
      299 SETTABLEKS                       R24 R23 K29 ["Size"]
      301 CALL                             R21 2 1
      302 SETTABLEKS                       R21 R20 K50 ["SpacerAfterName"]
      304 GETUPVAL                         R21 2
      305 GETTABLEKS                       R21 R21 K27 ["createElement"]
      307 LOADK                            R22 K72 ["TextLabel"]
      308 DUPTABLE                         R23 K111 [{["LayoutOrder"] = 7, ["Text"], ["AutomaticSize"], ["TextSize"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      309 SETTABLEKS                       R11 R23 K73 ["Text"]
      311 GETIMPORT                        R24 K83 [Enum.AutomaticSize.XY]
      313 SETTABLEKS                       R24 R23 K74 ["AutomaticSize"]
      315 GETTABLEKS                       R25 R2 K112 ["fontStyle"]
      317 GETTABLEKS                       R25 R25 K113 ["Subtext"]
      319 GETTABLEKS                       R25 R25 K75 ["TextSize"]
      321 ORK                              R24 R25 K105 [20]
      322 SETTABLEKS                       R24 R23 K75 ["TextSize"]
      324 JUMPIFNOT                        R9 ; [+9]
      325 JUMPIFNOT                        R10 ; [+3]
      326 GETTABLEKS                       R24 R2 K114 ["errorColor"]
      328 JUMPIF                           R24 ; [+9]
      329 GETTABLEKS                       R24 R2 K87 ["successText"]
      331 GETTABLEKS                       R24 R24 K88 ["text"]
      333 JUMPIF                           R24 ; [+4]
      334 GETTABLEKS                       R24 R2 K107 ["header"]
      336 GETTABLEKS                       R24 R24 K88 ["text"]
      338 SETTABLEKS                       R24 R23 K79 ["TextColor3"]
      340 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      342 SETTABLEKS                       R24 R23 K77 ["TextXAlignment"]
      344 GETTABLEKS                       R24 R2 K112 ["fontStyle"]
      346 GETTABLEKS                       R24 R24 K113 ["Subtext"]
      348 GETTABLEKS                       R24 R24 K80 ["Font"]
      350 JUMPIF                           R24 ; [+2]
      351 GETTABLEKS                       R24 R2 K89 ["font"]
      353 SETTABLEKS                       R24 R23 K80 ["Font"]
      355 CALL                             R21 2 1
      356 SETTABLEKS                       R21 R20 K51 ["Rating"]
      358 GETUPVAL                         R21 2
      359 GETTABLEKS                       R21 R21 K27 ["createElement"]
      361 LOADK                            R22 K28 ["Frame"]
      362 DUPTABLE                         R23 K116 [{["LayoutOrder"] = 8, ["BackgroundTransparency"] = 1, ["Size"]}]
      363 GETIMPORT                        R24 K36 [UDim2.new]
      365 LOADN                            R25 0
      366 LOADN                            R26 0
      367 LOADN                            R27 0
      368 LOADN                            R28 30
      369 CALL                             R24 4 1
      370 SETTABLEKS                       R24 R23 K29 ["Size"]
      372 CALL                             R21 2 1
      373 SETTABLEKS                       R21 R20 K52 ["SpacerAfterRating"]
      375 GETUPVAL                         R21 2
      376 GETTABLEKS                       R21 R21 K27 ["createElement"]
      378 LOADK                            R22 K72 ["TextLabel"]
      379 DUPTABLE                         R23 K119 [{["LayoutOrder"] = 9, ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["TextSize"], ["TextColor3"]}]
      380 GETIMPORT                        R24 K83 [Enum.AutomaticSize.XY]
      382 SETTABLEKS                       R24 R23 K74 ["AutomaticSize"]
      384 JUMPIFNOT                        R9 ; [+7]
      385 JUMPIFNOT                        R10 ; [+6]
      386 LOADK                            R26 K6 ["PublishSuccess"]
      387 LOADK                            R27 K120 ["PostPublishInfoUnrated"]
      388 NAMECALL                         R24 R3 K8 ["getText"]
      390 CALL                             R24 3 1
      391 JUMP                             ; [+5]
      392 LOADK                            R26 K6 ["PublishSuccess"]
      393 LOADK                            R27 K121 ["PostPublishInfo"]
      394 NAMECALL                         R24 R3 K8 ["getText"]
      396 CALL                             R24 3 1
      397 SETTABLEKS                       R24 R23 K73 ["Text"]
      399 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      401 SETTABLEKS                       R24 R23 K77 ["TextXAlignment"]
      403 GETIMPORT                        R24 K86 [Enum.TextYAlignment.Top]
      405 SETTABLEKS                       R24 R23 K78 ["TextYAlignment"]
      407 GETTABLEKS                       R24 R2 K112 ["fontStyle"]
      409 GETTABLEKS                       R24 R24 K113 ["Subtext"]
      411 GETTABLEKS                       R24 R24 K80 ["Font"]
      413 JUMPIF                           R24 ; [+2]
      414 GETTABLEKS                       R24 R2 K89 ["font"]
      416 SETTABLEKS                       R24 R23 K80 ["Font"]
      418 GETTABLEKS                       R24 R2 K112 ["fontStyle"]
      420 GETTABLEKS                       R24 R24 K113 ["Subtext"]
      422 GETTABLEKS                       R24 R24 K75 ["TextSize"]
      424 SETTABLEKS                       R24 R23 K75 ["TextSize"]
      426 GETTABLEKS                       R24 R2 K112 ["fontStyle"]
      428 GETTABLEKS                       R24 R24 K113 ["Subtext"]
      430 GETTABLEKS                       R24 R24 K79 ["TextColor3"]
      432 SETTABLEKS                       R24 R23 K79 ["TextColor3"]
      434 CALL                             R21 2 1
      435 SETTABLEKS                       R21 R20 K53 ["Description"]
      437 CALL                             R17 3 1
      438 SETTABLEKS                       R17 R16 K38 ["CenterStack"]
      440 GETUPVAL                         R17 2
      441 GETTABLEKS                       R17 R17 K27 ["createElement"]
      443 GETUPVAL                         R18 3
      444 DUPTABLE                         R19 K128 [{["AnchorPoint"], ["Position"], ["HorizontalAlignment"], ["LocalizationNamespace"] = "PublishSuccess", ["AutoWidth"] = True, ["Spacing"] = 8, ["Buttons"], ["buttonActivated"]}]
      445 GETIMPORT                        R20 K130 [Vector2.new]
      447 LOADK                            R21 K131 [0.5]
      448 LOADN                            R22 1
      449 CALL                             R20 2 1
      450 SETTABLEKS                       R20 R19 K122 ["AnchorPoint"]
      452 GETIMPORT                        R20 K36 [UDim2.new]
      454 LOADK                            R21 K131 [0.5]
      455 LOADN                            R22 0
      456 LOADN                            R23 1
      457 LOADN                            R24 -10
      458 CALL                             R20 4 1
      459 SETTABLEKS                       R20 R19 K43 ["Position"]
      461 GETIMPORT                        R20 K66 [Enum.HorizontalAlignment.Center]
      463 SETTABLEKS                       R20 R19 K57 ["HorizontalAlignment"]
      465 JUMPIFNOT                        R9 ; [+13]
      466 JUMPIFNOT                        R10 ; [+12]
      467 NEWTABLE                         R20 0 2
      469 DUPTABLE                         R21 K134 [{["Name"] = "Done", ["Default"] = False, ["Value"] = False}]
      470 DUPTABLE                         R22 K136 [{["Name"] = "ViewQuestionnaire", ["Default"] = True, ["Value"] = True, ["LeftIcon"]}]
      471 GETUPVAL                         R24 1
      472 GETTABLEKS                       R23 R24 K26 ["icons/navigation/externallink"]
      474 SETTABLEKS                       R23 R22 K24 ["LeftIcon"]
      476 SETLIST                          R20 R21 2 [1]
      478 JUMP                             ; [+6]
      479 NEWTABLE                         R20 0 2
      481 MOVE                             R21 R12
      482 DUPTABLE                         R22 K134 [{["Name"] = "Done", ["Default"] = False, ["Value"] = False}]
      483 SETLIST                          R20 R21 2 [1]
      485 SETTABLEKS                       R20 R19 K126 ["Buttons"]
      487 NEWCLOSURE                       R20 P0
      488 CAPTURE                          VAL R9
      489 CAPTURE                          VAL R10
      490 CAPTURE                          UPVAL U4
      491 CAPTURE                          VAL R1
      492 CAPTURE                          VAL R4
      493 CAPTURE                          UPVAL U0
      494 CAPTURE                          UPVAL U5
      495 SETTABLEKS                       R20 R19 K127 ["buttonActivated"]
      497 CALL                             R17 2 1
      498 SETTABLEKS                       R17 R16 K39 ["BottomBar"]
      500 CALL                             R13 3 1
      501 RETURN                           R13 1
      502 GETUPVAL                         R13 2
      503 GETTABLEKS                       R13 R13 K27 ["createElement"]
      505 LOADK                            R14 K28 ["Frame"]
      506 DUPTABLE                         R15 K33 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      507 GETIMPORT                        R16 K36 [UDim2.new]
      509 LOADN                            R17 1
      510 LOADN                            R18 0
      511 LOADN                            R19 1
      512 LOADN                            R20 0
      513 CALL                             R16 4 1
      514 SETTABLEKS                       R16 R15 K29 ["Size"]
      516 GETTABLEKS                       R16 R2 K37 ["backgroundColor"]
      518 SETTABLEKS                       R16 R15 K30 ["BackgroundColor3"]
      520 DUPTABLE                         R16 K139 [{"Icon", "Name", "Success", "ParentGame", "CloseButton"}]
      521 GETUPVAL                         R17 2
      522 GETTABLEKS                       R17 R17 K27 ["createElement"]
      524 LOADK                            R18 K92 ["ImageLabel"]
      525 DUPTABLE                         R19 K140 [{["Position"], ["AnchorPoint"], ["Size"], ["Image"], ["BorderSizePixel"] = 0}]
      526 GETIMPORT                        R20 K36 [UDim2.new]
      528 LOADK                            R21 K131 [0.5]
      529 LOADN                            R22 0
      530 LOADK                            R23 K141 [0.2]
      531 LOADN                            R24 0
      532 CALL                             R20 4 1
      533 SETTABLEKS                       R20 R19 K43 ["Position"]
      535 GETIMPORT                        R20 K130 [Vector2.new]
      537 LOADK                            R21 K131 [0.5]
      538 LOADK                            R22 K131 [0.5]
      539 CALL                             R20 2 1
      540 SETTABLEKS                       R20 R19 K122 ["AnchorPoint"]
      542 GETIMPORT                        R20 K36 [UDim2.new]
      544 LOADN                            R21 0
      545 LOADN                            R22 150
      546 LOADN                            R23 0
      547 LOADN                            R24 150
      548 CALL                             R20 4 1
      549 SETTABLEKS                       R20 R19 K29 ["Size"]
      551 GETTABLEKS                       R21 R0 K12 ["state"]
      553 GETTABLEKS                       R21 R21 K96 ["assetFetchStatus"]
      555 GETIMPORT                        R22 K98 [Enum.AssetFetchStatus.Success]
      557 JUMPIFNOTEQ                      R21 R22 ; [+4]
      559 GETTABLEKS                       R20 R0 K99 ["thumbnailUrl"]
      561 JUMPIF                           R20 ; [+4]
      562 GETTABLEKS                       R20 R2 K100 ["icons"]
      564 GETTABLEKS                       R20 R20 K101 ["thumbnailPlaceHolder"]
      566 SETTABLEKS                       R20 R19 K94 ["Image"]
      568 CALL                             R17 2 1
      569 SETTABLEKS                       R17 R16 K48 ["Icon"]
      571 GETUPVAL                         R17 2
      572 GETTABLEKS                       R17 R17 K27 ["createElement"]
      574 LOADK                            R18 K72 ["TextLabel"]
      575 DUPTABLE                         R19 K142 [{["Text"], ["Position"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      576 SETTABLEKS                       R5 R19 K73 ["Text"]
      578 GETIMPORT                        R20 K36 [UDim2.new]
      580 LOADK                            R21 K131 [0.5]
      581 LOADN                            R22 0
      582 LOADK                            R23 K143 [0.35]
      583 LOADN                            R24 0
      584 CALL                             R20 4 1
      585 SETTABLEKS                       R20 R19 K43 ["Position"]
      587 GETTABLEKS                       R20 R2 K107 ["header"]
      589 GETTABLEKS                       R20 R20 K88 ["text"]
      591 SETTABLEKS                       R20 R19 K79 ["TextColor3"]
      593 GETIMPORT                        R20 K84 [Enum.TextXAlignment.Center]
      595 SETTABLEKS                       R20 R19 K77 ["TextXAlignment"]
      597 GETTABLEKS                       R20 R2 K107 ["header"]
      599 GETTABLEKS                       R20 R20 K89 ["font"]
      601 SETTABLEKS                       R20 R19 K80 ["Font"]
      603 CALL                             R17 2 1
      604 SETTABLEKS                       R17 R16 K4 ["Name"]
      606 GETUPVAL                         R17 2
      607 GETTABLEKS                       R17 R17 K27 ["createElement"]
      609 LOADK                            R18 K72 ["TextLabel"]
      610 DUPTABLE                         R19 K144 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Font"]}]
      611 SETTABLEKS                       R8 R19 K73 ["Text"]
      613 GETIMPORT                        R20 K36 [UDim2.new]
      615 LOADK                            R21 K131 [0.5]
      616 LOADN                            R22 0
      617 LOADK                            R23 K145 [0.4]
      618 LOADN                            R24 0
      619 CALL                             R20 4 1
      620 SETTABLEKS                       R20 R19 K43 ["Position"]
      622 GETIMPORT                        R20 K84 [Enum.TextXAlignment.Center]
      624 SETTABLEKS                       R20 R19 K77 ["TextXAlignment"]
      626 GETTABLEKS                       R20 R2 K87 ["successText"]
      628 GETTABLEKS                       R20 R20 K88 ["text"]
      630 SETTABLEKS                       R20 R19 K79 ["TextColor3"]
      632 GETTABLEKS                       R20 R2 K87 ["successText"]
      634 GETTABLEKS                       R20 R20 K89 ["font"]
      636 SETTABLEKS                       R20 R19 K80 ["Font"]
      638 CALL                             R17 2 1
      639 SETTABLEKS                       R17 R16 K9 ["Success"]
      641 GETUPVAL                         R17 2
      642 GETTABLEKS                       R17 R17 K27 ["createElement"]
      644 LOADK                            R18 K72 ["TextLabel"]
      645 DUPTABLE                         R19 K147 [{["Text"], ["Position"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      646 SETTABLEKS                       R7 R19 K73 ["Text"]
      648 GETIMPORT                        R20 K36 [UDim2.new]
      650 LOADK                            R21 K131 [0.5]
      651 LOADN                            R22 0
      652 LOADK                            R23 K131 [0.5]
      653 LOADN                            R24 0
      654 CALL                             R20 4 1
      655 SETTABLEKS                       R20 R19 K43 ["Position"]
      657 GETTABLEKS                       R20 R2 K107 ["header"]
      659 GETTABLEKS                       R20 R20 K88 ["text"]
      661 SETTABLEKS                       R20 R19 K79 ["TextColor3"]
      663 GETIMPORT                        R20 K84 [Enum.TextXAlignment.Center]
      665 SETTABLEKS                       R20 R19 K77 ["TextXAlignment"]
      667 GETTABLEKS                       R20 R2 K107 ["header"]
      669 GETTABLEKS                       R20 R20 K89 ["font"]
      671 SETTABLEKS                       R20 R19 K80 ["Font"]
      673 CALL                             R17 2 1
      674 SETTABLEKS                       R17 R16 K137 ["ParentGame"]
      676 GETUPVAL                         R17 2
      677 GETTABLEKS                       R17 R17 K27 ["createElement"]
      679 GETUPVAL                         R18 6
      680 DUPTABLE                         R19 K151 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
      681 GETIMPORT                        R20 K130 [Vector2.new]
      683 LOADK                            R21 K131 [0.5]
      684 LOADK                            R22 K131 [0.5]
      685 CALL                             R20 2 1
      686 SETTABLEKS                       R20 R19 K122 ["AnchorPoint"]
      688 SETTABLEKS                       R4 R19 K148 ["OnClick"]
      690 GETIMPORT                        R20 K36 [UDim2.new]
      692 LOADK                            R21 K131 [0.5]
      693 LOADN                            R22 0
      694 LOADK                            R23 K152 [0.9]
      695 LOADN                            R24 0
      696 CALL                             R20 4 1
      697 SETTABLEKS                       R20 R19 K43 ["Position"]
      699 GETIMPORT                        R20 K36 [UDim2.new]
      701 LOADN                            R21 0
      702 LOADN                            R22 150
      703 LOADN                            R23 0
      704 LOADN                            R24 30
      705 CALL                             R20 4 1
      706 SETTABLEKS                       R20 R19 K29 ["Size"]
      708 LOADK                            R22 K153 ["Button"]
      709 LOADK                            R23 K154 ["Close"]
      710 NAMECALL                         R20 R3 K8 ["getText"]
      712 CALL                             R20 3 1
      713 SETTABLEKS                       R20 R19 K73 ["Text"]
      715 CALL                             R17 2 1
      716 SETTABLEKS                       R17 R16 K138 ["CloseButton"]
      718 CALL                             R13 3 1
      719 RETURN                           R13 1

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
      169 GETIMPORT                        R26 K9 [require]
      171 GETTABLEKS                       R27 R0 K26 ["Src"]
      173 GETTABLEKS                       R27 R27 K41 ["Flags"]
      175 GETTABLEKS                       R27 R27 K43 ["getEngineFeatureStudioUnifiedPublishAction"]
      177 CALL                             R26 1 1
      178 MOVE                             R28 R26
      179 CALL                             R28 0 1
      180 JUMPIFNOT                        R28 ; [+10]
      181 GETIMPORT                        R27 K9 [require]
      183 GETTABLEKS                       R28 R0 K26 ["Src"]
      185 GETTABLEKS                       R28 R28 K27 ["Util"]
      187 GETTABLEKS                       R28 R28 K44 ["PublishStatusPanel"]
      189 CALL                             R27 1 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R27
      192 GETTABLEKS                       R28 R4 K45 ["PureComponent"]
      194 LOADK                            R30 K46 ["ScreenPublishSuccessful"]
      195 NAMECALL                         R28 R28 K47 ["extend"]
      197 CALL                             R28 2 1
      198 DUPCLOSURE                       R29 K48 [PROTO_0]
      199 SETTABLEKS                       R29 R28 K49 ["init"]
      201 DUPCLOSURE                       R29 K50 [PROTO_6]
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R24
      207 SETTABLEKS                       R29 R28 K51 ["didMount"]
      209 DUPCLOSURE                       R29 K52 [PROTO_7]
      210 CAPTURE                          VAL R1
      211 SETTABLEKS                       R29 R28 K53 ["willUnmount"]
      213 DUPCLOSURE                       R29 K54 [PROTO_9]
      214 CAPTURE                          VAL R26
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R13
      221 SETTABLEKS                       R29 R28 K55 ["render"]
      223 DUPTABLE                         R29 K58 [{"Stylizer", "Localization"}]
      224 GETTABLEKS                       R30 R10 K56 ["Stylizer"]
      226 SETTABLEKS                       R30 R29 K56 ["Stylizer"]
      228 GETTABLEKS                       R30 R10 K57 ["Localization"]
      230 SETTABLEKS                       R30 R29 K57 ["Localization"]
      232 MOVE                             R30 R26
      233 CALL                             R30 0 1
      234 JUMPIFNOT                        R30 ; [+2]
      235 SETTABLEKS                       R27 R29 K44 ["PublishStatusPanel"]
      237 MOVE                             R30 R11
      238 MOVE                             R31 R29
      239 CALL                             R30 1 1
      240 MOVE                             R31 R28
      241 CALL                             R30 1 1
      242 MOVE                             R28 R30
      243 DUPCLOSURE                       R30 K59 [PROTO_10]
      244 GETTABLEKS                       R31 R5 K60 ["connect"]
      246 MOVE                             R32 R30
      247 CALL                             R31 1 1
      248 MOVE                             R32 R28
      249 CALL                             R31 1 -1
      250 RETURN                           R31 -1
