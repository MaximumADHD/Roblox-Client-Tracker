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
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R8 0 2
       30 GETTABLEKS                       R9 R0 K4 ["onActivated"]
       32 GETTABLEKS                       R10 R0 K5 ["slotIndex"]
       34 SETLIST                          R8 R9 2 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R8 R0 K6 ["material"]
       40 CALL                             R7 1 1
       41 LOADB                            R8 1
       42 GETTABLEKS                       R9 R0 K6 ["material"]
       44 GETIMPORT                        R10 K10 [Enum.Material.Air]
       46 JUMPIFEQ                         R9 R10 ; [+9]
       48 GETTABLEKS                       R9 R0 K6 ["material"]
       50 GETIMPORT                        R10 K12 [Enum.Material.Water]
       52 JUMPIFEQ                         R9 R10 ; [+2]
       54 LOADB                            R8 0 +1
       55 LOADB                            R8 1
       56 GETTABLEKS                       R10 R0 K13 ["isSelected"]
       58 JUMPIFNOT                        R10 ; [+6]
       59 GETIMPORT                        R11 K16 [Enum.StudioStyleGuideColor.DialogMainButton]
       61 NAMECALL                         R9 R2 K17 ["GetColor"]
       63 CALL                             R9 2 1
       64 JUMP                             ; [+14]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETIMPORT                        R11 K19 [Enum.StudioStyleGuideColor.Border]
       68 GETIMPORT                        R12 K22 [Enum.StudioStyleGuideModifier.Hover]
       70 NAMECALL                         R9 R2 K17 ["GetColor"]
       72 CALL                             R9 3 1
       73 JUMP                             ; [+5]
       74 GETIMPORT                        R11 K19 [Enum.StudioStyleGuideColor.Border]
       76 NAMECALL                         R9 R2 K17 ["GetColor"]
       78 CALL                             R9 2 1
       79 GETTABLEKS                       R11 R0 K13 ["isSelected"]
       81 JUMPIFNOT                        R11 ; [+2]
       82 LOADN                            R10 2
       83 JUMP                             ; [+1]
       84 LOADN                            R10 1
       85 DUPTABLE                         R11 K31 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
       86 JUMPIFNOT                        R7 ; [+3]
       87 GETTABLEKS                       R12 R7 K6 ["material"]
       89 JUMP                             ; [+8]
       90 GETTABLEKS                       R13 R0 K32 ["variant"]
       92 JUMPIFNOT                        R13 ; [+3]
       93 GETTABLEKS                       R12 R0 K32 ["variant"]
       95 JUMP                             ; [+2]
       96 GETTABLEKS                       R12 R0 K6 ["material"]
       98 SETTABLEKS                       R12 R11 K8 ["Material"]
      100 JUMPIFNOT                        R7 ; [+3]
      101 GETTABLEKS                       R12 R7 K33 ["color"]
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R12 R0 K33 ["color"]
      106 SETTABLEKS                       R12 R11 K23 ["OverrideColor"]
      108 JUMPIFNOT                        R7 ; [+3]
      109 GETTABLEKS                       R12 R7 K34 ["transparency"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 SETTABLEKS                       R12 R11 K24 ["OverrideTransparency"]
      115 GETUPVAL                         R12 5
      116 GETTABLEKS                       R12 R12 K35 ["CubeCornerOn"]
      118 SETTABLEKS                       R12 R11 K25 ["MaterialPreviewGeometryType"]
      120 GETIMPORT                        R14 K37 [Enum.StudioStyleGuideColor.ViewPortBackground]
      122 NAMECALL                         R12 R2 K17 ["GetColor"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K26 ["BackgroundColor"]
      127 GETIMPORT                        R12 K40 [UDim2.fromScale]
      129 LOADN                            R13 1
      130 LOADN                            R14 1
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K27 ["Size"]
      134 GETUPVAL                         R12 6
      135 SETTABLEKS                       R12 R11 K28 ["CornerRadius"]
      137 GETUPVAL                         R12 0
      138 GETTABLEKS                       R12 R12 K41 ["createElement"]
      140 GETUPVAL                         R13 7
      141 MOVE                             R14 R11
      142 CALL                             R12 2 1
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K41 ["createElement"]
      146 GETUPVAL                         R14 8
      147 DUPTABLE                         R15 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-400 text-body-small text-align-x-left text-truncate-end", ["textStyle"]}]
      148 GETTABLEKS                       R16 R0 K49 ["name"]
      150 SETTABLEKS                       R16 R15 K44 ["Text"]
      152 DUPTABLE                         R16 K51 [{"Color3"}]
      153 GETIMPORT                        R19 K53 [Enum.StudioStyleGuideColor.MainText]
      155 NAMECALL                         R17 R2 K17 ["GetColor"]
      157 CALL                             R17 2 1
      158 SETTABLEKS                       R17 R16 K50 ["Color3"]
      160 SETTABLEKS                       R16 R15 K47 ["textStyle"]
      162 CALL                             R13 2 1
      163 LOADK                            R15 K54 ["%* %*"]
      164 LOADK                            R19 K55 ["Plugin"]
      165 LOADK                            R20 K56 ["SlotLabel"]
      166 NAMECALL                         R17 R1 K57 ["getText"]
      168 CALL                             R17 3 1
      169 GETTABLEKS                       R18 R0 K5 ["slotIndex"]
      171 NAMECALL                         R15 R15 K58 ["format"]
      173 CALL                             R15 3 1
      174 MOVE                             R14 R15
      175 JUMPIFNOT                        R8 ; [+11]
      176 LOADK                            R15 K59 ["%* (%*)"]
      177 MOVE                             R17 R14
      178 LOADK                            R20 K55 ["Plugin"]
      179 LOADK                            R21 K60 ["ReadOnlyLabel"]
      180 NAMECALL                         R18 R1 K57 ["getText"]
      182 CALL                             R18 3 1
      183 NAMECALL                         R15 R15 K58 ["format"]
      185 CALL                             R15 3 1
      186 MOVE                             R14 R15
      187 GETUPVAL                         R15 0
      188 GETTABLEKS                       R15 R15 K41 ["createElement"]
      190 GETUPVAL                         R16 8
      191 DUPTABLE                         R17 K64 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-350 text-caption-small text-align-x-left", ["textStyle"], ["testId"] = "SlotLabel"}]
      192 SETTABLEKS                       R14 R17 K44 ["Text"]
      194 DUPTABLE                         R18 K51 [{"Color3"}]
      195 GETIMPORT                        R21 K66 [Enum.StudioStyleGuideColor.SubText]
      197 NAMECALL                         R19 R2 K17 ["GetColor"]
      199 CALL                             R19 2 1
      200 SETTABLEKS                       R19 R18 K50 ["Color3"]
      202 SETTABLEKS                       R18 R17 K47 ["textStyle"]
      204 CALL                             R15 2 1
      205 GETTABLEKS                       R16 R0 K67 ["viewType"]
      207 JUMPIFNOTEQKS                    R16 K68 ["grid"] ; [+92]
      209 GETTABLEKS                       R18 R0 K71 ["tileWidth"]
      211 ORK                              R17 R18 K70 [113]
      212 SUBK                             R16 R17 K69 [10]
      213 GETUPVAL                         R17 0
      214 GETTABLEKS                       R17 R17 K41 ["createElement"]
      216 GETUPVAL                         R18 9
      217 DUPTABLE                         R19 K76 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "radius-small", ["stroke"]}]
      218 GETIMPORT                        R20 K78 [UDim2.fromOffset]
      220 MOVE                             R21 R16
      221 MOVE                             R22 R16
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R19 K27 ["Size"]
      225 DUPTABLE                         R20 K81 [{"Color", "Thickness"}]
      226 SETTABLEKS                       R9 R20 K79 ["Color"]
      228 SETTABLEKS                       R10 R20 K80 ["Thickness"]
      230 SETTABLEKS                       R20 R19 K75 ["stroke"]
      232 DUPTABLE                         R20 K83 [{"Preview"}]
      233 SETTABLEKS                       R12 R20 K82 ["Preview"]
      235 CALL                             R17 3 1
      236 DUPTABLE                         R18 K87 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["testId"], ["tag"] = "col gap-xsmall", ["padding"], ["onStateChanged"]}]
      237 GETIMPORT                        R19 K78 [UDim2.fromOffset]
      239 ADDK                             R20 R16 K69 [10]
      240 ADDK                             R22 R16 K69 [10]
      241 ADDK                             R21 R22 K88 [34]
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K27 ["Size"]
      245 GETTABLEKS                       R19 R0 K89 ["layoutOrder"]
      247 SETTABLEKS                       R19 R18 K42 ["LayoutOrder"]
      249 LOADK                            R20 K90 ["MaterialTile_"]
      250 GETTABLEKS                       R21 R0 K5 ["slotIndex"]
      252 CONCAT                           R19 R20 R21
      253 SETTABLEKS                       R19 R18 K63 ["testId"]
      255 DUPTABLE                         R19 K94 [{"left", "right", "top"}]
      256 GETIMPORT                        R20 K97 [UDim.new]
      258 LOADN                            R21 0
      259 LOADN                            R22 5
      260 CALL                             R20 2 1
      261 SETTABLEKS                       R20 R19 K91 ["left"]
      263 GETIMPORT                        R20 K97 [UDim.new]
      265 LOADN                            R21 0
      266 LOADN                            R22 5
      267 CALL                             R20 2 1
      268 SETTABLEKS                       R20 R19 K92 ["right"]
      270 GETIMPORT                        R20 K97 [UDim.new]
      272 LOADN                            R21 0
      273 LOADN                            R22 5
      274 CALL                             R20 2 1
      275 SETTABLEKS                       R20 R19 K93 ["top"]
      277 SETTABLEKS                       R19 R18 K85 ["padding"]
      279 SETTABLEKS                       R5 R18 K86 ["onStateChanged"]
      281 GETTABLEKS                       R19 R0 K4 ["onActivated"]
      283 JUMPIFNOT                        R19 ; [+2]
      284 SETTABLEKS                       R6 R18 K4 ["onActivated"]
      286 GETUPVAL                         R19 0
      287 GETTABLEKS                       R19 R19 K41 ["createElement"]
      289 GETUPVAL                         R20 9
      290 MOVE                             R21 R18
      291 DUPTABLE                         R22 K100 [{"Preview", "Name", "Slot"}]
      292 SETTABLEKS                       R17 R22 K82 ["Preview"]
      294 SETTABLEKS                       R13 R22 K98 ["Name"]
      296 SETTABLEKS                       R15 R22 K99 ["Slot"]
      298 CALL                             R19 3 -1
      299 RETURN                           R19 -1
      300 GETUPVAL                         R16 0
      301 GETTABLEKS                       R16 R16 K41 ["createElement"]
      303 GETUPVAL                         R17 9
      304 DUPTABLE                         R18 K102 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small", ["stroke"]}]
      305 DUPTABLE                         R19 K81 [{"Color", "Thickness"}]
      306 SETTABLEKS                       R9 R19 K79 ["Color"]
      308 SETTABLEKS                       R10 R19 K80 ["Thickness"]
      310 SETTABLEKS                       R19 R18 K75 ["stroke"]
      312 DUPTABLE                         R19 K83 [{"Preview"}]
      313 SETTABLEKS                       R12 R19 K82 ["Preview"]
      315 CALL                             R16 3 1
      316 DUPTABLE                         R17 K105 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["testId"], ["tag"] = "row align-y-center gap-small size-full-1500", ["padding"] = 6, ["onStateChanged"]}]
      317 GETTABLEKS                       R18 R0 K89 ["layoutOrder"]
      319 SETTABLEKS                       R18 R17 K42 ["LayoutOrder"]
      321 LOADK                            R19 K90 ["MaterialTile_"]
      322 GETTABLEKS                       R20 R0 K5 ["slotIndex"]
      324 CONCAT                           R18 R19 R20
      325 SETTABLEKS                       R18 R17 K63 ["testId"]
      327 SETTABLEKS                       R5 R17 K86 ["onStateChanged"]
      329 GETTABLEKS                       R18 R0 K4 ["onActivated"]
      331 JUMPIFNOT                        R18 ; [+2]
      332 SETTABLEKS                       R6 R17 K4 ["onActivated"]
      334 GETUPVAL                         R18 0
      335 GETTABLEKS                       R18 R18 K41 ["createElement"]
      337 GETUPVAL                         R19 9
      338 MOVE                             R20 R17
      339 DUPTABLE                         R21 K107 [{"Preview", "TextColumn"}]
      340 SETTABLEKS                       R16 R21 K82 ["Preview"]
      342 GETUPVAL                         R22 0
      343 GETTABLEKS                       R22 R22 K41 ["createElement"]
      345 GETUPVAL                         R23 9
      346 DUPTABLE                         R24 K109 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["tag"] = "col align-y-center gap-xxsmall"}]
      347 GETIMPORT                        R25 K110 [UDim2.new]
      349 LOADN                            R26 1
      350 LOADN                            R27 -56
      351 LOADN                            R28 1
      352 LOADN                            R29 0
      353 CALL                             R25 4 1
      354 SETTABLEKS                       R25 R24 K27 ["Size"]
      356 DUPTABLE                         R25 K111 [{"Name", "Slot"}]
      357 SETTABLEKS                       R13 R25 K98 ["Name"]
      359 SETTABLEKS                       R15 R25 K99 ["Slot"]
      361 CALL                             R22 3 1
      362 SETTABLEKS                       R22 R21 K106 ["TextColumn"]
      364 CALL                             R18 3 -1
      365 RETURN                           R18 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K9 ["useStudioTheme"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["View"]
       37 GETTABLEKS                       R6 R3 K13 ["Text"]
       39 GETTABLEKS                       R7 R3 K14 ["Enums"]
       41 GETTABLEKS                       R7 R7 K15 ["ControlState"]
       43 GETTABLEKS                       R8 R4 K16 ["Contexts"]
       45 GETTABLEKS                       R8 R8 K17 ["Localization"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K6 ["Parent"]
       51 GETTABLEKS                       R10 R10 K18 ["MaterialFramework"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R9 K19 ["Components"]
       56 GETTABLEKS                       R10 R10 K20 ["MaterialPreview"]
       58 GETTABLEKS                       R11 R9 K14 ["Enums"]
       60 GETTABLEKS                       R11 R11 K21 ["MaterialPreviewGeometryType"]
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K22 ["Util"]
       66 GETTABLEKS                       R13 R13 K23 ["airWaterOverride"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K26 [UDim.new]
       71 LOADN                            R14 0
       72 LOADN                            R15 4
       73 CALL                             R13 2 1
       74 DUPCLOSURE                       R14 K27 [PROTO_2]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 RETURN                           R14 1
