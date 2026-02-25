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
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 NEWTABLE                         R5 0 2
       34 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["BodySettings"]
       40 LOADK                            R10 K14 ["BuildSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsBuildMode.CustomBuild]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["BodySettings"]
       52 LOADK                            R11 K18 ["BuildSectionCustomBuildButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["bodySettings"]
       64 GETTABLEKS                       R8 R6 K20 ["bodyBuildSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETIMPORT                        R8 K24 [UDim.new]
       70 LOADN                            R9 0
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R10 K17 [Enum.AvatarSettingsBuildMode.CustomBuild]
       77 JUMPIFEQ                         R7 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 GETUPVAL                         R10 7
       82 GETUPVAL                         R11 8
       83 DUPTABLE                         R12 K29 [{"text", "layoutOrder", "showWarning"}]
       84 LOADK                            R15 K13 ["BodySettings"]
       85 LOADK                            R16 K30 ["BuildSection"]
       86 NAMECALL                         R13 R1 K15 ["getText"]
       88 CALL                             R13 3 1
       89 SETTABLEKS                       R13 R12 K26 ["text"]
       91 GETTABLEKS                       R13 R0 K27 ["layoutOrder"]
       93 SETTABLEKS                       R13 R12 K27 ["layoutOrder"]
       95 LOADB                            R13 1
       96 SETTABLEKS                       R13 R12 K28 ["showWarning"]
       98 DUPTABLE                         R13 K37 [{"BuildGenericModeSelector", "HeightSetting", "WidthSetting", "HeadSetting", "BodyTypeSetting", "BuildSetting"}]
       99 GETUPVAL                         R14 7
      100 GETUPVAL                         R15 9
      101 DUPTABLE                         R16 K42 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      102 MOVE                             R17 R3
      103 CALL                             R17 0 1
      104 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      106 SETTABLEKS                       R5 R16 K38 ["items"]
      108 SETTABLEKS                       R7 R16 K39 ["selected"]
      110 GETUPVAL                         R18 1
      111 CALL                             R18 0 1
      112 JUMPIFNOT                        R18 ; [+5]
      113 NEWCLOSURE                       R17 P0
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R6
      117 JUMP                             ; [+4]
      118 GETTABLEKS                       R18 R6 K20 ["bodyBuildSetting"]
      120 GETTABLEKS                       R17 R18 K43 ["set"]
      122 SETTABLEKS                       R17 R16 K40 ["onItemActivated"]
      124 LOADK                            R19 K13 ["BodySettings"]
      125 GETIMPORT                        R21 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
      127 JUMPIFNOTEQ                      R7 R21 ; [+3]
      129 LOADK                            R20 K44 ["BuildSectionPlayerChoiceSubText"]
      130 JUMP                             ; [+1]
      131 LOADK                            R20 K45 ["BuildSectionCustomBuildSubText"]
      132 NAMECALL                         R17 R1 K15 ["getText"]
      134 CALL                             R17 3 1
      135 SETTABLEKS                       R17 R16 K41 ["subText"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K31 ["BuildGenericModeSelector"]
      140 MOVE                             R14 R9
      141 JUMPIFNOT                        R14 ; [+68]
      142 GETUPVAL                         R14 7
      143 GETUPVAL                         R15 10
      144 DUPTABLE                         R16 K48 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      145 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      147 LOADK                            R17 K49 ["AvatarSettings-LeftTextPrimary"]
      148 SETTABLEKS                       R17 R16 K47 ["textLabelTags"]
      150 LOADK                            R19 K13 ["BodySettings"]
      151 LOADK                            R20 K50 ["BuildHeight"]
      152 NAMECALL                         R17 R1 K15 ["getText"]
      154 CALL                             R17 3 1
      155 SETTABLEKS                       R17 R16 K26 ["text"]
      157 MOVE                             R17 R3
      158 CALL                             R17 0 1
      159 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      161 DUPTABLE                         R17 K52 [{"Content"}]
      162 GETUPVAL                         R18 7
      163 GETUPVAL                         R19 11
      164 DUPTABLE                         R20 K59 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      165 LOADN                            R21 1
      166 SETTABLEKS                       R21 R20 K53 ["snapIncrement"]
      168 LOADN                            R21 90
      169 SETTABLEKS                       R21 R20 K54 ["min"]
      171 LOADN                            R21 105
      172 SETTABLEKS                       R21 R20 K55 ["max"]
      174 LOADK                            R21 K60 ["%"]
      175 SETTABLEKS                       R21 R20 K56 ["inputFieldText"]
      177 GETTABLEKS                       R23 R6 K61 ["bodyBuildCustomHeight"]
      179 GETTABLEKS                       R22 R23 K21 ["value"]
      181 GETIMPORT                        R23 K63 [NumberRange.new]
      183 GETTABLEKS                       R26 R22 K65 ["Min"]
      185 MULK                             R25 R26 K64 [100]
      186 FASTCALL1                        MATH_ROUND R25 ; [+2]
      187 GETIMPORT                        R24 K68 [math.round]
      189 CALL                             R24 1 1
      190 GETTABLEKS                       R27 R22 K69 ["Max"]
      192 MULK                             R26 R27 K64 [100]
      193 FASTCALL1                        MATH_ROUND R26 ; [+2]
      194 GETIMPORT                        R25 K68 [math.round]
      196 CALL                             R25 1 1
      197 CALL                             R23 2 1
      198 MOVE                             R21 R23
      199 SETTABLEKS                       R21 R20 K57 ["numberRange"]
      201 NEWCLOSURE                       R21 P1
      202 CAPTURE                          VAL R6
      203 CAPTURE                          UPVAL U12
      204 SETTABLEKS                       R21 R20 K58 ["setNumberRange"]
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K51 ["Content"]
      209 CALL                             R14 3 1
      210 SETTABLEKS                       R14 R13 K32 ["HeightSetting"]
      212 MOVE                             R14 R9
      213 JUMPIFNOT                        R14 ; [+68]
      214 GETUPVAL                         R14 7
      215 GETUPVAL                         R15 10
      216 DUPTABLE                         R16 K48 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      217 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      219 LOADK                            R17 K49 ["AvatarSettings-LeftTextPrimary"]
      220 SETTABLEKS                       R17 R16 K47 ["textLabelTags"]
      222 LOADK                            R19 K13 ["BodySettings"]
      223 LOADK                            R20 K70 ["BuildWidth"]
      224 NAMECALL                         R17 R1 K15 ["getText"]
      226 CALL                             R17 3 1
      227 SETTABLEKS                       R17 R16 K26 ["text"]
      229 MOVE                             R17 R3
      230 CALL                             R17 0 1
      231 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      233 DUPTABLE                         R17 K52 [{"Content"}]
      234 GETUPVAL                         R18 7
      235 GETUPVAL                         R19 11
      236 DUPTABLE                         R20 K59 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      237 LOADN                            R21 1
      238 SETTABLEKS                       R21 R20 K53 ["snapIncrement"]
      240 LOADN                            R21 70
      241 SETTABLEKS                       R21 R20 K54 ["min"]
      243 LOADN                            R21 100
      244 SETTABLEKS                       R21 R20 K55 ["max"]
      246 LOADK                            R21 K60 ["%"]
      247 SETTABLEKS                       R21 R20 K56 ["inputFieldText"]
      249 GETTABLEKS                       R23 R6 K71 ["bodyBuildCustomWidth"]
      251 GETTABLEKS                       R22 R23 K21 ["value"]
      253 GETIMPORT                        R23 K63 [NumberRange.new]
      255 GETTABLEKS                       R26 R22 K65 ["Min"]
      257 MULK                             R25 R26 K64 [100]
      258 FASTCALL1                        MATH_ROUND R25 ; [+2]
      259 GETIMPORT                        R24 K68 [math.round]
      261 CALL                             R24 1 1
      262 GETTABLEKS                       R27 R22 K69 ["Max"]
      264 MULK                             R26 R27 K64 [100]
      265 FASTCALL1                        MATH_ROUND R26 ; [+2]
      266 GETIMPORT                        R25 K68 [math.round]
      268 CALL                             R25 1 1
      269 CALL                             R23 2 1
      270 MOVE                             R21 R23
      271 SETTABLEKS                       R21 R20 K57 ["numberRange"]
      273 NEWCLOSURE                       R21 P2
      274 CAPTURE                          VAL R6
      275 CAPTURE                          UPVAL U12
      276 SETTABLEKS                       R21 R20 K58 ["setNumberRange"]
      278 CALL                             R18 2 1
      279 SETTABLEKS                       R18 R17 K51 ["Content"]
      281 CALL                             R14 3 1
      282 SETTABLEKS                       R14 R13 K33 ["WidthSetting"]
      284 MOVE                             R14 R9
      285 JUMPIFNOT                        R14 ; [+68]
      286 GETUPVAL                         R14 7
      287 GETUPVAL                         R15 10
      288 DUPTABLE                         R16 K48 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      289 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      291 LOADK                            R17 K49 ["AvatarSettings-LeftTextPrimary"]
      292 SETTABLEKS                       R17 R16 K47 ["textLabelTags"]
      294 LOADK                            R19 K13 ["BodySettings"]
      295 LOADK                            R20 K72 ["BuildHead"]
      296 NAMECALL                         R17 R1 K15 ["getText"]
      298 CALL                             R17 3 1
      299 SETTABLEKS                       R17 R16 K26 ["text"]
      301 MOVE                             R17 R3
      302 CALL                             R17 0 1
      303 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      305 DUPTABLE                         R17 K52 [{"Content"}]
      306 GETUPVAL                         R18 7
      307 GETUPVAL                         R19 11
      308 DUPTABLE                         R20 K59 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      309 LOADN                            R21 1
      310 SETTABLEKS                       R21 R20 K53 ["snapIncrement"]
      312 LOADN                            R21 95
      313 SETTABLEKS                       R21 R20 K54 ["min"]
      315 LOADN                            R21 100
      316 SETTABLEKS                       R21 R20 K55 ["max"]
      318 LOADK                            R21 K60 ["%"]
      319 SETTABLEKS                       R21 R20 K56 ["inputFieldText"]
      321 GETTABLEKS                       R23 R6 K73 ["bodyBuildCustomHead"]
      323 GETTABLEKS                       R22 R23 K21 ["value"]
      325 GETIMPORT                        R23 K63 [NumberRange.new]
      327 GETTABLEKS                       R26 R22 K65 ["Min"]
      329 MULK                             R25 R26 K64 [100]
      330 FASTCALL1                        MATH_ROUND R25 ; [+2]
      331 GETIMPORT                        R24 K68 [math.round]
      333 CALL                             R24 1 1
      334 GETTABLEKS                       R27 R22 K69 ["Max"]
      336 MULK                             R26 R27 K64 [100]
      337 FASTCALL1                        MATH_ROUND R26 ; [+2]
      338 GETIMPORT                        R25 K68 [math.round]
      340 CALL                             R25 1 1
      341 CALL                             R23 2 1
      342 MOVE                             R21 R23
      343 SETTABLEKS                       R21 R20 K57 ["numberRange"]
      345 NEWCLOSURE                       R21 P3
      346 CAPTURE                          VAL R6
      347 CAPTURE                          UPVAL U12
      348 SETTABLEKS                       R21 R20 K58 ["setNumberRange"]
      350 CALL                             R18 2 1
      351 SETTABLEKS                       R18 R17 K51 ["Content"]
      353 CALL                             R14 3 1
      354 SETTABLEKS                       R14 R13 K34 ["HeadSetting"]
      356 MOVE                             R14 R9
      357 JUMPIFNOT                        R14 ; [+68]
      358 GETUPVAL                         R14 7
      359 GETUPVAL                         R15 10
      360 DUPTABLE                         R16 K48 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      361 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      363 LOADK                            R17 K49 ["AvatarSettings-LeftTextPrimary"]
      364 SETTABLEKS                       R17 R16 K47 ["textLabelTags"]
      366 LOADK                            R19 K13 ["BodySettings"]
      367 LOADK                            R20 K74 ["BuildBodyType"]
      368 NAMECALL                         R17 R1 K15 ["getText"]
      370 CALL                             R17 3 1
      371 SETTABLEKS                       R17 R16 K26 ["text"]
      373 MOVE                             R17 R3
      374 CALL                             R17 0 1
      375 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      377 DUPTABLE                         R17 K52 [{"Content"}]
      378 GETUPVAL                         R18 7
      379 GETUPVAL                         R19 11
      380 DUPTABLE                         R20 K59 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      381 LOADN                            R21 1
      382 SETTABLEKS                       R21 R20 K53 ["snapIncrement"]
      384 LOADN                            R21 0
      385 SETTABLEKS                       R21 R20 K54 ["min"]
      387 LOADN                            R21 100
      388 SETTABLEKS                       R21 R20 K55 ["max"]
      390 LOADK                            R21 K60 ["%"]
      391 SETTABLEKS                       R21 R20 K56 ["inputFieldText"]
      393 GETTABLEKS                       R23 R6 K75 ["bodyBuildCustomBodyType"]
      395 GETTABLEKS                       R22 R23 K21 ["value"]
      397 GETIMPORT                        R23 K63 [NumberRange.new]
      399 GETTABLEKS                       R26 R22 K65 ["Min"]
      401 MULK                             R25 R26 K64 [100]
      402 FASTCALL1                        MATH_ROUND R25 ; [+2]
      403 GETIMPORT                        R24 K68 [math.round]
      405 CALL                             R24 1 1
      406 GETTABLEKS                       R27 R22 K69 ["Max"]
      408 MULK                             R26 R27 K64 [100]
      409 FASTCALL1                        MATH_ROUND R26 ; [+2]
      410 GETIMPORT                        R25 K68 [math.round]
      412 CALL                             R25 1 1
      413 CALL                             R23 2 1
      414 MOVE                             R21 R23
      415 SETTABLEKS                       R21 R20 K57 ["numberRange"]
      417 NEWCLOSURE                       R21 P4
      418 CAPTURE                          VAL R6
      419 CAPTURE                          UPVAL U12
      420 SETTABLEKS                       R21 R20 K58 ["setNumberRange"]
      422 CALL                             R18 2 1
      423 SETTABLEKS                       R18 R17 K51 ["Content"]
      425 CALL                             R14 3 1
      426 SETTABLEKS                       R14 R13 K35 ["BodyTypeSetting"]
      428 MOVE                             R14 R9
      429 JUMPIFNOT                        R14 ; [+68]
      430 GETUPVAL                         R14 7
      431 GETUPVAL                         R15 10
      432 DUPTABLE                         R16 K48 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      433 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      435 LOADK                            R17 K49 ["AvatarSettings-LeftTextPrimary"]
      436 SETTABLEKS                       R17 R16 K47 ["textLabelTags"]
      438 LOADK                            R19 K13 ["BodySettings"]
      439 LOADK                            R20 K76 ["BuildProportions"]
      440 NAMECALL                         R17 R1 K15 ["getText"]
      442 CALL                             R17 3 1
      443 SETTABLEKS                       R17 R16 K26 ["text"]
      445 MOVE                             R17 R3
      446 CALL                             R17 0 1
      447 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      449 DUPTABLE                         R17 K52 [{"Content"}]
      450 GETUPVAL                         R18 7
      451 GETUPVAL                         R19 11
      452 DUPTABLE                         R20 K59 [{"snapIncrement", "min", "max", "inputFieldText", "numberRange", "setNumberRange"}]
      453 LOADN                            R21 1
      454 SETTABLEKS                       R21 R20 K53 ["snapIncrement"]
      456 LOADN                            R21 0
      457 SETTABLEKS                       R21 R20 K54 ["min"]
      459 LOADN                            R21 100
      460 SETTABLEKS                       R21 R20 K55 ["max"]
      462 LOADK                            R21 K60 ["%"]
      463 SETTABLEKS                       R21 R20 K56 ["inputFieldText"]
      465 GETTABLEKS                       R23 R6 K77 ["bodyBuildCustomProportions"]
      467 GETTABLEKS                       R22 R23 K21 ["value"]
      469 GETIMPORT                        R23 K63 [NumberRange.new]
      471 GETTABLEKS                       R26 R22 K65 ["Min"]
      473 MULK                             R25 R26 K64 [100]
      474 FASTCALL1                        MATH_ROUND R25 ; [+2]
      475 GETIMPORT                        R24 K68 [math.round]
      477 CALL                             R24 1 1
      478 GETTABLEKS                       R27 R22 K69 ["Max"]
      480 MULK                             R26 R27 K64 [100]
      481 FASTCALL1                        MATH_ROUND R26 ; [+2]
      482 GETIMPORT                        R25 K68 [math.round]
      484 CALL                             R25 1 1
      485 CALL                             R23 2 1
      486 MOVE                             R21 R23
      487 SETTABLEKS                       R21 R20 K57 ["numberRange"]
      489 NEWCLOSURE                       R21 P5
      490 CAPTURE                          VAL R6
      491 CAPTURE                          UPVAL U12
      492 SETTABLEKS                       R21 R20 K58 ["setNumberRange"]
      494 CALL                             R18 2 1
      495 SETTABLEKS                       R18 R17 K51 ["Content"]
      497 CALL                             R14 3 1
      498 SETTABLEKS                       R14 R13 K36 ["BuildSetting"]
      500 CALL                             R10 3 -1
      501 RETURN                           R10 -1

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
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R16 K24 ["Flags"]
      105 GETTABLEKS                       R14 R15 K25 ["getFFlagAddTelemetry"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R7 K26 ["createNextOrder"]
      110 GETTABLEKS                       R15 R6 K27 ["createElement"]
      112 DUPCLOSURE                       R16 K28 [PROTO_0]
      113 DUPCLOSURE                       R17 K29 [PROTO_1]
      114 DUPCLOSURE                       R18 K30 [PROTO_8]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R17
      128 RETURN                           R18 1
