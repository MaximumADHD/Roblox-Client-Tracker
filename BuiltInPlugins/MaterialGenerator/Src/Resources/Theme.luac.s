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
  DUPTABLE R17 K35 [{"BrowserSize", "BrowserHiddenSize", "PromptSize"}]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  MINUS R22 R13
  CALL R18 4 1
  SETTABLEKS R18 R17 K32 ["BrowserSize"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  MINUS R23 R13
  ADDK R22 R23 K38 [10]
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["BrowserHiddenSize"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R13
  CALL R18 4 1
  SETTABLEKS R18 R17 K34 ["PromptSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K39 ["Prompt"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K39 ["Prompt"]
  DUPTABLE R17 K44 [{"BackgroundColor", "MultiLine", "Padding", "PromptToolbarSize"}]
  GETTABLEKS R18 R5 K45 ["Titlebar"]
  SETTABLEKS R18 R17 K40 ["BackgroundColor"]
  LOADB R18 1
  SETTABLEKS R18 R17 K41 ["MultiLine"]
  LOADN R18 8
  SETTABLEKS R18 R17 K42 ["Padding"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R14
  CALL R18 4 1
  SETTABLEKS R18 R17 K43 ["PromptToolbarSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K46 ["PromptToolbar"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K46 ["PromptToolbar"]
  DUPTABLE R17 K48 [{"GenerateButtonSize"}]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 80
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K47 ["GenerateButtonSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K49 ["Browser"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K49 ["Browser"]
  DUPTABLE R17 K54 [{"CellGroupHeader", "Padding", "StatusIconImageColor", "StatusIconPosition", "StatusIconSize"}]
  DUPTABLE R18 K58 [{"AfterContent", "Collapsible", "Size"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K55 ["AfterContent"]
  LOADB R19 0
  SETTABLEKS R19 R18 K56 ["Collapsible"]
  GETIMPORT R19 K37 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R14
  CALL R19 4 1
  SETTABLEKS R19 R18 K57 ["Size"]
  SETTABLEKS R18 R17 K50 ["CellGroupHeader"]
  LOADN R18 4
  SETTABLEKS R18 R17 K42 ["Padding"]
  GETTABLEKS R18 R4 K59 ["Gray_Light"]
  SETTABLEKS R18 R17 K51 ["StatusIconImageColor"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 6
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["StatusIconPosition"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K53 ["StatusIconSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K60 ["PromptGroupFooter"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K60 ["PromptGroupFooter"]
  DUPTABLE R17 K68 [{"BackgroundColor", "ButtonColor", "ButtonImageSize", "ButtonSize", "ButtonSpacing", "CopyPromptButtonImage", "CornerRadius", "Padding", "Style", "TextColor"}]
  GETTABLEKS R18 R5 K69 ["ForegroundContrast"]
  SETTABLEKS R18 R17 K40 ["BackgroundColor"]
  GETTABLEKS R18 R5 K70 ["TextSecondary"]
  SETTABLEKS R18 R17 K61 ["ButtonColor"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K62 ["ButtonImageSize"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 24
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K63 ["ButtonSize"]
  LOADN R18 4
  SETTABLEKS R18 R17 K64 ["ButtonSpacing"]
  LOADK R18 K71 ["rbxasset://textures/MaterialGenerator/Copy_16x16.png"]
  SETTABLEKS R18 R17 K65 ["CopyPromptButtonImage"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K66 ["CornerRadius"]
  DUPTABLE R18 K76 [{"Left", "Right"}]
  LOADN R19 6
  SETTABLEKS R19 R18 K74 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K75 ["Right"]
  SETTABLEKS R18 R17 K42 ["Padding"]
  LOADK R18 K77 ["RoundBox"]
  SETTABLEKS R18 R17 K8 ["Style"]
  GETTABLEKS R18 R5 K70 ["TextSecondary"]
  SETTABLEKS R18 R17 K67 ["TextColor"]
  SETTABLE R17 R15 R16
  LOADK R18 K78 ["Editor"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K78 ["Editor"]
  DUPTABLE R17 K92 [{"ApplyButtonBackgroundColor", "ApplyButtonIcon", "ApplyButtonSize", "CloseButtonSize", "LabelWidth", "Padding", "PreviewBackgroundColor", "PreviewHeight", "PreviewTileSize", "SettingsPadding", "SettingSpacing", "StudsPerTileSettingSize", "UploadAndApplyButtonIcon", "UploadAndApplyButtonSize"}]
  GETTABLEKS R18 R5 K19 ["Button"]
  SETTABLEKS R18 R17 K79 ["ApplyButtonBackgroundColor"]
  LOADK R18 K93 ["rbxasset://textures/MaterialManager/Apply_to_Selection.png"]
  SETTABLEKS R18 R17 K80 ["ApplyButtonIcon"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K81 ["ApplyButtonSize"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 24
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K82 ["CloseButtonSize"]
  LOADN R18 100
  SETTABLEKS R18 R17 K83 ["LabelWidth"]
  LOADN R18 8
  SETTABLEKS R18 R17 K42 ["Padding"]
  GETTABLEKS R18 R5 K94 ["ScrollBarBackground"]
  SETTABLEKS R18 R17 K84 ["PreviewBackgroundColor"]
  LOADN R18 44
  SETTABLEKS R18 R17 K85 ["PreviewHeight"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 192
  LOADN R20 192
  CALL R18 2 1
  SETTABLEKS R18 R17 K86 ["PreviewTileSize"]
  DUPTABLE R18 K97 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K74 ["Left"]
  LOADN R19 10
  SETTABLEKS R19 R18 K75 ["Right"]
  LOADN R19 10
  SETTABLEKS R19 R18 K95 ["Top"]
  LOADN R19 30
  SETTABLEKS R19 R18 K96 ["Bottom"]
  SETTABLEKS R18 R17 K87 ["SettingsPadding"]
  LOADN R18 8
  SETTABLEKS R18 R17 K88 ["SettingSpacing"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K89 ["StudsPerTileSettingSize"]
  LOADK R18 K98 ["rbxasset://textures/MaterialGenerator/Submit_16x16.png"]
  SETTABLEKS R18 R17 K90 ["UploadAndApplyButtonIcon"]
  GETIMPORT R18 K30 [UDim2.fromOffset]
  LOADN R19 180
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K91 ["UploadAndApplyButtonSize"]
  SETTABLE R17 R15 R16
  LOADK R18 K99 ["Setting"]
  NAMECALL R16 R7 K25 ["add"]
  CALL R16 2 0
  GETTABLEKS R16 R7 K99 ["Setting"]
  DUPTABLE R17 K102 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R18 16
  SETTABLEKS R18 R17 K100 ["HorizontalSpacing"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K57 ["Size"]
  LOADN R18 30
  SETTABLEKS R18 R17 K101 ["ValueLabelWidth"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R7 K17 ["Alert"]
  GETTABLEKS R17 R1 K103 ["join"]
  MOVE R18 R10
  NEWTABLE R19 1 0
  GETTABLEKS R20 R1 K103 ["join"]
  GETTABLEKS R21 R10 K104 ["&Error"]
  DUPTABLE R22 K107 [{"HorizontalPadding", "MaxWidth"}]
  GETIMPORT R23 K73 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K105 ["HorizontalPadding"]
  LOADK R23 K108 [∞]
  SETTABLEKS R23 R22 K106 ["MaxWidth"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K109 ["&AppError"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  DUPTABLE R16 K111 [{"Color", "Image", "Size"}]
  GETTABLEKS R17 R5 K112 ["ErrorText"]
  SETTABLEKS R17 R16 K110 ["Color"]
  LOADK R17 K113 ["rbxasset://textures/DevConsole/Close.png"]
  SETTABLEKS R17 R16 K15 ["Image"]
  GETIMPORT R17 K115 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["Size"]
  GETTABLEKS R17 R7 K19 ["Button"]
  GETTABLEKS R18 R1 K103 ["join"]
  MOVE R19 R11
  NEWTABLE R20 2 0
  NEWTABLE R21 4 0
  SETTABLEKS R8 R21 K116 ["Background"]
  DUPTABLE R22 K119 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R23 K121 [Vector2.new]
  LOADK R24 K122 [0.5]
  LOADK R25 K122 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K117 ["AnchorPoint"]
  LOADK R23 K123 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R23 R22 K15 ["Image"]
  GETTABLEKS R23 R5 K124 ["ButtonText"]
  SETTABLEKS R23 R22 K110 ["Color"]
  GETIMPORT R23 K115 [UDim2.fromScale]
  LOADK R24 K122 [0.5]
  LOADK R25 K122 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K118 ["Position"]
  GETIMPORT R23 K30 [UDim2.fromOffset]
  LOADN R24 18
  LOADN R25 18
  CALL R23 2 1
  SETTABLEKS R23 R22 K57 ["Size"]
  SETTABLEKS R22 R21 K125 ["BackgroundStyle"]
  GETTABLEKS R22 R6 K126 ["Hover"]
  DUPTABLE R23 K127 [{"BackgroundStyle"}]
  DUPTABLE R24 K119 [{"AnchorPoint", "Image", "Color", "Position", "Size"}]
  GETIMPORT R25 K121 [Vector2.new]
  LOADK R26 K122 [0.5]
  LOADK R27 K122 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K117 ["AnchorPoint"]
  LOADK R25 K123 ["rbxasset://textures/ui/TopBar/close.png"]
  SETTABLEKS R25 R24 K15 ["Image"]
  GETTABLEKS R25 R5 K128 ["BrightText"]
  SETTABLEKS R25 R24 K110 ["Color"]
  GETIMPORT R25 K115 [UDim2.fromScale]
  LOADK R26 K122 [0.5]
  LOADK R27 K122 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K118 ["Position"]
  GETIMPORT R25 K30 [UDim2.fromOffset]
  LOADN R26 18
  LOADN R27 18
  CALL R25 2 1
  SETTABLEKS R25 R24 K57 ["Size"]
  SETTABLEKS R24 R23 K125 ["BackgroundStyle"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K129 ["&Close"]
  NEWTABLE R21 4 0
  SETTABLEKS R8 R21 K116 ["Background"]
  SETTABLEKS R16 R21 K125 ["BackgroundStyle"]
  GETTABLEKS R22 R6 K126 ["Hover"]
  DUPTABLE R23 K127 [{"BackgroundStyle"}]
  SETTABLEKS R16 R23 K125 ["BackgroundStyle"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K130 ["&ErrorClose"]
  CALL R18 2 1
  SETTABLE R18 R15 R17
  RETURN R15 1
