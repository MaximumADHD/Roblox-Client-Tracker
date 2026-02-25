PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDialogOpen"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDialogOpen"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["avatarAssets"]
        7 GETTABLEKS                       R0 R1 K2 ["skinTone"]
        9 JUMPIF                           R0 ; [+1]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K3 ["setSkinColor"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K4 [{"id", "text", "creatorType", "creatorId"}]
        3 LOADK                            R3 K5 ["user_"]
        4 GETUPVAL                         R5 0
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K7 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 SETTABLEKS                       R2 R1 K0 ["id"]
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K8 ["LookComposerDialog"]
       14 LOADK                            R5 K9 ["Me"]
       15 NAMECALL                         R2 R2 K10 ["getText"]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K1 ["text"]
       20 LOADK                            R2 K11 ["User"]
       21 SETTABLEKS                       R2 R1 K2 ["creatorType"]
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R2 R1 K3 ["creatorId"]
       26 SETLIST                          R0 R1 1 [1]
       28 GETUPVAL                         R1 2
       29 LOADNIL                          R2
       30 LOADNIL                          R3
       31 FORGPREP                         R1
       32 DUPTABLE                         R8 K4 [{"id", "text", "creatorType", "creatorId"}]
       33 LOADK                            R10 K12 ["group_"]
       34 GETTABLEKS                       R12 R5 K0 ["id"]
       36 FASTCALL1                        TOSTRING R12 ; [+2]
       37 GETIMPORT                        R11 K7 [tostring]
       39 CALL                             R11 1 1
       40 CONCAT                           R9 R10 R11
       41 SETTABLEKS                       R9 R8 K0 ["id"]
       43 GETTABLEKS                       R9 R5 K13 ["name"]
       45 SETTABLEKS                       R9 R8 K1 ["text"]
       47 LOADK                            R9 K14 ["Group"]
       48 SETTABLEKS                       R9 R8 K2 ["creatorType"]
       50 GETTABLEKS                       R9 R5 K0 ["id"]
       52 SETTABLEKS                       R9 R8 K3 ["creatorId"]
       54 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       56 MOVE                             R7 R0
       57 GETIMPORT                        R6 K17 [table.insert]
       59 CALL                             R6 2 0
       60 FORGLOOP                         R1 2 ; [-29]
       62 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setSkinColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDialogOpen"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["dialogLookType"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K2 ["createElement"]
       14 GETUPVAL                         R1 2
       15 DUPTABLE                         R2 K7 [{"key", "dummy", "makeupWorldModel", "makeupSkinColor"}]
       16 LOADK                            R3 K8 ["SharedLookPreview"]
       17 SETTABLEKS                       R3 R2 K3 ["key"]
       19 GETUPVAL                         R3 3
       20 SETTABLEKS                       R3 R2 K4 ["dummy"]
       22 GETUPVAL                         R3 4
       23 SETTABLEKS                       R3 R2 K5 ["makeupWorldModel"]
       25 GETUPVAL                         R3 5
       26 SETTABLEKS                       R3 R2 K6 ["makeupSkinColor"]
       28 CALL                             R0 2 -1
       29 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["use"]
        7 CALL                             R1 0 1
        8 NAMECALL                         R1 R1 K1 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K0 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K2 ["useContext"]
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R4 R5 K3 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K2 ["useContext"]
       25 GETUPVAL                         R5 5
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R0 ; [+3]
       28 GETTABLEKS                       R5 R0 K4 ["dummy"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R6 R7 K5 ["useState"]
       35 LOADNIL                          R7
       36 CALL                             R6 1 2
       37 LOADN                            R9 0
       38 GETIMPORT                        R10 K7 [pcall]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          REF R9
       42 CAPTURE                          UPVAL U6
       43 CALL                             R10 1 0
       44 MOVE                             R8 R9
       45 CLOSEUPVALS                      R9
       46 GETUPVAL                         R9 7
       47 CALL                             R9 0 1
       48 LOADK                            R11 K8 ["user_"]
       49 FASTCALL1                        TOSTRING R8 ; [+3]
       50 MOVE                             R13 R8
       51 GETIMPORT                        R12 K10 [tostring]
       53 CALL                             R12 1 1
       54 CONCAT                           R10 R11 R12
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R11 R12 K5 ["useState"]
       58 MOVE                             R12 R10
       59 CALL                             R11 1 2
       60 GETUPVAL                         R14 3
       61 GETTABLEKS                       R13 R14 K11 ["useEffect"]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R10
       67 NEWTABLE                         R15 0 3
       69 GETTABLEKS                       R16 R3 K12 ["isDialogOpen"]
       71 GETTABLEKS                       R17 R3 K13 ["dialogLookType"]
       73 MOVE                             R18 R10
       74 SETLIST                          R15 R16 3 [1]
       76 CALL                             R13 2 0
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R13 R14 K11 ["useEffect"]
       80 NEWCLOSURE                       R14 P2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U8
       84 NEWTABLE                         R15 0 3
       86 GETTABLEKS                       R16 R3 K12 ["isDialogOpen"]
       88 GETTABLEKS                       R17 R3 K13 ["dialogLookType"]
       90 GETTABLEKS                       R19 R4 K14 ["avatarAssets"]
       92 GETTABLEKS                       R18 R19 K15 ["skinTone"]
       94 SETLIST                          R15 R16 3 [1]
       96 CALL                             R13 2 0
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R13 R14 K16 ["useMemo"]
      100 NEWCLOSURE                       R14 P3
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R9
      104 NEWTABLE                         R15 0 3
      106 MOVE                             R16 R8
      107 MOVE                             R17 R2
      108 MOVE                             R18 R9
      109 SETLIST                          R15 R16 3 [1]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R15 3
      113 GETTABLEKS                       R14 R15 K17 ["useCallback"]
      115 NEWCLOSURE                       R15 P4
      116 CAPTURE                          VAL R12
      117 NEWTABLE                         R16 0 0
      119 CALL                             R14 2 1
      120 GETUPVAL                         R16 3
      121 GETTABLEKS                       R15 R16 K17 ["useCallback"]
      123 NEWCLOSURE                       R16 P5
      124 CAPTURE                          VAL R3
      125 NEWTABLE                         R17 0 1
      127 GETTABLEKS                       R18 R3 K18 ["setSkinColor"]
      129 SETLIST                          R17 R18 1 [1]
      131 CALL                             R15 2 1
      132 GETUPVAL                         R17 3
      133 GETTABLEKS                       R16 R17 K5 ["useState"]
      135 LOADNIL                          R17
      136 CALL                             R16 1 2
      137 GETTABLEKS                       R18 R3 K19 ["skinColor"]
      139 JUMPIF                           R18 ; [+3]
      140 GETUPVAL                         R19 9
      141 GETTABLEKS                       R18 R19 K20 ["DEFAULT_SKIN_COLOR"]
      143 GETUPVAL                         R19 10
      144 DUPTABLE                         R20 K24 [{"makeupItems", "skinColor", "worldModel", "setWorldModel"}]
      145 GETTABLEKS                       R21 R3 K25 ["dialogItems"]
      147 SETTABLEKS                       R21 R20 K21 ["makeupItems"]
      149 SETTABLEKS                       R18 R20 K19 ["skinColor"]
      151 SETTABLEKS                       R16 R20 K22 ["worldModel"]
      153 SETTABLEKS                       R17 R20 K23 ["setWorldModel"]
      155 CALL                             R19 1 0
      156 GETUPVAL                         R20 3
      157 GETTABLEKS                       R19 R20 K16 ["useMemo"]
      159 NEWCLOSURE                       R20 P6
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U3
      162 CAPTURE                          UPVAL U11
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R18
      166 NEWTABLE                         R21 0 5
      168 GETTABLEKS                       R22 R3 K12 ["isDialogOpen"]
      170 GETTABLEKS                       R23 R3 K13 ["dialogLookType"]
      172 MOVE                             R24 R5
      173 MOVE                             R25 R16
      174 MOVE                             R26 R18
      175 SETLIST                          R21 R22 5 [1]
      177 CALL                             R19 2 1
      178 GETTABLEKS                       R20 R3 K12 ["isDialogOpen"]
      180 JUMPIFNOT                        R20 ; [+4]
      181 GETTABLEKS                       R20 R3 K13 ["dialogLookType"]
      183 JUMPIFNOTEQKNIL                  R20 ; [+3]
      185 LOADNIL                          R20
      186 RETURN                           R20 1
      187 GETTABLEKS                       R20 R3 K13 ["dialogLookType"]
      189 GETUPVAL                         R22 12
      190 GETTABLE                         R21 R22 R20
      191 GETTABLEKS                       R23 R3 K26 ["dialogStage"]
      193 JUMPIFEQKS                       R23 K27 ["Success"] ; [+2]
      195 LOADB                            R22 0 +1
      196 LOADB                            R22 1
      197 GETTABLEKS                       R24 R3 K26 ["dialogStage"]
      199 JUMPIFEQKS                       R24 K28 ["Failure"] ; [+2]
      201 LOADB                            R23 0 +1
      202 LOADB                            R23 1
      203 GETTABLEKS                       R25 R3 K26 ["dialogStage"]
      205 JUMPIFEQKS                       R25 K29 ["ConfirmItems"] ; [+2]
      207 LOADB                            R24 0 +1
      208 LOADB                            R24 1
      209 OR                               R25 R22 R23
      210 LOADNIL                          R26
      211 JUMPIFNOT                        R24 ; [+78]
      212 GETUPVAL                         R28 13
      213 GETTABLEKS                       R27 R28 K30 ["new"]
      215 CALL                             R27 0 1
      216 GETUPVAL                         R29 3
      217 GETTABLEKS                       R28 R29 K31 ["createElement"]
      219 GETUPVAL                         R29 14
      220 DUPTABLE                         R30 K33 [{"tag"}]
      221 LOADK                            R31 K34 ["col gap-medium size-full-0 auto-y padding-large"]
      222 SETTABLEKS                       R31 R30 K32 ["tag"]
      224 DUPTABLE                         R31 K37 [{"InfoEntry", "LookDetails"}]
      225 GETUPVAL                         R33 3
      226 GETTABLEKS                       R32 R33 K31 ["createElement"]
      228 GETUPVAL                         R33 15
      229 DUPTABLE                         R34 K47 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "totalPrice", "isAvatarLook", "skinColor", "onSkinColorChanged", "bodyColor", "lookPreview"}]
      230 NAMECALL                         R35 R27 K48 ["getNextOrder"]
      232 CALL                             R35 1 1
      233 SETTABLEKS                       R35 R34 K38 ["LayoutOrder"]
      235 SETTABLEKS                       R11 R34 K39 ["selectedCreatorId"]
      237 SETTABLEKS                       R13 R34 K40 ["creators"]
      239 SETTABLEKS                       R14 R34 K41 ["onCreatorChanged"]
      241 LOADN                            R35 194
      242 SETTABLEKS                       R35 R34 K42 ["totalPrice"]
      244 JUMPIFEQKS                       R20 K49 ["AvatarLook"] ; [+2]
      246 LOADB                            R35 0 +1
      247 LOADB                            R35 1
      248 SETTABLEKS                       R35 R34 K43 ["isAvatarLook"]
      250 GETTABLEKS                       R35 R3 K19 ["skinColor"]
      252 SETTABLEKS                       R35 R34 K19 ["skinColor"]
      254 SETTABLEKS                       R15 R34 K44 ["onSkinColorChanged"]
      256 JUMPIFNOTEQKS                    R20 K49 ["AvatarLook"] ; [+4]
      258 GETTABLEKS                       R35 R3 K19 ["skinColor"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R35
      262 SETTABLEKS                       R35 R34 K45 ["bodyColor"]
      264 SETTABLEKS                       R19 R34 K46 ["lookPreview"]
      266 CALL                             R32 2 1
      267 SETTABLEKS                       R32 R31 K35 ["InfoEntry"]
      269 GETUPVAL                         R33 3
      270 GETTABLEKS                       R32 R33 K31 ["createElement"]
      272 GETUPVAL                         R33 16
      273 DUPTABLE                         R34 K51 [{"LayoutOrder", "lookType", "skinColor"}]
      274 NAMECALL                         R35 R27 K48 ["getNextOrder"]
      276 CALL                             R35 1 1
      277 SETTABLEKS                       R35 R34 K38 ["LayoutOrder"]
      279 SETTABLEKS                       R20 R34 K50 ["lookType"]
      281 GETTABLEKS                       R35 R3 K19 ["skinColor"]
      283 SETTABLEKS                       R35 R34 K19 ["skinColor"]
      285 CALL                             R32 2 1
      286 SETTABLEKS                       R32 R31 K36 ["LookDetails"]
      288 CALL                             R28 3 1
      289 MOVE                             R26 R28
      290 GETTABLEKS                       R27 R3 K26 ["dialogStage"]
      292 JUMPIFNOTEQKS                    R27 K52 ["EditInfo"] ; [+42]
      294 LOADNIL                          R27
      295 JUMPIFNOTEQKS                    R20 K49 ["AvatarLook"] ; [+14]
      297 GETTABLEKS                       R28 R3 K19 ["skinColor"]
      299 JUMPIFNOT                        R28 ; [+10]
      300 DUPTABLE                         R28 K53 [{"lookType", "bodyColor"}]
      301 LOADK                            R29 K49 ["AvatarLook"]
      302 SETTABLEKS                       R29 R28 K50 ["lookType"]
      304 GETTABLEKS                       R29 R3 K19 ["skinColor"]
      306 SETTABLEKS                       R29 R28 K45 ["bodyColor"]
      308 MOVE                             R27 R28
      309 JUMP                             ; [+14]
      310 JUMPIFNOTEQKS                    R20 K54 ["MakeupLook"] ; [+13]
      312 GETTABLEKS                       R28 R3 K19 ["skinColor"]
      314 JUMPIFNOT                        R28 ; [+9]
      315 DUPTABLE                         R28 K55 [{"lookType", "skinColor"}]
      316 LOADK                            R29 K54 ["MakeupLook"]
      317 SETTABLEKS                       R29 R28 K50 ["lookType"]
      319 GETTABLEKS                       R29 R3 K19 ["skinColor"]
      321 SETTABLEKS                       R29 R28 K19 ["skinColor"]
      323 MOVE                             R27 R28
      324 GETUPVAL                         R29 3
      325 GETTABLEKS                       R28 R29 K31 ["createElement"]
      327 GETUPVAL                         R29 17
      328 DUPTABLE                         R30 K57 [{"lookPreviewInfo", "lookPreview"}]
      329 SETTABLEKS                       R27 R30 K56 ["lookPreviewInfo"]
      331 SETTABLEKS                       R19 R30 K46 ["lookPreview"]
      333 CALL                             R28 2 1
      334 MOVE                             R26 R28
      335 GETUPVAL                         R28 13
      336 GETTABLEKS                       R27 R28 K30 ["new"]
      338 CALL                             R27 0 1
      339 GETUPVAL                         R29 13
      340 GETTABLEKS                       R28 R29 K30 ["new"]
      342 CALL                             R28 0 1
      343 GETUPVAL                         R30 3
      344 GETTABLEKS                       R29 R30 K31 ["createElement"]
      346 GETUPVAL                         R30 14
      347 DUPTABLE                         R31 K33 [{"tag"}]
      348 LOADK                            R32 K58 ["col size-full"]
      349 SETTABLEKS                       R32 R31 K32 ["tag"]
      351 DUPTABLE                         R32 K64 [{"Header", "ScrollableContentWrapper", "SuccessContentWrapper", "FailureContentWrapper", "BottomBar"}]
      352 GETUPVAL                         R34 3
      353 GETTABLEKS                       R33 R34 K31 ["createElement"]
      355 GETUPVAL                         R34 14
      356 DUPTABLE                         R35 K65 [{"tag", "LayoutOrder"}]
      357 LOADK                            R36 K66 ["col align-x-left align-y-top size-full-0 auto-y gap-medium padding-large"]
      358 SETTABLEKS                       R36 R35 K32 ["tag"]
      360 NAMECALL                         R36 R27 K48 ["getNextOrder"]
      362 CALL                             R36 1 1
      363 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      365 DUPTABLE                         R36 K71 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      366 GETUPVAL                         R38 3
      367 GETTABLEKS                       R37 R38 K31 ["createElement"]
      369 GETUPVAL                         R38 18
      370 DUPTABLE                         R39 K73 [{"Text", "tag", "LayoutOrder"}]
      371 LOADK                            R42 K74 ["LookComposerDialog"]
      372 GETTABLEKS                       R43 R21 K75 ["title"]
      374 NAMECALL                         R40 R2 K76 ["getText"]
      376 CALL                             R40 3 1
      377 SETTABLEKS                       R40 R39 K72 ["Text"]
      379 LOADK                            R40 K77 ["text-heading-small auto-xy content-default"]
      380 SETTABLEKS                       R40 R39 K32 ["tag"]
      382 NAMECALL                         R40 R28 K48 ["getNextOrder"]
      384 CALL                             R40 1 1
      385 SETTABLEKS                       R40 R39 K38 ["LayoutOrder"]
      387 CALL                             R37 2 1
      388 SETTABLEKS                       R37 R36 K67 ["Title"]
      390 JUMPIF                           R25 ; [+23]
      391 GETUPVAL                         R38 3
      392 GETTABLEKS                       R37 R38 K31 ["createElement"]
      394 GETUPVAL                         R38 18
      395 DUPTABLE                         R39 K73 [{"Text", "tag", "LayoutOrder"}]
      396 LOADK                            R42 K74 ["LookComposerDialog"]
      397 GETTABLEKS                       R43 R21 K78 ["description"]
      399 NAMECALL                         R40 R2 K76 ["getText"]
      401 CALL                             R40 3 1
      402 SETTABLEKS                       R40 R39 K72 ["Text"]
      404 LOADK                            R40 K79 ["text-body-medium auto-xy content-default"]
      405 SETTABLEKS                       R40 R39 K32 ["tag"]
      407 NAMECALL                         R40 R28 K48 ["getNextOrder"]
      409 CALL                             R40 1 1
      410 SETTABLEKS                       R40 R39 K38 ["LayoutOrder"]
      412 CALL                             R37 2 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R37
      415 SETTABLEKS                       R37 R36 K68 ["Description"]
      417 JUMPIF                           R25 ; [+23]
      418 GETUPVAL                         R38 3
      419 GETTABLEKS                       R37 R38 K31 ["createElement"]
      421 GETUPVAL                         R38 14
      422 DUPTABLE                         R39 K65 [{"tag", "LayoutOrder"}]
      423 LOADK                            R40 K80 ["size-full-0 auto-y padding-top-xlarge"]
      424 SETTABLEKS                       R40 R39 K32 ["tag"]
      426 NAMECALL                         R40 R28 K48 ["getNextOrder"]
      428 CALL                             R40 1 1
      429 SETTABLEKS                       R40 R39 K38 ["LayoutOrder"]
      431 DUPTABLE                         R40 K82 [{"StageInfoBar"}]
      432 GETUPVAL                         R42 3
      433 GETTABLEKS                       R41 R42 K31 ["createElement"]
      435 GETUPVAL                         R42 19
      436 CALL                             R41 1 1
      437 SETTABLEKS                       R41 R40 K81 ["StageInfoBar"]
      439 CALL                             R37 3 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R37
      442 SETTABLEKS                       R37 R36 K69 ["StageInfoBarWrapper"]
      444 JUMPIFNOT                        R24 ; [+23]
      445 GETUPVAL                         R38 3
      446 GETTABLEKS                       R37 R38 K31 ["createElement"]
      448 GETUPVAL                         R38 14
      449 DUPTABLE                         R39 K65 [{"tag", "LayoutOrder"}]
      450 LOADK                            R40 K83 ["size-full-0 auto-y padding-top-medium"]
      451 SETTABLEKS                       R40 R39 K32 ["tag"]
      453 NAMECALL                         R40 R28 K48 ["getNextOrder"]
      455 CALL                             R40 1 1
      456 SETTABLEKS                       R40 R39 K38 ["LayoutOrder"]
      458 DUPTABLE                         R40 K85 [{"ErrorBanner"}]
      459 GETUPVAL                         R42 3
      460 GETTABLEKS                       R41 R42 K31 ["createElement"]
      462 GETUPVAL                         R42 20
      463 CALL                             R41 1 1
      464 SETTABLEKS                       R41 R40 K84 ["ErrorBanner"]
      466 CALL                             R37 3 1
      467 JUMP                             ; [+1]
      468 LOADNIL                          R37
      469 SETTABLEKS                       R37 R36 K70 ["ErrorBannerWrapper"]
      471 CALL                             R33 3 1
      472 SETTABLEKS                       R33 R32 K59 ["Header"]
      474 JUMPIF                           R25 ; [+30]
      475 GETUPVAL                         R34 3
      476 GETTABLEKS                       R33 R34 K31 ["createElement"]
      478 GETUPVAL                         R34 14
      479 DUPTABLE                         R35 K65 [{"tag", "LayoutOrder"}]
      480 LOADK                            R36 K86 ["size-full-0 grow"]
      481 SETTABLEKS                       R36 R35 K32 ["tag"]
      483 NAMECALL                         R36 R27 K48 ["getNextOrder"]
      485 CALL                             R36 1 1
      486 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      488 DUPTABLE                         R36 K88 [{"ScrollableContent"}]
      489 GETUPVAL                         R38 3
      490 GETTABLEKS                       R37 R38 K31 ["createElement"]
      492 GETUPVAL                         R38 21
      493 DUPTABLE                         R39 K33 [{"tag"}]
      494 LOADK                            R40 K89 ["size-full"]
      495 SETTABLEKS                       R40 R39 K32 ["tag"]
      497 DUPTABLE                         R40 K91 [{"StageContent"}]
      498 SETTABLEKS                       R26 R40 K90 ["StageContent"]
      500 CALL                             R37 3 1
      501 SETTABLEKS                       R37 R36 K87 ["ScrollableContent"]
      503 CALL                             R33 3 1
      504 JUMP                             ; [+1]
      505 LOADNIL                          R33
      506 SETTABLEKS                       R33 R32 K60 ["ScrollableContentWrapper"]
      508 JUMPIFNOT                        R22 ; [+26]
      509 GETUPVAL                         R34 3
      510 GETTABLEKS                       R33 R34 K31 ["createElement"]
      512 GETUPVAL                         R34 14
      513 DUPTABLE                         R35 K65 [{"tag", "LayoutOrder"}]
      514 LOADK                            R36 K86 ["size-full-0 grow"]
      515 SETTABLEKS                       R36 R35 K32 ["tag"]
      517 NAMECALL                         R36 R27 K48 ["getNextOrder"]
      519 CALL                             R36 1 1
      520 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      522 DUPTABLE                         R36 K93 [{"SuccessContent"}]
      523 GETUPVAL                         R38 3
      524 GETTABLEKS                       R37 R38 K31 ["createElement"]
      526 GETUPVAL                         R38 22
      527 DUPTABLE                         R39 K94 [{"lookPreview"}]
      528 SETTABLEKS                       R19 R39 K46 ["lookPreview"]
      530 CALL                             R37 2 1
      531 SETTABLEKS                       R37 R36 K92 ["SuccessContent"]
      533 CALL                             R33 3 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R33
      536 SETTABLEKS                       R33 R32 K61 ["SuccessContentWrapper"]
      538 JUMPIFNOT                        R23 ; [+25]
      539 GETUPVAL                         R34 3
      540 GETTABLEKS                       R33 R34 K31 ["createElement"]
      542 GETUPVAL                         R34 14
      543 DUPTABLE                         R35 K65 [{"tag", "LayoutOrder"}]
      544 LOADK                            R36 K86 ["size-full-0 grow"]
      545 SETTABLEKS                       R36 R35 K32 ["tag"]
      547 NAMECALL                         R36 R27 K48 ["getNextOrder"]
      549 CALL                             R36 1 1
      550 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      552 DUPTABLE                         R36 K96 [{"FailureContent"}]
      553 GETUPVAL                         R38 3
      554 GETTABLEKS                       R37 R38 K31 ["createElement"]
      556 GETUPVAL                         R38 23
      557 NEWTABLE                         R39 0 0
      559 CALL                             R37 2 1
      560 SETTABLEKS                       R37 R36 K95 ["FailureContent"]
      562 CALL                             R33 3 1
      563 JUMP                             ; [+1]
      564 LOADNIL                          R33
      565 SETTABLEKS                       R33 R32 K62 ["FailureContentWrapper"]
      567 GETUPVAL                         R34 3
      568 GETTABLEKS                       R33 R34 K31 ["createElement"]
      570 GETUPVAL                         R34 24
      571 DUPTABLE                         R35 K97 [{"LayoutOrder"}]
      572 NAMECALL                         R36 R27 K48 ["getNextOrder"]
      574 CALL                             R36 1 1
      575 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      577 CALL                             R33 2 1
      578 SETTABLEKS                       R33 R32 K63 ["BottomBar"]
      580 CALL                             R29 3 1
      581 GETUPVAL                         R31 3
      582 GETTABLEKS                       R30 R31 K31 ["createElement"]
      584 GETUPVAL                         R32 25
      585 GETTABLEKS                       R31 R32 K98 ["Dialog"]
      587 DUPTABLE                         R32 K104 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
      588 LOADK                            R33 K105 [""]
      589 SETTABLEKS                       R33 R32 K67 ["Title"]
      591 GETIMPORT                        R33 K107 [Vector2.new]
      593 LOADN                            R34 32
      594 LOADN                            R35 88
      595 CALL                             R33 2 1
      596 SETTABLEKS                       R33 R32 K99 ["MinContentSize"]
      598 GETIMPORT                        R33 K107 [Vector2.new]
      600 LOADN                            R34 32
      601 LOADN                            R35 88
      602 CALL                             R33 2 1
      603 SETTABLEKS                       R33 R32 K100 ["Size"]
      605 LOADB                            R33 1
      606 SETTABLEKS                       R33 R32 K101 ["Modal"]
      608 GETTABLEKS                       R33 R3 K108 ["closeDialog"]
      610 SETTABLEKS                       R33 R32 K102 ["OnClose"]
      612 LOADB                            R33 1
      613 SETTABLEKS                       R33 R32 K103 ["Enabled"]
      615 DUPTABLE                         R33 K110 [{"OverlayProviderWrapper"}]
      616 GETUPVAL                         R35 3
      617 GETTABLEKS                       R34 R35 K31 ["createElement"]
      619 GETUPVAL                         R35 26
      620 DUPTABLE                         R36 K112 [{"gui"}]
      621 SETTABLEKS                       R6 R36 K111 ["gui"]
      623 DUPTABLE                         R37 K116 [{"StyleLink", "MainContainer", "Overlay"}]
      624 GETUPVAL                         R39 3
      625 GETTABLEKS                       R38 R39 K31 ["createElement"]
      627 LOADK                            R39 K113 ["StyleLink"]
      628 DUPTABLE                         R40 K118 [{"StyleSheet"}]
      629 SETTABLEKS                       R1 R40 K117 ["StyleSheet"]
      631 CALL                             R38 2 1
      632 SETTABLEKS                       R38 R37 K113 ["StyleLink"]
      634 SETTABLEKS                       R29 R37 K114 ["MainContainer"]
      636 GETUPVAL                         R39 3
      637 GETTABLEKS                       R38 R39 K31 ["createElement"]
      639 GETUPVAL                         R39 14
      640 DUPTABLE                         R40 K121 [{"tag", "ref", "ZIndex"}]
      641 LOADK                            R41 K89 ["size-full"]
      642 SETTABLEKS                       R41 R40 K32 ["tag"]
      644 SETTABLEKS                       R7 R40 K119 ["ref"]
      646 LOADN                            R41 100
      647 SETTABLEKS                       R41 R40 K120 ["ZIndex"]
      649 CALL                             R38 2 1
      650 SETTABLEKS                       R38 R37 K115 ["Overlay"]
      652 CALL                             R34 3 1
      653 SETTABLEKS                       R34 R33 K109 ["OverlayProviderWrapper"]
      655 CALL                             R30 3 -1
      656 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["View"]
       29 GETTABLEKS                       R5 R3 K14 ["Text"]
       31 GETTABLEKS                       R6 R3 K15 ["ScrollView"]
       33 GETTABLEKS                       R7 R3 K16 ["OverlayProvider"]
       35 GETIMPORT                        R8 K9 [require]
       37 GETTABLEKS                       R10 R1 K10 ["Packages"]
       39 GETTABLEKS                       R9 R10 K17 ["Framework"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R8 K18 ["UI"]
       44 GETTABLEKS                       R11 R8 K19 ["ContextServices"]
       46 GETTABLEKS                       R10 R11 K20 ["Localization"]
       48 GETTABLEKS                       R12 R8 K19 ["ContextServices"]
       50 GETTABLEKS                       R11 R12 K21 ["Design"]
       52 GETTABLEKS                       R13 R8 K22 ["Util"]
       54 GETTABLEKS                       R12 R13 K23 ["LayoutOrderIterator"]
       56 GETIMPORT                        R13 K9 [require]
       58 GETTABLEKS                       R16 R1 K24 ["Src"]
       60 GETTABLEKS                       R15 R16 K22 ["Util"]
       62 GETTABLEKS                       R14 R15 K25 ["Constants"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K9 [require]
       67 GETTABLEKS                       R17 R1 K24 ["Src"]
       69 GETTABLEKS                       R16 R17 K26 ["Flags"]
       71 GETTABLEKS                       R15 R16 K27 ["getFFlagAvatarPreviewerLookComposer"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K9 [require]
       76 GETIMPORT                        R17 K5 [script]
       78 GETTABLEKS                       R16 R17 K28 ["Types"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K9 [require]
       83 GETTABLEKS                       R18 R1 K24 ["Src"]
       85 GETTABLEKS                       R17 R18 K28 ["Types"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K9 [require]
       90 GETIMPORT                        R19 K5 [script]
       92 GETTABLEKS                       R18 R19 K29 ["useMakeupWorldModel"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K9 [require]
       97 GETTABLEKS                       R21 R1 K24 ["Src"]
       99 GETTABLEKS                       R20 R21 K30 ["Components"]
      101 GETTABLEKS                       R19 R20 K31 ["LookContext"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K9 [require]
      106 GETTABLEKS                       R22 R1 K24 ["Src"]
      108 GETTABLEKS                       R21 R22 K22 ["Util"]
      110 GETTABLEKS                       R20 R21 K32 ["EquipmentStateContext"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K9 [require]
      115 GETTABLEKS                       R23 R1 K24 ["Src"]
      117 GETTABLEKS                       R22 R23 K33 ["Hooks"]
      119 GETTABLEKS                       R21 R22 K34 ["useManageableGroups"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K9 [require]
      124 GETIMPORT                        R23 K5 [script]
      126 GETTABLEKS                       R22 R23 K35 ["StageInfoBar"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K9 [require]
      131 GETIMPORT                        R24 K5 [script]
      133 GETTABLEKS                       R23 R24 K36 ["ErrorBanner"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K9 [require]
      138 GETIMPORT                        R25 K5 [script]
      140 GETTABLEKS                       R24 R25 K37 ["InfoEntryContainer"]
      142 CALL                             R23 1 1
      143 GETIMPORT                        R24 K9 [require]
      145 GETIMPORT                        R26 K5 [script]
      147 GETTABLEKS                       R25 R26 K38 ["LookDetailsList"]
      149 CALL                             R24 1 1
      150 GETIMPORT                        R25 K9 [require]
      152 GETIMPORT                        R27 K5 [script]
      154 GETTABLEKS                       R26 R27 K39 ["CreatorSelectionDropdown"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K9 [require]
      159 GETIMPORT                        R28 K5 [script]
      161 GETTABLEKS                       R27 R28 K40 ["LookComposerBottomBar"]
      163 CALL                             R26 1 1
      164 GETIMPORT                        R27 K9 [require]
      166 GETIMPORT                        R29 K5 [script]
      168 GETTABLEKS                       R28 R29 K41 ["SuccessPage"]
      170 CALL                             R27 1 1
      171 GETIMPORT                        R28 K9 [require]
      173 GETIMPORT                        R30 K5 [script]
      175 GETTABLEKS                       R29 R30 K42 ["FailurePage"]
      177 CALL                             R28 1 1
      178 GETIMPORT                        R29 K9 [require]
      180 GETIMPORT                        R31 K5 [script]
      182 GETTABLEKS                       R30 R31 K43 ["EditInfoPage"]
      184 CALL                             R29 1 1
      185 GETIMPORT                        R30 K9 [require]
      187 GETIMPORT                        R32 K5 [script]
      189 GETTABLEKS                       R31 R32 K44 ["LookPreview"]
      191 CALL                             R30 1 1
      192 DUPCLOSURE                       R31 K45 [PROTO_1]
      193 CAPTURE                          VAL R0
      194 GETIMPORT                        R32 K48 [Color3.fromRGB]
      196 LOADN                            R33 205
      197 LOADN                            R34 205
      198 LOADN                            R35 204
      199 CALL                             R32 3 1
      200 DUPTABLE                         R33 K51 [{"AvatarLook", "MakeupLook"}]
      201 DUPTABLE                         R34 K54 [{"title", "description"}]
      202 LOADK                            R35 K55 ["CreateAnAvatarLook"]
      203 SETTABLEKS                       R35 R34 K52 ["title"]
      205 LOADK                            R35 K56 ["CreateAnAvatarLookDescription"]
      206 SETTABLEKS                       R35 R34 K53 ["description"]
      208 SETTABLEKS                       R34 R33 K49 ["AvatarLook"]
      210 DUPTABLE                         R34 K54 [{"title", "description"}]
      211 LOADK                            R35 K57 ["CreateAMakeupLook"]
      212 SETTABLEKS                       R35 R34 K52 ["title"]
      214 LOADK                            R35 K58 ["CreateAMakeupLookDescription"]
      215 SETTABLEKS                       R35 R34 K53 ["description"]
      217 SETTABLEKS                       R34 R33 K50 ["MakeupLook"]
      219 DUPCLOSURE                       R34 K59 [PROTO_8]
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R30
      232 CAPTURE                          VAL R33
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R21
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R7
      247 RETURN                           R34 1
