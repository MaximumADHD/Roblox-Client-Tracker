PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Type"]
        3 GETTABLE                         R1 R2 R3
        4 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["PotentialCollaborators"]
        7 GETTABLEKS                       R2 R2 K3 ["Friends"]
        9 CALL                             R1 1 3
       10 FORGPREP_INEXT                   R1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["SubjectTypeKey"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["UserSubjectKey"]
       17 SETTABLE                         R7 R5 R6
       18 DUPTABLE                         R8 K8 [{"Type", "Id"}]
       19 GETIMPORT                        R9 K12 [Enum.CreatorType.User]
       21 SETTABLEKS                       R9 R8 K6 ["Type"]
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K13 ["SubjectIdKey"]
       26 GETTABLE                         R9 R5 R10
       27 SETTABLEKS                       R9 R8 K7 ["Id"]
       29 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       31 MOVE                             R7 R0
       32 GETIMPORT                        R6 K16 [table.insert]
       34 CALL                             R6 2 0
       35 FORGLOOP                         R1 2 [inext] ; [-25]
       37 GETIMPORT                        R1 K1 [ipairs]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K2 ["PotentialCollaborators"]
       42 GETTABLEKS                       R2 R2 K17 ["Groups"]
       44 CALL                             R1 1 3
       45 FORGPREP_INEXT                   R1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K4 ["SubjectTypeKey"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K18 ["GroupSubjectKey"]
       52 SETTABLE                         R7 R5 R6
       53 DUPTABLE                         R8 K8 [{"Type", "Id"}]
       54 GETIMPORT                        R9 K20 [Enum.CreatorType.Group]
       56 SETTABLEKS                       R9 R8 K6 ["Type"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K13 ["SubjectIdKey"]
       61 GETTABLE                         R9 R5 R10
       62 SETTABLEKS                       R9 R8 K7 ["Id"]
       64 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       66 MOVE                             R7 R0
       67 GETIMPORT                        R6 K16 [table.insert]
       69 CALL                             R6 2 0
       70 FORGLOOP                         R1 2 [inext] ; [-25]
       72 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Permissions"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R5 R0 K1 ["Type"]
        6 GETTABLE                         R3 R4 R5
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETTABLEKS                       R4 R0 K2 ["Id"]
       11 GETTABLE                         R3 R1 R4
       12 JUMPIFEQKNIL                     R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PermissionsChanged"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Permissions"]
        7 NEWTABLE                         R4 1 0
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R7 R0 K2 ["Type"]
       12 GETTABLE                         R5 R6 R7
       13 NEWTABLE                         R6 1 0
       15 GETTABLEKS                       R7 R0 K3 ["Id"]
       17 NEWTABLE                         R8 1 0
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K4 ["ActionKey"]
       22 GETUPVAL                         R10 4
       23 SETTABLE                         R10 R8 R9
       24 SETTABLE                         R8 R6 R7
       25 SETTABLE                         R6 R4 R5
       26 CALL                             R2 2 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PermissionsChanged"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Permissions"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R5 R0 K2 ["SubjectType"]
       11 NEWTABLE                         R6 1 0
       13 GETTABLEKS                       R7 R0 K3 ["SubjectId"]
       15 NEWTABLE                         R8 1 0
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R9 R9 K4 ["ActionKey"]
       20 GETTABLEKS                       R10 R0 K5 ["Action"]
       22 SETTABLE                         R10 R8 R9
       23 SETTABLE                         R8 R6 R7
       24 SETTABLE                         R6 R4 R5
       25 CALL                             R2 2 -1
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["new"]
       11 CALL                             R3 0 1
       12 LOADB                            R4 1
       13 GETTABLEKS                       R5 R0 K2 ["CurrentUserPackagePermission"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["OwnKey"]
       18 JUMPIFEQ                         R5 R6 ; [+10]
       20 GETTABLEKS                       R5 R0 K2 ["CurrentUserPackagePermission"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K4 ["EditKey"]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETTABLEKS                       R6 R0 K2 ["CurrentUserPackagePermission"]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K3 ["OwnKey"]
       34 JUMPIFEQ                         R6 R7 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 GETTABLEKS                       R6 R0 K5 ["Owner"]
       40 GETUPVAL                         R7 4
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+2]
       43 GETUPVAL                         R7 5
       44 CALL                             R7 0 1
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K6 ["createElement"]
       48 GETUPVAL                         R9 7
       49 DUPTABLE                         R10 K11 [{"LayoutOrder", "Size", "AutomaticCanvasSize", "BackgroundTransparency"}]
       50 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       54 GETTABLEKS                       R11 R0 K8 ["Size"]
       56 SETTABLEKS                       R11 R10 K8 ["Size"]
       58 GETIMPORT                        R11 K15 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R11 R10 K9 ["AutomaticCanvasSize"]
       62 LOADN                            R11 1
       63 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
       65 DUPTABLE                         R11 K21 [{"Padding", "UIListLayout", "OwnerSection", "Separator", "AccessSection"}]
       66 GETUPVAL                         R12 6
       67 GETTABLEKS                       R12 R12 K6 ["createElement"]
       69 LOADK                            R13 K22 ["UIPadding"]
       70 DUPTABLE                         R14 K27 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       71 GETIMPORT                        R15 K29 [UDim.new]
       73 LOADN                            R16 0
       74 GETUPVAL                         R17 8
       75 GETTABLEKS                       R17 R17 K30 ["PERMISSIONS_UI_EDGE_PADDING"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K23 ["PaddingTop"]
       80 GETIMPORT                        R15 K29 [UDim.new]
       82 LOADN                            R16 0
       83 GETUPVAL                         R17 8
       84 GETTABLEKS                       R17 R17 K30 ["PERMISSIONS_UI_EDGE_PADDING"]
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K24 ["PaddingBottom"]
       89 GETIMPORT                        R15 K29 [UDim.new]
       91 LOADN                            R16 0
       92 GETUPVAL                         R17 8
       93 GETTABLEKS                       R17 R17 K30 ["PERMISSIONS_UI_EDGE_PADDING"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K25 ["PaddingLeft"]
       98 GETIMPORT                        R15 K29 [UDim.new]
      100 LOADN                            R16 0
      101 GETUPVAL                         R17 8
      102 GETTABLEKS                       R17 R17 K30 ["PERMISSIONS_UI_EDGE_PADDING"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K26 ["PaddingRight"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K16 ["Padding"]
      110 GETUPVAL                         R12 6
      111 GETTABLEKS                       R12 R12 K6 ["createElement"]
      113 LOADK                            R13 K17 ["UIListLayout"]
      114 DUPTABLE                         R14 K32 [{"Padding", "SortOrder"}]
      115 GETIMPORT                        R15 K29 [UDim.new]
      117 LOADN                            R16 0
      118 GETUPVAL                         R17 8
      119 GETTABLEKS                       R17 R17 K33 ["PERMISSIONS_TAB_LIST_PADDING"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K16 ["Padding"]
      124 GETIMPORT                        R15 K34 [Enum.SortOrder.LayoutOrder]
      126 SETTABLEKS                       R15 R14 K31 ["SortOrder"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K17 ["UIListLayout"]
      131 GETUPVAL                         R12 6
      132 GETTABLEKS                       R12 R12 K6 ["createElement"]
      134 GETUPVAL                         R13 9
      135 DUPTABLE                         R14 K36 [{"Title", "LayoutOrder"}]
      136 LOADK                            R17 K37 ["AssetConfigPackagePermissions"]
      137 LOADK                            R18 K38 ["PackageOwner"]
      138 NAMECALL                         R15 R2 K39 ["getText"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K35 ["Title"]
      143 NAMECALL                         R15 R3 K40 ["getNextOrder"]
      145 CALL                             R15 1 1
      146 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      148 DUPTABLE                         R15 K42 [{"OwnerLabel"}]
      149 GETUPVAL                         R16 6
      150 GETTABLEKS                       R16 R16 K6 ["createElement"]
      152 GETUPVAL                         R17 10
      153 DUPTABLE                         R18 K45 [{"Size", "Id", "SubjectType", "LayoutOrder"}]
      154 GETIMPORT                        R19 K47 [UDim2.new]
      156 LOADN                            R20 1
      157 LOADN                            R21 0
      158 LOADN                            R22 0
      159 LOADN                            R23 60
      160 CALL                             R19 4 1
      161 SETTABLEKS                       R19 R18 K8 ["Size"]
      163 GETTABLEKS                       R19 R6 K43 ["Id"]
      165 SETTABLEKS                       R19 R18 K43 ["Id"]
      167 GETTABLEKS                       R19 R6 K48 ["Type"]
      169 SETTABLEKS                       R19 R18 K44 ["SubjectType"]
      171 NAMECALL                         R19 R3 K40 ["getNextOrder"]
      173 CALL                             R19 1 1
      174 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      176 CALL                             R16 2 1
      177 SETTABLEKS                       R16 R15 K41 ["OwnerLabel"]
      179 CALL                             R12 3 1
      180 SETTABLEKS                       R12 R11 K18 ["OwnerSection"]
      182 GETUPVAL                         R12 6
      183 GETTABLEKS                       R12 R12 K6 ["createElement"]
      185 GETUPVAL                         R13 11
      186 DUPTABLE                         R14 K49 [{"LayoutOrder"}]
      187 NAMECALL                         R15 R3 K40 ["getNextOrder"]
      189 CALL                             R15 1 1
      190 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      192 CALL                             R12 2 1
      193 SETTABLEKS                       R12 R11 K19 ["Separator"]
      195 JUMPIFNOT                        R4 ; [+317]
      196 GETUPVAL                         R12 6
      197 GETTABLEKS                       R12 R12 K6 ["createElement"]
      199 GETUPVAL                         R13 9
      200 DUPTABLE                         R14 K36 [{"Title", "LayoutOrder"}]
      201 LOADK                            R17 K37 ["AssetConfigPackagePermissions"]
      202 LOADK                            R18 K50 ["CollaboratorAccessHeader"]
      203 NAMECALL                         R15 R2 K39 ["getText"]
      205 CALL                             R15 3 1
      206 SETTABLEKS                       R15 R14 K35 ["Title"]
      208 NAMECALL                         R15 R3 K40 ["getNextOrder"]
      210 CALL                             R15 1 1
      211 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      213 DUPTABLE                         R15 K54 [{"UIListLayout", "AllVersionsWarning", "Spacer", "Collaborators"}]
      214 GETUPVAL                         R16 6
      215 GETTABLEKS                       R16 R16 K6 ["createElement"]
      217 LOADK                            R17 K17 ["UIListLayout"]
      218 DUPTABLE                         R18 K32 [{"Padding", "SortOrder"}]
      219 GETIMPORT                        R19 K29 [UDim.new]
      221 LOADN                            R20 0
      222 LOADN                            R21 20
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K16 ["Padding"]
      226 GETIMPORT                        R19 K34 [Enum.SortOrder.LayoutOrder]
      228 SETTABLEKS                       R19 R18 K31 ["SortOrder"]
      230 CALL                             R16 2 1
      231 SETTABLEKS                       R16 R15 K17 ["UIListLayout"]
      233 MOVE                             R16 R5
      234 JUMPIFNOT                        R16 ; [+44]
      235 GETUPVAL                         R16 6
      236 GETTABLEKS                       R16 R16 K6 ["createElement"]
      238 LOADK                            R17 K55 ["TextLabel"]
      239 DUPTABLE                         R18 K61 [{"LayoutOrder", "AutomaticSize", "Text", "Font", "TextSize", "TextColor3", "TextWrapped", "BackgroundTransparency"}]
      240 NAMECALL                         R19 R3 K40 ["getNextOrder"]
      242 CALL                             R19 1 1
      243 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      245 GETIMPORT                        R19 K63 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R19 R18 K13 ["AutomaticSize"]
      249 LOADK                            R21 K37 ["AssetConfigPackagePermissions"]
      250 LOADK                            R22 K51 ["AllVersionsWarning"]
      251 NAMECALL                         R19 R2 K39 ["getText"]
      253 CALL                             R19 3 1
      254 SETTABLEKS                       R19 R18 K56 ["Text"]
      256 GETUPVAL                         R19 8
      257 GETTABLEKS                       R19 R19 K64 ["FONT"]
      259 SETTABLEKS                       R19 R18 K57 ["Font"]
      261 GETUPVAL                         R19 8
      262 GETTABLEKS                       R19 R19 K65 ["FONT_SIZE_LARGE"]
      264 SETTABLEKS                       R19 R18 K58 ["TextSize"]
      266 GETTABLEKS                       R19 R1 K66 ["assetConfig"]
      268 GETTABLEKS                       R19 R19 K67 ["textColor"]
      270 SETTABLEKS                       R19 R18 K59 ["TextColor3"]
      272 LOADB                            R19 1
      273 SETTABLEKS                       R19 R18 K60 ["TextWrapped"]
      275 LOADN                            R19 1
      276 SETTABLEKS                       R19 R18 K10 ["BackgroundTransparency"]
      278 CALL                             R16 2 1
      279 SETTABLEKS                       R16 R15 K51 ["AllVersionsWarning"]
      281 GETUPVAL                         R16 6
      282 GETTABLEKS                       R16 R16 K6 ["createElement"]
      284 LOADK                            R17 K68 ["Frame"]
      285 DUPTABLE                         R18 K69 [{"Size", "LayoutOrder"}]
      286 GETIMPORT                        R19 K71 [UDim2.fromOffset]
      288 LOADN                            R20 0
      289 LOADN                            R21 0
      290 CALL                             R19 2 1
      291 SETTABLEKS                       R19 R18 K8 ["Size"]
      293 NAMECALL                         R19 R3 K40 ["getNextOrder"]
      295 CALL                             R19 1 1
      296 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      298 CALL                             R16 2 1
      299 SETTABLEKS                       R16 R15 K52 ["Spacer"]
      301 GETUPVAL                         R16 6
      302 GETTABLEKS                       R16 R16 K6 ["createElement"]
      304 GETUPVAL                         R17 7
      305 DUPTABLE                         R18 K72 [{"AutomaticCanvasSize", "LayoutOrder"}]
      306 GETIMPORT                        R19 K15 [Enum.AutomaticSize.Y]
      308 SETTABLEKS                       R19 R18 K9 ["AutomaticCanvasSize"]
      310 NAMECALL                         R19 R3 K40 ["getNextOrder"]
      312 CALL                             R19 1 1
      313 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      315 DUPTABLE                         R19 K76 [{"UIListLayout", "FriendsAndGroupsInfo", "SearchbarWidget", "CollaboratorsList"}]
      316 GETUPVAL                         R20 6
      317 GETTABLEKS                       R20 R20 K6 ["createElement"]
      319 LOADK                            R21 K17 ["UIListLayout"]
      320 DUPTABLE                         R22 K32 [{"Padding", "SortOrder"}]
      321 GETIMPORT                        R23 K29 [UDim.new]
      323 LOADN                            R24 0
      324 LOADN                            R25 20
      325 CALL                             R23 2 1
      326 SETTABLEKS                       R23 R22 K16 ["Padding"]
      328 GETIMPORT                        R23 K34 [Enum.SortOrder.LayoutOrder]
      330 SETTABLEKS                       R23 R22 K31 ["SortOrder"]
      332 CALL                             R20 2 1
      333 SETTABLEKS                       R20 R19 K17 ["UIListLayout"]
      335 GETUPVAL                         R20 6
      336 GETTABLEKS                       R20 R20 K6 ["createElement"]
      338 LOADK                            R21 K55 ["TextLabel"]
      339 DUPTABLE                         R22 K77 [{"Text", "LayoutOrder", "AutomaticSize", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped"}]
      340 JUMPIFNOT                        R7 ; [+6]
      341 LOADK                            R25 K37 ["AssetConfigPackagePermissions"]
      342 LOADK                            R26 K78 ["OnlyConnectionsAndGroups"]
      343 NAMECALL                         R23 R2 K39 ["getText"]
      345 CALL                             R23 3 1
      346 JUMP                             ; [+5]
      347 LOADK                            R25 K37 ["AssetConfigPackagePermissions"]
      348 LOADK                            R26 K79 ["OnlyFriendsAndGroups"]
      349 NAMECALL                         R23 R2 K39 ["getText"]
      351 CALL                             R23 3 1
      352 SETTABLEKS                       R23 R22 K56 ["Text"]
      354 NAMECALL                         R23 R3 K40 ["getNextOrder"]
      356 CALL                             R23 1 1
      357 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      359 GETIMPORT                        R23 K63 [Enum.AutomaticSize.XY]
      361 SETTABLEKS                       R23 R22 K13 ["AutomaticSize"]
      363 GETUPVAL                         R23 8
      364 GETTABLEKS                       R23 R23 K64 ["FONT"]
      366 SETTABLEKS                       R23 R22 K57 ["Font"]
      368 GETUPVAL                         R23 8
      369 GETTABLEKS                       R23 R23 K65 ["FONT_SIZE_LARGE"]
      371 SETTABLEKS                       R23 R22 K58 ["TextSize"]
      373 GETTABLEKS                       R23 R1 K66 ["assetConfig"]
      375 GETTABLEKS                       R23 R23 K67 ["textColor"]
      377 SETTABLEKS                       R23 R22 K59 ["TextColor3"]
      379 LOADN                            R23 1
      380 SETTABLEKS                       R23 R22 K10 ["BackgroundTransparency"]
      382 LOADB                            R23 1
      383 SETTABLEKS                       R23 R22 K60 ["TextWrapped"]
      385 CALL                             R20 2 1
      386 SETTABLEKS                       R20 R19 K73 ["FriendsAndGroupsInfo"]
      388 MOVE                             R20 R5
      389 JUMPIFNOT                        R20 ; [+72]
      390 GETUPVAL                         R20 6
      391 GETTABLEKS                       R20 R20 K6 ["createElement"]
      393 GETUPVAL                         R21 12
      394 DUPTABLE                         R22 K85 [{"LayoutOrder", "Size", "ListItemSize", "Enabled", "Collaborators", "Filter", "SearchRequested", "CollaboratorSelected"}]
      395 NAMECALL                         R23 R3 K40 ["getNextOrder"]
      397 CALL                             R23 1 1
      398 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      400 GETUPVAL                         R23 13
      401 SETTABLEKS                       R23 R22 K8 ["Size"]
      403 GETIMPORT                        R23 K87 [Vector2.new]
      405 GETUPVAL                         R24 13
      406 GETTABLEKS                       R24 R24 K88 ["X"]
      408 GETTABLEKS                       R24 R24 K89 ["Offset"]
      410 LOADN                            R25 50
      411 CALL                             R23 2 1
      412 SETTABLEKS                       R23 R22 K80 ["ListItemSize"]
      414 LOADB                            R23 1
      415 SETTABLEKS                       R23 R22 K81 ["Enabled"]
      417 GETUPVAL                         R23 6
      418 GETTABLEKS                       R23 R23 K90 ["useMemo"]
      420 NEWCLOSURE                       R24 P0
      421 CAPTURE                          VAL R0
      422 CAPTURE                          UPVAL U3
      423 NEWTABLE                         R25 0 1
      425 GETTABLEKS                       R26 R0 K91 ["PotentialCollaborators"]
      427 SETLIST                          R25 R26 1 [1]
      429 CALL                             R23 2 1
      430 SETTABLEKS                       R23 R22 K53 ["Collaborators"]
      432 NEWCLOSURE                       R23 P1
      433 CAPTURE                          VAL R0
      434 CAPTURE                          UPVAL U14
      435 SETTABLEKS                       R23 R22 K82 ["Filter"]
      437 GETTABLEKS                       R23 R0 K83 ["SearchRequested"]
      439 SETTABLEKS                       R23 R22 K83 ["SearchRequested"]
      441 GETUPVAL                         R23 6
      442 GETTABLEKS                       R23 R23 K92 ["useCallback"]
      444 NEWCLOSURE                       R24 P2
      445 CAPTURE                          VAL R0
      446 CAPTURE                          UPVAL U15
      447 CAPTURE                          UPVAL U14
      448 CAPTURE                          UPVAL U3
      449 CAPTURE                          UPVAL U16
      450 NEWTABLE                         R25 0 2
      452 GETTABLEKS                       R26 R0 K93 ["PermissionsChanged"]
      454 GETTABLEKS                       R27 R0 K94 ["Permissions"]
      456 SETLIST                          R25 R26 2 [1]
      458 CALL                             R23 2 1
      459 SETTABLEKS                       R23 R22 K84 ["CollaboratorSelected"]
      461 CALL                             R20 2 1
      462 SETTABLEKS                       R20 R19 K74 ["SearchbarWidget"]
      464 GETUPVAL                         R20 6
      465 GETTABLEKS                       R20 R20 K6 ["createElement"]
      467 GETUPVAL                         R21 17
      468 DUPTABLE                         R22 K97 [{"ItemHeight", "LayoutOrder", "Enabled", "Permissions", "PermissionChanged"}]
      469 GETIMPORT                        R23 K29 [UDim.new]
      471 LOADN                            R24 0
      472 LOADN                            R25 50
      473 CALL                             R23 2 1
      474 SETTABLEKS                       R23 R22 K95 ["ItemHeight"]
      476 NAMECALL                         R23 R3 K40 ["getNextOrder"]
      478 CALL                             R23 1 1
      479 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      481 SETTABLEKS                       R5 R22 K81 ["Enabled"]
      483 GETTABLEKS                       R23 R0 K94 ["Permissions"]
      485 SETTABLEKS                       R23 R22 K94 ["Permissions"]
      487 GETUPVAL                         R23 6
      488 GETTABLEKS                       R23 R23 K92 ["useCallback"]
      490 NEWCLOSURE                       R24 P3
      491 CAPTURE                          VAL R0
      492 CAPTURE                          UPVAL U15
      493 CAPTURE                          UPVAL U3
      494 NEWTABLE                         R25 0 2
      496 GETTABLEKS                       R26 R0 K93 ["PermissionsChanged"]
      498 GETTABLEKS                       R27 R0 K94 ["Permissions"]
      500 SETLIST                          R25 R26 2 [1]
      502 CALL                             R23 2 1
      503 SETTABLEKS                       R23 R22 K96 ["PermissionChanged"]
      505 CALL                             R20 2 1
      506 SETTABLEKS                       R20 R19 K75 ["CollaboratorsList"]
      508 CALL                             R16 3 1
      509 SETTABLEKS                       R16 R15 K53 ["Collaborators"]
      511 CALL                             R12 3 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R12
      514 SETTABLEKS                       R12 R11 K20 ["AccessSection"]
      516 CALL                             R8 3 1
      517 RETURN                           R8 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["collaborators"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 LOADNIL                          R3
        6 GETTABLEKS                       R4 R0 K1 ["packagePermissions"]
        8 JUMPIFNOT                        R4 ; [+11]
        9 GETTABLEKS                       R5 R0 K1 ["packagePermissions"]
       11 GETTABLEKS                       R6 R1 K2 ["AssetId"]
       13 GETTABLE                         R4 R5 R6
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETTABLEKS                       R4 R0 K1 ["packagePermissions"]
       17 GETTABLEKS                       R5 R1 K2 ["AssetId"]
       19 GETTABLE                         R3 R4 R5
       20 LOADNIL                          R4
       21 GETTABLEKS                       R6 R0 K3 ["assetConfigData"]
       23 JUMPIFNOT                        R6 ; [+5]
       24 GETTABLEKS                       R5 R0 K3 ["assetConfigData"]
       26 GETTABLEKS                       R5 R5 K4 ["Creator"]
       28 JUMPIF                           R5 ; [+1]
       29 LOADNIL                          R5
       30 JUMPIFNOT                        R5 ; [+13]
       31 DUPTABLE                         R6 K7 [{"Id", "Type"}]
       32 GETTABLEKS                       R7 R5 K8 ["targetId"]
       34 SETTABLEKS                       R7 R6 K5 ["Id"]
       36 GETIMPORT                        R8 K11 [Enum.CreatorType]
       38 GETTABLEKS                       R9 R5 K12 ["type"]
       40 GETTABLE                         R7 R8 R9
       41 SETTABLEKS                       R7 R6 K6 ["Type"]
       43 MOVE                             R4 R6
       44 GETTABLEKS                       R6 R0 K13 ["localUserFriends"]
       46 JUMPIF                           R6 ; [+2]
       47 NEWTABLE                         R6 0 0
       49 LOADB                            R7 0
       50 GETUPVAL                         R8 0
       51 JUMPIFNOTEQ                      R6 R8 ; [+4]
       53 NEWTABLE                         R6 0 0
       55 LOADB                            R7 1
       56 NEWTABLE                         R8 0 0
       58 GETUPVAL                         R9 1
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+12]
       61 GETTABLEKS                       R9 R0 K14 ["localUserGroups"]
       63 JUMPIF                           R9 ; [+2]
       64 NEWTABLE                         R9 0 0
       66 MOVE                             R8 R9
       67 GETUPVAL                         R9 0
       68 JUMPIFNOTEQ                      R8 R9 ; [+4]
       70 NEWTABLE                         R8 0 0
       72 LOADB                            R7 1
       73 DUPTABLE                         R9 K19 [{"Permissions", "CurrentUserPackagePermission", "Owner", "PotentialCollaborators"}]
       74 SETTABLEKS                       R2 R9 K15 ["Permissions"]
       76 SETTABLEKS                       R3 R9 K16 ["CurrentUserPackagePermission"]
       78 SETTABLEKS                       R4 R9 K17 ["Owner"]
       80 DUPTABLE                         R10 K23 [{"Friends", "Groups", "IsLoading"}]
       81 SETTABLEKS                       R6 R10 K20 ["Friends"]
       83 SETTABLEKS                       R8 R10 K21 ["Groups"]
       85 SETTABLEKS                       R7 R10 K22 ["IsLoading"]
       87 SETTABLEKS                       R10 R9 K18 ["PotentialCollaborators"]
       89 RETURN                           R9 1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K0 ["permissions"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"SearchRequested", "PermissionsChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SearchRequested"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["PermissionsChanged"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K11 ["Stylizer"]
       28 GETTABLEKS                       R7 R5 K12 ["Localization"]
       30 GETTABLEKS                       R8 R4 K13 ["Util"]
       32 GETTABLEKS                       R8 R8 K14 ["deepJoin"]
       34 GETTABLEKS                       R9 R4 K13 ["Util"]
       36 GETTABLEKS                       R9 R9 K15 ["LayoutOrderIterator"]
       38 GETTABLEKS                       R10 R4 K16 ["UI"]
       40 GETTABLEKS                       R10 R10 K17 ["ScrollingFrame"]
       42 GETTABLEKS                       R11 R4 K16 ["UI"]
       44 GETTABLEKS                       R11 R11 K18 ["Separator"]
       46 GETIMPORT                        R12 K6 [require]
       48 GETTABLEKS                       R13 R0 K19 ["Src"]
       50 GETTABLEKS                       R13 R13 K20 ["Components"]
       52 GETTABLEKS                       R13 R13 K21 ["AssetConfiguration"]
       54 GETTABLEKS                       R13 R13 K22 ["ConfigSectionWrapper"]
       56 CALL                             R12 1 1
       57 GETTABLEKS                       R13 R0 K19 ["Src"]
       59 GETTABLEKS                       R13 R13 K20 ["Components"]
       61 GETTABLEKS                       R13 R13 K21 ["AssetConfiguration"]
       63 GETTABLEKS                       R13 R13 K23 ["Permissions"]
       65 GETIMPORT                        R14 K6 [require]
       67 GETTABLEKS                       R15 R13 K24 ["CollaboratorLabel"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K6 [require]
       72 GETTABLEKS                       R16 R13 K25 ["CollaboratorSearch"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R17 R13 K26 ["CollaboratorsList"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K6 [require]
       82 GETTABLEKS                       R18 R13 K27 ["PermissionsConstants"]
       84 CALL                             R17 1 1
       85 GETTABLEKS                       R18 R0 K19 ["Src"]
       87 GETTABLEKS                       R18 R18 K13 ["Util"]
       89 GETIMPORT                        R19 K6 [require]
       91 GETTABLEKS                       R20 R18 K28 ["Constants"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K6 [require]
       96 GETTABLEKS                       R21 R18 K29 ["Keys"]
       98 CALL                             R20 1 1
       99 GETTABLEKS                       R20 R20 K30 ["LoadingInProgress"]
      101 GETIMPORT                        R21 K6 [require]
      103 GETTABLEKS                       R22 R0 K19 ["Src"]
      105 GETTABLEKS                       R22 R22 K31 ["Thunks"]
      107 GETTABLEKS                       R22 R22 K32 ["SearchCollaborators"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K6 [require]
      112 GETTABLEKS                       R23 R0 K19 ["Src"]
      114 GETTABLEKS                       R23 R23 K33 ["Actions"]
      116 GETTABLEKS                       R23 R23 K34 ["SetCollaborators"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K6 [require]
      121 GETTABLEKS                       R24 R0 K19 ["Src"]
      123 GETTABLEKS                       R24 R24 K33 ["Actions"]
      125 GETTABLEKS                       R24 R24 K35 ["AddChange"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K6 [require]
      130 GETTABLEKS                       R25 R0 K19 ["Src"]
      132 GETTABLEKS                       R25 R25 K13 ["Util"]
      134 GETTABLEKS                       R25 R25 K36 ["ToolboxUtilities"]
      136 CALL                             R24 1 1
      137 GETTABLEKS                       R24 R24 K37 ["shouldRenameFriendsToConnections"]
      139 GETIMPORT                        R25 K6 [require]
      141 GETTABLEKS                       R26 R0 K19 ["Src"]
      143 GETTABLEKS                       R26 R26 K38 ["Flags"]
      145 GETTABLEKS                       R26 R26 K39 ["getFFlagStudioFriendToConnection"]
      147 CALL                             R25 1 1
      148 GETIMPORT                        R26 K6 [require]
      150 GETTABLEKS                       R27 R0 K19 ["Src"]
      152 GETTABLEKS                       R27 R27 K38 ["Flags"]
      154 GETTABLEKS                       R27 R27 K40 ["getFFlagAACAddGroups"]
      156 CALL                             R26 1 1
      157 GETIMPORT                        R27 K43 [UDim2.fromOffset]
      159 LOADN                            R28 244
      160 LOADN                            R29 50
      161 CALL                             R27 2 1
      162 GETTABLEKS                       R28 R17 K44 ["UseViewKey"]
      164 NEWTABLE                         R29 2 0
      166 GETIMPORT                        R30 K48 [Enum.CreatorType.User]
      168 GETTABLEKS                       R31 R17 K49 ["UserSubjectKey"]
      170 SETTABLE                         R31 R29 R30
      171 GETIMPORT                        R30 K51 [Enum.CreatorType.Group]
      173 GETTABLEKS                       R31 R17 K52 ["GroupSubjectKey"]
      175 SETTABLE                         R31 R29 R30
      176 DUPCLOSURE                       R30 K53 [PROTO_0]
      177 CAPTURE                          VAL R29
      178 DUPCLOSURE                       R31 K54 [PROTO_5]
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R27
      193 CAPTURE                          VAL R29
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R16
      197 DUPCLOSURE                       R32 K55 [PROTO_6]
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R26
      200 DUPCLOSURE                       R33 K56 [PROTO_9]
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R23
      204 GETTABLEKS                       R34 R2 K57 ["memo"]
      206 MOVE                             R35 R31
      207 CALL                             R34 1 1
      208 GETTABLEKS                       R35 R3 K58 ["connect"]
      210 MOVE                             R36 R32
      211 MOVE                             R37 R33
      212 CALL                             R35 2 1
      213 MOVE                             R36 R34
      214 CALL                             R35 1 -1
      215 RETURN                           R35 -1
