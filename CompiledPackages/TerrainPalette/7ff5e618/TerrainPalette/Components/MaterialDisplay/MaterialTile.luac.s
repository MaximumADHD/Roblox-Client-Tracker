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
      245 LOADK                            R21 K71 ["%* %*"]
      246 LOADK                            R25 K72 ["Plugin"]
      247 LOADK                            R26 K73 ["SlotLabel"]
      248 NAMECALL                         R23 R1 K74 ["getText"]
      250 CALL                             R23 3 1
      251 GETTABLEKS                       R24 R0 K8 ["slotIndex"]
      253 NAMECALL                         R21 R21 K75 ["format"]
      255 CALL                             R21 3 1
      256 JUMPIFNOT                        R10 ; [+11]
      257 LOADK                            R22 K76 ["%* (%*)"]
      258 MOVE                             R24 R21
      259 LOADK                            R27 K72 ["Plugin"]
      260 LOADK                            R28 K77 ["ReadOnlyLabel"]
      261 NAMECALL                         R25 R1 K74 ["getText"]
      263 CALL                             R25 3 1
      264 NAMECALL                         R22 R22 K75 ["format"]
      266 CALL                             R22 3 1
      267 MOVE                             R21 R22
      268 GETUPVAL                         R22 0
      269 GETTABLEKS                       R22 R22 K20 ["createElement"]
      271 GETUPVAL                         R23 9
      272 DUPTABLE                         R24 K81 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-350 text-body-small text-align-x-left content-default", ["testId"] = "SlotLabel"}]
      273 SETTABLEKS                       R21 R24 K66 ["Text"]
      275 CALL                             R22 2 1
      276 GETTABLEKS                       R23 R0 K26 ["viewType"]
      278 JUMPIFNOTEQKS                    R23 K29 ["grid"] ; [+79]
      280 GETUPVAL                         R23 0
      281 GETTABLEKS                       R23 R23 K20 ["createElement"]
      283 GETUPVAL                         R24 10
      284 DUPTABLE                         R25 K86 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "radius-medium", ["testId"], ["stroke"]}]
      285 GETIMPORT                        R26 K88 [UDim2.fromOffset]
      287 LOADN                            R27 120
      288 LOADN                            R28 120
      289 CALL                             R26 2 1
      290 SETTABLEKS                       R26 R25 K43 ["Size"]
      292 LOADK                            R27 K89 ["MaterialTilePreview_"]
      293 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      295 CONCAT                           R26 R27 R28
      296 SETTABLEKS                       R26 R25 K80 ["testId"]
      298 DUPTABLE                         R26 K92 [{"Color", "Transparency", "Thickness"}]
      299 GETTABLEKS                       R27 R16 K93 ["Color3"]
      301 SETTABLEKS                       R27 R26 K31 ["Color"]
      303 GETTABLEKS                       R27 R16 K90 ["Transparency"]
      305 SETTABLEKS                       R27 R26 K90 ["Transparency"]
      307 SETTABLEKS                       R17 R26 K91 ["Thickness"]
      309 SETTABLEKS                       R26 R25 K85 ["stroke"]
      311 DUPTABLE                         R26 K95 [{"Preview"}]
      312 SETTABLEKS                       R19 R26 K94 ["Preview"]
      314 CALL                             R23 3 1
      315 DUPTABLE                         R24 K99 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["ref"], ["testId"], ["tag"] = "col gap-xsmall", ["onStateChanged"]}]
      316 GETIMPORT                        R25 K88 [UDim2.fromOffset]
      318 LOADN                            R26 120
      319 LOADN                            R27 168
      320 CALL                             R25 2 1
      321 SETTABLEKS                       R25 R24 K43 ["Size"]
      323 GETTABLEKS                       R25 R0 K100 ["layoutOrder"]
      325 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      327 SETTABLEKS                       R6 R24 K96 ["ref"]
      329 LOADK                            R26 K101 ["MaterialTile_"]
      330 GETTABLEKS                       R27 R0 K8 ["slotIndex"]
      332 CONCAT                           R25 R26 R27
      333 SETTABLEKS                       R25 R24 K80 ["testId"]
      335 SETTABLEKS                       R7 R24 K98 ["onStateChanged"]
      337 GETTABLEKS                       R25 R0 K7 ["onActivated"]
      339 JUMPIFNOT                        R25 ; [+2]
      340 SETTABLEKS                       R8 R24 K7 ["onActivated"]
      342 GETUPVAL                         R25 0
      343 GETTABLEKS                       R25 R25 K20 ["createElement"]
      345 GETUPVAL                         R26 10
      346 MOVE                             R27 R24
      347 DUPTABLE                         R28 K105 [{"Preview", "Name", "Slot", "ContextMenu"}]
      348 SETTABLEKS                       R23 R28 K94 ["Preview"]
      350 SETTABLEKS                       R20 R28 K102 ["Name"]
      352 SETTABLEKS                       R22 R28 K103 ["Slot"]
      354 SETTABLEKS                       R15 R28 K104 ["ContextMenu"]
      356 CALL                             R25 3 -1
      357 RETURN                           R25 -1
      358 GETUPVAL                         R23 0
      359 GETTABLEKS                       R23 R23 K20 ["createElement"]
      361 GETUPVAL                         R24 10
      362 DUPTABLE                         R25 K107 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small", ["testId"], ["stroke"]}]
      363 LOADK                            R27 K89 ["MaterialTilePreview_"]
      364 GETTABLEKS                       R28 R0 K8 ["slotIndex"]
      366 CONCAT                           R26 R27 R28
      367 SETTABLEKS                       R26 R25 K80 ["testId"]
      369 DUPTABLE                         R26 K92 [{"Color", "Transparency", "Thickness"}]
      370 GETTABLEKS                       R27 R16 K93 ["Color3"]
      372 SETTABLEKS                       R27 R26 K31 ["Color"]
      374 GETTABLEKS                       R27 R16 K90 ["Transparency"]
      376 SETTABLEKS                       R27 R26 K90 ["Transparency"]
      378 SETTABLEKS                       R17 R26 K91 ["Thickness"]
      380 SETTABLEKS                       R26 R25 K85 ["stroke"]
      382 DUPTABLE                         R26 K95 [{"Preview"}]
      383 SETTABLEKS                       R19 R26 K94 ["Preview"]
      385 CALL                             R23 3 1
      386 DUPTABLE                         R24 K112 [{["LayoutOrder"], ["backgroundStyle"], ["ref"], ["testId"], ["tag"] = "row align-y-center gap-small size-full-1500 radius-medium", ["padding"] = 6, ["stroke"], ["onStateChanged"]}]
      387 GETTABLEKS                       R25 R0 K100 ["layoutOrder"]
      389 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      391 GETTABLEKS                       R26 R0 K30 ["isSelected"]
      393 JUMPIFNOT                        R26 ; [+11]
      394 DUPTABLE                         R25 K114 [{["Color3"], ["Transparency"] = 0}]
      395 GETIMPORT                        R28 K116 [Enum.StudioStyleGuideColor.Item]
      397 GETIMPORT                        R29 K119 [Enum.StudioStyleGuideModifier.Selected]
      399 NAMECALL                         R26 R2 K55 ["GetColor"]
      401 CALL                             R26 3 1
      402 SETTABLEKS                       R26 R25 K93 ["Color3"]
      404 JUMP                             ; [+1]
      405 LOADNIL                          R25
      406 SETTABLEKS                       R25 R24 K108 ["backgroundStyle"]
      408 SETTABLEKS                       R6 R24 K96 ["ref"]
      410 LOADK                            R26 K101 ["MaterialTile_"]
      411 GETTABLEKS                       R27 R0 K8 ["slotIndex"]
      413 CONCAT                           R25 R26 R27
      414 SETTABLEKS                       R25 R24 K80 ["testId"]
      416 GETTABLEKS                       R26 R0 K30 ["isSelected"]
      418 JUMPIFNOT                        R26 ; [+32]
      419 DUPTABLE                         R25 K121 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      420 GETTABLEKS                       R26 R3 K31 ["Color"]
      422 GETTABLEKS                       R26 R26 K32 ["ActionEmphasis"]
      424 GETTABLEKS                       R26 R26 K33 ["Background"]
      426 GETTABLEKS                       R26 R26 K93 ["Color3"]
      428 SETTABLEKS                       R26 R25 K31 ["Color"]
      430 GETTABLEKS                       R26 R3 K31 ["Color"]
      432 GETTABLEKS                       R26 R26 K32 ["ActionEmphasis"]
      434 GETTABLEKS                       R26 R26 K33 ["Background"]
      436 GETTABLEKS                       R26 R26 K90 ["Transparency"]
      438 SETTABLEKS                       R26 R25 K90 ["Transparency"]
      440 GETTABLEKS                       R26 R3 K34 ["Stroke"]
      442 GETTABLEKS                       R26 R26 K38 ["Standard"]
      444 SETTABLEKS                       R26 R25 K91 ["Thickness"]
      446 GETIMPORT                        R26 K123 [Enum.BorderStrokePosition.Inner]
      448 SETTABLEKS                       R26 R25 K120 ["BorderStrokePosition"]
      450 JUMP                             ; [+1]
      451 LOADNIL                          R25
      452 SETTABLEKS                       R25 R24 K85 ["stroke"]
      454 SETTABLEKS                       R7 R24 K98 ["onStateChanged"]
      456 GETTABLEKS                       R25 R0 K7 ["onActivated"]
      458 JUMPIFNOT                        R25 ; [+2]
      459 SETTABLEKS                       R8 R24 K7 ["onActivated"]
      461 GETUPVAL                         R25 0
      462 GETTABLEKS                       R25 R25 K20 ["createElement"]
      464 GETUPVAL                         R26 10
      465 MOVE                             R27 R24
      466 DUPTABLE                         R28 K125 [{"Preview", "TextColumn", "ContextMenu"}]
      467 SETTABLEKS                       R23 R28 K94 ["Preview"]
      469 GETUPVAL                         R29 0
      470 GETTABLEKS                       R29 R29 K20 ["createElement"]
      472 GETUPVAL                         R30 10
      473 DUPTABLE                         R31 K127 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["tag"] = "col align-y-center gap-xxsmall"}]
      474 GETIMPORT                        R32 K128 [UDim2.new]
      476 LOADN                            R33 1
      477 LOADN                            R34 -56
      478 LOADN                            R35 1
      479 LOADN                            R36 0
      480 CALL                             R32 4 1
      481 SETTABLEKS                       R32 R31 K43 ["Size"]
      483 DUPTABLE                         R32 K129 [{"Name", "Slot"}]
      484 SETTABLEKS                       R20 R32 K102 ["Name"]
      486 SETTABLEKS                       R22 R32 K103 ["Slot"]
      488 CALL                             R29 3 1
      489 SETTABLEKS                       R29 R28 K124 ["TextColumn"]
      491 SETTABLEKS                       R15 R28 K104 ["ContextMenu"]
      493 CALL                             R25 3 -1
      494 RETURN                           R25 -1

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
