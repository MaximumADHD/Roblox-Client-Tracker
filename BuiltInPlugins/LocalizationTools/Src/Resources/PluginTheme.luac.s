PROTO_0:
  LOADK R0 K0 ["Dark"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["MainView"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K2 ["MessageFrame"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K3 ["CloudTableSection"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K4 ["ProgressSpinner"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K5 ["LabeledTextButton"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K6 ["Collapsible"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K7 ["EmbeddedTableSection"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K8 ["UploadDialogContent"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K9 ["ErrorDialog"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K10 ["WarningDialog"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K11 ["LabeledImageButton"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K12 ["ImageLocalizationSection"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  NEWTABLE R1 16 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["Button"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  GETUPVAL R4 2
  LOADK R5 K13 ["Button"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K16 ["Background"]
  DUPTABLE R6 K20 [{"Color", "BorderColor", "BorderSize"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K13 ["Button"]
  SETTABLEKS R7 R6 K17 ["Color"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K21 ["Border"]
  SETTABLEKS R7 R6 K18 ["BorderColor"]
  LOADN R7 1
  SETTABLEKS R7 R6 K19 ["BorderSize"]
  SETTABLEKS R6 R5 K22 ["BackgroundStyle"]
  NEWTABLE R6 2 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K23 ["BrightText"]
  SETTABLEKS R7 R6 K24 ["TextColor"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["Hover"]
  DUPTABLE R8 K26 [{"BackgroundStyle"}]
  DUPTABLE R9 K27 [{"Color"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K28 ["ButtonHover"]
  SETTABLEKS R10 R9 K17 ["Color"]
  SETTABLEKS R9 R8 K22 ["BackgroundStyle"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K29 ["&TextButton"]
  DUPTABLE R6 K30 [{"TextColor"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K31 ["DimmedText"]
  SETTABLEKS R7 R6 K24 ["TextColor"]
  SETTABLEKS R6 R5 K32 ["&DisabledTextButton"]
  NEWTABLE R6 4 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K33 ["DialogMainButtonText"]
  SETTABLEKS R7 R6 K24 ["TextColor"]
  DUPTABLE R7 K20 [{"Color", "BorderColor", "BorderSize"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K34 ["DialogMainButton"]
  SETTABLEKS R8 R7 K17 ["Color"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["Border"]
  SETTABLEKS R8 R7 K18 ["BorderColor"]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["BorderSize"]
  SETTABLEKS R7 R6 K22 ["BackgroundStyle"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["Hover"]
  DUPTABLE R8 K26 [{"BackgroundStyle"}]
  DUPTABLE R9 K27 [{"Color"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K35 ["DialogMainButtonHover"]
  SETTABLEKS R10 R9 K17 ["Color"]
  SETTABLEKS R9 R8 K22 ["BackgroundStyle"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K36 ["&PrimeTextButton"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K37 ["LinkText"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  GETUPVAL R4 2
  LOADK R5 K37 ["LinkText"]
  CALL R4 1 1
  DUPTABLE R5 K41 [{"EnableHover", "Font", "TextColor", "TextSize"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K38 ["EnableHover"]
  GETIMPORT R6 K44 [Enum.Font.SourceSans]
  SETTABLEKS R6 R5 K39 ["Font"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K37 ["LinkText"]
  SETTABLEKS R6 R5 K24 ["TextColor"]
  LOADN R6 16
  SETTABLEKS R6 R5 K40 ["TextSize"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K45 ["TitledFrame"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  GETUPVAL R4 2
  LOADK R5 K45 ["TitledFrame"]
  CALL R4 1 1
  DUPTABLE R5 K46 [{"TextColor", "TextSize"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K23 ["BrightText"]
  SETTABLEKS R6 R5 K24 ["TextColor"]
  LOADN R6 16
  SETTABLEKS R6 R5 K40 ["TextSize"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["MainView"]
  DUPTABLE R3 K57 [{"EmptyFrameHeight", "MainBackground", "Padding", "PaddingRight", "PaddingTop", "ScrollBarBorderColor", "ScrollBarColor", "ScrollingFrameackground", "ScrollingFrameCanvasHeight", "ScrollingFrameHeight"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K47 ["EmptyFrameHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K48 ["MainBackground"]
  SETTABLEKS R4 R3 K48 ["MainBackground"]
  LOADN R4 5
  SETTABLEKS R4 R3 K49 ["Padding"]
  LOADN R4 20
  SETTABLEKS R4 R3 K50 ["PaddingRight"]
  LOADN R4 10
  SETTABLEKS R4 R3 K51 ["PaddingTop"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K52 ["ScrollBarBorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K58 ["ScrollBar"]
  SETTABLEKS R4 R3 K53 ["ScrollBarColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K59 ["ScrollBarBackground"]
  SETTABLEKS R4 R3 K54 ["ScrollingFrameackground"]
  LOADN R4 194
  SETTABLEKS R4 R3 K55 ["ScrollingFrameCanvasHeight"]
  LOADN R4 236
  SETTABLEKS R4 R3 K56 ["ScrollingFrameHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["MessageFrame"]
  DUPTABLE R3 K62 [{"BackgroundColor", "BorderColor", "Height", "Padding", "TextColor"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K63 ["RibbonTab"]
  SETTABLEKS R4 R3 K60 ["BackgroundColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K18 ["BorderColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K61 ["Height"]
  LOADN R4 5
  SETTABLEKS R4 R3 K49 ["Padding"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CloudTableSection"]
  DUPTABLE R3 K71 [{"LeftIndent", "MessageFrameBackground", "MessageFrameBorder", "PaddingTop", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LinkTextHeight", "PublishMessageHeight"}]
  LOADN R4 15
  SETTABLEKS R4 R3 K64 ["LeftIndent"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K48 ["MainBackground"]
  SETTABLEKS R4 R3 K65 ["MessageFrameBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K66 ["MessageFrameBorder"]
  LOADN R4 5
  SETTABLEKS R4 R3 K51 ["PaddingTop"]
  LOADN R4 20
  SETTABLEKS R4 R3 K67 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K68 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  LOADN R4 50
  SETTABLEKS R4 R3 K69 ["LinkTextHeight"]
  LOADN R4 150
  SETTABLEKS R4 R3 K70 ["PublishMessageHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProgressSpinner"]
  DUPTABLE R3 K75 [{"ImageRectSize", "ProgressSpinnerImageUrl", "Size"}]
  LOADN R4 80
  SETTABLEKS R4 R3 K72 ["ImageRectSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K76 ["ProgressSpinnerImage"]
  SETTABLEKS R4 R3 K73 ["ProgressSpinnerImageUrl"]
  LOADN R4 81
  SETTABLEKS R4 R3 K74 ["Size"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["LabeledTextButton"]
  DUPTABLE R3 K81 [{"ButtonWidth", "ButtonHeight", "Height", "LabelWidth", "TextColor", "DisabledTextColor"}]
  LOADN R4 100
  SETTABLEKS R4 R3 K77 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K78 ["ButtonHeight"]
  LOADN R4 50
  SETTABLEKS R4 R3 K61 ["Height"]
  LOADN R4 250
  SETTABLEKS R4 R3 K79 ["LabelWidth"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K80 ["DisabledTextColor"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Collapsible"]
  DUPTABLE R3 K87 [{"DisabledTextColor", "IconSize", "IconColor", "IconImageOpen", "IconImageClosed", "TextColor", "TopBarHeight"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K80 ["DisabledTextColor"]
  LOADN R4 16
  SETTABLEKS R4 R3 K82 ["IconSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K83 ["IconColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K88 ["ArrowExpanded"]
  SETTABLEKS R4 R3 K84 ["IconImageOpen"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K89 ["ArrowCollapsed"]
  SETTABLEKS R4 R3 K85 ["IconImageClosed"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  LOADN R4 24
  SETTABLEKS R4 R3 K86 ["TopBarHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["EmbeddedTableSection"]
  DUPTABLE R3 K93 [{"ExportButtonImage", "ImportButtonImage", "LeftIndent", "PaddingTop", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "TextCaptureButtonImage"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K94 ["Export"]
  SETTABLEKS R4 R3 K90 ["ExportButtonImage"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K95 ["Import"]
  SETTABLEKS R4 R3 K91 ["ImportButtonImage"]
  LOADN R4 15
  SETTABLEKS R4 R3 K64 ["LeftIndent"]
  LOADN R4 5
  SETTABLEKS R4 R3 K51 ["PaddingTop"]
  LOADN R4 20
  SETTABLEKS R4 R3 K67 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K68 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  DUPTABLE R4 K98 [{"On", "Off"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K99 ["TextCaptureOn"]
  SETTABLEKS R5 R4 K96 ["On"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K100 ["TextCapture"]
  SETTABLEKS R5 R4 K97 ["Off"]
  SETTABLEKS R4 R3 K92 ["TextCaptureButtonImage"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["LabeledImageButton"]
  DUPTABLE R3 K106 [{"BackgroundColor", "BackgroundColorHovered", "Height", "ImageButtonSize", "ImageLabelSize", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K13 ["Button"]
  SETTABLEKS R4 R3 K60 ["BackgroundColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K28 ["ButtonHover"]
  SETTABLEKS R4 R3 K101 ["BackgroundColorHovered"]
  LOADN R4 50
  SETTABLEKS R4 R3 K61 ["Height"]
  LOADN R4 50
  SETTABLEKS R4 R3 K102 ["ImageButtonSize"]
  LOADN R4 30
  SETTABLEKS R4 R3 K103 ["ImageLabelSize"]
  LOADN R4 4
  SETTABLEKS R4 R3 K79 ["LabelWidth"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K80 ["DisabledTextColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K104 ["TextLabelSize"]
  LOADN R4 6
  SETTABLEKS R4 R3 K105 ["TextLabelTextSize"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["UploadDialogContent"]
  DUPTABLE R3 K116 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "PatchInfoFrameHeight", "TableContentsFrameHeight", "TableContentPaddingLeft", "TableContentPaddingTop", "ThisPatchWIllFrameHeight", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K23 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K31 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K107 ["ErrorText"]
  SETTABLEKS R4 R3 K107 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K108 ["WarningText"]
  SETTABLEKS R4 R3 K108 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K49 ["Padding"]
  LOADN R4 34
  SETTABLEKS R4 R3 K109 ["PatchInfoFrameHeight"]
  LOADN R4 90
  SETTABLEKS R4 R3 K110 ["TableContentsFrameHeight"]
  LOADN R4 30
  SETTABLEKS R4 R3 K111 ["TableContentPaddingLeft"]
  LOADN R4 5
  SETTABLEKS R4 R3 K112 ["TableContentPaddingTop"]
  LOADN R4 130
  SETTABLEKS R4 R3 K113 ["ThisPatchWIllFrameHeight"]
  LOADN R4 40
  SETTABLEKS R4 R3 K114 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K77 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K78 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K18 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K48 ["MainBackground"]
  SETTABLEKS R4 R3 K48 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K115 ["MainButton"]
  SETTABLEKS R4 R3 K115 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["ErrorDialog"]
  DUPTABLE R3 K117 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K23 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K31 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K107 ["ErrorText"]
  SETTABLEKS R4 R3 K107 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K108 ["WarningText"]
  SETTABLEKS R4 R3 K108 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K49 ["Padding"]
  LOADN R4 40
  SETTABLEKS R4 R3 K114 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K77 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K78 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K18 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K48 ["MainBackground"]
  SETTABLEKS R4 R3 K48 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K115 ["MainButton"]
  SETTABLEKS R4 R3 K115 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["WarningDialog"]
  DUPTABLE R3 K117 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K23 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K31 ["DimmedText"]
  SETTABLEKS R4 R3 K31 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K107 ["ErrorText"]
  SETTABLEKS R4 R3 K107 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K108 ["WarningText"]
  SETTABLEKS R4 R3 K108 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K49 ["Padding"]
  LOADN R4 40
  SETTABLEKS R4 R3 K114 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K77 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K78 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["Border"]
  SETTABLEKS R4 R3 K18 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K48 ["MainBackground"]
  SETTABLEKS R4 R3 K48 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K115 ["MainButton"]
  SETTABLEKS R4 R3 K115 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["ImageLocalizationSection"]
  DUPTABLE R3 K119 [{"LeftIndent", "PaddingTop", "Spacing", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LabelWidth", "ButtonWidth", "ButtonHeight"}]
  LOADN R4 15
  SETTABLEKS R4 R3 K64 ["LeftIndent"]
  LOADN R4 20
  SETTABLEKS R4 R3 K51 ["PaddingTop"]
  LOADN R4 15
  SETTABLEKS R4 R3 K118 ["Spacing"]
  LOADN R4 20
  SETTABLEKS R4 R3 K67 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K68 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["BrightText"]
  SETTABLEKS R4 R3 K24 ["TextColor"]
  LOADN R4 4
  SETTABLEKS R4 R3 K79 ["LabelWidth"]
  LOADN R4 100
  SETTABLEKS R4 R3 K77 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K78 ["ButtonHeight"]
  SETTABLE R3 R1 R2
  LOADNIL R2
  JUMPIF R0 [+1]
  JUMP [+22]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["Dictionary"]
  GETTABLEKS R3 R4 K15 ["join"]
  GETUPVAL R4 6
  GETUPVAL R5 7
  CALL R3 2 1
  DUPTABLE R4 K122 [{"getThemeName", "themesList"}]
  DUPCLOSURE R5 K123 [PROTO_0]
  SETTABLEKS R5 R4 K120 ["getThemeName"]
  DUPTABLE R5 K125 [{"Dark"}]
  SETTABLEKS R3 R5 K124 ["Dark"]
  SETTABLEKS R5 R4 K121 ["themesList"]
  GETUPVAL R5 8
  MOVE R6 R4
  CALL R5 1 1
  MOVE R2 R5
  JUMP [+7]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K126 ["new"]
  GETUPVAL R4 7
  GETUPVAL R5 10
  CALL R3 2 1
  MOVE R2 R3
  MOVE R5 R1
  NAMECALL R3 R2 K127 ["extend"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R4 R3 K9 ["StyleModifier"]
  GETTABLEKS R5 R1 K10 ["Style"]
  GETTABLEKS R7 R5 K11 ["Themes"]
  GETTABLEKS R6 R7 K12 ["StudioTheme"]
  GETTABLEKS R7 R5 K13 ["ComponentSymbols"]
  GETTABLEKS R8 R5 K14 ["StyleKey"]
  GETTABLEKS R9 R5 K15 ["getRawComponentStyle"]
  GETTABLEKS R11 R5 K11 ["Themes"]
  GETTABLEKS R10 R11 K16 ["DarkTheme"]
  GETTABLEKS R11 R5 K17 ["createDefaultTheme"]
  GETTABLEKS R12 R1 K18 ["UI"]
  GETTABLEKS R13 R12 K19 ["Box"]
  GETIMPORT R14 K22 [string.format]
  LOADK R15 K23 ["rbxasset://studio_svg_textures/Lua/Localization/%s/Large/"]
  LOADK R16 K24 ["Light/"]
  CALL R14 2 1
  GETIMPORT R15 K22 [string.format]
  LOADK R16 K23 ["rbxasset://studio_svg_textures/Lua/Localization/%s/Large/"]
  LOADK R17 K25 ["Dark/"]
  CALL R15 2 1
  GETIMPORT R16 K22 [string.format]
  LOADK R17 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  LOADK R18 K24 ["Light/"]
  CALL R16 2 1
  GETIMPORT R17 K22 [string.format]
  LOADK R18 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  LOADK R19 K25 ["Dark/"]
  CALL R17 2 1
  NEWTABLE R18 8 0
  GETTABLEKS R19 R8 K27 ["ProgressSpinnerImage"]
  LOADK R20 K28 ["rbxasset://textures/DarkThemeLoadingCircle.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K29 ["Import"]
  MOVE R21 R15
  LOADK R22 K30 ["ImportCSV.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K31 ["Export"]
  MOVE R21 R15
  LOADK R22 K32 ["ExportCSV.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K33 ["TextCapture"]
  MOVE R21 R15
  LOADK R22 K34 ["TextCapture.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K35 ["TextCaptureOn"]
  MOVE R21 R15
  LOADK R22 K36 ["TextCaptureStop.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K37 ["ArrowExpanded"]
  MOVE R21 R17
  LOADK R22 K38 ["ArrowDown.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K39 ["ArrowCollapsed"]
  MOVE R21 R17
  LOADK R22 K40 ["ArrowRight.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  NEWTABLE R19 8 0
  GETTABLEKS R20 R8 K27 ["ProgressSpinnerImage"]
  LOADK R21 K41 ["rbxasset://textures/LightThemeLoadingCircle.png"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K29 ["Import"]
  MOVE R22 R14
  LOADK R23 K30 ["ImportCSV.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K31 ["Export"]
  MOVE R22 R14
  LOADK R23 K32 ["ExportCSV.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K33 ["TextCapture"]
  MOVE R22 R14
  LOADK R23 K34 ["TextCapture.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K35 ["TextCaptureOn"]
  MOVE R22 R14
  LOADK R23 K36 ["TextCaptureStop.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K37 ["ArrowExpanded"]
  MOVE R22 R16
  LOADK R23 K38 ["ArrowDown.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K39 ["ArrowCollapsed"]
  MOVE R22 R16
  LOADK R23 K40 ["ArrowRight.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  DUPCLOSURE R20 K42 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R19
  RETURN R20 1
