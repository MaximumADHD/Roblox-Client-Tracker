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
      125 JUMPIFNOT                        R14 ; [+53]
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
      145 DUPTABLE                         R20 K63 [{["snapIncrement"] = 1, ["min"] = 90, ["max"] = 105, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      146 GETTABLEKS                       R22 R6 K64 ["bodyBuildCustomHeight"]
      148 GETTABLEKS                       R22 R22 K21 ["value"]
      150 GETIMPORT                        R23 K66 [NumberRange.new]
      152 GETTABLEKS                       R26 R22 K68 ["Min"]
      154 MULK                             R25 R26 K67 [100]
      155 FASTCALL1                        MATH_ROUND R25 ; [+2]
      156 GETIMPORT                        R24 K71 [math.round]
      158 CALL                             R24 1 1
      159 GETTABLEKS                       R27 R22 K72 ["Max"]
      161 MULK                             R26 R27 K67 [100]
      162 FASTCALL1                        MATH_ROUND R26 ; [+2]
      163 GETIMPORT                        R25 K71 [math.round]
      165 CALL                             R25 1 1
      166 CALL                             R23 2 1
      167 MOVE                             R21 R23
      168 SETTABLEKS                       R21 R20 K61 ["numberRange"]
      170 NEWCLOSURE                       R21 P1
      171 CAPTURE                          VAL R6
      172 CAPTURE                          UPVAL U11
      173 SETTABLEKS                       R21 R20 K62 ["setNumberRange"]
      175 CALL                             R18 2 1
      176 SETTABLEKS                       R18 R17 K51 ["Content"]
      178 CALL                             R14 3 1
      179 SETTABLEKS                       R14 R13 K33 ["HeightSetting"]
      181 MOVE                             R14 R9
      182 JUMPIFNOT                        R14 ; [+53]
      183 GETUPVAL                         R14 6
      184 GETUPVAL                         R15 9
      185 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      186 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      188 LOADK                            R19 K13 ["BodySettings"]
      189 LOADK                            R20 K73 ["BuildWidth"]
      190 NAMECALL                         R17 R1 K15 ["getText"]
      192 CALL                             R17 3 1
      193 SETTABLEKS                       R17 R16 K26 ["text"]
      195 MOVE                             R17 R3
      196 CALL                             R17 0 1
      197 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      199 DUPTABLE                         R17 K52 [{"Content"}]
      200 GETUPVAL                         R18 6
      201 GETUPVAL                         R19 10
      202 DUPTABLE                         R20 K75 [{["snapIncrement"] = 1, ["min"] = 70, ["max"] = 100, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      203 GETTABLEKS                       R22 R6 K76 ["bodyBuildCustomWidth"]
      205 GETTABLEKS                       R22 R22 K21 ["value"]
      207 GETIMPORT                        R23 K66 [NumberRange.new]
      209 GETTABLEKS                       R26 R22 K68 ["Min"]
      211 MULK                             R25 R26 K67 [100]
      212 FASTCALL1                        MATH_ROUND R25 ; [+2]
      213 GETIMPORT                        R24 K71 [math.round]
      215 CALL                             R24 1 1
      216 GETTABLEKS                       R27 R22 K72 ["Max"]
      218 MULK                             R26 R27 K67 [100]
      219 FASTCALL1                        MATH_ROUND R26 ; [+2]
      220 GETIMPORT                        R25 K71 [math.round]
      222 CALL                             R25 1 1
      223 CALL                             R23 2 1
      224 MOVE                             R21 R23
      225 SETTABLEKS                       R21 R20 K61 ["numberRange"]
      227 NEWCLOSURE                       R21 P2
      228 CAPTURE                          VAL R6
      229 CAPTURE                          UPVAL U11
      230 SETTABLEKS                       R21 R20 K62 ["setNumberRange"]
      232 CALL                             R18 2 1
      233 SETTABLEKS                       R18 R17 K51 ["Content"]
      235 CALL                             R14 3 1
      236 SETTABLEKS                       R14 R13 K34 ["WidthSetting"]
      238 MOVE                             R14 R9
      239 JUMPIFNOT                        R14 ; [+53]
      240 GETUPVAL                         R14 6
      241 GETUPVAL                         R15 9
      242 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      243 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      245 LOADK                            R19 K13 ["BodySettings"]
      246 LOADK                            R20 K77 ["BuildHead"]
      247 NAMECALL                         R17 R1 K15 ["getText"]
      249 CALL                             R17 3 1
      250 SETTABLEKS                       R17 R16 K26 ["text"]
      252 MOVE                             R17 R3
      253 CALL                             R17 0 1
      254 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      256 DUPTABLE                         R17 K52 [{"Content"}]
      257 GETUPVAL                         R18 6
      258 GETUPVAL                         R19 10
      259 DUPTABLE                         R20 K79 [{["snapIncrement"] = 1, ["min"] = 95, ["max"] = 100, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      260 GETTABLEKS                       R22 R6 K80 ["bodyBuildCustomHead"]
      262 GETTABLEKS                       R22 R22 K21 ["value"]
      264 GETIMPORT                        R23 K66 [NumberRange.new]
      266 GETTABLEKS                       R26 R22 K68 ["Min"]
      268 MULK                             R25 R26 K67 [100]
      269 FASTCALL1                        MATH_ROUND R25 ; [+2]
      270 GETIMPORT                        R24 K71 [math.round]
      272 CALL                             R24 1 1
      273 GETTABLEKS                       R27 R22 K72 ["Max"]
      275 MULK                             R26 R27 K67 [100]
      276 FASTCALL1                        MATH_ROUND R26 ; [+2]
      277 GETIMPORT                        R25 K71 [math.round]
      279 CALL                             R25 1 1
      280 CALL                             R23 2 1
      281 MOVE                             R21 R23
      282 SETTABLEKS                       R21 R20 K61 ["numberRange"]
      284 NEWCLOSURE                       R21 P3
      285 CAPTURE                          VAL R6
      286 CAPTURE                          UPVAL U11
      287 SETTABLEKS                       R21 R20 K62 ["setNumberRange"]
      289 CALL                             R18 2 1
      290 SETTABLEKS                       R18 R17 K51 ["Content"]
      292 CALL                             R14 3 1
      293 SETTABLEKS                       R14 R13 K35 ["HeadSetting"]
      295 MOVE                             R14 R9
      296 JUMPIFNOT                        R14 ; [+53]
      297 GETUPVAL                         R14 6
      298 GETUPVAL                         R15 9
      299 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      300 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      302 LOADK                            R19 K13 ["BodySettings"]
      303 LOADK                            R20 K81 ["BuildBodyType"]
      304 NAMECALL                         R17 R1 K15 ["getText"]
      306 CALL                             R17 3 1
      307 SETTABLEKS                       R17 R16 K26 ["text"]
      309 MOVE                             R17 R3
      310 CALL                             R17 0 1
      311 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      313 DUPTABLE                         R17 K52 [{"Content"}]
      314 GETUPVAL                         R18 6
      315 GETUPVAL                         R19 10
      316 DUPTABLE                         R20 K83 [{["snapIncrement"] = 1, ["min"] = 0, ["max"] = 100, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      317 GETTABLEKS                       R22 R6 K84 ["bodyBuildCustomBodyType"]
      319 GETTABLEKS                       R22 R22 K21 ["value"]
      321 GETIMPORT                        R23 K66 [NumberRange.new]
      323 GETTABLEKS                       R26 R22 K68 ["Min"]
      325 MULK                             R25 R26 K67 [100]
      326 FASTCALL1                        MATH_ROUND R25 ; [+2]
      327 GETIMPORT                        R24 K71 [math.round]
      329 CALL                             R24 1 1
      330 GETTABLEKS                       R27 R22 K72 ["Max"]
      332 MULK                             R26 R27 K67 [100]
      333 FASTCALL1                        MATH_ROUND R26 ; [+2]
      334 GETIMPORT                        R25 K71 [math.round]
      336 CALL                             R25 1 1
      337 CALL                             R23 2 1
      338 MOVE                             R21 R23
      339 SETTABLEKS                       R21 R20 K61 ["numberRange"]
      341 NEWCLOSURE                       R21 P4
      342 CAPTURE                          VAL R6
      343 CAPTURE                          UPVAL U11
      344 SETTABLEKS                       R21 R20 K62 ["setNumberRange"]
      346 CALL                             R18 2 1
      347 SETTABLEKS                       R18 R17 K51 ["Content"]
      349 CALL                             R14 3 1
      350 SETTABLEKS                       R14 R13 K36 ["BodyTypeSetting"]
      352 MOVE                             R14 R9
      353 JUMPIFNOT                        R14 ; [+53]
      354 GETUPVAL                         R14 6
      355 GETUPVAL                         R15 9
      356 DUPTABLE                         R16 K49 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      357 SETTABLEKS                       R8 R16 K46 ["minTextLabelWidth"]
      359 LOADK                            R19 K13 ["BodySettings"]
      360 LOADK                            R20 K85 ["BuildProportions"]
      361 NAMECALL                         R17 R1 K15 ["getText"]
      363 CALL                             R17 3 1
      364 SETTABLEKS                       R17 R16 K26 ["text"]
      366 MOVE                             R17 R3
      367 CALL                             R17 0 1
      368 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      370 DUPTABLE                         R17 K52 [{"Content"}]
      371 GETUPVAL                         R18 6
      372 GETUPVAL                         R19 10
      373 DUPTABLE                         R20 K83 [{["snapIncrement"] = 1, ["min"] = 0, ["max"] = 100, ["inputFieldText"] = "%", ["numberRange"], ["setNumberRange"]}]
      374 GETTABLEKS                       R22 R6 K86 ["bodyBuildCustomProportions"]
      376 GETTABLEKS                       R22 R22 K21 ["value"]
      378 GETIMPORT                        R23 K66 [NumberRange.new]
      380 GETTABLEKS                       R26 R22 K68 ["Min"]
      382 MULK                             R25 R26 K67 [100]
      383 FASTCALL1                        MATH_ROUND R25 ; [+2]
      384 GETIMPORT                        R24 K71 [math.round]
      386 CALL                             R24 1 1
      387 GETTABLEKS                       R27 R22 K72 ["Max"]
      389 MULK                             R26 R27 K67 [100]
      390 FASTCALL1                        MATH_ROUND R26 ; [+2]
      391 GETIMPORT                        R25 K71 [math.round]
      393 CALL                             R25 1 1
      394 CALL                             R23 2 1
      395 MOVE                             R21 R23
      396 SETTABLEKS                       R21 R20 K61 ["numberRange"]
      398 NEWCLOSURE                       R21 P5
      399 CAPTURE                          VAL R6
      400 CAPTURE                          UPVAL U11
      401 SETTABLEKS                       R21 R20 K62 ["setNumberRange"]
      403 CALL                             R18 2 1
      404 SETTABLEKS                       R18 R17 K51 ["Content"]
      406 CALL                             R14 3 1
      407 SETTABLEKS                       R14 R13 K37 ["BuildSetting"]
      409 CALL                             R10 3 -1
      410 RETURN                           R10 -1

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
