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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R1 R0 ; [+11]
        6 GETUPVAL                         R1 2
        7 LOADK                            R3 K0 ["CollisionModeSelected"]
        8 DUPTABLE                         R4 K2 [{"collisionMode"}]
        9 GETTABLEKS                       R5 R0 K3 ["Name"]
       11 SETTABLEKS                       R5 R4 K1 ["collisionMode"]
       13 NAMECALL                         R1 R1 K4 ["logCounter"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K5 ["collisionSetting"]
       19 GETTABLEKS                       R1 R2 K6 ["set"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 GETIMPORT                        R1 K10 [Enum.AvatarSettingsCollisionMode.Legacy]
       25 JUMPIFNOTEQ                      R0 R1 ; [+9]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K11 ["collisionMethodSetting"]
       30 GETTABLEKS                       R1 R2 K6 ["set"]
       32 GETIMPORT                        R2 K14 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["collisionHitAndTouchDetectionSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
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
       32 NEWTABLE                         R5 0 3
       34 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCollisionMode.Default]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["MovementSettings"]
       40 LOADK                            R10 K14 ["CollisionSectionDefaultButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["MovementSettings"]
       52 LOADK                            R11 K18 ["CollisionSectionSingleColliderButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 DUPTABLE                         R8 K8 [{"Id", "Label"}]
       59 GETIMPORT                        R9 K20 [Enum.AvatarSettingsCollisionMode.Legacy]
       61 SETTABLEKS                       R9 R8 K6 ["Id"]
       63 LOADK                            R11 K13 ["MovementSettings"]
       64 LOADK                            R12 K21 ["CollisionSectionLegacyButtonText"]
       65 NAMECALL                         R9 R1 K15 ["getText"]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K7 ["Label"]
       70 SETLIST                          R5 R6 3 [1]
       72 GETTABLEKS                       R7 R4 K2 ["settings"]
       74 GETTABLEKS                       R6 R7 K22 ["movementSettings"]
       76 GETTABLEKS                       R8 R6 K23 ["collisionSetting"]
       78 GETTABLEKS                       R7 R8 K24 ["value"]
       80 GETIMPORT                        R8 K27 [UDim.new]
       82 LOADN                            R9 0
       83 GETUPVAL                         R11 6
       84 GETTABLEKS                       R10 R11 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       86 CALL                             R8 2 1
       87 GETIMPORT                        R9 K30 [UDim2.new]
       89 LOADK                            R10 K31 [0.9]
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R12 R13 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       93 MINUS                            R11 R12
       94 LOADN                            R12 0
       95 LOADN                            R13 0
       96 CALL                             R9 4 1
       97 GETIMPORT                        R11 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       99 JUMPIFEQ                         R7 R11 ; [+2]
      101 LOADB                            R10 0 +1
      102 LOADB                            R10 1
      103 GETUPVAL                         R11 7
      104 GETUPVAL                         R12 8
      105 DUPTABLE                         R13 K35 [{"text", "layoutOrder", "showWarning"}]
      106 LOADK                            R16 K13 ["MovementSettings"]
      107 LOADK                            R17 K36 ["CollisionSection"]
      108 NAMECALL                         R14 R1 K15 ["getText"]
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K32 ["text"]
      113 GETTABLEKS                       R14 R0 K33 ["layoutOrder"]
      115 SETTABLEKS                       R14 R13 K33 ["layoutOrder"]
      117 LOADB                            R14 1
      118 SETTABLEKS                       R14 R13 K34 ["showWarning"]
      120 DUPTABLE                         R14 K40 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame"}]
      121 GETUPVAL                         R15 7
      122 GETUPVAL                         R16 9
      123 DUPTABLE                         R17 K45 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      124 MOVE                             R18 R3
      125 CALL                             R18 0 1
      126 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      128 SETTABLEKS                       R5 R17 K41 ["items"]
      130 SETTABLEKS                       R7 R17 K42 ["selected"]
      132 NEWCLOSURE                       R18 P0
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R6
      137 SETTABLEKS                       R18 R17 K43 ["onItemActivated"]
      139 LOADK                            R20 K13 ["MovementSettings"]
      140 GETIMPORT                        R22 K12 [Enum.AvatarSettingsCollisionMode.Default]
      142 JUMPIFNOTEQ                      R7 R22 ; [+3]
      144 LOADK                            R21 K46 ["CollisionSectionDefaultSubText"]
      145 JUMP                             ; [+7]
      146 GETIMPORT                        R22 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      148 JUMPIFNOTEQ                      R7 R22 ; [+3]
      150 LOADK                            R21 K47 ["CollisionSectionSingleColliderSubText"]
      151 JUMP                             ; [+1]
      152 LOADK                            R21 K48 ["CollisionSectionLegacySubText"]
      153 NAMECALL                         R18 R1 K15 ["getText"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K44 ["subText"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K37 ["CollisionModeSelector"]
      161 MOVE                             R15 R10
      162 JUMPIFNOT                        R15 ; [+57]
      163 GETUPVAL                         R15 7
      164 GETUPVAL                         R16 10
      165 DUPTABLE                         R17 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      166 MOVE                             R18 R3
      167 CALL                             R18 0 1
      168 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      170 GETIMPORT                        R18 K27 [UDim.new]
      172 LOADN                            R19 0
      173 LOADN                            R20 4
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K49 ["separation"]
      177 LOADK                            R18 K53 ["AvatarSettings-LeftTextPrimary"]
      178 SETTABLEKS                       R18 R17 K50 ["textLabelTags"]
      180 SETTABLEKS                       R8 R17 K51 ["minTextLabelWidth"]
      182 LOADK                            R20 K13 ["MovementSettings"]
      183 LOADK                            R21 K54 ["CollisionSectionSingleColliderSize"]
      184 NAMECALL                         R18 R1 K15 ["getText"]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K32 ["text"]
      189 DUPTABLE                         R18 K56 [{"Input"}]
      190 GETUPVAL                         R19 7
      191 GETUPVAL                         R20 11
      192 DUPTABLE                         R21 K58 [{"value", "setValue", "text", "layoutOrder"}]
      193 GETTABLEKS                       R23 R6 K59 ["collisionSizeSetting"]
      195 GETTABLEKS                       R22 R23 K24 ["value"]
      197 SETTABLEKS                       R22 R21 K24 ["value"]
      199 GETTABLEKS                       R23 R6 K59 ["collisionSizeSetting"]
      201 GETTABLEKS                       R22 R23 K60 ["set"]
      203 SETTABLEKS                       R22 R21 K57 ["setValue"]
      205 LOADK                            R24 K61 ["General"]
      206 LOADK                            R25 K62 ["studs"]
      207 NAMECALL                         R22 R1 K15 ["getText"]
      209 CALL                             R22 3 1
      210 SETTABLEKS                       R22 R21 K32 ["text"]
      212 MOVE                             R22 R3
      213 CALL                             R22 0 1
      214 SETTABLEKS                       R22 R21 K33 ["layoutOrder"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K55 ["Input"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K38 ["SizeTitleFrame"]
      222 MOVE                             R15 R10
      223 JUMPIFNOT                        R15 ; [+173]
      224 GETUPVAL                         R15 7
      225 GETUPVAL                         R16 10
      226 DUPTABLE                         R17 K66 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text", "contentTags", "contentAutomaticSize", "contentSize"}]
      227 MOVE                             R18 R3
      228 CALL                             R18 0 1
      229 SETTABLEKS                       R18 R17 K33 ["layoutOrder"]
      231 GETIMPORT                        R18 K27 [UDim.new]
      233 LOADN                            R19 0
      234 LOADN                            R20 4
      235 CALL                             R18 2 1
      236 SETTABLEKS                       R18 R17 K49 ["separation"]
      238 LOADK                            R18 K53 ["AvatarSettings-LeftTextPrimary"]
      239 SETTABLEKS                       R18 R17 K50 ["textLabelTags"]
      241 SETTABLEKS                       R8 R17 K51 ["minTextLabelWidth"]
      243 LOADK                            R20 K13 ["MovementSettings"]
      244 LOADK                            R21 K67 ["CollisionSectionSingleColliderHitTouchDetection"]
      245 NAMECALL                         R18 R1 K15 ["getText"]
      247 CALL                             R18 3 1
      248 SETTABLEKS                       R18 R17 K32 ["text"]
      250 LOADK                            R18 K68 ["RadioButtonContainer"]
      251 SETTABLEKS                       R18 R17 K63 ["contentTags"]
      253 GETIMPORT                        R18 K71 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R18 R17 K64 ["contentAutomaticSize"]
      257 SETTABLEKS                       R9 R17 K65 ["contentSize"]
      259 DUPTABLE                         R18 K73 [{"Selector"}]
      260 GETUPVAL                         R19 7
      261 GETUPVAL                         R20 12
      262 DUPTABLE                         R21 K81 [{"LayoutOrder", "FillDirection", "TextWrapped", "AutomaticSize", "TextXAlignment", "Buttons", "CurrentSelectedKey", "OnClick"}]
      263 MOVE                             R22 R3
      264 CALL                             R22 0 1
      265 SETTABLEKS                       R22 R21 K74 ["LayoutOrder"]
      267 GETIMPORT                        R22 K83 [Enum.FillDirection.Vertical]
      269 SETTABLEKS                       R22 R21 K75 ["FillDirection"]
      271 LOADB                            R22 1
      272 SETTABLEKS                       R22 R21 K76 ["TextWrapped"]
      274 GETIMPORT                        R22 K71 [Enum.AutomaticSize.Y]
      276 SETTABLEKS                       R22 R21 K69 ["AutomaticSize"]
      278 GETIMPORT                        R22 K85 [Enum.TextXAlignment.Left]
      280 SETTABLEKS                       R22 R21 K77 ["TextXAlignment"]
      282 NEWTABLE                         R22 0 2
      284 DUPTABLE                         R23 K90 [{"Key", "Text", "Description", "Disabled"}]
      285 GETIMPORT                        R25 K93 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      287 FASTCALL1                        TYPEOF R25 ; [+3]
      288 MOVE                             R27 R25
      289 GETIMPORT                        R26 K95 [typeof]
      291 CALL                             R26 1 1
      292 JUMPIFNOTEQKS                    R26 K96 ["EnumItem"] ; [+10]
      294 GETTABLEKS                       R26 R25 K97 ["EnumType"]
      296 GETIMPORT                        R27 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      298 JUMPIFNOTEQ                      R26 R27 ; [+4]
      300 GETTABLEKS                       R24 R25 K99 ["Name"]
      302 JUMP                             ; [+1]
      303 LOADK                            R24 K100 ["Unknown"]
      304 SETTABLEKS                       R24 R23 K86 ["Key"]
      306 LOADK                            R26 K13 ["MovementSettings"]
      307 LOADK                            R27 K101 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
      308 NAMECALL                         R24 R1 K15 ["getText"]
      310 CALL                             R24 3 1
      311 SETTABLEKS                       R24 R23 K87 ["Text"]
      313 LOADK                            R26 K13 ["MovementSettings"]
      314 LOADK                            R27 K102 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
      315 NAMECALL                         R24 R1 K15 ["getText"]
      317 CALL                             R24 3 1
      318 SETTABLEKS                       R24 R23 K88 ["Description"]
      320 LOADB                            R24 0
      321 SETTABLEKS                       R24 R23 K89 ["Disabled"]
      323 DUPTABLE                         R24 K90 [{"Key", "Text", "Description", "Disabled"}]
      324 GETIMPORT                        R26 K104 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      326 FASTCALL1                        TYPEOF R26 ; [+3]
      327 MOVE                             R28 R26
      328 GETIMPORT                        R27 K95 [typeof]
      330 CALL                             R27 1 1
      331 JUMPIFNOTEQKS                    R27 K96 ["EnumItem"] ; [+10]
      333 GETTABLEKS                       R27 R26 K97 ["EnumType"]
      335 GETIMPORT                        R28 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      337 JUMPIFNOTEQ                      R27 R28 ; [+4]
      339 GETTABLEKS                       R25 R26 K99 ["Name"]
      341 JUMP                             ; [+1]
      342 LOADK                            R25 K100 ["Unknown"]
      343 SETTABLEKS                       R25 R24 K86 ["Key"]
      345 LOADK                            R27 K13 ["MovementSettings"]
      346 LOADK                            R28 K105 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
      347 NAMECALL                         R25 R1 K15 ["getText"]
      349 CALL                             R25 3 1
      350 SETTABLEKS                       R25 R24 K87 ["Text"]
      352 LOADK                            R27 K13 ["MovementSettings"]
      353 LOADK                            R28 K106 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
      354 NAMECALL                         R25 R1 K15 ["getText"]
      356 CALL                             R25 3 1
      357 SETTABLEKS                       R25 R24 K88 ["Description"]
      359 LOADB                            R25 0
      360 SETTABLEKS                       R25 R24 K89 ["Disabled"]
      362 SETLIST                          R22 R23 2 [1]
      364 SETTABLEKS                       R22 R21 K78 ["Buttons"]
      366 GETTABLEKS                       R24 R6 K107 ["collisionHitAndTouchDetectionSetting"]
      368 GETTABLEKS                       R23 R24 K24 ["value"]
      370 FASTCALL1                        TYPEOF R23 ; [+3]
      371 MOVE                             R25 R23
      372 GETIMPORT                        R24 K95 [typeof]
      374 CALL                             R24 1 1
      375 JUMPIFNOTEQKS                    R24 K96 ["EnumItem"] ; [+10]
      377 GETTABLEKS                       R24 R23 K97 ["EnumType"]
      379 GETIMPORT                        R25 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
      381 JUMPIFNOTEQ                      R24 R25 ; [+4]
      383 GETTABLEKS                       R22 R23 K99 ["Name"]
      385 JUMP                             ; [+1]
      386 LOADK                            R22 K100 ["Unknown"]
      387 SETTABLEKS                       R22 R21 K79 ["CurrentSelectedKey"]
      389 NEWCLOSURE                       R22 P1
      390 CAPTURE                          VAL R6
      391 SETTABLEKS                       R22 R21 K80 ["OnClick"]
      393 CALL                             R19 2 1
      394 SETTABLEKS                       R19 R18 K72 ["Selector"]
      396 CALL                             R15 3 1
      397 SETTABLEKS                       R15 R14 K39 ["HitAndTouchTitleFrame"]
      399 CALL                             R11 3 -1
      400 RETURN                           R11 -1

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
       72 GETTABLEKS                       R9 R10 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K7 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["Vector3Input"]
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
      108 GETTABLEKS                       R14 R4 K26 ["UI"]
      110 GETTABLEKS                       R15 R14 K27 ["RadioButtonList"]
      112 GETTABLEKS                       R16 R7 K28 ["createNextOrder"]
      114 GETTABLEKS                       R17 R6 K29 ["createElement"]
      116 DUPCLOSURE                       R18 K30 [PROTO_0]
      117 DUPCLOSURE                       R19 K31 [PROTO_1]
      118 DUPCLOSURE                       R20 K32 [PROTO_4]
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R15
      132 RETURN                           R20 1
