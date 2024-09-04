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
  LOADK R3 K12 ["TextScraperToggle"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K13 ["ImageLocalizationSection"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K14 ["TextScraperSection"]
  NAMECALL R1 R1 K1 ["add"]
  CALL R1 2 0
  NEWTABLE R1 32 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["Button"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["Dictionary"]
  GETTABLEKS R3 R4 K17 ["join"]
  GETUPVAL R4 2
  LOADK R5 K15 ["Button"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K18 ["Background"]
  DUPTABLE R6 K22 [{"Color", "BorderColor", "BorderSize"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["Button"]
  SETTABLEKS R7 R6 K19 ["Color"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K23 ["Border"]
  SETTABLEKS R7 R6 K20 ["BorderColor"]
  LOADN R7 1
  SETTABLEKS R7 R6 K21 ["BorderSize"]
  SETTABLEKS R6 R5 K24 ["BackgroundStyle"]
  NEWTABLE R6 2 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K25 ["BrightText"]
  SETTABLEKS R7 R6 K26 ["TextColor"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K27 ["Hover"]
  DUPTABLE R8 K28 [{"BackgroundStyle"}]
  DUPTABLE R9 K29 [{"Color"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K30 ["ButtonHover"]
  SETTABLEKS R10 R9 K19 ["Color"]
  SETTABLEKS R9 R8 K24 ["BackgroundStyle"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K31 ["&TextButton"]
  DUPTABLE R6 K32 [{"TextColor"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K33 ["DimmedText"]
  SETTABLEKS R7 R6 K26 ["TextColor"]
  SETTABLEKS R6 R5 K34 ["&DisabledTextButton"]
  NEWTABLE R6 4 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K35 ["DialogMainButtonText"]
  SETTABLEKS R7 R6 K26 ["TextColor"]
  DUPTABLE R7 K22 [{"Color", "BorderColor", "BorderSize"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K36 ["DialogMainButton"]
  SETTABLEKS R8 R7 K19 ["Color"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K23 ["Border"]
  SETTABLEKS R8 R7 K20 ["BorderColor"]
  LOADN R8 1
  SETTABLEKS R8 R7 K21 ["BorderSize"]
  SETTABLEKS R7 R6 K24 ["BackgroundStyle"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K27 ["Hover"]
  DUPTABLE R8 K28 [{"BackgroundStyle"}]
  DUPTABLE R9 K29 [{"Color"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K37 ["DialogMainButtonHover"]
  SETTABLEKS R10 R9 K19 ["Color"]
  SETTABLEKS R9 R8 K24 ["BackgroundStyle"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K38 ["&PrimeTextButton"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K39 ["LinkText"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["Dictionary"]
  GETTABLEKS R3 R4 K17 ["join"]
  GETUPVAL R4 2
  LOADK R5 K39 ["LinkText"]
  CALL R4 1 1
  DUPTABLE R5 K43 [{"EnableHover", "Font", "TextColor", "TextSize"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K40 ["EnableHover"]
  GETIMPORT R6 K46 [Enum.Font.SourceSans]
  SETTABLEKS R6 R5 K41 ["Font"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K39 ["LinkText"]
  SETTABLEKS R6 R5 K26 ["TextColor"]
  LOADN R6 16
  SETTABLEKS R6 R5 K42 ["TextSize"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K47 ["TitledFrame"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["Dictionary"]
  GETTABLEKS R3 R4 K17 ["join"]
  GETUPVAL R4 2
  LOADK R5 K47 ["TitledFrame"]
  CALL R4 1 1
  DUPTABLE R5 K48 [{"TextColor", "TextSize"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K25 ["BrightText"]
  SETTABLEKS R6 R5 K26 ["TextColor"]
  LOADN R6 16
  SETTABLEKS R6 R5 K42 ["TextSize"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["MainView"]
  DUPTABLE R3 K59 [{"EmptyFrameHeight", "MainBackground", "Padding", "PaddingRight", "PaddingTop", "ScrollBarBorderColor", "ScrollBarColor", "ScrollingFrameackground", "ScrollingFrameCanvasHeight", "ScrollingFrameHeight"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K49 ["EmptyFrameHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K50 ["MainBackground"]
  SETTABLEKS R4 R3 K50 ["MainBackground"]
  LOADN R4 5
  SETTABLEKS R4 R3 K51 ["Padding"]
  LOADN R4 20
  SETTABLEKS R4 R3 K52 ["PaddingRight"]
  LOADN R4 10
  SETTABLEKS R4 R3 K53 ["PaddingTop"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K54 ["ScrollBarBorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K60 ["ScrollBar"]
  SETTABLEKS R4 R3 K55 ["ScrollBarColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K61 ["ScrollBarBackground"]
  SETTABLEKS R4 R3 K56 ["ScrollingFrameackground"]
  LOADN R4 194
  SETTABLEKS R4 R3 K57 ["ScrollingFrameCanvasHeight"]
  LOADN R4 236
  SETTABLEKS R4 R3 K58 ["ScrollingFrameHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["MessageFrame"]
  DUPTABLE R3 K64 [{"BackgroundColor", "BorderColor", "Height", "Padding", "TextColor"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K65 ["RibbonTab"]
  SETTABLEKS R4 R3 K62 ["BackgroundColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K20 ["BorderColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K63 ["Height"]
  LOADN R4 5
  SETTABLEKS R4 R3 K51 ["Padding"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CloudTableSection"]
  DUPTABLE R3 K74 [{"LeftIndent", "MessageFrameBackground", "MessageFrameBorder", "PaddingTop", "SectionPadding", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LinkTextHeight", "PublishMessageHeight"}]
  LOADN R4 15
  SETTABLEKS R4 R3 K66 ["LeftIndent"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K50 ["MainBackground"]
  SETTABLEKS R4 R3 K67 ["MessageFrameBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K68 ["MessageFrameBorder"]
  GETUPVAL R5 6
  JUMPIFNOT R5 [+2]
  LOADN R4 40
  JUMP [+1]
  LOADN R4 5
  SETTABLEKS R4 R3 K53 ["PaddingTop"]
  LOADN R4 5
  SETTABLEKS R4 R3 K69 ["SectionPadding"]
  LOADN R4 20
  SETTABLEKS R4 R3 K70 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K71 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  LOADN R4 50
  SETTABLEKS R4 R3 K72 ["LinkTextHeight"]
  LOADN R4 150
  SETTABLEKS R4 R3 K73 ["PublishMessageHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProgressSpinner"]
  DUPTABLE R3 K78 [{"ImageRectSize", "ProgressSpinnerImageUrl", "Size"}]
  LOADN R4 80
  SETTABLEKS R4 R3 K75 ["ImageRectSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K79 ["ProgressSpinnerImage"]
  SETTABLEKS R4 R3 K76 ["ProgressSpinnerImageUrl"]
  LOADN R4 81
  SETTABLEKS R4 R3 K77 ["Size"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["LabeledTextButton"]
  DUPTABLE R3 K86 [{"ButtonWidth", "ButtonHeight", "Height", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
  LOADN R4 100
  SETTABLEKS R4 R3 K80 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K81 ["ButtonHeight"]
  LOADN R4 50
  SETTABLEKS R4 R3 K63 ["Height"]
  LOADN R4 250
  SETTABLEKS R4 R3 K82 ["LabelWidth"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K83 ["DisabledTextColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K84 ["TextLabelSize"]
  LOADN R4 6
  SETTABLEKS R4 R3 K85 ["TextLabelTextSize"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["TextScraperToggle"]
  DUPTABLE R3 K90 [{"BackgroundColor", "BackgroundColorHovered", "Height", "ImageButtonSize", "ImageLabelSize", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K15 ["Button"]
  SETTABLEKS R4 R3 K62 ["BackgroundColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K30 ["ButtonHover"]
  SETTABLEKS R4 R3 K87 ["BackgroundColorHovered"]
  LOADN R4 50
  SETTABLEKS R4 R3 K63 ["Height"]
  LOADN R4 50
  SETTABLEKS R4 R3 K88 ["ImageButtonSize"]
  LOADN R4 30
  SETTABLEKS R4 R3 K89 ["ImageLabelSize"]
  LOADN R4 220
  SETTABLEKS R4 R3 K82 ["LabelWidth"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K83 ["DisabledTextColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K84 ["TextLabelSize"]
  LOADN R4 6
  SETTABLEKS R4 R3 K85 ["TextLabelTextSize"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Collapsible"]
  DUPTABLE R3 K96 [{"DisabledTextColor", "IconSize", "IconColor", "IconImageOpen", "IconImageClosed", "TextColor", "TopBarHeight"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K83 ["DisabledTextColor"]
  LOADN R4 16
  SETTABLEKS R4 R3 K91 ["IconSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K92 ["IconColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K97 ["ArrowExpanded"]
  SETTABLEKS R4 R3 K93 ["IconImageOpen"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K98 ["ArrowCollapsed"]
  SETTABLEKS R4 R3 K94 ["IconImageClosed"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  LOADN R4 24
  SETTABLEKS R4 R3 K95 ["TopBarHeight"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["EmbeddedTableSection"]
  DUPTABLE R3 K102 [{"ExportButtonImage", "ImportButtonImage", "LeftIndent", "PaddingTop", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "TextCaptureButtonImage"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K103 ["Export"]
  SETTABLEKS R4 R3 K99 ["ExportButtonImage"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K104 ["Import"]
  SETTABLEKS R4 R3 K100 ["ImportButtonImage"]
  LOADN R4 15
  SETTABLEKS R4 R3 K66 ["LeftIndent"]
  LOADN R4 5
  SETTABLEKS R4 R3 K53 ["PaddingTop"]
  LOADN R4 20
  SETTABLEKS R4 R3 K70 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K71 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  DUPTABLE R4 K107 [{"On", "Off"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K108 ["TextCaptureOn"]
  SETTABLEKS R5 R4 K105 ["On"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K109 ["TextCapture"]
  SETTABLEKS R5 R4 K106 ["Off"]
  SETTABLEKS R4 R3 K101 ["TextCaptureButtonImage"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["LabeledImageButton"]
  DUPTABLE R3 K90 [{"BackgroundColor", "BackgroundColorHovered", "Height", "ImageButtonSize", "ImageLabelSize", "LabelWidth", "TextColor", "DisabledTextColor", "TextLabelSize", "TextLabelTextSize"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K15 ["Button"]
  SETTABLEKS R4 R3 K62 ["BackgroundColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K30 ["ButtonHover"]
  SETTABLEKS R4 R3 K87 ["BackgroundColorHovered"]
  LOADN R4 50
  SETTABLEKS R4 R3 K63 ["Height"]
  LOADN R4 50
  SETTABLEKS R4 R3 K88 ["ImageButtonSize"]
  LOADN R4 30
  SETTABLEKS R4 R3 K89 ["ImageLabelSize"]
  LOADN R4 4
  SETTABLEKS R4 R3 K82 ["LabelWidth"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K83 ["DisabledTextColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K84 ["TextLabelSize"]
  LOADN R4 6
  SETTABLEKS R4 R3 K85 ["TextLabelTextSize"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["TextScraperSection"]
  DUPTABLE R3 K111 [{"LeftIndent", "PaddingTop", "PaddingBottom", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "TextCaptureButtonImage"}]
  LOADN R4 15
  SETTABLEKS R4 R3 K66 ["LeftIndent"]
  LOADN R4 5
  SETTABLEKS R4 R3 K53 ["PaddingTop"]
  LOADN R4 20
  SETTABLEKS R4 R3 K110 ["PaddingBottom"]
  LOADN R4 20
  SETTABLEKS R4 R3 K70 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K71 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  DUPTABLE R4 K107 [{"On", "Off"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K108 ["TextCaptureOn"]
  SETTABLEKS R5 R4 K105 ["On"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K109 ["TextCapture"]
  SETTABLEKS R5 R4 K106 ["Off"]
  SETTABLEKS R4 R3 K101 ["TextCaptureButtonImage"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["UploadDialogContent"]
  DUPTABLE R3 K121 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "PatchInfoFrameHeight", "TableContentsFrameHeight", "TableContentPaddingLeft", "TableContentPaddingTop", "ThisPatchWIllFrameHeight", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K25 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K33 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K112 ["ErrorText"]
  SETTABLEKS R4 R3 K112 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K113 ["WarningText"]
  SETTABLEKS R4 R3 K113 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K51 ["Padding"]
  LOADN R4 34
  SETTABLEKS R4 R3 K114 ["PatchInfoFrameHeight"]
  LOADN R4 90
  SETTABLEKS R4 R3 K115 ["TableContentsFrameHeight"]
  LOADN R4 30
  SETTABLEKS R4 R3 K116 ["TableContentPaddingLeft"]
  LOADN R4 5
  SETTABLEKS R4 R3 K117 ["TableContentPaddingTop"]
  LOADN R4 130
  SETTABLEKS R4 R3 K118 ["ThisPatchWIllFrameHeight"]
  LOADN R4 40
  SETTABLEKS R4 R3 K119 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K80 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K81 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K20 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K50 ["MainBackground"]
  SETTABLEKS R4 R3 K50 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K120 ["MainButton"]
  SETTABLEKS R4 R3 K120 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["ErrorDialog"]
  DUPTABLE R3 K122 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K25 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K33 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K112 ["ErrorText"]
  SETTABLEKS R4 R3 K112 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K113 ["WarningText"]
  SETTABLEKS R4 R3 K113 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K51 ["Padding"]
  LOADN R4 40
  SETTABLEKS R4 R3 K119 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K80 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K81 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K20 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K50 ["MainBackground"]
  SETTABLEKS R4 R3 K50 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K120 ["MainButton"]
  SETTABLEKS R4 R3 K120 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["WarningDialog"]
  DUPTABLE R3 K122 [{"BrightText", "DimmedText", "ErrorText", "WarningText", "Padding", "ButtonFrameHeight", "ButtonWidth", "ButtonHeight", "BorderColor", "MainBackground", "MainButton"}]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K25 ["BrightText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K33 ["DimmedText"]
  SETTABLEKS R4 R3 K33 ["DimmedText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K112 ["ErrorText"]
  SETTABLEKS R4 R3 K112 ["ErrorText"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K113 ["WarningText"]
  SETTABLEKS R4 R3 K113 ["WarningText"]
  LOADN R4 15
  SETTABLEKS R4 R3 K51 ["Padding"]
  LOADN R4 40
  SETTABLEKS R4 R3 K119 ["ButtonFrameHeight"]
  LOADN R4 100
  SETTABLEKS R4 R3 K80 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K81 ["ButtonHeight"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K23 ["Border"]
  SETTABLEKS R4 R3 K20 ["BorderColor"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K50 ["MainBackground"]
  SETTABLEKS R4 R3 K50 ["MainBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K120 ["MainButton"]
  SETTABLEKS R4 R3 K120 ["MainButton"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["ImageLocalizationSection"]
  DUPTABLE R3 K124 [{"LeftIndent", "PaddingTop", "Spacing", "SectionLabelSize", "SectionLabelTextSize", "TextColor", "LabelWidth", "ButtonWidth", "ButtonHeight"}]
  LOADN R4 15
  SETTABLEKS R4 R3 K66 ["LeftIndent"]
  LOADN R4 20
  SETTABLEKS R4 R3 K53 ["PaddingTop"]
  LOADN R4 15
  SETTABLEKS R4 R3 K123 ["Spacing"]
  LOADN R4 20
  SETTABLEKS R4 R3 K70 ["SectionLabelSize"]
  LOADN R4 10
  SETTABLEKS R4 R3 K71 ["SectionLabelTextSize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K25 ["BrightText"]
  SETTABLEKS R4 R3 K26 ["TextColor"]
  LOADN R4 4
  SETTABLEKS R4 R3 K82 ["LabelWidth"]
  LOADN R4 100
  SETTABLEKS R4 R3 K80 ["ButtonWidth"]
  LOADN R4 35
  SETTABLEKS R4 R3 K81 ["ButtonHeight"]
  SETTABLE R3 R1 R2
  LOADNIL R2
  JUMPIF R0 [+1]
  JUMP [+22]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["Dictionary"]
  GETTABLEKS R3 R4 K17 ["join"]
  GETUPVAL R4 7
  GETUPVAL R5 8
  CALL R3 2 1
  DUPTABLE R4 K127 [{"getThemeName", "themesList"}]
  DUPCLOSURE R5 K128 [PROTO_0]
  SETTABLEKS R5 R4 K125 ["getThemeName"]
  DUPTABLE R5 K130 [{"Dark"}]
  SETTABLEKS R3 R5 K129 ["Dark"]
  SETTABLEKS R5 R4 K126 ["themesList"]
  GETUPVAL R5 9
  MOVE R6 R4
  CALL R5 1 1
  MOVE R2 R5
  JUMP [+7]
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K131 ["new"]
  GETUPVAL R4 8
  GETUPVAL R5 11
  CALL R3 2 1
  MOVE R2 R3
  MOVE R5 R1
  NAMECALL R3 R2 K132 ["extend"]
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
  GETIMPORT R18 K28 [game]
  LOADK R20 K29 ["LocalizationToolsUpdateTextScraperUI"]
  NAMECALL R18 R18 K30 ["GetFastFlag"]
  CALL R18 2 1
  NEWTABLE R19 8 0
  GETTABLEKS R20 R8 K31 ["ProgressSpinnerImage"]
  LOADK R21 K32 ["rbxasset://textures/DarkThemeLoadingCircle.png"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K33 ["Import"]
  MOVE R22 R15
  LOADK R23 K34 ["ImportCSV.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K35 ["Export"]
  MOVE R22 R15
  LOADK R23 K36 ["ExportCSV.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K37 ["TextCapture"]
  MOVE R22 R15
  LOADK R23 K38 ["TextCapture.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K39 ["TextCaptureOn"]
  MOVE R22 R15
  LOADK R23 K40 ["TextCaptureStop.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K41 ["ArrowExpanded"]
  MOVE R22 R17
  LOADK R23 K42 ["ArrowDown.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K43 ["ArrowCollapsed"]
  MOVE R22 R17
  LOADK R23 K44 ["ArrowRight.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  NEWTABLE R20 8 0
  GETTABLEKS R21 R8 K31 ["ProgressSpinnerImage"]
  LOADK R22 K45 ["rbxasset://textures/LightThemeLoadingCircle.png"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K33 ["Import"]
  MOVE R23 R14
  LOADK R24 K34 ["ImportCSV.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K35 ["Export"]
  MOVE R23 R14
  LOADK R24 K36 ["ExportCSV.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K37 ["TextCapture"]
  MOVE R23 R14
  LOADK R24 K38 ["TextCapture.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K39 ["TextCaptureOn"]
  MOVE R23 R14
  LOADK R24 K40 ["TextCaptureStop.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K41 ["ArrowExpanded"]
  MOVE R23 R16
  LOADK R24 K42 ["ArrowDown.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K43 ["ArrowCollapsed"]
  MOVE R23 R16
  LOADK R24 K44 ["ArrowRight.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  DUPCLOSURE R21 K46 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R20
  RETURN R21 1
