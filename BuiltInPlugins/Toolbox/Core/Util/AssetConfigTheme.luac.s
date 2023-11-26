PROTO_0:
  GETIMPORT R0 K2 [Color3.fromRGB]
  LOADN R1 0
  LOADN R2 0
  LOADN R3 0
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  DUPTABLE R0 K1 [{"GetColor"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["GetColor"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getTheme", "studioStyleGuideColor", "studioStyleGuideModifier"}]
  DUPCLOSURE R2 K5 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["createMockStudioStyleGuideColor"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["studioStyleGuideColor"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["createMockStudioStyleGuideModifier"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["studioStyleGuideModifier"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_recalculateTheme"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K8 [{"_externalThemeGetter", "_externalThemeChangedSignal", "_externalThemeChangedConnection", "_studioStyleGuideColor", "_studioStyleGuideModifier", "_values", "_UILibraryTheme", "_signal"}]
  GETTABLEKS R3 R0 K10 ["getTheme"]
  ORK R2 R3 K9 []
  SETTABLEKS R2 R1 K0 ["_externalThemeGetter"]
  GETTABLEKS R3 R0 K11 ["themeChanged"]
  ORK R2 R3 K9 []
  SETTABLEKS R2 R1 K1 ["_externalThemeChangedSignal"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["_externalThemeChangedConnection"]
  GETTABLEKS R2 R0 K12 ["studioStyleGuideColor"]
  JUMPIF R2 [+2]
  GETIMPORT R2 K15 [Enum.StudioStyleGuideColor]
  SETTABLEKS R2 R1 K3 ["_studioStyleGuideColor"]
  GETTABLEKS R2 R0 K16 ["studioStyleGuideModifier"]
  JUMPIF R2 [+2]
  GETIMPORT R2 K18 [Enum.StudioStyleGuideModifier]
  SETTABLEKS R2 R1 K4 ["_studioStyleGuideModifier"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["_values"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["_UILibraryTheme"]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K7 ["_signal"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K5 ["_values"]
  LOADK R4 K19 ["theme"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K20 ["values"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K22 [setmetatable]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["_externalThemeChangedSignal"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K1 ["_externalThemeChangedSignal"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K23 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["_externalThemeChangedConnection"]
  NAMECALL R2 R1 K24 ["_recalculateTheme"]
  CALL R2 1 0
  RETURN R1 1

PROTO_5:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_signal"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K1 ["subscribe"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["_values"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_values"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K2 ["_values"]
  LOADK R4 K3 ["theme"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["values"]
  GETTABLEKS R2 R0 K5 ["_signal"]
  GETTABLEKS R4 R0 K4 ["values"]
  GETTABLEKS R5 R0 K6 ["_UILibraryTheme"]
  NAMECALL R2 R2 K7 ["fire"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_externalThemeGetter"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K3 ["function"] [+4]
  MOVE R2 R1
  CALL R2 0 -1
  RETURN R2 -1
  RETURN R1 1

PROTO_9:
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["_externalThemeGetter"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K0 ["_externalThemeGetter"]
  CALL R3 0 1
  GETTABLEKS R2 R3 K1 ["Name"]
  JUMPIFEQKS R2 K2 ["Dark"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_10:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["GetColor"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_11:
  NAMECALL R1 R0 K0 ["_getExternalTheme"]
  CALL R1 1 1
  NAMECALL R2 R0 K1 ["_isDarkerTheme"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["_studioStyleGuideColor"]
  GETTABLEKS R4 R0 K3 ["_studioStyleGuideModifier"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  DUPTABLE R8 K19 [{"isDarkerTheme", "assetConfig", "publishAsset", "divider", "dropdownMenu", "textField", "footer", "scrollingFrame", "messageBox", "cancelButton", "defaultButton", "loading", "uploadResult", "inputFields", "tags"}]
  SETTABLEKS R2 R8 K4 ["isDarkerTheme"]
  DUPTABLE R9 K26 [{"backgroundColor", "textColor", "labelTextColor", "separatorColor", "errorColor", "packagePermissions"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["textColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["labelTextColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K30 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["separatorColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K31 ["ErrorText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["errorColor"]
  DUPTABLE R10 K35 [{"backgroundColor", "subTextColor", "collaboratorItem", "searchBar"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K27 ["MainBackground"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["backgroundColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K36 ["SubText"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["subTextColor"]
  DUPTABLE R11 K39 [{"collapseStateArrow", "deleteButton"}]
  JUMPIFNOT R2 [+7]
  GETIMPORT R12 K42 [Color3.fromRGB]
  LOADN R13 204
  LOADN R14 204
  LOADN R15 204
  CALL R12 3 1
  JUMPIF R12 [+6]
  GETIMPORT R12 K42 [Color3.fromRGB]
  LOADN R13 25
  LOADN R14 25
  LOADN R15 25
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["collapseStateArrow"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R12 K42 [Color3.fromRGB]
  LOADN R13 136
  LOADN R14 136
  LOADN R15 136
  CALL R12 3 1
  JUMPIF R12 [+6]
  GETIMPORT R12 K42 [Color3.fromRGB]
  LOADN R13 184
  LOADN R14 184
  LOADN R15 184
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["deleteButton"]
  SETTABLEKS R11 R10 K33 ["collaboratorItem"]
  DUPTABLE R11 K50 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "searchIcon", "clearButton", "dropDown"}]
  MOVE R12 R5
  GETTABLEKS R13 R3 K51 ["InputFieldBorder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K43 ["border"]
  JUMPIFNOT R2 [+5]
  MOVE R12 R5
  GETTABLEKS R13 R3 K52 ["MainButton"]
  CALL R12 1 1
  JUMPIF R12 [+4]
  MOVE R12 R5
  GETTABLEKS R13 R3 K53 ["CurrentMarker"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K44 ["borderHover"]
  JUMPIFNOT R2 [+5]
  MOVE R12 R5
  GETTABLEKS R13 R3 K52 ["MainButton"]
  CALL R12 1 1
  JUMPIF R12 [+4]
  MOVE R12 R5
  GETTABLEKS R13 R3 K53 ["CurrentMarker"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K45 ["borderSelected"]
  MOVE R12 R5
  GETTABLEKS R13 R3 K29 ["DimmedText"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K46 ["placeholderText"]
  MOVE R12 R5
  GETTABLEKS R13 R3 K54 ["InputFieldBackground"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K20 ["backgroundColor"]
  MOVE R12 R5
  GETTABLEKS R13 R3 K36 ["SubText"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K47 ["searchIcon"]
  DUPTABLE R12 K56 [{"image"}]
  MOVE R13 R5
  GETTABLEKS R14 R3 K36 ["SubText"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K55 ["image"]
  SETTABLEKS R12 R11 K48 ["clearButton"]
  DUPTABLE R12 K61 [{"backgroundColor", "itemText", "headerText", "hovered", "selected"}]
  MOVE R13 R5
  GETTABLEKS R14 R3 K54 ["InputFieldBackground"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K20 ["backgroundColor"]
  MOVE R13 R5
  GETTABLEKS R14 R3 K28 ["MainText"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K57 ["itemText"]
  MOVE R13 R5
  GETTABLEKS R14 R3 K36 ["SubText"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K58 ["headerText"]
  DUPTABLE R13 K62 [{"backgroundColor", "itemText"}]
  MOVE R14 R5
  GETTABLEKS R15 R3 K63 ["Item"]
  GETTABLEKS R16 R4 K64 ["Hover"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["backgroundColor"]
  MOVE R14 R5
  GETTABLEKS R15 R3 K65 ["ButtonText"]
  GETTABLEKS R16 R4 K64 ["Hover"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K57 ["itemText"]
  SETTABLEKS R13 R12 K59 ["hovered"]
  DUPTABLE R13 K66 [{"backgroundColor"}]
  MOVE R14 R5
  GETTABLEKS R15 R3 K67 ["Button"]
  GETTABLEKS R16 R4 K68 ["Selected"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["backgroundColor"]
  SETTABLEKS R13 R12 K60 ["selected"]
  SETTABLEKS R12 R11 K49 ["dropDown"]
  SETTABLEKS R11 R10 K34 ["searchBar"]
  SETTABLEKS R10 R9 K25 ["packagePermissions"]
  SETTABLEKS R9 R8 K5 ["assetConfig"]
  DUPTABLE R9 K71 [{"backgroundColor", "titleTextColor", "textColor", "tipsTextColor"}]
  JUMPIFNOT R2 [+5]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  JUMPIF R10 [+6]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 46
  LOADN R12 46
  LOADN R13 46
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K36 ["SubText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K69 ["titleTextColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["textColor"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 102
  LOADN R12 102
  LOADN R13 102
  CALL R10 3 1
  JUMPIF R10 [+3]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K72 ["GRAY_3"]
  SETTABLEKS R10 R9 K70 ["tipsTextColor"]
  SETTABLEKS R9 R8 K6 ["publishAsset"]
  DUPTABLE R9 K74 [{"horizontalLineColor"}]
  JUMPIFNOT R2 [+7]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 34
  LOADN R12 34
  LOADN R13 34
  CALL R10 3 1
  JUMPIF R10 [+6]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 227
  LOADN R12 227
  LOADN R13 227
  CALL R10 3 1
  SETTABLEKS R10 R9 K73 ["horizontalLineColor"]
  SETTABLEKS R9 R8 K7 ["divider"]
  DUPTABLE R9 K78 [{"currentSelection", "item", "dropdownFrame"}]
  DUPTABLE R10 K85 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor", "iconColor", "iconSelectedColor"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K86 ["Dropdown"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["backgroundColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K53 ["CurrentMarker"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K79 ["backgroundSelectedColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K30 ["Border"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K80 ["borderColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K53 ["CurrentMarker"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K81 ["borderSelectedColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K28 ["MainText"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["textColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K28 ["MainText"]
  GETTABLEKS R13 R4 K68 ["Selected"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K82 ["textSelectedColor"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R11 K42 [Color3.fromRGB]
  LOADN R12 242
  LOADN R13 242
  LOADN R14 242
  CALL R11 3 1
  JUMPIF R11 [+6]
  GETIMPORT R11 K42 [Color3.fromRGB]
  LOADN R12 25
  LOADN R13 25
  LOADN R14 25
  CALL R11 3 1
  SETTABLEKS R11 R10 K83 ["iconColor"]
  GETIMPORT R11 K42 [Color3.fromRGB]
  LOADN R12 255
  LOADN R13 255
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K84 ["iconSelectedColor"]
  SETTABLEKS R10 R9 K75 ["currentSelection"]
  DUPTABLE R10 K88 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K63 ["Item"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["backgroundColor"]
  JUMPIFNOT R2 [+7]
  MOVE R11 R5
  GETTABLEKS R12 R3 K63 ["Item"]
  GETTABLEKS R13 R4 K68 ["Selected"]
  CALL R11 2 1
  JUMPIF R11 [+4]
  MOVE R11 R5
  GETTABLEKS R12 R3 K89 ["Tab"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K79 ["backgroundSelectedColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K53 ["CurrentMarker"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K87 ["selectedBarColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K28 ["MainText"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["textColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K29 ["DimmedText"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["labelTextColor"]
  SETTABLEKS R10 R9 K76 ["item"]
  DUPTABLE R10 K90 [{"borderColor"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K30 ["Border"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K80 ["borderColor"]
  SETTABLEKS R10 R9 K77 ["dropdownFrame"]
  SETTABLEKS R9 R8 K8 ["dropdownMenu"]
  DUPTABLE R9 K92 [{"backgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K30 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K80 ["borderColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K53 ["CurrentMarker"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K91 ["borderHoveredColor"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K93 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K81 ["borderSelectedColor"]
  SETTABLEKS R9 R8 K9 ["textField"]
  DUPTABLE R9 K94 [{"backgroundColor", "borderColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K30 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K80 ["borderColor"]
  SETTABLEKS R9 R8 K10 ["footer"]
  DUPTABLE R9 K97 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
  JUMPIFNOT R2 [+7]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 41
  LOADN R12 41
  LOADN R13 41
  CALL R10 3 1
  JUMPIF R10 [+6]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 245
  LOADN R12 245
  LOADN R13 245
  CALL R10 3 1
  SETTABLEKS R10 R9 K95 ["scrollbarBackgroundColor"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 85
  LOADN R12 85
  LOADN R13 85
  CALL R10 3 1
  JUMPIF R10 [+6]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 245
  LOADN R12 245
  LOADN R13 245
  CALL R10 3 1
  SETTABLEKS R10 R9 K96 ["scrollbarImageColor"]
  SETTABLEKS R9 R8 K11 ["scrollingFrame"]
  DUPTABLE R9 K100 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["textColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K36 ["SubText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K98 ["informativeTextColor"]
  DUPTABLE R10 K101 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K28 ["MainText"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["textColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K28 ["MainText"]
  GETTABLEKS R13 R4 K68 ["Selected"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K82 ["textSelectedColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K27 ["MainBackground"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["backgroundColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K53 ["CurrentMarker"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K79 ["backgroundSelectedColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K30 ["Border"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K80 ["borderColor"]
  MOVE R11 R5
  GETTABLEKS R12 R3 K53 ["CurrentMarker"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K81 ["borderSelectedColor"]
  SETTABLEKS R10 R9 K99 ["button"]
  SETTABLEKS R9 R8 K12 ["messageBox"]
  DUPTABLE R9 K108 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K67 ["Button"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K102 ["ButtonColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K67 ["Button"]
  GETTABLEKS R12 R4 K64 ["Hover"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K103 ["ButtonColor_Hover"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K67 ["Button"]
  GETTABLEKS R12 R4 K109 ["Disabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K104 ["ButtonColor_Disabled"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K105 ["TextColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K106 ["TextColor_Disabled"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K30 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K107 ["BorderColor"]
  SETTABLEKS R9 R8 K13 ["cancelButton"]
  DUPTABLE R9 K108 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  JUMPIFNOT R2 [+5]
  MOVE R10 R5
  GETTABLEKS R11 R3 K52 ["MainButton"]
  CALL R10 1 1
  JUMPIF R10 [+4]
  MOVE R10 R5
  GETTABLEKS R11 R3 K53 ["CurrentMarker"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K102 ["ButtonColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K110 ["LinkText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K103 ["ButtonColor_Hover"]
  JUMPIFNOT R2 [+7]
  MOVE R10 R5
  GETTABLEKS R11 R3 K67 ["Button"]
  GETTABLEKS R12 R4 K109 ["Disabled"]
  CALL R10 2 1
  JUMPIF R10 [+3]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K111 ["BLUE_DISABLED"]
  SETTABLEKS R10 R9 K104 ["ButtonColor_Disabled"]
  GETIMPORT R10 K113 [Color3.new]
  LOADN R11 1
  LOADN R12 1
  LOADN R13 1
  CALL R10 3 1
  SETTABLEKS R10 R9 K105 ["TextColor"]
  JUMPIFNOT R2 [+7]
  MOVE R10 R5
  GETTABLEKS R11 R3 K65 ["ButtonText"]
  GETTABLEKS R12 R4 K109 ["Disabled"]
  CALL R10 2 1
  JUMPIF R10 [+6]
  GETIMPORT R10 K113 [Color3.new]
  LOADN R11 1
  LOADN R12 1
  LOADN R13 1
  CALL R10 3 1
  SETTABLEKS R10 R9 K106 ["TextColor_Disabled"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K114 ["Light"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K107 ["BorderColor"]
  SETTABLEKS R9 R8 K14 ["defaultButton"]
  DUPTABLE R9 K118 [{"text", "backgroundBar", "bar"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K115 ["text"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K119 ["Midlight"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K116 ["backgroundBar"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K53 ["CurrentMarker"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K117 ["bar"]
  SETTABLEKS R9 R8 K15 ["loading"]
  DUPTABLE R9 K126 [{"greenText", "redText", "text", "buttonColor", "idText", "background", "link"}]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 2
  LOADN R12 183
  LOADN R13 87
  CALL R10 3 1
  SETTABLEKS R10 R9 K120 ["greenText"]
  GETIMPORT R10 K42 [Color3.fromRGB]
  LOADN R11 255
  LOADN R12 68
  LOADN R13 68
  CALL R10 3 1
  SETTABLEKS R10 R9 K121 ["redText"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K115 ["text"]
  JUMPIFNOT R2 [+5]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  JUMPIF R10 [+4]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K122 ["buttonColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K123 ["idText"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K127 ["TableItem"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K124 ["background"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K110 ["LinkText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K125 ["link"]
  SETTABLEKS R9 R8 K16 ["uploadResult"]
  DUPTABLE R9 K133 [{"backgroundColor", "backgroundColorDisabled", "borderColorActive", "borderColorDisabled", "borderColor", "toolTip", "error"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K54 ["InputFieldBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K54 ["InputFieldBackground"]
  GETTABLEKS R12 R4 K109 ["Disabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K128 ["backgroundColorDisabled"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K51 ["InputFieldBorder"]
  GETTABLEKS R12 R4 K68 ["Selected"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K129 ["borderColorActive"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K51 ["InputFieldBorder"]
  GETTABLEKS R12 R4 K109 ["Disabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K130 ["borderColorDisabled"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K51 ["InputFieldBorder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K80 ["borderColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K131 ["toolTip"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K31 ["ErrorText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K132 ["error"]
  SETTABLEKS R9 R8 K17 ["inputFields"]
  DUPTABLE R9 K134 [{"textColor", "backgroundColor", "borderColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["textColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K51 ["InputFieldBorder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K80 ["borderColor"]
  SETTABLEKS R9 R8 K18 ["tags"]
  NAMECALL R6 R0 K135 ["_update"]
  CALL R6 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K7 ["Core"]
  GETTABLEKS R3 R4 K8 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K9 ["Colors"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K10 ["createSignal"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K11 ["wrapStrictTable"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K12 ["Images"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R3 K13 ["Test"]
  GETTABLEKS R9 R10 K14 ["TestHelpers"]
  CALL R8 1 1
  NEWTABLE R9 16 0
  SETTABLEKS R9 R9 K15 ["__index"]
  DUPCLOSURE R10 K16 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K17 ["createDummyThemeManager"]
  DUPCLOSURE R10 K18 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K19 ["new"]
  DUPCLOSURE R10 K20 [PROTO_5]
  SETTABLEKS R10 R9 K21 ["subscribe"]
  DUPCLOSURE R10 K22 [PROTO_6]
  SETTABLEKS R10 R9 K23 ["destroy"]
  DUPCLOSURE R10 K24 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K25 ["_update"]
  DUPCLOSURE R10 K26 [PROTO_8]
  SETTABLEKS R10 R9 K27 ["_getExternalTheme"]
  DUPCLOSURE R10 K28 [PROTO_9]
  SETTABLEKS R10 R9 K29 ["_isDarkerTheme"]
  DUPCLOSURE R10 K30 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K31 ["_recalculateTheme"]
  RETURN R9 1
