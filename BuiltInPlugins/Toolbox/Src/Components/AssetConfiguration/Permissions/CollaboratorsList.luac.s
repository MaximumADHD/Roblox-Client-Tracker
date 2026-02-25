PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["UserSubjectKey"]
        3 JUMPIFEQ                         R0 R3 ; [+7]
        5 LOADB                            R2 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["GroupSubjectKey"]
        9 JUMPIFNOTEQ                      R0 R3 ; [+6]
       11 GETIMPORT                        R2 K4 [table.find]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K2 [{"Id", "Label"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["UseViewKey"]
        6 SETTABLEKS                       R3 R2 K0 ["Id"]
        8 GETUPVAL                         R3 1
        9 LOADK                            R5 K4 ["AssetConfigPackagePermissions"]
       10 LOADK                            R6 K5 ["UseViewLabel"]
       11 NAMECALL                         R3 R3 K6 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K1 ["Label"]
       16 SETLIST                          R1 R2 1 [1]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K7 ["UserSubjectKey"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+21]
       23 DUPTABLE                         R4 K2 [{"Id", "Label"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K8 ["EditKey"]
       27 SETTABLEKS                       R5 R4 K0 ["Id"]
       29 GETUPVAL                         R5 1
       30 LOADK                            R7 K4 ["AssetConfigPackagePermissions"]
       31 LOADK                            R8 K9 ["EditLabel"]
       32 NAMECALL                         R5 R5 K6 ["getText"]
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K1 ["Label"]
       37 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K12 [table.insert]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["DisplayName"]
        2 GETTABLEKS                       R4 R1 K0 ["DisplayName"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R2 R4 K2 ["Permissions"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETIMPORT                        R6 K1 [pairs]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 3
       13 FORGPREP_NEXT                    R6
       14 GETUPVAL                         R13 1
       15 GETTABLEKS                       R12 R13 K3 ["ActionKey"]
       17 GETTABLE                         R11 R10 R12
       18 GETGLOBAL                        R12 K4 ["permissionVisible"]
       20 MOVE                             R13 R4
       21 MOVE                             R14 R11
       22 CALL                             R12 2 1
       23 JUMPIFNOT                        R12 ; [+27]
       24 GETUPVAL                         R13 2
       25 GETTABLEKS                       R12 R13 K5 ["GetDisplayName"]
       27 DUPTABLE                         R13 K8 [{"Type", "Id"}]
       28 GETUPVAL                         R15 3
       29 GETTABLE                         R14 R15 R4
       30 SETTABLEKS                       R14 R13 K6 ["Type"]
       32 SETTABLEKS                       R9 R13 K7 ["Id"]
       34 CALL                             R12 1 1
       35 JUMPIFNOT                        R12 ; [+15]
       36 DUPTABLE                         R15 K13 [{"Action", "SubjectType", "SubjectId", "DisplayName"}]
       37 SETTABLEKS                       R11 R15 K9 ["Action"]
       39 SETTABLEKS                       R4 R15 K10 ["SubjectType"]
       41 SETTABLEKS                       R9 R15 K11 ["SubjectId"]
       43 SETTABLEKS                       R12 R15 K12 ["DisplayName"]
       45 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       47 MOVE                             R14 R0
       48 GETIMPORT                        R13 K16 [table.insert]
       50 CALL                             R13 2 0
       51 FORGLOOP                         R6 2 ; [-38]
       53 FORGLOOP                         R1 2 ; [-45]
       55 GETIMPORT                        R1 K18 [table.sort]
       57 MOVE                             R2 R0
       58 DUPCLOSURE                       R3 K19 [PROTO_2]
       59 CALL                             R1 2 0
       60 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enabled"]
        3 FASTCALL1                        ASSERT R3 ; [+2]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["PermissionChanged"]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K5 [{"Action"}]
       13 GETTABLEKS                       R6 R0 K6 ["Id"]
       15 SETTABLEKS                       R6 R5 K4 ["Action"]
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K3 ["RevokedKey"]
        7 SETTABLEKS                       R1 R0 K4 ["Action"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K5 ["PermissionChanged"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 2
       11 JUMPIFNOT                        R5 ; [+32]
       12 NEWTABLE                         R5 0 2
       14 DUPTABLE                         R6 K3 [{"Id", "Label"}]
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K4 ["UseViewKey"]
       18 SETTABLEKS                       R7 R6 K1 ["Id"]
       20 LOADK                            R9 K5 ["AssetConfigPackagePermissions"]
       21 LOADK                            R10 K6 ["UseViewLabel"]
       22 NAMECALL                         R7 R2 K7 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K2 ["Label"]
       27 DUPTABLE                         R7 K3 [{"Id", "Label"}]
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R8 R9 K8 ["EditKey"]
       31 SETTABLEKS                       R8 R7 K1 ["Id"]
       33 LOADK                            R10 K5 ["AssetConfigPackagePermissions"]
       34 LOADK                            R11 K9 ["EditLabel"]
       35 NAMECALL                         R8 R2 K7 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K2 ["Label"]
       40 SETLIST                          R5 R6 2 [1]
       42 MOVE                             R4 R5
       43 JUMP                             ; [+13]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K10 ["useCallback"]
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R7 0 1
       52 MOVE                             R8 R2
       53 SETLIST                          R7 R8 1 [1]
       55 CALL                             R5 2 1
       56 MOVE                             R3 R5
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R5 R6 K11 ["useContext"]
       60 GETUPVAL                         R7 5
       61 GETTABLEKS                       R6 R7 K12 ["Context"]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R6 R7 K13 ["useMemo"]
       67 NEWCLOSURE                       R7 P1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          UPVAL U6
       72 NEWTABLE                         R8 0 2
       74 GETTABLEKS                       R9 R0 K14 ["Permissions"]
       76 GETTABLEKS                       R10 R5 K15 ["GetDisplayName"]
       78 SETLIST                          R8 R9 2 [1]
       80 CALL                             R6 2 1
       81 GETIMPORT                        R7 K18 [UDim2.new]
       83 GETIMPORT                        R8 K20 [UDim.new]
       85 LOADN                            R9 1
       86 LOADN                            R10 0
       87 CALL                             R8 2 1
       88 GETTABLEKS                       R9 R0 K21 ["ItemHeight"]
       90 CALL                             R7 2 1
       91 NEWTABLE                         R8 0 0
       93 GETIMPORT                        R9 K23 [ipairs]
       95 MOVE                             R10 R6
       96 CALL                             R9 1 3
       97 FORGPREP_INEXT                   R9
       98 MOVE                             R15 R8
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R16 R17 K24 ["createElement"]
      102 LOADK                            R17 K25 ["Frame"]
      103 DUPTABLE                         R18 K29 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      104 SETTABLEKS                       R7 R18 K26 ["Size"]
      106 SETTABLEKS                       R12 R18 K27 ["LayoutOrder"]
      108 LOADN                            R19 1
      109 SETTABLEKS                       R19 R18 K28 ["BackgroundTransparency"]
      111 DUPTABLE                         R19 K33 [{"FirstSeparator", "PaddingFrame", "LastSeparator"}]
      112 GETUPVAL                         R21 4
      113 GETTABLEKS                       R20 R21 K24 ["createElement"]
      115 GETUPVAL                         R21 7
      116 DUPTABLE                         R22 K35 [{"Position"}]
      117 GETIMPORT                        R23 K18 [UDim2.new]
      119 LOADK                            R24 K36 [0.5]
      120 LOADN                            R25 0
      121 LOADN                            R26 0
      122 LOADN                            R27 0
      123 CALL                             R23 4 1
      124 SETTABLEKS                       R23 R22 K34 ["Position"]
      126 CALL                             R20 2 1
      127 SETTABLEKS                       R20 R19 K30 ["FirstSeparator"]
      129 GETUPVAL                         R21 4
      130 GETTABLEKS                       R20 R21 K24 ["createElement"]
      132 LOADK                            R21 K25 ["Frame"]
      133 DUPTABLE                         R22 K37 [{"Size", "BackgroundTransparency"}]
      134 GETIMPORT                        R23 K39 [UDim2.fromScale]
      136 LOADN                            R24 1
      137 LOADN                            R25 1
      138 CALL                             R23 2 1
      139 SETTABLEKS                       R23 R22 K26 ["Size"]
      141 LOADN                            R23 1
      142 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
      144 DUPTABLE                         R23 K43 [{"Padding", "CollaboratorLabel", "ControlsFrame"}]
      145 GETUPVAL                         R25 4
      146 GETTABLEKS                       R24 R25 K24 ["createElement"]
      148 LOADK                            R25 K44 ["UIPadding"]
      149 DUPTABLE                         R26 K47 [{"PaddingTop", "PaddingBottom"}]
      150 GETUPVAL                         R27 8
      151 SETTABLEKS                       R27 R26 K45 ["PaddingTop"]
      153 GETUPVAL                         R27 8
      154 SETTABLEKS                       R27 R26 K46 ["PaddingBottom"]
      156 CALL                             R24 2 1
      157 SETTABLEKS                       R24 R23 K40 ["Padding"]
      159 GETUPVAL                         R25 4
      160 GETTABLEKS                       R24 R25 K24 ["createElement"]
      162 GETUPVAL                         R25 9
      163 DUPTABLE                         R26 K49 [{"Size", "Id", "SubjectType"}]
      164 GETIMPORT                        R27 K18 [UDim2.new]
      166 GETUPVAL                         R28 10
      167 GETIMPORT                        R29 K20 [UDim.new]
      169 LOADN                            R30 1
      170 LOADN                            R31 0
      171 CALL                             R29 2 -1
      172 CALL                             R27 -1 1
      173 SETTABLEKS                       R27 R26 K26 ["Size"]
      175 GETTABLEKS                       R27 R13 K50 ["SubjectId"]
      177 SETTABLEKS                       R27 R26 K1 ["Id"]
      179 GETUPVAL                         R28 6
      180 GETTABLEKS                       R29 R13 K48 ["SubjectType"]
      182 GETTABLE                         R27 R28 R29
      183 SETTABLEKS                       R27 R26 K48 ["SubjectType"]
      185 CALL                             R24 2 1
      186 SETTABLEKS                       R24 R23 K41 ["CollaboratorLabel"]
      188 GETUPVAL                         R25 4
      189 GETTABLEKS                       R24 R25 K24 ["createElement"]
      191 LOADK                            R25 K25 ["Frame"]
      192 DUPTABLE                         R26 K53 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "BackgroundTransparency"}]
      193 GETIMPORT                        R27 K55 [Vector2.new]
      195 LOADN                            R28 1
      196 LOADK                            R29 K36 [0.5]
      197 CALL                             R27 2 1
      198 SETTABLEKS                       R27 R26 K51 ["AnchorPoint"]
      200 GETIMPORT                        R27 K39 [UDim2.fromScale]
      202 LOADN                            R28 1
      203 LOADK                            R29 K36 [0.5]
      204 CALL                             R27 2 1
      205 SETTABLEKS                       R27 R26 K34 ["Position"]
      207 GETIMPORT                        R27 K39 [UDim2.fromScale]
      209 LOADN                            R28 0
      210 LOADN                            R29 1
      211 CALL                             R27 2 1
      212 SETTABLEKS                       R27 R26 K26 ["Size"]
      214 GETIMPORT                        R27 K58 [Enum.AutomaticSize.X]
      216 SETTABLEKS                       R27 R26 K52 ["AutomaticSize"]
      218 LOADN                            R27 1
      219 SETTABLEKS                       R27 R26 K28 ["BackgroundTransparency"]
      221 DUPTABLE                         R27 K62 [{"Layout", "ActionSelect", "RemoveButton"}]
      222 GETUPVAL                         R29 4
      223 GETTABLEKS                       R28 R29 K24 ["createElement"]
      225 LOADK                            R29 K63 ["UIListLayout"]
      226 DUPTABLE                         R30 K67 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      227 GETIMPORT                        R31 K69 [Enum.FillDirection.Horizontal]
      229 SETTABLEKS                       R31 R30 K64 ["FillDirection"]
      231 GETIMPORT                        R31 K71 [Enum.VerticalAlignment.Center]
      233 SETTABLEKS                       R31 R30 K65 ["VerticalAlignment"]
      235 GETUPVAL                         R31 8
      236 SETTABLEKS                       R31 R30 K40 ["Padding"]
      238 GETIMPORT                        R31 K72 [Enum.SortOrder.LayoutOrder]
      240 SETTABLEKS                       R31 R30 K66 ["SortOrder"]
      242 CALL                             R28 2 1
      243 SETTABLEKS                       R28 R27 K59 ["Layout"]
      245 GETUPVAL                         R29 4
      246 GETTABLEKS                       R28 R29 K24 ["createElement"]
      248 GETUPVAL                         R29 11
      249 DUPTABLE                         R30 K79 [{"Width", "LayoutOrder", "TextTruncate", "Enabled", "Items", "SelectedId", "OnItemActivated"}]
      250 LOADN                            R31 130
      251 SETTABLEKS                       R31 R30 K73 ["Width"]
      253 LOADN                            R31 1
      254 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      256 GETIMPORT                        R31 K81 [Enum.TextTruncate.AtEnd]
      258 SETTABLEKS                       R31 R30 K74 ["TextTruncate"]
      260 GETTABLEKS                       R31 R0 K75 ["Enabled"]
      262 SETTABLEKS                       R31 R30 K75 ["Enabled"]
      264 GETUPVAL                         R32 2
      265 JUMPIFNOT                        R32 ; [+2]
      266 MOVE                             R31 R4
      267 JUMP                             ; [+4]
      268 MOVE                             R31 R3
      269 GETTABLEKS                       R32 R13 K48 ["SubjectType"]
      271 CALL                             R31 1 1
      272 SETTABLEKS                       R31 R30 K76 ["Items"]
      274 GETTABLEKS                       R31 R13 K82 ["Action"]
      276 SETTABLEKS                       R31 R30 K77 ["SelectedId"]
      278 NEWCLOSURE                       R31 P2
      279 CAPTURE                          VAL R0
      280 CAPTURE                          UPVAL U12
      281 CAPTURE                          VAL R13
      282 SETTABLEKS                       R31 R30 K78 ["OnItemActivated"]
      284 CALL                             R28 2 1
      285 SETTABLEKS                       R28 R27 K60 ["ActionSelect"]
      287 GETUPVAL                         R29 4
      288 GETTABLEKS                       R28 R29 K24 ["createElement"]
      290 GETUPVAL                         R29 13
      291 DUPTABLE                         R30 K88 [{"LayoutOrder", "isDisabled", "AutomaticSize", "BackgroundStyle", "IconColor", "LeftIcon", "OnClick"}]
      292 LOADN                            R31 2
      293 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      295 GETTABLEKS                       R32 R0 K75 ["Enabled"]
      297 NOT                              R31 R32
      298 SETTABLEKS                       R31 R30 K83 ["isDisabled"]
      300 GETIMPORT                        R31 K90 [Enum.AutomaticSize.XY]
      302 SETTABLEKS                       R31 R30 K52 ["AutomaticSize"]
      304 LOADK                            R31 K91 ["RoundBox"]
      305 SETTABLEKS                       R31 R30 K84 ["BackgroundStyle"]
      307 GETTABLEKS                       R34 R1 K92 ["assetConfig"]
      309 GETTABLEKS                       R33 R34 K93 ["packagePermissions"]
      311 GETTABLEKS                       R32 R33 K94 ["collaboratorItem"]
      313 GETTABLEKS                       R31 R32 K95 ["deleteButton"]
      315 SETTABLEKS                       R31 R30 K85 ["IconColor"]
      317 GETUPVAL                         R32 14
      318 GETTABLEKS                       R31 R32 K96 ["CLOSE_ICON"]
      320 SETTABLEKS                       R31 R30 K86 ["LeftIcon"]
      322 GETTABLEKS                       R32 R0 K75 ["Enabled"]
      324 JUMPIFNOT                        R32 ; [+5]
      325 NEWCLOSURE                       R31 P3
      326 CAPTURE                          VAL R13
      327 CAPTURE                          UPVAL U3
      328 CAPTURE                          VAL R0
      329 JUMP                             ; [+1]
      330 LOADNIL                          R31
      331 SETTABLEKS                       R31 R30 K87 ["OnClick"]
      333 CALL                             R28 2 1
      334 SETTABLEKS                       R28 R27 K61 ["RemoveButton"]
      336 CALL                             R24 3 1
      337 SETTABLEKS                       R24 R23 K42 ["ControlsFrame"]
      339 CALL                             R20 3 1
      340 SETTABLEKS                       R20 R19 K31 ["PaddingFrame"]
      342 LOADB                            R20 0
      343 LENGTH                           R21 R6
      344 JUMPIFNOTEQ                      R12 R21 ; [+16]
      346 GETUPVAL                         R21 4
      347 GETTABLEKS                       R20 R21 K24 ["createElement"]
      349 GETUPVAL                         R21 7
      350 DUPTABLE                         R22 K35 [{"Position"}]
      351 GETIMPORT                        R23 K18 [UDim2.new]
      353 LOADK                            R24 K36 [0.5]
      354 LOADN                            R25 0
      355 LOADN                            R26 1
      356 LOADN                            R27 255
      357 CALL                             R23 4 1
      358 SETTABLEKS                       R23 R22 K34 ["Position"]
      360 CALL                             R20 2 1
      361 SETTABLEKS                       R20 R19 K32 ["LastSeparator"]
      363 CALL                             R16 3 -1
      364 FASTCALL                         TABLE_INSERT ; [+2]
      365 GETIMPORT                        R14 K99 [table.insert]
      367 CALL                             R14 -1 0
      368 FORGLOOP                         R9 2 [inext] ; [-271]
      370 DUPTABLE                         R9 K100 [{"UIListLayout"}]
      371 GETUPVAL                         R11 4
      372 GETTABLEKS                       R10 R11 K24 ["createElement"]
      374 LOADK                            R11 K63 ["UIListLayout"]
      375 DUPTABLE                         R12 K101 [{"SortOrder", "Padding"}]
      376 GETIMPORT                        R13 K72 [Enum.SortOrder.LayoutOrder]
      378 SETTABLEKS                       R13 R12 K66 ["SortOrder"]
      380 GETUPVAL                         R13 15
      381 SETTABLEKS                       R13 R12 K40 ["Padding"]
      383 CALL                             R10 2 1
      384 SETTABLEKS                       R10 R9 K63 ["UIListLayout"]
      386 GETUPVAL                         R10 16
      387 CALL                             R10 0 1
      388 JUMPIFNOT                        R10 ; [+2]
      389 GETUPVAL                         R10 17
      390 CALL                             R10 0 1
      391 LENGTH                           R12 R8
      392 LOADN                            R13 0
      393 JUMPIFNOTLT                      R13 R12 ; [+98]
      395 DUPTABLE                         R11 K104 [{"CollaboratorsTitle", "Users"}]
      396 GETUPVAL                         R13 4
      397 GETTABLEKS                       R12 R13 K24 ["createElement"]
      399 LOADK                            R13 K105 ["TextLabel"]
      400 DUPTABLE                         R14 K111 [{"AutomaticSize", "LayoutOrder", "Font", "Text", "TextSize", "TextColor3", "TextXAlignment", "BackgroundTransparency"}]
      401 GETIMPORT                        R15 K90 [Enum.AutomaticSize.XY]
      403 SETTABLEKS                       R15 R14 K52 ["AutomaticSize"]
      405 LOADN                            R15 0
      406 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      408 GETUPVAL                         R16 18
      409 GETTABLEKS                       R15 R16 K112 ["FONT"]
      411 SETTABLEKS                       R15 R14 K106 ["Font"]
      413 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      414 LOADK                            R18 K113 ["Collaborator"]
      415 NAMECALL                         R15 R2 K7 ["getText"]
      417 CALL                             R15 3 1
      418 SETTABLEKS                       R15 R14 K107 ["Text"]
      420 GETUPVAL                         R16 18
      421 GETTABLEKS                       R15 R16 K114 ["FONT_SIZE_TITLE"]
      423 SETTABLEKS                       R15 R14 K108 ["TextSize"]
      425 GETTABLEKS                       R17 R1 K92 ["assetConfig"]
      427 GETTABLEKS                       R16 R17 K93 ["packagePermissions"]
      429 GETTABLEKS                       R15 R16 K115 ["subTextColor"]
      431 SETTABLEKS                       R15 R14 K109 ["TextColor3"]
      433 GETIMPORT                        R15 K117 [Enum.TextXAlignment.Left]
      435 SETTABLEKS                       R15 R14 K110 ["TextXAlignment"]
      437 LOADN                            R15 1
      438 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      440 CALL                             R12 2 1
      441 SETTABLEKS                       R12 R11 K102 ["CollaboratorsTitle"]
      443 GETUPVAL                         R13 4
      444 GETTABLEKS                       R12 R13 K24 ["createElement"]
      446 LOADK                            R13 K25 ["Frame"]
      447 DUPTABLE                         R14 K118 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Size"}]
      448 GETIMPORT                        R15 K90 [Enum.AutomaticSize.XY]
      450 SETTABLEKS                       R15 R14 K52 ["AutomaticSize"]
      452 LOADN                            R15 1
      453 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      455 LOADN                            R15 1
      456 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      458 GETIMPORT                        R15 K18 [UDim2.new]
      460 LOADN                            R16 1
      461 LOADN                            R17 0
      462 LOADN                            R18 0
      463 LOADN                            R19 0
      464 CALL                             R15 4 1
      465 SETTABLEKS                       R15 R14 K26 ["Size"]
      467 NEWTABLE                         R15 1 1
      469 GETUPVAL                         R18 4
      470 GETTABLEKS                       R17 R18 K24 ["createElement"]
      472 LOADK                            R18 K63 ["UIListLayout"]
      473 DUPTABLE                         R19 K119 [{"SortOrder"}]
      474 GETIMPORT                        R20 K72 [Enum.SortOrder.LayoutOrder]
      476 SETTABLEKS                       R20 R19 K66 ["SortOrder"]
      478 CALL                             R17 2 1
      479 SETTABLEKS                       R17 R15 K63 ["UIListLayout"]
      481 FASTCALL1                        TABLE_UNPACK R8 ; [+3]
      482 MOVE                             R17 R8
      483 GETIMPORT                        R16 K121 [table.unpack]
      485 CALL                             R16 1 -1
      486 SETLIST                          R15 R16 -1 [1]
      488 CALL                             R12 3 1
      489 SETTABLEKS                       R12 R11 K103 ["Users"]
      491 JUMP                             ; [+92]
      492 DUPTABLE                         R11 K124 [{"NoCollabsText", "SubText"}]
      493 GETUPVAL                         R13 4
      494 GETTABLEKS                       R12 R13 K24 ["createElement"]
      496 LOADK                            R13 K105 ["TextLabel"]
      497 DUPTABLE                         R14 K125 [{"Text", "LayoutOrder", "AutomaticSize", "Font", "TextSize", "TextColor3", "BackgroundTransparency"}]
      498 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      499 LOADK                            R18 K126 ["NoCollaborators"]
      500 NAMECALL                         R15 R2 K7 ["getText"]
      502 CALL                             R15 3 1
      503 SETTABLEKS                       R15 R14 K107 ["Text"]
      505 LOADN                            R15 0
      506 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      508 GETIMPORT                        R15 K90 [Enum.AutomaticSize.XY]
      510 SETTABLEKS                       R15 R14 K52 ["AutomaticSize"]
      512 GETUPVAL                         R16 18
      513 GETTABLEKS                       R15 R16 K127 ["FONT_BOLD"]
      515 SETTABLEKS                       R15 R14 K106 ["Font"]
      517 GETUPVAL                         R16 18
      518 GETTABLEKS                       R15 R16 K128 ["FONT_SIZE_SMALL"]
      520 SETTABLEKS                       R15 R14 K108 ["TextSize"]
      522 GETTABLEKS                       R16 R1 K92 ["assetConfig"]
      524 GETTABLEKS                       R15 R16 K129 ["textColor"]
      526 SETTABLEKS                       R15 R14 K109 ["TextColor3"]
      528 LOADN                            R15 1
      529 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      531 CALL                             R12 2 1
      532 SETTABLEKS                       R12 R11 K122 ["NoCollabsText"]
      534 GETUPVAL                         R13 4
      535 GETTABLEKS                       R12 R13 K24 ["createElement"]
      537 LOADK                            R13 K105 ["TextLabel"]
      538 DUPTABLE                         R14 K125 [{"Text", "LayoutOrder", "AutomaticSize", "Font", "TextSize", "TextColor3", "BackgroundTransparency"}]
      539 JUMPIFNOT                        R10 ; [+6]
      540 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      541 LOADK                            R18 K130 ["GiveAccessConnectionsSubtext"]
      542 NAMECALL                         R15 R2 K7 ["getText"]
      544 CALL                             R15 3 1
      545 JUMP                             ; [+5]
      546 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      547 LOADK                            R18 K131 ["GiveAccessSubtext"]
      548 NAMECALL                         R15 R2 K7 ["getText"]
      550 CALL                             R15 3 1
      551 SETTABLEKS                       R15 R14 K107 ["Text"]
      553 LOADN                            R15 1
      554 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      556 GETIMPORT                        R15 K90 [Enum.AutomaticSize.XY]
      558 SETTABLEKS                       R15 R14 K52 ["AutomaticSize"]
      560 GETUPVAL                         R16 18
      561 GETTABLEKS                       R15 R16 K112 ["FONT"]
      563 SETTABLEKS                       R15 R14 K106 ["Font"]
      565 GETUPVAL                         R16 18
      566 GETTABLEKS                       R15 R16 K128 ["FONT_SIZE_SMALL"]
      568 SETTABLEKS                       R15 R14 K108 ["TextSize"]
      570 GETTABLEKS                       R17 R1 K92 ["assetConfig"]
      572 GETTABLEKS                       R16 R17 K93 ["packagePermissions"]
      574 GETTABLEKS                       R15 R16 K115 ["subTextColor"]
      576 SETTABLEKS                       R15 R14 K109 ["TextColor3"]
      578 LOADN                            R15 1
      579 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      581 CALL                             R12 2 1
      582 SETTABLEKS                       R12 R11 K123 ["SubText"]
      584 GETUPVAL                         R13 4
      585 GETTABLEKS                       R12 R13 K24 ["createElement"]
      587 LOADK                            R13 K25 ["Frame"]
      588 DUPTABLE                         R14 K118 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Size"}]
      589 GETIMPORT                        R15 K133 [Enum.AutomaticSize.Y]
      591 SETTABLEKS                       R15 R14 K52 ["AutomaticSize"]
      593 GETTABLEKS                       R16 R0 K27 ["LayoutOrder"]
      595 ORK                              R15 R16 K134 [0]
      596 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      598 LOADN                            R15 1
      599 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      601 GETIMPORT                        R15 K18 [UDim2.new]
      603 LOADN                            R16 1
      604 LOADN                            R17 0
      605 LOADN                            R18 0
      606 LOADN                            R19 0
      607 CALL                             R15 4 1
      608 SETTABLEKS                       R15 R14 K26 ["Size"]
      610 GETUPVAL                         R15 12
      611 MOVE                             R16 R9
      612 MOVE                             R17 R11
      613 CALL                             R15 2 -1
      614 CALL                             R12 -1 -1
      615 RETURN                           R12 -1

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
       14 GETTABLEKS                       R4 R0 K8 ["Src"]
       16 GETTABLEKS                       R3 R4 K9 ["Util"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R3 K10 ["Constants"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R3 K11 ["Images"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["Framework"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       35 GETTABLEKS                       R8 R7 K14 ["Stylizer"]
       37 GETTABLEKS                       R9 R7 K15 ["Localization"]
       39 GETTABLEKS                       R13 R0 K8 ["Src"]
       41 GETTABLEKS                       R12 R13 K16 ["Components"]
       43 GETTABLEKS                       R11 R12 K17 ["AssetConfiguration"]
       45 GETTABLEKS                       R10 R11 K18 ["Permissions"]
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R10 K19 ["PermissionsConstants"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K6 [require]
       54 GETTABLEKS                       R13 R10 K20 ["CollaboratorLabel"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K6 [require]
       59 GETTABLEKS                       R14 R10 K21 ["CollaboratorInfo"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R15 R6 K22 ["UI"]
       64 GETTABLEKS                       R14 R15 K23 ["Separator"]
       66 GETTABLEKS                       R16 R6 K22 ["UI"]
       68 GETTABLEKS                       R15 R16 K24 ["SelectInput"]
       70 GETTABLEKS                       R17 R6 K22 ["UI"]
       72 GETTABLEKS                       R16 R17 K25 ["IconButton"]
       74 GETIMPORT                        R17 K6 [require]
       76 GETTABLEKS                       R18 R1 K26 ["Cryo"]
       78 CALL                             R17 1 1
       79 GETTABLEKS                       R19 R17 K27 ["Dictionary"]
       81 GETTABLEKS                       R18 R19 K28 ["join"]
       83 GETIMPORT                        R20 K6 [require]
       85 GETTABLEKS                       R23 R0 K8 ["Src"]
       87 GETTABLEKS                       R22 R23 K9 ["Util"]
       89 GETTABLEKS                       R21 R22 K29 ["ToolboxUtilities"]
       91 CALL                             R20 1 1
       92 GETTABLEKS                       R19 R20 K30 ["shouldRenameFriendsToConnections"]
       94 GETIMPORT                        R20 K6 [require]
       96 GETTABLEKS                       R23 R0 K8 ["Src"]
       98 GETTABLEKS                       R22 R23 K31 ["Flags"]
      100 GETTABLEKS                       R21 R22 K32 ["getFFlagStudioFriendToConnection"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K34 [game]
      105 LOADK                            R23 K35 ["AACGrantGroupsEditPerm"]
      106 LOADB                            R24 0
      107 NAMECALL                         R21 R21 K36 ["DefineFastFlag"]
      109 CALL                             R21 3 1
      110 GETIMPORT                        R22 K39 [UDim.new]
      112 LOADN                            R23 0
      113 LOADN                            R24 44
      114 CALL                             R22 2 1
      115 GETIMPORT                        R23 K39 [UDim.new]
      117 LOADN                            R24 0
      118 LOADN                            R25 10
      119 CALL                             R23 2 1
      120 GETIMPORT                        R24 K39 [UDim.new]
      122 LOADN                            R25 0
      123 LOADN                            R26 8
      124 CALL                             R24 2 1
      125 NEWTABLE                         R25 0 2
      127 GETTABLEKS                       R26 R11 K40 ["UseViewKey"]
      129 GETTABLEKS                       R27 R11 K41 ["EditKey"]
      131 SETLIST                          R25 R26 2 [1]
      133 DUPCLOSURE                       R26 K42 [PROTO_0]
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R25
      136 SETGLOBAL                        R26 K43 ["permissionVisible"]
      138 NEWTABLE                         R26 2 0
      140 GETTABLEKS                       R27 R11 K44 ["UserSubjectKey"]
      142 GETIMPORT                        R28 K48 [Enum.CreatorType.User]
      144 SETTABLE                         R28 R26 R27
      145 GETTABLEKS                       R27 R11 K49 ["GroupSubjectKey"]
      147 GETIMPORT                        R28 K51 [Enum.CreatorType.Group]
      149 SETTABLE                         R28 R26 R27
      150 DUPCLOSURE                       R27 K52 [PROTO_6]
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R4
      170 RETURN                           R27 1
