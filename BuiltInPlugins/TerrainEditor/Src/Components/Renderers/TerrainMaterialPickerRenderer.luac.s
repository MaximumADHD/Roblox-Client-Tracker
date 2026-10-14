PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R3 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R2 R3 ; [+8]
        6 GETTABLEKS                       R3 R1 K5 ["AllowAir"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
       15 GETIMPORT                        R3 K7 [Enum.Material.Water]
       17 JUMPIFNOTEQ                      R2 R3 ; [+8]
       19 GETTABLEKS                       R3 R1 K8 ["AllowWater"]
       21 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K0 ["slotIndex"]
       10 JUMPIFNOTEQ                      R7 R1 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-6]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMaterialPreviewOverride"]
        3 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETTABLEKS                       R2 R1 K2 ["material"]
        9 GETTABLEKS                       R3 R1 K3 ["color"]
       11 GETTABLEKS                       R4 R1 K4 ["transparency"]
       13 RETURN                           R2 3
       14 GETTABLEKS                       R2 R0 K5 ["resolvedVariant"]
       16 JUMPIF                           R2 ; [+2]
       17 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
       19 GETTABLEKS                       R3 R0 K3 ["color"]
       21 LOADNIL                          R4
       22 RETURN                           R2 3

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{["Category"] = "Widgets", ["ItemId"]}]
        8 LOADK                            R3 K6 ["TerrainMaterialPicker/%*"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K7 ["Schema"]
       12 GETTABLEKS                       R5 R5 K8 ["PickerId"]
       14 NAMECALL                         R3 R3 K9 ["format"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Schema"]
        3 GETTABLEKS                       R0 R0 K1 ["OnActivated"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["Schema"]
       14 GETTABLEKS                       R0 R0 K2 ["OnClear"]
       16 JUMPIFNOT                        R0 ; [+16]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K0 ["current"]
       20 GETUPVAL                         R1 1
       21 JUMPIFEQ                         R0 R1 ; [+11]
       23 GETUPVAL                         R0 2
       24 GETUPVAL                         R1 1
       25 SETTABLEKS                       R1 R0 K0 ["current"]
       27 GETUPVAL                         R0 3
       28 GETTABLEKS                       R0 R0 K1 ["Schema"]
       30 GETTABLEKS                       R0 R0 K2 ["OnClear"]
       32 CALL                             R0 0 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["catalog"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Plugin"]
       10 NAMECALL                         R2 R2 K3 ["use"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R2 R2 K4 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K5 ["Hooks"]
       19 GETTABLEKS                       R3 R3 K6 ["useTokens"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K7 ["useRef"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 4
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 2
       38 MOVE                             R9 R2
       39 GETTABLEKS                       R10 R0 K9 ["Schema"]
       41 GETTABLEKS                       R10 R10 K10 ["PickerId"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 6
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R10 0 2
       57 GETTABLEKS                       R11 R0 K9 ["Schema"]
       59 GETTABLEKS                       R11 R11 K12 ["OnActivated"]
       61 MOVE                             R12 R6
       62 SETLIST                          R10 R11 2 [1]
       64 CALL                             R8 2 1
       65 GETTABLEKS                       R11 R0 K13 ["Value"]
       67 FASTCALL1                        TYPEOF R11 ; [+2]
       68 GETIMPORT                        R10 K15 [typeof]
       70 CALL                             R10 1 1
       71 JUMPIFNOTEQKS                    R10 K16 ["number"] ; [+4]
       73 GETTABLEKS                       R9 R0 K13 ["Value"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R9
       77 JUMPIFNOTEQKNIL                  R9 ; [+3]
       79 LOADNIL                          R10
       80 JUMP                             ; [+13]
       81 MOVE                             R11 R1
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 FORGPREP                         R11
       85 GETTABLEKS                       R16 R15 K17 ["slotIndex"]
       87 JUMPIFNOTEQ                      R16 R9 ; [+3]
       89 MOVE                             R10 R15
       90 JUMP                             ; [+3]
       91 FORGLOOP                         R11 2 ; [-7]
       93 LOADNIL                          R10
       94 GETTABLEKS                       R12 R0 K9 ["Schema"]
       96 GETTABLEKS                       R12 R12 K18 ["InvalidSourceSelected"]
       98 JUMPIF                           R12 ; [+33]
       99 JUMPIFNOT                        R10 ; [+32]
      100 GETTABLEKS                       R13 R0 K9 ["Schema"]
      102 GETTABLEKS                       R14 R10 K19 ["baseMaterial"]
      104 GETIMPORT                        R15 K23 [Enum.Material.Air]
      106 JUMPIFNOTEQ                      R14 R15 ; [+8]
      108 GETTABLEKS                       R14 R13 K24 ["AllowAir"]
      110 JUMPIFEQKB                       R14 TRUE ; [+2]
      112 LOADB                            R12 0 +1
      113 LOADB                            R12 1
      114 JUMP                             ; [+14]
      115 GETTABLEKS                       R14 R10 K19 ["baseMaterial"]
      117 GETIMPORT                        R15 K26 [Enum.Material.Water]
      119 JUMPIFNOTEQ                      R14 R15 ; [+8]
      121 GETTABLEKS                       R14 R13 K27 ["AllowWater"]
      123 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
      125 LOADB                            R12 0 +1
      126 LOADB                            R12 1
      127 JUMP                             ; [+1]
      128 LOADB                            R12 1
      129 JUMPIFNOT                        R12 ; [+2]
      130 MOVE                             R11 R10
      131 JUMP                             ; [+1]
      132 LOADNIL                          R11
      133 GETUPVAL                         R12 0
      134 GETTABLEKS                       R12 R12 K28 ["useEffect"]
      136 NEWCLOSURE                       R13 P2
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R0
      141 NEWTABLE                         R14 0 3
      143 GETTABLEKS                       R15 R0 K9 ["Schema"]
      145 GETTABLEKS                       R15 R15 K29 ["OnClear"]
      147 MOVE                             R16 R10
      148 MOVE                             R17 R9
      149 SETLIST                          R14 R15 3 [1]
      151 CALL                             R12 2 0
      152 LOADNIL                          R12
      153 LOADNIL                          R13
      154 LOADNIL                          R14
      155 JUMPIFNOT                        R11 ; [+25]
      156 GETUPVAL                         R18 7
      157 GETTABLEKS                       R18 R18 K30 ["getMaterialPreviewOverride"]
      159 GETTABLEKS                       R19 R11 K19 ["baseMaterial"]
      161 CALL                             R18 1 1
      162 JUMPIFNOT                        R18 ; [+7]
      163 GETTABLEKS                       R15 R18 K31 ["material"]
      165 GETTABLEKS                       R16 R18 K32 ["color"]
      167 GETTABLEKS                       R17 R18 K33 ["transparency"]
      169 JUMP                             ; [+8]
      170 GETTABLEKS                       R15 R11 K34 ["resolvedVariant"]
      172 JUMPIF                           R15 ; [+2]
      173 GETTABLEKS                       R15 R11 K19 ["baseMaterial"]
      175 GETTABLEKS                       R16 R11 K32 ["color"]
      177 LOADNIL                          R17
      178 MOVE                             R12 R15
      179 MOVE                             R13 R16
      180 MOVE                             R14 R17
      181 GETUPVAL                         R15 0
      182 GETTABLEKS                       R15 R15 K35 ["createElement"]
      184 GETUPVAL                         R16 8
      185 DUPTABLE                         R17 K50 [{["backgroundStyle"], ["cursor"], ["isDisabled"], ["onActivated"], ["padding"], ["ref"], ["selection"], ["stateLayer"], ["stroke"], ["Size"], ["tag"] = "row align-y-center gap-xsmall radius-small clip", ["testId"] = "terrain-material-picker"}]
      186 GETTABLEKS                       R18 R3 K51 ["Color"]
      188 GETTABLEKS                       R18 R18 K52 ["Shift"]
      190 GETTABLEKS                       R18 R18 K53 ["Shift_200"]
      192 SETTABLEKS                       R18 R17 K36 ["backgroundStyle"]
      194 DUPTABLE                         R18 K57 [{"radius", "offset", "borderWidth"}]
      195 GETIMPORT                        R19 K60 [UDim.new]
      197 LOADN                            R20 0
      198 GETTABLEKS                       R21 R3 K61 ["Radius"]
      200 GETTABLEKS                       R21 R21 K62 ["Small"]
      202 CALL                             R19 2 1
      203 SETTABLEKS                       R19 R18 K54 ["radius"]
      205 GETTABLEKS                       R20 R3 K63 ["Stroke"]
      207 GETTABLEKS                       R20 R20 K64 ["Thick"]
      209 MINUS                            R19 R20
      210 SETTABLEKS                       R19 R18 K55 ["offset"]
      212 GETTABLEKS                       R19 R3 K63 ["Stroke"]
      214 GETTABLEKS                       R19 R19 K64 ["Thick"]
      216 SETTABLEKS                       R19 R18 K56 ["borderWidth"]
      218 SETTABLEKS                       R18 R17 K37 ["cursor"]
      220 GETTABLEKS                       R18 R0 K65 ["Disabled"]
      222 SETTABLEKS                       R18 R17 K38 ["isDisabled"]
      224 GETTABLEKS                       R19 R0 K65 ["Disabled"]
      226 JUMPIFNOT                        R19 ; [+2]
      227 LOADNIL                          R18
      228 JUMP                             ; [+1]
      229 MOVE                             R18 R8
      230 SETTABLEKS                       R18 R17 K39 ["onActivated"]
      232 DUPTABLE                         R18 K68 [{"left", "right"}]
      233 GETIMPORT                        R19 K60 [UDim.new]
      235 LOADN                            R20 0
      236 GETTABLEKS                       R21 R3 K45 ["Size"]
      238 GETTABLEKS                       R21 R21 K69 ["Size_150"]
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K66 ["left"]
      243 GETIMPORT                        R19 K60 [UDim.new]
      245 LOADN                            R20 0
      246 GETTABLEKS                       R21 R3 K45 ["Size"]
      248 GETTABLEKS                       R21 R21 K69 ["Size_150"]
      250 CALL                             R19 2 1
      251 SETTABLEKS                       R19 R18 K67 ["right"]
      253 SETTABLEKS                       R18 R17 K40 ["padding"]
      255 SETTABLEKS                       R7 R17 K41 ["ref"]
      257 DUPTABLE                         R18 K71 [{"Selectable"}]
      258 GETTABLEKS                       R20 R0 K65 ["Disabled"]
      260 NOT                              R19 R20
      261 SETTABLEKS                       R19 R18 K70 ["Selectable"]
      263 SETTABLEKS                       R18 R17 K42 ["selection"]
      265 DUPTABLE                         R18 K73 [{"affordance"}]
      266 GETUPVAL                         R19 3
      267 GETTABLEKS                       R19 R19 K74 ["Enums"]
      269 GETTABLEKS                       R19 R19 K75 ["StateLayerAffordance"]
      271 GETTABLEKS                       R19 R19 K76 ["Background"]
      273 SETTABLEKS                       R19 R18 K72 ["affordance"]
      275 SETTABLEKS                       R18 R17 K43 ["stateLayer"]
      277 DUPTABLE                         R18 K79 [{"Color", "Transparency", "Thickness"}]
      278 GETTABLEKS                       R19 R3 K51 ["Color"]
      280 GETTABLEKS                       R19 R19 K63 ["Stroke"]
      282 GETTABLEKS                       R19 R19 K80 ["Emphasis"]
      284 GETTABLEKS                       R19 R19 K81 ["Color3"]
      286 SETTABLEKS                       R19 R18 K51 ["Color"]
      288 GETTABLEKS                       R19 R3 K51 ["Color"]
      290 GETTABLEKS                       R19 R19 K63 ["Stroke"]
      292 GETTABLEKS                       R19 R19 K80 ["Emphasis"]
      294 GETTABLEKS                       R19 R19 K77 ["Transparency"]
      296 SETTABLEKS                       R19 R18 K77 ["Transparency"]
      298 GETTABLEKS                       R19 R3 K63 ["Stroke"]
      300 GETTABLEKS                       R19 R19 K82 ["Standard"]
      302 SETTABLEKS                       R19 R18 K78 ["Thickness"]
      304 SETTABLEKS                       R18 R17 K44 ["stroke"]
      306 GETIMPORT                        R18 K84 [UDim2.new]
      308 LOADN                            R19 1
      309 LOADN                            R20 0
      310 LOADN                            R21 0
      311 GETTABLEKS                       R22 R3 K45 ["Size"]
      313 GETTABLEKS                       R22 R22 K85 ["Size_600"]
      315 CALL                             R18 4 1
      316 SETTABLEKS                       R18 R17 K45 ["Size"]
      318 DUPTABLE                         R18 K89 [{"Preview", "Label", "Chevron"}]
      319 JUMPIFNOT                        R11 ; [+55]
      320 GETUPVAL                         R19 0
      321 GETTABLEKS                       R19 R19 K35 ["createElement"]
      323 GETUPVAL                         R20 8
      324 DUPTABLE                         R21 K93 [{["LayoutOrder"], ["Size"], ["tag"] = "radius-xsmall clip", ["testId"] = "terrain-material-picker-preview"}]
      325 MOVE                             R22 R5
      326 CALL                             R22 0 1
      327 SETTABLEKS                       R22 R21 K90 ["LayoutOrder"]
      329 GETIMPORT                        R22 K95 [UDim2.fromOffset]
      331 LOADN                            R23 18
      332 LOADN                            R24 18
      333 CALL                             R22 2 1
      334 SETTABLEKS                       R22 R21 K45 ["Size"]
      336 DUPTABLE                         R22 K96 [{"Material"}]
      337 GETUPVAL                         R23 0
      338 GETTABLEKS                       R23 R23 K35 ["createElement"]
      340 GETUPVAL                         R24 9
      341 DUPTABLE                         R25 K106 [{["CornerRadius"], ["InitialDistance"] = 5.5, ["Material"], ["MaterialPreviewGeometryType"], ["OverrideColor"], ["OverrideTransparency"], ["Size"], ["Static"] = True, ["Transparent"] = True}]
      342 GETIMPORT                        R26 K60 [UDim.new]
      344 LOADN                            R27 0
      345 GETTABLEKS                       R28 R3 K61 ["Radius"]
      347 GETTABLEKS                       R28 R28 K107 ["XSmall"]
      349 CALL                             R26 2 1
      350 SETTABLEKS                       R26 R25 K97 ["CornerRadius"]
      352 SETTABLEKS                       R12 R25 K21 ["Material"]
      354 GETUPVAL                         R26 10
      355 GETTABLEKS                       R26 R26 K108 ["CubeCornerOn"]
      357 SETTABLEKS                       R26 R25 K100 ["MaterialPreviewGeometryType"]
      359 SETTABLEKS                       R13 R25 K101 ["OverrideColor"]
      361 SETTABLEKS                       R14 R25 K102 ["OverrideTransparency"]
      363 GETIMPORT                        R26 K110 [UDim2.fromScale]
      365 LOADN                            R27 1
      366 LOADN                            R28 1
      367 CALL                             R26 2 1
      368 SETTABLEKS                       R26 R25 K45 ["Size"]
      370 CALL                             R23 2 1
      371 SETTABLEKS                       R23 R22 K21 ["Material"]
      373 CALL                             R19 3 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R19
      376 SETTABLEKS                       R19 R18 K86 ["Preview"]
      378 GETUPVAL                         R19 0
      379 GETTABLEKS                       R19 R19 K35 ["createElement"]
      381 GETUPVAL                         R20 11
      382 DUPTABLE                         R21 K115 [{["LayoutOrder"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["tag"], ["testId"] = "terrain-material-picker-label"}]
      383 MOVE                             R22 R5
      384 CALL                             R22 0 1
      385 SETTABLEKS                       R22 R21 K90 ["LayoutOrder"]
      387 GETTABLEKS                       R23 R0 K9 ["Schema"]
      389 GETTABLEKS                       R23 R23 K18 ["InvalidSourceSelected"]
      391 JUMPIFNOT                        R23 ; [+6]
      392 GETTABLEKS                       R23 R0 K9 ["Schema"]
      394 GETTABLEKS                       R23 R23 K117 ["InvalidSourceLabel"]
      396 ORK                              R22 R23 K116 [""]
      397 JUMP                             ; [+5]
      398 JUMPIFNOT                        R11 ; [+3]
      399 GETTABLEKS                       R22 R11 K118 ["displayName"]
      401 JUMP                             ; [+1]
      402 LOADK                            R22 K116 [""]
      403 SETTABLEKS                       R22 R21 K111 ["Text"]
      405 GETIMPORT                        R22 K120 [Enum.TextTruncate.AtEnd]
      407 SETTABLEKS                       R22 R21 K112 ["TextTruncate"]
      409 GETIMPORT                        R22 K122 [Enum.TextXAlignment.Left]
      411 SETTABLEKS                       R22 R21 K113 ["TextXAlignment"]
      413 NEWTABLE                         R22 4 0
      415 LOADB                            R23 1
      416 SETTABLEKS                       R23 R22 K123 ["grow size-0-full text-body-small text-align-x-left text-truncate-end"]
      418 LOADB                            R23 1
      419 JUMPIFNOTEQKNIL                  R11 ; [+9]
      421 GETTABLEKS                       R24 R0 K9 ["Schema"]
      423 GETTABLEKS                       R24 R24 K18 ["InvalidSourceSelected"]
      425 JUMPIFEQKB                       R24 TRUE ; [+2]
      427 LOADB                            R23 0 +1
      428 LOADB                            R23 1
      429 SETTABLEKS                       R23 R22 K124 ["content-emphasis"]
      431 LOADB                            R23 0
      432 JUMPIFNOTEQKNIL                  R11 ; [+6]
      434 GETTABLEKS                       R24 R0 K9 ["Schema"]
      436 GETTABLEKS                       R24 R24 K18 ["InvalidSourceSelected"]
      438 NOT                              R23 R24
      439 SETTABLEKS                       R23 R22 K125 ["content-muted"]
      441 SETTABLEKS                       R22 R21 K46 ["tag"]
      443 CALL                             R19 2 1
      444 SETTABLEKS                       R19 R18 K87 ["Label"]
      446 GETUPVAL                         R19 0
      447 GETTABLEKS                       R19 R19 K35 ["createElement"]
      449 GETUPVAL                         R20 12
      450 DUPTABLE                         R21 K129 [{["LayoutOrder"], ["name"], ["size"], ["testId"] = "terrain-material-picker-chevron"}]
      451 MOVE                             R22 R5
      452 CALL                             R22 0 1
      453 SETTABLEKS                       R22 R21 K90 ["LayoutOrder"]
      455 GETUPVAL                         R22 3
      456 GETTABLEKS                       R22 R22 K74 ["Enums"]
      458 GETTABLEKS                       R22 R22 K130 ["IconName"]
      460 GETTABLEKS                       R22 R22 K131 ["ChevronLargeDown"]
      462 SETTABLEKS                       R22 R21 K126 ["name"]
      464 GETUPVAL                         R22 3
      465 GETTABLEKS                       R22 R22 K74 ["Enums"]
      467 GETTABLEKS                       R22 R22 K132 ["IconSize"]
      469 GETTABLEKS                       R22 R22 K107 ["XSmall"]
      471 SETTABLEKS                       R22 R21 K127 ["size"]
      473 CALL                             R19 2 1
      474 SETTABLEKS                       R19 R18 K88 ["Chevron"]
      476 CALL                             R15 3 -1
      477 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Packages"]
       53 GETTABLEKS                       R8 R8 K13 ["TerrainPalette"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K16 ["TerrainMaterialCatalogContext"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K17 ["ContextServices"]
       67 GETTABLEKS                       R10 R6 K18 ["Util"]
       69 GETTABLEKS                       R10 R10 K19 ["StudioUri"]
       71 GETTABLEKS                       R11 R6 K20 ["Hooks"]
       73 GETTABLEKS                       R11 R11 K21 ["useWidgetRef"]
       75 GETTABLEKS                       R12 R1 K22 ["Icon"]
       77 GETTABLEKS                       R13 R3 K23 ["Components"]
       79 GETTABLEKS                       R13 R13 K24 ["MaterialPreview"]
       81 GETTABLEKS                       R14 R3 K25 ["Enums"]
       83 GETTABLEKS                       R14 R14 K26 ["MaterialPreviewGeometryType"]
       85 GETTABLEKS                       R15 R1 K27 ["Text"]
       87 GETTABLEKS                       R16 R1 K28 ["View"]
       89 GETTABLEKS                       R17 R5 K29 ["createNextOrder"]
       91 DUPCLOSURE                       R18 K30 [PROTO_0]
       92 DUPCLOSURE                       R19 K31 [PROTO_1]
       93 DUPCLOSURE                       R20 K32 [PROTO_2]
       94 CAPTURE                          VAL R7
       95 DUPCLOSURE                       R21 K33 [PROTO_6]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R12
      109 RETURN                           R21 1
