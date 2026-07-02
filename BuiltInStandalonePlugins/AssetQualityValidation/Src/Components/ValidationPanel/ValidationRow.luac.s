PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K5 [{[1] = "zoom-to-selection", ["icon"] = "magnifying-glass", ["text"]}]
        3 LOADK                            R5 K6 ["Text"]
        4 LOADK                            R6 K7 ["ZoomToSelection"]
        5 NAMECALL                         R3 R0 K8 ["getText"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R2 K4 ["text"]
       10 DUPTABLE                         R3 K11 [{[1] = "copy-text", ["icon"] = "two-stacked-squares", ["text"]}]
       11 LOADK                            R6 K6 ["Text"]
       12 LOADK                            R7 K12 ["CopyText"]
       13 NAMECALL                         R4 R0 K8 ["getText"]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K4 ["text"]
       18 DUPTABLE                         R4 K15 [{[1] = "open-documentation", ["icon"] = "arrow-up-right-from-square", ["text"]}]
       19 LOADK                            R7 K6 ["Text"]
       20 LOADK                            R8 K16 ["OpenDocumentation"]
       21 NAMECALL                         R5 R0 K8 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K4 ["text"]
       26 SETLIST                          R1 R2 3 [1]
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
        9 NAMECALL                         R1 R0 K8 ["GetColor"]
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 LOADN                            R1 0
       16 SETUPVAL                         R1 2
       17 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
       19 GETIMPORT                        R4 K11 [Enum.StudioStyleGuideModifier.Selected]
       21 NAMECALL                         R1 R0 K8 ["GetColor"]
       23 CALL                             R1 3 1
       24 SETUPVAL                         R1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+10]
       28 LOADN                            R1 0
       29 SETUPVAL                         R1 2
       30 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.Item]
       32 GETIMPORT                        R4 K13 [Enum.StudioStyleGuideModifier.Hover]
       34 NAMECALL                         R1 R0 K8 ["GetColor"]
       36 CALL                             R1 3 1
       37 SETUPVAL                         R1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["copy-text"] ; [+15]
        2 GETIMPORT                        R1 K2 [game]
        4 LOADK                            R3 K3 ["StudioService"]
        5 NAMECALL                         R1 R1 K4 ["GetService"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K6 ["text"]
       11 ORK                              R3 R4 K5 [""]
       12 NAMECALL                         R1 R1 K7 ["CopyToClipboard"]
       14 CALL                             R1 2 0
       15 JUMP                             ; [+12]
       16 JUMPIFNOTEQKS                    R0 K8 ["open-documentation"] ; [+11]
       18 GETIMPORT                        R1 K2 [game]
       20 LOADK                            R3 K9 ["BrowserService"]
       21 NAMECALL                         R1 R1 K4 ["GetService"]
       23 CALL                             R1 2 1
       24 LOADK                            R3 K10 ["https://create.roblox.com/docs/art/validation-errors"]
       25 NAMECALL                         R1 R1 K11 ["OpenBrowserWindow"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 1
       29 LOADB                            R2 0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R0 K1 ["Item"]
       12 GETTABLEKS                       R7 R0 K3 ["Depth"]
       14 ORK                              R6 R7 K2 [0]
       15 GETTABLEKS                       R7 R0 K4 ["Children"]
       17 JUMPIFNOT                        R7 ; [+8]
       18 GETTABLEKS                       R9 R0 K4 ["Children"]
       20 LENGTH                           R8 R9
       21 LOADN                            R9 0
       22 JUMPIFLT                         R9 R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETTABLEKS                       R8 R0 K5 ["Expanded"]
       28 GETTABLEKS                       R9 R0 K6 ["Selected"]
       30 LOADN                            R11 5
       31 MULK                             R12 R6 K7 [17]
       32 ADD                              R10 R11 R12
       33 GETTABLEKS                       R11 R5 K8 ["text"]
       35 GETTABLEKS                       R12 R5 K9 ["icon"]
       37 JUMPIFNOTEQKNIL                  R12 ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 LOADN                            R14 3
       42 JUMPIFNOT                        R13 ; [+1]
       43 ADDK                             R14 R14 K10 [1]
       44 SUBK                             R15 R14 K10 [1]
       45 ADDK                             R19 R10 K12 [12]
       46 JUMPIFNOT                        R13 ; [+2]
       47 LOADN                            R20 14
       48 JUMP                             ; [+1]
       49 LOADN                            R20 0
       50 ADD                              R18 R19 R20
       51 ADDK                             R17 R18 K11 [32]
       52 MULK                             R18 R15 K13 [5]
       53 ADD                              R16 R17 R18
       54 NEWTABLE                         R17 4 0
       56 GETUPVAL                         R18 0
       57 GETTABLEKS                       R18 R18 K14 ["createElement"]
       59 GETUPVAL                         R19 1
       60 DUPTABLE                         R20 K17 [{["LayoutOrder"] = 1, ["Size"]}]
       61 GETIMPORT                        R21 K20 [UDim2.fromOffset]
       63 MOVE                             R22 R10
       64 LOADN                            R23 0
       65 CALL                             R21 2 1
       66 SETTABLEKS                       R21 R20 K16 ["Size"]
       68 CALL                             R18 2 1
       69 SETTABLEKS                       R18 R17 K21 ["Spacer"]
       71 JUMPIFNOT                        R7 ; [+47]
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R18 R18 K14 ["createElement"]
       75 LOADK                            R19 K22 ["ImageButton"]
       76 NEWTABLE                         R20 8 0
       78 LOADN                            R21 2
       79 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
       81 GETIMPORT                        R21 K20 [UDim2.fromOffset]
       83 LOADN                            R22 12
       84 LOADN                            R23 12
       85 CALL                             R21 2 1
       86 SETTABLEKS                       R21 R20 K16 ["Size"]
       88 LOADN                            R21 1
       89 SETTABLEKS                       R21 R20 K23 ["BackgroundTransparency"]
       91 LOADK                            R21 K24 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       92 SETTABLEKS                       R21 R20 K25 ["Image"]
       94 GETIMPORT                        R21 K28 [Vector2.new]
       96 LOADN                            R22 12
       97 LOADN                            R23 12
       98 CALL                             R21 2 1
       99 SETTABLEKS                       R21 R20 K29 ["ImageRectSize"]
      101 JUMPIFNOT                        R8 ; [+2]
      102 GETUPVAL                         R21 2
      103 JUMP                             ; [+1]
      104 GETUPVAL                         R21 3
      105 SETTABLEKS                       R21 R20 K30 ["ImageRectOffset"]
      107 GETUPVAL                         R21 0
      108 GETTABLEKS                       R21 R21 K31 ["Event"]
      110 GETTABLEKS                       R21 R21 K32 ["Activated"]
      112 NEWCLOSURE                       R22 P0
      113 CAPTURE                          VAL R0
      114 SETTABLE                         R22 R20 R21
      115 CALL                             R18 2 1
      116 SETTABLEKS                       R18 R17 K33 ["Toggle"]
      118 JUMP                             ; [+15]
      119 GETUPVAL                         R18 0
      120 GETTABLEKS                       R18 R18 K14 ["createElement"]
      122 GETUPVAL                         R19 1
      123 DUPTABLE                         R20 K35 [{["LayoutOrder"] = 2, ["Size"]}]
      124 GETIMPORT                        R21 K20 [UDim2.fromOffset]
      126 LOADN                            R22 12
      127 LOADN                            R23 12
      128 CALL                             R21 2 1
      129 SETTABLEKS                       R21 R20 K16 ["Size"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K33 ["Toggle"]
      134 JUMPIFNOT                        R13 ; [+16]
      135 GETUPVAL                         R18 0
      136 GETTABLEKS                       R18 R18 K14 ["createElement"]
      138 GETUPVAL                         R19 4
      139 DUPTABLE                         R20 K37 [{["LayoutOrder"] = 3, ["Image"], ["Size"]}]
      140 GETTABLEKS                       R21 R12 K25 ["Image"]
      142 SETTABLEKS                       R21 R20 K25 ["Image"]
      144 GETTABLEKS                       R21 R12 K16 ["Size"]
      146 SETTABLEKS                       R21 R20 K16 ["Size"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K38 ["LeftIcon"]
      151 GETUPVAL                         R18 0
      152 GETTABLEKS                       R18 R18 K14 ["createElement"]
      154 GETUPVAL                         R19 5
      155 DUPTABLE                         R20 K46 [{["tag"] = "text-body-small text-align-x-left content-default", ["Text"], ["TextWrapped"] = True, ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 4}]
      156 ORK                              R21 R11 K47 [""]
      157 SETTABLEKS                       R21 R20 K41 ["Text"]
      159 GETIMPORT                        R21 K48 [UDim2.new]
      161 LOADN                            R22 1
      162 MINUS                            R23 R16
      163 LOADN                            R24 0
      164 LOADN                            R25 0
      165 CALL                             R21 4 1
      166 SETTABLEKS                       R21 R20 K16 ["Size"]
      168 GETIMPORT                        R21 K51 [Enum.AutomaticSize.Y]
      170 SETTABLEKS                       R21 R20 K44 ["AutomaticSize"]
      172 CALL                             R18 2 1
      173 SETTABLEKS                       R18 R17 K52 ["Label"]
      175 OR                               R18 R1 R3
      176 LOADN                            R19 1
      177 GETIMPORT                        R20 K54 [Color3.new]
      179 LOADN                            R21 0
      180 LOADN                            R22 0
      181 LOADN                            R23 0
      182 CALL                             R20 3 1
      183 GETIMPORT                        R21 K56 [pcall]
      185 NEWCLOSURE                       R22 P1
      186 CAPTURE                          REF R20
      187 CAPTURE                          VAL R9
      188 CAPTURE                          REF R19
      189 CAPTURE                          VAL R1
      190 CALL                             R21 1 0
      191 JUMPIF                           R9 ; [+1]
      192 JUMPIFNOT                        R1 ; [+1]
      193 LOADN                            R19 0
      194 GETUPVAL                         R21 0
      195 GETTABLEKS                       R21 R21 K14 ["createElement"]
      197 LOADK                            R22 K57 ["TextButton"]
      198 NEWTABLE                         R23 16 0
      200 GETTABLEKS                       R24 R0 K58 ["Index"]
      202 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
      204 GETTABLEKS                       R24 R0 K59 ["Position"]
      206 SETTABLEKS                       R24 R23 K59 ["Position"]
      208 GETTABLEKS                       R24 R0 K16 ["Size"]
      210 JUMPIF                           R24 ; [+7]
      211 GETIMPORT                        R24 K48 [UDim2.new]
      213 LOADN                            R25 1
      214 LOADN                            R26 0
      215 LOADN                            R27 0
      216 LOADN                            R28 20
      217 CALL                             R24 4 1
      218 SETTABLEKS                       R24 R23 K16 ["Size"]
      220 GETIMPORT                        R24 K51 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R24 R23 K44 ["AutomaticSize"]
      224 SETTABLEKS                       R20 R23 K60 ["BackgroundColor3"]
      226 SETTABLEKS                       R19 R23 K23 ["BackgroundTransparency"]
      228 LOADN                            R24 0
      229 SETTABLEKS                       R24 R23 K61 ["BorderSizePixel"]
      231 LOADK                            R24 K47 [""]
      232 SETTABLEKS                       R24 R23 K41 ["Text"]
      234 LOADB                            R24 0
      235 SETTABLEKS                       R24 R23 K62 ["AutoButtonColor"]
      237 GETUPVAL                         R24 0
      238 GETTABLEKS                       R24 R24 K31 ["Event"]
      240 GETTABLEKS                       R24 R24 K32 ["Activated"]
      242 NEWCLOSURE                       R25 P2
      243 CAPTURE                          VAL R0
      244 SETTABLE                         R25 R23 R24
      245 GETUPVAL                         R24 0
      246 GETTABLEKS                       R24 R24 K31 ["Event"]
      248 GETTABLEKS                       R24 R24 K63 ["MouseEnter"]
      250 NEWCLOSURE                       R25 P3
      251 CAPTURE                          VAL R2
      252 SETTABLE                         R25 R23 R24
      253 GETUPVAL                         R24 0
      254 GETTABLEKS                       R24 R24 K31 ["Event"]
      256 GETTABLEKS                       R24 R24 K64 ["MouseLeave"]
      258 NEWCLOSURE                       R25 P4
      259 CAPTURE                          VAL R2
      260 SETTABLE                         R25 R23 R24
      261 DUPTABLE                         R24 K67 [{"Content", "Menu"}]
      262 GETUPVAL                         R25 0
      263 GETTABLEKS                       R25 R25 K14 ["createElement"]
      265 GETUPVAL                         R26 1
      266 NEWTABLE                         R27 4 0
      268 GETIMPORT                        R28 K48 [UDim2.new]
      270 LOADN                            R29 1
      271 LOADN                            R30 0
      272 LOADN                            R31 0
      273 LOADN                            R32 20
      274 CALL                             R28 4 1
      275 SETTABLEKS                       R28 R27 K16 ["Size"]
      277 GETIMPORT                        R28 K51 [Enum.AutomaticSize.Y]
      279 SETTABLEKS                       R28 R27 K44 ["AutomaticSize"]
      281 GETUPVAL                         R28 0
      282 GETTABLEKS                       R28 R28 K68 ["Tag"]
      284 LOADK                            R29 K69 ["X-RowS X-Top"]
      285 SETTABLE                         R29 R27 R28
      286 MOVE                             R28 R17
      287 CALL                             R25 3 1
      288 SETTABLEKS                       R25 R24 K65 ["Content"]
      290 JUMPIFNOT                        R18 ; [+96]
      291 GETUPVAL                         R25 0
      292 GETTABLEKS                       R25 R25 K14 ["createElement"]
      294 LOADK                            R26 K70 ["Frame"]
      295 DUPTABLE                         R27 K73 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      296 GETIMPORT                        R28 K28 [Vector2.new]
      298 LOADN                            R29 1
      299 LOADK                            R30 K74 [0.5]
      300 CALL                             R28 2 1
      301 SETTABLEKS                       R28 R27 K71 ["AnchorPoint"]
      303 GETIMPORT                        R28 K76 [UDim2.fromScale]
      305 LOADN                            R29 1
      306 LOADK                            R30 K74 [0.5]
      307 CALL                             R28 2 1
      308 SETTABLEKS                       R28 R27 K59 ["Position"]
      310 GETIMPORT                        R28 K20 [UDim2.fromOffset]
      312 LOADN                            R29 32
      313 LOADN                            R30 20
      314 CALL                             R28 2 1
      315 SETTABLEKS                       R28 R27 K16 ["Size"]
      317 DUPTABLE                         R28 K78 [{"OptionsMenu"}]
      318 GETUPVAL                         R29 0
      319 GETTABLEKS                       R29 R29 K14 ["createElement"]
      321 GETUPVAL                         R30 6
      322 DUPTABLE                         R31 K86 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      323 SETTABLEKS                       R3 R31 K79 ["isOpen"]
      325 GETUPVAL                         R32 7
      326 GETTABLEKS                       R33 R0 K87 ["localization"]
      328 CALL                             R32 1 1
      329 SETTABLEKS                       R32 R31 K80 ["items"]
      331 GETUPVAL                         R32 8
      332 GETTABLEKS                       R32 R32 K88 ["Small"]
      334 SETTABLEKS                       R32 R31 K81 ["size"]
      336 GETUPVAL                         R32 9
      337 GETTABLEKS                       R32 R32 K89 ["Bottom"]
      339 SETTABLEKS                       R32 R31 K82 ["side"]
      341 GETUPVAL                         R32 10
      342 GETTABLEKS                       R32 R32 K90 ["End"]
      344 SETTABLEKS                       R32 R31 K83 ["align"]
      346 NEWCLOSURE                       R32 P5
      347 CAPTURE                          VAL R4
      348 SETTABLEKS                       R32 R31 K84 ["onPressedOutside"]
      350 NEWCLOSURE                       R32 P6
      351 CAPTURE                          VAL R5
      352 CAPTURE                          VAL R4
      353 SETTABLEKS                       R32 R31 K85 ["onActivated"]
      355 DUPTABLE                         R32 K92 [{"Button"}]
      356 GETUPVAL                         R33 0
      357 GETTABLEKS                       R33 R33 K14 ["createElement"]
      359 GETUPVAL                         R34 11
      360 DUPTABLE                         R35 K94 [{"icon", "onActivated", "size", "variant"}]
      361 DUPTABLE                         R36 K97 [{["name"] = "three-dots-vertical"}]
      362 SETTABLEKS                       R36 R35 K9 ["icon"]
      364 NEWCLOSURE                       R36 P7
      365 CAPTURE                          VAL R4
      366 CAPTURE                          VAL R3
      367 SETTABLEKS                       R36 R35 K85 ["onActivated"]
      369 GETUPVAL                         R36 8
      370 GETTABLEKS                       R36 R36 K88 ["Small"]
      372 SETTABLEKS                       R36 R35 K81 ["size"]
      374 GETUPVAL                         R36 12
      375 GETTABLEKS                       R36 R36 K98 ["Utility"]
      377 SETTABLEKS                       R36 R35 K93 ["variant"]
      379 CALL                             R33 2 1
      380 SETTABLEKS                       R33 R32 K91 ["Button"]
      382 CALL                             R29 3 1
      383 SETTABLEKS                       R29 R28 K77 ["OptionsMenu"]
      385 CALL                             R25 3 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R25
      388 SETTABLEKS                       R25 R24 K66 ["Menu"]
      390 CALL                             R21 3 -1
      391 CLOSEUPVALS                      R19
      392 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Text"]
       30 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       32 GETTABLEKS                       R6 R3 K12 ["Menu"]
       34 GETTABLEKS                       R7 R3 K13 ["Enums"]
       36 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       38 GETTABLEKS                       R8 R3 K13 ["Enums"]
       40 GETTABLEKS                       R8 R8 K15 ["ButtonVariant"]
       42 GETTABLEKS                       R9 R3 K13 ["Enums"]
       44 GETTABLEKS                       R9 R9 K16 ["PopoverSide"]
       46 GETTABLEKS                       R10 R3 K13 ["Enums"]
       48 GETTABLEKS                       R10 R10 K17 ["PopoverAlign"]
       50 GETTABLEKS                       R11 R2 K18 ["UI"]
       52 GETTABLEKS                       R11 R11 K19 ["Pane"]
       54 GETTABLEKS                       R12 R2 K18 ["UI"]
       56 GETTABLEKS                       R12 R12 K20 ["Image"]
       58 GETIMPORT                        R13 K23 [Vector2.new]
       60 LOADN                            R14 24
       61 LOADN                            R15 0
       62 CALL                             R13 2 1
       63 GETIMPORT                        R14 K23 [Vector2.new]
       65 LOADN                            R15 12
       66 LOADN                            R16 0
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K24 [PROTO_0]
       69 DUPCLOSURE                       R16 K25 [PROTO_9]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 RETURN                           R16 1
