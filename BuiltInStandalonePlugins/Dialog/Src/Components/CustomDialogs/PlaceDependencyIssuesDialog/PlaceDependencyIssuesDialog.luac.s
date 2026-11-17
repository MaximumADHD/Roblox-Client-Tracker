PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["asset"]
        4 LOADK                            R3 K1 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
        5 GETTABLEKS                       R5 R2 K2 ["assetId"]
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R5 R2 K4 ["thumbnailState"]
       12 JUMPIFEQKS                       R5 K5 ["Completed"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADNIL                          R5
       18 JUMP                             ; [+11]
       19 GETTABLEKS                       R5 R0 K6 ["studioService"]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R11 R2 K9 ["assetTypeName"]
       24 ORK                              R10 R11 K8 [""]
       25 GETTABLE                         R8 R9 R10
       26 ORK                              R7 R8 K7 ["Model"]
       27 NAMECALL                         R5 R5 K10 ["GetClassIcon"]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 2
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K11 ["View"]
       34 DUPTABLE                         R8 K15 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small"}]
       35 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       39 DUPTABLE                         R9 K20 [{"Thumbnail", "Name", "AssetId", "AssetType"}]
       40 GETUPVAL                         R10 2
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K21 ["Image"]
       44 DUPTABLE                         R12 K25 [{["LayoutOrder"], ["Image"], ["imageRect"], ["tag"] = "radius-small", ["Size"]}]
       45 MOVE                             R13 R1
       46 CALL                             R13 0 1
       47 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       49 JUMPIFNOT                        R4 ; [+2]
       50 MOVE                             R13 R3
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R13 R5 K21 ["Image"]
       54 SETTABLEKS                       R13 R12 K21 ["Image"]
       56 JUMPIFNOT                        R4 ; [+2]
       57 LOADNIL                          R13
       58 JUMP                             ; [+9]
       59 DUPTABLE                         R13 K28 [{"offset", "size"}]
       60 GETTABLEKS                       R14 R5 K29 ["ImageRectOffset"]
       62 SETTABLEKS                       R14 R13 K26 ["offset"]
       64 GETTABLEKS                       R14 R5 K30 ["ImageRectSize"]
       66 SETTABLEKS                       R14 R13 K27 ["size"]
       68 SETTABLEKS                       R13 R12 K22 ["imageRect"]
       70 GETIMPORT                        R13 K33 [UDim2.fromOffset]
       72 LOADN                            R14 36
       73 LOADN                            R15 36
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K24 ["Size"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K16 ["Thumbnail"]
       80 GETUPVAL                         R10 2
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K34 ["Text"]
       84 DUPTABLE                         R12 K36 [{["LayoutOrder"], ["Text"], ["tag"] = "fill auto-y text-body-medium text-align-x-left text-truncate-split"}]
       85 MOVE                             R13 R1
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       89 GETTABLEKS                       R13 R2 K37 ["displayName"]
       91 JUMPIF                           R13 ; [+6]
       92 GETTABLEKS                       R14 R2 K2 ["assetId"]
       94 FASTCALL1                        TOSTRING R14 ; [+2]
       95 GETIMPORT                        R13 K39 [tostring]
       97 CALL                             R13 1 1
       98 SETTABLEKS                       R13 R12 K34 ["Text"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K17 ["Name"]
      103 GETUPVAL                         R10 2
      104 GETUPVAL                         R11 3
      105 GETTABLEKS                       R11 R11 K34 ["Text"]
      107 DUPTABLE                         R12 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-y text-body-medium text-align-x-left", ["Size"]}]
      108 MOVE                             R13 R1
      109 CALL                             R13 0 1
      110 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      112 GETTABLEKS                       R14 R2 K2 ["assetId"]
      114 FASTCALL1                        TOSTRING R14 ; [+2]
      115 GETIMPORT                        R13 K39 [tostring]
      117 CALL                             R13 1 1
      118 SETTABLEKS                       R13 R12 K34 ["Text"]
      120 GETIMPORT                        R13 K33 [UDim2.fromOffset]
      122 LOADN                            R14 140
      123 LOADN                            R15 0
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K24 ["Size"]
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R9 K18 ["AssetId"]
      130 GETUPVAL                         R10 2
      131 GETUPVAL                         R11 3
      132 GETTABLEKS                       R11 R11 K34 ["Text"]
      134 DUPTABLE                         R12 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-y text-body-medium text-align-x-left", ["Size"]}]
      135 MOVE                             R13 R1
      136 CALL                             R13 0 1
      137 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      139 GETTABLEKS                       R13 R2 K9 ["assetTypeName"]
      141 JUMPIF                           R13 ; [+2]
      142 GETTABLEKS                       R13 R0 K42 ["unknownAssetType"]
      144 SETTABLEKS                       R13 R12 K34 ["Text"]
      146 GETIMPORT                        R13 K33 [UDim2.fromOffset]
      148 LOADN                            R14 120
      149 LOADN                            R15 0
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K24 ["Size"]
      153 CALL                             R10 2 1
      154 SETTABLEKS                       R10 R9 K19 ["AssetType"]
      156 CALL                             R6 3 -1
      157 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADK                            R1 K1 ["ok"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADK                            R1 K1 ["dismissed"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["input"]
        5 GETTABLEKS                       R2 R2 K4 ["assets"]
        7 LENGTH                           R1 R2
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["input"]
       12 GETTABLEKS                       R1 R1 K4 ["assets"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R7 R5 K5 ["assetId"]
       19 FASTCALL1                        TOSTRING R7 ; [+2]
       20 GETIMPORT                        R6 K7 [tostring]
       22 CALL                             R6 1 1
       23 SETTABLE                         R6 R0 R4
       24 FORGLOOP                         R1 2 ; [-8]
       26 GETUPVAL                         R1 1
       27 GETIMPORT                        R3 K9 [table.concat]
       29 MOVE                             R4 R0
       30 LOADK                            R5 K10 [","]
       31 CALL                             R3 2 -1
       32 NAMECALL                         R1 R1 K11 ["CopyToClipboard"]
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["input"]
        6 GETTABLEKS                       R0 R0 K1 ["BrowserService"]
        8 JUMPIF                           R0 ; [+6]
        9 GETIMPORT                        R0 K3 [game]
       11 LOADK                            R2 K1 ["BrowserService"]
       12 NAMECALL                         R0 R0 K4 ["GetService"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R3 0
       16 NAMECALL                         R1 R0 K5 ["OpenBrowserWindow"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K1 ["input"]
        8 GETTABLEKS                       R3 R3 K2 ["StudioService"]
       10 JUMPIF                           R3 ; [+6]
       11 GETIMPORT                        R3 K4 [game]
       13 LOADK                            R5 K2 ["StudioService"]
       14 NAMECALL                         R3 R3 K5 ["GetService"]
       16 CALL                             R3 2 1
       17 GETTABLEKS                       R4 R0 K1 ["input"]
       19 GETTABLEKS                       R4 R4 K6 ["detailsUrl"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R7 0 1
       28 GETTABLEKS                       R8 R0 K8 ["onResolved"]
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 1
       40 GETTABLEKS                       R9 R0 K8 ["onResolved"]
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R9 0 2
       53 GETTABLEKS                       R10 R0 K1 ["input"]
       55 GETTABLEKS                       R10 R10 K9 ["assets"]
       57 MOVE                             R11 R3
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R11 R0 K1 ["input"]
       71 GETTABLEKS                       R11 R11 K10 ["BrowserService"]
       73 MOVE                             R12 R4
       74 SETLIST                          R10 R11 2 [1]
       76 CALL                             R8 2 1
       77 GETTABLEKS                       R11 R0 K1 ["input"]
       79 GETTABLEKS                       R11 R11 K9 ["assets"]
       81 LENGTH                           R10 R11
       82 LOADN                            R11 1
       83 LOADK                            R12 K11 [4.5]
       84 FASTCALL                         MATH_CLAMP ; [+2]
       85 GETIMPORT                        R9 K14 [math.clamp]
       87 CALL                             R9 3 1
       88 LOADK                            R12 K15 ["Dependencies"]
       89 LOADK                            R13 K16 ["Unknown"]
       90 NAMECALL                         R10 R2 K17 ["getText"]
       92 CALL                             R10 3 1
       93 GETTABLEKS                       R12 R0 K1 ["input"]
       95 GETTABLEKS                       R12 R12 K18 ["totalFailures"]
       97 GETTABLEKS                       R14 R0 K1 ["input"]
       99 GETTABLEKS                       R14 R14 K9 ["assets"]
      101 LENGTH                           R13 R14
      102 JUMPIFNOTLT                      R13 R12 ; [+3]
      104 LOADK                            R11 K19 ["PlaceIssuesPartialDescription"]
      105 JUMP                             ; [+1]
      106 LOADK                            R11 K20 ["PlaceIssuesDescription"]
      107 NEWTABLE                         R12 0 0
      109 GETTABLEKS                       R13 R0 K1 ["input"]
      111 GETTABLEKS                       R13 R13 K9 ["assets"]
      113 LOADNIL                          R14
      114 LOADNIL                          R15
      115 FORGPREP                         R13
      116 GETTABLEKS                       R19 R17 K21 ["assetId"]
      118 FASTCALL1                        TOSTRING R19 ; [+2]
      119 GETIMPORT                        R18 K23 [tostring]
      121 CALL                             R18 1 1
      122 GETUPVAL                         R19 3
      123 GETUPVAL                         R20 4
      124 DUPTABLE                         R21 K28 [{"asset", "studioService", "unknownAssetType", "LayoutOrder"}]
      125 SETTABLEKS                       R17 R21 K24 ["asset"]
      127 SETTABLEKS                       R3 R21 K25 ["studioService"]
      129 SETTABLEKS                       R10 R21 K26 ["unknownAssetType"]
      131 SETTABLEKS                       R16 R21 K27 ["LayoutOrder"]
      133 CALL                             R19 2 1
      134 SETTABLE                         R19 R12 R18
      135 FORGLOOP                         R13 2 ; [-20]
      137 GETUPVAL                         R13 3
      138 GETUPVAL                         R14 5
      139 DUPTABLE                         R15 K39 [{["uri"], ["type"] = "Warning", ["width"] = 650, ["title"], ["description"], ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
      140 GETTABLEKS                       R16 R0 K29 ["uri"]
      142 SETTABLEKS                       R16 R15 K29 ["uri"]
      144 LOADK                            R18 K15 ["Dependencies"]
      145 LOADK                            R19 K40 ["PlaceIssuesTitle"]
      146 DUPTABLE                         R20 K42 [{"count"}]
      147 GETTABLEKS                       R21 R0 K1 ["input"]
      149 GETTABLEKS                       R21 R21 K18 ["totalFailures"]
      151 SETTABLEKS                       R21 R20 K41 ["count"]
      153 NAMECALL                         R16 R2 K17 ["getText"]
      155 CALL                             R16 4 1
      156 SETTABLEKS                       R16 R15 K34 ["title"]
      158 LOADK                            R18 K15 ["Dependencies"]
      159 MOVE                             R19 R11
      160 NAMECALL                         R16 R2 K17 ["getText"]
      162 CALL                             R16 3 1
      163 SETTABLEKS                       R16 R15 K35 ["description"]
      165 DUPTABLE                         R16 K45 [{"uri", "text", "onActivated"}]
      166 GETUPVAL                         R17 6
      167 GETTABLEKS                       R17 R17 K46 ["child"]
      169 GETTABLEKS                       R18 R0 K29 ["uri"]
      171 LOADK                            R19 K47 ["OK"]
      172 CALL                             R17 2 1
      173 SETTABLEKS                       R17 R16 K29 ["uri"]
      175 LOADK                            R19 K48 ["DialogButton"]
      176 LOADK                            R20 K47 ["OK"]
      177 NAMECALL                         R17 R2 K17 ["getText"]
      179 CALL                             R17 3 1
      180 SETTABLEKS                       R17 R16 K43 ["text"]
      182 SETTABLEKS                       R5 R16 K44 ["onActivated"]
      184 SETTABLEKS                       R16 R15 K36 ["primaryAction"]
      186 DUPTABLE                         R16 K45 [{"uri", "text", "onActivated"}]
      187 GETUPVAL                         R17 6
      188 GETTABLEKS                       R17 R17 K46 ["child"]
      190 GETTABLEKS                       R18 R0 K29 ["uri"]
      192 LOADK                            R19 K49 ["CopyAssetIds"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K29 ["uri"]
      196 LOADK                            R19 K15 ["Dependencies"]
      197 LOADK                            R20 K49 ["CopyAssetIds"]
      198 NAMECALL                         R17 R2 K17 ["getText"]
      200 CALL                             R17 3 1
      201 SETTABLEKS                       R17 R16 K43 ["text"]
      203 SETTABLEKS                       R7 R16 K44 ["onActivated"]
      205 SETTABLEKS                       R16 R15 K37 ["secondaryAction"]
      207 DUPTABLE                         R16 K51 [{"uri", "onClose"}]
      208 GETUPVAL                         R17 6
      209 GETTABLEKS                       R17 R17 K46 ["child"]
      211 GETTABLEKS                       R18 R0 K29 ["uri"]
      213 LOADK                            R19 K52 ["Close"]
      214 CALL                             R17 2 1
      215 SETTABLEKS                       R17 R16 K29 ["uri"]
      217 SETTABLEKS                       R6 R16 K50 ["onClose"]
      219 SETTABLEKS                       R16 R15 K38 ["escapeAction"]
      221 DUPTABLE                         R16 K56 [{"DetailsLink", "AssetTable", "Tip"}]
      222 JUMPIFNOT                        R4 ; [+20]
      223 GETUPVAL                         R17 3
      224 GETUPVAL                         R18 7
      225 GETTABLEKS                       R18 R18 K57 ["Text"]
      227 DUPTABLE                         R19 K60 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-label-small text-wrap text-align-x-left content-link", ["onActivated"]}]
      228 MOVE                             R20 R1
      229 CALL                             R20 0 1
      230 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      232 LOADK                            R22 K48 ["DialogButton"]
      233 LOADK                            R23 K61 ["ViewDetails"]
      234 NAMECALL                         R20 R2 K17 ["getText"]
      236 CALL                             R20 3 1
      237 SETTABLEKS                       R20 R19 K57 ["Text"]
      239 SETTABLEKS                       R8 R19 K44 ["onActivated"]
      241 CALL                             R17 2 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R17
      244 SETTABLEKS                       R17 R16 K53 ["DetailsLink"]
      246 GETUPVAL                         R17 3
      247 GETUPVAL                         R18 7
      248 GETTABLEKS                       R18 R18 K62 ["View"]
      250 DUPTABLE                         R19 K64 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y stroke-emphasis radius-medium"}]
      251 MOVE                             R20 R1
      252 CALL                             R20 0 1
      253 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      255 DUPTABLE                         R20 K68 [{"Header", "HeaderDivider", "Rows"}]
      256 GETUPVAL                         R21 3
      257 GETUPVAL                         R22 7
      258 GETTABLEKS                       R22 R22 K62 ["View"]
      260 DUPTABLE                         R23 K70 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small"}]
      261 MOVE                             R24 R1
      262 CALL                             R24 0 1
      263 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      265 DUPTABLE                         R24 K74 [{"Name", "AssetId", "AssetType"}]
      266 GETUPVAL                         R25 3
      267 GETUPVAL                         R26 7
      268 GETTABLEKS                       R26 R26 K57 ["Text"]
      270 DUPTABLE                         R27 K76 [{["LayoutOrder"], ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
      271 MOVE                             R28 R1
      272 CALL                             R28 0 1
      273 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      275 LOADK                            R30 K15 ["Dependencies"]
      276 LOADK                            R31 K71 ["Name"]
      277 NAMECALL                         R28 R2 K17 ["getText"]
      279 CALL                             R28 3 1
      280 SETTABLEKS                       R28 R27 K57 ["Text"]
      282 CALL                             R25 2 1
      283 SETTABLEKS                       R25 R24 K71 ["Name"]
      285 GETUPVAL                         R25 3
      286 GETUPVAL                         R26 7
      287 GETTABLEKS                       R26 R26 K57 ["Text"]
      289 DUPTABLE                         R27 K79 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-y text-title-medium text-align-x-left", ["Size"]}]
      290 MOVE                             R28 R1
      291 CALL                             R28 0 1
      292 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      294 LOADK                            R30 K15 ["Dependencies"]
      295 LOADK                            R31 K72 ["AssetId"]
      296 NAMECALL                         R28 R2 K17 ["getText"]
      298 CALL                             R28 3 1
      299 SETTABLEKS                       R28 R27 K57 ["Text"]
      301 GETIMPORT                        R28 K82 [UDim2.fromOffset]
      303 LOADN                            R29 140
      304 LOADN                            R30 0
      305 CALL                             R28 2 1
      306 SETTABLEKS                       R28 R27 K78 ["Size"]
      308 CALL                             R25 2 1
      309 SETTABLEKS                       R25 R24 K72 ["AssetId"]
      311 GETUPVAL                         R25 3
      312 GETUPVAL                         R26 7
      313 GETTABLEKS                       R26 R26 K57 ["Text"]
      315 DUPTABLE                         R27 K79 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-y text-title-medium text-align-x-left", ["Size"]}]
      316 MOVE                             R28 R1
      317 CALL                             R28 0 1
      318 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      320 LOADK                            R30 K15 ["Dependencies"]
      321 LOADK                            R31 K73 ["AssetType"]
      322 NAMECALL                         R28 R2 K17 ["getText"]
      324 CALL                             R28 3 1
      325 SETTABLEKS                       R28 R27 K57 ["Text"]
      327 GETIMPORT                        R28 K82 [UDim2.fromOffset]
      329 LOADN                            R29 120
      330 LOADN                            R30 0
      331 CALL                             R28 2 1
      332 SETTABLEKS                       R28 R27 K78 ["Size"]
      334 CALL                             R25 2 1
      335 SETTABLEKS                       R25 R24 K73 ["AssetType"]
      337 CALL                             R21 3 1
      338 SETTABLEKS                       R21 R20 K65 ["Header"]
      340 GETUPVAL                         R21 3
      341 GETUPVAL                         R22 7
      342 GETTABLEKS                       R22 R22 K83 ["Divider"]
      344 DUPTABLE                         R23 K85 [{"LayoutOrder", "orientation"}]
      345 MOVE                             R24 R1
      346 CALL                             R24 0 1
      347 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      349 GETUPVAL                         R24 7
      350 GETTABLEKS                       R24 R24 K86 ["Enums"]
      352 GETTABLEKS                       R24 R24 K87 ["DividerOrientation"]
      354 GETTABLEKS                       R24 R24 K88 ["Horizontal"]
      356 SETTABLEKS                       R24 R23 K84 ["orientation"]
      358 CALL                             R21 2 1
      359 SETTABLEKS                       R21 R20 K66 ["HeaderDivider"]
      361 GETUPVAL                         R21 3
      362 GETUPVAL                         R22 7
      363 GETTABLEKS                       R22 R22 K89 ["ScrollView"]
      365 DUPTABLE                         R23 K92 [{"LayoutOrder", "Size", "layout", "scroll"}]
      366 MOVE                             R24 R1
      367 CALL                             R24 0 1
      368 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      370 GETIMPORT                        R24 K94 [UDim2.new]
      372 LOADN                            R25 1
      373 LOADN                            R26 0
      374 LOADN                            R27 0
      375 MULK                             R28 R9 K95 [56]
      376 CALL                             R24 4 1
      377 SETTABLEKS                       R24 R23 K78 ["Size"]
      379 DUPTABLE                         R24 K97 [{"FillDirection"}]
      380 GETIMPORT                        R25 K100 [Enum.FillDirection.Vertical]
      382 SETTABLEKS                       R25 R24 K96 ["FillDirection"]
      384 SETTABLEKS                       R24 R23 K90 ["layout"]
      386 DUPTABLE                         R24 K104 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      387 GETIMPORT                        R25 K107 [Enum.AutomaticSize.Y]
      389 SETTABLEKS                       R25 R24 K101 ["AutomaticCanvasSize"]
      391 GETIMPORT                        R25 K82 [UDim2.fromOffset]
      393 LOADN                            R26 0
      394 LOADN                            R27 0
      395 CALL                             R25 2 1
      396 SETTABLEKS                       R25 R24 K102 ["CanvasSize"]
      398 GETIMPORT                        R25 K108 [Enum.ScrollingDirection.Y]
      400 SETTABLEKS                       R25 R24 K103 ["ScrollingDirection"]
      402 SETTABLEKS                       R24 R23 K91 ["scroll"]
      404 MOVE                             R24 R12
      405 CALL                             R21 3 1
      406 SETTABLEKS                       R21 R20 K67 ["Rows"]
      408 CALL                             R17 3 1
      409 SETTABLEKS                       R17 R16 K54 ["AssetTable"]
      411 GETUPVAL                         R17 3
      412 GETUPVAL                         R18 7
      413 GETTABLEKS                       R18 R18 K57 ["Text"]
      415 DUPTABLE                         R19 K110 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left"}]
      416 MOVE                             R20 R1
      417 CALL                             R20 0 1
      418 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      420 LOADK                            R22 K15 ["Dependencies"]
      421 LOADK                            R23 K111 ["PlaceIssuesTip"]
      422 NAMECALL                         R20 R2 K17 ["getText"]
      424 CALL                             R20 3 1
      425 SETTABLEKS                       R20 R19 K57 ["Text"]
      427 CALL                             R17 2 1
      428 SETTABLEKS                       R17 R16 K55 ["Tip"]
      430 CALL                             R13 3 -1
      431 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
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
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K13 ["Components"]
       44 GETTABLEKS                       R6 R6 K2 ["Dialog"]
       46 GETTABLEKS                       R7 R2 K14 ["ContextServices"]
       48 GETTABLEKS                       R7 R7 K15 ["Localization"]
       50 GETTABLEKS                       R8 R4 K16 ["Util"]
       52 GETTABLEKS                       R8 R8 K17 ["StudioUri"]
       54 GETTABLEKS                       R9 R2 K16 ["Util"]
       56 GETTABLEKS                       R9 R9 K18 ["counter"]
       58 GETTABLEKS                       R10 R3 K19 ["createElement"]
       60 DUPTABLE                         R11 K31 [{["Model"] = "Model", ["Package"] = "Model", ["Image"] = "Decal", ["Decal"] = "Decal", ["Audio"] = "Sound", ["MeshPart"] = "MeshPart", ["Mesh"] = "MeshPart", ["Video"] = "VideoFrame", ["Animation"] = "Animation"}]
       61 DUPCLOSURE                       R12 K32 [PROTO_0]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R1
       66 DUPCLOSURE                       R13 K33 [PROTO_5]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 GETIMPORT                        R14 K36 [table.freeze]
       77 DUPTABLE                         R15 K39 [{"uri", "component"}]
       78 GETTABLEKS                       R16 R8 K40 ["fromWidget"]
       80 LOADK                            R17 K41 ["Place"]
       81 LOADK                            R18 K42 ["DependencyIssuesDialog"]
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K37 ["uri"]
       85 GETTABLEKS                       R16 R3 K43 ["memo"]
       87 MOVE                             R17 R13
       88 CALL                             R16 1 1
       89 SETTABLEKS                       R16 R15 K38 ["component"]
       91 CALL                             R14 1 -1
       92 RETURN                           R14 -1
