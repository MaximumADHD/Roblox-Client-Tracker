PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["slotIndex"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       12 GETTABLEKS                       R3 R3 K3 ["useTokens"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["useState"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["useRef"]
       23 LOADNIL                          R7
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U4
       31 NEWTABLE                         R9 0 0
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R10 0 2
       41 GETTABLEKS                       R11 R0 K7 ["onActivated"]
       43 GETTABLEKS                       R12 R0 K8 ["slotIndex"]
       45 SETLIST                          R10 R11 2 [1]
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R10 R0 K9 ["material"]
       51 CALL                             R9 1 1
       52 LOADB                            R10 1
       53 GETTABLEKS                       R11 R0 K9 ["material"]
       55 GETIMPORT                        R12 K13 [Enum.Material.Air]
       57 JUMPIFEQ                         R11 R12 ; [+9]
       59 GETTABLEKS                       R11 R0 K9 ["material"]
       61 GETIMPORT                        R12 K15 [Enum.Material.Water]
       63 JUMPIFEQ                         R11 R12 ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 GETTABLEKS                       R11 R0 K16 ["onContextMenuClosed"]
       69 GETTABLEKS                       R12 R0 K17 ["onContextMenuOpened"]
       71 GETTABLEKS                       R13 R0 K18 ["onDelete"]
       73 GETTABLEKS                       R14 R0 K19 ["onDuplicate"]
       75 LOADNIL                          R15
       76 JUMPIF                           R10 ; [+49]
       77 JUMPIFEQKNIL                     R11 ; [+48]
       79 JUMPIFEQKNIL                     R12 ; [+46]
       81 JUMPIFEQKNIL                     R13 ; [+44]
       83 JUMPIFEQKNIL                     R14 ; [+42]
       85 GETUPVAL                         R16 0
       86 GETTABLEKS                       R16 R16 K20 ["createElement"]
       88 GETUPVAL                         R17 6
       89 DUPTABLE                         R18 K27 [{"anchorRef", "canDuplicate", "isOpen", "onClose", "onDelete", "onDuplicate", "onOpen", "slotIndex", "viewType"}]
       90 SETTABLEKS                       R6 R18 K21 ["anchorRef"]
       92 GETTABLEKS                       R20 R0 K22 ["canDuplicate"]
       94 JUMPIFEQKB                       R20 TRUE ; [+2]
       96 LOADB                            R19 0 +1
       97 LOADB                            R19 1
       98 SETTABLEKS                       R19 R18 K22 ["canDuplicate"]
      100 GETTABLEKS                       R20 R0 K28 ["isContextMenuOpen"]
      102 JUMPIFEQKB                       R20 TRUE ; [+2]
      104 LOADB                            R19 0 +1
      105 LOADB                            R19 1
      106 SETTABLEKS                       R19 R18 K23 ["isOpen"]
      108 SETTABLEKS                       R11 R18 K24 ["onClose"]
      110 SETTABLEKS                       R13 R18 K18 ["onDelete"]
      112 SETTABLEKS                       R14 R18 K19 ["onDuplicate"]
      114 SETTABLEKS                       R12 R18 K25 ["onOpen"]
      116 GETTABLEKS                       R19 R0 K8 ["slotIndex"]
      118 SETTABLEKS                       R19 R18 K8 ["slotIndex"]
      120 GETTABLEKS                       R19 R0 K26 ["viewType"]
      122 SETTABLEKS                       R19 R18 K26 ["viewType"]
      124 CALL                             R16 2 1
      125 MOVE                             R15 R16
      126 GETTABLEKS                       R17 R0 K26 ["viewType"]
      128 JUMPIFNOTEQKS                    R17 K29 ["grid"] ; [+11]
      130 GETTABLEKS                       R17 R0 K30 ["isSelected"]
      132 JUMPIFNOT                        R17 ; [+7]
      133 GETTABLEKS                       R16 R3 K31 ["Color"]
      135 GETTABLEKS                       R16 R16 K32 ["ActionEmphasis"]
      137 GETTABLEKS                       R16 R16 K33 ["Background"]
      139 JUMP                             ; [+14]
      140 JUMPIFNOT                        R4 ; [+7]
      141 GETTABLEKS                       R16 R3 K31 ["Color"]
      143 GETTABLEKS                       R16 R16 K34 ["Stroke"]
      145 GETTABLEKS                       R16 R16 K35 ["Emphasis"]
      147 JUMP                             ; [+6]
      148 GETTABLEKS                       R16 R3 K31 ["Color"]
      150 GETTABLEKS                       R16 R16 K34 ["Stroke"]
      152 GETTABLEKS                       R16 R16 K36 ["Default"]
      154 GETTABLEKS                       R18 R0 K26 ["viewType"]
      156 JUMPIFNOTEQKS                    R18 K29 ["grid"] ; [+9]
      158 GETTABLEKS                       R18 R0 K30 ["isSelected"]
      160 JUMPIFNOT                        R18 ; [+5]
      161 GETTABLEKS                       R17 R3 K34 ["Stroke"]
      163 GETTABLEKS                       R17 R17 K37 ["Thick"]
      165 JUMP                             ; [+4]
      166 GETTABLEKS                       R17 R3 K34 ["Stroke"]
      168 GETTABLEKS                       R17 R17 K38 ["Standard"]
      170 DUPTABLE                         R18 K47 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      171 JUMPIFNOT                        R9 ; [+3]
      172 GETTABLEKS                       R19 R9 K9 ["material"]
      174 JUMP                             ; [+8]
      175 GETTABLEKS                       R20 R0 K48 ["variant"]
      177 JUMPIFNOT                        R20 ; [+3]
      178 GETTABLEKS                       R19 R0 K48 ["variant"]
      180 JUMP                             ; [+2]
      181 GETTABLEKS                       R19 R0 K9 ["material"]
      183 SETTABLEKS                       R19 R18 K11 ["Material"]
      185 JUMPIFNOT                        R9 ; [+3]
      186 GETTABLEKS                       R19 R9 K49 ["color"]
      188 JUMP                             ; [+2]
      189 GETTABLEKS                       R19 R0 K49 ["color"]
      191 SETTABLEKS                       R19 R18 K39 ["OverrideColor"]
      193 JUMPIFNOT                        R9 ; [+3]
      194 GETTABLEKS                       R19 R9 K50 ["transparency"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R19
      198 SETTABLEKS                       R19 R18 K40 ["OverrideTransparency"]
      200 GETUPVAL                         R19 7
      201 GETTABLEKS                       R19 R19 K51 ["CubeCornerOn"]
      203 SETTABLEKS                       R19 R18 K41 ["MaterialPreviewGeometryType"]
      205 GETIMPORT                        R21 K54 [Enum.StudioStyleGuideColor.ViewPortBackground]
      207 NAMECALL                         R19 R2 K55 ["GetColor"]
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K42 ["BackgroundColor"]
      212 GETIMPORT                        R19 K58 [UDim2.fromScale]
      214 LOADN                            R20 1
      215 LOADN                            R21 1
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K43 ["Size"]
      219 GETIMPORT                        R19 K61 [UDim.new]
      221 LOADN                            R20 0
      222 GETTABLEKS                       R21 R3 K62 ["Radius"]
      224 GETTABLEKS                       R21 R21 K63 ["Medium"]
      226 CALL                             R19 2 1
      227 SETTABLEKS                       R19 R18 K44 ["CornerRadius"]
      229 GETUPVAL                         R19 0
      230 GETTABLEKS                       R19 R19 K20 ["createElement"]
      232 GETUPVAL                         R20 8
      233 MOVE                             R21 R18
      234 CALL                             R19 2 1
      235 GETUPVAL                         R20 0
      236 GETTABLEKS                       R20 R20 K20 ["createElement"]
      238 GETUPVAL                         R21 9
      239 DUPTABLE                         R22 K69 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-400 text-title-small text-align-x-left text-truncate-end content-emphasis"}]
      240 GETTABLEKS                       R23 R0 K70 ["name"]
      242 SETTABLEKS                       R23 R22 K66 ["Text"]
      244 CALL                             R20 2 1
      245 LOADK                            R22 K71 ["%* %*"]
      246 LOADK                            R26 K72 ["Plugin"]
      247 LOADK                            R27 K73 ["SlotLabel"]
      248 NAMECALL                         R24 R1 K74 ["getText"]
      250 CALL                             R24 3 1
      251 GETTABLEKS                       R25 R0 K8 ["slotIndex"]
      253 NAMECALL                         R22 R22 K75 ["format"]
      255 CALL                             R22 3 1
      256 MOVE                             R21 R22
      257 JUMPIFNOT                        R10 ; [+11]
      258 LOADK                            R22 K76 ["%* (%*)"]
      259 MOVE                             R24 R21
      260 LOADK                            R27 K72 ["Plugin"]
      261 LOADK                            R28 K77 ["ReadOnlyLabel"]
      262 NAMECALL                         R25 R1 K74 ["getText"]
      264 CALL                             R25 3 1
      265 NAMECALL                         R22 R22 K75 ["format"]
      267 CALL                             R22 3 1
      268 MOVE                             R21 R22
      269 GETUPVAL                         R22 0
      270 GETTABLEKS                       R22 R22 K20 ["createElement"]
      272 GETUPVAL                         R23 9
      273 DUPTABLE                         R24 K81 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left content-default", ["testId"] = "SlotLabel"}]
      274 SETTABLEKS                       R21 R24 K66 ["Text"]
      276 CALL                             R22 2 1
      277 GETTABLEKS                       R23 R0 K26 ["viewType"]
      279 JUMPIFNOTEQKS                    R23 K29 ["grid"] ; [+85]
      281 GETUPVAL                         R23 0
      282 GETTABLEKS                       R23 R23 K20 ["createElement"]
      284 GETUPVAL                         R24 10
      285 DUPTABLE                         R25 K87 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "radius-medium", ["padding"], ["testId"], ["stroke"]}]
      286 GETIMPORT                        R26 K89 [UDim2.fromOffset]
      288 LOADN                            R27 120
      289 LOADN                            R28 120
      290 CALL                             R26 2 1
      291 SETTABLEKS                       R26 R25 K43 ["Size"]
      293 GETTABLEKS                       R26 R3 K90 ["Padding"]
      295 GETTABLEKS                       R26 R26 K91 ["Small"]
      297 SETTABLEKS                       R26 R25 K85 ["padding"]
      299 LOADK                            R27 K92 ["MaterialTilePreview_"]
      300 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      302 CONCAT                           R26 R27 R28
      303 SETTABLEKS                       R26 R25 K80 ["testId"]
      305 DUPTABLE                         R26 K95 [{"Color", "Transparency", "Thickness"}]
      306 GETTABLEKS                       R27 R16 K96 ["Color3"]
      308 SETTABLEKS                       R27 R26 K31 ["Color"]
      310 GETTABLEKS                       R27 R16 K93 ["Transparency"]
      312 SETTABLEKS                       R27 R26 K93 ["Transparency"]
      314 SETTABLEKS                       R17 R26 K94 ["Thickness"]
      316 SETTABLEKS                       R26 R25 K86 ["stroke"]
      318 DUPTABLE                         R26 K98 [{"Preview"}]
      319 SETTABLEKS                       R19 R26 K97 ["Preview"]
      321 CALL                             R23 3 1
      322 DUPTABLE                         R24 K102 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["ref"], ["testId"], ["tag"] = "col gap-xsmall", ["onStateChanged"]}]
      323 GETIMPORT                        R25 K89 [UDim2.fromOffset]
      325 LOADN                            R26 120
      326 LOADN                            R27 168
      327 CALL                             R25 2 1
      328 SETTABLEKS                       R25 R24 K43 ["Size"]
      330 GETTABLEKS                       R25 R0 K103 ["layoutOrder"]
      332 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      334 SETTABLEKS                       R6 R24 K99 ["ref"]
      336 LOADK                            R26 K104 ["MaterialTile_"]
      337 GETTABLEKS                       R27 R0 K8 ["slotIndex"]
      339 CONCAT                           R25 R26 R27
      340 SETTABLEKS                       R25 R24 K80 ["testId"]
      342 SETTABLEKS                       R7 R24 K101 ["onStateChanged"]
      344 GETTABLEKS                       R25 R0 K7 ["onActivated"]
      346 JUMPIFNOT                        R25 ; [+2]
      347 SETTABLEKS                       R8 R24 K7 ["onActivated"]
      349 GETUPVAL                         R25 0
      350 GETTABLEKS                       R25 R25 K20 ["createElement"]
      352 GETUPVAL                         R26 10
      353 MOVE                             R27 R24
      354 DUPTABLE                         R28 K108 [{"Preview", "Name", "Slot", "ContextMenu"}]
      355 SETTABLEKS                       R23 R28 K97 ["Preview"]
      357 SETTABLEKS                       R20 R28 K105 ["Name"]
      359 SETTABLEKS                       R22 R28 K106 ["Slot"]
      361 SETTABLEKS                       R15 R28 K107 ["ContextMenu"]
      363 CALL                             R25 3 -1
      364 RETURN                           R25 -1
      365 GETUPVAL                         R23 0
      366 GETTABLEKS                       R23 R23 K20 ["createElement"]
      368 GETUPVAL                         R24 10
      369 DUPTABLE                         R25 K110 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small", ["testId"], ["stroke"]}]
      370 LOADK                            R27 K92 ["MaterialTilePreview_"]
      371 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      373 CONCAT                           R26 R27 R28
      374 SETTABLEKS                       R26 R25 K80 ["testId"]
      376 DUPTABLE                         R26 K95 [{"Color", "Transparency", "Thickness"}]
      377 GETTABLEKS                       R27 R16 K96 ["Color3"]
      379 SETTABLEKS                       R27 R26 K31 ["Color"]
      381 GETTABLEKS                       R27 R16 K93 ["Transparency"]
      383 SETTABLEKS                       R27 R26 K93 ["Transparency"]
      385 SETTABLEKS                       R17 R26 K94 ["Thickness"]
      387 SETTABLEKS                       R26 R25 K86 ["stroke"]
      389 DUPTABLE                         R26 K98 [{"Preview"}]
      390 SETTABLEKS                       R19 R26 K97 ["Preview"]
      392 CALL                             R23 3 1
      393 DUPTABLE                         R24 K114 [{["LayoutOrder"], ["backgroundStyle"], ["ref"], ["testId"], ["tag"] = "row align-y-center gap-small size-full-1500 radius-medium", ["padding"] = 6, ["stroke"], ["onStateChanged"]}]
      394 GETTABLEKS                       R25 R0 K103 ["layoutOrder"]
      396 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      398 GETTABLEKS                       R26 R0 K30 ["isSelected"]
      400 JUMPIFNOT                        R26 ; [+11]
      401 DUPTABLE                         R25 K116 [{["Color3"], ["Transparency"] = 0}]
      402 GETIMPORT                        R28 K118 [Enum.StudioStyleGuideColor.Item]
      404 GETIMPORT                        R29 K121 [Enum.StudioStyleGuideModifier.Selected]
      406 NAMECALL                         R26 R2 K55 ["GetColor"]
      408 CALL                             R26 3 1
      409 SETTABLEKS                       R26 R25 K96 ["Color3"]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R25
      413 SETTABLEKS                       R25 R24 K111 ["backgroundStyle"]
      415 SETTABLEKS                       R6 R24 K99 ["ref"]
      417 LOADK                            R26 K104 ["MaterialTile_"]
      418 GETTABLEKS                       R27 R0 K8 ["slotIndex"]
      420 CONCAT                           R25 R26 R27
      421 SETTABLEKS                       R25 R24 K80 ["testId"]
      423 GETTABLEKS                       R26 R0 K30 ["isSelected"]
      425 JUMPIFNOT                        R26 ; [+32]
      426 DUPTABLE                         R25 K123 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      427 GETTABLEKS                       R26 R3 K31 ["Color"]
      429 GETTABLEKS                       R26 R26 K32 ["ActionEmphasis"]
      431 GETTABLEKS                       R26 R26 K33 ["Background"]
      433 GETTABLEKS                       R26 R26 K96 ["Color3"]
      435 SETTABLEKS                       R26 R25 K31 ["Color"]
      437 GETTABLEKS                       R26 R3 K31 ["Color"]
      439 GETTABLEKS                       R26 R26 K32 ["ActionEmphasis"]
      441 GETTABLEKS                       R26 R26 K33 ["Background"]
      443 GETTABLEKS                       R26 R26 K93 ["Transparency"]
      445 SETTABLEKS                       R26 R25 K93 ["Transparency"]
      447 GETTABLEKS                       R26 R3 K34 ["Stroke"]
      449 GETTABLEKS                       R26 R26 K38 ["Standard"]
      451 SETTABLEKS                       R26 R25 K94 ["Thickness"]
      453 GETIMPORT                        R26 K125 [Enum.BorderStrokePosition.Inner]
      455 SETTABLEKS                       R26 R25 K122 ["BorderStrokePosition"]
      457 JUMP                             ; [+1]
      458 LOADNIL                          R25
      459 SETTABLEKS                       R25 R24 K86 ["stroke"]
      461 SETTABLEKS                       R7 R24 K101 ["onStateChanged"]
      463 GETTABLEKS                       R25 R0 K7 ["onActivated"]
      465 JUMPIFNOT                        R25 ; [+2]
      466 SETTABLEKS                       R8 R24 K7 ["onActivated"]
      468 GETUPVAL                         R25 0
      469 GETTABLEKS                       R25 R25 K20 ["createElement"]
      471 GETUPVAL                         R26 10
      472 MOVE                             R27 R24
      473 DUPTABLE                         R28 K127 [{"Preview", "TextColumn", "ContextMenu"}]
      474 SETTABLEKS                       R23 R28 K97 ["Preview"]
      476 GETUPVAL                         R29 0
      477 GETTABLEKS                       R29 R29 K20 ["createElement"]
      479 GETUPVAL                         R30 10
      480 DUPTABLE                         R31 K129 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["tag"] = "col align-y-center gap-xxsmall"}]
      481 GETIMPORT                        R32 K130 [UDim2.new]
      483 LOADN                            R33 1
      484 LOADN                            R34 -56
      485 LOADN                            R35 1
      486 LOADN                            R36 0
      487 CALL                             R32 4 1
      488 SETTABLEKS                       R32 R31 K43 ["Size"]
      490 DUPTABLE                         R32 K131 [{"Name", "Slot"}]
      491 SETTABLEKS                       R20 R32 K105 ["Name"]
      493 SETTABLEKS                       R22 R32 K106 ["Slot"]
      495 CALL                             R29 3 1
      496 SETTABLEKS                       R29 R28 K126 ["TextColumn"]
      498 SETTABLEKS                       R15 R28 K107 ["ContextMenu"]
      500 CALL                             R25 3 -1
      501 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["MaterialTileContextMenu"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K11 ["useStudioTheme"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R5 K14 ["View"]
       51 GETTABLEKS                       R8 R5 K15 ["Text"]
       53 GETTABLEKS                       R9 R5 K16 ["Enums"]
       55 GETTABLEKS                       R9 R9 K17 ["ControlState"]
       57 GETTABLEKS                       R10 R6 K18 ["Contexts"]
       59 GETTABLEKS                       R10 R10 K19 ["Localization"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Parent"]
       65 GETTABLEKS                       R12 R12 K20 ["MaterialFramework"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K21 ["Components"]
       70 GETTABLEKS                       R12 R12 K22 ["MaterialPreview"]
       72 GETTABLEKS                       R13 R11 K16 ["Enums"]
       74 GETTABLEKS                       R13 R13 K23 ["MaterialPreviewGeometryType"]
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R0 K24 ["Util"]
       80 GETTABLEKS                       R15 R15 K25 ["airWaterOverride"]
       82 CALL                             R14 1 1
       83 DUPCLOSURE                       R15 K26 [PROTO_2]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 RETURN                           R15 1
