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
      146 GETUPVAL                         R16 10
      147 CALL                             R16 0 1
      148 JUMPIFNOT                        R16 ; [+3]
      149 GETTABLEKS                       R15 R9 K40 ["collisionHitboxSizeSetting"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R15
      153 NEWTABLE                         R16 2 0
      155 GETUPVAL                         R18 11
      156 CALL                             R18 0 1
      157 JUMPIFNOT                        R18 ; [+2]
      158 LOADN                            R17 2
      159 JUMP                             ; [+1]
      160 LOADN                            R17 1
      161 DUPTABLE                         R18 K46 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      162 GETIMPORT                        R20 K49 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      164 FASTCALL1                        TYPEOF R20 ; [+3]
      165 MOVE                             R22 R20
      166 GETIMPORT                        R21 K51 [typeof]
      168 CALL                             R21 1 1
      169 JUMPIFNOTEQKS                    R21 K52 ["EnumItem"] ; [+10]
      171 GETTABLEKS                       R21 R20 K53 ["EnumType"]
      173 GETIMPORT                        R22 K54 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      175 JUMPIFNOTEQ                      R21 R22 ; [+4]
      177 GETTABLEKS                       R19 R20 K55 ["Name"]
      179 JUMP                             ; [+1]
      180 LOADK                            R19 K56 ["Unknown"]
      181 SETTABLEKS                       R19 R18 K41 ["Key"]
      183 LOADK                            R21 K17 ["MovementSettings"]
      184 LOADK                            R22 K57 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
      185 NAMECALL                         R19 R1 K19 ["getText"]
      187 CALL                             R19 3 1
      188 SETTABLEKS                       R19 R18 K42 ["Text"]
      190 LOADK                            R21 K17 ["MovementSettings"]
      191 JUMPIFNOT                        R15 ; [+2]
      192 LOADK                            R22 K58 ["HitTouchUsePartsDesc"]
      193 JUMP                             ; [+1]
      194 LOADK                            R22 K59 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
      195 NAMECALL                         R19 R1 K19 ["getText"]
      197 CALL                             R19 3 1
      198 SETTABLEKS                       R19 R18 K43 ["Description"]
      200 SETTABLE                         R18 R16 R17
      201 GETUPVAL                         R18 11
      202 CALL                             R18 0 1
      203 JUMPIFNOT                        R18 ; [+2]
      204 LOADN                            R17 1
      205 JUMP                             ; [+1]
      206 LOADN                            R17 2
      207 DUPTABLE                         R18 K46 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      208 GETIMPORT                        R20 K61 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      210 FASTCALL1                        TYPEOF R20 ; [+3]
      211 MOVE                             R22 R20
      212 GETIMPORT                        R21 K51 [typeof]
      214 CALL                             R21 1 1
      215 JUMPIFNOTEQKS                    R21 K52 ["EnumItem"] ; [+10]
      217 GETTABLEKS                       R21 R20 K53 ["EnumType"]
      219 GETIMPORT                        R22 K54 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      221 JUMPIFNOTEQ                      R21 R22 ; [+4]
      223 GETTABLEKS                       R19 R20 K55 ["Name"]
      225 JUMP                             ; [+1]
      226 LOADK                            R19 K56 ["Unknown"]
      227 SETTABLEKS                       R19 R18 K41 ["Key"]
      229 LOADK                            R21 K17 ["MovementSettings"]
      230 LOADK                            R22 K62 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
      231 NAMECALL                         R19 R1 K19 ["getText"]
      233 CALL                             R19 3 1
      234 SETTABLEKS                       R19 R18 K42 ["Text"]
      236 LOADK                            R21 K17 ["MovementSettings"]
      237 JUMPIFNOT                        R15 ; [+2]
      238 LOADK                            R22 K63 ["HitTouchUseColliderDesc"]
      239 JUMP                             ; [+1]
      240 LOADK                            R22 K64 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
      241 NAMECALL                         R19 R1 K19 ["getText"]
      243 CALL                             R19 3 1
      244 SETTABLEKS                       R19 R18 K43 ["Description"]
      246 SETTABLE                         R18 R16 R17
      247 JUMPIFNOT                        R15 ; [+42]
      248 DUPTABLE                         R19 K46 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      249 GETUPVAL                         R21 12
      250 CALL                             R21 0 1
      251 FASTCALL1                        TYPEOF R21 ; [+3]
      252 MOVE                             R23 R21
      253 GETIMPORT                        R22 K51 [typeof]
      255 CALL                             R22 1 1
      256 JUMPIFNOTEQKS                    R22 K52 ["EnumItem"] ; [+10]
      258 GETTABLEKS                       R22 R21 K53 ["EnumType"]
      260 GETIMPORT                        R23 K54 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      262 JUMPIFNOTEQ                      R22 R23 ; [+4]
      264 GETTABLEKS                       R20 R21 K55 ["Name"]
      266 JUMP                             ; [+1]
      267 LOADK                            R20 K56 ["Unknown"]
      268 SETTABLEKS                       R20 R19 K41 ["Key"]
      270 LOADK                            R22 K17 ["MovementSettings"]
      271 LOADK                            R23 K65 ["HitTouchUseHitbox"]
      272 NAMECALL                         R20 R1 K19 ["getText"]
      274 CALL                             R20 3 1
      275 SETTABLEKS                       R20 R19 K42 ["Text"]
      277 LOADK                            R22 K17 ["MovementSettings"]
      278 LOADK                            R23 K66 ["HitTouchUseHitboxDesc"]
      279 NAMECALL                         R20 R1 K19 ["getText"]
      281 CALL                             R20 3 1
      282 SETTABLEKS                       R20 R19 K43 ["Description"]
      284 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      286 MOVE                             R18 R16
      287 GETIMPORT                        R17 K28 [table.insert]
      289 CALL                             R17 2 0
      290 LOADB                            R17 0
      291 JUMPIFEQKNIL                     R15 ; [+11]
      293 GETTABLEKS                       R18 R9 K67 ["collisionHitAndTouchDetectionSetting"]
      295 GETTABLEKS                       R18 R18 K31 ["value"]
      297 GETUPVAL                         R19 12
      298 CALL                             R19 0 1
      299 JUMPIFEQ                         R18 R19 ; [+2]
      301 LOADB                            R17 0 +1
      302 LOADB                            R17 1
      303 GETUPVAL                         R18 13
      304 GETUPVAL                         R19 14
      305 DUPTABLE                         R20 K72 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      306 LOADK                            R23 K17 ["MovementSettings"]
      307 LOADK                            R24 K73 ["CollisionSection"]
      308 NAMECALL                         R21 R1 K19 ["getText"]
      310 CALL                             R21 3 1
      311 SETTABLEKS                       R21 R20 K68 ["text"]
      313 GETTABLEKS                       R21 R0 K69 ["layoutOrder"]
      315 SETTABLEKS                       R21 R20 K69 ["layoutOrder"]
      317 DUPTABLE                         R21 K79 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame", "HitboxSizeTitleFrame", "BodyPartsCollidableOnDeath"}]
      318 GETUPVAL                         R22 13
      319 GETUPVAL                         R23 15
      320 DUPTABLE                         R24 K84 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      321 MOVE                             R25 R3
      322 CALL                             R25 0 1
      323 SETTABLEKS                       R25 R24 K69 ["layoutOrder"]
      325 SETTABLEKS                       R8 R24 K80 ["items"]
      327 SETTABLEKS                       R10 R24 K81 ["selected"]
      329 NEWCLOSURE                       R25 P2
      330 CAPTURE                          VAL R10
      331 CAPTURE                          VAL R2
      332 CAPTURE                          VAL R9
      333 CAPTURE                          UPVAL U6
      334 SETTABLEKS                       R25 R24 K82 ["onItemActivated"]
      336 LOADK                            R27 K17 ["MovementSettings"]
      337 GETIMPORT                        R29 K16 [Enum.AvatarSettingsCollisionMode.Default]
      339 JUMPIFNOTEQ                      R10 R29 ; [+3]
      341 LOADK                            R28 K85 ["CollisionSectionDefaultSubText"]
      342 JUMP                             ; [+7]
      343 GETIMPORT                        R29 K21 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      345 JUMPIFNOTEQ                      R10 R29 ; [+3]
      347 LOADK                            R28 K86 ["CollisionSectionSingleColliderSubText"]
      348 JUMP                             ; [+1]
      349 LOADK                            R28 K87 ["CollisionSectionLegacySubText"]
      350 NAMECALL                         R25 R1 K19 ["getText"]
      352 CALL                             R25 3 1
      353 SETTABLEKS                       R25 R24 K83 ["subText"]
      355 CALL                             R22 2 1
      356 SETTABLEKS                       R22 R21 K74 ["CollisionModeSelector"]
      358 MOVE                             R22 R13
      359 JUMPIFNOT                        R22 ; [+54]
      360 GETUPVAL                         R22 13
      361 GETUPVAL                         R23 16
      362 DUPTABLE                         R24 K92 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      363 MOVE                             R25 R3
      364 CALL                             R25 0 1
      365 SETTABLEKS                       R25 R24 K69 ["layoutOrder"]
      367 GETIMPORT                        R25 K34 [UDim.new]
      369 LOADN                            R26 0
      370 LOADN                            R27 4
      371 CALL                             R25 2 1
      372 SETTABLEKS                       R25 R24 K88 ["separation"]
      374 SETTABLEKS                       R11 R24 K91 ["minTextLabelWidth"]
      376 LOADK                            R27 K17 ["MovementSettings"]
      377 LOADK                            R28 K93 ["CollisionSectionSingleColliderSize"]
      378 NAMECALL                         R25 R1 K19 ["getText"]
      380 CALL                             R25 3 1
      381 SETTABLEKS                       R25 R24 K68 ["text"]
      383 DUPTABLE                         R25 K95 [{"Input"}]
      384 GETUPVAL                         R26 13
      385 GETUPVAL                         R27 17
      386 DUPTABLE                         R28 K97 [{"value", "setValue", "text", "layoutOrder"}]
      387 GETTABLEKS                       R29 R9 K98 ["collisionSizeSetting"]
      389 GETTABLEKS                       R29 R29 K31 ["value"]
      391 SETTABLEKS                       R29 R28 K31 ["value"]
      393 GETTABLEKS                       R29 R9 K98 ["collisionSizeSetting"]
      395 GETTABLEKS                       R29 R29 K99 ["set"]
      397 SETTABLEKS                       R29 R28 K96 ["setValue"]
      399 LOADK                            R31 K100 ["General"]
      400 LOADK                            R32 K101 ["studs"]
      401 NAMECALL                         R29 R1 K19 ["getText"]
      403 CALL                             R29 3 1
      404 SETTABLEKS                       R29 R28 K68 ["text"]
      406 MOVE                             R29 R3
      407 CALL                             R29 0 1
      408 SETTABLEKS                       R29 R28 K69 ["layoutOrder"]
      410 CALL                             R26 2 1
      411 SETTABLEKS                       R26 R25 K94 ["Input"]
      413 CALL                             R22 3 1
      414 SETTABLEKS                       R22 R21 K75 ["SizeTitleFrame"]
      416 MOVE                             R22 R13
      417 JUMPIFNOT                        R22 ; [+85]
      418 GETUPVAL                         R22 13
      419 GETUPVAL                         R23 16
      420 DUPTABLE                         R24 K106 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["contentTags"] = "RadioButtonContainer", ["contentAutomaticSize"], ["contentSize"]}]
      421 MOVE                             R25 R3
      422 CALL                             R25 0 1
      423 SETTABLEKS                       R25 R24 K69 ["layoutOrder"]
      425 GETIMPORT                        R25 K34 [UDim.new]
      427 LOADN                            R26 0
      428 LOADN                            R27 4
      429 CALL                             R25 2 1
      430 SETTABLEKS                       R25 R24 K88 ["separation"]
      432 SETTABLEKS                       R11 R24 K91 ["minTextLabelWidth"]
      434 LOADK                            R27 K17 ["MovementSettings"]
      435 JUMPIFNOT                        R15 ; [+2]
      436 LOADK                            R28 K107 ["HitTouchDetection"]
      437 JUMP                             ; [+1]
      438 LOADK                            R28 K108 ["CollisionSectionSingleColliderHitTouchDetection"]
      439 NAMECALL                         R25 R1 K19 ["getText"]
      441 CALL                             R25 3 1
      442 SETTABLEKS                       R25 R24 K68 ["text"]
      444 GETIMPORT                        R25 K111 [Enum.AutomaticSize.Y]
      446 SETTABLEKS                       R25 R24 K104 ["contentAutomaticSize"]
      448 SETTABLEKS                       R12 R24 K105 ["contentSize"]
      450 DUPTABLE                         R25 K113 [{"Selector"}]
      451 GETUPVAL                         R26 13
      452 GETUPVAL                         R27 18
      453 DUPTABLE                         R28 K121 [{["LayoutOrder"], ["FillDirection"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextXAlignment"], ["Buttons"], ["CurrentSelectedKey"], ["OnClick"]}]
      454 MOVE                             R29 R3
      455 CALL                             R29 0 1
      456 SETTABLEKS                       R29 R28 K114 ["LayoutOrder"]
      458 GETIMPORT                        R29 K123 [Enum.FillDirection.Vertical]
      460 SETTABLEKS                       R29 R28 K115 ["FillDirection"]
      462 GETIMPORT                        R29 K111 [Enum.AutomaticSize.Y]
      464 SETTABLEKS                       R29 R28 K109 ["AutomaticSize"]
      466 GETIMPORT                        R29 K125 [Enum.TextXAlignment.Left]
      468 SETTABLEKS                       R29 R28 K117 ["TextXAlignment"]
      470 SETTABLEKS                       R16 R28 K118 ["Buttons"]
      472 GETTABLEKS                       R30 R9 K67 ["collisionHitAndTouchDetectionSetting"]
      474 GETTABLEKS                       R30 R30 K31 ["value"]
      476 FASTCALL1                        TYPEOF R30 ; [+3]
      477 MOVE                             R32 R30
      478 GETIMPORT                        R31 K51 [typeof]
      480 CALL                             R31 1 1
      481 JUMPIFNOTEQKS                    R31 K52 ["EnumItem"] ; [+10]
      483 GETTABLEKS                       R31 R30 K53 ["EnumType"]
      485 GETIMPORT                        R32 K54 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      487 JUMPIFNOTEQ                      R31 R32 ; [+4]
      489 GETTABLEKS                       R29 R30 K55 ["Name"]
      491 JUMP                             ; [+1]
      492 LOADK                            R29 K56 ["Unknown"]
      493 SETTABLEKS                       R29 R28 K119 ["CurrentSelectedKey"]
      495 NEWCLOSURE                       R29 P3
      496 CAPTURE                          VAL R9
      497 SETTABLEKS                       R29 R28 K120 ["OnClick"]
      499 CALL                             R26 2 1
      500 SETTABLEKS                       R26 R25 K112 ["Selector"]
      502 CALL                             R22 3 1
      503 SETTABLEKS                       R22 R21 K76 ["HitAndTouchTitleFrame"]
      505 MOVE                             R22 R13
      506 JUMPIFNOT                        R22 ; [+54]
      507 MOVE                             R22 R17
      508 JUMPIFNOT                        R22 ; [+52]
      509 MOVE                             R22 R15
      510 JUMPIFNOT                        R22 ; [+50]
      511 GETUPVAL                         R22 13
      512 GETUPVAL                         R23 16
      513 DUPTABLE                         R24 K92 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      514 MOVE                             R25 R3
      515 CALL                             R25 0 1
      516 SETTABLEKS                       R25 R24 K69 ["layoutOrder"]
      518 GETIMPORT                        R25 K34 [UDim.new]
      520 LOADN                            R26 0
      521 LOADN                            R27 4
      522 CALL                             R25 2 1
      523 SETTABLEKS                       R25 R24 K88 ["separation"]
      525 SETTABLEKS                       R11 R24 K91 ["minTextLabelWidth"]
      527 LOADK                            R27 K17 ["MovementSettings"]
      528 LOADK                            R28 K126 ["HitboxSize"]
      529 NAMECALL                         R25 R1 K19 ["getText"]
      531 CALL                             R25 3 1
      532 SETTABLEKS                       R25 R24 K68 ["text"]
      534 DUPTABLE                         R25 K95 [{"Input"}]
      535 GETUPVAL                         R26 13
      536 GETUPVAL                         R27 17
      537 DUPTABLE                         R28 K97 [{"value", "setValue", "text", "layoutOrder"}]
      538 GETTABLEKS                       R29 R15 K31 ["value"]
      540 SETTABLEKS                       R29 R28 K31 ["value"]
      542 GETTABLEKS                       R29 R15 K99 ["set"]
      544 SETTABLEKS                       R29 R28 K96 ["setValue"]
      546 LOADK                            R31 K100 ["General"]
      547 LOADK                            R32 K101 ["studs"]
      548 NAMECALL                         R29 R1 K19 ["getText"]
      550 CALL                             R29 3 1
      551 SETTABLEKS                       R29 R28 K68 ["text"]
      553 MOVE                             R29 R3
      554 CALL                             R29 0 1
      555 SETTABLEKS                       R29 R28 K69 ["layoutOrder"]
      557 CALL                             R26 2 1
      558 SETTABLEKS                       R26 R25 K94 ["Input"]
      560 CALL                             R22 3 1
      561 SETTABLEKS                       R22 R21 K77 ["HitboxSizeTitleFrame"]
      563 MOVE                             R22 R14
      564 JUMPIFNOT                        R22 ; [+85]
      565 GETUPVAL                         R22 13
      566 GETUPVAL                         R23 19
      567 NEWTABLE                         R24 4 0
      569 GETUPVAL                         R25 3
      570 GETTABLEKS                       R25 R25 K127 ["Tag"]
      572 LOADK                            R26 K128 ["X-ColumnS X-Left"]
      573 SETTABLE                         R26 R24 R25
      574 GETIMPORT                        R25 K130 [UDim2.fromScale]
      576 LOADN                            R26 1
      577 LOADN                            R27 0
      578 CALL                             R25 2 1
      579 SETTABLEKS                       R25 R24 K131 ["Size"]
      581 GETIMPORT                        R25 K111 [Enum.AutomaticSize.Y]
      583 SETTABLEKS                       R25 R24 K109 ["AutomaticSize"]
      585 MOVE                             R25 R3
      586 CALL                             R25 0 1
      587 SETTABLEKS                       R25 R24 K114 ["LayoutOrder"]
      589 DUPTABLE                         R25 K133 [{"Checkbox", "Description"}]
      590 GETUPVAL                         R26 13
      591 GETUPVAL                         R27 20
      592 NEWTABLE                         R28 8 0
      594 GETUPVAL                         R29 3
      595 GETTABLEKS                       R29 R29 K127 ["Tag"]
      597 LOADK                            R30 K134 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact AvatarSettings-DeathCollisionCheckbox"]
      598 SETTABLE                         R30 R28 R29
      599 LOADN                            R29 1
      600 SETTABLEKS                       R29 R28 K114 ["LayoutOrder"]
      602 GETTABLEKS                       R29 R14 K31 ["value"]
      604 SETTABLEKS                       R29 R28 K135 ["Checked"]
      606 LOADK                            R31 K17 ["MovementSettings"]
      607 LOADK                            R32 K136 ["CollisionSectionBodyPartsCollidableOnDeath"]
      608 NAMECALL                         R29 R1 K19 ["getText"]
      610 CALL                             R29 3 1
      611 SETTABLEKS                       R29 R28 K42 ["Text"]
      613 NEWCLOSURE                       R29 P4
      614 CAPTURE                          VAL R14
      615 SETTABLEKS                       R29 R28 K120 ["OnClick"]
      617 CALL                             R26 2 1
      618 SETTABLEKS                       R26 R25 K132 ["Checkbox"]
      620 GETUPVAL                         R26 13
      621 LOADK                            R27 K137 ["TextLabel"]
      622 NEWTABLE                         R28 4 0
      624 GETUPVAL                         R29 3
      625 GETTABLEKS                       R29 R29 K127 ["Tag"]
      627 LOADK                            R30 K138 ["Component-TextLabel AvatarSettings-DeathCollisionDescription"]
      628 SETTABLE                         R30 R28 R29
      629 LOADN                            R29 2
      630 SETTABLEKS                       R29 R28 K114 ["LayoutOrder"]
      632 GETIMPORT                        R29 K130 [UDim2.fromScale]
      634 LOADN                            R30 1
      635 LOADN                            R31 0
      636 CALL                             R29 2 1
      637 SETTABLEKS                       R29 R28 K131 ["Size"]
      639 LOADK                            R31 K17 ["MovementSettings"]
      640 LOADK                            R32 K139 ["CollisionSectionDeathCollisionDescription"]
      641 NAMECALL                         R29 R1 K19 ["getText"]
      643 CALL                             R29 3 1
      644 SETTABLEKS                       R29 R28 K42 ["Text"]
      646 CALL                             R26 2 1
      647 SETTABLEKS                       R26 R25 K43 ["Description"]
      649 CALL                             R22 3 1
      650 SETTABLEKS                       R22 R21 K78 ["BodyPartsCollidableOnDeath"]
      652 CALL                             R18 3 -1
      653 RETURN                           R18 -1

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
       99 GETTABLEKS                       R12 R12 K22 ["getEngineFeatureAvatarSettingsHitbox"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K6 ["Src"]
      106 GETTABLEKS                       R13 R13 K20 ["Flags"]
      108 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarSettingsConsistentGameplayUseCollider"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K6 ["Src"]
      115 GETTABLEKS                       R14 R14 K20 ["Flags"]
      117 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K6 ["Src"]
      124 GETTABLEKS                       R15 R15 K10 ["Util"]
      126 GETTABLEKS                       R15 R15 K25 ["getUseHitboxDetectionMode"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K6 ["Src"]
      133 GETTABLEKS                       R16 R16 K10 ["Util"]
      135 GETTABLEKS                       R16 R16 K26 ["PluginItemKeys"]
      137 CALL                             R15 1 1
      138 GETTABLEKS                       R16 R4 K27 ["ContextServices"]
      140 GETTABLEKS                       R17 R16 K28 ["Localization"]
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K6 ["Src"]
      146 GETTABLEKS                       R19 R19 K10 ["Util"]
      148 GETTABLEKS                       R19 R19 K29 ["Telemetry"]
      150 GETTABLEKS                       R19 R19 K30 ["TelemetryContext"]
      152 CALL                             R18 1 1
      153 GETTABLEKS                       R19 R4 K31 ["UI"]
      155 GETTABLEKS                       R20 R19 K32 ["RadioButtonList"]
      157 GETTABLEKS                       R21 R19 K33 ["Checkbox"]
      159 GETTABLEKS                       R22 R19 K34 ["Pane"]
      161 GETTABLEKS                       R23 R7 K35 ["createNextOrder"]
      163 GETTABLEKS                       R24 R6 K36 ["createElement"]
      165 DUPCLOSURE                       R25 K37 [PROTO_0]
      166 DUPCLOSURE                       R26 K38 [PROTO_1]
      167 DUPCLOSURE                       R27 K39 [PROTO_9]
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R24
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R21
      189 RETURN                           R27 1
