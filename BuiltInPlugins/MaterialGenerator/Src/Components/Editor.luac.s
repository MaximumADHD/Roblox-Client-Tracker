PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Material"]
  GETTABLEKS R0 R1 K2 ["MaterialVariant"]
  GETTABLEKS R1 R0 K3 ["MaterialPattern"]
  GETIMPORT R2 K6 [Enum.MaterialPattern.Regular]
  JUMPIFNOTEQ R1 R2 [+6]
  GETIMPORT R1 K8 [Enum.MaterialPattern.Organic]
  SETTABLEKS R1 R0 K3 ["MaterialPattern"]
  RETURN R0 0
  GETIMPORT R1 K6 [Enum.MaterialPattern.Regular]
  SETTABLEKS R1 R0 K3 ["MaterialPattern"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Material"]
  GETTABLEKS R1 R2 K2 ["MaterialVariant"]
  SETTABLEKS R0 R1 K3 ["StudsPerTile"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K2 [Enum.Material]
  GETTABLE R1 R2 R0
  GETUPVAL R2 0
  DUPTABLE R4 K4 [{"errorMustSetBaseMaterial"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["errorMustSetBaseMaterial"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["props"]
  GETTABLEKS R2 R3 K7 ["OnBaseMaterialChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Material"]
  GETTABLEKS R1 R2 K2 ["MaterialVariant"]
  SETTABLEKS R0 R1 K3 ["Name"]
  RETURN R0 0

PROTO_4:
  LOADK R1 K0 ["%.1f"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["IsSavingMaterial"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K2 ["Material"]
  GETTABLEKS R1 R2 K3 ["BaseMaterial"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K4 ["OnSaveAndApply"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"errorMustSetBaseMaterial"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["errorMustSetBaseMaterial"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETIMPORT R4 K4 [Enum.KeyCode.Escape]
  GETTABLE R3 R1 R4
  JUMPIFNOT R3 [+6]
  GETTABLEKS R4 R2 K5 ["OnClose"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R2 K5 ["OnClose"]
  CALL R4 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R3 K5 [{"counter", "errorMustSetBaseMaterial"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["counter"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["errorMustSetBaseMaterial"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["organicToggled"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["studsPerTileChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["baseMaterialChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["nameChanged"]
  DUPCLOSURE R1 K11 [PROTO_4]
  SETTABLEKS R1 R0 K12 ["formatStudsPerTile"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["saveAndApplyClicked"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["keyPressed"]
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"counter"}]
  GETTABLEKS R3 R0 K0 ["counter"]
  ADDK R2 R3 K2 [1]
  SETTABLEKS R2 R1 K0 ["counter"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_8]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Material"]
  GETTABLEKS R4 R2 K2 ["MaterialVariant"]
  GETTABLEKS R3 R4 K3 ["Changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["materialVariantChangedConnection"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["materialVariantChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["materialVariantChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["materialVariantChangedConnection"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Material"]
  GETTABLEKS R3 R1 K1 ["Material"]
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R0 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["Editor"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["Material"]
  GETTABLEKS R5 R4 K5 ["MaterialVariant"]
  GETTABLEKS R6 R4 K6 ["BaseMaterial"]
  GETTABLEKS R7 R5 K7 ["Name"]
  GETTABLEKS R8 R5 K8 ["StudsPerTile"]
  GETTABLEKS R10 R5 K9 ["MaterialPattern"]
  GETIMPORT R11 K12 [Enum.MaterialPattern.Organic]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETTABLEKS R10 R4 K13 ["IsTemporary"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K14 ["getNames"]
  CALL R11 0 1
  GETTABLEKS R12 R2 K15 ["LabelWidth"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K20 [{"LayoutOrder", "Size", "Style"}]
  GETTABLEKS R16 R1 K17 ["LayoutOrder"]
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  GETTABLEKS R16 R1 K18 ["Size"]
  SETTABLEKS R16 R15 K18 ["Size"]
  LOADK R16 K21 ["Box"]
  SETTABLEKS R16 R15 K19 ["Style"]
  DUPTABLE R16 K24 [{"ScrollingFrame", "MaterialVariantApplier"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K28 [{"AutoSizeCanvas", "AutomaticCanvasSize", "LayoutOrder", "ScrollingDirection"}]
  LOADB R20 1
  SETTABLEKS R20 R19 K25 ["AutoSizeCanvas"]
  GETIMPORT R20 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K26 ["AutomaticCanvasSize"]
  GETTABLEKS R20 R1 K17 ["LayoutOrder"]
  SETTABLEKS R20 R19 K17 ["LayoutOrder"]
  GETIMPORT R20 K32 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K27 ["ScrollingDirection"]
  DUPTABLE R20 K36 [{"CloseButton", "KeyboardListener", "Content"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K41 [{"AnchorPoint", "Position", "Size", "Style", "OnClick", "ZIndex"}]
  GETIMPORT R24 K44 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["AnchorPoint"]
  GETIMPORT R24 K46 [UDim2.new]
  LOADN R25 1
  LOADN R26 254
  LOADN R27 0
  LOADN R28 2
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Position"]
  GETTABLEKS R24 R2 K47 ["CloseButtonSize"]
  SETTABLEKS R24 R23 K18 ["Size"]
  LOADK R24 K48 ["Close"]
  SETTABLEKS R24 R23 K19 ["Style"]
  GETTABLEKS R24 R1 K49 ["OnClose"]
  SETTABLEKS R24 R23 K39 ["OnClick"]
  LOADN R24 232
  SETTABLEKS R24 R23 K40 ["ZIndex"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["CloseButton"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K51 [{"OnKeyPressed"}]
  GETTABLEKS R24 R0 K52 ["keyPressed"]
  SETTABLEKS R24 R23 K50 ["OnKeyPressed"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K34 ["KeyboardListener"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K54 [{"AutomaticSize", "Layout"}]
  GETIMPORT R24 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K29 ["AutomaticSize"]
  GETIMPORT R24 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K53 ["Layout"]
  DUPTABLE R24 K62 [{"PreviewPane", "SettingsPane", "SaveAndApplyButton", "ApplyButton"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R26 2
  DUPTABLE R27 K64 [{"AutomaticSize", "BackgroundColor", "LayoutOrder"}]
  GETIMPORT R28 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R28 R27 K29 ["AutomaticSize"]
  GETTABLEKS R28 R2 K65 ["PreviewBackgroundColor"]
  SETTABLEKS R28 R27 K63 ["BackgroundColor"]
  LOADN R28 1
  SETTABLEKS R28 R27 K17 ["LayoutOrder"]
  DUPTABLE R28 K67 [{"Preview"}]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  GETUPVAL R30 6
  DUPTABLE R31 K70 [{"AnchorPoint", "BackgroundColor", "DisableHover", "DisableZoom", "Material", "Position", "Size"}]
  GETIMPORT R32 K44 [Vector2.new]
  LOADK R33 K71 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K37 ["AnchorPoint"]
  GETTABLEKS R32 R2 K65 ["PreviewBackgroundColor"]
  SETTABLEKS R32 R31 K63 ["BackgroundColor"]
  LOADB R32 1
  SETTABLEKS R32 R31 K68 ["DisableHover"]
  LOADB R32 1
  SETTABLEKS R32 R31 K69 ["DisableZoom"]
  GETTABLEKS R32 R4 K5 ["MaterialVariant"]
  SETTABLEKS R32 R31 K4 ["Material"]
  GETIMPORT R32 K73 [UDim2.fromScale]
  LOADK R33 K71 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K38 ["Position"]
  GETIMPORT R32 K75 [UDim2.fromOffset]
  GETTABLEKS R33 R2 K76 ["PreviewHeight"]
  GETTABLEKS R34 R2 K76 ["PreviewHeight"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K18 ["Size"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K66 ["Preview"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K58 ["PreviewPane"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R26 2
  DUPTABLE R27 K77 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R28 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R28 R27 K29 ["AutomaticSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K17 ["LayoutOrder"]
  DUPTABLE R28 K79 [{"Settings"}]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  GETUPVAL R30 2
  DUPTABLE R31 K82 [{"AnchorPoint", "AutomaticSize", "Layout", "LayoutOrder", "Padding", "Position", "Size", "Spacing"}]
  GETIMPORT R32 K44 [Vector2.new]
  LOADK R33 K71 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K37 ["AnchorPoint"]
  GETIMPORT R32 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R32 R31 K29 ["AutomaticSize"]
  GETIMPORT R32 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R32 R31 K53 ["Layout"]
  LOADN R32 2
  SETTABLEKS R32 R31 K17 ["LayoutOrder"]
  GETTABLEKS R32 R2 K83 ["SettingsPadding"]
  SETTABLEKS R32 R31 K80 ["Padding"]
  GETIMPORT R32 K73 [UDim2.fromScale]
  LOADK R33 K71 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K38 ["Position"]
  GETIMPORT R32 K75 [UDim2.fromOffset]
  LOADN R33 44
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K18 ["Size"]
  GETTABLEKS R32 R2 K84 ["SettingSpacing"]
  SETTABLEKS R32 R31 K81 ["Spacing"]
  DUPTABLE R32 K88 [{"StudsPerTileSetting", "MaterialPatternSetting", "NameSetting", "BaseMaterial"}]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R34 7
  DUPTABLE R35 K97 [{"LabelWidth", "LayoutOrder", "Min", "Max", "OnFormatValue", "OnValueChanged", "ShowValueLabel", "Size", "SnapIncrement", "Text", "Value"}]
  SETTABLEKS R12 R35 K15 ["LabelWidth"]
  LOADN R36 1
  SETTABLEKS R36 R35 K17 ["LayoutOrder"]
  LOADK R36 K98 [0.1]
  SETTABLEKS R36 R35 K89 ["Min"]
  LOADN R36 20
  SETTABLEKS R36 R35 K90 ["Max"]
  GETTABLEKS R36 R0 K99 ["formatStudsPerTile"]
  SETTABLEKS R36 R35 K91 ["OnFormatValue"]
  GETTABLEKS R36 R0 K100 ["studsPerTileChanged"]
  SETTABLEKS R36 R35 K92 ["OnValueChanged"]
  LOADB R36 0
  SETTABLEKS R36 R35 K93 ["ShowValueLabel"]
  GETTABLEKS R36 R2 K101 ["StudsPerTileSettingSize"]
  SETTABLEKS R36 R35 K18 ["Size"]
  LOADK R36 K98 [0.1]
  SETTABLEKS R36 R35 K94 ["SnapIncrement"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K8 ["StudsPerTile"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K95 ["Text"]
  SETTABLEKS R8 R35 K96 ["Value"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K85 ["StudsPerTileSetting"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R34 8
  DUPTABLE R35 K105 [{"LayoutOrder", "LabelWidth", "OnValueChanged", "Text", "UseCheckbox", "CheckboxLabel", "Value"}]
  LOADN R36 2
  SETTABLEKS R36 R35 K17 ["LayoutOrder"]
  SETTABLEKS R12 R35 K15 ["LabelWidth"]
  GETTABLEKS R36 R0 K106 ["organicToggled"]
  SETTABLEKS R36 R35 K92 ["OnValueChanged"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K9 ["MaterialPattern"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K95 ["Text"]
  LOADB R36 1
  SETTABLEKS R36 R35 K103 ["UseCheckbox"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K107 ["MaterialPatternOrganic"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K104 ["CheckboxLabel"]
  SETTABLEKS R9 R35 K96 ["Value"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K86 ["MaterialPatternSetting"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R34 9
  DUPTABLE R35 K108 [{"LayoutOrder", "LabelWidth", "OnValueChanged", "Text", "Value"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K17 ["LayoutOrder"]
  SETTABLEKS R12 R35 K15 ["LabelWidth"]
  GETTABLEKS R36 R0 K109 ["nameChanged"]
  SETTABLEKS R36 R35 K92 ["OnValueChanged"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K7 ["Name"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K95 ["Text"]
  SETTABLEKS R7 R35 K96 ["Value"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K87 ["NameSetting"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R34 10
  DUPTABLE R35 K113 [{"Items", "LayoutOrder", "LabelWidth", "OnValueChanged", "PlaceholderText", "Text", "ErrorText", "Value"}]
  SETTABLEKS R11 R35 K110 ["Items"]
  LOADN R36 4
  SETTABLEKS R36 R35 K17 ["LayoutOrder"]
  SETTABLEKS R12 R35 K15 ["LabelWidth"]
  GETTABLEKS R36 R0 K114 ["baseMaterialChanged"]
  SETTABLEKS R36 R35 K92 ["OnValueChanged"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K115 ["BaseMaterialPlaceholderText"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K111 ["PlaceholderText"]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K6 ["BaseMaterial"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K95 ["Text"]
  GETTABLEKS R38 R0 K116 ["state"]
  GETTABLEKS R37 R38 K117 ["errorMustSetBaseMaterial"]
  JUMPIFNOT R37 [+6]
  LOADK R38 K2 ["Editor"]
  LOADK R39 K118 ["BaseMaterialNotGivenError"]
  NAMECALL R36 R3 K102 ["getText"]
  CALL R36 3 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K112 ["ErrorText"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R36 R6 K7 ["Name"]
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K96 ["Value"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K6 ["BaseMaterial"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K78 ["Settings"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K59 ["SettingsPane"]
  JUMPIFNOT R10 [+42]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K121 [{"Disabled", "LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text"}]
  GETTABLEKS R28 R1 K122 ["IsSavingMaterial"]
  SETTABLEKS R28 R27 K119 ["Disabled"]
  LOADN R28 4
  SETTABLEKS R28 R27 K17 ["LayoutOrder"]
  GETTABLEKS R28 R0 K123 ["saveAndApplyClicked"]
  SETTABLEKS R28 R27 K39 ["OnClick"]
  GETTABLEKS R28 R2 K124 ["SaveAndApplyButtonSize"]
  SETTABLEKS R28 R27 K18 ["Size"]
  LOADK R28 K125 ["RoundPrimary"]
  SETTABLEKS R28 R27 K19 ["Style"]
  GETTABLEKS R29 R1 K122 ["IsSavingMaterial"]
  JUMPIFNOT R29 [+4]
  GETUPVAL R29 11
  GETTABLEKS R28 R29 K119 ["Disabled"]
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K120 ["StyleModifier"]
  LOADK R30 K2 ["Editor"]
  LOADK R31 K126 ["SaveAndApplyVariant"]
  NAMECALL R28 R3 K102 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K95 ["Text"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K60 ["SaveAndApplyButton"]
  JUMPIF R10 [+38]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K127 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text"}]
  LOADN R28 4
  SETTABLEKS R28 R27 K17 ["LayoutOrder"]
  GETTABLEKS R28 R0 K123 ["saveAndApplyClicked"]
  SETTABLEKS R28 R27 K39 ["OnClick"]
  GETTABLEKS R28 R2 K128 ["ApplyButtonSize"]
  SETTABLEKS R28 R27 K18 ["Size"]
  LOADK R28 K129 ["Round"]
  SETTABLEKS R28 R27 K19 ["Style"]
  GETTABLEKS R29 R1 K122 ["IsSavingMaterial"]
  JUMPIFNOT R29 [+4]
  GETUPVAL R29 11
  GETTABLEKS R28 R29 K119 ["Disabled"]
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K120 ["StyleModifier"]
  LOADK R30 K2 ["Editor"]
  LOADK R31 K130 ["ApplyVariant"]
  NAMECALL R28 R3 K102 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K95 ["Text"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K61 ["ApplyButton"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K35 ["Content"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K22 ["ScrollingFrame"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 12
  DUPTABLE R19 K131 [{"MaterialVariant"}]
  SETTABLEKS R5 R19 K5 ["MaterialVariant"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["MaterialVariantApplier"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R10 R0 K7 ["Packages"]
  GETTABLEKS R9 R10 K11 ["_Index"]
  GETTABLEKS R8 R9 K12 ["DeveloperFramework"]
  GETTABLEKS R7 R8 K12 ["DeveloperFramework"]
  GETTABLEKS R6 R7 K6 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["withContext"]
  GETTABLEKS R8 R6 K15 ["Localization"]
  GETTABLEKS R10 R2 K16 ["Style"]
  GETTABLEKS R9 R10 K17 ["Stylizer"]
  GETTABLEKS R10 R2 K18 ["UI"]
  GETTABLEKS R11 R10 K19 ["Button"]
  GETTABLEKS R12 R10 K20 ["KeyboardListener"]
  GETTABLEKS R13 R10 K21 ["Pane"]
  GETTABLEKS R14 R10 K22 ["ScrollingFrame"]
  GETTABLEKS R16 R2 K23 ["Util"]
  GETTABLEKS R15 R16 K24 ["StyleModifier"]
  GETTABLEKS R17 R3 K25 ["Components"]
  GETTABLEKS R16 R17 K26 ["MaterialPreview"]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K25 ["Components"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K27 ["MaterialVariantApplier"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R17 K28 ["Settings"]
  GETTABLEKS R20 R21 K29 ["SelectInputSetting"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R22 R17 K28 ["Settings"]
  GETTABLEKS R21 R22 K30 ["SliderSetting"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R23 R17 K28 ["Settings"]
  GETTABLEKS R22 R23 K31 ["TextSetting"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R24 R17 K28 ["Settings"]
  GETTABLEKS R23 R24 K32 ["ToggleButtonSetting"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K5 ["Src"]
  GETTABLEKS R25 R26 K33 ["Flags"]
  GETTABLEKS R24 R25 K34 ["getFFlagMaterialGeneratorNewUI"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K5 ["Src"]
  GETTABLEKS R26 R27 K23 ["Util"]
  GETTABLEKS R25 R26 K35 ["SupportedMaterials"]
  CALL R24 1 1
  GETTABLEKS R25 R4 K36 ["PureComponent"]
  LOADK R27 K37 ["Editor"]
  NAMECALL R25 R25 K38 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K39 [PROTO_7]
  CAPTURE VAL R23
  SETTABLEKS R26 R25 K40 ["init"]
  DUPCLOSURE R26 K41 [PROTO_10]
  SETTABLEKS R26 R25 K42 ["didMount"]
  DUPCLOSURE R26 K43 [PROTO_11]
  SETTABLEKS R26 R25 K44 ["willUnmount"]
  DUPCLOSURE R26 K45 [PROTO_12]
  SETTABLEKS R26 R25 K46 ["willUpdate"]
  DUPCLOSURE R26 K47 [PROTO_13]
  CAPTURE VAL R24
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R18
  SETTABLEKS R26 R25 K48 ["render"]
  MOVE R26 R7
  DUPTABLE R27 K49 [{"Localization", "Stylizer"}]
  SETTABLEKS R8 R27 K15 ["Localization"]
  SETTABLEKS R9 R27 K17 ["Stylizer"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  RETURN R25 1
