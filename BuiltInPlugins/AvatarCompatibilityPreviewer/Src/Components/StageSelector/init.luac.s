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
      185 DUPTABLE                         R22 K26 [{["BackgroundColor"], ["Size"], ["ZIndex"] = 2}]
      186 GETTABLEKS                       R23 R1 K22 ["BackgroundColor"]
      188 SETTABLEKS                       R23 R22 K22 ["BackgroundColor"]
      190 GETIMPORT                        R23 K28 [UDim2.new]
      192 LOADN                            R24 0
      193 GETTABLEKS                       R25 R1 K29 ["Width"]
      195 LOADN                            R26 1
      196 LOADN                            R27 0
      197 CALL                             R23 4 1
      198 SETTABLEKS                       R23 R22 K23 ["Size"]
      200 DUPTABLE                         R23 K35 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      201 GETUPVAL                         R24 0
      202 GETTABLEKS                       R24 R24 K2 ["createElement"]
      204 GETUPVAL                         R25 17
      205 DUPTABLE                         R26 K38 [{"Layout", "VerticalAlignment"}]
      206 GETIMPORT                        R27 K42 [Enum.FillDirection.Vertical]
      208 SETTABLEKS                       R27 R26 K36 ["Layout"]
      210 GETIMPORT                        R27 K44 [Enum.VerticalAlignment.Top]
      212 SETTABLEKS                       R27 R26 K37 ["VerticalAlignment"]
      214 DUPTABLE                         R27 K51 [{"Back", "CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      215 GETUPVAL                         R29 18
      216 CALL                             R29 0 1
      217 JUMPIFNOT                        R29 ; [+25]
      218 GETUPVAL                         R28 0
      219 GETTABLEKS                       R28 R28 K2 ["createElement"]
      221 GETUPVAL                         R29 19
      222 DUPTABLE                         R30 K58 [{["LayoutOrder"], ["Icon"], ["IsSelected"] = False, ["StageText"] = "Back", ["OnClick"]}]
      223 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      225 CALL                             R31 1 1
      226 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      228 GETUPVAL                         R31 20
      229 GETTABLEKS                       R31 R31 K60 ["Enums"]
      231 GETTABLEKS                       R31 R31 K61 ["IconName"]
      233 GETTABLEKS                       R31 R31 K62 ["ArrowCurlToLeft"]
      235 SETTABLEKS                       R31 R30 K53 ["Icon"]
      237 GETTABLEKS                       R31 R0 K3 ["onBack"]
      239 SETTABLEKS                       R31 R30 K57 ["OnClick"]
      241 CALL                             R28 2 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R28
      244 SETTABLEKS                       R28 R27 K45 ["Back"]
      246 GETUPVAL                         R28 0
      247 GETTABLEKS                       R28 R28 K2 ["createElement"]
      249 GETUPVAL                         R29 19
      250 DUPTABLE                         R30 K64 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png", ["IsSelected"], ["StageText"] = "CheckBody", ["OnClick"]}]
      251 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      253 CALL                             R31 1 1
      254 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      256 GETTABLEKS                       R32 R0 K65 ["SelectedStage"]
      258 JUMPIFEQKS                       R32 K46 ["CheckBody"] ; [+2]
      260 LOADB                            R31 0 +1
      261 LOADB                            R31 1
      262 SETTABLEKS                       R31 R30 K54 ["IsSelected"]
      264 NEWCLOSURE                       R31 P1
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R0
      267 SETTABLEKS                       R31 R30 K57 ["OnClick"]
      269 CALL                             R28 2 1
      270 SETTABLEKS                       R28 R27 K46 ["CheckBody"]
      272 GETUPVAL                         R28 0
      273 GETTABLEKS                       R28 R28 K2 ["createElement"]
      275 GETUPVAL                         R29 19
      276 DUPTABLE                         R30 K67 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png", ["IsSelected"], ["StageText"] = "CheckFace", ["OnClick"]}]
      277 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      279 CALL                             R31 1 1
      280 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      282 GETTABLEKS                       R32 R0 K65 ["SelectedStage"]
      284 JUMPIFEQKS                       R32 K47 ["CheckFace"] ; [+2]
      286 LOADB                            R31 0 +1
      287 LOADB                            R31 1
      288 SETTABLEKS                       R31 R30 K54 ["IsSelected"]
      290 NEWCLOSURE                       R31 P2
      291 CAPTURE                          VAL R4
      292 CAPTURE                          VAL R0
      293 SETTABLEKS                       R31 R30 K57 ["OnClick"]
      295 CALL                             R28 2 1
      296 SETTABLEKS                       R28 R27 K47 ["CheckFace"]
      298 GETUPVAL                         R28 0
      299 GETTABLEKS                       R28 R28 K2 ["createElement"]
      301 GETUPVAL                         R29 19
      302 DUPTABLE                         R30 K69 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png", ["IsSelected"] = False, ["StageText"] = "Test", ["OnClick"]}]
      303 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      305 CALL                             R31 1 1
      306 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      308 NEWCLOSURE                       R31 P3
      309 CAPTURE                          VAL R4
      310 CAPTURE                          UPVAL U21
      311 CAPTURE                          VAL R6
      312 CAPTURE                          VAL R0
      313 SETTABLEKS                       R31 R30 K57 ["OnClick"]
      315 CALL                             R28 2 1
      316 SETTABLEKS                       R28 R27 K48 ["Test"]
      318 GETUPVAL                         R29 6
      319 CALL                             R29 0 1
      320 JUMPIFNOT                        R29 ; [+110]
      321 JUMPIFNOT                        R15 ; [+109]
      322 JUMPIFEQKNIL                     R10 ; [+108]
      324 GETUPVAL                         R28 0
      325 GETTABLEKS                       R28 R28 K2 ["createElement"]
      327 GETUPVAL                         R29 22
      328 DUPTABLE                         R30 K77 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      329 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      331 CALL                             R31 1 1
      332 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      334 GETTABLEKS                       R31 R10 K11 ["enabled"]
      336 SETTABLEKS                       R31 R30 K70 ["isOpen"]
      338 GETTABLEKS                       R31 R10 K78 ["disable"]
      340 SETTABLEKS                       R31 R30 K71 ["onClose"]
      342 GETTABLEKS                       R31 R10 K79 ["toggle"]
      344 SETTABLEKS                       R31 R30 K72 ["onToggle"]
      346 NEWCLOSURE                       R31 P4
      347 CAPTURE                          VAL R11
      348 SETTABLEKS                       R31 R30 K73 ["onSaveToRoblox"]
      350 GETUPVAL                         R32 14
      351 CALL                             R32 0 1
      352 JUMPIFNOT                        R32 ; [+3]
      353 NEWCLOSURE                       R31 P5
      354 CAPTURE                          REF R18
      355 JUMP                             ; [+1]
      356 LOADNIL                          R31
      357 SETTABLEKS                       R31 R30 K74 ["openAvatarLookComposer"]
      359 NEWCLOSURE                       R31 P6
      360 CAPTURE                          REF R18
      361 SETTABLEKS                       R31 R30 K75 ["openMakeupLookComposer"]
      363 GETUPVAL                         R31 0
      364 GETTABLEKS                       R31 R31 K2 ["createElement"]
      366 GETUPVAL                         R32 19
      367 DUPTABLE                         R33 K85 [{["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png", ["IsSelected"], ["ShowMenuIndicator"] = True, ["StageText"] = "Publish", ["Tooltip"], ["Enabled"], ["OnClick"]}]
      368 GETTABLEKS                       R34 R10 K11 ["enabled"]
      370 SETTABLEKS                       R34 R33 K54 ["IsSelected"]
      372 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      374 JUMPIFEQKNIL                     R35 ; [+33]
      376 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      378 GETTABLEKS                       R35 R35 K0 ["type"]
      380 JUMPIFNOTEQKS                    R35 K17 ["notAllowed"] ; [+27]
      382 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      384 GETTABLEKS                       R35 R35 K86 ["denyReason"]
      386 JUMPIFEQKS                       R35 K87 ["MissingPremiumSubscriptionTier"] ; [+7]
      388 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      390 GETTABLEKS                       R35 R35 K86 ["denyReason"]
      392 JUMPIFNOTEQKS                    R35 K88 ["MissingIdVerification"] ; [+15]
      394 LOADK                            R36 K5 ["StageSelector"]
      395 LOADK                            R38 K89 ["Publish_Deny_%*"]
      396 GETTABLEKS                       R40 R7 K16 ["canUploadBundles"]
      398 GETTABLEKS                       R40 R40 K86 ["denyReason"]
      400 NAMECALL                         R38 R38 K90 ["format"]
      402 CALL                             R38 2 1
      403 MOVE                             R37 R38
      404 NAMECALL                         R34 R2 K91 ["getText"]
      406 CALL                             R34 3 1
      407 JUMP                             ; [+5]
      408 LOADK                            R36 K49 ["LookSaveMenu"]
      409 LOADK                            R37 K92 ["Save"]
      410 NAMECALL                         R34 R2 K91 ["getText"]
      412 CALL                             R34 3 1
      413 SETTABLEKS                       R34 R33 K83 ["Tooltip"]
      415 JUMPIF                           R16 ; [+2]
      416 LOADB                            R34 0
      417 JUMP                             ; [+1]
      418 LOADNIL                          R34
      419 SETTABLEKS                       R34 R33 K84 ["Enabled"]
      421 NEWCLOSURE                       R34 P7
      422 CAPTURE                          VAL R16
      423 CAPTURE                          VAL R10
      424 SETTABLEKS                       R34 R33 K57 ["OnClick"]
      426 CALL                             R31 2 1
      427 SETTABLEKS                       R31 R30 K76 ["anchor"]
      429 CALL                             R28 2 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R28
      432 SETTABLEKS                       R28 R27 K49 ["LookSaveMenu"]
      434 GETUPVAL                         R29 6
      435 CALL                             R29 0 1
      436 JUMPIFNOT                        R29 ; [+1]
      437 JUMPIF                           R15 ; [+63]
      438 GETUPVAL                         R28 0
      439 GETTABLEKS                       R28 R28 K2 ["createElement"]
      441 GETUPVAL                         R29 19
      442 DUPTABLE                         R30 K93 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png", ["IsSelected"] = False, ["StageText"] = "Publish", ["Tooltip"], ["Enabled"], ["OnClick"]}]
      443 NAMECALL                         R31 R3 K59 ["getNextOrder"]
      445 CALL                             R31 1 1
      446 SETTABLEKS                       R31 R30 K52 ["LayoutOrder"]
      448 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      450 JUMPIFEQKNIL                     R32 ; [+33]
      452 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      454 GETTABLEKS                       R32 R32 K0 ["type"]
      456 JUMPIFNOTEQKS                    R32 K17 ["notAllowed"] ; [+27]
      458 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      460 GETTABLEKS                       R32 R32 K86 ["denyReason"]
      462 JUMPIFEQKS                       R32 K87 ["MissingPremiumSubscriptionTier"] ; [+7]
      464 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      466 GETTABLEKS                       R32 R32 K86 ["denyReason"]
      468 JUMPIFNOTEQKS                    R32 K88 ["MissingIdVerification"] ; [+15]
      470 LOADK                            R33 K5 ["StageSelector"]
      471 LOADK                            R35 K89 ["Publish_Deny_%*"]
      472 GETTABLEKS                       R37 R7 K16 ["canUploadBundles"]
      474 GETTABLEKS                       R37 R37 K86 ["denyReason"]
      476 NAMECALL                         R35 R35 K90 ["format"]
      478 CALL                             R35 2 1
      479 MOVE                             R34 R35
      480 NAMECALL                         R31 R2 K91 ["getText"]
      482 CALL                             R31 3 1
      483 JUMP                             ; [+1]
      484 LOADNIL                          R31
      485 SETTABLEKS                       R31 R30 K83 ["Tooltip"]
      487 JUMPIF                           R16 ; [+2]
      488 LOADB                            R31 0
      489 JUMP                             ; [+1]
      490 LOADNIL                          R31
      491 SETTABLEKS                       R31 R30 K84 ["Enabled"]
      493 NEWCLOSURE                       R31 P8
      494 CAPTURE                          VAL R4
      495 CAPTURE                          VAL R12
      496 CAPTURE                          VAL R11
      497 SETTABLEKS                       R31 R30 K57 ["OnClick"]
      499 CALL                             R28 2 1
      500 JUMP                             ; [+1]
      501 LOADNIL                          R28
      502 SETTABLEKS                       R28 R27 K50 ["Publish"]
      504 CALL                             R24 3 1
      505 SETTABLEKS                       R24 R23 K30 ["Contents"]
      507 GETUPVAL                         R24 0
      508 GETTABLEKS                       R24 R24 K2 ["createElement"]
      510 GETUPVAL                         R25 19
      511 DUPTABLE                         R26 K98 [{["Icon"] = "rbxassetid://6663675885", ["IsSelected"] = False, ["StageText"] = "Settings", ["AnchorPoint"], ["Position"], ["OnClick"]}]
      512 GETIMPORT                        R27 K100 [Vector2.new]
      514 LOADN                            R28 0
      515 LOADN                            R29 1
      516 CALL                             R27 2 1
      517 SETTABLEKS                       R27 R26 K96 ["AnchorPoint"]
      519 GETIMPORT                        R27 K102 [UDim2.fromScale]
      521 LOADN                            R28 0
      522 LOADN                            R29 1
      523 CALL                             R27 2 1
      524 SETTABLEKS                       R27 R26 K97 ["Position"]
      526 GETTABLEKS                       R27 R9 K103 ["enable"]
      528 SETTABLEKS                       R27 R26 K57 ["OnClick"]
      530 CALL                             R24 2 1
      531 SETTABLEKS                       R24 R23 K31 ["SettingsButton"]
      533 GETTABLEKS                       R24 R9 K11 ["enabled"]
      535 JUMPIFNOT                        R24 ; [+14]
      536 GETUPVAL                         R24 0
      537 GETTABLEKS                       R24 R24 K2 ["createElement"]
      539 GETUPVAL                         R25 23
      540 DUPTABLE                         R26 K106 [{[1] = "avatar", ["avatar"], ["close"]}]
      541 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      543 SETTABLEKS                       R27 R26 K104 ["avatar"]
      545 GETTABLEKS                       R27 R9 K78 ["disable"]
      547 SETTABLEKS                       R27 R26 K105 ["close"]
      549 CALL                             R24 2 1
      550 SETTABLEKS                       R24 R23 K32 ["SettingsMenu"]
      552 GETTABLEKS                       R24 R11 K11 ["enabled"]
      554 JUMPIFNOT                        R24 ; [+14]
      555 GETUPVAL                         R24 0
      556 GETTABLEKS                       R24 R24 K2 ["createElement"]
      558 GETUPVAL                         R25 24
      559 DUPTABLE                         R26 K107 [{"close", "avatar"}]
      560 GETTABLEKS                       R27 R11 K78 ["disable"]
      562 SETTABLEKS                       R27 R26 K105 ["close"]
      564 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      566 SETTABLEKS                       R27 R26 K104 ["avatar"]
      568 CALL                             R24 2 1
      569 SETTABLEKS                       R24 R23 K33 ["SubmitDialog"]
      571 GETUPVAL                         R24 6
      572 CALL                             R24 0 1
      573 JUMPIFNOT                        R24 ; [+160]
      574 MOVE                             R24 R19
      575 JUMPIFNOT                        R24 ; [+158]
      576 GETUPVAL                         R24 0
      577 GETTABLEKS                       R24 R24 K2 ["createElement"]
      579 GETUPVAL                         R25 25
      580 DUPTABLE                         R26 K111 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      581 SETTABLEKS                       R17 R26 K108 ["dialogLookType"]
      583 GETTABLEKS                       R27 R5 K109 ["equippedItems"]
      585 SETTABLEKS                       R27 R26 K109 ["equippedItems"]
      587 GETUPVAL                         R28 14
      588 CALL                             R28 0 1
      589 JUMPIFNOT                        R28 ; [+136]
      590 JUMPIFNOTEQKS                    R17 K20 ["AvatarLook"] ; [+135]
      592 DUPTABLE                         R27 K118 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      593 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      595 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      597 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      599 LOADK                            R32 K120 ["BodyTypeScale"]
      600 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      602 CALL                             R30 2 1
      603 JUMPIFNOT                        R30 ; [+8]
      604 LOADK                            R33 K122 ["NumberValue"]
      605 NAMECALL                         R31 R30 K123 ["IsA"]
      607 CALL                             R31 2 1
      608 JUMPIFNOT                        R31 ; [+3]
      609 GETTABLEKS                       R28 R30 K124 ["Value"]
      611 JUMP                             ; [+1]
      612 LOADN                            R28 1
      613 SETTABLEKS                       R28 R27 K112 ["bodyType"]
      615 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      617 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      619 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      621 LOADK                            R32 K125 ["BodyDepthScale"]
      622 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      624 CALL                             R30 2 1
      625 JUMPIFNOT                        R30 ; [+8]
      626 LOADK                            R33 K122 ["NumberValue"]
      627 NAMECALL                         R31 R30 K123 ["IsA"]
      629 CALL                             R31 2 1
      630 JUMPIFNOT                        R31 ; [+3]
      631 GETTABLEKS                       R28 R30 K124 ["Value"]
      633 JUMP                             ; [+1]
      634 LOADN                            R28 1
      635 SETTABLEKS                       R28 R27 K113 ["depth"]
      637 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      639 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      641 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      643 LOADK                            R32 K126 ["HeadScale"]
      644 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      646 CALL                             R30 2 1
      647 JUMPIFNOT                        R30 ; [+8]
      648 LOADK                            R33 K122 ["NumberValue"]
      649 NAMECALL                         R31 R30 K123 ["IsA"]
      651 CALL                             R31 2 1
      652 JUMPIFNOT                        R31 ; [+3]
      653 GETTABLEKS                       R28 R30 K124 ["Value"]
      655 JUMP                             ; [+1]
      656 LOADN                            R28 1
      657 SETTABLEKS                       R28 R27 K114 ["head"]
      659 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      661 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      663 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      665 LOADK                            R32 K127 ["BodyHeightScale"]
      666 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      668 CALL                             R30 2 1
      669 JUMPIFNOT                        R30 ; [+8]
      670 LOADK                            R33 K122 ["NumberValue"]
      671 NAMECALL                         R31 R30 K123 ["IsA"]
      673 CALL                             R31 2 1
      674 JUMPIFNOT                        R31 ; [+3]
      675 GETTABLEKS                       R28 R30 K124 ["Value"]
      677 JUMP                             ; [+1]
      678 LOADN                            R28 1
      679 SETTABLEKS                       R28 R27 K115 ["height"]
      681 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      683 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      685 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      687 LOADK                            R32 K128 ["BodyProportionScale"]
      688 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      690 CALL                             R30 2 1
      691 JUMPIFNOT                        R30 ; [+8]
      692 LOADK                            R33 K122 ["NumberValue"]
      693 NAMECALL                         R31 R30 K123 ["IsA"]
      695 CALL                             R31 2 1
      696 JUMPIFNOT                        R31 ; [+3]
      697 GETTABLEKS                       R28 R30 K124 ["Value"]
      699 JUMP                             ; [+1]
      700 LOADN                            R28 1
      701 SETTABLEKS                       R28 R27 K116 ["proportion"]
      703 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      705 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      707 GETTABLEKS                       R29 R29 K119 ["Humanoid"]
      709 LOADK                            R32 K129 ["BodyWidthScale"]
      710 NAMECALL                         R30 R29 K121 ["FindFirstChild"]
      712 CALL                             R30 2 1
      713 JUMPIFNOT                        R30 ; [+8]
      714 LOADK                            R33 K122 ["NumberValue"]
      715 NAMECALL                         R31 R30 K123 ["IsA"]
      717 CALL                             R31 2 1
      718 JUMPIFNOT                        R31 ; [+3]
      719 GETTABLEKS                       R28 R30 K124 ["Value"]
      721 JUMP                             ; [+1]
      722 LOADN                            R28 1
      723 SETTABLEKS                       R28 R27 K117 ["width"]
      725 JUMP                             ; [+1]
      726 LOADNIL                          R27
      727 SETTABLEKS                       R27 R26 K110 ["bodyScale"]
      729 NEWCLOSURE                       R27 P9
      730 CAPTURE                          REF R18
      731 SETTABLEKS                       R27 R26 K71 ["onClose"]
      733 CALL                             R24 2 1
      734 SETTABLEKS                       R24 R23 K34 ["LookComposerDialog"]
      736 CALL                             R20 3 -1
      737 CLOSEUPVALS                      R18
      738 RETURN                           R20 -1

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
