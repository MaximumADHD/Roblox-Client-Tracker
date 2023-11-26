PROTO_0:
  GETTABLEKS R1 R0 K0 ["SelectedImportItem"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R0 K1 ["AssetImportSession"]
  GETTABLEKS R4 R1 K2 ["Id"]
  NAMECALL R2 R2 K3 ["GetInstance"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K4 ["UpdatePreviewInstance"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  FASTCALL2K STRING_SUB R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 [-1]
  GETIMPORT R1 K3 [string.sub]
  CALL R1 2 1
  JUMPIFNOTEQKS R1 K4 ["*"] [+9]
  MOVE R2 R0
  LOADN R3 1
  LOADN R4 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R1 K3 [string.sub]
  CALL R1 3 1
  MOVE R0 R1
  RETURN R0 1

PROTO_2:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Stylizer"]
  GETTABLEKS R4 R5 K2 ["TopBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["PresetController"]
  LOADNIL R6
  MOVE R8 R0
  FASTCALL2K STRING_SUB R8 K4 [+5]
  MOVE R10 R8
  LOADK R11 K4 [-1]
  GETIMPORT R9 K7 [string.sub]
  CALL R9 2 1
  JUMPIFNOTEQKS R9 K8 ["*"] [+9]
  MOVE R10 R8
  LOADN R11 1
  LOADN R12 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R9 K7 [string.sub]
  CALL R9 3 1
  MOVE R8 R9
  MOVE R7 R8
  MOVE R10 R7
  NAMECALL R8 R5 K9 ["isStudioDefault"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 1
  JUMP [+9]
  MOVE R10 R7
  NAMECALL R8 R5 K10 ["isLastImport"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 2
  JUMP [+2]
  LOADN R8 2
  ADD R6 R8 R1
  JUMPIFNOT R3 [+4]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["Hover"]
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K17 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
  SETTABLEKS R6 R11 K13 ["LayoutOrder"]
  SETTABLEKS R2 R11 K14 ["OnClick"]
  GETTABLEKS R12 R4 K18 ["MenuItemSize"]
  SETTABLEKS R12 R11 K15 ["Size"]
  SETTABLEKS R8 R11 K16 ["StyleModifier"]
  DUPTABLE R12 K20 [{"TextLabel"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K24 [{"Text", "TextXAlignment", "Size", "TextTruncate", "StyleModifier"}]
  SETTABLEKS R0 R15 K21 ["Text"]
  GETIMPORT R16 K27 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K22 ["TextXAlignment"]
  GETIMPORT R16 K30 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  GETIMPORT R16 K32 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R16 R15 K23 ["TextTruncate"]
  SETTABLEKS R8 R15 K16 ["StyleModifier"]
  DUPTABLE R16 K34 [{"Padding"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K35 ["UIPadding"]
  DUPTABLE R19 K38 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K26 ["Left"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PaddingLeft"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K42 ["Right"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K37 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Padding"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["TextLabel"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_3:
  MOVE R2 R0
  FASTCALL2K STRING_SUB R2 K0 [+5]
  MOVE R4 R2
  LOADK R5 K0 [-1]
  GETIMPORT R3 K3 [string.sub]
  CALL R3 2 1
  JUMPIFNOTEQKS R3 K4 ["*"] [+9]
  MOVE R4 R2
  LOADN R5 1
  LOADN R6 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R3 K3 [string.sub]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K6 ["SetCurrentPreset"]
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 1
  DUPTABLE R4 K9 [{"currentTemplateName", "selectedTemplateIndex"}]
  SETTABLEKS R0 R4 K7 ["currentTemplateName"]
  SETTABLEKS R1 R4 K8 ["selectedTemplateIndex"]
  NAMECALL R2 R2 K10 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K11 ["AssetImportSession"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["props"]
  GETTABLEKS R3 R4 K12 ["Checked"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["props"]
  GETTABLEKS R4 R5 K13 ["PresetController"]
  MOVE R6 R0
  NAMECALL R4 R4 K14 ["resolvePreset"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["resolveTemplate"]
  MOVE R5 R2
  MOVE R6 R0
  MOVE R7 R3
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["props"]
  GETTABLEKS R8 R9 K16 ["Localization"]
  CALL R4 4 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["props"]
  GETTABLEKS R5 R6 K17 ["UpdateChecked"]
  MOVE R6 R4
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["props"]
  GETTABLEKS R6 R5 K18 ["SelectedImportItem"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R5 K11 ["AssetImportSession"]
  GETTABLEKS R9 R6 K19 ["Id"]
  NAMECALL R7 R7 K20 ["GetInstance"]
  CALL R7 2 1
  GETTABLEKS R8 R5 K21 ["UpdatePreviewInstance"]
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["props"]
  GETTABLEKS R5 R6 K22 ["SetSettingsChanged"]
  LOADB R6 0
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["PresetController"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["CurrentPreset"]
  NAMECALL R0 R0 K3 ["resolvePreset"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["resolveTemplate"]
  GETTABLEKS R2 R0 K5 ["AssetImportSession"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["state"]
  GETTABLEKS R3 R4 K7 ["currentTemplateName"]
  GETTABLEKS R4 R0 K8 ["Checked"]
  GETTABLEKS R5 R0 K9 ["Localization"]
  CALL R1 4 0
  GETTABLEKS R1 R0 K10 ["SelectedImportItem"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R0 K5 ["AssetImportSession"]
  GETTABLEKS R4 R1 K11 ["Id"]
  NAMECALL R2 R2 K12 ["GetInstance"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K13 ["UpdatePreviewInstance"]
  MOVE R4 R2
  CALL R3 1 0
  GETTABLEKS R1 R0 K14 ["SetSettingsChanged"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"selectedTemplateIndex", "currentTemplateName"}]
  LOADN R2 255
  SETTABLEKS R2 R1 K0 ["selectedTemplateIndex"]
  LOADK R2 K3 [""]
  SETTABLEKS R2 R1 K1 ["currentTemplateName"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K5 ["renderDropdownItem"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K6 ["onItemActivated"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K7 ["onReset"]
  RETURN R0 0

PROTO_6:
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["initializeTemplates"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["Localization"]
  CALL R3 1 2
  MOVE R1 R3
  MOVE R2 R4
  DUPTABLE R5 K5 [{"selectedTemplateIndex", "currentTemplateName"}]
  SETTABLEKS R1 R5 K3 ["selectedTemplateIndex"]
  SETTABLEKS R2 R5 K4 ["currentTemplateName"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  MOVE R3 R0
  FASTCALL2K STRING_SUB R3 K0 [+5]
  MOVE R5 R3
  LOADK R6 K0 [-1]
  GETIMPORT R4 K3 [string.sub]
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K4 ["*"] [+9]
  MOVE R5 R3
  LOADN R6 1
  LOADN R7 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R4 K3 [string.sub]
  CALL R4 3 1
  MOVE R3 R4
  MOVE R2 R3
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["TopBar"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R3 K4 ["MenuButtonSize"]
  JUMP [+2]
  GETTABLEKS R4 R3 K5 ["ResetButtonSize"]
  GETTABLEKS R10 R3 K6 ["ButtonSize"]
  GETTABLEKS R9 R10 K7 ["X"]
  GETTABLEKS R8 R9 K8 ["Offset"]
  GETTABLEKS R10 R4 K7 ["X"]
  GETTABLEKS R9 R10 K8 ["Offset"]
  ADD R7 R8 R9
  GETTABLEKS R10 R3 K9 ["TemplateDropDown"]
  GETTABLEKS R9 R10 K7 ["X"]
  GETTABLEKS R8 R9 K8 ["Offset"]
  ADD R6 R7 R8
  GETTABLEKS R8 R3 K11 ["Spacing"]
  MULK R7 R8 K10 [3]
  ADD R5 R6 R7
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R1 K12 ["CurrentPreset"]
  JUMP [+4]
  GETTABLEKS R7 R0 K13 ["state"]
  GETTABLEKS R6 R7 K14 ["currentTemplateName"]
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIFNOT R8 [+7]
  GETTABLEKS R7 R1 K15 ["PresetController"]
  MOVE R9 R6
  NAMECALL R7 R7 K16 ["getNameList"]
  CALL R7 2 1
  JUMP [+8]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["getNameList"]
  MOVE R8 R6
  GETTABLEKS R9 R1 K17 ["SettingsChanged"]
  MOVE R10 R2
  CALL R7 3 1
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIFNOT R9 [+7]
  GETTABLEKS R8 R1 K15 ["PresetController"]
  MOVE R10 R6
  NAMECALL R8 R8 K18 ["isLastImport"]
  CALL R8 2 1
  JUMP [+7]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["isLastImport"]
  MOVE R9 R6
  GETTABLEKS R10 R1 K1 ["Localization"]
  CALL R8 2 1
  LOADNIL R9
  JUMPIFNOT R8 [+8]
  GETTABLEKS R10 R1 K1 ["Localization"]
  LOADK R12 K19 ["Templates"]
  LOADK R13 K20 ["LastImportTooltip"]
  NAMECALL R10 R10 K21 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  GETTABLEKS R10 R1 K17 ["SettingsChanged"]
  JUMPIFNOT R10 [+8]
  GETTABLEKS R10 R1 K1 ["Localization"]
  LOADK R12 K19 ["Templates"]
  LOADK R13 K22 ["ModifiedTemplateTooltip"]
  NAMECALL R10 R10 K21 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R11 0
  CALL R11 0 1
  JUMPIFNOT R11 [+6]
  GETUPVAL R10 2
  MOVE R11 R7
  NEWCLOSURE R12 P0
  CAPTURE VAL R6
  CALL R10 2 1
  JUMP [+4]
  GETTABLEKS R11 R0 K13 ["state"]
  GETTABLEKS R10 R11 K23 ["selectedTemplateIndex"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K24 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K32 [{"Items", "LayoutOrder", "OnRenderItem", "OnItemActivated", "SelectedIndex", "Width", "TextTruncate"}]
  SETTABLEKS R7 R13 K25 ["Items"]
  LOADN R14 3
  SETTABLEKS R14 R13 K26 ["LayoutOrder"]
  GETUPVAL R15 0
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R0 K33 ["renderDropdownItem"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K27 ["OnRenderItem"]
  GETTABLEKS R14 R0 K34 ["onItemActivated"]
  SETTABLEKS R14 R13 K28 ["OnItemActivated"]
  SETTABLEKS R10 R13 K29 ["SelectedIndex"]
  GETTABLEKS R16 R3 K9 ["TemplateDropDown"]
  GETTABLEKS R15 R16 K7 ["X"]
  GETTABLEKS R14 R15 K8 ["Offset"]
  SETTABLEKS R14 R13 K30 ["Width"]
  GETIMPORT R14 K37 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K31 ["TextTruncate"]
  CALL R11 2 1
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K24 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K42 [{"HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
  GETIMPORT R15 K44 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K38 ["HorizontalAlignment"]
  GETIMPORT R15 K47 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K39 ["Layout"]
  GETTABLEKS R15 R3 K40 ["Padding"]
  SETTABLEKS R15 R14 K40 ["Padding"]
  GETTABLEKS R15 R1 K41 ["Size"]
  SETTABLEKS R15 R14 K41 ["Size"]
  GETTABLEKS R15 R3 K11 ["Spacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  DUPTABLE R15 K53 [{"BrowseButton", "TextInput", "PresetDropdown", "ResetButton", "PresetMenu"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K57 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETTABLEKS R19 R3 K6 ["ButtonSize"]
  SETTABLEKS R19 R18 K41 ["Size"]
  LOADK R19 K58 ["Round"]
  SETTABLEKS R19 R18 K54 ["Style"]
  LOADK R21 K59 ["Plugin"]
  LOADK R22 K60 ["Browse"]
  NAMECALL R19 R2 K21 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K55 ["Text"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K61 ["OnBrowse"]
  SETTABLEKS R19 R18 K56 ["OnClick"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K48 ["BrowseButton"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K62 [{"Size", "LayoutOrder"}]
  GETIMPORT R19 K65 [UDim2.new]
  LOADN R20 1
  MINUS R21 R5
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K41 ["Size"]
  LOADN R19 2
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  DUPTABLE R19 K67 [{"FilePath"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K24 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K70 [{"AutomaticSize", "Disabled", "Size", "Text"}]
  GETIMPORT R23 K72 [Enum.AutomaticSize.None]
  SETTABLEKS R23 R22 K68 ["AutomaticSize"]
  LOADB R23 1
  SETTABLEKS R23 R22 K69 ["Disabled"]
  GETIMPORT R23 K65 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K41 ["Size"]
  GETTABLEKS R23 R1 K73 ["FileName"]
  SETTABLEKS R23 R22 K55 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K66 ["FilePath"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K49 ["TextInput"]
  JUMPIFNOT R9 [+28]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K74 [{"LayoutOrder", "Size"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETTABLEKS R19 R3 K9 ["TemplateDropDown"]
  SETTABLEKS R19 R18 K41 ["Size"]
  NEWTABLE R19 0 1
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K24 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K76 [{"Text", "Child"}]
  SETTABLEKS R9 R22 K55 ["Text"]
  SETTABLEKS R11 R22 K75 ["Child"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  JUMP [+1]
  MOVE R16 R11
  SETTABLEKS R16 R15 K50 ["PresetDropdown"]
  GETUPVAL R17 0
  CALL R17 0 1
  JUMPIF R17 [+79]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K78 [{"Size", "LayoutOrder", "OnClick", "Style", "StyleModifier"}]
  GETTABLEKS R19 R3 K5 ["ResetButtonSize"]
  SETTABLEKS R19 R18 K41 ["Size"]
  LOADN R19 4
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETTABLEKS R19 R0 K79 ["onReset"]
  SETTABLEKS R19 R18 K56 ["OnClick"]
  LOADK R19 K80 ["RoundSubtle"]
  SETTABLEKS R19 R18 K54 ["Style"]
  GETTABLEKS R20 R1 K17 ["SettingsChanged"]
  JUMPIF R20 [+4]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K69 ["Disabled"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K77 ["StyleModifier"]
  DUPTABLE R19 K83 [{"Tooltip", "Icon"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K24 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K84 [{"Text"}]
  GETTABLEKS R23 R1 K1 ["Localization"]
  LOADK R25 K19 ["Templates"]
  LOADK R26 K85 ["ResetTooltip"]
  NAMECALL R23 R23 K21 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K55 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K81 ["Tooltip"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K24 ["createElement"]
  GETUPVAL R21 10
  DUPTABLE R22 K89 [{"Image", "Size", "AnchorPoint", "Position"}]
  GETTABLEKS R23 R3 K90 ["ResetButtonImage"]
  SETTABLEKS R23 R22 K86 ["Image"]
  GETTABLEKS R23 R3 K91 ["ResetButtonImageSize"]
  SETTABLEKS R23 R22 K41 ["Size"]
  GETIMPORT R23 K93 [Vector2.new]
  LOADK R24 K94 [0.5]
  LOADK R25 K94 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K87 ["AnchorPoint"]
  GETIMPORT R23 K96 [UDim2.fromScale]
  LOADK R24 K94 [0.5]
  LOADK R25 K94 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K88 ["Position"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K82 ["Icon"]
  CALL R16 3 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K51 ["ResetButton"]
  GETUPVAL R17 0
  CALL R17 0 1
  JUMPIFNOT R17 [+10]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K97 [{"LayoutOrder"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K52 ["PresetMenu"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_9:
  DUPTABLE R1 K5 [{"AssetImportSession", "CurrentPreset", "SettingsChanged", "SelectedImportItem", "Checked"}]
  GETTABLEKS R2 R0 K6 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R2 R0 K7 ["currentPreset"]
  SETTABLEKS R2 R1 K1 ["CurrentPreset"]
  GETTABLEKS R2 R0 K8 ["settingsChanged"]
  SETTABLEKS R2 R1 K2 ["SettingsChanged"]
  GETTABLEKS R2 R0 K9 ["selectedImportItem"]
  SETTABLEKS R2 R1 K3 ["SelectedImportItem"]
  GETTABLEKS R2 R0 K10 ["importDataChecked"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["Checked"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K4 [{"SetCurrentPreset", "SetSettingsChanged", "UpdateChecked", "UpdatePreviewInstance"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetCurrentPreset"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetSettingsChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["UpdateChecked"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["UpdatePreviewInstance"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Localization"]
  GETTABLEKS R8 R3 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R3 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Button"]
  GETTABLEKS R10 R8 K16 ["SelectInput"]
  GETTABLEKS R11 R8 K17 ["Pane"]
  GETTABLEKS R12 R8 K18 ["Image"]
  GETTABLEKS R13 R8 K19 ["TextInput"]
  GETTABLEKS R14 R8 K20 ["Tooltip"]
  GETTABLEKS R15 R8 K21 ["TextLabel"]
  GETTABLEKS R17 R3 K22 ["Dash"]
  GETTABLEKS R16 R17 K23 ["findIndex"]
  GETTABLEKS R17 R3 K24 ["Util"]
  GETTABLEKS R18 R17 K25 ["StyleModifier"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K26 ["Src"]
  GETTABLEKS R21 R22 K27 ["Components"]
  GETTABLEKS R20 R21 K28 ["PresetsMenu"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K26 ["Src"]
  GETTABLEKS R22 R23 K29 ["Controllers"]
  GETTABLEKS R21 R22 K30 ["PresetController"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K26 ["Src"]
  GETTABLEKS R23 R24 K31 ["Actions"]
  GETTABLEKS R22 R23 K32 ["SetCurrentPreset"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K26 ["Src"]
  GETTABLEKS R24 R25 K31 ["Actions"]
  GETTABLEKS R23 R24 K33 ["SetSettingsChanged"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K26 ["Src"]
  GETTABLEKS R25 R26 K34 ["Thunks"]
  GETTABLEKS R24 R25 K35 ["UpdateChecked"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K26 ["Src"]
  GETTABLEKS R26 R27 K34 ["Thunks"]
  GETTABLEKS R25 R26 K36 ["UpdatePreviewInstance"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K26 ["Src"]
  GETTABLEKS R27 R28 K37 ["Utility"]
  GETTABLEKS R26 R27 K38 ["TemplateUtils"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R29 R0 K26 ["Src"]
  GETTABLEKS R28 R29 K39 ["Flags"]
  GETTABLEKS R27 R28 K40 ["getFFlagAssetImporterCustomPresets"]
  CALL R26 1 1
  GETTABLEKS R27 R1 K41 ["PureComponent"]
  LOADK R29 K42 ["TopBar"]
  NAMECALL R27 R27 K43 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K44 [PROTO_0]
  DUPCLOSURE R29 K45 [PROTO_1]
  DUPCLOSURE R30 K46 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R26
  CAPTURE VAL R25
  SETTABLEKS R30 R27 K47 ["init"]
  DUPCLOSURE R30 K48 [PROTO_6]
  CAPTURE VAL R26
  CAPTURE VAL R25
  SETTABLEKS R30 R27 K49 ["didMount"]
  DUPCLOSURE R30 K50 [PROTO_8]
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R12
  CAPTURE VAL R19
  SETTABLEKS R30 R27 K51 ["render"]
  MOVE R30 R5
  DUPTABLE R31 K52 [{"Localization", "Stylizer", "PresetController"}]
  SETTABLEKS R6 R31 K11 ["Localization"]
  SETTABLEKS R7 R31 K13 ["Stylizer"]
  MOVE R33 R26
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  MOVE R32 R20
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K30 ["PresetController"]
  CALL R30 1 1
  MOVE R31 R27
  CALL R30 1 1
  MOVE R27 R30
  DUPCLOSURE R30 K53 [PROTO_9]
  DUPCLOSURE R31 K54 [PROTO_14]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  GETTABLEKS R32 R2 K55 ["connect"]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  MOVE R33 R27
  CALL R32 1 -1
  RETURN R32 -1
