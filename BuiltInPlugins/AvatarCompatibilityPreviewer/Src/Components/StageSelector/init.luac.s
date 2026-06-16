PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+8]
        5 LOADK                            R5 K1 ["NumberValue"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R3 R2 K3 ["Value"]
       12 RETURN                           R3 1
       13 LOADN                            R3 1
       14 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckBody"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckBody"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckFace"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckFace"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["testInExperience"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["test"]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K3 ["PreviewDummy"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["Avatar"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AvatarLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MakeupLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Closed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["autosetup"] ; [+12]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["createElement"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K4 [{"onBack"}]
        9 GETTABLEKS                       R4 R0 K3 ["onBack"]
       11 SETTABLEKS                       R4 R3 K3 ["onBack"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 2
       16 LOADK                            R3 K5 ["StageSelector"]
       17 NAMECALL                         R1 R1 K6 ["use"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 3
       21 NAMECALL                         R2 R2 K6 ["use"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K7 ["new"]
       27 CALL                             R3 0 1
       28 GETUPVAL                         R4 5
       29 NAMECALL                         R4 R4 K6 ["use"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R6 6
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+6]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K8 ["useContext"]
       38 GETUPVAL                         R6 7
       39 CALL                             R5 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K8 ["useContext"]
       45 GETUPVAL                         R7 8
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K8 ["useContext"]
       50 GETUPVAL                         R8 9
       51 GETTABLEKS                       R8 R8 K9 ["Context"]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R9 10
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+8]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K8 ["useContext"]
       60 GETUPVAL                         R9 11
       61 GETTABLEKS                       R9 R9 K9 ["Context"]
       63 CALL                             R8 1 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R8
       66 GETUPVAL                         R9 12
       67 LOADB                            R10 0
       68 CALL                             R9 1 1
       69 GETUPVAL                         R11 6
       70 CALL                             R11 0 1
       71 JUMPIFNOT                        R11 ; [+4]
       72 GETUPVAL                         R10 12
       73 LOADB                            R11 0
       74 CALL                             R10 1 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R10
       77 GETUPVAL                         R11 10
       78 CALL                             R11 0 1
       79 JUMPIFNOT                        R11 ; [+13]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       83 NEWCLOSURE                       R12 P0
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 NEWTABLE                         R13 0 1
       88 GETTABLEKS                       R14 R10 K11 ["enabled"]
       90 SETLIST                          R13 R14 1 [1]
       92 CALL                             R11 2 0
       93 GETUPVAL                         R11 12
       94 LOADB                            R12 0
       95 CALL                             R11 1 1
       96 MOVE                             R12 R0
       97 JUMPIFNOT                        R12 ; [+9]
       98 GETTABLEKS                       R12 R0 K12 ["Avatar"]
      100 JUMPIFNOT                        R12 ; [+6]
      101 GETUPVAL                         R12 13
      102 GETTABLEKS                       R13 R0 K12 ["Avatar"]
      104 GETTABLEKS                       R13 R13 K13 ["WorldModel"]
      106 CALL                             R12 1 1
      107 GETUPVAL                         R14 14
      108 CALL                             R14 0 1
      109 JUMPIFNOT                        R14 ; [+8]
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R13 R13 K8 ["useContext"]
      113 GETUPVAL                         R14 15
      114 GETTABLEKS                       R14 R14 K9 ["Context"]
      116 CALL                             R13 1 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R13
      119 GETUPVAL                         R15 6
      120 CALL                             R15 0 1
      121 JUMPIFNOT                        R15 ; [+11]
      122 GETUPVAL                         R15 14
      123 CALL                             R15 0 1
      124 JUMPIF                           R15 ; [+8]
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K8 ["useContext"]
      128 GETUPVAL                         R15 16
      129 GETTABLEKS                       R15 R15 K9 ["Context"]
      131 CALL                             R14 1 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R14
      134 GETUPVAL                         R16 14
      135 CALL                             R16 0 1
      136 JUMPIFNOT                        R16 ; [+3]
      137 GETTABLEKS                       R15 R13 K14 ["showLookSaveMenu"]
      139 JUMP                             ; [+7]
      140 GETUPVAL                         R16 6
      141 CALL                             R16 0 1
      142 JUMPIFNOT                        R16 ; [+3]
      143 GETTABLEKS                       R15 R14 K15 ["canCreateLook"]
      145 JUMP                             ; [+1]
      146 LOADB                            R15 0
      147 LOADB                            R16 1
      148 GETTABLEKS                       R17 R7 K16 ["canUploadBundles"]
      150 JUMPIFEQKNIL                     R17 ; [+9]
      152 GETTABLEKS                       R17 R7 K16 ["canUploadBundles"]
      154 GETTABLEKS                       R17 R17 K0 ["type"]
      156 JUMPIFNOTEQKS                    R17 K17 ["notAllowed"] ; [+2]
      158 LOADB                            R16 0 +1
      159 LOADB                            R16 1
      160 LOADNIL                          R17
      161 LOADNIL                          R18
      162 LOADNIL                          R19
      163 GETUPVAL                         R20 6
      164 CALL                             R20 0 1
      165 JUMPIFNOT                        R20 ; [+15]
      166 GETUPVAL                         R20 0
      167 GETTABLEKS                       R20 R20 K18 ["useState"]
      169 LOADK                            R21 K19 ["Closed"]
      170 CALL                             R20 1 2
      171 MOVE                             R17 R20
      172 MOVE                             R18 R21
      173 LOADB                            R20 1
      174 JUMPIFEQKS                       R17 K20 ["AvatarLook"] ; [+5]
      176 JUMPIFEQKS                       R17 K21 ["MakeupLook"] ; [+2]
      178 LOADB                            R20 0 +1
      179 LOADB                            R20 1
      180 MOVE                             R19 R20
      181 GETUPVAL                         R20 0
      182 GETTABLEKS                       R20 R20 K2 ["createElement"]
      184 GETUPVAL                         R21 17
      185 DUPTABLE                         R22 K25 [{"BackgroundColor", "Size", "ZIndex"}]
      186 GETTABLEKS                       R23 R1 K22 ["BackgroundColor"]
      188 SETTABLEKS                       R23 R22 K22 ["BackgroundColor"]
      190 GETIMPORT                        R23 K27 [UDim2.new]
      192 LOADN                            R24 0
      193 GETTABLEKS                       R25 R1 K28 ["Width"]
      195 LOADN                            R26 1
      196 LOADN                            R27 0
      197 CALL                             R23 4 1
      198 SETTABLEKS                       R23 R22 K23 ["Size"]
      200 LOADN                            R23 2
      201 SETTABLEKS                       R23 R22 K24 ["ZIndex"]
      203 DUPTABLE                         R23 K34 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      204 GETUPVAL                         R24 0
      205 GETTABLEKS                       R24 R24 K2 ["createElement"]
      207 GETUPVAL                         R25 17
      208 DUPTABLE                         R26 K37 [{"Layout", "VerticalAlignment"}]
      209 GETIMPORT                        R27 K41 [Enum.FillDirection.Vertical]
      211 SETTABLEKS                       R27 R26 K35 ["Layout"]
      213 GETIMPORT                        R27 K43 [Enum.VerticalAlignment.Top]
      215 SETTABLEKS                       R27 R26 K36 ["VerticalAlignment"]
      217 DUPTABLE                         R27 K50 [{"Back", "CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      218 GETUPVAL                         R29 18
      219 CALL                             R29 0 1
      220 JUMPIFNOT                        R29 ; [+31]
      221 GETUPVAL                         R28 0
      222 GETTABLEKS                       R28 R28 K2 ["createElement"]
      224 GETUPVAL                         R29 19
      225 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      226 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      228 CALL                             R31 1 1
      229 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      231 GETUPVAL                         R31 20
      232 GETTABLEKS                       R31 R31 K58 ["Enums"]
      234 GETTABLEKS                       R31 R31 K59 ["IconName"]
      236 GETTABLEKS                       R31 R31 K60 ["ArrowCurlToLeft"]
      238 SETTABLEKS                       R31 R30 K52 ["Icon"]
      240 LOADB                            R31 0
      241 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      243 LOADK                            R31 K44 ["Back"]
      244 SETTABLEKS                       R31 R30 K54 ["StageText"]
      246 GETTABLEKS                       R31 R0 K3 ["onBack"]
      248 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      250 CALL                             R28 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R28
      253 SETTABLEKS                       R28 R27 K44 ["Back"]
      255 GETUPVAL                         R28 0
      256 GETTABLEKS                       R28 R28 K2 ["createElement"]
      258 GETUPVAL                         R29 19
      259 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      260 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      262 CALL                             R31 1 1
      263 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      265 LOADK                            R31 K61 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      266 SETTABLEKS                       R31 R30 K52 ["Icon"]
      268 GETTABLEKS                       R32 R0 K62 ["SelectedStage"]
      270 JUMPIFEQKS                       R32 K45 ["CheckBody"] ; [+2]
      272 LOADB                            R31 0 +1
      273 LOADB                            R31 1
      274 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      276 LOADK                            R31 K45 ["CheckBody"]
      277 SETTABLEKS                       R31 R30 K54 ["StageText"]
      279 NEWCLOSURE                       R31 P1
      280 CAPTURE                          VAL R4
      281 CAPTURE                          VAL R0
      282 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      284 CALL                             R28 2 1
      285 SETTABLEKS                       R28 R27 K45 ["CheckBody"]
      287 GETUPVAL                         R28 0
      288 GETTABLEKS                       R28 R28 K2 ["createElement"]
      290 GETUPVAL                         R29 19
      291 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      292 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      294 CALL                             R31 1 1
      295 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      297 LOADK                            R31 K63 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      298 SETTABLEKS                       R31 R30 K52 ["Icon"]
      300 GETTABLEKS                       R32 R0 K62 ["SelectedStage"]
      302 JUMPIFEQKS                       R32 K46 ["CheckFace"] ; [+2]
      304 LOADB                            R31 0 +1
      305 LOADB                            R31 1
      306 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      308 LOADK                            R31 K46 ["CheckFace"]
      309 SETTABLEKS                       R31 R30 K54 ["StageText"]
      311 NEWCLOSURE                       R31 P2
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R0
      314 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      316 CALL                             R28 2 1
      317 SETTABLEKS                       R28 R27 K46 ["CheckFace"]
      319 GETUPVAL                         R28 0
      320 GETTABLEKS                       R28 R28 K2 ["createElement"]
      322 GETUPVAL                         R29 19
      323 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      324 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      326 CALL                             R31 1 1
      327 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      329 LOADK                            R31 K64 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      330 SETTABLEKS                       R31 R30 K52 ["Icon"]
      332 LOADB                            R31 0
      333 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      335 LOADK                            R31 K47 ["Test"]
      336 SETTABLEKS                       R31 R30 K54 ["StageText"]
      338 NEWCLOSURE                       R31 P3
      339 CAPTURE                          VAL R4
      340 CAPTURE                          UPVAL U21
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R0
      343 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      345 CALL                             R28 2 1
      346 SETTABLEKS                       R28 R27 K47 ["Test"]
      348 GETUPVAL                         R29 6
      349 CALL                             R29 0 1
      350 JUMPIFNOT                        R29 ; [+119]
      351 JUMPIFNOT                        R15 ; [+118]
      352 JUMPIFEQKNIL                     R10 ; [+117]
      354 GETUPVAL                         R28 0
      355 GETTABLEKS                       R28 R28 K2 ["createElement"]
      357 GETUPVAL                         R29 22
      358 DUPTABLE                         R30 K72 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      359 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      361 CALL                             R31 1 1
      362 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      364 GETTABLEKS                       R31 R10 K11 ["enabled"]
      366 SETTABLEKS                       R31 R30 K65 ["isOpen"]
      368 GETTABLEKS                       R31 R10 K73 ["disable"]
      370 SETTABLEKS                       R31 R30 K66 ["onClose"]
      372 GETTABLEKS                       R31 R10 K74 ["toggle"]
      374 SETTABLEKS                       R31 R30 K67 ["onToggle"]
      376 NEWCLOSURE                       R31 P4
      377 CAPTURE                          VAL R11
      378 SETTABLEKS                       R31 R30 K68 ["onSaveToRoblox"]
      380 GETUPVAL                         R32 14
      381 CALL                             R32 0 1
      382 JUMPIFNOT                        R32 ; [+3]
      383 NEWCLOSURE                       R31 P5
      384 CAPTURE                          REF R18
      385 JUMP                             ; [+1]
      386 LOADNIL                          R31
      387 SETTABLEKS                       R31 R30 K69 ["openAvatarLookComposer"]
      389 NEWCLOSURE                       R31 P6
      390 CAPTURE                          REF R18
      391 SETTABLEKS                       R31 R30 K70 ["openMakeupLookComposer"]
      393 GETUPVAL                         R31 0
      394 GETTABLEKS                       R31 R31 K2 ["createElement"]
      396 GETUPVAL                         R32 19
      397 DUPTABLE                         R33 K78 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      398 LOADK                            R34 K79 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      399 SETTABLEKS                       R34 R33 K52 ["Icon"]
      401 GETTABLEKS                       R34 R10 K11 ["enabled"]
      403 SETTABLEKS                       R34 R33 K53 ["IsSelected"]
      405 LOADB                            R34 1
      406 SETTABLEKS                       R34 R33 K75 ["ShowMenuIndicator"]
      408 LOADK                            R34 K49 ["Publish"]
      409 SETTABLEKS                       R34 R33 K54 ["StageText"]
      411 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      413 JUMPIFEQKNIL                     R35 ; [+33]
      415 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      417 GETTABLEKS                       R35 R35 K0 ["type"]
      419 JUMPIFNOTEQKS                    R35 K17 ["notAllowed"] ; [+27]
      421 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      423 GETTABLEKS                       R35 R35 K80 ["denyReason"]
      425 JUMPIFEQKS                       R35 K81 ["MissingPremiumSubscriptionTier"] ; [+7]
      427 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      429 GETTABLEKS                       R35 R35 K80 ["denyReason"]
      431 JUMPIFNOTEQKS                    R35 K82 ["MissingIdVerification"] ; [+15]
      433 LOADK                            R36 K5 ["StageSelector"]
      434 LOADK                            R38 K83 ["Publish_Deny_%*"]
      435 GETTABLEKS                       R40 R7 K16 ["canUploadBundles"]
      437 GETTABLEKS                       R40 R40 K80 ["denyReason"]
      439 NAMECALL                         R38 R38 K84 ["format"]
      441 CALL                             R38 2 1
      442 MOVE                             R37 R38
      443 NAMECALL                         R34 R2 K85 ["getText"]
      445 CALL                             R34 3 1
      446 JUMP                             ; [+5]
      447 LOADK                            R36 K48 ["LookSaveMenu"]
      448 LOADK                            R37 K86 ["Save"]
      449 NAMECALL                         R34 R2 K85 ["getText"]
      451 CALL                             R34 3 1
      452 SETTABLEKS                       R34 R33 K76 ["Tooltip"]
      454 JUMPIF                           R16 ; [+2]
      455 LOADB                            R34 0
      456 JUMP                             ; [+1]
      457 LOADNIL                          R34
      458 SETTABLEKS                       R34 R33 K77 ["Enabled"]
      460 NEWCLOSURE                       R34 P7
      461 CAPTURE                          VAL R16
      462 CAPTURE                          VAL R10
      463 SETTABLEKS                       R34 R33 K55 ["OnClick"]
      465 CALL                             R31 2 1
      466 SETTABLEKS                       R31 R30 K71 ["anchor"]
      468 CALL                             R28 2 1
      469 JUMP                             ; [+1]
      470 LOADNIL                          R28
      471 SETTABLEKS                       R28 R27 K48 ["LookSaveMenu"]
      473 GETUPVAL                         R29 6
      474 CALL                             R29 0 1
      475 JUMPIFNOT                        R29 ; [+1]
      476 JUMPIF                           R15 ; [+72]
      477 GETUPVAL                         R28 0
      478 GETTABLEKS                       R28 R28 K2 ["createElement"]
      480 GETUPVAL                         R29 19
      481 DUPTABLE                         R30 K87 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      482 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      484 CALL                             R31 1 1
      485 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      487 LOADK                            R31 K79 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      488 SETTABLEKS                       R31 R30 K52 ["Icon"]
      490 LOADB                            R31 0
      491 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      493 LOADK                            R31 K49 ["Publish"]
      494 SETTABLEKS                       R31 R30 K54 ["StageText"]
      496 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      498 JUMPIFEQKNIL                     R32 ; [+33]
      500 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      502 GETTABLEKS                       R32 R32 K0 ["type"]
      504 JUMPIFNOTEQKS                    R32 K17 ["notAllowed"] ; [+27]
      506 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      508 GETTABLEKS                       R32 R32 K80 ["denyReason"]
      510 JUMPIFEQKS                       R32 K81 ["MissingPremiumSubscriptionTier"] ; [+7]
      512 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      514 GETTABLEKS                       R32 R32 K80 ["denyReason"]
      516 JUMPIFNOTEQKS                    R32 K82 ["MissingIdVerification"] ; [+15]
      518 LOADK                            R33 K5 ["StageSelector"]
      519 LOADK                            R35 K83 ["Publish_Deny_%*"]
      520 GETTABLEKS                       R37 R7 K16 ["canUploadBundles"]
      522 GETTABLEKS                       R37 R37 K80 ["denyReason"]
      524 NAMECALL                         R35 R35 K84 ["format"]
      526 CALL                             R35 2 1
      527 MOVE                             R34 R35
      528 NAMECALL                         R31 R2 K85 ["getText"]
      530 CALL                             R31 3 1
      531 JUMP                             ; [+1]
      532 LOADNIL                          R31
      533 SETTABLEKS                       R31 R30 K76 ["Tooltip"]
      535 JUMPIF                           R16 ; [+2]
      536 LOADB                            R31 0
      537 JUMP                             ; [+1]
      538 LOADNIL                          R31
      539 SETTABLEKS                       R31 R30 K77 ["Enabled"]
      541 NEWCLOSURE                       R31 P8
      542 CAPTURE                          VAL R4
      543 CAPTURE                          VAL R12
      544 CAPTURE                          VAL R11
      545 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      547 CALL                             R28 2 1
      548 JUMP                             ; [+1]
      549 LOADNIL                          R28
      550 SETTABLEKS                       R28 R27 K49 ["Publish"]
      552 CALL                             R24 3 1
      553 SETTABLEKS                       R24 R23 K29 ["Contents"]
      555 GETUPVAL                         R24 0
      556 GETTABLEKS                       R24 R24 K2 ["createElement"]
      558 GETUPVAL                         R25 19
      559 DUPTABLE                         R26 K90 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      560 LOADK                            R27 K91 ["rbxassetid://6663675885"]
      561 SETTABLEKS                       R27 R26 K52 ["Icon"]
      563 LOADB                            R27 0
      564 SETTABLEKS                       R27 R26 K53 ["IsSelected"]
      566 LOADK                            R27 K92 ["Settings"]
      567 SETTABLEKS                       R27 R26 K54 ["StageText"]
      569 GETIMPORT                        R27 K94 [Vector2.new]
      571 LOADN                            R28 0
      572 LOADN                            R29 1
      573 CALL                             R27 2 1
      574 SETTABLEKS                       R27 R26 K88 ["AnchorPoint"]
      576 GETIMPORT                        R27 K96 [UDim2.fromScale]
      578 LOADN                            R28 0
      579 LOADN                            R29 1
      580 CALL                             R27 2 1
      581 SETTABLEKS                       R27 R26 K89 ["Position"]
      583 GETTABLEKS                       R27 R9 K97 ["enable"]
      585 SETTABLEKS                       R27 R26 K55 ["OnClick"]
      587 CALL                             R24 2 1
      588 SETTABLEKS                       R24 R23 K30 ["SettingsButton"]
      590 GETTABLEKS                       R24 R9 K11 ["enabled"]
      592 JUMPIFNOT                        R24 ; [+17]
      593 GETUPVAL                         R24 0
      594 GETTABLEKS                       R24 R24 K2 ["createElement"]
      596 GETUPVAL                         R25 23
      597 DUPTABLE                         R26 K100 [{"type", "avatar", "close"}]
      598 LOADK                            R27 K98 ["avatar"]
      599 SETTABLEKS                       R27 R26 K0 ["type"]
      601 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      603 SETTABLEKS                       R27 R26 K98 ["avatar"]
      605 GETTABLEKS                       R27 R9 K73 ["disable"]
      607 SETTABLEKS                       R27 R26 K99 ["close"]
      609 CALL                             R24 2 1
      610 SETTABLEKS                       R24 R23 K31 ["SettingsMenu"]
      612 GETTABLEKS                       R24 R11 K11 ["enabled"]
      614 JUMPIFNOT                        R24 ; [+14]
      615 GETUPVAL                         R24 0
      616 GETTABLEKS                       R24 R24 K2 ["createElement"]
      618 GETUPVAL                         R25 24
      619 DUPTABLE                         R26 K101 [{"close", "avatar"}]
      620 GETTABLEKS                       R27 R11 K73 ["disable"]
      622 SETTABLEKS                       R27 R26 K99 ["close"]
      624 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      626 SETTABLEKS                       R27 R26 K98 ["avatar"]
      628 CALL                             R24 2 1
      629 SETTABLEKS                       R24 R23 K32 ["SubmitDialog"]
      631 GETUPVAL                         R24 6
      632 CALL                             R24 0 1
      633 JUMPIFNOT                        R24 ; [+160]
      634 MOVE                             R24 R19
      635 JUMPIFNOT                        R24 ; [+158]
      636 GETUPVAL                         R24 0
      637 GETTABLEKS                       R24 R24 K2 ["createElement"]
      639 GETUPVAL                         R25 25
      640 DUPTABLE                         R26 K105 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      641 SETTABLEKS                       R17 R26 K102 ["dialogLookType"]
      643 GETTABLEKS                       R27 R5 K103 ["equippedItems"]
      645 SETTABLEKS                       R27 R26 K103 ["equippedItems"]
      647 GETUPVAL                         R28 14
      648 CALL                             R28 0 1
      649 JUMPIFNOT                        R28 ; [+136]
      650 JUMPIFNOTEQKS                    R17 K20 ["AvatarLook"] ; [+135]
      652 DUPTABLE                         R27 K112 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      653 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      655 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      657 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      659 LOADK                            R32 K114 ["BodyTypeScale"]
      660 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      662 CALL                             R30 2 1
      663 JUMPIFNOT                        R30 ; [+8]
      664 LOADK                            R33 K116 ["NumberValue"]
      665 NAMECALL                         R31 R30 K117 ["IsA"]
      667 CALL                             R31 2 1
      668 JUMPIFNOT                        R31 ; [+3]
      669 GETTABLEKS                       R28 R30 K118 ["Value"]
      671 JUMP                             ; [+1]
      672 LOADN                            R28 1
      673 SETTABLEKS                       R28 R27 K106 ["bodyType"]
      675 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      677 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      679 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      681 LOADK                            R32 K119 ["BodyDepthScale"]
      682 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      684 CALL                             R30 2 1
      685 JUMPIFNOT                        R30 ; [+8]
      686 LOADK                            R33 K116 ["NumberValue"]
      687 NAMECALL                         R31 R30 K117 ["IsA"]
      689 CALL                             R31 2 1
      690 JUMPIFNOT                        R31 ; [+3]
      691 GETTABLEKS                       R28 R30 K118 ["Value"]
      693 JUMP                             ; [+1]
      694 LOADN                            R28 1
      695 SETTABLEKS                       R28 R27 K107 ["depth"]
      697 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      699 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      701 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      703 LOADK                            R32 K120 ["HeadScale"]
      704 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      706 CALL                             R30 2 1
      707 JUMPIFNOT                        R30 ; [+8]
      708 LOADK                            R33 K116 ["NumberValue"]
      709 NAMECALL                         R31 R30 K117 ["IsA"]
      711 CALL                             R31 2 1
      712 JUMPIFNOT                        R31 ; [+3]
      713 GETTABLEKS                       R28 R30 K118 ["Value"]
      715 JUMP                             ; [+1]
      716 LOADN                            R28 1
      717 SETTABLEKS                       R28 R27 K108 ["head"]
      719 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      721 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      723 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      725 LOADK                            R32 K121 ["BodyHeightScale"]
      726 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      728 CALL                             R30 2 1
      729 JUMPIFNOT                        R30 ; [+8]
      730 LOADK                            R33 K116 ["NumberValue"]
      731 NAMECALL                         R31 R30 K117 ["IsA"]
      733 CALL                             R31 2 1
      734 JUMPIFNOT                        R31 ; [+3]
      735 GETTABLEKS                       R28 R30 K118 ["Value"]
      737 JUMP                             ; [+1]
      738 LOADN                            R28 1
      739 SETTABLEKS                       R28 R27 K109 ["height"]
      741 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      743 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      745 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      747 LOADK                            R32 K122 ["BodyProportionScale"]
      748 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      750 CALL                             R30 2 1
      751 JUMPIFNOT                        R30 ; [+8]
      752 LOADK                            R33 K116 ["NumberValue"]
      753 NAMECALL                         R31 R30 K117 ["IsA"]
      755 CALL                             R31 2 1
      756 JUMPIFNOT                        R31 ; [+3]
      757 GETTABLEKS                       R28 R30 K118 ["Value"]
      759 JUMP                             ; [+1]
      760 LOADN                            R28 1
      761 SETTABLEKS                       R28 R27 K110 ["proportion"]
      763 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      765 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      767 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      769 LOADK                            R32 K123 ["BodyWidthScale"]
      770 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      772 CALL                             R30 2 1
      773 JUMPIFNOT                        R30 ; [+8]
      774 LOADK                            R33 K116 ["NumberValue"]
      775 NAMECALL                         R31 R30 K117 ["IsA"]
      777 CALL                             R31 2 1
      778 JUMPIFNOT                        R31 ; [+3]
      779 GETTABLEKS                       R28 R30 K118 ["Value"]
      781 JUMP                             ; [+1]
      782 LOADN                            R28 1
      783 SETTABLEKS                       R28 R27 K111 ["width"]
      785 JUMP                             ; [+1]
      786 LOADNIL                          R27
      787 SETTABLEKS                       R27 R26 K104 ["bodyScale"]
      789 NEWCLOSURE                       R27 P9
      790 CAPTURE                          REF R18
      791 SETTABLEKS                       R27 R26 K66 ["onClose"]
      793 CALL                             R24 2 1
      794 SETTABLEKS                       R24 R23 K33 ["LookComposerDialog"]
      796 CALL                             R20 3 -1
      797 CLOSEUPVALS                      R18
      798 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["TestInExperienceUtil"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K17 ["useCreatedByAutoSetup"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useToggleState"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K19 ["Components"]
       77 GETTABLEKS                       R10 R10 K20 ["AvatarScreenContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Src"]
       84 GETTABLEKS                       R11 R11 K19 ["Components"]
       86 GETTABLEKS                       R11 R11 K21 ["AvatarSettings"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K10 ["Src"]
       93 GETTABLEKS                       R12 R12 K19 ["Components"]
       95 GETTABLEKS                       R12 R12 K22 ["StageSelector"]
       97 GETTABLEKS                       R12 R12 K23 ["AutoSetupStageSelector"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K10 ["Src"]
      104 GETTABLEKS                       R13 R13 K19 ["Components"]
      106 GETTABLEKS                       R13 R13 K24 ["DEPRECATED_LookContext"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K10 ["Src"]
      113 GETTABLEKS                       R14 R14 K14 ["Util"]
      115 GETTABLEKS                       R14 R14 K25 ["EquipmentStateContext"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K10 ["Src"]
      122 GETTABLEKS                       R15 R15 K19 ["Components"]
      124 GETTABLEKS                       R15 R15 K26 ["LookContext"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K10 ["Src"]
      131 GETTABLEKS                       R16 R16 K19 ["Components"]
      133 GETTABLEKS                       R16 R16 K27 ["PlacesServiceContext"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K10 ["Src"]
      140 GETTABLEKS                       R17 R17 K19 ["Components"]
      142 GETTABLEKS                       R17 R17 K28 ["LookSaveMenu"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K10 ["Src"]
      149 GETTABLEKS                       R18 R18 K19 ["Components"]
      151 GETTABLEKS                       R18 R18 K22 ["StageSelector"]
      153 GETTABLEKS                       R18 R18 K29 ["StageSelectorButton"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K5 [require]
      158 GETTABLEKS                       R19 R0 K10 ["Src"]
      160 GETTABLEKS                       R19 R19 K19 ["Components"]
      162 GETTABLEKS                       R19 R19 K30 ["SubmitDialog"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R20 R0 K10 ["Src"]
      169 GETTABLEKS                       R20 R20 K19 ["Components"]
      171 GETTABLEKS                       R20 R20 K31 ["UGCValidationContext"]
      173 CALL                             R19 1 1
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R21 R0 K10 ["Src"]
      178 GETTABLEKS                       R21 R21 K19 ["Components"]
      180 GETTABLEKS                       R21 R21 K32 ["LookComposerDialog"]
      182 CALL                             R20 1 1
      183 GETIMPORT                        R21 K5 [require]
      185 GETTABLEKS                       R22 R0 K10 ["Src"]
      187 GETTABLEKS                       R22 R22 K33 ["Flags"]
      189 GETTABLEKS                       R22 R22 K34 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      191 CALL                             R21 1 1
      192 GETIMPORT                        R22 K5 [require]
      194 GETTABLEKS                       R23 R0 K10 ["Src"]
      196 GETTABLEKS                       R23 R23 K33 ["Flags"]
      198 GETTABLEKS                       R23 R23 K35 ["getFFlagAvatarPreviewerLookComposer"]
      200 CALL                             R22 1 1
      201 GETIMPORT                        R23 K5 [require]
      203 GETTABLEKS                       R24 R0 K10 ["Src"]
      205 GETTABLEKS                       R24 R24 K33 ["Flags"]
      207 GETTABLEKS                       R24 R24 K36 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R25 R0 K10 ["Src"]
      214 GETTABLEKS                       R25 R25 K33 ["Flags"]
      216 GETTABLEKS                       R25 R25 K37 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      218 CALL                             R24 1 1
      219 GETTABLEKS                       R25 R1 K38 ["UI"]
      221 GETTABLEKS                       R26 R25 K39 ["Pane"]
      223 GETTABLEKS                       R27 R1 K14 ["Util"]
      225 GETTABLEKS                       R27 R27 K40 ["LayoutOrderIterator"]
      227 GETTABLEKS                       R28 R1 K41 ["ContextServices"]
      229 GETTABLEKS                       R28 R28 K42 ["Analytics"]
      231 GETTABLEKS                       R29 R1 K41 ["ContextServices"]
      233 GETTABLEKS                       R29 R29 K43 ["Localization"]
      235 GETTABLEKS                       R30 R1 K41 ["ContextServices"]
      237 GETTABLEKS                       R30 R30 K44 ["Stylizer"]
      239 DUPCLOSURE                       R31 K45 [PROTO_0]
      240 DUPCLOSURE                       R32 K46 [PROTO_11]
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R30
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R23
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R17
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R16
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R20
      267 RETURN                           R32 1
