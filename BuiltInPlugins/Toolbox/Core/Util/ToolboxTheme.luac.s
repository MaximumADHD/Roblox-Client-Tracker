PROTO_0:
  GETIMPORT R0 K2 [Color3.new]
  GETIMPORT R1 K5 [math.random]
  CALL R1 0 1
  GETIMPORT R2 K5 [math.random]
  CALL R2 0 1
  GETIMPORT R3 K5 [math.random]
  CALL R3 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getTheme", "studioStyleGuideColor", "studioStyleGuideModifier"}]
  DUPTABLE R2 K6 [{"GetColor"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K5 ["GetColor"]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["createMockStudioStyleGuideColor"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["studioStyleGuideColor"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["createMockStudioStyleGuideModifier"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["studioStyleGuideModifier"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_recalculateTheme"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K9 [{"_externalThemeGetter", "_isDarkThemeGetter", "_externalThemeChangedSignal", "_studioStyleGuideColor", "_studioStyleGuideModifier", "_externalThemeChangedConnection", "_values", "_UILibraryTheme", "_signal"}]
  GETTABLEKS R3 R0 K11 ["getTheme"]
  ORK R2 R3 K10 []
  SETTABLEKS R2 R1 K0 ["_externalThemeGetter"]
  GETTABLEKS R3 R0 K13 ["isDarkerTheme"]
  ORK R2 R3 K12 [False]
  SETTABLEKS R2 R1 K1 ["_isDarkThemeGetter"]
  GETTABLEKS R3 R0 K14 ["themeChanged"]
  ORK R2 R3 K10 []
  SETTABLEKS R2 R1 K2 ["_externalThemeChangedSignal"]
  GETTABLEKS R2 R0 K15 ["studioStyleGuideColor"]
  JUMPIF R2 [+2]
  GETIMPORT R2 K18 [Enum.StudioStyleGuideColor]
  SETTABLEKS R2 R1 K3 ["_studioStyleGuideColor"]
  GETTABLEKS R2 R0 K19 ["studioStyleGuideModifier"]
  JUMPIF R2 [+2]
  GETIMPORT R2 K21 [Enum.StudioStyleGuideModifier]
  SETTABLEKS R2 R1 K4 ["_studioStyleGuideModifier"]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["_externalThemeChangedConnection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["_values"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K7 ["_UILibraryTheme"]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K8 ["_signal"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["_values"]
  LOADK R4 K22 ["theme"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K23 ["values"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K25 [setmetatable]
  CALL R2 2 0
  GETTABLEKS R2 R1 K2 ["_externalThemeChangedSignal"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R1 K2 ["_externalThemeChangedSignal"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K26 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["_externalThemeChangedConnection"]
  NAMECALL R2 R1 K27 ["_recalculateTheme"]
  CALL R2 1 0
  RETURN R1 1

PROTO_4:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_signal"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K1 ["subscribe"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_externalThemeChangedConnection"]
  RETURN R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_isDarkThemeGetter"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K3 ["function"] [+7]
  MOVE R2 R1
  NAMECALL R3 R0 K4 ["_getExternalTheme"]
  CALL R3 1 -1
  CALL R2 -1 -1
  RETURN R2 -1
  JUMPIFNOT R1 [+2]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_9:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["GetColor"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_10:
  NAMECALL R1 R0 K0 ["_getExternalTheme"]
  CALL R1 1 1
  NAMECALL R2 R0 K1 ["_isDarkerTheme"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["_studioStyleGuideColor"]
  GETTABLEKS R4 R0 K3 ["_studioStyleGuideModifier"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  DUPTABLE R8 K14 [{"isDarkerTheme", "linkButton", "toolbox", "loading", "searchBar", "asset", "infoBanner", "tooltip", "sortComponent", "radioButton"}]
  SETTABLEKS R2 R8 K4 ["isDarkerTheme"]
  DUPTABLE R9 K16 [{"textColor"}]
  GETIMPORT R10 K19 [Color3.fromRGB]
  LOADN R11 0
  LOADN R12 162
  LOADN R13 255
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["textColor"]
  SETTABLEKS R9 R8 K5 ["linkButton"]
  DUPTABLE R9 K21 [{"backgroundColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K22 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  SETTABLEKS R9 R8 K6 ["toolbox"]
  DUPTABLE R9 K26 [{"text", "backgroundBar", "bar"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["text"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K28 ["Midlight"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["backgroundBar"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["CurrentMarker"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["bar"]
  SETTABLEKS R9 R8 K7 ["loading"]
  DUPTABLE R9 K38 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K39 ["Dropdown"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K40 ["InputFieldBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K30 ["liveBackgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K41 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K31 ["borderColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K29 ["CurrentMarker"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K32 ["borderHoveredColor"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K42 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K33 ["borderSelectedColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["textColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K43 ["DimmedText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K34 ["placeholderTextColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K41 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K35 ["divideLineColor"]
  DUPTABLE R10 K46 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K19 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K44 ["imageColor"]
  GETIMPORT R11 K19 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K45 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K36 ["searchButton"]
  DUPTABLE R10 K46 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K19 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K44 ["imageColor"]
  GETIMPORT R11 K19 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K45 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K37 ["clearButton"]
  SETTABLEKS R9 R8 K8 ["searchBar"]
  DUPTABLE R9 K49 [{"icon", "progressBarColor"}]
  DUPTABLE R10 K50 [{"borderColor"}]
  MOVE R11 R5
  GETTABLEKS R12 R3 K51 ["Item"]
  GETTABLEKS R13 R4 K52 ["Hover"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["borderColor"]
  SETTABLEKS R10 R9 K47 ["icon"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K42 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K48 ["progressBarColor"]
  SETTABLEKS R9 R8 K9 ["asset"]
  DUPTABLE R9 K53 [{"backgroundColor", "textColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K54 ["Titlebar"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K55 ["SubText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["textColor"]
  SETTABLEKS R9 R8 K10 ["infoBanner"]
  DUPTABLE R9 K56 [{"backgroundColor", "borderColor", "textColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K22 ["MainBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K41 ["Border"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K31 ["borderColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["textColor"]
  SETTABLEKS R9 R8 K11 ["tooltip"]
  DUPTABLE R9 K58 [{"labelTextColor"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K57 ["labelTextColor"]
  SETTABLEKS R9 R8 K12 ["sortComponent"]
  DUPTABLE R9 K60 [{"textColor", "background"}]
  MOVE R10 R5
  GETTABLEKS R11 R3 K27 ["MainText"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["textColor"]
  MOVE R10 R5
  GETTABLEKS R11 R3 K40 ["InputFieldBackground"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K59 ["background"]
  SETTABLEKS R9 R8 K13 ["radioButton"]
  NAMECALL R6 R0 K61 ["_update"]
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
  GETTABLEKS R9 R3 K13 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R3 K14 ["Test"]
  GETTABLEKS R10 R11 K15 ["TestHelpers"]
  CALL R9 1 1
  NEWTABLE R10 16 0
  SETTABLEKS R10 R10 K16 ["__index"]
  DUPCLOSURE R11 K17 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K18 ["createDummyThemeManager"]
  DUPCLOSURE R11 K19 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K20 ["new"]
  DUPCLOSURE R11 K21 [PROTO_4]
  SETTABLEKS R11 R10 K22 ["subscribe"]
  DUPCLOSURE R11 K23 [PROTO_5]
  SETTABLEKS R11 R10 K24 ["destroy"]
  DUPCLOSURE R11 K25 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K26 ["_update"]
  DUPCLOSURE R11 K27 [PROTO_7]
  SETTABLEKS R11 R10 K28 ["_getExternalTheme"]
  DUPCLOSURE R11 K29 [PROTO_8]
  SETTABLEKS R11 R10 K30 ["_isDarkerTheme"]
  DUPCLOSURE R11 K31 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K32 ["_recalculateTheme"]
  RETURN R10 1
