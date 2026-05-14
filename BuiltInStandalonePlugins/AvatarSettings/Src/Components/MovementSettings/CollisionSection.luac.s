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
      100 DUPTABLE                         R13 K35 [{"text", "layoutOrder", "showWarning"}]
      101 LOADK                            R16 K13 ["MovementSettings"]
      102 LOADK                            R17 K36 ["CollisionSection"]
      103 NAMECALL                         R14 R1 K15 ["getText"]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K32 ["text"]
      108 GETTABLEKS                       R14 R0 K33 ["layoutOrder"]
      110 SETTABLEKS                       R14 R13 K33 ["layoutOrder"]
      112 LOADB                            R14 1
      113 SETTABLEKS                       R14 R13 K34 ["showWarning"]
      115 DUPTABLE                         R14 K40 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame"}]
      116 GETUPVAL                         R15 6
      117 GETUPVAL                         R16 8
      118 DUPTABLE                         R17 K45 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      119 MOVE                             R18 R3
      120 CALL                             R18 0 1
      121 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      123 SETTABLEKS                       R5 R17 K41 ["items"]
      125 SETTABLEKS                       R7 R17 K42 ["selected"]
      127 NEWCLOSURE                       R18 P0
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R18 R17 K43 ["onItemActivated"]
      133 LOADK                            R20 K13 ["MovementSettings"]
      134 GETIMPORT                        R22 K12 [Enum.AvatarSettingsCollisionMode.Default]
      136 JUMPIFNOTEQ                      R7 R22 ; [+3]
      138 LOADK                            R21 K46 ["CollisionSectionDefaultSubText"]
      139 JUMP                             ; [+7]
      140 GETIMPORT                        R22 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      142 JUMPIFNOTEQ                      R7 R22 ; [+3]
      144 LOADK                            R21 K47 ["CollisionSectionSingleColliderSubText"]
      145 JUMP                             ; [+1]
      146 LOADK                            R21 K48 ["CollisionSectionLegacySubText"]
      147 NAMECALL                         R18 R1 K15 ["getText"]
      149 CALL                             R18 3 1
      150 SETTABLEKS                       R18 R17 K44 ["subText"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K37 ["CollisionModeSelector"]
      155 MOVE                             R15 R10
      156 JUMPIFNOT                        R15 ; [+57]
      157 GETUPVAL                         R15 6
      158 GETUPVAL                         R16 9
      159 DUPTABLE                         R17 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      160 MOVE                             R18 R3
      161 CALL                             R18 0 1
      162 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      164 GETIMPORT                        R18 K27 [UDim.new]
      166 LOADN                            R19 0
      167 LOADN                            R20 4
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K49 ["separation"]
      171 LOADK                            R18 K53 ["AvatarSettings-LeftTextPrimary"]
      172 SETTABLEKS                       R18 R17 K50 ["textLabelTags"]
      174 SETTABLEKS                       R8 R17 K51 ["minTextLabelWidth"]
      176 LOADK                            R20 K13 ["MovementSettings"]
      177 LOADK                            R21 K54 ["CollisionSectionSingleColliderSize"]
      178 NAMECALL                         R18 R1 K15 ["getText"]
      180 CALL                             R18 3 1
      181 SETTABLEKS                       R18 R17 K32 ["text"]
      183 DUPTABLE                         R18 K56 [{"Input"}]
      184 GETUPVAL                         R19 6
      185 GETUPVAL                         R20 10
      186 DUPTABLE                         R21 K58 [{"value", "setValue", "text", "layoutOrder"}]
      187 GETTABLEKS                       R22 R6 K59 ["collisionSizeSetting"]
      189 GETTABLEKS                       R22 R22 K24 ["value"]
      191 SETTABLEKS                       R22 R21 K24 ["value"]
      193 GETTABLEKS                       R22 R6 K59 ["collisionSizeSetting"]
      195 GETTABLEKS                       R22 R22 K60 ["set"]
      197 SETTABLEKS                       R22 R21 K57 ["setValue"]
      199 LOADK                            R24 K61 ["General"]
      200 LOADK                            R25 K62 ["studs"]
      201 NAMECALL                         R22 R1 K15 ["getText"]
      203 CALL                             R22 3 1
      204 SETTABLEKS                       R22 R21 K32 ["text"]
      206 MOVE                             R22 R3
      207 CALL                             R22 0 1
      208 SETTABLEKS                       R22 R21 K33 ["layoutOrder"]
      210 CALL                             R19 2 1
      211 SETTABLEKS                       R19 R18 K55 ["Input"]
      213 CALL                             R15 3 1
      214 SETTABLEKS                       R15 R14 K38 ["SizeTitleFrame"]
      216 MOVE                             R15 R10
      217 JUMPIFNOT                        R15 ; [+173]
      218 GETUPVAL                         R15 6
      219 GETUPVAL                         R16 9
      220 DUPTABLE                         R17 K66 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text", "contentTags", "contentAutomaticSize", "contentSize"}]
      221 MOVE                             R18 R3
      222 CALL                             R18 0 1
      223 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      225 GETIMPORT                        R18 K27 [UDim.new]
      227 LOADN                            R19 0
      228 LOADN                            R20 4
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K49 ["separation"]
      232 LOADK                            R18 K53 ["AvatarSettings-LeftTextPrimary"]
      233 SETTABLEKS                       R18 R17 K50 ["textLabelTags"]
      235 SETTABLEKS                       R8 R17 K51 ["minTextLabelWidth"]
      237 LOADK                            R20 K13 ["MovementSettings"]
      238 LOADK                            R21 K67 ["CollisionSectionSingleColliderHitTouchDetection"]
      239 NAMECALL                         R18 R1 K15 ["getText"]
      241 CALL                             R18 3 1
      242 SETTABLEKS                       R18 R17 K32 ["text"]
      244 LOADK                            R18 K68 ["RadioButtonContainer"]
      245 SETTABLEKS                       R18 R17 K63 ["contentTags"]
      247 GETIMPORT                        R18 K71 [Enum.AutomaticSize.Y]
      249 SETTABLEKS                       R18 R17 K64 ["contentAutomaticSize"]
      251 SETTABLEKS                       R9 R17 K65 ["contentSize"]
      253 DUPTABLE                         R18 K73 [{"Selector"}]
      254 GETUPVAL                         R19 6
      255 GETUPVAL                         R20 11
      256 DUPTABLE                         R21 K81 [{"LayoutOrder", "FillDirection", "TextWrapped", "AutomaticSize", "TextXAlignment", "Buttons", "CurrentSelectedKey", "OnClick"}]
      257 MOVE                             R22 R3
      258 CALL                             R22 0 1
      259 SETTABLEKS                       R22 R21 K74 ["LayoutOrder"]
      261 GETIMPORT                        R22 K83 [Enum.FillDirection.Vertical]
      263 SETTABLEKS                       R22 R21 K75 ["FillDirection"]
      265 LOADB                            R22 1
      266 SETTABLEKS                       R22 R21 K76 ["TextWrapped"]
      268 GETIMPORT                        R22 K71 [Enum.AutomaticSize.Y]
      270 SETTABLEKS                       R22 R21 K69 ["AutomaticSize"]
      272 GETIMPORT                        R22 K85 [Enum.TextXAlignment.Left]
      274 SETTABLEKS                       R22 R21 K77 ["TextXAlignment"]
      276 NEWTABLE                         R22 0 2
      278 DUPTABLE                         R23 K90 [{"Key", "Text", "Description", "Disabled"}]
      279 GETIMPORT                        R25 K93 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      281 FASTCALL1                        TYPEOF R25 ; [+3]
      282 MOVE                             R27 R25
      283 GETIMPORT                        R26 K95 [typeof]
      285 CALL                             R26 1 1
      286 JUMPIFNOTEQKS                    R26 K96 ["EnumItem"] ; [+10]
      288 GETTABLEKS                       R26 R25 K97 ["EnumType"]
      290 GETIMPORT                        R27 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      292 JUMPIFNOTEQ                      R26 R27 ; [+4]
      294 GETTABLEKS                       R24 R25 K99 ["Name"]
      296 JUMP                             ; [+1]
      297 LOADK                            R24 K100 ["Unknown"]
      298 SETTABLEKS                       R24 R23 K86 ["Key"]
      300 LOADK                            R26 K13 ["MovementSettings"]
      301 LOADK                            R27 K101 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
      302 NAMECALL                         R24 R1 K15 ["getText"]
      304 CALL                             R24 3 1
      305 SETTABLEKS                       R24 R23 K87 ["Text"]
      307 LOADK                            R26 K13 ["MovementSettings"]
      308 LOADK                            R27 K102 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
      309 NAMECALL                         R24 R1 K15 ["getText"]
      311 CALL                             R24 3 1
      312 SETTABLEKS                       R24 R23 K88 ["Description"]
      314 LOADB                            R24 0
      315 SETTABLEKS                       R24 R23 K89 ["Disabled"]
      317 DUPTABLE                         R24 K90 [{"Key", "Text", "Description", "Disabled"}]
      318 GETIMPORT                        R26 K104 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      320 FASTCALL1                        TYPEOF R26 ; [+3]
      321 MOVE                             R28 R26
      322 GETIMPORT                        R27 K95 [typeof]
      324 CALL                             R27 1 1
      325 JUMPIFNOTEQKS                    R27 K96 ["EnumItem"] ; [+10]
      327 GETTABLEKS                       R27 R26 K97 ["EnumType"]
      329 GETIMPORT                        R28 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      331 JUMPIFNOTEQ                      R27 R28 ; [+4]
      333 GETTABLEKS                       R25 R26 K99 ["Name"]
      335 JUMP                             ; [+1]
      336 LOADK                            R25 K100 ["Unknown"]
      337 SETTABLEKS                       R25 R24 K86 ["Key"]
      339 LOADK                            R27 K13 ["MovementSettings"]
      340 LOADK                            R28 K105 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
      341 NAMECALL                         R25 R1 K15 ["getText"]
      343 CALL                             R25 3 1
      344 SETTABLEKS                       R25 R24 K87 ["Text"]
      346 LOADK                            R27 K13 ["MovementSettings"]
      347 LOADK                            R28 K106 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
      348 NAMECALL                         R25 R1 K15 ["getText"]
      350 CALL                             R25 3 1
      351 SETTABLEKS                       R25 R24 K88 ["Description"]
      353 LOADB                            R25 0
      354 SETTABLEKS                       R25 R24 K89 ["Disabled"]
      356 SETLIST                          R22 R23 2 [1]
      358 SETTABLEKS                       R22 R21 K78 ["Buttons"]
      360 GETTABLEKS                       R23 R6 K107 ["collisionHitAndTouchDetectionSetting"]
      362 GETTABLEKS                       R23 R23 K24 ["value"]
      364 FASTCALL1                        TYPEOF R23 ; [+3]
      365 MOVE                             R25 R23
      366 GETIMPORT                        R24 K95 [typeof]
      368 CALL                             R24 1 1
      369 JUMPIFNOTEQKS                    R24 K96 ["EnumItem"] ; [+10]
      371 GETTABLEKS                       R24 R23 K97 ["EnumType"]
      373 GETIMPORT                        R25 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      375 JUMPIFNOTEQ                      R24 R25 ; [+4]
      377 GETTABLEKS                       R22 R23 K99 ["Name"]
      379 JUMP                             ; [+1]
      380 LOADK                            R22 K100 ["Unknown"]
      381 SETTABLEKS                       R22 R21 K79 ["CurrentSelectedKey"]
      383 NEWCLOSURE                       R22 P1
      384 CAPTURE                          VAL R6
      385 SETTABLEKS                       R22 R21 K80 ["OnClick"]
      387 CALL                             R19 2 1
      388 SETTABLEKS                       R19 R18 K72 ["Selector"]
      390 CALL                             R15 3 1
      391 SETTABLEKS                       R15 R14 K39 ["HitAndTouchTitleFrame"]
      393 CALL                             R11 3 -1
      394 RETURN                           R11 -1

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
