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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K2 ["Hooks"]
       17 GETTABLEKS                       R4 R4 K3 ["useTokens"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["useState"]
       23 LOADB                            R6 0
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K5 ["useRef"]
       28 LOADNIL                          R8
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U5
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R11 0 2
       46 GETTABLEKS                       R12 R0 K7 ["onActivated"]
       48 GETTABLEKS                       R13 R0 K8 ["slotIndex"]
       50 SETLIST                          R11 R12 2 [1]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 6
       54 GETTABLEKS                       R11 R0 K9 ["material"]
       56 CALL                             R10 1 1
       57 LOADB                            R11 1
       58 GETTABLEKS                       R12 R0 K9 ["material"]
       60 GETIMPORT                        R13 K13 [Enum.Material.Air]
       62 JUMPIFEQ                         R12 R13 ; [+9]
       64 GETTABLEKS                       R12 R0 K9 ["material"]
       66 GETIMPORT                        R13 K15 [Enum.Material.Water]
       68 JUMPIFEQ                         R12 R13 ; [+2]
       70 LOADB                            R11 0 +1
       71 LOADB                            R11 1
       72 GETTABLEKS                       R12 R0 K16 ["onContextMenuClosed"]
       74 GETTABLEKS                       R13 R0 K17 ["onContextMenuOpened"]
       76 GETTABLEKS                       R14 R0 K18 ["onDelete"]
       78 GETTABLEKS                       R15 R0 K19 ["onDuplicate"]
       80 LOADNIL                          R16
       81 JUMPIF                           R11 ; [+49]
       82 JUMPIFEQKNIL                     R12 ; [+48]
       84 JUMPIFEQKNIL                     R13 ; [+46]
       86 JUMPIFEQKNIL                     R14 ; [+44]
       88 JUMPIFEQKNIL                     R15 ; [+42]
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K20 ["createElement"]
       93 GETUPVAL                         R18 7
       94 DUPTABLE                         R19 K27 [{"anchorRef", "canDuplicate", "isOpen", "onClose", "onDelete", "onDuplicate", "onOpen", "slotIndex", "viewType"}]
       95 SETTABLEKS                       R7 R19 K21 ["anchorRef"]
       97 GETTABLEKS                       R21 R0 K22 ["canDuplicate"]
       99 JUMPIFEQKB                       R21 TRUE ; [+2]
      101 LOADB                            R20 0 +1
      102 LOADB                            R20 1
      103 SETTABLEKS                       R20 R19 K22 ["canDuplicate"]
      105 GETTABLEKS                       R21 R0 K28 ["isContextMenuOpen"]
      107 JUMPIFEQKB                       R21 TRUE ; [+2]
      109 LOADB                            R20 0 +1
      110 LOADB                            R20 1
      111 SETTABLEKS                       R20 R19 K23 ["isOpen"]
      113 SETTABLEKS                       R12 R19 K24 ["onClose"]
      115 SETTABLEKS                       R14 R19 K18 ["onDelete"]
      117 SETTABLEKS                       R15 R19 K19 ["onDuplicate"]
      119 SETTABLEKS                       R13 R19 K25 ["onOpen"]
      121 GETTABLEKS                       R20 R0 K8 ["slotIndex"]
      123 SETTABLEKS                       R20 R19 K8 ["slotIndex"]
      125 GETTABLEKS                       R20 R0 K26 ["viewType"]
      127 SETTABLEKS                       R20 R19 K26 ["viewType"]
      129 CALL                             R17 2 1
      130 MOVE                             R16 R17
      131 GETTABLEKS                       R18 R0 K26 ["viewType"]
      133 JUMPIFNOTEQKS                    R18 K29 ["grid"] ; [+11]
      135 GETTABLEKS                       R18 R0 K30 ["isSelected"]
      137 JUMPIFNOT                        R18 ; [+7]
      138 GETTABLEKS                       R17 R4 K31 ["Color"]
      140 GETTABLEKS                       R17 R17 K32 ["ActionEmphasis"]
      142 GETTABLEKS                       R17 R17 K33 ["Background"]
      144 JUMP                             ; [+15]
      145 JUMPIFNOT                        R5 ; [+8]
      146 JUMPIF                           R2 ; [+7]
      147 GETTABLEKS                       R17 R4 K31 ["Color"]
      149 GETTABLEKS                       R17 R17 K34 ["Stroke"]
      151 GETTABLEKS                       R17 R17 K35 ["Emphasis"]
      153 JUMP                             ; [+6]
      154 GETTABLEKS                       R17 R4 K31 ["Color"]
      156 GETTABLEKS                       R17 R17 K34 ["Stroke"]
      158 GETTABLEKS                       R17 R17 K36 ["Default"]
      160 GETTABLEKS                       R19 R0 K26 ["viewType"]
      162 JUMPIFNOTEQKS                    R19 K29 ["grid"] ; [+9]
      164 GETTABLEKS                       R19 R0 K30 ["isSelected"]
      166 JUMPIFNOT                        R19 ; [+5]
      167 GETTABLEKS                       R18 R4 K34 ["Stroke"]
      169 GETTABLEKS                       R18 R18 K37 ["Thick"]
      171 JUMP                             ; [+4]
      172 GETTABLEKS                       R18 R4 K34 ["Stroke"]
      174 GETTABLEKS                       R18 R18 K38 ["Standard"]
      176 DUPTABLE                         R19 K47 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      177 JUMPIFNOT                        R10 ; [+3]
      178 GETTABLEKS                       R20 R10 K9 ["material"]
      180 JUMP                             ; [+8]
      181 GETTABLEKS                       R21 R0 K48 ["variant"]
      183 JUMPIFNOT                        R21 ; [+3]
      184 GETTABLEKS                       R20 R0 K48 ["variant"]
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R20 R0 K9 ["material"]
      189 SETTABLEKS                       R20 R19 K11 ["Material"]
      191 JUMPIFNOT                        R10 ; [+3]
      192 GETTABLEKS                       R20 R10 K49 ["color"]
      194 JUMP                             ; [+2]
      195 GETTABLEKS                       R20 R0 K49 ["color"]
      197 SETTABLEKS                       R20 R19 K39 ["OverrideColor"]
      199 JUMPIFNOT                        R10 ; [+3]
      200 GETTABLEKS                       R20 R10 K50 ["transparency"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R20
      204 SETTABLEKS                       R20 R19 K40 ["OverrideTransparency"]
      206 GETUPVAL                         R20 8
      207 GETTABLEKS                       R20 R20 K51 ["CubeCornerOn"]
      209 SETTABLEKS                       R20 R19 K41 ["MaterialPreviewGeometryType"]
      211 GETIMPORT                        R22 K54 [Enum.StudioStyleGuideColor.ViewPortBackground]
      213 NAMECALL                         R20 R3 K55 ["GetColor"]
      215 CALL                             R20 2 1
      216 SETTABLEKS                       R20 R19 K42 ["BackgroundColor"]
      218 GETIMPORT                        R20 K58 [UDim2.fromScale]
      220 LOADN                            R21 1
      221 LOADN                            R22 1
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R19 K43 ["Size"]
      225 GETIMPORT                        R20 K61 [UDim.new]
      227 LOADN                            R21 0
      228 GETTABLEKS                       R22 R4 K62 ["Radius"]
      230 GETTABLEKS                       R22 R22 K63 ["Medium"]
      232 CALL                             R20 2 1
      233 SETTABLEKS                       R20 R19 K44 ["CornerRadius"]
      235 GETUPVAL                         R20 0
      236 GETTABLEKS                       R20 R20 K20 ["createElement"]
      238 GETUPVAL                         R21 9
      239 MOVE                             R22 R19
      240 CALL                             R20 2 1
      241 GETUPVAL                         R21 0
      242 GETTABLEKS                       R21 R21 K20 ["createElement"]
      244 GETUPVAL                         R22 10
      245 DUPTABLE                         R23 K69 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-400 text-title-small text-align-x-left text-truncate-end content-emphasis"}]
      246 GETTABLEKS                       R24 R0 K70 ["name"]
      248 SETTABLEKS                       R24 R23 K66 ["Text"]
      250 CALL                             R21 2 1
      251 LOADK                            R22 K71 ["%* %*"]
      252 LOADK                            R26 K72 ["Plugin"]
      253 LOADK                            R27 K73 ["SlotLabel"]
      254 NAMECALL                         R24 R1 K74 ["getText"]
      256 CALL                             R24 3 1
      257 GETTABLEKS                       R25 R0 K8 ["slotIndex"]
      259 NAMECALL                         R22 R22 K75 ["format"]
      261 CALL                             R22 3 1
      262 JUMPIFNOT                        R11 ; [+11]
      263 LOADK                            R23 K76 ["%* (%*)"]
      264 MOVE                             R25 R22
      265 LOADK                            R28 K72 ["Plugin"]
      266 LOADK                            R29 K77 ["ReadOnlyLabel"]
      267 NAMECALL                         R26 R1 K74 ["getText"]
      269 CALL                             R26 3 1
      270 NAMECALL                         R23 R23 K75 ["format"]
      272 CALL                             R23 3 1
      273 MOVE                             R22 R23
      274 GETUPVAL                         R23 0
      275 GETTABLEKS                       R23 R23 K20 ["createElement"]
      277 GETUPVAL                         R24 10
      278 DUPTABLE                         R25 K81 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left content-default", ["testId"] = "SlotLabel"}]
      279 SETTABLEKS                       R22 R25 K66 ["Text"]
      281 CALL                             R23 2 1
      282 GETTABLEKS                       R24 R0 K26 ["viewType"]
      284 JUMPIFNOTEQKS                    R24 K29 ["grid"] ; [+81]
      286 GETUPVAL                         R24 0
      287 GETTABLEKS                       R24 R24 K20 ["createElement"]
      289 GETUPVAL                         R25 11
      290 DUPTABLE                         R26 K86 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "radius-medium", ["testId"], ["stroke"]}]
      291 GETIMPORT                        R27 K88 [UDim2.fromOffset]
      293 LOADN                            R28 120
      294 LOADN                            R29 120
      295 CALL                             R27 2 1
      296 SETTABLEKS                       R27 R26 K43 ["Size"]
      298 LOADK                            R28 K89 ["MaterialTilePreview_"]
      299 GETTABLEKS                       R29 R0 K8 ["slotIndex"]
      301 CONCAT                           R27 R28 R29
      302 SETTABLEKS                       R27 R26 K80 ["testId"]
      304 DUPTABLE                         R27 K92 [{"Color", "Transparency", "Thickness"}]
      305 GETTABLEKS                       R28 R17 K93 ["Color3"]
      307 SETTABLEKS                       R28 R27 K31 ["Color"]
      309 GETTABLEKS                       R28 R17 K90 ["Transparency"]
      311 SETTABLEKS                       R28 R27 K90 ["Transparency"]
      313 SETTABLEKS                       R18 R27 K91 ["Thickness"]
      315 SETTABLEKS                       R27 R26 K85 ["stroke"]
      317 DUPTABLE                         R27 K95 [{"Preview"}]
      318 SETTABLEKS                       R20 R27 K94 ["Preview"]
      320 CALL                             R24 3 1
      321 DUPTABLE                         R25 K100 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["ref"], ["isDisabled"], ["testId"], ["tag"] = "col gap-xsmall", ["onStateChanged"]}]
      322 GETIMPORT                        R26 K88 [UDim2.fromOffset]
      324 LOADN                            R27 120
      325 LOADN                            R28 168
      326 CALL                             R26 2 1
      327 SETTABLEKS                       R26 R25 K43 ["Size"]
      329 GETTABLEKS                       R26 R0 K101 ["layoutOrder"]
      331 SETTABLEKS                       R26 R25 K64 ["LayoutOrder"]
      333 SETTABLEKS                       R7 R25 K96 ["ref"]
      335 SETTABLEKS                       R2 R25 K97 ["isDisabled"]
      337 LOADK                            R27 K102 ["MaterialTile_"]
      338 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      340 CONCAT                           R26 R27 R28
      341 SETTABLEKS                       R26 R25 K80 ["testId"]
      343 SETTABLEKS                       R8 R25 K99 ["onStateChanged"]
      345 GETTABLEKS                       R26 R0 K7 ["onActivated"]
      347 JUMPIFNOT                        R26 ; [+2]
      348 SETTABLEKS                       R9 R25 K7 ["onActivated"]
      350 GETUPVAL                         R26 0
      351 GETTABLEKS                       R26 R26 K20 ["createElement"]
      353 GETUPVAL                         R27 11
      354 MOVE                             R28 R25
      355 DUPTABLE                         R29 K106 [{"Preview", "Name", "Slot", "ContextMenu"}]
      356 SETTABLEKS                       R24 R29 K94 ["Preview"]
      358 SETTABLEKS                       R21 R29 K103 ["Name"]
      360 SETTABLEKS                       R23 R29 K104 ["Slot"]
      362 SETTABLEKS                       R16 R29 K105 ["ContextMenu"]
      364 CALL                             R26 3 -1
      365 RETURN                           R26 -1
      366 GETUPVAL                         R24 0
      367 GETTABLEKS                       R24 R24 K20 ["createElement"]
      369 GETUPVAL                         R25 11
      370 DUPTABLE                         R26 K108 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small", ["testId"], ["stroke"]}]
      371 LOADK                            R28 K89 ["MaterialTilePreview_"]
      372 GETTABLEKS                       R29 R0 K8 ["slotIndex"]
      374 CONCAT                           R27 R28 R29
      375 SETTABLEKS                       R27 R26 K80 ["testId"]
      377 DUPTABLE                         R27 K92 [{"Color", "Transparency", "Thickness"}]
      378 GETTABLEKS                       R28 R17 K93 ["Color3"]
      380 SETTABLEKS                       R28 R27 K31 ["Color"]
      382 GETTABLEKS                       R28 R17 K90 ["Transparency"]
      384 SETTABLEKS                       R28 R27 K90 ["Transparency"]
      386 SETTABLEKS                       R18 R27 K91 ["Thickness"]
      388 SETTABLEKS                       R27 R26 K85 ["stroke"]
      390 DUPTABLE                         R27 K95 [{"Preview"}]
      391 SETTABLEKS                       R20 R27 K94 ["Preview"]
      393 CALL                             R24 3 1
      394 DUPTABLE                         R25 K113 [{["LayoutOrder"], ["backgroundStyle"], ["ref"], ["isDisabled"], ["testId"], ["tag"] = "row align-y-center gap-small size-full-1500 radius-medium", ["padding"] = 6, ["stroke"], ["onStateChanged"]}]
      395 GETTABLEKS                       R26 R0 K101 ["layoutOrder"]
      397 SETTABLEKS                       R26 R25 K64 ["LayoutOrder"]
      399 GETTABLEKS                       R27 R0 K30 ["isSelected"]
      401 JUMPIFNOT                        R27 ; [+11]
      402 DUPTABLE                         R26 K115 [{["Color3"], ["Transparency"] = 0}]
      403 GETIMPORT                        R29 K117 [Enum.StudioStyleGuideColor.Item]
      405 GETIMPORT                        R30 K120 [Enum.StudioStyleGuideModifier.Selected]
      407 NAMECALL                         R27 R3 K55 ["GetColor"]
      409 CALL                             R27 3 1
      410 SETTABLEKS                       R27 R26 K93 ["Color3"]
      412 JUMP                             ; [+1]
      413 LOADNIL                          R26
      414 SETTABLEKS                       R26 R25 K109 ["backgroundStyle"]
      416 SETTABLEKS                       R7 R25 K96 ["ref"]
      418 SETTABLEKS                       R2 R25 K97 ["isDisabled"]
      420 LOADK                            R27 K102 ["MaterialTile_"]
      421 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      423 CONCAT                           R26 R27 R28
      424 SETTABLEKS                       R26 R25 K80 ["testId"]
      426 GETTABLEKS                       R27 R0 K30 ["isSelected"]
      428 JUMPIFNOT                        R27 ; [+32]
      429 DUPTABLE                         R26 K122 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      430 GETTABLEKS                       R27 R4 K31 ["Color"]
      432 GETTABLEKS                       R27 R27 K32 ["ActionEmphasis"]
      434 GETTABLEKS                       R27 R27 K33 ["Background"]
      436 GETTABLEKS                       R27 R27 K93 ["Color3"]
      438 SETTABLEKS                       R27 R26 K31 ["Color"]
      440 GETTABLEKS                       R27 R4 K31 ["Color"]
      442 GETTABLEKS                       R27 R27 K32 ["ActionEmphasis"]
      444 GETTABLEKS                       R27 R27 K33 ["Background"]
      446 GETTABLEKS                       R27 R27 K90 ["Transparency"]
      448 SETTABLEKS                       R27 R26 K90 ["Transparency"]
      450 GETTABLEKS                       R27 R4 K34 ["Stroke"]
      452 GETTABLEKS                       R27 R27 K38 ["Standard"]
      454 SETTABLEKS                       R27 R26 K91 ["Thickness"]
      456 GETIMPORT                        R27 K124 [Enum.BorderStrokePosition.Inner]
      458 SETTABLEKS                       R27 R26 K121 ["BorderStrokePosition"]
      460 JUMP                             ; [+1]
      461 LOADNIL                          R26
      462 SETTABLEKS                       R26 R25 K85 ["stroke"]
      464 SETTABLEKS                       R8 R25 K99 ["onStateChanged"]
      466 GETTABLEKS                       R26 R0 K7 ["onActivated"]
      468 JUMPIFNOT                        R26 ; [+2]
      469 SETTABLEKS                       R9 R25 K7 ["onActivated"]
      471 GETUPVAL                         R26 0
      472 GETTABLEKS                       R26 R26 K20 ["createElement"]
      474 GETUPVAL                         R27 11
      475 MOVE                             R28 R25
      476 DUPTABLE                         R29 K126 [{"Preview", "TextColumn", "ContextMenu"}]
      477 SETTABLEKS                       R24 R29 K94 ["Preview"]
      479 GETUPVAL                         R30 0
      480 GETTABLEKS                       R30 R30 K20 ["createElement"]
      482 GETUPVAL                         R31 11
      483 DUPTABLE                         R32 K128 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["tag"] = "col align-y-center gap-xxsmall"}]
      484 GETIMPORT                        R33 K129 [UDim2.new]
      486 LOADN                            R34 1
      487 LOADN                            R35 -56
      488 LOADN                            R36 1
      489 LOADN                            R37 0
      490 CALL                             R33 4 1
      491 SETTABLEKS                       R33 R32 K43 ["Size"]
      493 DUPTABLE                         R33 K130 [{"Name", "Slot"}]
      494 SETTABLEKS                       R21 R33 K103 ["Name"]
      496 SETTABLEKS                       R23 R33 K104 ["Slot"]
      498 CALL                             R30 3 1
      499 SETTABLEKS                       R30 R29 K125 ["TextColumn"]
      501 SETTABLEKS                       R16 R29 K105 ["ContextMenu"]
      503 CALL                             R26 3 -1
      504 RETURN                           R26 -1

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
       25 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K10 ["MaterialTileInteractionContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K13 ["useStudioTheme"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R6 K16 ["View"]
       58 GETTABLEKS                       R9 R6 K17 ["Text"]
       60 GETTABLEKS                       R10 R6 K18 ["Enums"]
       62 GETTABLEKS                       R10 R10 K19 ["ControlState"]
       64 GETTABLEKS                       R11 R7 K9 ["Contexts"]
       66 GETTABLEKS                       R11 R11 K20 ["Localization"]
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K6 ["Parent"]
       72 GETTABLEKS                       R13 R13 K21 ["MaterialFramework"]
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R12 K22 ["Components"]
       77 GETTABLEKS                       R13 R13 K23 ["MaterialPreview"]
       79 GETTABLEKS                       R14 R12 K18 ["Enums"]
       81 GETTABLEKS                       R14 R14 K24 ["MaterialPreviewGeometryType"]
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K25 ["Util"]
       87 GETTABLEKS                       R16 R16 K26 ["airWaterOverride"]
       89 CALL                             R15 1 1
       90 DUPCLOSURE                       R16 K27 [PROTO_2]
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R8
      103 RETURN                           R16 1
