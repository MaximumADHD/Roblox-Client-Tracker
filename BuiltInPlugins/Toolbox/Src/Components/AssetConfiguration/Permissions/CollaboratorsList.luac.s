PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UserSubjectKey"]
        3 JUMPIFEQ                         R0 R3 ; [+7]
        5 LOADB                            R2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["GroupSubjectKey"]
        9 JUMPIFNOTEQ                      R0 R3 ; [+6]
       11 GETIMPORT                        R2 K4 [table.find]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K2 [{"Id", "Label"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["UseViewKey"]
        6 SETTABLEKS                       R3 R2 K0 ["Id"]
        8 GETUPVAL                         R3 1
        9 LOADK                            R5 K4 ["AssetConfigPackagePermissions"]
       10 LOADK                            R6 K5 ["UseViewLabel"]
       11 NAMECALL                         R3 R3 K6 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K1 ["Label"]
       16 SETLIST                          R1 R2 1 [1]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K7 ["UserSubjectKey"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+21]
       23 DUPTABLE                         R4 K2 [{"Id", "Label"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K8 ["EditKey"]
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
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Permissions"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETIMPORT                        R6 K1 [pairs]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 3
       13 FORGPREP_NEXT                    R6
       14 GETUPVAL                         R12 1
       15 GETTABLEKS                       R12 R12 K3 ["ActionKey"]
       17 GETTABLE                         R11 R10 R12
       18 GETGLOBAL                        R12 K4 ["permissionVisible"]
       20 MOVE                             R13 R4
       21 MOVE                             R14 R11
       22 CALL                             R12 2 1
       23 JUMPIFNOT                        R12 ; [+27]
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R12 R12 K5 ["GetDisplayName"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Enabled"]
        3 FASTCALL1                        ASSERT R3 ; [+2]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["PermissionChanged"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["RevokedKey"]
        7 SETTABLEKS                       R1 R0 K4 ["Action"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K5 ["PermissionChanged"]
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
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K4 ["UseViewKey"]
       18 SETTABLEKS                       R7 R6 K1 ["Id"]
       20 LOADK                            R9 K5 ["AssetConfigPackagePermissions"]
       21 LOADK                            R10 K6 ["UseViewLabel"]
       22 NAMECALL                         R7 R2 K7 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K2 ["Label"]
       27 DUPTABLE                         R7 K3 [{"Id", "Label"}]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K8 ["EditKey"]
       31 SETTABLEKS                       R8 R7 K1 ["Id"]
       33 LOADK                            R10 K5 ["AssetConfigPackagePermissions"]
       34 LOADK                            R11 K9 ["EditLabel"]
       35 NAMECALL                         R8 R2 K7 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K2 ["Label"]
       40 SETLIST                          R5 R6 2 [1]
       42 MOVE                             R4 R5
       43 JUMP                             ; [+13]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K10 ["useCallback"]
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R7 0 1
       52 MOVE                             R8 R2
       53 SETLIST                          R7 R8 1 [1]
       55 CALL                             R5 2 1
       56 MOVE                             R3 R5
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K11 ["useContext"]
       60 GETUPVAL                         R6 5
       61 GETTABLEKS                       R6 R6 K12 ["Context"]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R6 4
       65 GETTABLEKS                       R6 R6 K13 ["useMemo"]
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
       99 GETUPVAL                         R16 4
      100 GETTABLEKS                       R16 R16 K24 ["createElement"]
      102 LOADK                            R17 K25 ["Frame"]
      103 DUPTABLE                         R18 K30 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      104 SETTABLEKS                       R7 R18 K26 ["Size"]
      106 SETTABLEKS                       R12 R18 K27 ["LayoutOrder"]
      108 DUPTABLE                         R19 K34 [{"FirstSeparator", "PaddingFrame", "LastSeparator"}]
      109 GETUPVAL                         R20 4
      110 GETTABLEKS                       R20 R20 K24 ["createElement"]
      112 GETUPVAL                         R21 7
      113 DUPTABLE                         R22 K36 [{"Position"}]
      114 GETIMPORT                        R23 K18 [UDim2.new]
      116 LOADK                            R24 K37 [0.5]
      117 LOADN                            R25 0
      118 LOADN                            R26 0
      119 LOADN                            R27 0
      120 CALL                             R23 4 1
      121 SETTABLEKS                       R23 R22 K35 ["Position"]
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K31 ["FirstSeparator"]
      126 GETUPVAL                         R20 4
      127 GETTABLEKS                       R20 R20 K24 ["createElement"]
      129 LOADK                            R21 K25 ["Frame"]
      130 DUPTABLE                         R22 K38 [{["Size"], ["BackgroundTransparency"] = 1}]
      131 GETIMPORT                        R23 K40 [UDim2.fromScale]
      133 LOADN                            R24 1
      134 LOADN                            R25 1
      135 CALL                             R23 2 1
      136 SETTABLEKS                       R23 R22 K26 ["Size"]
      138 DUPTABLE                         R23 K44 [{"Padding", "CollaboratorLabel", "ControlsFrame"}]
      139 GETUPVAL                         R24 4
      140 GETTABLEKS                       R24 R24 K24 ["createElement"]
      142 LOADK                            R25 K45 ["UIPadding"]
      143 DUPTABLE                         R26 K48 [{"PaddingTop", "PaddingBottom"}]
      144 GETUPVAL                         R27 8
      145 SETTABLEKS                       R27 R26 K46 ["PaddingTop"]
      147 GETUPVAL                         R27 8
      148 SETTABLEKS                       R27 R26 K47 ["PaddingBottom"]
      150 CALL                             R24 2 1
      151 SETTABLEKS                       R24 R23 K41 ["Padding"]
      153 GETUPVAL                         R24 4
      154 GETTABLEKS                       R24 R24 K24 ["createElement"]
      156 GETUPVAL                         R25 9
      157 DUPTABLE                         R26 K50 [{"Size", "Id", "SubjectType"}]
      158 GETIMPORT                        R27 K18 [UDim2.new]
      160 GETUPVAL                         R28 10
      161 GETIMPORT                        R29 K20 [UDim.new]
      163 LOADN                            R30 1
      164 LOADN                            R31 0
      165 CALL                             R29 2 -1
      166 CALL                             R27 -1 1
      167 SETTABLEKS                       R27 R26 K26 ["Size"]
      169 GETTABLEKS                       R27 R13 K51 ["SubjectId"]
      171 SETTABLEKS                       R27 R26 K1 ["Id"]
      173 GETUPVAL                         R28 6
      174 GETTABLEKS                       R29 R13 K49 ["SubjectType"]
      176 GETTABLE                         R27 R28 R29
      177 SETTABLEKS                       R27 R26 K49 ["SubjectType"]
      179 CALL                             R24 2 1
      180 SETTABLEKS                       R24 R23 K42 ["CollaboratorLabel"]
      182 GETUPVAL                         R24 4
      183 GETTABLEKS                       R24 R24 K24 ["createElement"]
      185 LOADK                            R25 K25 ["Frame"]
      186 DUPTABLE                         R26 K54 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      187 GETIMPORT                        R27 K56 [Vector2.new]
      189 LOADN                            R28 1
      190 LOADK                            R29 K37 [0.5]
      191 CALL                             R27 2 1
      192 SETTABLEKS                       R27 R26 K52 ["AnchorPoint"]
      194 GETIMPORT                        R27 K40 [UDim2.fromScale]
      196 LOADN                            R28 1
      197 LOADK                            R29 K37 [0.5]
      198 CALL                             R27 2 1
      199 SETTABLEKS                       R27 R26 K35 ["Position"]
      201 GETIMPORT                        R27 K40 [UDim2.fromScale]
      203 LOADN                            R28 0
      204 LOADN                            R29 1
      205 CALL                             R27 2 1
      206 SETTABLEKS                       R27 R26 K26 ["Size"]
      208 GETIMPORT                        R27 K59 [Enum.AutomaticSize.X]
      210 SETTABLEKS                       R27 R26 K53 ["AutomaticSize"]
      212 DUPTABLE                         R27 K63 [{"Layout", "ActionSelect", "RemoveButton"}]
      213 GETUPVAL                         R28 4
      214 GETTABLEKS                       R28 R28 K24 ["createElement"]
      216 LOADK                            R29 K64 ["UIListLayout"]
      217 DUPTABLE                         R30 K68 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      218 GETIMPORT                        R31 K70 [Enum.FillDirection.Horizontal]
      220 SETTABLEKS                       R31 R30 K65 ["FillDirection"]
      222 GETIMPORT                        R31 K72 [Enum.VerticalAlignment.Center]
      224 SETTABLEKS                       R31 R30 K66 ["VerticalAlignment"]
      226 GETUPVAL                         R31 8
      227 SETTABLEKS                       R31 R30 K41 ["Padding"]
      229 GETIMPORT                        R31 K73 [Enum.SortOrder.LayoutOrder]
      231 SETTABLEKS                       R31 R30 K67 ["SortOrder"]
      233 CALL                             R28 2 1
      234 SETTABLEKS                       R28 R27 K60 ["Layout"]
      236 GETUPVAL                         R28 4
      237 GETTABLEKS                       R28 R28 K24 ["createElement"]
      239 GETUPVAL                         R29 11
      240 DUPTABLE                         R30 K81 [{["Width"] = 130, ["LayoutOrder"] = 1, ["TextTruncate"], ["Enabled"], ["Items"], ["SelectedId"], ["OnItemActivated"]}]
      241 GETIMPORT                        R31 K83 [Enum.TextTruncate.AtEnd]
      243 SETTABLEKS                       R31 R30 K76 ["TextTruncate"]
      245 GETTABLEKS                       R31 R0 K77 ["Enabled"]
      247 SETTABLEKS                       R31 R30 K77 ["Enabled"]
      249 GETUPVAL                         R32 2
      250 JUMPIFNOT                        R32 ; [+2]
      251 MOVE                             R31 R4
      252 JUMP                             ; [+4]
      253 MOVE                             R31 R3
      254 GETTABLEKS                       R32 R13 K49 ["SubjectType"]
      256 CALL                             R31 1 1
      257 SETTABLEKS                       R31 R30 K78 ["Items"]
      259 GETTABLEKS                       R31 R13 K84 ["Action"]
      261 SETTABLEKS                       R31 R30 K79 ["SelectedId"]
      263 NEWCLOSURE                       R31 P2
      264 CAPTURE                          VAL R0
      265 CAPTURE                          UPVAL U12
      266 CAPTURE                          VAL R13
      267 SETTABLEKS                       R31 R30 K80 ["OnItemActivated"]
      269 CALL                             R28 2 1
      270 SETTABLEKS                       R28 R27 K61 ["ActionSelect"]
      272 GETUPVAL                         R28 4
      273 GETTABLEKS                       R28 R28 K24 ["createElement"]
      275 GETUPVAL                         R29 13
      276 DUPTABLE                         R30 K92 [{["LayoutOrder"] = 2, ["isDisabled"], ["AutomaticSize"], ["BackgroundStyle"] = "RoundBox", ["IconColor"], ["LeftIcon"], ["OnClick"]}]
      277 GETTABLEKS                       R32 R0 K77 ["Enabled"]
      279 NOT                              R31 R32
      280 SETTABLEKS                       R31 R30 K86 ["isDisabled"]
      282 GETIMPORT                        R31 K94 [Enum.AutomaticSize.XY]
      284 SETTABLEKS                       R31 R30 K53 ["AutomaticSize"]
      286 GETTABLEKS                       R31 R1 K95 ["assetConfig"]
      288 GETTABLEKS                       R31 R31 K96 ["packagePermissions"]
      290 GETTABLEKS                       R31 R31 K97 ["collaboratorItem"]
      292 GETTABLEKS                       R31 R31 K98 ["deleteButton"]
      294 SETTABLEKS                       R31 R30 K89 ["IconColor"]
      296 GETUPVAL                         R31 14
      297 GETTABLEKS                       R31 R31 K99 ["CLOSE_ICON"]
      299 SETTABLEKS                       R31 R30 K90 ["LeftIcon"]
      301 GETTABLEKS                       R32 R0 K77 ["Enabled"]
      303 JUMPIFNOT                        R32 ; [+5]
      304 NEWCLOSURE                       R31 P3
      305 CAPTURE                          VAL R13
      306 CAPTURE                          UPVAL U3
      307 CAPTURE                          VAL R0
      308 JUMP                             ; [+1]
      309 LOADNIL                          R31
      310 SETTABLEKS                       R31 R30 K91 ["OnClick"]
      312 CALL                             R28 2 1
      313 SETTABLEKS                       R28 R27 K62 ["RemoveButton"]
      315 CALL                             R24 3 1
      316 SETTABLEKS                       R24 R23 K43 ["ControlsFrame"]
      318 CALL                             R20 3 1
      319 SETTABLEKS                       R20 R19 K32 ["PaddingFrame"]
      321 LOADB                            R20 0
      322 LENGTH                           R21 R6
      323 JUMPIFNOTEQ                      R12 R21 ; [+16]
      325 GETUPVAL                         R20 4
      326 GETTABLEKS                       R20 R20 K24 ["createElement"]
      328 GETUPVAL                         R21 7
      329 DUPTABLE                         R22 K36 [{"Position"}]
      330 GETIMPORT                        R23 K18 [UDim2.new]
      332 LOADK                            R24 K37 [0.5]
      333 LOADN                            R25 0
      334 LOADN                            R26 1
      335 LOADN                            R27 -1
      336 CALL                             R23 4 1
      337 SETTABLEKS                       R23 R22 K35 ["Position"]
      339 CALL                             R20 2 1
      340 SETTABLEKS                       R20 R19 K33 ["LastSeparator"]
      342 CALL                             R16 3 -1
      343 FASTCALL                         TABLE_INSERT ; [+2]
      344 GETIMPORT                        R14 K102 [table.insert]
      346 CALL                             R14 -1 0
      347 FORGLOOP                         R9 2 [inext] ; [-250]
      349 DUPTABLE                         R9 K103 [{"UIListLayout"}]
      350 GETUPVAL                         R10 4
      351 GETTABLEKS                       R10 R10 K24 ["createElement"]
      353 LOADK                            R11 K64 ["UIListLayout"]
      354 DUPTABLE                         R12 K104 [{"SortOrder", "Padding"}]
      355 GETIMPORT                        R13 K73 [Enum.SortOrder.LayoutOrder]
      357 SETTABLEKS                       R13 R12 K67 ["SortOrder"]
      359 GETUPVAL                         R13 15
      360 SETTABLEKS                       R13 R12 K41 ["Padding"]
      362 CALL                             R10 2 1
      363 SETTABLEKS                       R10 R9 K64 ["UIListLayout"]
      365 GETUPVAL                         R10 16
      366 CALL                             R10 0 1
      367 JUMPIFNOT                        R10 ; [+2]
      368 GETUPVAL                         R10 17
      369 CALL                             R10 0 1
      370 LENGTH                           R12 R8
      371 LOADN                            R13 0
      372 JUMPIFNOTLT                      R13 R12 ; [+86]
      374 DUPTABLE                         R11 K107 [{"CollaboratorsTitle", "Users"}]
      375 GETUPVAL                         R12 4
      376 GETTABLEKS                       R12 R12 K24 ["createElement"]
      378 LOADK                            R13 K108 ["TextLabel"]
      379 DUPTABLE                         R14 K115 [{["AutomaticSize"], ["LayoutOrder"] = 0, ["Font"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["BackgroundTransparency"] = 1}]
      380 GETIMPORT                        R15 K94 [Enum.AutomaticSize.XY]
      382 SETTABLEKS                       R15 R14 K53 ["AutomaticSize"]
      384 GETUPVAL                         R15 18
      385 GETTABLEKS                       R15 R15 K116 ["FONT"]
      387 SETTABLEKS                       R15 R14 K110 ["Font"]
      389 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      390 LOADK                            R18 K117 ["Collaborator"]
      391 NAMECALL                         R15 R2 K7 ["getText"]
      393 CALL                             R15 3 1
      394 SETTABLEKS                       R15 R14 K111 ["Text"]
      396 GETUPVAL                         R15 18
      397 GETTABLEKS                       R15 R15 K118 ["FONT_SIZE_TITLE"]
      399 SETTABLEKS                       R15 R14 K112 ["TextSize"]
      401 GETTABLEKS                       R15 R1 K95 ["assetConfig"]
      403 GETTABLEKS                       R15 R15 K96 ["packagePermissions"]
      405 GETTABLEKS                       R15 R15 K119 ["subTextColor"]
      407 SETTABLEKS                       R15 R14 K113 ["TextColor3"]
      409 GETIMPORT                        R15 K121 [Enum.TextXAlignment.Left]
      411 SETTABLEKS                       R15 R14 K114 ["TextXAlignment"]
      413 CALL                             R12 2 1
      414 SETTABLEKS                       R12 R11 K105 ["CollaboratorsTitle"]
      416 GETUPVAL                         R12 4
      417 GETTABLEKS                       R12 R12 K24 ["createElement"]
      419 LOADK                            R13 K25 ["Frame"]
      420 DUPTABLE                         R14 K122 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Size"]}]
      421 GETIMPORT                        R15 K94 [Enum.AutomaticSize.XY]
      423 SETTABLEKS                       R15 R14 K53 ["AutomaticSize"]
      425 GETIMPORT                        R15 K18 [UDim2.new]
      427 LOADN                            R16 1
      428 LOADN                            R17 0
      429 LOADN                            R18 0
      430 LOADN                            R19 0
      431 CALL                             R15 4 1
      432 SETTABLEKS                       R15 R14 K26 ["Size"]
      434 NEWTABLE                         R15 1 1
      436 GETUPVAL                         R17 4
      437 GETTABLEKS                       R17 R17 K24 ["createElement"]
      439 LOADK                            R18 K64 ["UIListLayout"]
      440 DUPTABLE                         R19 K123 [{"SortOrder"}]
      441 GETIMPORT                        R20 K73 [Enum.SortOrder.LayoutOrder]
      443 SETTABLEKS                       R20 R19 K67 ["SortOrder"]
      445 CALL                             R17 2 1
      446 SETTABLEKS                       R17 R15 K64 ["UIListLayout"]
      448 FASTCALL1                        TABLE_UNPACK R8 ; [+3]
      449 MOVE                             R17 R8
      450 GETIMPORT                        R16 K125 [table.unpack]
      452 CALL                             R16 1 -1
      453 SETLIST                          R15 R16 -1 [1]
      455 CALL                             R12 3 1
      456 SETTABLEKS                       R12 R11 K106 ["Users"]
      458 JUMP                             ; [+80]
      459 DUPTABLE                         R11 K128 [{"NoCollabsText", "SubText"}]
      460 GETUPVAL                         R12 4
      461 GETTABLEKS                       R12 R12 K24 ["createElement"]
      463 LOADK                            R13 K108 ["TextLabel"]
      464 DUPTABLE                         R14 K129 [{["Text"], ["LayoutOrder"] = 0, ["AutomaticSize"], ["Font"], ["TextSize"], ["TextColor3"], ["BackgroundTransparency"] = 1}]
      465 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      466 LOADK                            R18 K130 ["NoCollaborators"]
      467 NAMECALL                         R15 R2 K7 ["getText"]
      469 CALL                             R15 3 1
      470 SETTABLEKS                       R15 R14 K111 ["Text"]
      472 GETIMPORT                        R15 K94 [Enum.AutomaticSize.XY]
      474 SETTABLEKS                       R15 R14 K53 ["AutomaticSize"]
      476 GETUPVAL                         R15 18
      477 GETTABLEKS                       R15 R15 K131 ["FONT_BOLD"]
      479 SETTABLEKS                       R15 R14 K110 ["Font"]
      481 GETUPVAL                         R15 18
      482 GETTABLEKS                       R15 R15 K132 ["FONT_SIZE_SMALL"]
      484 SETTABLEKS                       R15 R14 K112 ["TextSize"]
      486 GETTABLEKS                       R15 R1 K95 ["assetConfig"]
      488 GETTABLEKS                       R15 R15 K133 ["textColor"]
      490 SETTABLEKS                       R15 R14 K113 ["TextColor3"]
      492 CALL                             R12 2 1
      493 SETTABLEKS                       R12 R11 K126 ["NoCollabsText"]
      495 GETUPVAL                         R12 4
      496 GETTABLEKS                       R12 R12 K24 ["createElement"]
      498 LOADK                            R13 K108 ["TextLabel"]
      499 DUPTABLE                         R14 K134 [{["Text"], ["LayoutOrder"] = 1, ["AutomaticSize"], ["Font"], ["TextSize"], ["TextColor3"], ["BackgroundTransparency"] = 1}]
      500 JUMPIFNOT                        R10 ; [+6]
      501 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      502 LOADK                            R18 K135 ["GiveAccessConnectionsSubtext"]
      503 NAMECALL                         R15 R2 K7 ["getText"]
      505 CALL                             R15 3 1
      506 JUMP                             ; [+5]
      507 LOADK                            R17 K5 ["AssetConfigPackagePermissions"]
      508 LOADK                            R18 K136 ["GiveAccessSubtext"]
      509 NAMECALL                         R15 R2 K7 ["getText"]
      511 CALL                             R15 3 1
      512 SETTABLEKS                       R15 R14 K111 ["Text"]
      514 GETIMPORT                        R15 K94 [Enum.AutomaticSize.XY]
      516 SETTABLEKS                       R15 R14 K53 ["AutomaticSize"]
      518 GETUPVAL                         R15 18
      519 GETTABLEKS                       R15 R15 K116 ["FONT"]
      521 SETTABLEKS                       R15 R14 K110 ["Font"]
      523 GETUPVAL                         R15 18
      524 GETTABLEKS                       R15 R15 K132 ["FONT_SIZE_SMALL"]
      526 SETTABLEKS                       R15 R14 K112 ["TextSize"]
      528 GETTABLEKS                       R15 R1 K95 ["assetConfig"]
      530 GETTABLEKS                       R15 R15 K96 ["packagePermissions"]
      532 GETTABLEKS                       R15 R15 K119 ["subTextColor"]
      534 SETTABLEKS                       R15 R14 K113 ["TextColor3"]
      536 CALL                             R12 2 1
      537 SETTABLEKS                       R12 R11 K127 ["SubText"]
      539 GETUPVAL                         R12 4
      540 GETTABLEKS                       R12 R12 K24 ["createElement"]
      542 LOADK                            R13 K25 ["Frame"]
      543 DUPTABLE                         R14 K137 [{["AutomaticSize"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"]}]
      544 GETIMPORT                        R15 K139 [Enum.AutomaticSize.Y]
      546 SETTABLEKS                       R15 R14 K53 ["AutomaticSize"]
      548 GETTABLEKS                       R16 R0 K27 ["LayoutOrder"]
      550 ORK                              R15 R16 K109 [0]
      551 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      553 GETIMPORT                        R15 K18 [UDim2.new]
      555 LOADN                            R16 1
      556 LOADN                            R17 0
      557 LOADN                            R18 0
      558 LOADN                            R19 0
      559 CALL                             R15 4 1
      560 SETTABLEKS                       R15 R14 K26 ["Size"]
      562 GETUPVAL                         R15 12
      563 MOVE                             R16 R9
      564 MOVE                             R17 R11
      565 CALL                             R15 2 -1
      566 CALL                             R12 -1 -1
      567 RETURN                           R12 -1

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
       14 GETTABLEKS                       R3 R0 K8 ["Src"]
       16 GETTABLEKS                       R3 R3 K9 ["Util"]
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
       39 GETTABLEKS                       R10 R0 K8 ["Src"]
       41 GETTABLEKS                       R10 R10 K16 ["Components"]
       43 GETTABLEKS                       R10 R10 K17 ["AssetConfiguration"]
       45 GETTABLEKS                       R10 R10 K18 ["Permissions"]
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R10 K19 ["PermissionsConstants"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K6 [require]
       54 GETTABLEKS                       R13 R10 K20 ["CollaboratorLabel"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K6 [require]
       59 GETTABLEKS                       R14 R10 K21 ["CollaboratorInfo"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R6 K22 ["UI"]
       64 GETTABLEKS                       R14 R14 K23 ["Separator"]
       66 GETTABLEKS                       R15 R6 K22 ["UI"]
       68 GETTABLEKS                       R15 R15 K24 ["SelectInput"]
       70 GETTABLEKS                       R16 R6 K22 ["UI"]
       72 GETTABLEKS                       R16 R16 K25 ["IconButton"]
       74 GETIMPORT                        R17 K6 [require]
       76 GETTABLEKS                       R18 R1 K26 ["Cryo"]
       78 CALL                             R17 1 1
       79 GETTABLEKS                       R18 R17 K27 ["Dictionary"]
       81 GETTABLEKS                       R18 R18 K28 ["join"]
       83 GETIMPORT                        R19 K6 [require]
       85 GETTABLEKS                       R20 R0 K8 ["Src"]
       87 GETTABLEKS                       R20 R20 K9 ["Util"]
       89 GETTABLEKS                       R20 R20 K29 ["ToolboxUtilities"]
       91 CALL                             R19 1 1
       92 GETTABLEKS                       R19 R19 K30 ["shouldRenameFriendsToConnections"]
       94 GETIMPORT                        R20 K6 [require]
       96 GETTABLEKS                       R21 R0 K8 ["Src"]
       98 GETTABLEKS                       R21 R21 K31 ["Flags"]
      100 GETTABLEKS                       R21 R21 K32 ["getFFlagStudioFriendToConnection"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K34 [game]
      105 LOADK                            R23 K35 ["AACGrantGroupsEditPerm"]
      106 LOADB                            R24 0
      107 NAMECALL                         R21 R21 K36 ["DefineFastFlag"]
      109 CALL                             R21 3 1
      110 GETIMPORT                        R22 K39 [UDim.new]
      112 LOADN                            R23 0
      113 LOADN                            R24 300
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
