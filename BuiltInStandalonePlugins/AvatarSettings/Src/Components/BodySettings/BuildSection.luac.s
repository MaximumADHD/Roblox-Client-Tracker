PROTO_0:
        0 GETIMPORT                        R1 K2 [NumberRange.new]
        2 GETTABLEKS                       R4 R0 K4 ["Min"]
        4 MULK                             R3 R4 K3 [100]
        5 FASTCALL1                        MATH_ROUND R3 ; [+2]
        6 GETIMPORT                        R2 K7 [math.round]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R5 R0 K8 ["Max"]
       11 MULK                             R4 R5 K3 [100]
       12 FASTCALL1                        MATH_ROUND R4 ; [+2]
       13 GETIMPORT                        R3 K7 [math.round]
       15 CALL                             R3 1 1
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [NumberRange.new]
        2 GETTABLEKS                       R3 R0 K4 ["Min"]
        4 DIVK                             R2 R3 K3 [100]
        5 GETTABLEKS                       R4 R0 K5 ["Max"]
        7 DIVK                             R3 R4 K3 [100]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["BuildModeSelected"]
        5 DUPTABLE                         R4 K2 [{"buildMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["buildMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["bodyBuildSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyBuildCustomHeight"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyBuildCustomWidth"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyBuildCustomHead"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyBuildCustomBodyType"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyBuildCustomProportions"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 NEWTABLE                         R5 0 2
       29 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["BodySettings"]
       35 LOADK                            R10 K14 ["BuildSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsBuildMode.CustomBuild]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["BodySettings"]
       47 LOADK                            R11 K18 ["BuildSectionCustomBuildButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R7 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R7 K19 ["bodySettings"]
       59 GETTABLEKS                       R8 R6 K20 ["bodyBuildSetting"]
       61 GETTABLEKS                       R7 R8 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsBuildMode.CustomBuild]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 6
       77 GETUPVAL                         R11 7
       78 DUPTABLE                         R12 K29 [{"text", "layoutOrder", "showWarning"}]
       79 LOADK                            R15 K13 ["BodySettings"]
       80 LOADK                            R16 K30 ["BuildSection"]
       81 NAMECALL                         R13 R1 K15 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["text"]
       86 GETTABLEKS                       R13 R0 K27 ["layoutOrder"]
       88 SETTABLEKS                       R13 R12 K27 ["layoutOrder"]
       90 LOADB                            R13 1
       91 SETTABLEKS                       R13 R12 K28 ["showWarning"]
       93 DUPTABLE                         R13 K37 [{"BuildGenericModeSelector", "HeightSetting", "WidthSetting", "HeadSetting", "BodyTypeSetting", "BuildSetting"}]
       94 GETUPVAL                         R14 6
       95 GETUPVAL                         R15 8
       96 DUPTABLE                         R16 K42 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       97 MOVE                             R17 R3
       98 CALL                             R17 0 1
       99 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      101 SETTABLEKS                       R5 R16 K38 ["items"]
      103 SETTABLEKS                       R7 R16 K39 ["selected"]
      105 NEWCLOSURE                       R17 P0
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R17 R16 K40 ["onItemActivated"]
      111 LOADK                            R19 K13 ["BodySettings"]
      112 GETIMPORT                        R21 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
      114 JUMPIFNOTEQ                      R7 R21 ; [+3]
      116 LOADK                            R20 K43 ["BuildSectionPlayerChoiceSubText"]
      117 JUMP                             ; [+1]
      118 LOADK                            R20 K44 ["BuildSectionCustomBuildSubText"]
      119 NAMECALL                         R17 R1 K15 ["getText"]
      121 CALL                             R17 3 1
      122 SETTABLEKS                       R17 R16 K41 ["subText"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K31 ["BuildGenericModeSelector"]
      127 MOVE                             R14 R9
      128 JUMPIFNOT                        R14 ; [+68]
      129 GETUPVAL                         R14 6
      130 GETUPVAL                         R15 9
      131 DUPTABLE                         R16 K47 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      132 SETTABLEKS                       R8 R16 K45 ["minTextLabelWidth"]
      134 LOADK                            R17 K48 ["AvatarSettings-LeftTextPrimary"]
      135 SETTABLEKS                       R17 R16 K46 ["textLabelTags"]
      137 LOADK                            R19 K13 ["BodySettings"]
      138 LOADK                            R20 K49 ["BuildHeight"]
      139 NAMECALL                         R17 R1 K15 ["getText"]
      141 CALL                             R17 3 1
      142 SETTABLEKS                       R17 R16 K26 ["text"]
      144 MOVE                             R17 R3
      145 CALL                             R17 0 1
      146 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      148 DUPTABLE                         R17 K51 [{"Content"}]
      149 GETUPVAL                         R18 6
      150 GETUPVAL                         R19 10
      151 DUPTABLE                         R20 K58 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      152 LOADN                            R21 1
      153 SETTABLEKS                       R21 R20 K52 ["snapIncrement"]
      155 LOADN                            R21 90
      156 SETTABLEKS                       R21 R20 K53 ["min"]
      158 LOADN                            R21 105
      159 SETTABLEKS                       R21 R20 K54 ["max"]
      161 LOADK                            R21 K59 ["%"]
      162 SETTABLEKS                       R21 R20 K55 ["inputFieldText"]
      164 GETTABLEKS                       R23 R6 K60 ["bodyBuildCustomHeight"]
      166 GETTABLEKS                       R22 R23 K21 ["value"]
      168 GETIMPORT                        R23 K62 [NumberRange.new]
      170 GETTABLEKS                       R26 R22 K64 ["Min"]
      172 MULK                             R25 R26 K63 [100]
      173 FASTCALL1                        MATH_ROUND R25 ; [+2]
      174 GETIMPORT                        R24 K67 [math.round]
      176 CALL                             R24 1 1
      177 GETTABLEKS                       R27 R22 K68 ["Max"]
      179 MULK                             R26 R27 K63 [100]
      180 FASTCALL1                        MATH_ROUND R26 ; [+2]
      181 GETIMPORT                        R25 K67 [math.round]
      183 CALL                             R25 1 1
      184 CALL                             R23 2 1
      185 MOVE                             R21 R23
      186 SETTABLEKS                       R21 R20 K56 ["numberRange"]
      188 NEWCLOSURE                       R21 P1
      189 CAPTURE                          VAL R6
      190 CAPTURE                          UPVAL U11
      191 SETTABLEKS                       R21 R20 K57 ["setNumberRange"]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K50 ["Content"]
      196 CALL                             R14 3 1
      197 SETTABLEKS                       R14 R13 K32 ["HeightSetting"]
      199 MOVE                             R14 R9
      200 JUMPIFNOT                        R14 ; [+68]
      201 GETUPVAL                         R14 6
      202 GETUPVAL                         R15 9
      203 DUPTABLE                         R16 K47 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      204 SETTABLEKS                       R8 R16 K45 ["minTextLabelWidth"]
      206 LOADK                            R17 K48 ["AvatarSettings-LeftTextPrimary"]
      207 SETTABLEKS                       R17 R16 K46 ["textLabelTags"]
      209 LOADK                            R19 K13 ["BodySettings"]
      210 LOADK                            R20 K69 ["BuildWidth"]
      211 NAMECALL                         R17 R1 K15 ["getText"]
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K26 ["text"]
      216 MOVE                             R17 R3
      217 CALL                             R17 0 1
      218 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      220 DUPTABLE                         R17 K51 [{"Content"}]
      221 GETUPVAL                         R18 6
      222 GETUPVAL                         R19 10
      223 DUPTABLE                         R20 K58 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      224 LOADN                            R21 1
      225 SETTABLEKS                       R21 R20 K52 ["snapIncrement"]
      227 LOADN                            R21 70
      228 SETTABLEKS                       R21 R20 K53 ["min"]
      230 LOADN                            R21 100
      231 SETTABLEKS                       R21 R20 K54 ["max"]
      233 LOADK                            R21 K59 ["%"]
      234 SETTABLEKS                       R21 R20 K55 ["inputFieldText"]
      236 GETTABLEKS                       R23 R6 K70 ["bodyBuildCustomWidth"]
      238 GETTABLEKS                       R22 R23 K21 ["value"]
      240 GETIMPORT                        R23 K62 [NumberRange.new]
      242 GETTABLEKS                       R26 R22 K64 ["Min"]
      244 MULK                             R25 R26 K63 [100]
      245 FASTCALL1                        MATH_ROUND R25 ; [+2]
      246 GETIMPORT                        R24 K67 [math.round]
      248 CALL                             R24 1 1
      249 GETTABLEKS                       R27 R22 K68 ["Max"]
      251 MULK                             R26 R27 K63 [100]
      252 FASTCALL1                        MATH_ROUND R26 ; [+2]
      253 GETIMPORT                        R25 K67 [math.round]
      255 CALL                             R25 1 1
      256 CALL                             R23 2 1
      257 MOVE                             R21 R23
      258 SETTABLEKS                       R21 R20 K56 ["numberRange"]
      260 NEWCLOSURE                       R21 P2
      261 CAPTURE                          VAL R6
      262 CAPTURE                          UPVAL U11
      263 SETTABLEKS                       R21 R20 K57 ["setNumberRange"]
      265 CALL                             R18 2 1
      266 SETTABLEKS                       R18 R17 K50 ["Content"]
      268 CALL                             R14 3 1
      269 SETTABLEKS                       R14 R13 K33 ["WidthSetting"]
      271 MOVE                             R14 R9
      272 JUMPIFNOT                        R14 ; [+68]
      273 GETUPVAL                         R14 6
      274 GETUPVAL                         R15 9
      275 DUPTABLE                         R16 K47 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      276 SETTABLEKS                       R8 R16 K45 ["minTextLabelWidth"]
      278 LOADK                            R17 K48 ["AvatarSettings-LeftTextPrimary"]
      279 SETTABLEKS                       R17 R16 K46 ["textLabelTags"]
      281 LOADK                            R19 K13 ["BodySettings"]
      282 LOADK                            R20 K71 ["BuildHead"]
      283 NAMECALL                         R17 R1 K15 ["getText"]
      285 CALL                             R17 3 1
      286 SETTABLEKS                       R17 R16 K26 ["text"]
      288 MOVE                             R17 R3
      289 CALL                             R17 0 1
      290 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      292 DUPTABLE                         R17 K51 [{"Content"}]
      293 GETUPVAL                         R18 6
      294 GETUPVAL                         R19 10
      295 DUPTABLE                         R20 K58 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      296 LOADN                            R21 1
      297 SETTABLEKS                       R21 R20 K52 ["snapIncrement"]
      299 LOADN                            R21 95
      300 SETTABLEKS                       R21 R20 K53 ["min"]
      302 LOADN                            R21 100
      303 SETTABLEKS                       R21 R20 K54 ["max"]
      305 LOADK                            R21 K59 ["%"]
      306 SETTABLEKS                       R21 R20 K55 ["inputFieldText"]
      308 GETTABLEKS                       R23 R6 K72 ["bodyBuildCustomHead"]
      310 GETTABLEKS                       R22 R23 K21 ["value"]
      312 GETIMPORT                        R23 K62 [NumberRange.new]
      314 GETTABLEKS                       R26 R22 K64 ["Min"]
      316 MULK                             R25 R26 K63 [100]
      317 FASTCALL1                        MATH_ROUND R25 ; [+2]
      318 GETIMPORT                        R24 K67 [math.round]
      320 CALL                             R24 1 1
      321 GETTABLEKS                       R27 R22 K68 ["Max"]
      323 MULK                             R26 R27 K63 [100]
      324 FASTCALL1                        MATH_ROUND R26 ; [+2]
      325 GETIMPORT                        R25 K67 [math.round]
      327 CALL                             R25 1 1
      328 CALL                             R23 2 1
      329 MOVE                             R21 R23
      330 SETTABLEKS                       R21 R20 K56 ["numberRange"]
      332 NEWCLOSURE                       R21 P3
      333 CAPTURE                          VAL R6
      334 CAPTURE                          UPVAL U11
      335 SETTABLEKS                       R21 R20 K57 ["setNumberRange"]
      337 CALL                             R18 2 1
      338 SETTABLEKS                       R18 R17 K50 ["Content"]
      340 CALL                             R14 3 1
      341 SETTABLEKS                       R14 R13 K34 ["HeadSetting"]
      343 MOVE                             R14 R9
      344 JUMPIFNOT                        R14 ; [+68]
      345 GETUPVAL                         R14 6
      346 GETUPVAL                         R15 9
      347 DUPTABLE                         R16 K47 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      348 SETTABLEKS                       R8 R16 K45 ["minTextLabelWidth"]
      350 LOADK                            R17 K48 ["AvatarSettings-LeftTextPrimary"]
      351 SETTABLEKS                       R17 R16 K46 ["textLabelTags"]
      353 LOADK                            R19 K13 ["BodySettings"]
      354 LOADK                            R20 K73 ["BuildBodyType"]
      355 NAMECALL                         R17 R1 K15 ["getText"]
      357 CALL                             R17 3 1
      358 SETTABLEKS                       R17 R16 K26 ["text"]
      360 MOVE                             R17 R3
      361 CALL                             R17 0 1
      362 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      364 DUPTABLE                         R17 K51 [{"Content"}]
      365 GETUPVAL                         R18 6
      366 GETUPVAL                         R19 10
      367 DUPTABLE                         R20 K58 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      368 LOADN                            R21 1
      369 SETTABLEKS                       R21 R20 K52 ["snapIncrement"]
      371 LOADN                            R21 0
      372 SETTABLEKS                       R21 R20 K53 ["min"]
      374 LOADN                            R21 100
      375 SETTABLEKS                       R21 R20 K54 ["max"]
      377 LOADK                            R21 K59 ["%"]
      378 SETTABLEKS                       R21 R20 K55 ["inputFieldText"]
      380 GETTABLEKS                       R23 R6 K74 ["bodyBuildCustomBodyType"]
      382 GETTABLEKS                       R22 R23 K21 ["value"]
      384 GETIMPORT                        R23 K62 [NumberRange.new]
      386 GETTABLEKS                       R26 R22 K64 ["Min"]
      388 MULK                             R25 R26 K63 [100]
      389 FASTCALL1                        MATH_ROUND R25 ; [+2]
      390 GETIMPORT                        R24 K67 [math.round]
      392 CALL                             R24 1 1
      393 GETTABLEKS                       R27 R22 K68 ["Max"]
      395 MULK                             R26 R27 K63 [100]
      396 FASTCALL1                        MATH_ROUND R26 ; [+2]
      397 GETIMPORT                        R25 K67 [math.round]
      399 CALL                             R25 1 1
      400 CALL                             R23 2 1
      401 MOVE                             R21 R23
      402 SETTABLEKS                       R21 R20 K56 ["numberRange"]
      404 NEWCLOSURE                       R21 P4
      405 CAPTURE                          VAL R6
      406 CAPTURE                          UPVAL U11
      407 SETTABLEKS                       R21 R20 K57 ["setNumberRange"]
      409 CALL                             R18 2 1
      410 SETTABLEKS                       R18 R17 K50 ["Content"]
      412 CALL                             R14 3 1
      413 SETTABLEKS                       R14 R13 K35 ["BodyTypeSetting"]
      415 MOVE                             R14 R9
      416 JUMPIFNOT                        R14 ; [+68]
      417 GETUPVAL                         R14 6
      418 GETUPVAL                         R15 9
      419 DUPTABLE                         R16 K47 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      420 SETTABLEKS                       R8 R16 K45 ["minTextLabelWidth"]
      422 LOADK                            R17 K48 ["AvatarSettings-LeftTextPrimary"]
      423 SETTABLEKS                       R17 R16 K46 ["textLabelTags"]
      425 LOADK                            R19 K13 ["BodySettings"]
      426 LOADK                            R20 K75 ["BuildProportions"]
      427 NAMECALL                         R17 R1 K15 ["getText"]
      429 CALL                             R17 3 1
      430 SETTABLEKS                       R17 R16 K26 ["text"]
      432 MOVE                             R17 R3
      433 CALL                             R17 0 1
      434 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      436 DUPTABLE                         R17 K51 [{"Content"}]
      437 GETUPVAL                         R18 6
      438 GETUPVAL                         R19 10
      439 DUPTABLE                         R20 K58 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      440 LOADN                            R21 1
      441 SETTABLEKS                       R21 R20 K52 ["snapIncrement"]
      443 LOADN                            R21 0
      444 SETTABLEKS                       R21 R20 K53 ["min"]
      446 LOADN                            R21 100
      447 SETTABLEKS                       R21 R20 K54 ["max"]
      449 LOADK                            R21 K59 ["%"]
      450 SETTABLEKS                       R21 R20 K55 ["inputFieldText"]
      452 GETTABLEKS                       R23 R6 K76 ["bodyBuildCustomProportions"]
      454 GETTABLEKS                       R22 R23 K21 ["value"]
      456 GETIMPORT                        R23 K62 [NumberRange.new]
      458 GETTABLEKS                       R26 R22 K64 ["Min"]
      460 MULK                             R25 R26 K63 [100]
      461 FASTCALL1                        MATH_ROUND R25 ; [+2]
      462 GETIMPORT                        R24 K67 [math.round]
      464 CALL                             R24 1 1
      465 GETTABLEKS                       R27 R22 K68 ["Max"]
      467 MULK                             R26 R27 K63 [100]
      468 FASTCALL1                        MATH_ROUND R26 ; [+2]
      469 GETIMPORT                        R25 K67 [math.round]
      471 CALL                             R25 1 1
      472 CALL                             R23 2 1
      473 MOVE                             R21 R23
      474 SETTABLEKS                       R21 R20 K56 ["numberRange"]
      476 NEWCLOSURE                       R21 P5
      477 CAPTURE                          VAL R6
      478 CAPTURE                          UPVAL U11
      479 SETTABLEKS                       R21 R20 K57 ["setNumberRange"]
      481 CALL                             R18 2 1
      482 SETTABLEKS                       R18 R17 K50 ["Content"]
      484 CALL                             R14 3 1
      485 SETTABLEKS                       R14 R13 K36 ["BuildSetting"]
      487 CALL                             R10 3 -1
      488 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Components"]
       33 GETTABLEKS                       R4 R5 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R6 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Components"]
       49 GETTABLEKS                       R6 R7 K15 ["GenericModeSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R8 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R10 R11 K7 ["Components"]
       72 GETTABLEKS                       R9 R10 K18 ["SliderComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K7 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R4 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R16 R0 K6 ["Src"]
       92 GETTABLEKS                       R15 R16 K10 ["Util"]
       94 GETTABLEKS                       R14 R15 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R14 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R7 K24 ["createNextOrder"]
      101 GETTABLEKS                       R14 R6 K25 ["createElement"]
      103 DUPCLOSURE                       R15 K26 [PROTO_0]
      104 DUPCLOSURE                       R16 K27 [PROTO_1]
      105 DUPCLOSURE                       R17 K28 [PROTO_8]
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R16
      118 RETURN                           R17 1
