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
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R6 0 0
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R7 0 2
       23 GETTABLEKS                       R8 R0 K2 ["onActivated"]
       25 GETTABLEKS                       R9 R0 K3 ["slotIndex"]
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R7 R0 K4 ["material"]
       33 CALL                             R6 1 1
       34 LOADB                            R7 1
       35 GETTABLEKS                       R8 R0 K4 ["material"]
       37 GETIMPORT                        R9 K8 [Enum.Material.Air]
       39 JUMPIFEQ                         R8 R9 ; [+9]
       41 GETTABLEKS                       R8 R0 K4 ["material"]
       43 GETIMPORT                        R9 K10 [Enum.Material.Water]
       45 JUMPIFEQ                         R8 R9 ; [+2]
       47 LOADB                            R7 0 +1
       48 LOADB                            R7 1
       49 GETTABLEKS                       R9 R0 K11 ["isSelected"]
       51 JUMPIFNOT                        R9 ; [+6]
       52 GETIMPORT                        R10 K14 [Enum.StudioStyleGuideColor.DialogMainButton]
       54 NAMECALL                         R8 R1 K15 ["GetColor"]
       56 CALL                             R8 2 1
       57 JUMP                             ; [+14]
       58 JUMPIFNOT                        R2 ; [+8]
       59 GETIMPORT                        R10 K17 [Enum.StudioStyleGuideColor.Border]
       61 GETIMPORT                        R11 K20 [Enum.StudioStyleGuideModifier.Hover]
       63 NAMECALL                         R8 R1 K15 ["GetColor"]
       65 CALL                             R8 3 1
       66 JUMP                             ; [+5]
       67 GETIMPORT                        R10 K17 [Enum.StudioStyleGuideColor.Border]
       69 NAMECALL                         R8 R1 K15 ["GetColor"]
       71 CALL                             R8 2 1
       72 GETTABLEKS                       R10 R0 K11 ["isSelected"]
       74 JUMPIFNOT                        R10 ; [+2]
       75 LOADN                            R9 2
       76 JUMP                             ; [+1]
       77 LOADN                            R9 1
       78 DUPTABLE                         R10 K29 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
       79 JUMPIFNOT                        R6 ; [+3]
       80 GETTABLEKS                       R11 R6 K4 ["material"]
       82 JUMP                             ; [+8]
       83 GETTABLEKS                       R12 R0 K30 ["variant"]
       85 JUMPIFNOT                        R12 ; [+3]
       86 GETTABLEKS                       R11 R0 K30 ["variant"]
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R11 R0 K4 ["material"]
       91 SETTABLEKS                       R11 R10 K6 ["Material"]
       93 JUMPIFNOT                        R6 ; [+3]
       94 GETTABLEKS                       R11 R6 K31 ["color"]
       96 JUMP                             ; [+2]
       97 GETTABLEKS                       R11 R0 K31 ["color"]
       99 SETTABLEKS                       R11 R10 K21 ["OverrideColor"]
      101 JUMPIFNOT                        R6 ; [+3]
      102 GETTABLEKS                       R11 R6 K32 ["transparency"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R11
      106 SETTABLEKS                       R11 R10 K22 ["OverrideTransparency"]
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R11 R11 K33 ["CubeCornerOn"]
      111 SETTABLEKS                       R11 R10 K23 ["MaterialPreviewGeometryType"]
      113 GETIMPORT                        R13 K35 [Enum.StudioStyleGuideColor.ViewPortBackground]
      115 NAMECALL                         R11 R1 K15 ["GetColor"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K24 ["BackgroundColor"]
      120 GETIMPORT                        R11 K38 [UDim2.fromScale]
      122 LOADN                            R12 1
      123 LOADN                            R13 1
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K25 ["Size"]
      127 GETUPVAL                         R11 5
      128 SETTABLEKS                       R11 R10 K26 ["CornerRadius"]
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R11 R11 K39 ["createElement"]
      133 GETUPVAL                         R12 6
      134 MOVE                             R13 R10
      135 CALL                             R11 2 1
      136 GETUPVAL                         R12 1
      137 GETTABLEKS                       R12 R12 K39 ["createElement"]
      139 GETUPVAL                         R13 7
      140 DUPTABLE                         R14 K46 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-400 text-body-small text-align-x-left text-truncate-end", ["textStyle"]}]
      141 GETTABLEKS                       R15 R0 K47 ["name"]
      143 SETTABLEKS                       R15 R14 K42 ["Text"]
      145 DUPTABLE                         R15 K49 [{"Color3"}]
      146 GETIMPORT                        R18 K51 [Enum.StudioStyleGuideColor.MainText]
      148 NAMECALL                         R16 R1 K15 ["GetColor"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K48 ["Color3"]
      153 SETTABLEKS                       R15 R14 K45 ["textStyle"]
      155 CALL                             R12 2 1
      156 GETUPVAL                         R13 1
      157 GETTABLEKS                       R13 R13 K39 ["createElement"]
      159 GETUPVAL                         R14 7
      160 DUPTABLE                         R15 K56 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-350 text-caption-small text-align-x-left", ["textStyle"], ["testId"] = "SlotLabel"}]
      161 LOADK                            R17 K57 ["Slot %*%*"]
      162 GETTABLEKS                       R19 R0 K3 ["slotIndex"]
      164 JUMPIFNOT                        R7 ; [+2]
      165 LOADK                            R20 K58 [" (Read-only)"]
      166 JUMP                             ; [+1]
      167 LOADK                            R20 K59 [""]
      168 NAMECALL                         R17 R17 K60 ["format"]
      170 CALL                             R17 3 1
      171 MOVE                             R16 R17
      172 SETTABLEKS                       R16 R15 K42 ["Text"]
      174 DUPTABLE                         R16 K49 [{"Color3"}]
      175 GETIMPORT                        R19 K62 [Enum.StudioStyleGuideColor.SubText]
      177 NAMECALL                         R17 R1 K15 ["GetColor"]
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K48 ["Color3"]
      182 SETTABLEKS                       R16 R15 K45 ["textStyle"]
      184 CALL                             R13 2 1
      185 GETTABLEKS                       R14 R0 K63 ["viewType"]
      187 JUMPIFNOTEQKS                    R14 K64 ["grid"] ; [+92]
      189 GETTABLEKS                       R16 R0 K67 ["tileWidth"]
      191 ORK                              R15 R16 K66 [113]
      192 SUBK                             R14 R15 K65 [10]
      193 GETUPVAL                         R15 1
      194 GETTABLEKS                       R15 R15 K39 ["createElement"]
      196 GETUPVAL                         R16 8
      197 DUPTABLE                         R17 K72 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "radius-small", ["stroke"]}]
      198 GETIMPORT                        R18 K74 [UDim2.fromOffset]
      200 MOVE                             R19 R14
      201 MOVE                             R20 R14
      202 CALL                             R18 2 1
      203 SETTABLEKS                       R18 R17 K25 ["Size"]
      205 DUPTABLE                         R18 K77 [{"Color", "Thickness"}]
      206 SETTABLEKS                       R8 R18 K75 ["Color"]
      208 SETTABLEKS                       R9 R18 K76 ["Thickness"]
      210 SETTABLEKS                       R18 R17 K71 ["stroke"]
      212 DUPTABLE                         R18 K79 [{"Preview"}]
      213 SETTABLEKS                       R11 R18 K78 ["Preview"]
      215 CALL                             R15 3 1
      216 DUPTABLE                         R16 K83 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["testId"], ["tag"] = "col gap-xsmall", ["padding"], ["onStateChanged"]}]
      217 GETIMPORT                        R17 K74 [UDim2.fromOffset]
      219 ADDK                             R18 R14 K65 [10]
      220 ADDK                             R20 R14 K65 [10]
      221 ADDK                             R19 R20 K84 [34]
      222 CALL                             R17 2 1
      223 SETTABLEKS                       R17 R16 K25 ["Size"]
      225 GETTABLEKS                       R17 R0 K85 ["layoutOrder"]
      227 SETTABLEKS                       R17 R16 K40 ["LayoutOrder"]
      229 LOADK                            R18 K86 ["MaterialTile_"]
      230 GETTABLEKS                       R19 R0 K3 ["slotIndex"]
      232 CONCAT                           R17 R18 R19
      233 SETTABLEKS                       R17 R16 K54 ["testId"]
      235 DUPTABLE                         R17 K90 [{"left", "right", "top"}]
      236 GETIMPORT                        R18 K93 [UDim.new]
      238 LOADN                            R19 0
      239 LOADN                            R20 5
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R17 K87 ["left"]
      243 GETIMPORT                        R18 K93 [UDim.new]
      245 LOADN                            R19 0
      246 LOADN                            R20 5
      247 CALL                             R18 2 1
      248 SETTABLEKS                       R18 R17 K88 ["right"]
      250 GETIMPORT                        R18 K93 [UDim.new]
      252 LOADN                            R19 0
      253 LOADN                            R20 5
      254 CALL                             R18 2 1
      255 SETTABLEKS                       R18 R17 K89 ["top"]
      257 SETTABLEKS                       R17 R16 K81 ["padding"]
      259 SETTABLEKS                       R4 R16 K82 ["onStateChanged"]
      261 GETTABLEKS                       R17 R0 K2 ["onActivated"]
      263 JUMPIFNOT                        R17 ; [+2]
      264 SETTABLEKS                       R5 R16 K2 ["onActivated"]
      266 GETUPVAL                         R17 1
      267 GETTABLEKS                       R17 R17 K39 ["createElement"]
      269 GETUPVAL                         R18 8
      270 MOVE                             R19 R16
      271 DUPTABLE                         R20 K96 [{"Preview", "Name", "Slot"}]
      272 SETTABLEKS                       R15 R20 K78 ["Preview"]
      274 SETTABLEKS                       R12 R20 K94 ["Name"]
      276 SETTABLEKS                       R13 R20 K95 ["Slot"]
      278 CALL                             R17 3 -1
      279 RETURN                           R17 -1
      280 GETUPVAL                         R14 1
      281 GETTABLEKS                       R14 R14 K39 ["createElement"]
      283 GETUPVAL                         R15 8
      284 DUPTABLE                         R16 K98 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small", ["stroke"]}]
      285 DUPTABLE                         R17 K77 [{"Color", "Thickness"}]
      286 SETTABLEKS                       R8 R17 K75 ["Color"]
      288 SETTABLEKS                       R9 R17 K76 ["Thickness"]
      290 SETTABLEKS                       R17 R16 K71 ["stroke"]
      292 DUPTABLE                         R17 K79 [{"Preview"}]
      293 SETTABLEKS                       R11 R17 K78 ["Preview"]
      295 CALL                             R14 3 1
      296 DUPTABLE                         R15 K101 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["testId"], ["tag"] = "row align-y-center gap-small size-full-1500", ["padding"] = 6, ["onStateChanged"]}]
      297 GETTABLEKS                       R16 R0 K85 ["layoutOrder"]
      299 SETTABLEKS                       R16 R15 K40 ["LayoutOrder"]
      301 LOADK                            R17 K86 ["MaterialTile_"]
      302 GETTABLEKS                       R18 R0 K3 ["slotIndex"]
      304 CONCAT                           R16 R17 R18
      305 SETTABLEKS                       R16 R15 K54 ["testId"]
      307 SETTABLEKS                       R4 R15 K82 ["onStateChanged"]
      309 GETTABLEKS                       R16 R0 K2 ["onActivated"]
      311 JUMPIFNOT                        R16 ; [+2]
      312 SETTABLEKS                       R5 R15 K2 ["onActivated"]
      314 GETUPVAL                         R16 1
      315 GETTABLEKS                       R16 R16 K39 ["createElement"]
      317 GETUPVAL                         R17 8
      318 MOVE                             R18 R15
      319 DUPTABLE                         R19 K103 [{"Preview", "TextColumn"}]
      320 SETTABLEKS                       R14 R19 K78 ["Preview"]
      322 GETUPVAL                         R20 1
      323 GETTABLEKS                       R20 R20 K39 ["createElement"]
      325 GETUPVAL                         R21 8
      326 DUPTABLE                         R22 K105 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["tag"] = "col align-y-center gap-xxsmall"}]
      327 GETIMPORT                        R23 K106 [UDim2.new]
      329 LOADN                            R24 1
      330 LOADN                            R25 -56
      331 LOADN                            R26 1
      332 LOADN                            R27 0
      333 CALL                             R23 4 1
      334 SETTABLEKS                       R23 R22 K25 ["Size"]
      336 DUPTABLE                         R23 K107 [{"Name", "Slot"}]
      337 SETTABLEKS                       R12 R23 K94 ["Name"]
      339 SETTABLEKS                       R13 R23 K95 ["Slot"]
      341 CALL                             R20 3 1
      342 SETTABLEKS                       R20 R19 K102 ["TextColumn"]
      344 CALL                             R16 3 -1
      345 RETURN                           R16 -1

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
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 GETTABLEKS                       R5 R3 K12 ["Text"]
       32 GETTABLEKS                       R6 R3 K13 ["Enums"]
       34 GETTABLEKS                       R6 R6 K14 ["ControlState"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Parent"]
       40 GETTABLEKS                       R8 R8 K15 ["MaterialFramework"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R7 K16 ["Components"]
       45 GETTABLEKS                       R8 R8 K17 ["MaterialPreview"]
       47 GETTABLEKS                       R9 R7 K13 ["Enums"]
       49 GETTABLEKS                       R9 R9 K18 ["MaterialPreviewGeometryType"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K19 ["Util"]
       55 GETTABLEKS                       R11 R11 K20 ["airWaterOverride"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K23 [UDim.new]
       60 LOADN                            R12 0
       61 LOADN                            R13 4
       62 CALL                             R11 2 1
       63 DUPCLOSURE                       R12 K24 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 RETURN                           R12 1
