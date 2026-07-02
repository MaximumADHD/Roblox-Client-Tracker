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
       22 JUMPIFNOTEQ                      R0 R1 ; [+9]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K11 ["collisionMethodSetting"]
       27 GETTABLEKS                       R1 R1 K6 ["set"]
       29 GETIMPORT                        R2 K14 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       27 NEWTABLE                         R5 0 3
       29 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCollisionMode.Default]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["MovementSettings"]
       35 LOADK                            R10 K14 ["CollisionSectionDefaultButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["MovementSettings"]
       47 LOADK                            R11 K18 ["CollisionSectionSingleColliderButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 DUPTABLE                         R8 K8 [{"Id", "Label"}]
       54 GETIMPORT                        R9 K20 [Enum.AvatarSettingsCollisionMode.Legacy]
       56 SETTABLEKS                       R9 R8 K6 ["Id"]
       58 LOADK                            R11 K13 ["MovementSettings"]
       59 LOADK                            R12 K21 ["CollisionSectionLegacyButtonText"]
       60 NAMECALL                         R9 R1 K15 ["getText"]
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K7 ["Label"]
       65 SETLIST                          R5 R6 3 [1]
       67 GETTABLEKS                       R6 R4 K2 ["settings"]
       69 GETTABLEKS                       R6 R6 K22 ["movementSettings"]
       71 GETTABLEKS                       R7 R6 K23 ["collisionSetting"]
       73 GETTABLEKS                       R7 R7 K24 ["value"]
       75 GETIMPORT                        R8 K27 [UDim.new]
       77 LOADN                            R9 0
       78 GETUPVAL                         R10 5
       79 GETTABLEKS                       R10 R10 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       81 CALL                             R8 2 1
       82 GETIMPORT                        R9 K30 [UDim2.new]
       84 LOADK                            R10 K31 [0.9]
       85 GETUPVAL                         R12 5
       86 GETTABLEKS                       R12 R12 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       88 MINUS                            R11 R12
       89 LOADN                            R12 0
       90 LOADN                            R13 0
       91 CALL                             R9 4 1
       92 GETIMPORT                        R11 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       94 JUMPIFEQ                         R7 R11 ; [+2]
       96 LOADB                            R10 0 +1
       97 LOADB                            R10 1
       98 GETUPVAL                         R11 6
       99 GETUPVAL                         R12 7
      100 DUPTABLE                         R13 K36 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      101 LOADK                            R16 K13 ["MovementSettings"]
      102 LOADK                            R17 K37 ["CollisionSection"]
      103 NAMECALL                         R14 R1 K15 ["getText"]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K32 ["text"]
      108 GETTABLEKS                       R14 R0 K33 ["layoutOrder"]
      110 SETTABLEKS                       R14 R13 K33 ["layoutOrder"]
      112 DUPTABLE                         R14 K41 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame"}]
      113 GETUPVAL                         R15 6
      114 GETUPVAL                         R16 8
      115 DUPTABLE                         R17 K46 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      116 MOVE                             R18 R3
      117 CALL                             R18 0 1
      118 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      120 SETTABLEKS                       R5 R17 K42 ["items"]
      122 SETTABLEKS                       R7 R17 K43 ["selected"]
      124 NEWCLOSURE                       R18 P0
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R18 R17 K44 ["onItemActivated"]
      130 LOADK                            R20 K13 ["MovementSettings"]
      131 GETIMPORT                        R22 K12 [Enum.AvatarSettingsCollisionMode.Default]
      133 JUMPIFNOTEQ                      R7 R22 ; [+3]
      135 LOADK                            R21 K47 ["CollisionSectionDefaultSubText"]
      136 JUMP                             ; [+7]
      137 GETIMPORT                        R22 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      139 JUMPIFNOTEQ                      R7 R22 ; [+3]
      141 LOADK                            R21 K48 ["CollisionSectionSingleColliderSubText"]
      142 JUMP                             ; [+1]
      143 LOADK                            R21 K49 ["CollisionSectionLegacySubText"]
      144 NAMECALL                         R18 R1 K15 ["getText"]
      146 CALL                             R18 3 1
      147 SETTABLEKS                       R18 R17 K45 ["subText"]
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K38 ["CollisionModeSelector"]
      152 MOVE                             R15 R10
      153 JUMPIFNOT                        R15 ; [+54]
      154 GETUPVAL                         R15 6
      155 GETUPVAL                         R16 9
      156 DUPTABLE                         R17 K54 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      157 MOVE                             R18 R3
      158 CALL                             R18 0 1
      159 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      161 GETIMPORT                        R18 K27 [UDim.new]
      163 LOADN                            R19 0
      164 LOADN                            R20 4
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K50 ["separation"]
      168 SETTABLEKS                       R8 R17 K53 ["minTextLabelWidth"]
      170 LOADK                            R20 K13 ["MovementSettings"]
      171 LOADK                            R21 K55 ["CollisionSectionSingleColliderSize"]
      172 NAMECALL                         R18 R1 K15 ["getText"]
      174 CALL                             R18 3 1
      175 SETTABLEKS                       R18 R17 K32 ["text"]
      177 DUPTABLE                         R18 K57 [{"Input"}]
      178 GETUPVAL                         R19 6
      179 GETUPVAL                         R20 10
      180 DUPTABLE                         R21 K59 [{"value", "setValue", "text", "layoutOrder"}]
      181 GETTABLEKS                       R22 R6 K60 ["collisionSizeSetting"]
      183 GETTABLEKS                       R22 R22 K24 ["value"]
      185 SETTABLEKS                       R22 R21 K24 ["value"]
      187 GETTABLEKS                       R22 R6 K60 ["collisionSizeSetting"]
      189 GETTABLEKS                       R22 R22 K61 ["set"]
      191 SETTABLEKS                       R22 R21 K58 ["setValue"]
      193 LOADK                            R24 K62 ["General"]
      194 LOADK                            R25 K63 ["studs"]
      195 NAMECALL                         R22 R1 K15 ["getText"]
      197 CALL                             R22 3 1
      198 SETTABLEKS                       R22 R21 K32 ["text"]
      200 MOVE                             R22 R3
      201 CALL                             R22 0 1
      202 SETTABLEKS                       R22 R21 K33 ["layoutOrder"]
      204 CALL                             R19 2 1
      205 SETTABLEKS                       R19 R18 K56 ["Input"]
      207 CALL                             R15 3 1
      208 SETTABLEKS                       R15 R14 K39 ["SizeTitleFrame"]
      210 MOVE                             R15 R10
      211 JUMPIFNOT                        R15 ; [+158]
      212 GETUPVAL                         R15 6
      213 GETUPVAL                         R16 9
      214 DUPTABLE                         R17 K68 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"], ["contentTags"] = "RadioButtonContainer", ["contentAutomaticSize"], ["contentSize"]}]
      215 MOVE                             R18 R3
      216 CALL                             R18 0 1
      217 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      219 GETIMPORT                        R18 K27 [UDim.new]
      221 LOADN                            R19 0
      222 LOADN                            R20 4
      223 CALL                             R18 2 1
      224 SETTABLEKS                       R18 R17 K50 ["separation"]
      226 SETTABLEKS                       R8 R17 K53 ["minTextLabelWidth"]
      228 LOADK                            R20 K13 ["MovementSettings"]
      229 LOADK                            R21 K69 ["CollisionSectionSingleColliderHitTouchDetection"]
      230 NAMECALL                         R18 R1 K15 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K32 ["text"]
      235 GETIMPORT                        R18 K72 [Enum.AutomaticSize.Y]
      237 SETTABLEKS                       R18 R17 K66 ["contentAutomaticSize"]
      239 SETTABLEKS                       R9 R17 K67 ["contentSize"]
      241 DUPTABLE                         R18 K74 [{"Selector"}]
      242 GETUPVAL                         R19 6
      243 GETUPVAL                         R20 11
      244 DUPTABLE                         R21 K82 [{["LayoutOrder"], ["FillDirection"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextXAlignment"], ["Buttons"], ["CurrentSelectedKey"], ["OnClick"]}]
      245 MOVE                             R22 R3
      246 CALL                             R22 0 1
      247 SETTABLEKS                       R22 R21 K75 ["LayoutOrder"]
      249 GETIMPORT                        R22 K84 [Enum.FillDirection.Vertical]
      251 SETTABLEKS                       R22 R21 K76 ["FillDirection"]
      253 GETIMPORT                        R22 K72 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R22 R21 K70 ["AutomaticSize"]
      257 GETIMPORT                        R22 K86 [Enum.TextXAlignment.Left]
      259 SETTABLEKS                       R22 R21 K78 ["TextXAlignment"]
      261 NEWTABLE                         R22 0 2
      263 DUPTABLE                         R23 K92 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      264 GETIMPORT                        R25 K95 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      266 FASTCALL1                        TYPEOF R25 ; [+3]
      267 MOVE                             R27 R25
      268 GETIMPORT                        R26 K97 [typeof]
      270 CALL                             R26 1 1
      271 JUMPIFNOTEQKS                    R26 K98 ["EnumItem"] ; [+10]
      273 GETTABLEKS                       R26 R25 K99 ["EnumType"]
      275 GETIMPORT                        R27 K100 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      277 JUMPIFNOTEQ                      R26 R27 ; [+4]
      279 GETTABLEKS                       R24 R25 K101 ["Name"]
      281 JUMP                             ; [+1]
      282 LOADK                            R24 K102 ["Unknown"]
      283 SETTABLEKS                       R24 R23 K87 ["Key"]
      285 LOADK                            R26 K13 ["MovementSettings"]
      286 LOADK                            R27 K103 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
      287 NAMECALL                         R24 R1 K15 ["getText"]
      289 CALL                             R24 3 1
      290 SETTABLEKS                       R24 R23 K88 ["Text"]
      292 LOADK                            R26 K13 ["MovementSettings"]
      293 LOADK                            R27 K104 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
      294 NAMECALL                         R24 R1 K15 ["getText"]
      296 CALL                             R24 3 1
      297 SETTABLEKS                       R24 R23 K89 ["Description"]
      299 DUPTABLE                         R24 K92 [{["Key"], ["Text"], ["Description"], ["Disabled"] = False}]
      300 GETIMPORT                        R26 K106 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      302 FASTCALL1                        TYPEOF R26 ; [+3]
      303 MOVE                             R28 R26
      304 GETIMPORT                        R27 K97 [typeof]
      306 CALL                             R27 1 1
      307 JUMPIFNOTEQKS                    R27 K98 ["EnumItem"] ; [+10]
      309 GETTABLEKS                       R27 R26 K99 ["EnumType"]
      311 GETIMPORT                        R28 K100 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      313 JUMPIFNOTEQ                      R27 R28 ; [+4]
      315 GETTABLEKS                       R25 R26 K101 ["Name"]
      317 JUMP                             ; [+1]
      318 LOADK                            R25 K102 ["Unknown"]
      319 SETTABLEKS                       R25 R24 K87 ["Key"]
      321 LOADK                            R27 K13 ["MovementSettings"]
      322 LOADK                            R28 K107 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
      323 NAMECALL                         R25 R1 K15 ["getText"]
      325 CALL                             R25 3 1
      326 SETTABLEKS                       R25 R24 K88 ["Text"]
      328 LOADK                            R27 K13 ["MovementSettings"]
      329 LOADK                            R28 K108 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
      330 NAMECALL                         R25 R1 K15 ["getText"]
      332 CALL                             R25 3 1
      333 SETTABLEKS                       R25 R24 K89 ["Description"]
      335 SETLIST                          R22 R23 2 [1]
      337 SETTABLEKS                       R22 R21 K79 ["Buttons"]
      339 GETTABLEKS                       R23 R6 K109 ["collisionHitAndTouchDetectionSetting"]
      341 GETTABLEKS                       R23 R23 K24 ["value"]
      343 FASTCALL1                        TYPEOF R23 ; [+3]
      344 MOVE                             R25 R23
      345 GETIMPORT                        R24 K97 [typeof]
      347 CALL                             R24 1 1
      348 JUMPIFNOTEQKS                    R24 K98 ["EnumItem"] ; [+10]
      350 GETTABLEKS                       R24 R23 K99 ["EnumType"]
      352 GETIMPORT                        R25 K100 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      354 JUMPIFNOTEQ                      R24 R25 ; [+4]
      356 GETTABLEKS                       R22 R23 K101 ["Name"]
      358 JUMP                             ; [+1]
      359 LOADK                            R22 K102 ["Unknown"]
      360 SETTABLEKS                       R22 R21 K80 ["CurrentSelectedKey"]
      362 NEWCLOSURE                       R22 P1
      363 CAPTURE                          VAL R6
      364 SETTABLEKS                       R22 R21 K81 ["OnClick"]
      366 CALL                             R19 2 1
      367 SETTABLEKS                       R19 R18 K73 ["Selector"]
      369 CALL                             R15 3 1
      370 SETTABLEKS                       R15 R14 K40 ["HitAndTouchTitleFrame"]
      372 CALL                             R11 3 -1
      373 RETURN                           R11 -1

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
       84 GETTABLEKS                       R10 R4 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K10 ["Util"]
       94 GETTABLEKS                       R13 R13 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R13 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R4 K24 ["UI"]
      101 GETTABLEKS                       R14 R13 K25 ["RadioButtonList"]
      103 GETTABLEKS                       R15 R7 K26 ["createNextOrder"]
      105 GETTABLEKS                       R16 R6 K27 ["createElement"]
      107 DUPCLOSURE                       R17 K28 [PROTO_0]
      108 DUPCLOSURE                       R18 K29 [PROTO_1]
      109 DUPCLOSURE                       R19 K30 [PROTO_4]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R14
      122 RETURN                           R19 1
