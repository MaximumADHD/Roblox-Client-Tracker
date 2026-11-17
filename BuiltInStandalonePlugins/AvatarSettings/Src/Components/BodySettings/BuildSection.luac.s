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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["bodyBuildSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyBuildCustomHeight"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyBuildCustomWidth"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyBuildCustomHead"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyBuildCustomBodyType"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyBuildCustomProportions"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
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
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
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
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["bodySettings"]
       59 GETTABLEKS                       R7 R6 K20 ["bodyBuildSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsBuildMode.CustomBuild]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 6
       77 GETUPVAL                         R11 7
       78 DUPTABLE                         R12 K30 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       79 LOADK                            R15 K13 ["BodySettings"]
       80 LOADK                            R16 K31 ["BuildSection"]
       81 NAMECALL                         R13 R1 K15 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["text"]
       86 GETTABLEKS                       R13 R0 K27 ["layoutOrder"]
       88 SETTABLEKS                       R13 R12 K27 ["layoutOrder"]
       90 DUPTABLE                         R13 K38 [{"BuildGenericModeSelector", "HeightSetting", "WidthSetting", "HeadSetting", "BodyTypeSetting", "BuildSetting"}]
       91 GETUPVAL                         R14 6
       92 GETUPVAL                         R15 8
       93 DUPTABLE                         R16 K43 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       94 MOVE                             R17 R3
       95 CALL                             R17 0 1
       96 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
       98 SETTABLEKS                       R5 R16 K39 ["items"]
      100 SETTABLEKS                       R7 R16 K40 ["selected"]
      102 NEWCLOSURE                       R17 P0
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R17 R16 K41 ["onItemActivated"]
      108 LOADK                            R19 K13 ["BodySettings"]
      109 GETIMPORT                        R21 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
      111 JUMPIFNOTEQ                      R7 R21 ; [+3]
      113 LOADK                            R20 K44 ["BuildSectionPlayerChoiceSubText"]
      114 JUMP                             ; [+1]
      115 LOADK                            R20 K45 ["BuildSectionCustomBuildSubText"]
      116 NAMECALL                         R17 R1 K15 ["getText"]
      118 CALL                             R17 3 1
      119 SETTABLEKS                       R17 R16 K42 ["subText"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K32 ["BuildGenericModeSelector"]
      124 MOVE                             R14 R9
      125 JUMPIFNOT                        R14 ; [+67]
      126 GETUPVAL                         R14 6
      127 GETUPVAL                         R15 9
      128 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      129 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      131 LOADK                            R19 K13 ["BodySettings"]
      132 LOADK                            R20 K50 ["BuildHeight"]
      133 NAMECALL                         R17 R1 K15 ["getText"]
      135 CALL                             R17 3 1
      136 SETTABLEKS                       R17 R16 K26 ["text"]
      138 MOVE                             R17 R3
      139 CALL                             R17 0 1
      140 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      142 DUPTABLE                         R17 K52 [{"Content"}]
      143 GETUPVAL                         R18 6
      144 GETUPVAL                         R19 10
      145 DUPTABLE                         R20 K62 [{["snapIncrement"] = 1, ["min"], ["max"], ["enforceInputBounds"] = True, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      146 GETUPVAL                         R21 11
      147 GETTABLEKS                       R21 R21 K63 ["bodyBuildCustomHeight"]
      149 GETTABLEKS                       R21 R21 K55 ["min"]
      151 SETTABLEKS                       R21 R20 K55 ["min"]
      153 GETUPVAL                         R21 11
      154 GETTABLEKS                       R21 R21 K63 ["bodyBuildCustomHeight"]
      156 GETTABLEKS                       R21 R21 K56 ["max"]
      158 SETTABLEKS                       R21 R20 K56 ["max"]
      160 GETTABLEKS                       R22 R6 K63 ["bodyBuildCustomHeight"]
      162 GETTABLEKS                       R22 R22 K21 ["value"]
      164 GETIMPORT                        R23 K65 [NumberRange.new]
      166 GETTABLEKS                       R26 R22 K67 ["Min"]
      168 MULK                             R25 R26 K66 [100]
      169 FASTCALL1                        MATH_ROUND R25 ; [+2]
      170 GETIMPORT                        R24 K70 [math.round]
      172 CALL                             R24 1 1
      173 GETTABLEKS                       R27 R22 K71 ["Max"]
      175 MULK                             R26 R27 K66 [100]
      176 FASTCALL1                        MATH_ROUND R26 ; [+2]
      177 GETIMPORT                        R25 K70 [math.round]
      179 CALL                             R25 1 1
      180 CALL                             R23 2 1
      181 MOVE                             R21 R23
      182 SETTABLEKS                       R21 R20 K60 ["numberRange"]
      184 NEWCLOSURE                       R21 P1
      185 CAPTURE                          VAL R6
      186 CAPTURE                          UPVAL U12
      187 SETTABLEKS                       R21 R20 K61 ["setNumberRange"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K51 ["Content"]
      192 CALL                             R14 3 1
      193 SETTABLEKS                       R14 R13 K33 ["HeightSetting"]
      195 MOVE                             R14 R9
      196 JUMPIFNOT                        R14 ; [+67]
      197 GETUPVAL                         R14 6
      198 GETUPVAL                         R15 9
      199 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      200 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      202 LOADK                            R19 K13 ["BodySettings"]
      203 LOADK                            R20 K72 ["BuildWidth"]
      204 NAMECALL                         R17 R1 K15 ["getText"]
      206 CALL                             R17 3 1
      207 SETTABLEKS                       R17 R16 K26 ["text"]
      209 MOVE                             R17 R3
      210 CALL                             R17 0 1
      211 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      213 DUPTABLE                         R17 K52 [{"Content"}]
      214 GETUPVAL                         R18 6
      215 GETUPVAL                         R19 10
      216 DUPTABLE                         R20 K62 [{["snapIncrement"] = 1, ["min"], ["max"], ["enforceInputBounds"] = True, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      217 GETUPVAL                         R21 11
      218 GETTABLEKS                       R21 R21 K73 ["bodyBuildCustomWidth"]
      220 GETTABLEKS                       R21 R21 K55 ["min"]
      222 SETTABLEKS                       R21 R20 K55 ["min"]
      224 GETUPVAL                         R21 11
      225 GETTABLEKS                       R21 R21 K73 ["bodyBuildCustomWidth"]
      227 GETTABLEKS                       R21 R21 K56 ["max"]
      229 SETTABLEKS                       R21 R20 K56 ["max"]
      231 GETTABLEKS                       R22 R6 K73 ["bodyBuildCustomWidth"]
      233 GETTABLEKS                       R22 R22 K21 ["value"]
      235 GETIMPORT                        R23 K65 [NumberRange.new]
      237 GETTABLEKS                       R26 R22 K67 ["Min"]
      239 MULK                             R25 R26 K66 [100]
      240 FASTCALL1                        MATH_ROUND R25 ; [+2]
      241 GETIMPORT                        R24 K70 [math.round]
      243 CALL                             R24 1 1
      244 GETTABLEKS                       R27 R22 K71 ["Max"]
      246 MULK                             R26 R27 K66 [100]
      247 FASTCALL1                        MATH_ROUND R26 ; [+2]
      248 GETIMPORT                        R25 K70 [math.round]
      250 CALL                             R25 1 1
      251 CALL                             R23 2 1
      252 MOVE                             R21 R23
      253 SETTABLEKS                       R21 R20 K60 ["numberRange"]
      255 NEWCLOSURE                       R21 P2
      256 CAPTURE                          VAL R6
      257 CAPTURE                          UPVAL U12
      258 SETTABLEKS                       R21 R20 K61 ["setNumberRange"]
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K51 ["Content"]
      263 CALL                             R14 3 1
      264 SETTABLEKS                       R14 R13 K34 ["WidthSetting"]
      266 MOVE                             R14 R9
      267 JUMPIFNOT                        R14 ; [+67]
      268 GETUPVAL                         R14 6
      269 GETUPVAL                         R15 9
      270 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      271 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      273 LOADK                            R19 K13 ["BodySettings"]
      274 LOADK                            R20 K74 ["BuildHead"]
      275 NAMECALL                         R17 R1 K15 ["getText"]
      277 CALL                             R17 3 1
      278 SETTABLEKS                       R17 R16 K26 ["text"]
      280 MOVE                             R17 R3
      281 CALL                             R17 0 1
      282 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      284 DUPTABLE                         R17 K52 [{"Content"}]
      285 GETUPVAL                         R18 6
      286 GETUPVAL                         R19 10
      287 DUPTABLE                         R20 K62 [{["snapIncrement"] = 1, ["min"], ["max"], ["enforceInputBounds"] = True, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      288 GETUPVAL                         R21 11
      289 GETTABLEKS                       R21 R21 K75 ["bodyBuildCustomHead"]
      291 GETTABLEKS                       R21 R21 K55 ["min"]
      293 SETTABLEKS                       R21 R20 K55 ["min"]
      295 GETUPVAL                         R21 11
      296 GETTABLEKS                       R21 R21 K75 ["bodyBuildCustomHead"]
      298 GETTABLEKS                       R21 R21 K56 ["max"]
      300 SETTABLEKS                       R21 R20 K56 ["max"]
      302 GETTABLEKS                       R22 R6 K75 ["bodyBuildCustomHead"]
      304 GETTABLEKS                       R22 R22 K21 ["value"]
      306 GETIMPORT                        R23 K65 [NumberRange.new]
      308 GETTABLEKS                       R26 R22 K67 ["Min"]
      310 MULK                             R25 R26 K66 [100]
      311 FASTCALL1                        MATH_ROUND R25 ; [+2]
      312 GETIMPORT                        R24 K70 [math.round]
      314 CALL                             R24 1 1
      315 GETTABLEKS                       R27 R22 K71 ["Max"]
      317 MULK                             R26 R27 K66 [100]
      318 FASTCALL1                        MATH_ROUND R26 ; [+2]
      319 GETIMPORT                        R25 K70 [math.round]
      321 CALL                             R25 1 1
      322 CALL                             R23 2 1
      323 MOVE                             R21 R23
      324 SETTABLEKS                       R21 R20 K60 ["numberRange"]
      326 NEWCLOSURE                       R21 P3
      327 CAPTURE                          VAL R6
      328 CAPTURE                          UPVAL U12
      329 SETTABLEKS                       R21 R20 K61 ["setNumberRange"]
      331 CALL                             R18 2 1
      332 SETTABLEKS                       R18 R17 K51 ["Content"]
      334 CALL                             R14 3 1
      335 SETTABLEKS                       R14 R13 K35 ["HeadSetting"]
      337 MOVE                             R14 R9
      338 JUMPIFNOT                        R14 ; [+67]
      339 GETUPVAL                         R14 6
      340 GETUPVAL                         R15 9
      341 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      342 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      344 LOADK                            R19 K13 ["BodySettings"]
      345 LOADK                            R20 K76 ["BuildBodyType"]
      346 NAMECALL                         R17 R1 K15 ["getText"]
      348 CALL                             R17 3 1
      349 SETTABLEKS                       R17 R16 K26 ["text"]
      351 MOVE                             R17 R3
      352 CALL                             R17 0 1
      353 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      355 DUPTABLE                         R17 K52 [{"Content"}]
      356 GETUPVAL                         R18 6
      357 GETUPVAL                         R19 10
      358 DUPTABLE                         R20 K62 [{["snapIncrement"] = 1, ["min"], ["max"], ["enforceInputBounds"] = True, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      359 GETUPVAL                         R21 11
      360 GETTABLEKS                       R21 R21 K77 ["bodyBuildCustomBodyType"]
      362 GETTABLEKS                       R21 R21 K55 ["min"]
      364 SETTABLEKS                       R21 R20 K55 ["min"]
      366 GETUPVAL                         R21 11
      367 GETTABLEKS                       R21 R21 K77 ["bodyBuildCustomBodyType"]
      369 GETTABLEKS                       R21 R21 K56 ["max"]
      371 SETTABLEKS                       R21 R20 K56 ["max"]
      373 GETTABLEKS                       R22 R6 K77 ["bodyBuildCustomBodyType"]
      375 GETTABLEKS                       R22 R22 K21 ["value"]
      377 GETIMPORT                        R23 K65 [NumberRange.new]
      379 GETTABLEKS                       R26 R22 K67 ["Min"]
      381 MULK                             R25 R26 K66 [100]
      382 FASTCALL1                        MATH_ROUND R25 ; [+2]
      383 GETIMPORT                        R24 K70 [math.round]
      385 CALL                             R24 1 1
      386 GETTABLEKS                       R27 R22 K71 ["Max"]
      388 MULK                             R26 R27 K66 [100]
      389 FASTCALL1                        MATH_ROUND R26 ; [+2]
      390 GETIMPORT                        R25 K70 [math.round]
      392 CALL                             R25 1 1
      393 CALL                             R23 2 1
      394 MOVE                             R21 R23
      395 SETTABLEKS                       R21 R20 K60 ["numberRange"]
      397 NEWCLOSURE                       R21 P4
      398 CAPTURE                          VAL R6
      399 CAPTURE                          UPVAL U12
      400 SETTABLEKS                       R21 R20 K61 ["setNumberRange"]
      402 CALL                             R18 2 1
      403 SETTABLEKS                       R18 R17 K51 ["Content"]
      405 CALL                             R14 3 1
      406 SETTABLEKS                       R14 R13 K36 ["BodyTypeSetting"]
      408 MOVE                             R14 R9
      409 JUMPIFNOT                        R14 ; [+67]
      410 GETUPVAL                         R14 6
      411 GETUPVAL                         R15 9
      412 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      413 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      415 LOADK                            R19 K13 ["BodySettings"]
      416 LOADK                            R20 K78 ["BuildProportions"]
      417 NAMECALL                         R17 R1 K15 ["getText"]
      419 CALL                             R17 3 1
      420 SETTABLEKS                       R17 R16 K26 ["text"]
      422 MOVE                             R17 R3
      423 CALL                             R17 0 1
      424 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      426 DUPTABLE                         R17 K52 [{"Content"}]
      427 GETUPVAL                         R18 6
      428 GETUPVAL                         R19 10
      429 DUPTABLE                         R20 K62 [{["snapIncrement"] = 1, ["min"], ["max"], ["enforceInputBounds"] = True, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      430 GETUPVAL                         R21 11
      431 GETTABLEKS                       R21 R21 K79 ["bodyBuildCustomProportions"]
      433 GETTABLEKS                       R21 R21 K55 ["min"]
      435 SETTABLEKS                       R21 R20 K55 ["min"]
      437 GETUPVAL                         R21 11
      438 GETTABLEKS                       R21 R21 K79 ["bodyBuildCustomProportions"]
      440 GETTABLEKS                       R21 R21 K56 ["max"]
      442 SETTABLEKS                       R21 R20 K56 ["max"]
      444 GETTABLEKS                       R22 R6 K79 ["bodyBuildCustomProportions"]
      446 GETTABLEKS                       R22 R22 K21 ["value"]
      448 GETIMPORT                        R23 K65 [NumberRange.new]
      450 GETTABLEKS                       R26 R22 K67 ["Min"]
      452 MULK                             R25 R26 K66 [100]
      453 FASTCALL1                        MATH_ROUND R25 ; [+2]
      454 GETIMPORT                        R24 K70 [math.round]
      456 CALL                             R24 1 1
      457 GETTABLEKS                       R27 R22 K71 ["Max"]
      459 MULK                             R26 R27 K66 [100]
      460 FASTCALL1                        MATH_ROUND R26 ; [+2]
      461 GETIMPORT                        R25 K70 [math.round]
      463 CALL                             R25 1 1
      464 CALL                             R23 2 1
      465 MOVE                             R21 R23
      466 SETTABLEKS                       R21 R20 K60 ["numberRange"]
      468 NEWCLOSURE                       R21 P5
      469 CAPTURE                          VAL R6
      470 CAPTURE                          UPVAL U12
      471 SETTABLEKS                       R21 R20 K61 ["setNumberRange"]
      473 CALL                             R18 2 1
      474 SETTABLEKS                       R18 R17 K51 ["Content"]
      476 CALL                             R14 3 1
      477 SETTABLEKS                       R14 R13 K37 ["BuildSetting"]
      479 CALL                             R10 3 -1
      480 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R5 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Components"]
       49 GETTABLEKS                       R6 R6 K15 ["GenericModeSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R7 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K7 ["Components"]
       72 GETTABLEKS                       R9 R9 K18 ["SliderComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K7 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R4 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K10 ["Util"]
       94 GETTABLEKS                       R13 R13 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R13 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R2 K24 ["CUSTOM_BUILD_PERCENT_LIMITS"]
      101 GETTABLEKS                       R14 R7 K25 ["createNextOrder"]
      103 GETTABLEKS                       R15 R6 K26 ["createElement"]
      105 DUPCLOSURE                       R16 K27 [PROTO_0]
      106 DUPCLOSURE                       R17 K28 [PROTO_1]
      107 DUPCLOSURE                       R18 K29 [PROTO_8]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R17
      121 RETURN                           R18 1
