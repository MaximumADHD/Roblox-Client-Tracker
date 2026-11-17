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
       49 DUPTABLE                         R10 K12 [{["LayoutOrder"], ["Size"], ["AutomaticCanvasSize"], ["BackgroundTransparency"] = 1}]
       50 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       54 GETTABLEKS                       R11 R0 K8 ["Size"]
       56 SETTABLEKS                       R11 R10 K8 ["Size"]
       58 GETIMPORT                        R11 K16 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R11 R10 K9 ["AutomaticCanvasSize"]
       62 DUPTABLE                         R11 K22 [{"Padding", "UIListLayout", "OwnerSection", "Separator", "AccessSection"}]
       63 GETUPVAL                         R12 6
       64 GETTABLEKS                       R12 R12 K6 ["createElement"]
       66 LOADK                            R13 K23 ["UIPadding"]
       67 DUPTABLE                         R14 K28 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       68 GETIMPORT                        R15 K30 [UDim.new]
       70 LOADN                            R16 0
       71 GETUPVAL                         R17 8
       72 GETTABLEKS                       R17 R17 K31 ["PERMISSIONS_UI_EDGE_PADDING"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K24 ["PaddingTop"]
       77 GETIMPORT                        R15 K30 [UDim.new]
       79 LOADN                            R16 0
       80 GETUPVAL                         R17 8
       81 GETTABLEKS                       R17 R17 K31 ["PERMISSIONS_UI_EDGE_PADDING"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K25 ["PaddingBottom"]
       86 GETIMPORT                        R15 K30 [UDim.new]
       88 LOADN                            R16 0
       89 GETUPVAL                         R17 8
       90 GETTABLEKS                       R17 R17 K31 ["PERMISSIONS_UI_EDGE_PADDING"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K26 ["PaddingLeft"]
       95 GETIMPORT                        R15 K30 [UDim.new]
       97 LOADN                            R16 0
       98 GETUPVAL                         R17 8
       99 GETTABLEKS                       R17 R17 K31 ["PERMISSIONS_UI_EDGE_PADDING"]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K27 ["PaddingRight"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K17 ["Padding"]
      107 GETUPVAL                         R12 6
      108 GETTABLEKS                       R12 R12 K6 ["createElement"]
      110 LOADK                            R13 K18 ["UIListLayout"]
      111 DUPTABLE                         R14 K33 [{"Padding", "SortOrder"}]
      112 GETIMPORT                        R15 K30 [UDim.new]
      114 LOADN                            R16 0
      115 GETUPVAL                         R17 8
      116 GETTABLEKS                       R17 R17 K34 ["PERMISSIONS_TAB_LIST_PADDING"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K17 ["Padding"]
      121 GETIMPORT                        R15 K35 [Enum.SortOrder.LayoutOrder]
      123 SETTABLEKS                       R15 R14 K32 ["SortOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K18 ["UIListLayout"]
      128 GETUPVAL                         R12 6
      129 GETTABLEKS                       R12 R12 K6 ["createElement"]
      131 GETUPVAL                         R13 9
      132 DUPTABLE                         R14 K37 [{"Title", "LayoutOrder"}]
      133 LOADK                            R17 K38 ["AssetConfigPackagePermissions"]
      134 LOADK                            R18 K39 ["PackageOwner"]
      135 NAMECALL                         R15 R2 K40 ["getText"]
      137 CALL                             R15 3 1
      138 SETTABLEKS                       R15 R14 K36 ["Title"]
      140 NAMECALL                         R15 R3 K41 ["getNextOrder"]
      142 CALL                             R15 1 1
      143 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      145 DUPTABLE                         R15 K43 [{"OwnerLabel"}]
      146 GETUPVAL                         R16 6
      147 GETTABLEKS                       R16 R16 K6 ["createElement"]
      149 GETUPVAL                         R17 10
      150 DUPTABLE                         R18 K46 [{"Size", "Id", "SubjectType", "LayoutOrder"}]
      151 GETIMPORT                        R19 K48 [UDim2.new]
      153 LOADN                            R20 1
      154 LOADN                            R21 0
      155 LOADN                            R22 0
      156 LOADN                            R23 60
      157 CALL                             R19 4 1
      158 SETTABLEKS                       R19 R18 K8 ["Size"]
      160 GETTABLEKS                       R19 R6 K44 ["Id"]
      162 SETTABLEKS                       R19 R18 K44 ["Id"]
      164 GETTABLEKS                       R19 R6 K49 ["Type"]
      166 SETTABLEKS                       R19 R18 K45 ["SubjectType"]
      168 NAMECALL                         R19 R3 K41 ["getNextOrder"]
      170 CALL                             R19 1 1
      171 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      173 CALL                             R16 2 1
      174 SETTABLEKS                       R16 R15 K42 ["OwnerLabel"]
      176 CALL                             R12 3 1
      177 SETTABLEKS                       R12 R11 K19 ["OwnerSection"]
      179 GETUPVAL                         R12 6
      180 GETTABLEKS                       R12 R12 K6 ["createElement"]
      182 GETUPVAL                         R13 11
      183 DUPTABLE                         R14 K50 [{"LayoutOrder"}]
      184 NAMECALL                         R15 R3 K41 ["getNextOrder"]
      186 CALL                             R15 1 1
      187 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      189 CALL                             R12 2 1
      190 SETTABLEKS                       R12 R11 K20 ["Separator"]
      192 JUMPIFNOT                        R4 ; [+302]
      193 GETUPVAL                         R12 6
      194 GETTABLEKS                       R12 R12 K6 ["createElement"]
      196 GETUPVAL                         R13 9
      197 DUPTABLE                         R14 K37 [{"Title", "LayoutOrder"}]
      198 LOADK                            R17 K38 ["AssetConfigPackagePermissions"]
      199 LOADK                            R18 K51 ["CollaboratorAccessHeader"]
      200 NAMECALL                         R15 R2 K40 ["getText"]
      202 CALL                             R15 3 1
      203 SETTABLEKS                       R15 R14 K36 ["Title"]
      205 NAMECALL                         R15 R3 K41 ["getNextOrder"]
      207 CALL                             R15 1 1
      208 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      210 DUPTABLE                         R15 K55 [{"UIListLayout", "AllVersionsWarning", "Spacer", "Collaborators"}]
      211 GETUPVAL                         R16 6
      212 GETTABLEKS                       R16 R16 K6 ["createElement"]
      214 LOADK                            R17 K18 ["UIListLayout"]
      215 DUPTABLE                         R18 K33 [{"Padding", "SortOrder"}]
      216 GETIMPORT                        R19 K30 [UDim.new]
      218 LOADN                            R20 0
      219 LOADN                            R21 20
      220 CALL                             R19 2 1
      221 SETTABLEKS                       R19 R18 K17 ["Padding"]
      223 GETIMPORT                        R19 K35 [Enum.SortOrder.LayoutOrder]
      225 SETTABLEKS                       R19 R18 K32 ["SortOrder"]
      227 CALL                             R16 2 1
      228 SETTABLEKS                       R16 R15 K18 ["UIListLayout"]
      230 MOVE                             R16 R5
      231 JUMPIFNOT                        R16 ; [+38]
      232 GETUPVAL                         R16 6
      233 GETTABLEKS                       R16 R16 K6 ["createElement"]
      235 LOADK                            R17 K56 ["TextLabel"]
      236 DUPTABLE                         R18 K63 [{["LayoutOrder"], ["AutomaticSize"], ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["BackgroundTransparency"] = 1}]
      237 NAMECALL                         R19 R3 K41 ["getNextOrder"]
      239 CALL                             R19 1 1
      240 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      242 GETIMPORT                        R19 K65 [Enum.AutomaticSize.XY]
      244 SETTABLEKS                       R19 R18 K14 ["AutomaticSize"]
      246 LOADK                            R21 K38 ["AssetConfigPackagePermissions"]
      247 LOADK                            R22 K52 ["AllVersionsWarning"]
      248 NAMECALL                         R19 R2 K40 ["getText"]
      250 CALL                             R19 3 1
      251 SETTABLEKS                       R19 R18 K57 ["Text"]
      253 GETUPVAL                         R19 8
      254 GETTABLEKS                       R19 R19 K66 ["FONT"]
      256 SETTABLEKS                       R19 R18 K58 ["Font"]
      258 GETUPVAL                         R19 8
      259 GETTABLEKS                       R19 R19 K67 ["FONT_SIZE_LARGE"]
      261 SETTABLEKS                       R19 R18 K59 ["TextSize"]
      263 GETTABLEKS                       R19 R1 K68 ["assetConfig"]
      265 GETTABLEKS                       R19 R19 K69 ["textColor"]
      267 SETTABLEKS                       R19 R18 K60 ["TextColor3"]
      269 CALL                             R16 2 1
      270 SETTABLEKS                       R16 R15 K52 ["AllVersionsWarning"]
      272 GETUPVAL                         R16 6
      273 GETTABLEKS                       R16 R16 K6 ["createElement"]
      275 LOADK                            R17 K70 ["Frame"]
      276 DUPTABLE                         R18 K71 [{"Size", "LayoutOrder"}]
      277 GETIMPORT                        R19 K73 [UDim2.fromOffset]
      279 LOADN                            R20 0
      280 LOADN                            R21 0
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K8 ["Size"]
      284 NAMECALL                         R19 R3 K41 ["getNextOrder"]
      286 CALL                             R19 1 1
      287 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      289 CALL                             R16 2 1
      290 SETTABLEKS                       R16 R15 K53 ["Spacer"]
      292 GETUPVAL                         R16 6
      293 GETTABLEKS                       R16 R16 K6 ["createElement"]
      295 GETUPVAL                         R17 7
      296 DUPTABLE                         R18 K74 [{"AutomaticCanvasSize", "LayoutOrder"}]
      297 GETIMPORT                        R19 K16 [Enum.AutomaticSize.Y]
      299 SETTABLEKS                       R19 R18 K9 ["AutomaticCanvasSize"]
      301 NAMECALL                         R19 R3 K41 ["getNextOrder"]
      303 CALL                             R19 1 1
      304 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      306 DUPTABLE                         R19 K78 [{"UIListLayout", "FriendsAndGroupsInfo", "SearchbarWidget", "CollaboratorsList"}]
      307 GETUPVAL                         R20 6
      308 GETTABLEKS                       R20 R20 K6 ["createElement"]
      310 LOADK                            R21 K18 ["UIListLayout"]
      311 DUPTABLE                         R22 K33 [{"Padding", "SortOrder"}]
      312 GETIMPORT                        R23 K30 [UDim.new]
      314 LOADN                            R24 0
      315 LOADN                            R25 20
      316 CALL                             R23 2 1
      317 SETTABLEKS                       R23 R22 K17 ["Padding"]
      319 GETIMPORT                        R23 K35 [Enum.SortOrder.LayoutOrder]
      321 SETTABLEKS                       R23 R22 K32 ["SortOrder"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K18 ["UIListLayout"]
      326 GETUPVAL                         R20 6
      327 GETTABLEKS                       R20 R20 K6 ["createElement"]
      329 LOADK                            R21 K56 ["TextLabel"]
      330 DUPTABLE                         R22 K79 [{["Text"], ["LayoutOrder"], ["AutomaticSize"], ["Font"], ["TextSize"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True}]
      331 JUMPIFNOT                        R7 ; [+6]
      332 LOADK                            R25 K38 ["AssetConfigPackagePermissions"]
      333 LOADK                            R26 K80 ["OnlyConnectionsAndGroups"]
      334 NAMECALL                         R23 R2 K40 ["getText"]
      336 CALL                             R23 3 1
      337 JUMP                             ; [+5]
      338 LOADK                            R25 K38 ["AssetConfigPackagePermissions"]
      339 LOADK                            R26 K81 ["OnlyFriendsAndGroups"]
      340 NAMECALL                         R23 R2 K40 ["getText"]
      342 CALL                             R23 3 1
      343 SETTABLEKS                       R23 R22 K57 ["Text"]
      345 NAMECALL                         R23 R3 K41 ["getNextOrder"]
      347 CALL                             R23 1 1
      348 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      350 GETIMPORT                        R23 K65 [Enum.AutomaticSize.XY]
      352 SETTABLEKS                       R23 R22 K14 ["AutomaticSize"]
      354 GETUPVAL                         R23 8
      355 GETTABLEKS                       R23 R23 K66 ["FONT"]
      357 SETTABLEKS                       R23 R22 K58 ["Font"]
      359 GETUPVAL                         R23 8
      360 GETTABLEKS                       R23 R23 K67 ["FONT_SIZE_LARGE"]
      362 SETTABLEKS                       R23 R22 K59 ["TextSize"]
      364 GETTABLEKS                       R23 R1 K68 ["assetConfig"]
      366 GETTABLEKS                       R23 R23 K69 ["textColor"]
      368 SETTABLEKS                       R23 R22 K60 ["TextColor3"]
      370 CALL                             R20 2 1
      371 SETTABLEKS                       R20 R19 K75 ["FriendsAndGroupsInfo"]
      373 MOVE                             R20 R5
      374 JUMPIFNOT                        R20 ; [+69]
      375 GETUPVAL                         R20 6
      376 GETTABLEKS                       R20 R20 K6 ["createElement"]
      378 GETUPVAL                         R21 12
      379 DUPTABLE                         R22 K87 [{["LayoutOrder"], ["Size"], ["ListItemSize"], ["Enabled"] = True, ["Collaborators"], ["Filter"], ["SearchRequested"], ["CollaboratorSelected"]}]
      380 NAMECALL                         R23 R3 K41 ["getNextOrder"]
      382 CALL                             R23 1 1
      383 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      385 GETUPVAL                         R23 13
      386 SETTABLEKS                       R23 R22 K8 ["Size"]
      388 GETIMPORT                        R23 K89 [Vector2.new]
      390 GETUPVAL                         R24 13
      391 GETTABLEKS                       R24 R24 K90 ["X"]
      393 GETTABLEKS                       R24 R24 K91 ["Offset"]
      395 LOADN                            R25 50
      396 CALL                             R23 2 1
      397 SETTABLEKS                       R23 R22 K82 ["ListItemSize"]
      399 GETUPVAL                         R23 6
      400 GETTABLEKS                       R23 R23 K92 ["useMemo"]
      402 NEWCLOSURE                       R24 P0
      403 CAPTURE                          VAL R0
      404 CAPTURE                          UPVAL U3
      405 NEWTABLE                         R25 0 1
      407 GETTABLEKS                       R26 R0 K93 ["PotentialCollaborators"]
      409 SETLIST                          R25 R26 1 [1]
      411 CALL                             R23 2 1
      412 SETTABLEKS                       R23 R22 K54 ["Collaborators"]
      414 NEWCLOSURE                       R23 P1
      415 CAPTURE                          VAL R0
      416 CAPTURE                          UPVAL U14
      417 SETTABLEKS                       R23 R22 K84 ["Filter"]
      419 GETTABLEKS                       R23 R0 K85 ["SearchRequested"]
      421 SETTABLEKS                       R23 R22 K85 ["SearchRequested"]
      423 GETUPVAL                         R23 6
      424 GETTABLEKS                       R23 R23 K94 ["useCallback"]
      426 NEWCLOSURE                       R24 P2
      427 CAPTURE                          VAL R0
      428 CAPTURE                          UPVAL U15
      429 CAPTURE                          UPVAL U14
      430 CAPTURE                          UPVAL U3
      431 CAPTURE                          UPVAL U16
      432 NEWTABLE                         R25 0 2
      434 GETTABLEKS                       R26 R0 K95 ["PermissionsChanged"]
      436 GETTABLEKS                       R27 R0 K96 ["Permissions"]
      438 SETLIST                          R25 R26 2 [1]
      440 CALL                             R23 2 1
      441 SETTABLEKS                       R23 R22 K86 ["CollaboratorSelected"]
      443 CALL                             R20 2 1
      444 SETTABLEKS                       R20 R19 K76 ["SearchbarWidget"]
      446 GETUPVAL                         R20 6
      447 GETTABLEKS                       R20 R20 K6 ["createElement"]
      449 GETUPVAL                         R21 17
      450 DUPTABLE                         R22 K99 [{"ItemHeight", "LayoutOrder", "Enabled", "Permissions", "PermissionChanged"}]
      451 GETIMPORT                        R23 K30 [UDim.new]
      453 LOADN                            R24 0
      454 LOADN                            R25 50
      455 CALL                             R23 2 1
      456 SETTABLEKS                       R23 R22 K97 ["ItemHeight"]
      458 NAMECALL                         R23 R3 K41 ["getNextOrder"]
      460 CALL                             R23 1 1
      461 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      463 SETTABLEKS                       R5 R22 K83 ["Enabled"]
      465 GETTABLEKS                       R23 R0 K96 ["Permissions"]
      467 SETTABLEKS                       R23 R22 K96 ["Permissions"]
      469 GETUPVAL                         R23 6
      470 GETTABLEKS                       R23 R23 K94 ["useCallback"]
      472 NEWCLOSURE                       R24 P3
      473 CAPTURE                          VAL R0
      474 CAPTURE                          UPVAL U15
      475 CAPTURE                          UPVAL U3
      476 NEWTABLE                         R25 0 2
      478 GETTABLEKS                       R26 R0 K95 ["PermissionsChanged"]
      480 GETTABLEKS                       R27 R0 K96 ["Permissions"]
      482 SETLIST                          R25 R26 2 [1]
      484 CALL                             R23 2 1
      485 SETTABLEKS                       R23 R22 K98 ["PermissionChanged"]
      487 CALL                             R20 2 1
      488 SETTABLEKS                       R20 R19 K77 ["CollaboratorsList"]
      490 CALL                             R16 3 1
      491 SETTABLEKS                       R16 R15 K54 ["Collaborators"]
      493 CALL                             R12 3 1
      494 JUMP                             ; [+1]
      495 LOADNIL                          R12
      496 SETTABLEKS                       R12 R11 K21 ["AccessSection"]
      498 CALL                             R8 3 1
      499 RETURN                           R8 1

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
       56 GETTABLEKS                       R8 R0 K14 ["localUserGroups"]
       58 JUMPIF                           R8 ; [+2]
       59 NEWTABLE                         R8 0 0
       61 GETUPVAL                         R9 0
       62 JUMPIFNOTEQ                      R8 R9 ; [+4]
       64 NEWTABLE                         R8 0 0
       66 LOADB                            R7 1
       67 DUPTABLE                         R9 K19 [{"Permissions", "CurrentUserPackagePermission", "Owner", "PotentialCollaborators"}]
       68 SETTABLEKS                       R2 R9 K15 ["Permissions"]
       70 SETTABLEKS                       R3 R9 K16 ["CurrentUserPackagePermission"]
       72 SETTABLEKS                       R4 R9 K17 ["Owner"]
       74 DUPTABLE                         R10 K23 [{"Friends", "Groups", "IsLoading"}]
       75 SETTABLEKS                       R6 R10 K20 ["Friends"]
       77 SETTABLEKS                       R8 R10 K21 ["Groups"]
       79 SETTABLEKS                       R7 R10 K22 ["IsLoading"]
       81 SETTABLEKS                       R10 R9 K18 ["PotentialCollaborators"]
       83 RETURN                           R9 1

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
      148 GETIMPORT                        R26 K42 [UDim2.fromOffset]
      150 LOADN                            R27 500
      151 LOADN                            R28 50
      152 CALL                             R26 2 1
      153 GETTABLEKS                       R27 R17 K43 ["UseViewKey"]
      155 NEWTABLE                         R28 2 0
      157 GETIMPORT                        R29 K47 [Enum.CreatorType.User]
      159 GETTABLEKS                       R30 R17 K48 ["UserSubjectKey"]
      161 SETTABLE                         R30 R28 R29
      162 GETIMPORT                        R29 K50 [Enum.CreatorType.Group]
      164 GETTABLEKS                       R30 R17 K51 ["GroupSubjectKey"]
      166 SETTABLE                         R30 R28 R29
      167 DUPCLOSURE                       R29 K52 [PROTO_0]
      168 CAPTURE                          VAL R28
      169 DUPCLOSURE                       R30 K53 [PROTO_5]
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R24
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R28
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R27
      187 CAPTURE                          VAL R16
      188 DUPCLOSURE                       R31 K54 [PROTO_6]
      189 CAPTURE                          VAL R20
      190 DUPCLOSURE                       R32 K55 [PROTO_9]
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R23
      194 GETTABLEKS                       R33 R2 K56 ["memo"]
      196 MOVE                             R34 R30
      197 CALL                             R33 1 1
      198 GETTABLEKS                       R34 R3 K57 ["connect"]
      200 MOVE                             R35 R31
      201 MOVE                             R36 R32
      202 CALL                             R34 2 1
      203 MOVE                             R35 R33
      204 CALL                             R34 1 -1
      205 RETURN                           R34 -1
