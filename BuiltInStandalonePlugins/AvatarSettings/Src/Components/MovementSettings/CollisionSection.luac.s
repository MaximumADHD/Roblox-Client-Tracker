PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["EnumItem"] [+10]
  GETTABLEKS R1 R0 K3 ["EnumType"]
  GETIMPORT R2 K6 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  JUMPIFNOTEQ R1 R2 [+4]
  GETTABLEKS R1 R0 K7 ["Name"]
  RETURN R1 1
  LOADK R1 K8 ["Unknown"]
  RETURN R1 1

PROTO_1:
  GETIMPORT R1 K2 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["FromName"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  GETIMPORT R1 K5 [Enum.AvatarSettingsHitAndTouchDetectionMode.Unknown]
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["collisionSetting"]
  GETTABLEKS R1 R2 K1 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  GETIMPORT R1 K5 [Enum.AvatarSettingsCollisionMode.Legacy]
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["collisionMethodSetting"]
  GETTABLEKS R1 R2 K1 ["set"]
  GETIMPORT R2 K9 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["collisionHitAndTouchDetectionSetting"]
  GETTABLEKS R1 R2 K1 ["set"]
  GETIMPORT R2 K4 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  MOVE R4 R0
  NAMECALL R2 R2 K5 ["FromName"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  GETIMPORT R2 K7 [Enum.AvatarSettingsHitAndTouchDetectionMode.Unknown]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R6 R3 K2 ["settings"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K3 [+4]
  LOADK R6 K3 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  NEWTABLE R4 0 3
  DUPTABLE R5 K8 [{"Id", "Label"}]
  GETIMPORT R6 K12 [Enum.AvatarSettingsCollisionMode.Default]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["MovementSettings"]
  LOADK R9 K14 ["CollisionSectionDefaultButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["MovementSettings"]
  LOADK R10 K18 ["CollisionSectionSingleColliderButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K20 [Enum.AvatarSettingsCollisionMode.Legacy]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["MovementSettings"]
  LOADK R11 K21 ["CollisionSectionLegacyButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R4 R5 3 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K22 ["movementSettings"]
  GETTABLEKS R7 R5 K23 ["collisionSetting"]
  GETTABLEKS R6 R7 K24 ["value"]
  GETIMPORT R7 K27 [UDim.new]
  LOADN R8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R7 2 1
  GETIMPORT R8 K30 [UDim2.new]
  LOADK R9 K31 [0.9]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K28 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  MINUS R10 R11
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  GETIMPORT R10 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
  JUMPIFEQ R6 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 5
  GETUPVAL R11 6
  DUPTABLE R12 K35 [{"text", "layoutOrder", "showWarning"}]
  LOADK R15 K13 ["MovementSettings"]
  LOADK R16 K36 ["CollisionSection"]
  NAMECALL R13 R1 K15 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["text"]
  GETTABLEKS R13 R0 K33 ["layoutOrder"]
  SETTABLEKS R13 R12 K33 ["layoutOrder"]
  LOADB R13 1
  SETTABLEKS R13 R12 K34 ["showWarning"]
  DUPTABLE R13 K40 [{"CollisionModeSelector", "SizeTitleFrame", "HitAndTouchTitleFrame"}]
  GETUPVAL R14 5
  GETUPVAL R15 7
  DUPTABLE R16 K45 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K33 ["layoutOrder"]
  SETTABLEKS R4 R16 K41 ["items"]
  SETTABLEKS R6 R16 K42 ["selected"]
  NEWCLOSURE R17 P0
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K43 ["onItemActivated"]
  LOADK R19 K13 ["MovementSettings"]
  GETIMPORT R21 K12 [Enum.AvatarSettingsCollisionMode.Default]
  JUMPIFNOTEQ R6 R21 [+3]
  LOADK R20 K46 ["CollisionSectionDefaultSubText"]
  JUMP [+7]
  GETIMPORT R21 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
  JUMPIFNOTEQ R6 R21 [+3]
  LOADK R20 K47 ["CollisionSectionSingleColliderSubText"]
  JUMP [+1]
  LOADK R20 K48 ["CollisionSectionLegacySubText"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K44 ["subText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["CollisionModeSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+57]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K33 ["layoutOrder"]
  GETIMPORT R17 K27 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["separation"]
  LOADK R17 K53 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K50 ["textLabelTags"]
  SETTABLEKS R7 R16 K51 ["minTextLabelWidth"]
  LOADK R19 K13 ["MovementSettings"]
  LOADK R20 K54 ["CollisionSectionSingleColliderSize"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K32 ["text"]
  DUPTABLE R17 K56 [{"Input"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K58 [{"value", "setValue", "text", "layoutOrder"}]
  GETTABLEKS R22 R5 K59 ["collisionSizeSetting"]
  GETTABLEKS R21 R22 K24 ["value"]
  SETTABLEKS R21 R20 K24 ["value"]
  GETTABLEKS R22 R5 K59 ["collisionSizeSetting"]
  GETTABLEKS R21 R22 K60 ["set"]
  SETTABLEKS R21 R20 K57 ["setValue"]
  LOADK R23 K61 ["General"]
  LOADK R24 K62 ["studs"]
  NAMECALL R21 R1 K15 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K32 ["text"]
  MOVE R21 R2
  CALL R21 0 1
  SETTABLEKS R21 R20 K33 ["layoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["Input"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["SizeTitleFrame"]
  MOVE R14 R9
  JUMPIFNOT R14 [+173]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K66 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text", "contentTags", "contentAutomaticSize", "contentSize"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K33 ["layoutOrder"]
  GETIMPORT R17 K27 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["separation"]
  LOADK R17 K53 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K50 ["textLabelTags"]
  SETTABLEKS R7 R16 K51 ["minTextLabelWidth"]
  LOADK R19 K13 ["MovementSettings"]
  LOADK R20 K67 ["CollisionSectionSingleColliderHitTouchDetection"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K32 ["text"]
  LOADK R17 K68 ["RadioButtonContainer"]
  SETTABLEKS R17 R16 K63 ["contentTags"]
  GETIMPORT R17 K71 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K64 ["contentAutomaticSize"]
  SETTABLEKS R8 R16 K65 ["contentSize"]
  DUPTABLE R17 K73 [{"Selector"}]
  GETUPVAL R18 5
  GETUPVAL R19 10
  DUPTABLE R20 K81 [{"LayoutOrder", "FillDirection", "TextWrapped", "AutomaticSize", "TextXAlignment", "Buttons", "CurrentSelectedKey", "OnClick"}]
  MOVE R21 R2
  CALL R21 0 1
  SETTABLEKS R21 R20 K74 ["LayoutOrder"]
  GETIMPORT R21 K83 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K75 ["FillDirection"]
  LOADB R21 1
  SETTABLEKS R21 R20 K76 ["TextWrapped"]
  GETIMPORT R21 K71 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K69 ["AutomaticSize"]
  GETIMPORT R21 K85 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K77 ["TextXAlignment"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K90 [{"Key", "Text", "Description", "Disabled"}]
  GETIMPORT R24 K93 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
  FASTCALL1 TYPEOF R24 [+3]
  MOVE R26 R24
  GETIMPORT R25 K95 [typeof]
  CALL R25 1 1
  JUMPIFNOTEQKS R25 K96 ["EnumItem"] [+10]
  GETTABLEKS R25 R24 K97 ["EnumType"]
  GETIMPORT R26 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  JUMPIFNOTEQ R25 R26 [+4]
  GETTABLEKS R23 R24 K99 ["Name"]
  JUMP [+1]
  LOADK R23 K100 ["Unknown"]
  SETTABLEKS R23 R22 K86 ["Key"]
  LOADK R25 K13 ["MovementSettings"]
  LOADK R26 K101 ["CollisionSectionSingleColliderHitTouchDetectionUseParts"]
  NAMECALL R23 R1 K15 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K87 ["Text"]
  LOADK R25 K13 ["MovementSettings"]
  LOADK R26 K102 ["CollisionSectionSingleColliderHitTouchDetectionUsePartsDescription"]
  NAMECALL R23 R1 K15 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K88 ["Description"]
  LOADB R23 0
  SETTABLEKS R23 R22 K89 ["Disabled"]
  DUPTABLE R23 K90 [{"Key", "Text", "Description", "Disabled"}]
  GETIMPORT R25 K104 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
  FASTCALL1 TYPEOF R25 [+3]
  MOVE R27 R25
  GETIMPORT R26 K95 [typeof]
  CALL R26 1 1
  JUMPIFNOTEQKS R26 K96 ["EnumItem"] [+10]
  GETTABLEKS R26 R25 K97 ["EnumType"]
  GETIMPORT R27 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  JUMPIFNOTEQ R26 R27 [+4]
  GETTABLEKS R24 R25 K99 ["Name"]
  JUMP [+1]
  LOADK R24 K100 ["Unknown"]
  SETTABLEKS R24 R23 K86 ["Key"]
  LOADK R26 K13 ["MovementSettings"]
  LOADK R27 K105 ["CollisionSectionSingleColliderHitTouchDetectionUseColliders"]
  NAMECALL R24 R1 K15 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K87 ["Text"]
  LOADK R26 K13 ["MovementSettings"]
  LOADK R27 K106 ["CollisionSectionSingleColliderHitTouchDetectionUseCollidersDescription"]
  NAMECALL R24 R1 K15 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K88 ["Description"]
  LOADB R24 0
  SETTABLEKS R24 R23 K89 ["Disabled"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K78 ["Buttons"]
  GETTABLEKS R23 R5 K107 ["collisionHitAndTouchDetectionSetting"]
  GETTABLEKS R22 R23 K24 ["value"]
  FASTCALL1 TYPEOF R22 [+3]
  MOVE R24 R22
  GETIMPORT R23 K95 [typeof]
  CALL R23 1 1
  JUMPIFNOTEQKS R23 K96 ["EnumItem"] [+10]
  GETTABLEKS R23 R22 K97 ["EnumType"]
  GETIMPORT R24 K98 [Enum.AvatarSettingsHitAndTouchDetectionMode]
  JUMPIFNOTEQ R23 R24 [+4]
  GETTABLEKS R21 R22 K99 ["Name"]
  JUMP [+1]
  LOADK R21 K100 ["Unknown"]
  SETTABLEKS R21 R20 K79 ["CurrentSelectedKey"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K80 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K72 ["Selector"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["HitAndTouchTitleFrame"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["AvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K12 ["ExpandableSection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K15 ["GenericModeSelector"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Packages"]
  GETTABLEKS R7 R8 K16 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K13 ["Packages"]
  GETTABLEKS R8 R9 K17 ["ReactUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Components"]
  GETTABLEKS R9 R10 K18 ["TitledComponent"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K19 ["Vector3Input"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K20 ["ContextServices"]
  GETTABLEKS R11 R10 K21 ["Localization"]
  GETTABLEKS R12 R4 K22 ["UI"]
  GETTABLEKS R13 R12 K23 ["RadioButtonList"]
  GETTABLEKS R14 R7 K24 ["createNextOrder"]
  GETTABLEKS R15 R6 K25 ["createElement"]
  DUPCLOSURE R16 K26 [PROTO_0]
  DUPCLOSURE R17 K27 [PROTO_1]
  DUPCLOSURE R18 K28 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R13
  RETURN R18 1
