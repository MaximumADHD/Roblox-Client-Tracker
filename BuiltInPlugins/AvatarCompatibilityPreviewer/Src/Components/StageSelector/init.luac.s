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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["type"]
        5 JUMPIFNOTEQKS                    R1 K1 ["autosetup"] ; [+12]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K4 [{"onBack"}]
       12 GETTABLEKS                       R4 R0 K3 ["onBack"]
       14 SETTABLEKS                       R4 R3 K3 ["onBack"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 3
       19 LOADK                            R3 K5 ["StageSelector"]
       20 NAMECALL                         R1 R1 K6 ["use"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 4
       24 NAMECALL                         R2 R2 K6 ["use"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K7 ["new"]
       30 CALL                             R3 0 1
       31 GETUPVAL                         R4 6
       32 NAMECALL                         R4 R4 K6 ["use"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R6 7
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R6 ; [+6]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K8 ["useContext"]
       41 GETUPVAL                         R6 8
       42 CALL                             R5 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K8 ["useContext"]
       48 GETUPVAL                         R7 9
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K8 ["useContext"]
       53 GETUPVAL                         R8 10
       54 GETTABLEKS                       R8 R8 K9 ["Context"]
       56 CALL                             R7 1 1
       57 GETUPVAL                         R9 11
       58 CALL                             R9 0 1
       59 JUMPIFNOT                        R9 ; [+8]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K8 ["useContext"]
       63 GETUPVAL                         R9 12
       64 GETTABLEKS                       R9 R9 K9 ["Context"]
       66 CALL                             R8 1 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R8
       69 GETUPVAL                         R9 13
       70 LOADB                            R10 0
       71 CALL                             R9 1 1
       72 GETUPVAL                         R11 7
       73 CALL                             R11 0 1
       74 JUMPIFNOT                        R11 ; [+4]
       75 GETUPVAL                         R10 13
       76 LOADB                            R11 0
       77 CALL                             R10 1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R10
       80 GETUPVAL                         R11 11
       81 CALL                             R11 0 1
       82 JUMPIFNOT                        R11 ; [+13]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R13 0 1
       91 GETTABLEKS                       R14 R10 K11 ["enabled"]
       93 SETLIST                          R13 R14 1 [1]
       95 CALL                             R11 2 0
       96 GETUPVAL                         R11 13
       97 LOADB                            R12 0
       98 CALL                             R11 1 1
       99 MOVE                             R12 R0
      100 JUMPIFNOT                        R12 ; [+9]
      101 GETTABLEKS                       R12 R0 K12 ["Avatar"]
      103 JUMPIFNOT                        R12 ; [+6]
      104 GETUPVAL                         R12 14
      105 GETTABLEKS                       R13 R0 K12 ["Avatar"]
      107 GETTABLEKS                       R13 R13 K13 ["WorldModel"]
      109 CALL                             R12 1 1
      110 GETUPVAL                         R14 15
      111 CALL                             R14 0 1
      112 JUMPIFNOT                        R14 ; [+8]
      113 GETUPVAL                         R13 1
      114 GETTABLEKS                       R13 R13 K8 ["useContext"]
      116 GETUPVAL                         R14 16
      117 GETTABLEKS                       R14 R14 K9 ["Context"]
      119 CALL                             R13 1 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R13
      122 GETUPVAL                         R15 7
      123 CALL                             R15 0 1
      124 JUMPIFNOT                        R15 ; [+11]
      125 GETUPVAL                         R15 15
      126 CALL                             R15 0 1
      127 JUMPIF                           R15 ; [+8]
      128 GETUPVAL                         R14 1
      129 GETTABLEKS                       R14 R14 K8 ["useContext"]
      131 GETUPVAL                         R15 17
      132 GETTABLEKS                       R15 R15 K9 ["Context"]
      134 CALL                             R14 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R14
      137 GETUPVAL                         R16 15
      138 CALL                             R16 0 1
      139 JUMPIFNOT                        R16 ; [+3]
      140 GETTABLEKS                       R15 R13 K14 ["showLookSaveMenu"]
      142 JUMP                             ; [+7]
      143 GETUPVAL                         R16 7
      144 CALL                             R16 0 1
      145 JUMPIFNOT                        R16 ; [+3]
      146 GETTABLEKS                       R15 R14 K15 ["canCreateLook"]
      148 JUMP                             ; [+1]
      149 LOADB                            R15 0
      150 LOADB                            R16 1
      151 GETTABLEKS                       R17 R7 K16 ["canUploadBundles"]
      153 JUMPIFEQKNIL                     R17 ; [+9]
      155 GETTABLEKS                       R17 R7 K16 ["canUploadBundles"]
      157 GETTABLEKS                       R17 R17 K0 ["type"]
      159 JUMPIFNOTEQKS                    R17 K17 ["notAllowed"] ; [+2]
      161 LOADB                            R16 0 +1
      162 LOADB                            R16 1
      163 LOADNIL                          R17
      164 LOADNIL                          R18
      165 LOADNIL                          R19
      166 GETUPVAL                         R20 7
      167 CALL                             R20 0 1
      168 JUMPIFNOT                        R20 ; [+15]
      169 GETUPVAL                         R20 1
      170 GETTABLEKS                       R20 R20 K18 ["useState"]
      172 LOADK                            R21 K19 ["Closed"]
      173 CALL                             R20 1 2
      174 MOVE                             R17 R20
      175 MOVE                             R18 R21
      176 LOADB                            R20 1
      177 JUMPIFEQKS                       R17 K20 ["AvatarLook"] ; [+5]
      179 JUMPIFEQKS                       R17 K21 ["MakeupLook"] ; [+2]
      181 LOADB                            R20 0 +1
      182 LOADB                            R20 1
      183 MOVE                             R19 R20
      184 GETUPVAL                         R20 1
      185 GETTABLEKS                       R20 R20 K2 ["createElement"]
      187 GETUPVAL                         R21 18
      188 DUPTABLE                         R22 K25 [{"BackgroundColor", "Size", "ZIndex"}]
      189 GETTABLEKS                       R23 R1 K22 ["BackgroundColor"]
      191 SETTABLEKS                       R23 R22 K22 ["BackgroundColor"]
      193 GETIMPORT                        R23 K27 [UDim2.new]
      195 LOADN                            R24 0
      196 GETTABLEKS                       R25 R1 K28 ["Width"]
      198 LOADN                            R26 1
      199 LOADN                            R27 0
      200 CALL                             R23 4 1
      201 SETTABLEKS                       R23 R22 K23 ["Size"]
      203 LOADN                            R23 2
      204 SETTABLEKS                       R23 R22 K24 ["ZIndex"]
      206 DUPTABLE                         R23 K34 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      207 GETUPVAL                         R24 1
      208 GETTABLEKS                       R24 R24 K2 ["createElement"]
      210 GETUPVAL                         R25 18
      211 DUPTABLE                         R26 K37 [{"Layout", "VerticalAlignment"}]
      212 GETIMPORT                        R27 K41 [Enum.FillDirection.Vertical]
      214 SETTABLEKS                       R27 R26 K35 ["Layout"]
      216 GETIMPORT                        R27 K43 [Enum.VerticalAlignment.Top]
      218 SETTABLEKS                       R27 R26 K36 ["VerticalAlignment"]
      220 DUPTABLE                         R27 K50 [{"Back", "CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      221 GETUPVAL                         R29 19
      222 CALL                             R29 0 1
      223 JUMPIFNOT                        R29 ; [+31]
      224 GETUPVAL                         R28 1
      225 GETTABLEKS                       R28 R28 K2 ["createElement"]
      227 GETUPVAL                         R29 20
      228 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      229 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      231 CALL                             R31 1 1
      232 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      234 GETUPVAL                         R31 21
      235 GETTABLEKS                       R31 R31 K58 ["Enums"]
      237 GETTABLEKS                       R31 R31 K59 ["IconName"]
      239 GETTABLEKS                       R31 R31 K60 ["ArrowCurlToLeft"]
      241 SETTABLEKS                       R31 R30 K52 ["Icon"]
      243 LOADB                            R31 0
      244 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      246 LOADK                            R31 K44 ["Back"]
      247 SETTABLEKS                       R31 R30 K54 ["StageText"]
      249 GETTABLEKS                       R31 R0 K3 ["onBack"]
      251 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      253 CALL                             R28 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R28
      256 SETTABLEKS                       R28 R27 K44 ["Back"]
      258 GETUPVAL                         R28 1
      259 GETTABLEKS                       R28 R28 K2 ["createElement"]
      261 GETUPVAL                         R29 20
      262 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      263 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      265 CALL                             R31 1 1
      266 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      268 LOADK                            R31 K61 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      269 SETTABLEKS                       R31 R30 K52 ["Icon"]
      271 GETTABLEKS                       R32 R0 K62 ["SelectedStage"]
      273 JUMPIFEQKS                       R32 K45 ["CheckBody"] ; [+2]
      275 LOADB                            R31 0 +1
      276 LOADB                            R31 1
      277 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      279 LOADK                            R31 K45 ["CheckBody"]
      280 SETTABLEKS                       R31 R30 K54 ["StageText"]
      282 NEWCLOSURE                       R31 P1
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R0
      285 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K45 ["CheckBody"]
      290 GETUPVAL                         R28 1
      291 GETTABLEKS                       R28 R28 K2 ["createElement"]
      293 GETUPVAL                         R29 20
      294 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      295 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      297 CALL                             R31 1 1
      298 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      300 LOADK                            R31 K63 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      301 SETTABLEKS                       R31 R30 K52 ["Icon"]
      303 GETTABLEKS                       R32 R0 K62 ["SelectedStage"]
      305 JUMPIFEQKS                       R32 K46 ["CheckFace"] ; [+2]
      307 LOADB                            R31 0 +1
      308 LOADB                            R31 1
      309 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      311 LOADK                            R31 K46 ["CheckFace"]
      312 SETTABLEKS                       R31 R30 K54 ["StageText"]
      314 NEWCLOSURE                       R31 P2
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R0
      317 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      319 CALL                             R28 2 1
      320 SETTABLEKS                       R28 R27 K46 ["CheckFace"]
      322 GETUPVAL                         R28 1
      323 GETTABLEKS                       R28 R28 K2 ["createElement"]
      325 GETUPVAL                         R29 20
      326 DUPTABLE                         R30 K56 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      327 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      329 CALL                             R31 1 1
      330 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      332 LOADK                            R31 K64 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      333 SETTABLEKS                       R31 R30 K52 ["Icon"]
      335 LOADB                            R31 0
      336 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      338 LOADK                            R31 K47 ["Test"]
      339 SETTABLEKS                       R31 R30 K54 ["StageText"]
      341 NEWCLOSURE                       R31 P3
      342 CAPTURE                          VAL R4
      343 CAPTURE                          UPVAL U22
      344 CAPTURE                          VAL R6
      345 CAPTURE                          VAL R0
      346 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      348 CALL                             R28 2 1
      349 SETTABLEKS                       R28 R27 K47 ["Test"]
      351 GETUPVAL                         R29 7
      352 CALL                             R29 0 1
      353 JUMPIFNOT                        R29 ; [+119]
      354 JUMPIFNOT                        R15 ; [+118]
      355 JUMPIFEQKNIL                     R10 ; [+117]
      357 GETUPVAL                         R28 1
      358 GETTABLEKS                       R28 R28 K2 ["createElement"]
      360 GETUPVAL                         R29 23
      361 DUPTABLE                         R30 K72 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      362 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      364 CALL                             R31 1 1
      365 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      367 GETTABLEKS                       R31 R10 K11 ["enabled"]
      369 SETTABLEKS                       R31 R30 K65 ["isOpen"]
      371 GETTABLEKS                       R31 R10 K73 ["disable"]
      373 SETTABLEKS                       R31 R30 K66 ["onClose"]
      375 GETTABLEKS                       R31 R10 K74 ["toggle"]
      377 SETTABLEKS                       R31 R30 K67 ["onToggle"]
      379 NEWCLOSURE                       R31 P4
      380 CAPTURE                          VAL R11
      381 SETTABLEKS                       R31 R30 K68 ["onSaveToRoblox"]
      383 GETUPVAL                         R32 15
      384 CALL                             R32 0 1
      385 JUMPIFNOT                        R32 ; [+3]
      386 NEWCLOSURE                       R31 P5
      387 CAPTURE                          REF R18
      388 JUMP                             ; [+1]
      389 LOADNIL                          R31
      390 SETTABLEKS                       R31 R30 K69 ["openAvatarLookComposer"]
      392 NEWCLOSURE                       R31 P6
      393 CAPTURE                          REF R18
      394 SETTABLEKS                       R31 R30 K70 ["openMakeupLookComposer"]
      396 GETUPVAL                         R31 1
      397 GETTABLEKS                       R31 R31 K2 ["createElement"]
      399 GETUPVAL                         R32 20
      400 DUPTABLE                         R33 K78 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      401 LOADK                            R34 K79 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      402 SETTABLEKS                       R34 R33 K52 ["Icon"]
      404 GETTABLEKS                       R34 R10 K11 ["enabled"]
      406 SETTABLEKS                       R34 R33 K53 ["IsSelected"]
      408 LOADB                            R34 1
      409 SETTABLEKS                       R34 R33 K75 ["ShowMenuIndicator"]
      411 LOADK                            R34 K49 ["Publish"]
      412 SETTABLEKS                       R34 R33 K54 ["StageText"]
      414 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      416 JUMPIFEQKNIL                     R35 ; [+33]
      418 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      420 GETTABLEKS                       R35 R35 K0 ["type"]
      422 JUMPIFNOTEQKS                    R35 K17 ["notAllowed"] ; [+27]
      424 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      426 GETTABLEKS                       R35 R35 K80 ["denyReason"]
      428 JUMPIFEQKS                       R35 K81 ["MissingPremiumSubscriptionTier"] ; [+7]
      430 GETTABLEKS                       R35 R7 K16 ["canUploadBundles"]
      432 GETTABLEKS                       R35 R35 K80 ["denyReason"]
      434 JUMPIFNOTEQKS                    R35 K82 ["MissingIdVerification"] ; [+15]
      436 LOADK                            R36 K5 ["StageSelector"]
      437 LOADK                            R38 K83 ["Publish_Deny_%*"]
      438 GETTABLEKS                       R40 R7 K16 ["canUploadBundles"]
      440 GETTABLEKS                       R40 R40 K80 ["denyReason"]
      442 NAMECALL                         R38 R38 K84 ["format"]
      444 CALL                             R38 2 1
      445 MOVE                             R37 R38
      446 NAMECALL                         R34 R2 K85 ["getText"]
      448 CALL                             R34 3 1
      449 JUMP                             ; [+5]
      450 LOADK                            R36 K48 ["LookSaveMenu"]
      451 LOADK                            R37 K86 ["Save"]
      452 NAMECALL                         R34 R2 K85 ["getText"]
      454 CALL                             R34 3 1
      455 SETTABLEKS                       R34 R33 K76 ["Tooltip"]
      457 JUMPIF                           R16 ; [+2]
      458 LOADB                            R34 0
      459 JUMP                             ; [+1]
      460 LOADNIL                          R34
      461 SETTABLEKS                       R34 R33 K77 ["Enabled"]
      463 NEWCLOSURE                       R34 P7
      464 CAPTURE                          VAL R16
      465 CAPTURE                          VAL R10
      466 SETTABLEKS                       R34 R33 K55 ["OnClick"]
      468 CALL                             R31 2 1
      469 SETTABLEKS                       R31 R30 K71 ["anchor"]
      471 CALL                             R28 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R28
      474 SETTABLEKS                       R28 R27 K48 ["LookSaveMenu"]
      476 GETUPVAL                         R29 7
      477 CALL                             R29 0 1
      478 JUMPIFNOT                        R29 ; [+1]
      479 JUMPIF                           R15 ; [+72]
      480 GETUPVAL                         R28 1
      481 GETTABLEKS                       R28 R28 K2 ["createElement"]
      483 GETUPVAL                         R29 20
      484 DUPTABLE                         R30 K87 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      485 NAMECALL                         R31 R3 K57 ["getNextOrder"]
      487 CALL                             R31 1 1
      488 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      490 LOADK                            R31 K79 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      491 SETTABLEKS                       R31 R30 K52 ["Icon"]
      493 LOADB                            R31 0
      494 SETTABLEKS                       R31 R30 K53 ["IsSelected"]
      496 LOADK                            R31 K49 ["Publish"]
      497 SETTABLEKS                       R31 R30 K54 ["StageText"]
      499 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      501 JUMPIFEQKNIL                     R32 ; [+33]
      503 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      505 GETTABLEKS                       R32 R32 K0 ["type"]
      507 JUMPIFNOTEQKS                    R32 K17 ["notAllowed"] ; [+27]
      509 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      511 GETTABLEKS                       R32 R32 K80 ["denyReason"]
      513 JUMPIFEQKS                       R32 K81 ["MissingPremiumSubscriptionTier"] ; [+7]
      515 GETTABLEKS                       R32 R7 K16 ["canUploadBundles"]
      517 GETTABLEKS                       R32 R32 K80 ["denyReason"]
      519 JUMPIFNOTEQKS                    R32 K82 ["MissingIdVerification"] ; [+15]
      521 LOADK                            R33 K5 ["StageSelector"]
      522 LOADK                            R35 K83 ["Publish_Deny_%*"]
      523 GETTABLEKS                       R37 R7 K16 ["canUploadBundles"]
      525 GETTABLEKS                       R37 R37 K80 ["denyReason"]
      527 NAMECALL                         R35 R35 K84 ["format"]
      529 CALL                             R35 2 1
      530 MOVE                             R34 R35
      531 NAMECALL                         R31 R2 K85 ["getText"]
      533 CALL                             R31 3 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R31
      536 SETTABLEKS                       R31 R30 K76 ["Tooltip"]
      538 JUMPIF                           R16 ; [+2]
      539 LOADB                            R31 0
      540 JUMP                             ; [+1]
      541 LOADNIL                          R31
      542 SETTABLEKS                       R31 R30 K77 ["Enabled"]
      544 NEWCLOSURE                       R31 P8
      545 CAPTURE                          VAL R4
      546 CAPTURE                          VAL R12
      547 CAPTURE                          VAL R11
      548 SETTABLEKS                       R31 R30 K55 ["OnClick"]
      550 CALL                             R28 2 1
      551 JUMP                             ; [+1]
      552 LOADNIL                          R28
      553 SETTABLEKS                       R28 R27 K49 ["Publish"]
      555 CALL                             R24 3 1
      556 SETTABLEKS                       R24 R23 K29 ["Contents"]
      558 GETUPVAL                         R24 1
      559 GETTABLEKS                       R24 R24 K2 ["createElement"]
      561 GETUPVAL                         R25 20
      562 DUPTABLE                         R26 K90 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      563 LOADK                            R27 K91 ["rbxassetid://6663675885"]
      564 SETTABLEKS                       R27 R26 K52 ["Icon"]
      566 LOADB                            R27 0
      567 SETTABLEKS                       R27 R26 K53 ["IsSelected"]
      569 LOADK                            R27 K92 ["Settings"]
      570 SETTABLEKS                       R27 R26 K54 ["StageText"]
      572 GETIMPORT                        R27 K94 [Vector2.new]
      574 LOADN                            R28 0
      575 LOADN                            R29 1
      576 CALL                             R27 2 1
      577 SETTABLEKS                       R27 R26 K88 ["AnchorPoint"]
      579 GETIMPORT                        R27 K96 [UDim2.fromScale]
      581 LOADN                            R28 0
      582 LOADN                            R29 1
      583 CALL                             R27 2 1
      584 SETTABLEKS                       R27 R26 K89 ["Position"]
      586 GETTABLEKS                       R27 R9 K97 ["enable"]
      588 SETTABLEKS                       R27 R26 K55 ["OnClick"]
      590 CALL                             R24 2 1
      591 SETTABLEKS                       R24 R23 K30 ["SettingsButton"]
      593 GETTABLEKS                       R24 R9 K11 ["enabled"]
      595 JUMPIFNOT                        R24 ; [+17]
      596 GETUPVAL                         R24 1
      597 GETTABLEKS                       R24 R24 K2 ["createElement"]
      599 GETUPVAL                         R25 24
      600 DUPTABLE                         R26 K100 [{"type", "avatar", "close"}]
      601 LOADK                            R27 K98 ["avatar"]
      602 SETTABLEKS                       R27 R26 K0 ["type"]
      604 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      606 SETTABLEKS                       R27 R26 K98 ["avatar"]
      608 GETTABLEKS                       R27 R9 K73 ["disable"]
      610 SETTABLEKS                       R27 R26 K99 ["close"]
      612 CALL                             R24 2 1
      613 SETTABLEKS                       R24 R23 K31 ["SettingsMenu"]
      615 GETTABLEKS                       R24 R11 K11 ["enabled"]
      617 JUMPIFNOT                        R24 ; [+14]
      618 GETUPVAL                         R24 1
      619 GETTABLEKS                       R24 R24 K2 ["createElement"]
      621 GETUPVAL                         R25 25
      622 DUPTABLE                         R26 K101 [{"close", "avatar"}]
      623 GETTABLEKS                       R27 R11 K73 ["disable"]
      625 SETTABLEKS                       R27 R26 K99 ["close"]
      627 GETTABLEKS                       R27 R0 K12 ["Avatar"]
      629 SETTABLEKS                       R27 R26 K98 ["avatar"]
      631 CALL                             R24 2 1
      632 SETTABLEKS                       R24 R23 K32 ["SubmitDialog"]
      634 GETUPVAL                         R24 7
      635 CALL                             R24 0 1
      636 JUMPIFNOT                        R24 ; [+160]
      637 MOVE                             R24 R19
      638 JUMPIFNOT                        R24 ; [+158]
      639 GETUPVAL                         R24 1
      640 GETTABLEKS                       R24 R24 K2 ["createElement"]
      642 GETUPVAL                         R25 26
      643 DUPTABLE                         R26 K105 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      644 SETTABLEKS                       R17 R26 K102 ["dialogLookType"]
      646 GETTABLEKS                       R27 R5 K103 ["equippedItems"]
      648 SETTABLEKS                       R27 R26 K103 ["equippedItems"]
      650 GETUPVAL                         R28 15
      651 CALL                             R28 0 1
      652 JUMPIFNOT                        R28 ; [+136]
      653 JUMPIFNOTEQKS                    R17 K20 ["AvatarLook"] ; [+135]
      655 DUPTABLE                         R27 K112 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      656 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      658 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      660 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      662 LOADK                            R32 K114 ["BodyTypeScale"]
      663 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      665 CALL                             R30 2 1
      666 JUMPIFNOT                        R30 ; [+8]
      667 LOADK                            R33 K116 ["NumberValue"]
      668 NAMECALL                         R31 R30 K117 ["IsA"]
      670 CALL                             R31 2 1
      671 JUMPIFNOT                        R31 ; [+3]
      672 GETTABLEKS                       R28 R30 K118 ["Value"]
      674 JUMP                             ; [+1]
      675 LOADN                            R28 1
      676 SETTABLEKS                       R28 R27 K106 ["bodyType"]
      678 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      680 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      682 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      684 LOADK                            R32 K119 ["BodyDepthScale"]
      685 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      687 CALL                             R30 2 1
      688 JUMPIFNOT                        R30 ; [+8]
      689 LOADK                            R33 K116 ["NumberValue"]
      690 NAMECALL                         R31 R30 K117 ["IsA"]
      692 CALL                             R31 2 1
      693 JUMPIFNOT                        R31 ; [+3]
      694 GETTABLEKS                       R28 R30 K118 ["Value"]
      696 JUMP                             ; [+1]
      697 LOADN                            R28 1
      698 SETTABLEKS                       R28 R27 K107 ["depth"]
      700 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      702 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      704 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      706 LOADK                            R32 K120 ["HeadScale"]
      707 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      709 CALL                             R30 2 1
      710 JUMPIFNOT                        R30 ; [+8]
      711 LOADK                            R33 K116 ["NumberValue"]
      712 NAMECALL                         R31 R30 K117 ["IsA"]
      714 CALL                             R31 2 1
      715 JUMPIFNOT                        R31 ; [+3]
      716 GETTABLEKS                       R28 R30 K118 ["Value"]
      718 JUMP                             ; [+1]
      719 LOADN                            R28 1
      720 SETTABLEKS                       R28 R27 K108 ["head"]
      722 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      724 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      726 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      728 LOADK                            R32 K121 ["BodyHeightScale"]
      729 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      731 CALL                             R30 2 1
      732 JUMPIFNOT                        R30 ; [+8]
      733 LOADK                            R33 K116 ["NumberValue"]
      734 NAMECALL                         R31 R30 K117 ["IsA"]
      736 CALL                             R31 2 1
      737 JUMPIFNOT                        R31 ; [+3]
      738 GETTABLEKS                       R28 R30 K118 ["Value"]
      740 JUMP                             ; [+1]
      741 LOADN                            R28 1
      742 SETTABLEKS                       R28 R27 K109 ["height"]
      744 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      746 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      748 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      750 LOADK                            R32 K122 ["BodyProportionScale"]
      751 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      753 CALL                             R30 2 1
      754 JUMPIFNOT                        R30 ; [+8]
      755 LOADK                            R33 K116 ["NumberValue"]
      756 NAMECALL                         R31 R30 K117 ["IsA"]
      758 CALL                             R31 2 1
      759 JUMPIFNOT                        R31 ; [+3]
      760 GETTABLEKS                       R28 R30 K118 ["Value"]
      762 JUMP                             ; [+1]
      763 LOADN                            R28 1
      764 SETTABLEKS                       R28 R27 K110 ["proportion"]
      766 GETTABLEKS                       R29 R0 K12 ["Avatar"]
      768 GETTABLEKS                       R29 R29 K13 ["WorldModel"]
      770 GETTABLEKS                       R29 R29 K113 ["Humanoid"]
      772 LOADK                            R32 K123 ["BodyWidthScale"]
      773 NAMECALL                         R30 R29 K115 ["FindFirstChild"]
      775 CALL                             R30 2 1
      776 JUMPIFNOT                        R30 ; [+8]
      777 LOADK                            R33 K116 ["NumberValue"]
      778 NAMECALL                         R31 R30 K117 ["IsA"]
      780 CALL                             R31 2 1
      781 JUMPIFNOT                        R31 ; [+3]
      782 GETTABLEKS                       R28 R30 K118 ["Value"]
      784 JUMP                             ; [+1]
      785 LOADN                            R28 1
      786 SETTABLEKS                       R28 R27 K111 ["width"]
      788 JUMP                             ; [+1]
      789 LOADNIL                          R27
      790 SETTABLEKS                       R27 R26 K104 ["bodyScale"]
      792 NEWCLOSURE                       R27 P9
      793 CAPTURE                          REF R18
      794 SETTABLEKS                       R27 R26 K66 ["onClose"]
      796 CALL                             R24 2 1
      797 SETTABLEKS                       R24 R23 K33 ["LookComposerDialog"]
      799 CALL                             R20 3 -1
      800 CLOSEUPVALS                      R18
      801 RETURN                           R20 -1

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
      189 GETTABLEKS                       R22 R22 K34 ["getFFlagAvatarAutosetupOptionsInput"]
      191 CALL                             R21 1 1
      192 GETIMPORT                        R22 K5 [require]
      194 GETTABLEKS                       R23 R0 K10 ["Src"]
      196 GETTABLEKS                       R23 R23 K33 ["Flags"]
      198 GETTABLEKS                       R23 R23 K35 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      200 CALL                             R22 1 1
      201 GETIMPORT                        R23 K5 [require]
      203 GETTABLEKS                       R24 R0 K10 ["Src"]
      205 GETTABLEKS                       R24 R24 K33 ["Flags"]
      207 GETTABLEKS                       R24 R24 K36 ["getFFlagAvatarPreviewerLookComposer"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R25 R0 K10 ["Src"]
      214 GETTABLEKS                       R25 R25 K33 ["Flags"]
      216 GETTABLEKS                       R25 R25 K37 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      218 CALL                             R24 1 1
      219 GETIMPORT                        R25 K5 [require]
      221 GETTABLEKS                       R26 R0 K10 ["Src"]
      223 GETTABLEKS                       R26 R26 K33 ["Flags"]
      225 GETTABLEKS                       R26 R26 K38 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      227 CALL                             R25 1 1
      228 GETTABLEKS                       R26 R1 K39 ["UI"]
      230 GETTABLEKS                       R27 R26 K40 ["Pane"]
      232 GETTABLEKS                       R28 R1 K14 ["Util"]
      234 GETTABLEKS                       R28 R28 K41 ["LayoutOrderIterator"]
      236 GETTABLEKS                       R29 R1 K42 ["ContextServices"]
      238 GETTABLEKS                       R29 R29 K43 ["Analytics"]
      240 GETTABLEKS                       R30 R1 K42 ["ContextServices"]
      242 GETTABLEKS                       R30 R30 K44 ["Localization"]
      244 GETTABLEKS                       R31 R1 K42 ["ContextServices"]
      246 GETTABLEKS                       R31 R31 K45 ["Stylizer"]
      248 DUPCLOSURE                       R32 K46 [PROTO_0]
      249 DUPCLOSURE                       R33 K47 [PROTO_11]
      250 CAPTURE                          VAL R21
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R31
      254 CAPTURE                          VAL R30
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R8
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R12
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R6
      273 CAPTURE                          VAL R16
      274 CAPTURE                          VAL R10
      275 CAPTURE                          VAL R18
      276 CAPTURE                          VAL R20
      277 RETURN                           R33 1
