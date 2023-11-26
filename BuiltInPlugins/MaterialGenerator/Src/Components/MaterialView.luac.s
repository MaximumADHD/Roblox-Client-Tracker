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
  DIVK R2 R0 K3 [10]
  SETTABLEKS R2 R1 K4 ["StudsPerTile"]
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
  DIVK R3 R0 K1 [10]
  NAMECALL R1 R1 K2 ["format"]
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
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be false"]
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
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"counter"}]
  GETTABLEKS R3 R0 K0 ["counter"]
  ADDK R2 R3 K2 [1]
  SETTABLEKS R2 R1 K0 ["counter"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_7]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Material"]
  GETTABLEKS R3 R1 K2 ["MaterialPreviewController"]
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["setMaterial"]
  CALL R3 2 0
  GETTABLEKS R4 R2 K4 ["MaterialVariant"]
  GETTABLEKS R3 R4 K5 ["Changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["materialVariantChangedConnection"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["MaterialPreviewController"]
  NAMECALL R2 R2 K2 ["clear"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K3 ["materialVariantChangedConnection"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K3 ["materialVariantChangedConnection"]
  NAMECALL R2 R2 K4 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K3 ["materialVariantChangedConnection"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MaterialView"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["Material"]
  GETTABLEKS R6 R4 K5 ["Textures"]
  GETTABLEKS R5 R6 K6 ["ColorMap"]
  GETTABLEKS R6 R4 K7 ["MaterialVariant"]
  GETTABLEKS R7 R4 K8 ["BaseMaterial"]
  GETTABLEKS R8 R6 K9 ["Name"]
  GETTABLEKS R10 R6 K11 ["StudsPerTile"]
  MULK R9 R10 K10 [10]
  GETTABLEKS R11 R6 K12 ["MaterialPattern"]
  GETIMPORT R12 K15 [Enum.MaterialPattern.Organic]
  JUMPIFEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETTABLEKS R11 R4 K16 ["IsTemporary"]
  GETUPVAL R12 0
  GETTABLEKS R13 R1 K17 ["LabelWidth"]
  GETTABLEKS R14 R2 K17 ["LabelWidth"]
  CALL R12 2 1
  GETUPVAL R13 0
  GETTABLEKS R14 R1 K18 ["Padding"]
  GETTABLEKS R15 R2 K18 ["Padding"]
  CALL R13 2 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K19 ["getNames"]
  CALL R14 0 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K20 ["getIcons"]
  CALL R15 0 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K21 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K27 [{"Active", "Padding", "Spacing", "Style", "Layout", "VerticalAlignment"}]
  GETUPVAL R20 4
  JUMPIFNOT R20 [+2]
  LOADB R19 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K22 ["Active"]
  SETTABLEKS R13 R18 K18 ["Padding"]
  GETTABLEKS R19 R2 K28 ["VerticalSpacing"]
  SETTABLEKS R19 R18 K23 ["Spacing"]
  LOADK R19 K29 ["CornerBox"]
  SETTABLEKS R19 R18 K24 ["Style"]
  GETIMPORT R19 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K25 ["Layout"]
  GETIMPORT R19 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K26 ["VerticalAlignment"]
  DUPTABLE R19 K36 [{"Scroller"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K21 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K42 [{"AutoSizeCanvas", "AutomaticCanvasSize", "LayoutOrder", "ScrollingDirection", "Size"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K37 ["AutoSizeCanvas"]
  GETIMPORT R23 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K38 ["AutomaticCanvasSize"]
  LOADN R23 2
  SETTABLEKS R23 R22 K39 ["LayoutOrder"]
  GETIMPORT R23 K46 [Enum.ScrollingDirection.Y]
  SETTABLEKS R23 R22 K40 ["ScrollingDirection"]
  GETIMPORT R23 K49 [UDim2.fromScale]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["Size"]
  DUPTABLE R23 K51 [{"Settings"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K21 ["createElement"]
  GETUPVAL R25 3
  DUPTABLE R26 K52 [{"AutomaticSize", "Layout", "Spacing", "VerticalAlignment"}]
  GETIMPORT R27 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K43 ["AutomaticSize"]
  GETIMPORT R27 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K25 ["Layout"]
  GETTABLEKS R27 R2 K53 ["SettingsGroupSpacing"]
  SETTABLEKS R27 R26 K23 ["Spacing"]
  GETIMPORT R27 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K26 ["VerticalAlignment"]
  DUPTABLE R27 K59 [{"Image", "PrimarySettingsGroup", "SettingsGroup", "SaveAndApplyButton", "ApplyButton"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K21 ["createElement"]
  LOADK R29 K60 ["ImageLabel"]
  DUPTABLE R30 K64 [{"BorderSizePixel", "Image", "LayoutOrder", "Size", "ScaleType", "TileSize"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K61 ["BorderSizePixel"]
  SETTABLEKS R5 R30 K54 ["Image"]
  LOADN R31 1
  SETTABLEKS R31 R30 K39 ["LayoutOrder"]
  GETIMPORT R31 K66 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  GETTABLEKS R35 R2 K67 ["PreviewHeight"]
  CALL R31 4 1
  SETTABLEKS R31 R30 K41 ["Size"]
  GETIMPORT R31 K69 [Enum.ScaleType.Tile]
  SETTABLEKS R31 R30 K62 ["ScaleType"]
  GETTABLEKS R31 R2 K70 ["PreviewTileSize"]
  SETTABLEKS R31 R30 K63 ["TileSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K54 ["Image"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K21 ["createElement"]
  GETUPVAL R29 3
  DUPTABLE R30 K72 [{"AutomaticSize", "BackgroundColor", "Layout", "LayoutOrder", "Padding", "Spacing", "Style", "VerticalAlignment"}]
  GETIMPORT R31 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K43 ["AutomaticSize"]
  GETTABLEKS R31 R2 K73 ["PrimarySettingsGroupBackgroundColor"]
  SETTABLEKS R31 R30 K71 ["BackgroundColor"]
  GETIMPORT R31 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K25 ["Layout"]
  LOADN R31 2
  SETTABLEKS R31 R30 K39 ["LayoutOrder"]
  GETTABLEKS R31 R2 K74 ["SettingsGroupPadding"]
  SETTABLEKS R31 R30 K18 ["Padding"]
  GETTABLEKS R31 R2 K75 ["SettingSpacing"]
  SETTABLEKS R31 R30 K23 ["Spacing"]
  LOADK R31 K29 ["CornerBox"]
  SETTABLEKS R31 R30 K24 ["Style"]
  GETIMPORT R31 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K26 ["VerticalAlignment"]
  DUPTABLE R31 K78 [{"StudsPerTileSetting", "MaterialPatternSetting"}]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K21 ["createElement"]
  GETUPVAL R33 6
  DUPTABLE R34 K87 [{"LabelWidth", "LayoutOrder", "Min", "Max", "OnFormatValue", "OnValueChanged", "ShowValueLabel", "Size", "SnapIncrement", "Text", "Value"}]
  SETTABLEKS R12 R34 K17 ["LabelWidth"]
  LOADN R35 1
  SETTABLEKS R35 R34 K39 ["LayoutOrder"]
  LOADN R35 1
  SETTABLEKS R35 R34 K79 ["Min"]
  LOADN R35 200
  SETTABLEKS R35 R34 K80 ["Max"]
  GETTABLEKS R35 R0 K88 ["formatStudsPerTile"]
  SETTABLEKS R35 R34 K81 ["OnFormatValue"]
  GETTABLEKS R35 R0 K89 ["studsPerTileChanged"]
  SETTABLEKS R35 R34 K82 ["OnValueChanged"]
  LOADB R35 0
  SETTABLEKS R35 R34 K83 ["ShowValueLabel"]
  GETTABLEKS R35 R2 K90 ["StudsPerTileSettingSize"]
  SETTABLEKS R35 R34 K41 ["Size"]
  LOADN R35 1
  SETTABLEKS R35 R34 K84 ["SnapIncrement"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K11 ["StudsPerTile"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K85 ["Text"]
  SETTABLEKS R9 R34 K86 ["Value"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K76 ["StudsPerTileSetting"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K21 ["createElement"]
  GETUPVAL R33 7
  DUPTABLE R34 K94 [{"LayoutOrder", "LabelWidth", "OnValueChanged", "Text", "UseCheckbox", "CheckboxLabel", "Value"}]
  LOADN R35 2
  SETTABLEKS R35 R34 K39 ["LayoutOrder"]
  SETTABLEKS R12 R34 K17 ["LabelWidth"]
  GETTABLEKS R35 R0 K95 ["organicToggled"]
  SETTABLEKS R35 R34 K82 ["OnValueChanged"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K12 ["MaterialPattern"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K85 ["Text"]
  LOADB R35 1
  SETTABLEKS R35 R34 K92 ["UseCheckbox"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K96 ["MaterialPatternOrganic"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K93 ["CheckboxLabel"]
  SETTABLEKS R10 R34 K86 ["Value"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K77 ["MaterialPatternSetting"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K55 ["PrimarySettingsGroup"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K21 ["createElement"]
  GETUPVAL R29 3
  DUPTABLE R30 K97 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R31 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K43 ["AutomaticSize"]
  GETIMPORT R31 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K25 ["Layout"]
  LOADN R31 3
  SETTABLEKS R31 R30 K39 ["LayoutOrder"]
  GETTABLEKS R31 R2 K74 ["SettingsGroupPadding"]
  SETTABLEKS R31 R30 K18 ["Padding"]
  GETTABLEKS R31 R2 K75 ["SettingSpacing"]
  SETTABLEKS R31 R30 K23 ["Spacing"]
  GETIMPORT R31 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K26 ["VerticalAlignment"]
  DUPTABLE R31 K99 [{"NameSetting", "BaseMaterial"}]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K21 ["createElement"]
  GETUPVAL R33 8
  DUPTABLE R34 K100 [{"LayoutOrder", "LabelWidth", "OnValueChanged", "Text", "Value"}]
  LOADN R35 1
  SETTABLEKS R35 R34 K39 ["LayoutOrder"]
  SETTABLEKS R12 R34 K17 ["LabelWidth"]
  GETTABLEKS R35 R0 K101 ["nameChanged"]
  SETTABLEKS R35 R34 K82 ["OnValueChanged"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K9 ["Name"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K85 ["Text"]
  SETTABLEKS R8 R34 K86 ["Value"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K98 ["NameSetting"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K21 ["createElement"]
  GETUPVAL R33 9
  DUPTABLE R34 K106 [{"Icons", "Items", "LayoutOrder", "LabelWidth", "OnValueChanged", "PlaceholderText", "Text", "ErrorText", "Value"}]
  SETTABLEKS R15 R34 K102 ["Icons"]
  SETTABLEKS R14 R34 K103 ["Items"]
  LOADN R35 2
  SETTABLEKS R35 R34 K39 ["LayoutOrder"]
  SETTABLEKS R12 R34 K17 ["LabelWidth"]
  GETTABLEKS R35 R0 K107 ["baseMaterialChanged"]
  SETTABLEKS R35 R34 K82 ["OnValueChanged"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K108 ["BaseMaterialPlaceholderText"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K104 ["PlaceholderText"]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K8 ["BaseMaterial"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K85 ["Text"]
  GETTABLEKS R37 R0 K109 ["state"]
  GETTABLEKS R36 R37 K110 ["errorMustSetBaseMaterial"]
  JUMPIFNOT R36 [+6]
  LOADK R37 K2 ["MaterialView"]
  LOADK R38 K111 ["BaseMaterialNotGivenError"]
  NAMECALL R35 R3 K91 ["getText"]
  CALL R35 3 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K105 ["ErrorText"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R35 R7 K9 ["Name"]
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K86 ["Value"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K8 ["BaseMaterial"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K56 ["SettingsGroup"]
  JUMPIFNOT R11 [+42]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K21 ["createElement"]
  GETUPVAL R29 10
  DUPTABLE R30 K115 [{"Disabled", "LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text"}]
  GETTABLEKS R31 R1 K116 ["IsSavingMaterial"]
  SETTABLEKS R31 R30 K112 ["Disabled"]
  LOADN R31 4
  SETTABLEKS R31 R30 K39 ["LayoutOrder"]
  GETTABLEKS R31 R0 K117 ["saveAndApplyClicked"]
  SETTABLEKS R31 R30 K113 ["OnClick"]
  GETTABLEKS R31 R2 K118 ["SaveAndApplyButtonSize"]
  SETTABLEKS R31 R30 K41 ["Size"]
  LOADK R31 K119 ["RoundPrimary"]
  SETTABLEKS R31 R30 K24 ["Style"]
  GETTABLEKS R32 R1 K116 ["IsSavingMaterial"]
  JUMPIFNOT R32 [+4]
  GETUPVAL R32 11
  GETTABLEKS R31 R32 K112 ["Disabled"]
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K114 ["StyleModifier"]
  LOADK R33 K2 ["MaterialView"]
  LOADK R34 K120 ["SaveAndApplyVariant"]
  NAMECALL R31 R3 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K85 ["Text"]
  CALL R28 2 1
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K57 ["SaveAndApplyButton"]
  JUMPIF R11 [+38]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K21 ["createElement"]
  GETUPVAL R29 10
  DUPTABLE R30 K121 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text"}]
  LOADN R31 4
  SETTABLEKS R31 R30 K39 ["LayoutOrder"]
  GETTABLEKS R31 R0 K117 ["saveAndApplyClicked"]
  SETTABLEKS R31 R30 K113 ["OnClick"]
  GETTABLEKS R31 R2 K122 ["ApplyButtonSize"]
  SETTABLEKS R31 R30 K41 ["Size"]
  LOADK R31 K123 ["Round"]
  SETTABLEKS R31 R30 K24 ["Style"]
  GETTABLEKS R32 R1 K116 ["IsSavingMaterial"]
  JUMPIFNOT R32 [+4]
  GETUPVAL R32 11
  GETTABLEKS R31 R32 K112 ["Disabled"]
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K114 ["StyleModifier"]
  LOADK R33 K2 ["MaterialView"]
  LOADK R34 K124 ["ApplyVariant"]
  NAMECALL R31 R3 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K85 ["Text"]
  CALL R28 2 1
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K58 ["ApplyButton"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K50 ["Settings"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K35 ["Scroller"]
  CALL R16 3 -1
  RETURN R16 -1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"Content", "OnClose"}]
  NAMECALL R5 R0 K5 ["renderContent"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["Content"]
  GETTABLEKS R5 R1 K3 ["OnClose"]
  SETTABLEKS R5 R4 K3 ["OnClose"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DevFrameworkPaneActiveProp"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R9 R1 K9 ["Packages"]
  GETTABLEKS R8 R9 K12 ["_Index"]
  GETTABLEKS R7 R8 K13 ["DeveloperFramework"]
  GETTABLEKS R6 R7 K13 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K15 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K16 ["ContextServices"]
  GETTABLEKS R7 R6 K17 ["withContext"]
  GETTABLEKS R8 R6 K18 ["Localization"]
  GETTABLEKS R10 R2 K19 ["Style"]
  GETTABLEKS R9 R10 K20 ["Stylizer"]
  GETTABLEKS R10 R2 K21 ["UI"]
  GETTABLEKS R11 R10 K22 ["Button"]
  GETTABLEKS R12 R10 K23 ["Pane"]
  GETTABLEKS R13 R10 K24 ["ScrollingFrame"]
  GETTABLEKS R15 R2 K25 ["Util"]
  GETTABLEKS R14 R15 K26 ["StyleModifier"]
  GETTABLEKS R16 R2 K25 ["Util"]
  GETTABLEKS R15 R16 K27 ["prioritize"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R1 K15 ["Src"]
  GETTABLEKS R18 R19 K28 ["Flags"]
  GETTABLEKS R17 R18 K29 ["getFFlagMaterialGeneratorNewUI"]
  CALL R16 1 1
  GETTABLEKS R18 R1 K15 ["Src"]
  GETTABLEKS R17 R18 K30 ["Components"]
  GETIMPORT R18 K8 [require]
  GETTABLEKS R19 R17 K31 ["ModalView"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETTABLEKS R21 R17 K32 ["Settings"]
  GETTABLEKS R20 R21 K33 ["SelectInputSetting"]
  CALL R19 1 1
  GETIMPORT R20 K8 [require]
  GETTABLEKS R22 R17 K32 ["Settings"]
  GETTABLEKS R21 R22 K34 ["SliderSetting"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R23 R17 K32 ["Settings"]
  GETTABLEKS R22 R23 K35 ["TextSetting"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R24 R17 K32 ["Settings"]
  GETTABLEKS R23 R24 K36 ["ToggleButtonSetting"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R26 R1 K15 ["Src"]
  GETTABLEKS R25 R26 K37 ["Controllers"]
  GETTABLEKS R24 R25 K38 ["MaterialPreviewController"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R27 R1 K15 ["Src"]
  GETTABLEKS R26 R27 K25 ["Util"]
  GETTABLEKS R25 R26 K39 ["SupportedMaterials"]
  CALL R24 1 1
  GETTABLEKS R25 R3 K40 ["PureComponent"]
  LOADK R27 K41 ["MaterialView"]
  NAMECALL R25 R25 K42 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K43 [PROTO_6]
  CAPTURE VAL R16
  SETTABLEKS R26 R25 K44 ["init"]
  DUPCLOSURE R26 K45 [PROTO_9]
  SETTABLEKS R26 R25 K46 ["didMount"]
  DUPCLOSURE R26 K47 [PROTO_10]
  SETTABLEKS R26 R25 K48 ["willUnmount"]
  DUPCLOSURE R26 K49 [PROTO_11]
  CAPTURE VAL R15
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R26 R25 K50 ["renderContent"]
  DUPCLOSURE R26 K51 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R26 R25 K52 ["render"]
  MOVE R26 R7
  DUPTABLE R27 K53 [{"Localization", "MaterialPreviewController", "Stylizer"}]
  SETTABLEKS R8 R27 K18 ["Localization"]
  SETTABLEKS R23 R27 K38 ["MaterialPreviewController"]
  SETTABLEKS R9 R27 K20 ["Stylizer"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  RETURN R25 1
