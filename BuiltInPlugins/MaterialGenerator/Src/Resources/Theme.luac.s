MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Style"]
  GETTABLEKS R4 R3 K9 ["Colors"]
  GETTABLEKS R5 R3 K10 ["StyleKey"]
  GETTABLEKS R7 R2 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["StyleModifier"]
  GETTABLEKS R7 R3 K13 ["ComponentSymbols"]
  GETTABLEKS R9 R2 K14 ["UI"]
  GETTABLEKS R8 R9 K15 ["Image"]
  GETTABLEKS R9 R2 K16 ["UIData"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R9 K17 ["Alert"]
  GETTABLEKS R11 R12 K18 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R9 K19 ["Button"]
  GETTABLEKS R12 R13 K18 ["style"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K20 ["Src"]
  GETTABLEKS R14 R15 K11 ["Util"]
  GETTABLEKS R13 R14 K21 ["Constants"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K22 ["PROMPT_HEIGHT"]
  GETTABLEKS R14 R12 K23 ["TOOLBAR_HEIGHT"]
  NEWTABLE R15 0 0
  LOADK R18 K24 ["LoadingButton"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K24 ["LoadingButton"]
  DUPTABLE R17 K27 [{"LoadingIndicatorSize"}]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 24
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K26 ["LoadingIndicatorSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K31 ["App"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K31 ["App"]
  DUPTABLE R17 K34 [{"BrowserSize", "PromptSize"}]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  MINUS R22 R13
  CALL R18 4 1
  SETTABLEKS R18 R17 K32 ["BrowserSize"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R13
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["PromptSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K37 ["Prompt"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K37 ["Prompt"]
  DUPTABLE R17 K42 [{"BackgroundColor", "MultiLine", "Padding", "PromptToolbarSize"}]
  GETTABLEKS R18 R5 K43 ["Titlebar"]
  SETTABLEKS R18 R17 K38 ["BackgroundColor"]
  LOADB R18 1
  SETTABLEKS R18 R17 K39 ["MultiLine"]
  LOADN R18 8
  SETTABLEKS R18 R17 K40 ["Padding"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R14
  CALL R18 4 1
  SETTABLEKS R18 R17 K41 ["PromptToolbarSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K44 ["PromptToolbar"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K44 ["PromptToolbar"]
  DUPTABLE R17 K46 [{"GenerateButtonSize"}]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 80
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K45 ["GenerateButtonSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K47 ["Browser"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K47 ["Browser"]
  DUPTABLE R17 K52 [{"CellGroupHeader", "Padding", "StatusIconImageColor", "StatusIconPosition", "StatusIconSize"}]
  DUPTABLE R18 K56 [{"AfterContent", "Collapsible", "Size"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K53 ["AfterContent"]
  LOADB R19 0
  SETTABLEKS R19 R18 K54 ["Collapsible"]
  GETIMPORT R19 K36 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R14
  CALL R19 4 1
  SETTABLEKS R19 R18 K55 ["Size"]
  SETTABLEKS R18 R17 K48 ["CellGroupHeader"]
  LOADN R18 4
  SETTABLEKS R18 R17 K40 ["Padding"]
  GETTABLEKS R18 R4 K57 ["Gray_Light"]
  SETTABLEKS R18 R17 K49 ["StatusIconImageColor"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 6
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["StatusIconPosition"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K51 ["StatusIconSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K58 ["PromptGroupFooter"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K58 ["PromptGroupFooter"]
  DUPTABLE R17 K66 [{"BackgroundColor", "ButtonColor", "ButtonImageSize", "ButtonSize", "ButtonSpacing", "CopyPromptButtonImage", "CornerRadius", "Padding", "Style", "TextColor"}]
  GETTABLEKS R18 R5 K67 ["ForegroundContrast"]
  SETTABLEKS R18 R17 K38 ["BackgroundColor"]
  GETTABLEKS R18 R5 K68 ["TextSecondary"]
  SETTABLEKS R18 R17 K59 ["ButtonColor"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["ButtonImageSize"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 24
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["ButtonSize"]
  LOADN R18 4
  SETTABLEKS R18 R17 K62 ["ButtonSpacing"]
  LOADK R18 K69 ["rbxasset://textures/MaterialGenerator/Copy_16x16.png"]
  SETTABLEKS R18 R17 K63 ["CopyPromptButtonImage"]
  GETIMPORT R18 K71 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K64 ["CornerRadius"]
  DUPTABLE R18 K74 [{"Left", "Right"}]
  LOADN R19 6
  SETTABLEKS R19 R18 K72 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K73 ["Right"]
  SETTABLEKS R18 R17 K40 ["Padding"]
  LOADK R18 K75 ["RoundBox"]
  SETTABLEKS R18 R17 K8 ["Style"]
  GETTABLEKS R18 R5 K68 ["TextSecondary"]
  SETTABLEKS R18 R17 K65 ["TextColor"]
  SETTABLE R17 R15 R16
  LOADK R18 K76 ["Editor"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K76 ["Editor"]
  DUPTABLE R17 K90 [{"ApplyButtonBackgroundColor", "ApplyButtonIcon", "ApplyButtonSize", "CloseButtonSize", "LabelWidth", "Padding", "PreviewBackgroundColor", "PreviewHeight", "PreviewTileSize", "SettingsPadding", "SettingSpacing", "StudsPerTileSettingSize", "UploadAndApplyButtonIcon", "UploadAndApplyButtonSize"}]
  GETTABLEKS R18 R5 K19 ["Button"]
  SETTABLEKS R18 R17 K77 ["ApplyButtonBackgroundColor"]
  LOADK R18 K91 ["rbxasset://textures/MaterialManager/Apply_to_Selection.png"]
  SETTABLEKS R18 R17 K78 ["ApplyButtonIcon"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K79 ["ApplyButtonSize"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 24
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K80 ["CloseButtonSize"]
  LOADN R18 100
  SETTABLEKS R18 R17 K81 ["LabelWidth"]
  LOADN R18 8
  SETTABLEKS R18 R17 K40 ["Padding"]
  GETTABLEKS R18 R5 K92 ["ScrollBarBackground"]
  SETTABLEKS R18 R17 K82 ["PreviewBackgroundColor"]
  LOADN R18 44
  SETTABLEKS R18 R17 K83 ["PreviewHeight"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 192
  LOADN R20 192
  CALL R18 2 1
  SETTABLEKS R18 R17 K84 ["PreviewTileSize"]
  DUPTABLE R18 K95 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K72 ["Left"]
  LOADN R19 10
  SETTABLEKS R19 R18 K73 ["Right"]
  LOADN R19 10
  SETTABLEKS R19 R18 K93 ["Top"]
  LOADN R19 30
  SETTABLEKS R19 R18 K94 ["Bottom"]
  SETTABLEKS R18 R17 K85 ["SettingsPadding"]
  LOADN R18 8
  SETTABLEKS R18 R17 K86 ["SettingSpacing"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K87 ["StudsPerTileSettingSize"]
  LOADK R18 K96 ["rbxasset://textures/MaterialGenerator/Submit_16x16.png"]
  SETTABLEKS R18 R17 K88 ["UploadAndApplyButtonIcon"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 180
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K89 ["UploadAndApplyButtonSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K97 ["Setting"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K97 ["Setting"]
  DUPTABLE R17 K100 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R18 16
  SETTABLEKS R18 R17 K98 ["HorizontalSpacing"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K55 ["Size"]
  LOADN R18 30
  SETTABLEKS R18 R17 K99 ["ValueLabelWidth"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R7 K17 ["Alert"]
  GETTABLEKS R17 R1 K101 ["join"]
  MOVE R18 R10
  NEWTABLE R19 1 0
  GETTABLEKS R20 R1 K101 ["join"]
  GETTABLEKS R21 R10 K102 ["&Error"]
  DUPTABLE R22 K105 [{"HorizontalPadding", "MaxWidth"}]
  GETIMPORT R23 K71 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K103 ["HorizontalPadding"]
  LOADK R23 K106 [∞]
  SETTABLEKS R23 R22 K104 ["MaxWidth"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K107 ["&AppError"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  DUPTABLE R16 K109 [{"Color", "Image", "Size"}]
  GETTABLEKS R17 R5 K110 ["ErrorText"]
  SETTABLEKS R17 R16 K108 ["Color"]
  LOADK R17 K111 ["rbxasset://textures/DevConsole/Close.png"]
  SETTABLEKS R17 R16 K15 ["Image"]
  GETIMPORT R17 K113 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["Size"]
  GETTABLEKS R17 R7 K19 ["Button"]
  GETTABLEKS R18 R1 K101 ["join"]
  MOVE R19 R11
  NEWTABLE R20 2 0
  NEWTABLE R21 4 0
  SETTABLEKS R8 R21 K114 ["Background"]
  DUPTABLE R22 K117 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R23 K119 [Vector2.new]
  LOADK R24 K120 [0.5]
  LOADK R25 K120 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K115 ["AnchorPoint"]
  LOADK R23 K121 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R23 R22 K15 ["Image"]
  GETTABLEKS R23 R5 K122 ["ButtonText"]
  SETTABLEKS R23 R22 K108 ["Color"]
  GETIMPORT R23 K113 [UDim2.fromScale]
  LOADK R24 K120 [0.5]
  LOADK R25 K120 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K116 ["Position"]
  GETIMPORT R23 K30 [UDim2.fromOffset]
  LOADN R24 18
  LOADN R25 18
  CALL R23 2 1
  SETTABLEKS R23 R22 K55 ["Size"]
  SETTABLEKS R22 R21 K123 ["BackgroundStyle"]
  GETTABLEKS R22 R6 K124 ["Hover"]
  DUPTABLE R23 K125 [{"BackgroundStyle"}]
  DUPTABLE R24 K117 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R25 K119 [Vector2.new]
  LOADK R26 K120 [0.5]
  LOADK R27 K120 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K115 ["AnchorPoint"]
  LOADK R25 K121 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R25 R24 K15 ["Image"]
  GETTABLEKS R25 R5 K126 ["BrightText"]
  SETTABLEKS R25 R24 K108 ["Color"]
  GETIMPORT R25 K113 [UDim2.fromScale]
  LOADK R26 K120 [0.5]
  LOADK R27 K120 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K116 ["Position"]
  GETIMPORT R25 K30 [UDim2.fromOffset]
  LOADN R26 18
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K55 ["Size"]
  SETTABLEKS R24 R23 K123 ["BackgroundStyle"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K127 ["&Close"]
  NEWTABLE R21 4 0
  SETTABLEKS R8 R21 K114 ["Background"]
  SETTABLEKS R16 R21 K123 ["BackgroundStyle"]
  GETTABLEKS R22 R6 K124 ["Hover"]
  DUPTABLE R23 K125 [{"BackgroundStyle"}]
  SETTABLEKS R16 R23 K123 ["BackgroundStyle"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K128 ["&ErrorClose"]
  CALL R18 2 1
  SETTABLE R18 R15 R17
  RETURN R15 1
