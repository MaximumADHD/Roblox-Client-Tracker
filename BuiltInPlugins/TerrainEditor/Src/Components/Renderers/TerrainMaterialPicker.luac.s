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
        0 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R2 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R1 R2 ; [+11]
        6 GETIMPORT                        R1 K6 [Enum.Material.Glass]
        8 GETIMPORT                        R2 K9 [Color3.fromRGB]
       10 LOADN                            R3 255
       11 LOADN                            R4 255
       12 LOADN                            R5 255
       13 CALL                             R2 3 1
       14 LOADK                            R3 K10 [0.5]
       15 RETURN                           R1 3
       16 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
       18 GETIMPORT                        R2 K12 [Enum.Material.Water]
       20 JUMPIFNOTEQ                      R1 R2 ; [+11]
       22 GETIMPORT                        R1 K14 [Enum.Material.Glacier]
       24 GETIMPORT                        R2 K9 [Color3.fromRGB]
       26 LOADN                            R3 33
       27 LOADN                            R4 84
       28 LOADN                            R5 185
       29 CALL                             R2 3 1
       30 LOADK                            R3 K10 [0.5]
       31 RETURN                           R1 3
       32 GETTABLEKS                       R1 R0 K15 ["resolvedVariant"]
       34 JUMPIF                           R1 ; [+2]
       35 GETTABLEKS                       R1 R0 K0 ["baseMaterial"]
       37 GETTABLEKS                       R2 R0 K16 ["color"]
       39 LOADNIL                          R3
       40 RETURN                           R1 3

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{["Category"] = "Widgets", ["ItemId"]}]
        8 LOADK                            R4 K6 ["TerrainMaterialPicker/%*"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K7 ["Schema"]
       12 GETTABLEKS                       R6 R6 K8 ["PickerId"]
       14 NAMECALL                         R4 R4 K9 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       20 CALL                             R0 2 -1
       21 RETURN                           R0 -1

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
       94 JUMPIFNOT                        R10 ; [+32]
       95 GETTABLEKS                       R13 R0 K9 ["Schema"]
       97 GETTABLEKS                       R14 R10 K18 ["baseMaterial"]
       99 GETIMPORT                        R15 K22 [Enum.Material.Air]
      101 JUMPIFNOTEQ                      R14 R15 ; [+8]
      103 GETTABLEKS                       R14 R13 K23 ["AllowAir"]
      105 JUMPIFEQKB                       R14 TRUE ; [+2]
      107 LOADB                            R12 0 +1
      108 LOADB                            R12 1
      109 JUMP                             ; [+14]
      110 GETTABLEKS                       R14 R10 K18 ["baseMaterial"]
      112 GETIMPORT                        R15 K25 [Enum.Material.Water]
      114 JUMPIFNOTEQ                      R14 R15 ; [+8]
      116 GETTABLEKS                       R14 R13 K26 ["AllowWater"]
      118 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
      120 LOADB                            R12 0 +1
      121 LOADB                            R12 1
      122 JUMP                             ; [+1]
      123 LOADB                            R12 1
      124 JUMPIFNOT                        R12 ; [+2]
      125 MOVE                             R11 R10
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K27 ["useEffect"]
      131 NEWCLOSURE                       R13 P2
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R0
      136 NEWTABLE                         R14 0 3
      138 GETTABLEKS                       R15 R0 K9 ["Schema"]
      140 GETTABLEKS                       R15 R15 K28 ["OnClear"]
      142 MOVE                             R16 R10
      143 MOVE                             R17 R9
      144 SETLIST                          R14 R15 3 [1]
      146 CALL                             R12 2 0
      147 LOADNIL                          R12
      148 LOADNIL                          R13
      149 LOADNIL                          R14
      150 JUMPIFNOT                        R11 ; [+6]
      151 GETUPVAL                         R15 7
      152 MOVE                             R16 R11
      153 CALL                             R15 1 3
      154 MOVE                             R12 R15
      155 MOVE                             R13 R16
      156 MOVE                             R14 R17
      157 GETUPVAL                         R15 0
      158 GETTABLEKS                       R15 R15 K29 ["createElement"]
      160 GETUPVAL                         R16 8
      161 DUPTABLE                         R17 K44 [{["backgroundStyle"], ["cursor"], ["isDisabled"], ["onActivated"], ["padding"], ["ref"], ["selection"], ["stateLayer"], ["stroke"], ["Size"], ["tag"] = "row align-y-center gap-xsmall radius-small clip", ["testId"] = "terrain-material-picker"}]
      162 GETTABLEKS                       R18 R3 K45 ["Color"]
      164 GETTABLEKS                       R18 R18 K46 ["Shift"]
      166 GETTABLEKS                       R18 R18 K47 ["Shift_200"]
      168 SETTABLEKS                       R18 R17 K30 ["backgroundStyle"]
      170 DUPTABLE                         R18 K51 [{"radius", "offset", "borderWidth"}]
      171 GETIMPORT                        R19 K54 [UDim.new]
      173 LOADN                            R20 0
      174 GETTABLEKS                       R21 R3 K55 ["Radius"]
      176 GETTABLEKS                       R21 R21 K56 ["Small"]
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K48 ["radius"]
      181 GETTABLEKS                       R20 R3 K57 ["Stroke"]
      183 GETTABLEKS                       R20 R20 K58 ["Thick"]
      185 MINUS                            R19 R20
      186 SETTABLEKS                       R19 R18 K49 ["offset"]
      188 GETTABLEKS                       R19 R3 K57 ["Stroke"]
      190 GETTABLEKS                       R19 R19 K58 ["Thick"]
      192 SETTABLEKS                       R19 R18 K50 ["borderWidth"]
      194 SETTABLEKS                       R18 R17 K31 ["cursor"]
      196 GETTABLEKS                       R18 R0 K59 ["Disabled"]
      198 SETTABLEKS                       R18 R17 K32 ["isDisabled"]
      200 GETTABLEKS                       R19 R0 K59 ["Disabled"]
      202 JUMPIFNOT                        R19 ; [+2]
      203 LOADNIL                          R18
      204 JUMP                             ; [+1]
      205 MOVE                             R18 R8
      206 SETTABLEKS                       R18 R17 K33 ["onActivated"]
      208 DUPTABLE                         R18 K62 [{"left", "right"}]
      209 GETIMPORT                        R19 K54 [UDim.new]
      211 LOADN                            R20 0
      212 GETTABLEKS                       R21 R3 K39 ["Size"]
      214 GETTABLEKS                       R21 R21 K63 ["Size_150"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K60 ["left"]
      219 GETIMPORT                        R19 K54 [UDim.new]
      221 LOADN                            R20 0
      222 GETTABLEKS                       R21 R3 K39 ["Size"]
      224 GETTABLEKS                       R21 R21 K63 ["Size_150"]
      226 CALL                             R19 2 1
      227 SETTABLEKS                       R19 R18 K61 ["right"]
      229 SETTABLEKS                       R18 R17 K34 ["padding"]
      231 SETTABLEKS                       R7 R17 K35 ["ref"]
      233 DUPTABLE                         R18 K65 [{"Selectable"}]
      234 GETTABLEKS                       R20 R0 K59 ["Disabled"]
      236 NOT                              R19 R20
      237 SETTABLEKS                       R19 R18 K64 ["Selectable"]
      239 SETTABLEKS                       R18 R17 K36 ["selection"]
      241 DUPTABLE                         R18 K67 [{"affordance"}]
      242 GETUPVAL                         R19 3
      243 GETTABLEKS                       R19 R19 K68 ["Enums"]
      245 GETTABLEKS                       R19 R19 K69 ["StateLayerAffordance"]
      247 GETTABLEKS                       R19 R19 K70 ["Background"]
      249 SETTABLEKS                       R19 R18 K66 ["affordance"]
      251 SETTABLEKS                       R18 R17 K37 ["stateLayer"]
      253 DUPTABLE                         R18 K73 [{"Color", "Transparency", "Thickness"}]
      254 GETTABLEKS                       R19 R3 K45 ["Color"]
      256 GETTABLEKS                       R19 R19 K57 ["Stroke"]
      258 GETTABLEKS                       R19 R19 K74 ["Emphasis"]
      260 GETTABLEKS                       R19 R19 K75 ["Color3"]
      262 SETTABLEKS                       R19 R18 K45 ["Color"]
      264 GETTABLEKS                       R19 R3 K45 ["Color"]
      266 GETTABLEKS                       R19 R19 K57 ["Stroke"]
      268 GETTABLEKS                       R19 R19 K74 ["Emphasis"]
      270 GETTABLEKS                       R19 R19 K71 ["Transparency"]
      272 SETTABLEKS                       R19 R18 K71 ["Transparency"]
      274 GETTABLEKS                       R19 R3 K57 ["Stroke"]
      276 GETTABLEKS                       R19 R19 K76 ["Standard"]
      278 SETTABLEKS                       R19 R18 K72 ["Thickness"]
      280 SETTABLEKS                       R18 R17 K38 ["stroke"]
      282 GETIMPORT                        R18 K78 [UDim2.new]
      284 LOADN                            R19 1
      285 LOADN                            R20 0
      286 LOADN                            R21 0
      287 GETTABLEKS                       R22 R3 K39 ["Size"]
      289 GETTABLEKS                       R22 R22 K79 ["Size_600"]
      291 CALL                             R18 4 1
      292 SETTABLEKS                       R18 R17 K39 ["Size"]
      294 DUPTABLE                         R18 K83 [{"Preview", "Label", "Chevron"}]
      295 JUMPIFNOT                        R11 ; [+55]
      296 GETUPVAL                         R19 0
      297 GETTABLEKS                       R19 R19 K29 ["createElement"]
      299 GETUPVAL                         R20 8
      300 DUPTABLE                         R21 K87 [{["LayoutOrder"], ["Size"], ["tag"] = "radius-xsmall clip", ["testId"] = "terrain-material-picker-preview"}]
      301 MOVE                             R22 R5
      302 CALL                             R22 0 1
      303 SETTABLEKS                       R22 R21 K84 ["LayoutOrder"]
      305 GETIMPORT                        R22 K89 [UDim2.fromOffset]
      307 LOADN                            R23 18
      308 LOADN                            R24 18
      309 CALL                             R22 2 1
      310 SETTABLEKS                       R22 R21 K39 ["Size"]
      312 DUPTABLE                         R22 K90 [{"Material"}]
      313 GETUPVAL                         R23 0
      314 GETTABLEKS                       R23 R23 K29 ["createElement"]
      316 GETUPVAL                         R24 9
      317 DUPTABLE                         R25 K100 [{["CornerRadius"], ["InitialDistance"] = 4.12, ["Material"], ["MaterialPreviewGeometryType"], ["OverrideColor"], ["OverrideTransparency"], ["Size"], ["Static"] = True, ["Transparent"] = True}]
      318 GETIMPORT                        R26 K54 [UDim.new]
      320 LOADN                            R27 0
      321 GETTABLEKS                       R28 R3 K55 ["Radius"]
      323 GETTABLEKS                       R28 R28 K101 ["XSmall"]
      325 CALL                             R26 2 1
      326 SETTABLEKS                       R26 R25 K91 ["CornerRadius"]
      328 SETTABLEKS                       R12 R25 K20 ["Material"]
      330 GETUPVAL                         R26 10
      331 GETTABLEKS                       R26 R26 K102 ["CubeCornerOn"]
      333 SETTABLEKS                       R26 R25 K94 ["MaterialPreviewGeometryType"]
      335 SETTABLEKS                       R13 R25 K95 ["OverrideColor"]
      337 SETTABLEKS                       R14 R25 K96 ["OverrideTransparency"]
      339 GETIMPORT                        R26 K104 [UDim2.fromScale]
      341 LOADN                            R27 1
      342 LOADN                            R28 1
      343 CALL                             R26 2 1
      344 SETTABLEKS                       R26 R25 K39 ["Size"]
      346 CALL                             R23 2 1
      347 SETTABLEKS                       R23 R22 K20 ["Material"]
      349 CALL                             R19 3 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R19
      352 SETTABLEKS                       R19 R18 K80 ["Preview"]
      354 GETUPVAL                         R19 0
      355 GETTABLEKS                       R19 R19 K29 ["createElement"]
      357 GETUPVAL                         R20 11
      358 DUPTABLE                         R21 K109 [{["LayoutOrder"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["tag"], ["testId"] = "terrain-material-picker-label"}]
      359 MOVE                             R22 R5
      360 CALL                             R22 0 1
      361 SETTABLEKS                       R22 R21 K84 ["LayoutOrder"]
      363 JUMPIFNOT                        R11 ; [+3]
      364 GETTABLEKS                       R22 R11 K110 ["displayName"]
      366 JUMP                             ; [+1]
      367 LOADK                            R22 K111 [""]
      368 SETTABLEKS                       R22 R21 K105 ["Text"]
      370 GETIMPORT                        R22 K113 [Enum.TextTruncate.AtEnd]
      372 SETTABLEKS                       R22 R21 K106 ["TextTruncate"]
      374 GETIMPORT                        R22 K115 [Enum.TextXAlignment.Left]
      376 SETTABLEKS                       R22 R21 K107 ["TextXAlignment"]
      378 NEWTABLE                         R22 4 0
      380 LOADB                            R23 1
      381 SETTABLEKS                       R23 R22 K116 ["grow size-0-full text-body-small text-align-x-left text-truncate-end"]
      383 JUMPIFNOTEQKNIL                  R11 ; [+2]
      385 LOADB                            R23 0 +1
      386 LOADB                            R23 1
      387 SETTABLEKS                       R23 R22 K117 ["content-emphasis"]
      389 JUMPIFEQKNIL                     R11 ; [+2]
      391 LOADB                            R23 0 +1
      392 LOADB                            R23 1
      393 SETTABLEKS                       R23 R22 K118 ["content-muted"]
      395 SETTABLEKS                       R22 R21 K40 ["tag"]
      397 CALL                             R19 2 1
      398 SETTABLEKS                       R19 R18 K81 ["Label"]
      400 GETUPVAL                         R19 0
      401 GETTABLEKS                       R19 R19 K29 ["createElement"]
      403 GETUPVAL                         R20 12
      404 DUPTABLE                         R21 K122 [{["LayoutOrder"], ["name"], ["size"], ["testId"] = "terrain-material-picker-chevron"}]
      405 MOVE                             R22 R5
      406 CALL                             R22 0 1
      407 SETTABLEKS                       R22 R21 K84 ["LayoutOrder"]
      409 GETUPVAL                         R22 3
      410 GETTABLEKS                       R22 R22 K68 ["Enums"]
      412 GETTABLEKS                       R22 R22 K123 ["IconName"]
      414 GETTABLEKS                       R22 R22 K124 ["ChevronLargeDown"]
      416 SETTABLEKS                       R22 R21 K119 ["name"]
      418 GETUPVAL                         R22 3
      419 GETTABLEKS                       R22 R22 K68 ["Enums"]
      421 GETTABLEKS                       R22 R22 K125 ["IconSize"]
      423 GETTABLEKS                       R22 R22 K101 ["XSmall"]
      425 SETTABLEKS                       R22 R21 K120 ["size"]
      427 CALL                             R19 2 1
      428 SETTABLEKS                       R19 R18 K82 ["Chevron"]
      430 CALL                             R15 3 -1
      431 RETURN                           R15 -1

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
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K15 ["TerrainMaterialCatalogContext"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       60 GETTABLEKS                       R9 R6 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["StudioUri"]
       64 GETTABLEKS                       R10 R6 K19 ["Hooks"]
       66 GETTABLEKS                       R10 R10 K20 ["useWidgetRef"]
       68 GETTABLEKS                       R11 R1 K21 ["Icon"]
       70 GETTABLEKS                       R12 R3 K22 ["Components"]
       72 GETTABLEKS                       R12 R12 K23 ["MaterialPreview"]
       74 GETTABLEKS                       R13 R3 K24 ["Enums"]
       76 GETTABLEKS                       R13 R13 K25 ["MaterialPreviewGeometryType"]
       78 GETTABLEKS                       R14 R1 K26 ["Text"]
       80 GETTABLEKS                       R15 R1 K27 ["View"]
       82 GETTABLEKS                       R16 R5 K28 ["createNextOrder"]
       84 DUPCLOSURE                       R17 K29 [PROTO_0]
       85 DUPCLOSURE                       R18 K30 [PROTO_1]
       86 DUPCLOSURE                       R19 K31 [PROTO_2]
       87 DUPCLOSURE                       R20 K32 [PROTO_6]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R19
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R11
      101 RETURN                           R20 1
