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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 4 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["Tag"]
        7 LOADK                            R5 K1 ["X-RowS X-Left X-Middle"]
        8 SETTABLE                         R5 R3 R4
        9 GETIMPORT                        R4 K4 [UDim2.fromScale]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K5 ["Size"]
       16 GETIMPORT                        R4 K9 [Enum.AutomaticSize.Y]
       18 SETTABLEKS                       R4 R3 K7 ["AutomaticSize"]
       20 GETTABLEKS                       R4 R0 K10 ["layoutOrder"]
       22 SETTABLEKS                       R4 R3 K11 ["LayoutOrder"]
       24 DUPTABLE                         R4 K14 [{"Icon", "Text"}]
       25 GETUPVAL                         R5 0
       26 LOADK                            R6 K15 ["ImageLabel"]
       27 NEWTABLE                         R7 2 0
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K0 ["Tag"]
       32 LOADK                            R9 K16 ["Component-WarningIcon ConsistentGameplayOff"]
       33 SETTABLE                         R9 R7 R8
       34 LOADN                            R8 1
       35 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K12 ["Icon"]
       40 GETUPVAL                         R5 0
       41 LOADK                            R6 K17 ["TextLabel"]
       42 NEWTABLE                         R7 4 0
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K0 ["Tag"]
       47 LOADK                            R9 K18 ["Component-TextLabel AvatarSettings-ConsistentGameplayOffWarning"]
       48 SETTABLE                         R9 R7 R8
       49 LOADN                            R8 2
       50 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       52 GETTABLEKS                       R8 R0 K19 ["text"]
       54 SETTABLEKS                       R8 R7 K13 ["Text"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["Text"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["set"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
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
      290 GETUPVAL                         R18 13
      291 CALL                             R18 0 1
      292 JUMPIFEQKB                       R18 TRUE ; [+2]
      294 LOADB                            R17 0 +1
      295 LOADB                            R17 1
      296 LOADK                            R20 K17 ["MovementSettings"]
      297 LOADK                            R21 K67 ["ConsistentGameplayOffWarning"]
      298 NAMECALL                         R18 R1 K19 ["getText"]
      300 CALL                             R18 3 1
      301 LOADB                            R19 0
      302 JUMPIFEQKNIL                     R15 ; [+11]
      304 GETTABLEKS                       R20 R9 K68 ["collisionHitAndTouchDetectionSetting"]
      306 GETTABLEKS                       R20 R20 K31 ["value"]
      308 GETUPVAL                         R21 12
      309 CALL                             R21 0 1
      310 JUMPIFEQ                         R20 R21 ; [+2]
      312 LOADB                            R19 0 +1
      313 LOADB                            R19 1
      314 GETUPVAL                         R20 14
      315 GETUPVAL                         R21 15
      316 DUPTABLE                         R22 K73 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      317 LOADK                            R25 K17 ["MovementSettings"]
      318 LOADK                            R26 K74 ["CollisionSection"]
      319 NAMECALL                         R23 R1 K19 ["getText"]
      321 CALL                             R23 3 1
      322 SETTABLEKS                       R23 R22 K69 ["text"]
      324 GETTABLEKS                       R23 R0 K70 ["layoutOrder"]
      326 SETTABLEKS                       R23 R22 K70 ["layoutOrder"]
      328 DUPTABLE                         R23 K81 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame", "HitboxSizeTitleFrame", "HitboxConsistentGameplayOffWarning", "BodyPartsCollidableOnDeath"}]
      329 GETUPVAL                         R24 14
      330 GETUPVAL                         R25 16
      331 DUPTABLE                         R26 K86 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      332 MOVE                             R27 R3
      333 CALL                             R27 0 1
      334 SETTABLEKS                       R27 R26 K70 ["layoutOrder"]
      336 SETTABLEKS                       R8 R26 K82 ["items"]
      338 SETTABLEKS                       R10 R26 K83 ["selected"]
      340 NEWCLOSURE                       R27 P2
      341 CAPTURE                          VAL R10
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R9
      344 CAPTURE                          UPVAL U6
      345 SETTABLEKS                       R27 R26 K84 ["onItemActivated"]
      347 LOADK                            R29 K17 ["MovementSettings"]
      348 GETIMPORT                        R31 K16 [Enum.AvatarSettingsCollisionMode.Default]
      350 JUMPIFNOTEQ                      R10 R31 ; [+3]
      352 LOADK                            R30 K87 ["CollisionSectionDefaultSubText"]
      353 JUMP                             ; [+7]
      354 GETIMPORT                        R31 K21 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      356 JUMPIFNOTEQ                      R10 R31 ; [+3]
      358 LOADK                            R30 K88 ["CollisionSectionSingleColliderSubText"]
      359 JUMP                             ; [+1]
      360 LOADK                            R30 K89 ["CollisionSectionLegacySubText"]
      361 NAMECALL                         R27 R1 K19 ["getText"]
      363 CALL                             R27 3 1
      364 SETTABLEKS                       R27 R26 K85 ["subText"]
      366 CALL                             R24 2 1
      367 SETTABLEKS                       R24 R23 K75 ["CollisionModeSelector"]
      369 MOVE                             R24 R13
      370 JUMPIFNOT                        R24 ; [+54]
      371 GETUPVAL                         R24 14
      372 GETUPVAL                         R25 17
      373 DUPTABLE                         R26 K94 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      374 MOVE                             R27 R3
      375 CALL                             R27 0 1
      376 SETTABLEKS                       R27 R26 K70 ["layoutOrder"]
      378 GETIMPORT                        R27 K34 [UDim.new]
      380 LOADN                            R28 0
      381 LOADN                            R29 4
      382 CALL                             R27 2 1
      383 SETTABLEKS                       R27 R26 K90 ["separation"]
      385 SETTABLEKS                       R11 R26 K93 ["minTextLabelWidth"]
      387 LOADK                            R29 K17 ["MovementSettings"]
      388 LOADK                            R30 K95 ["CollisionSectionSingleColliderSize"]
      389 NAMECALL                         R27 R1 K19 ["getText"]
      391 CALL                             R27 3 1
      392 SETTABLEKS                       R27 R26 K69 ["text"]
      394 DUPTABLE                         R27 K97 [{"Input"}]
      395 GETUPVAL                         R28 14
      396 GETUPVAL                         R29 18
      397 DUPTABLE                         R30 K99 [{"value", "setValue", "text", "layoutOrder"}]
      398 GETTABLEKS                       R31 R9 K100 ["collisionSizeSetting"]
      400 GETTABLEKS                       R31 R31 K31 ["value"]
      402 SETTABLEKS                       R31 R30 K31 ["value"]
      404 GETTABLEKS                       R31 R9 K100 ["collisionSizeSetting"]
      406 GETTABLEKS                       R31 R31 K101 ["set"]
      408 SETTABLEKS                       R31 R30 K98 ["setValue"]
      410 LOADK                            R33 K102 ["General"]
      411 LOADK                            R34 K103 ["studs"]
      412 NAMECALL                         R31 R1 K19 ["getText"]
      414 CALL                             R31 3 1
      415 SETTABLEKS                       R31 R30 K69 ["text"]
      417 MOVE                             R31 R3
      418 CALL                             R31 0 1
      419 SETTABLEKS                       R31 R30 K70 ["layoutOrder"]
      421 CALL                             R28 2 1
      422 SETTABLEKS                       R28 R27 K96 ["Input"]
      424 CALL                             R24 3 1
      425 SETTABLEKS                       R24 R23 K76 ["SizeTitleFrame"]
      427 MOVE                             R24 R13
      428 JUMPIFNOT                        R24 ; [+85]
      429 GETUPVAL                         R24 14
      430 GETUPVAL                         R25 17
      431 DUPTABLE                         R26 K108 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["contentTags"] = "RadioButtonContainer", ["contentAutomaticSize"], ["contentSize"]}]
      432 MOVE                             R27 R3
      433 CALL                             R27 0 1
      434 SETTABLEKS                       R27 R26 K70 ["layoutOrder"]
      436 GETIMPORT                        R27 K34 [UDim.new]
      438 LOADN                            R28 0
      439 LOADN                            R29 4
      440 CALL                             R27 2 1
      441 SETTABLEKS                       R27 R26 K90 ["separation"]
      443 SETTABLEKS                       R11 R26 K93 ["minTextLabelWidth"]
      445 LOADK                            R29 K17 ["MovementSettings"]
      446 JUMPIFNOT                        R15 ; [+2]
      447 LOADK                            R30 K109 ["HitTouchDetection"]
      448 JUMP                             ; [+1]
      449 LOADK                            R30 K110 ["CollisionSectionSingleColliderHitTouchDetection"]
      450 NAMECALL                         R27 R1 K19 ["getText"]
      452 CALL                             R27 3 1
      453 SETTABLEKS                       R27 R26 K69 ["text"]
      455 GETIMPORT                        R27 K113 [Enum.AutomaticSize.Y]
      457 SETTABLEKS                       R27 R26 K106 ["contentAutomaticSize"]
      459 SETTABLEKS                       R12 R26 K107 ["contentSize"]
      461 DUPTABLE                         R27 K115 [{"Selector"}]
      462 GETUPVAL                         R28 14
      463 GETUPVAL                         R29 19
      464 DUPTABLE                         R30 K123 [{["LayoutOrder"], ["FillDirection"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextXAlignment"], ["Buttons"], ["CurrentSelectedKey"], ["OnClick"]}]
      465 MOVE                             R31 R3
      466 CALL                             R31 0 1
      467 SETTABLEKS                       R31 R30 K116 ["LayoutOrder"]
      469 GETIMPORT                        R31 K125 [Enum.FillDirection.Vertical]
      471 SETTABLEKS                       R31 R30 K117 ["FillDirection"]
      473 GETIMPORT                        R31 K113 [Enum.AutomaticSize.Y]
      475 SETTABLEKS                       R31 R30 K111 ["AutomaticSize"]
      477 GETIMPORT                        R31 K127 [Enum.TextXAlignment.Left]
      479 SETTABLEKS                       R31 R30 K119 ["TextXAlignment"]
      481 SETTABLEKS                       R16 R30 K120 ["Buttons"]
      483 GETTABLEKS                       R32 R9 K68 ["collisionHitAndTouchDetectionSetting"]
      485 GETTABLEKS                       R32 R32 K31 ["value"]
      487 FASTCALL1                        TYPEOF R32 ; [+3]
      488 MOVE                             R34 R32
      489 GETIMPORT                        R33 K51 [typeof]
      491 CALL                             R33 1 1
      492 JUMPIFNOTEQKS                    R33 K52 ["EnumItem"] ; [+10]
      494 GETTABLEKS                       R33 R32 K53 ["EnumType"]
      496 GETIMPORT                        R34 K54 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      498 JUMPIFNOTEQ                      R33 R34 ; [+4]
      500 GETTABLEKS                       R31 R32 K55 ["Name"]
      502 JUMP                             ; [+1]
      503 LOADK                            R31 K56 ["Unknown"]
      504 SETTABLEKS                       R31 R30 K121 ["CurrentSelectedKey"]
      506 NEWCLOSURE                       R31 P3
      507 CAPTURE                          VAL R9
      508 SETTABLEKS                       R31 R30 K122 ["OnClick"]
      510 CALL                             R28 2 1
      511 SETTABLEKS                       R28 R27 K114 ["Selector"]
      513 CALL                             R24 3 1
      514 SETTABLEKS                       R24 R23 K77 ["HitAndTouchTitleFrame"]
      516 MOVE                             R24 R13
      517 JUMPIFNOT                        R24 ; [+54]
      518 MOVE                             R24 R19
      519 JUMPIFNOT                        R24 ; [+52]
      520 MOVE                             R24 R15
      521 JUMPIFNOT                        R24 ; [+50]
      522 GETUPVAL                         R24 14
      523 GETUPVAL                         R25 17
      524 DUPTABLE                         R26 K94 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      525 MOVE                             R27 R3
      526 CALL                             R27 0 1
      527 SETTABLEKS                       R27 R26 K70 ["layoutOrder"]
      529 GETIMPORT                        R27 K34 [UDim.new]
      531 LOADN                            R28 0
      532 LOADN                            R29 4
      533 CALL                             R27 2 1
      534 SETTABLEKS                       R27 R26 K90 ["separation"]
      536 SETTABLEKS                       R11 R26 K93 ["minTextLabelWidth"]
      538 LOADK                            R29 K17 ["MovementSettings"]
      539 LOADK                            R30 K128 ["HitboxSize"]
      540 NAMECALL                         R27 R1 K19 ["getText"]
      542 CALL                             R27 3 1
      543 SETTABLEKS                       R27 R26 K69 ["text"]
      545 DUPTABLE                         R27 K97 [{"Input"}]
      546 GETUPVAL                         R28 14
      547 GETUPVAL                         R29 18
      548 DUPTABLE                         R30 K99 [{"value", "setValue", "text", "layoutOrder"}]
      549 GETTABLEKS                       R31 R15 K31 ["value"]
      551 SETTABLEKS                       R31 R30 K31 ["value"]
      553 GETTABLEKS                       R31 R15 K101 ["set"]
      555 SETTABLEKS                       R31 R30 K98 ["setValue"]
      557 LOADK                            R33 K102 ["General"]
      558 LOADK                            R34 K103 ["studs"]
      559 NAMECALL                         R31 R1 K19 ["getText"]
      561 CALL                             R31 3 1
      562 SETTABLEKS                       R31 R30 K69 ["text"]
      564 MOVE                             R31 R3
      565 CALL                             R31 0 1
      566 SETTABLEKS                       R31 R30 K70 ["layoutOrder"]
      568 CALL                             R28 2 1
      569 SETTABLEKS                       R28 R27 K96 ["Input"]
      571 CALL                             R24 3 1
      572 SETTABLEKS                       R24 R23 K78 ["HitboxSizeTitleFrame"]
      574 MOVE                             R24 R13
      575 JUMPIFNOT                        R24 ; [+14]
      576 MOVE                             R24 R19
      577 JUMPIFNOT                        R24 ; [+12]
      578 MOVE                             R24 R17
      579 JUMPIFNOT                        R24 ; [+10]
      580 GETUPVAL                         R24 14
      581 GETUPVAL                         R25 20
      582 DUPTABLE                         R26 K129 [{"layoutOrder", "text"}]
      583 MOVE                             R27 R3
      584 CALL                             R27 0 1
      585 SETTABLEKS                       R27 R26 K70 ["layoutOrder"]
      587 SETTABLEKS                       R18 R26 K69 ["text"]
      589 CALL                             R24 2 1
      590 SETTABLEKS                       R24 R23 K79 ["HitboxConsistentGameplayOffWarning"]
      592 MOVE                             R24 R14
      593 JUMPIFNOT                        R24 ; [+95]
      594 GETUPVAL                         R24 14
      595 GETUPVAL                         R25 21
      596 NEWTABLE                         R26 4 0
      598 GETUPVAL                         R27 3
      599 GETTABLEKS                       R27 R27 K130 ["Tag"]
      601 LOADK                            R28 K131 ["X-ColumnS X-Left"]
      602 SETTABLE                         R28 R26 R27
      603 GETIMPORT                        R27 K133 [UDim2.fromScale]
      605 LOADN                            R28 1
      606 LOADN                            R29 0
      607 CALL                             R27 2 1
      608 SETTABLEKS                       R27 R26 K134 ["Size"]
      610 GETIMPORT                        R27 K113 [Enum.AutomaticSize.Y]
      612 SETTABLEKS                       R27 R26 K111 ["AutomaticSize"]
      614 MOVE                             R27 R3
      615 CALL                             R27 0 1
      616 SETTABLEKS                       R27 R26 K116 ["LayoutOrder"]
      618 DUPTABLE                         R27 K136 [{"Checkbox", "Description", "ConsistentGameplayOffWarning"}]
      619 GETUPVAL                         R28 14
      620 GETUPVAL                         R29 22
      621 NEWTABLE                         R30 8 0
      623 GETUPVAL                         R31 3
      624 GETTABLEKS                       R31 R31 K130 ["Tag"]
      626 LOADK                            R32 K137 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact AvatarSettings-DeathCollisionCheckbox"]
      627 SETTABLE                         R32 R30 R31
      628 LOADN                            R31 1
      629 SETTABLEKS                       R31 R30 K116 ["LayoutOrder"]
      631 GETTABLEKS                       R31 R14 K31 ["value"]
      633 SETTABLEKS                       R31 R30 K138 ["Checked"]
      635 LOADK                            R33 K17 ["MovementSettings"]
      636 LOADK                            R34 K139 ["CollisionSectionBodyPartsCollidableOnDeath"]
      637 NAMECALL                         R31 R1 K19 ["getText"]
      639 CALL                             R31 3 1
      640 SETTABLEKS                       R31 R30 K42 ["Text"]
      642 NEWCLOSURE                       R31 P4
      643 CAPTURE                          VAL R14
      644 SETTABLEKS                       R31 R30 K122 ["OnClick"]
      646 CALL                             R28 2 1
      647 SETTABLEKS                       R28 R27 K135 ["Checkbox"]
      649 GETUPVAL                         R28 14
      650 LOADK                            R29 K140 ["TextLabel"]
      651 NEWTABLE                         R30 4 0
      653 GETUPVAL                         R31 3
      654 GETTABLEKS                       R31 R31 K130 ["Tag"]
      656 LOADK                            R32 K141 ["Component-TextLabel AvatarSettings-DeathCollisionDescription"]
      657 SETTABLE                         R32 R30 R31
      658 LOADN                            R31 2
      659 SETTABLEKS                       R31 R30 K116 ["LayoutOrder"]
      661 GETIMPORT                        R31 K133 [UDim2.fromScale]
      663 LOADN                            R32 1
      664 LOADN                            R33 0
      665 CALL                             R31 2 1
      666 SETTABLEKS                       R31 R30 K134 ["Size"]
      668 LOADK                            R33 K17 ["MovementSettings"]
      669 LOADK                            R34 K142 ["CollisionSectionDeathCollisionDescription"]
      670 NAMECALL                         R31 R1 K19 ["getText"]
      672 CALL                             R31 3 1
      673 SETTABLEKS                       R31 R30 K42 ["Text"]
      675 CALL                             R28 2 1
      676 SETTABLEKS                       R28 R27 K43 ["Description"]
      678 MOVE                             R28 R17
      679 JUMPIFNOT                        R28 ; [+6]
      680 GETUPVAL                         R28 14
      681 GETUPVAL                         R29 20
      682 DUPTABLE                         R30 K144 [{["layoutOrder"] = 3, ["text"]}]
      683 SETTABLEKS                       R18 R30 K69 ["text"]
      685 CALL                             R28 2 1
      686 SETTABLEKS                       R28 R27 K67 ["ConsistentGameplayOffWarning"]
      688 CALL                             R24 3 1
      689 SETTABLEKS                       R24 R23 K80 ["BodyPartsCollidableOnDeath"]
      691 CALL                             R20 3 -1
      692 RETURN                           R20 -1

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
       99 GETTABLEKS                       R12 R12 K22 ["getEngineFeatureAvatarSettingsConsistentGameplayKillSwitch"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K6 ["Src"]
      106 GETTABLEKS                       R13 R13 K20 ["Flags"]
      108 GETTABLEKS                       R13 R13 K23 ["getEngineFeatureAvatarSettingsHitbox"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K6 ["Src"]
      115 GETTABLEKS                       R14 R14 K20 ["Flags"]
      117 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarSettingsConsistentGameplayUseCollider"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K6 ["Src"]
      124 GETTABLEKS                       R15 R15 K20 ["Flags"]
      126 GETTABLEKS                       R15 R15 K25 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K6 ["Src"]
      133 GETTABLEKS                       R16 R16 K10 ["Util"]
      135 GETTABLEKS                       R16 R16 K26 ["getUseHitboxDetectionMode"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R17 R0 K6 ["Src"]
      142 GETTABLEKS                       R17 R17 K10 ["Util"]
      144 GETTABLEKS                       R17 R17 K27 ["PluginItemKeys"]
      146 CALL                             R16 1 1
      147 GETTABLEKS                       R17 R4 K28 ["ContextServices"]
      149 GETTABLEKS                       R18 R17 K29 ["Localization"]
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R20 R0 K6 ["Src"]
      155 GETTABLEKS                       R20 R20 K10 ["Util"]
      157 GETTABLEKS                       R20 R20 K30 ["Telemetry"]
      159 GETTABLEKS                       R20 R20 K31 ["TelemetryContext"]
      161 CALL                             R19 1 1
      162 GETTABLEKS                       R20 R4 K32 ["UI"]
      164 GETTABLEKS                       R21 R20 K33 ["RadioButtonList"]
      166 GETTABLEKS                       R22 R20 K34 ["Checkbox"]
      168 GETTABLEKS                       R23 R20 K35 ["Pane"]
      170 GETTABLEKS                       R24 R7 K36 ["createNextOrder"]
      172 GETTABLEKS                       R25 R6 K37 ["createElement"]
      174 DUPCLOSURE                       R26 K38 [PROTO_0]
      175 DUPCLOSURE                       R27 K39 [PROTO_1]
      176 DUPCLOSURE                       R28 K40 [PROTO_2]
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R6
      180 DUPCLOSURE                       R29 K41 [PROTO_10]
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R28
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R22
      204 RETURN                           R29 1
