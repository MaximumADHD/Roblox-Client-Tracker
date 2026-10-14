PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+10]
        7 GETTABLEKS                       R1 R0 K3 ["EnumType"]
        9 GETIMPORT                        R2 K6 [Enum.AvatarSettingsHitAndTouchDetectionMode]
       11 JUMPIFNOTEQ                      R1 R2 ; [+4]
       13 GETTABLEKS                       R1 R0 K7 ["Name"]
       15 RETURN                           R1 1
       16 LOADK                            R1 K8 ["Unknown"]
       17 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Enum.AvatarSettingsHitAndTouchDetectionMode]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K3 ["FromName"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 GETIMPORT                        R1 K5 [Enum.AvatarSettingsHitAndTouchDetectionMode.Unknown]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["legacyCollisionModeAvailable"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 JUMPIFEQKB                       R1 TRUE ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["legacyCollisionModeAvailable"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 NAMECALL                         R0 R0 K1 ["OnSetItem"]
       13 CALL                             R0 3 1
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K0 ["legacyCollisionModeAvailable"]
       19 NAMECALL                         R3 R3 K2 ["GetItem"]
       21 CALL                             R3 2 1
       22 JUMPIFEQKB                       R3 TRUE ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 CALL                             R1 1 0
       27 NEWCLOSURE                       R1 P1
       28 CAPTURE                          VAL R0
       29 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["CollisionModeSelected"]
        5 DUPTABLE                         R4 K2 [{"collisionMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["collisionMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["collisionSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K10 [Enum.AvatarSettingsCollisionMode.Legacy]
       22 JUMPIFNOTEQ                      R0 R1 ; [+12]
       24 GETUPVAL                         R1 3
       25 CALL                             R1 0 1
       26 JUMPIF                           R1 ; [+8]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K11 ["collisionMethodSetting"]
       30 GETTABLEKS                       R1 R1 K6 ["set"]
       32 GETIMPORT                        R2 K14 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collisionHitAndTouchDetectionSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETIMPORT                        R2 K4 [Enum.AvatarSettingsHitAndTouchDetectionMode]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K5 ["FromName"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 GETIMPORT                        R2 K7 [Enum.AvatarSettingsHitAndTouchDetectionMode.Unknown]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["set"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
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
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R5 R5 K6 ["Plugin"]
       30 NAMECALL                         R5 R5 K0 ["use"]
       32 CALL                             R5 1 1
       33 NAMECALL                         R5 R5 K7 ["get"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K8 ["useState"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U7
       43 CALL                             R6 1 2
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R5
       55 SETLIST                          R10 R11 1 [1]
       57 CALL                             R8 2 0
       58 NEWTABLE                         R8 0 2
       60 DUPTABLE                         R9 K12 [{"Id", "Label"}]
       61 GETIMPORT                        R10 K16 [Enum.AvatarSettingsCollisionMode.Default]
       63 SETTABLEKS                       R10 R9 K10 ["Id"]
       65 LOADK                            R12 K17 ["MovementSettings"]
       66 LOADK                            R13 K18 ["CollisionSectionDefaultButtonText"]
       67 NAMECALL                         R10 R1 K19 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K11 ["Label"]
       72 DUPTABLE                         R10 K12 [{"Id", "Label"}]
       73 GETIMPORT                        R11 K21 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       75 SETTABLEKS                       R11 R10 K10 ["Id"]
       77 LOADK                            R13 K17 ["MovementSettings"]
       78 LOADK                            R14 K22 ["CollisionSectionSingleColliderButtonText"]
       79 NAMECALL                         R11 R1 K19 ["getText"]
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K11 ["Label"]
       84 SETLIST                          R8 R9 2 [1]
       86 GETUPVAL                         R9 6
       87 CALL                             R9 0 1
       88 JUMPIFNOT                        R9 ; [+1]
       89 JUMPIFNOT                        R6 ; [+18]
       90 DUPTABLE                         R11 K12 [{"Id", "Label"}]
       91 GETIMPORT                        R12 K24 [Enum.AvatarSettingsCollisionMode.Legacy]
       93 SETTABLEKS                       R12 R11 K10 ["Id"]
       95 LOADK                            R14 K17 ["MovementSettings"]
       96 LOADK                            R15 K25 ["CollisionSectionLegacyButtonText"]
       97 NAMECALL                         R12 R1 K19 ["getText"]
       99 CALL                             R12 3 1
      100 SETTABLEKS                       R12 R11 K11 ["Label"]
      102 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      104 MOVE                             R10 R8
      105 GETIMPORT                        R9 K28 [table.insert]
      107 CALL                             R9 2 0
      108 GETTABLEKS                       R9 R4 K2 ["settings"]
      110 GETTABLEKS                       R9 R9 K29 ["movementSettings"]
      112 GETTABLEKS                       R10 R9 K30 ["collisionSetting"]
      114 GETTABLEKS                       R10 R10 K31 ["value"]
      116 GETIMPORT                        R11 K34 [UDim.new]
      118 LOADN                            R12 0
      119 GETUPVAL                         R13 8
      120 GETTABLEKS                       R13 R13 K35 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
      122 CALL                             R11 2 1
      123 GETIMPORT                        R12 K37 [UDim2.new]
      125 LOADK                            R13 K38 [0.9]
      126 GETUPVAL                         R15 8
      127 GETTABLEKS                       R15 R15 K35 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
      129 MINUS                            R14 R15
      130 LOADN                            R15 0
      131 LOADN                            R16 0
      132 CALL                             R12 4 1
      133 GETIMPORT                        R14 K21 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      135 JUMPIFEQ                         R10 R14 ; [+2]
      137 LOADB                            R13 0 +1
      138 LOADB                            R13 1
      139 GETUPVAL                         R15 9
      140 CALL                             R15 0 1
      141 JUMPIFNOT                        R15 ; [+3]
      142 GETTABLEKS                       R14 R9 K39 ["collisionBodyPartsCollidableOnDeathSetting"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R14
      146 GETUPVAL                         R15 10
      147 GETUPVAL                         R16 11
      148 DUPTABLE                         R17 K44 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      149 LOADK                            R20 K17 ["MovementSettings"]
      150 LOADK                            R21 K45 ["CollisionSection"]
      151 NAMECALL                         R18 R1 K19 ["getText"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K40 ["text"]
      156 GETTABLEKS                       R18 R0 K41 ["layoutOrder"]
      158 SETTABLEKS                       R18 R17 K41 ["layoutOrder"]
      160 DUPTABLE                         R18 K50 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame", "BodyPartsCollidableOnDeath"}]
      161 GETUPVAL                         R19 10
      162 GETUPVAL                         R20 12
      163 DUPTABLE                         R21 K55 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      164 MOVE                             R22 R3
      165 CALL                             R22 0 1
      166 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      168 SETTABLEKS                       R8 R21 K51 ["items"]
      170 SETTABLEKS                       R10 R21 K52 ["selected"]
      172 NEWCLOSURE                       R22 P2
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R9
      176 CAPTURE                          UPVAL U6
      177 SETTABLEKS                       R22 R21 K53 ["onItemActivated"]
      179 LOADK                            R24 K17 ["MovementSettings"]
      180 GETIMPORT                        R26 K16 [Enum.AvatarSettingsCollisionMode.Default]
      182 JUMPIFNOTEQ                      R10 R26 ; [+3]
      184 LOADK                            R25 K56 ["CollisionSectionDefaultSubText"]
      185 JUMP                             ; [+7]
      186 GETIMPORT                        R26 K21 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      188 JUMPIFNOTEQ                      R10 R26 ; [+3]
      190 LOADK                            R25 K57 ["CollisionSectionSingleColliderSubText"]
      191 JUMP                             ; [+1]
      192 LOADK                            R25 K58 ["CollisionSectionLegacySubText"]
      193 NAMECALL                         R22 R1 K19 ["getText"]
      195 CALL                             R22 3 1
      196 SETTABLEKS                       R22 R21 K54 ["subText"]
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K46 ["CollisionModeSelector"]
      201 MOVE                             R19 R13
      202 JUMPIFNOT                        R19 ; [+54]
      203 GETUPVAL                         R19 10
      204 GETUPVAL                         R20 13
      205 DUPTABLE                         R21 K63 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      206 MOVE                             R22 R3
      207 CALL                             R22 0 1
      208 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      210 GETIMPORT                        R22 K34 [UDim.new]
      212 LOADN                            R23 0
      213 LOADN                            R24 4
      214 CALL                             R22 2 1
      215 SETTABLEKS                       R22 R21 K59 ["separation"]
      217 SETTABLEKS                       R11 R21 K62 ["minTextLabelWidth"]
      219 LOADK                            R24 K17 ["MovementSettings"]
      220 LOADK                            R25 K64 ["CollisionSectionSingleColliderSize"]
      221 NAMECALL                         R22 R1 K19 ["getText"]
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K40 ["text"]
      226 DUPTABLE                         R22 K66 [{"Input"}]
      227 GETUPVAL                         R23 10
      228 GETUPVAL                         R24 14
      229 DUPTABLE                         R25 K68 [{"value", "setValue", "text", "layoutOrder"}]
      230 GETTABLEKS                       R26 R9 K69 ["collisionSizeSetting"]
      232 GETTABLEKS                       R26 R26 K31 ["value"]
      234 SETTABLEKS                       R26 R25 K31 ["value"]
      236 GETTABLEKS                       R26 R9 K69 ["collisionSizeSetting"]
      238 GETTABLEKS                       R26 R26 K70 ["set"]
      240 SETTABLEKS                       R26 R25 K67 ["setValue"]
      242 LOADK                            R28 K71 ["General"]
      243 LOADK                            R29 K72 ["studs"]
      244 NAMECALL                         R26 R1 K19 ["getText"]
      246 CALL                             R26 3 1
      247 SETTABLEKS                       R26 R25 K40 ["text"]
      249 MOVE                             R26 R3
      250 CALL                             R26 0 1
      251 SETTABLEKS                       R26 R25 K41 ["layoutOrder"]
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K65 ["Input"]
      256 CALL                             R19 3 1
      257 SETTABLEKS                       R19 R18 K47 ["SizeTitleFrame"]
      259 MOVE                             R19 R13
      260 JUMPIFNOT                        R19 ; [+170]
      261 GETUPVAL                         R19 10
      262 GETUPVAL                         R20 13
      263 DUPTABLE                         R21 K77 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["contentTags"] = "RadioButtonContainer", ["contentAutomaticSize"], ["contentSize"]}]
      264 MOVE                             R22 R3
      265 CALL                             R22 0 1
      266 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      268 GETIMPORT                        R22 K34 [UDim.new]
      270 LOADN                            R23 0
      271 LOADN                            R24 4
      272 CALL                             R22 2 1
      273 SETTABLEKS                       R22 R21 K59 ["separation"]
      275 SETTABLEKS                       R11 R21 K62 ["minTextLabelWidth"]
      277 LOADK                            R24 K17 ["MovementSettings"]
      278 LOADK                            R25 K78 ["CollisionSectionSingleColliderHitTouchDetection"]
      279 NAMECALL                         R22 R1 K19 ["getText"]
      281 CALL                             R22 3 1
      282 SETTABLEKS                       R22 R21 K40 ["text"]
      284 GETIMPORT                        R22 K81 [Enum.AutomaticSize.Y]
      286 SETTABLEKS                       R22 R21 K75 ["contentAutomaticSize"]
      288 SETTABLEKS                       R12 R21 K76 ["contentSize"]
      290 DUPTABLE                         R22 K83 [{"Selector"}]
      291 GETUPVAL                         R23 10
      292 GETUPVAL                         R24 15
      293 DUPTABLE                         R25 K91 [{["LayoutOrder"], ["FillDirection"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextXAlignment"], ["Buttons"], ["CurrentSelectedKey"], ["OnClick"]}]
      294 MOVE                             R26 R3
      295 CALL                             R26 0 1
      296 SETTABLEKS                       R26 R25 K84 ["LayoutOrder"]
      298 GETIMPORT                        R26 K93 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R26 R25 K85 ["FillDirection"]
      302 GETIMPORT                        R26 K81 [Enum.AutomaticSize.Y]
      304 SETTABLEKS                       R26 R25 K79 ["AutomaticSize"]
      306 GETIMPORT                        R26 K95 [Enum.TextXAlignment.Left]
      308 SETTABLEKS                       R26 R25 K87 ["TextXAlignment"]
      310 NEWTABLE                         R26 2 0
      312 GETUPVAL                         R28 16
      313 CALL                             R28 0 1
      314 JUMPIFNOT                        R28 ; [+2]
      315 LOADN                            R27 2
      316 JUMP                             ; [+1]
      317 LOADN                            R27 1
      318 DUPTABLE                         R28 K101 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      319 GETIMPORT                        R30 K104 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      321 FASTCALL1                        TYPEOF R30 ; [+3]
      322 MOVE                             R32 R30
      323 GETIMPORT                        R31 K106 [typeof]
      325 CALL                             R31 1 1
      326 JUMPIFNOTEQKS                    R31 K107 ["EnumItem"] ; [+10]
      328 GETTABLEKS                       R31 R30 K108 ["EnumType"]
      330 GETIMPORT                        R32 K109 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      332 JUMPIFNOTEQ                      R31 R32 ; [+4]
      334 GETTABLEKS                       R29 R30 K110 ["Name"]
      336 JUMP                             ; [+1]
      337 LOADK                            R29 K111 ["Unknown"]
      338 SETTABLEKS                       R29 R28 K96 ["Key"]
      340 LOADK                            R31 K17 ["MovementSettings"]
      341 LOADK                            R32 K112 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
      342 NAMECALL                         R29 R1 K19 ["getText"]
      344 CALL                             R29 3 1
      345 SETTABLEKS                       R29 R28 K97 ["Text"]
      347 LOADK                            R31 K17 ["MovementSettings"]
      348 LOADK                            R32 K113 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
      349 NAMECALL                         R29 R1 K19 ["getText"]
      351 CALL                             R29 3 1
      352 SETTABLEKS                       R29 R28 K98 ["Description"]
      354 SETTABLE                         R28 R26 R27
      355 GETUPVAL                         R28 16
      356 CALL                             R28 0 1
      357 JUMPIFNOT                        R28 ; [+2]
      358 LOADN                            R27 1
      359 JUMP                             ; [+1]
      360 LOADN                            R27 2
      361 DUPTABLE                         R28 K101 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      362 GETIMPORT                        R30 K115 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      364 FASTCALL1                        TYPEOF R30 ; [+3]
      365 MOVE                             R32 R30
      366 GETIMPORT                        R31 K106 [typeof]
      368 CALL                             R31 1 1
      369 JUMPIFNOTEQKS                    R31 K107 ["EnumItem"] ; [+10]
      371 GETTABLEKS                       R31 R30 K108 ["EnumType"]
      373 GETIMPORT                        R32 K109 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      375 JUMPIFNOTEQ                      R31 R32 ; [+4]
      377 GETTABLEKS                       R29 R30 K110 ["Name"]
      379 JUMP                             ; [+1]
      380 LOADK                            R29 K111 ["Unknown"]
      381 SETTABLEKS                       R29 R28 K96 ["Key"]
      383 LOADK                            R31 K17 ["MovementSettings"]
      384 LOADK                            R32 K116 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
      385 NAMECALL                         R29 R1 K19 ["getText"]
      387 CALL                             R29 3 1
      388 SETTABLEKS                       R29 R28 K97 ["Text"]
      390 LOADK                            R31 K17 ["MovementSettings"]
      391 LOADK                            R32 K117 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
      392 NAMECALL                         R29 R1 K19 ["getText"]
      394 CALL                             R29 3 1
      395 SETTABLEKS                       R29 R28 K98 ["Description"]
      397 SETTABLE                         R28 R26 R27
      398 SETTABLEKS                       R26 R25 K88 ["Buttons"]
      400 GETTABLEKS                       R27 R9 K118 ["collisionHitAndTouchDetectionSetting"]
      402 GETTABLEKS                       R27 R27 K31 ["value"]
      404 FASTCALL1                        TYPEOF R27 ; [+3]
      405 MOVE                             R29 R27
      406 GETIMPORT                        R28 K106 [typeof]
      408 CALL                             R28 1 1
      409 JUMPIFNOTEQKS                    R28 K107 ["EnumItem"] ; [+10]
      411 GETTABLEKS                       R28 R27 K108 ["EnumType"]
      413 GETIMPORT                        R29 K109 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      415 JUMPIFNOTEQ                      R28 R29 ; [+4]
      417 GETTABLEKS                       R26 R27 K110 ["Name"]
      419 JUMP                             ; [+1]
      420 LOADK                            R26 K111 ["Unknown"]
      421 SETTABLEKS                       R26 R25 K89 ["CurrentSelectedKey"]
      423 NEWCLOSURE                       R26 P3
      424 CAPTURE                          VAL R9
      425 SETTABLEKS                       R26 R25 K90 ["OnClick"]
      427 CALL                             R23 2 1
      428 SETTABLEKS                       R23 R22 K82 ["Selector"]
      430 CALL                             R19 3 1
      431 SETTABLEKS                       R19 R18 K48 ["HitAndTouchTitleFrame"]
      433 MOVE                             R19 R13
      434 JUMPIFNOT                        R19 ; [+87]
      435 MOVE                             R19 R14
      436 JUMPIFNOT                        R19 ; [+85]
      437 GETUPVAL                         R19 10
      438 GETUPVAL                         R20 17
      439 NEWTABLE                         R21 4 0
      441 GETUPVAL                         R22 3
      442 GETTABLEKS                       R22 R22 K119 ["Tag"]
      444 LOADK                            R23 K120 ["X-ColumnS X-Left"]
      445 SETTABLE                         R23 R21 R22
      446 GETIMPORT                        R22 K122 [UDim2.fromScale]
      448 LOADN                            R23 1
      449 LOADN                            R24 0
      450 CALL                             R22 2 1
      451 SETTABLEKS                       R22 R21 K123 ["Size"]
      453 GETIMPORT                        R22 K81 [Enum.AutomaticSize.Y]
      455 SETTABLEKS                       R22 R21 K79 ["AutomaticSize"]
      457 MOVE                             R22 R3
      458 CALL                             R22 0 1
      459 SETTABLEKS                       R22 R21 K84 ["LayoutOrder"]
      461 DUPTABLE                         R22 K125 [{"Checkbox", "Description"}]
      462 GETUPVAL                         R23 10
      463 GETUPVAL                         R24 18
      464 NEWTABLE                         R25 8 0
      466 GETUPVAL                         R26 3
      467 GETTABLEKS                       R26 R26 K119 ["Tag"]
      469 LOADK                            R27 K126 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact AvatarSettings-DeathCollisionCheckbox"]
      470 SETTABLE                         R27 R25 R26
      471 LOADN                            R26 1
      472 SETTABLEKS                       R26 R25 K84 ["LayoutOrder"]
      474 GETTABLEKS                       R26 R14 K31 ["value"]
      476 SETTABLEKS                       R26 R25 K127 ["Checked"]
      478 LOADK                            R28 K17 ["MovementSettings"]
      479 LOADK                            R29 K128 ["CollisionSectionBodyPartsCollidableOnDeath"]
      480 NAMECALL                         R26 R1 K19 ["getText"]
      482 CALL                             R26 3 1
      483 SETTABLEKS                       R26 R25 K97 ["Text"]
      485 NEWCLOSURE                       R26 P4
      486 CAPTURE                          VAL R14
      487 SETTABLEKS                       R26 R25 K90 ["OnClick"]
      489 CALL                             R23 2 1
      490 SETTABLEKS                       R23 R22 K124 ["Checkbox"]
      492 GETUPVAL                         R23 10
      493 LOADK                            R24 K129 ["TextLabel"]
      494 NEWTABLE                         R25 4 0
      496 GETUPVAL                         R26 3
      497 GETTABLEKS                       R26 R26 K119 ["Tag"]
      499 LOADK                            R27 K130 ["Component-TextLabel AvatarSettings-DeathCollisionDescription"]
      500 SETTABLE                         R27 R25 R26
      501 LOADN                            R26 2
      502 SETTABLEKS                       R26 R25 K84 ["LayoutOrder"]
      504 GETIMPORT                        R26 K122 [UDim2.fromScale]
      506 LOADN                            R27 1
      507 LOADN                            R28 0
      508 CALL                             R26 2 1
      509 SETTABLEKS                       R26 R25 K123 ["Size"]
      511 LOADK                            R28 K17 ["MovementSettings"]
      512 LOADK                            R29 K131 ["CollisionSectionDeathCollisionDescription"]
      513 NAMECALL                         R26 R1 K19 ["getText"]
      515 CALL                             R26 3 1
      516 SETTABLEKS                       R26 R25 K97 ["Text"]
      518 CALL                             R23 2 1
      519 SETTABLEKS                       R23 R22 K98 ["Description"]
      521 CALL                             R19 3 1
      522 SETTABLEKS                       R19 R18 K49 ["BodyPartsCollidableOnDeath"]
      524 CALL                             R15 3 -1
      525 RETURN                           R15 -1

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
       72 GETTABLEKS                       R9 R9 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K7 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["Vector3Input"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K20 ["Flags"]
       90 GETTABLEKS                       R11 R11 K21 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K20 ["Flags"]
       99 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarSettingsConsistentGameplayUseCollider"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K6 ["Src"]
      106 GETTABLEKS                       R13 R13 K20 ["Flags"]
      108 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K6 ["Src"]
      115 GETTABLEKS                       R14 R14 K10 ["Util"]
      117 GETTABLEKS                       R14 R14 K24 ["PluginItemKeys"]
      119 CALL                             R13 1 1
      120 GETTABLEKS                       R14 R4 K25 ["ContextServices"]
      122 GETTABLEKS                       R15 R14 K26 ["Localization"]
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K6 ["Src"]
      128 GETTABLEKS                       R17 R17 K10 ["Util"]
      130 GETTABLEKS                       R17 R17 K27 ["Telemetry"]
      132 GETTABLEKS                       R17 R17 K28 ["TelemetryContext"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R17 R4 K29 ["UI"]
      137 GETTABLEKS                       R18 R17 K30 ["RadioButtonList"]
      139 GETTABLEKS                       R19 R17 K31 ["Checkbox"]
      141 GETTABLEKS                       R20 R17 K32 ["Pane"]
      143 GETTABLEKS                       R21 R7 K33 ["createNextOrder"]
      145 GETTABLEKS                       R22 R6 K34 ["createElement"]
      147 DUPCLOSURE                       R23 K35 [PROTO_0]
      148 DUPCLOSURE                       R24 K36 [PROTO_1]
      149 DUPCLOSURE                       R25 K37 [PROTO_9]
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R19
      169 RETURN                           R25 1
