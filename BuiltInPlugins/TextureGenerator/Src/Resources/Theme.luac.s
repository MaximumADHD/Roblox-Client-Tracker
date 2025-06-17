MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Style"]
  GETTABLEKS R4 R3 K10 ["StyleKey"]
  GETTABLEKS R5 R3 K11 ["ComponentSymbols"]
  GETTABLEKS R6 R2 K12 ["UIData"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R6 K13 ["Alert"]
  GETTABLEKS R8 R9 K14 ["style"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R6 K15 ["IconButton"]
  GETTABLEKS R9 R10 K14 ["style"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R6 K16 ["Image"]
  GETTABLEKS R10 R11 K14 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R6 K17 ["Shimmer"]
  GETTABLEKS R11 R12 K14 ["style"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  NEWTABLE R12 0 0
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K20 ["Flags"]
  GETTABLEKS R14 R15 K21 ["getFFlagTextureGeneratorMultiStagePreview"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K20 ["Flags"]
  GETTABLEKS R15 R16 K22 ["getFFlagTextureGeneratorPreviewAnimation"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K20 ["Flags"]
  GETTABLEKS R16 R17 K23 ["getFFlagTextureGeneratorRerollButton"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K20 ["Flags"]
  GETTABLEKS R17 R18 K24 ["getFFlagTextureGeneratorBugFixes"]
  CALL R16 1 1
  LOADK R19 K25 ["TermsOfServiceScreen"]
  NAMECALL R17 R5 K26 ["add"]
  CALL R17 2 0
  GETTABLEKS R17 R5 K25 ["TermsOfServiceScreen"]
  DUPTABLE R18 K31 [{"AlertSize", "ButtonPaneSize", "ButtonAnchorPoint", "ButtonSize"}]
  GETIMPORT R19 K34 [UDim2.new]
  LOADK R20 K35 [0.95]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 70
  CALL R19 4 1
  SETTABLEKS R19 R18 K27 ["AlertSize"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADK R20 K35 [0.95]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 44
  CALL R19 4 1
  SETTABLEKS R19 R18 K28 ["ButtonPaneSize"]
  GETIMPORT R19 K37 [Vector2.new]
  LOADK R20 K38 [0.5]
  LOADK R21 K38 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K29 ["ButtonAnchorPoint"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 0
  LOADN R21 75
  LOADN R22 0
  LOADN R23 30
  CALL R19 4 1
  SETTABLEKS R19 R18 K30 ["ButtonSize"]
  SETTABLE R18 R12 R17
  LOADK R19 K39 ["EntryArea"]
  NAMECALL R17 R5 K26 ["add"]
  CALL R17 2 0
  GETTABLEKS R17 R5 K39 ["EntryArea"]
  DUPTABLE R18 K41 [{"BackgroundColor"}]
  MOVE R20 R13
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R4 K42 ["MainBackground"]
  JUMP [+2]
  GETTABLEKS R19 R4 K43 ["Titlebar"]
  SETTABLEKS R19 R18 K40 ["BackgroundColor"]
  SETTABLE R18 R12 R17
  LOADK R19 K44 ["GenerationAngleHelp"]
  NAMECALL R17 R5 K26 ["add"]
  CALL R17 2 0
  GETTABLEKS R17 R5 K44 ["GenerationAngleHelp"]
  DUPTABLE R18 K52 [{"AnchorPoint", "HelpImage", "Padding", "Position", "Spacing", "TextStyle", "ZIndex"}]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K45 ["AnchorPoint"]
  DUPTABLE R19 K55 [{"Color", "Image", "Size"}]
  GETTABLEKS R20 R4 K56 ["TextSecondary"]
  SETTABLEKS R20 R19 K53 ["Color"]
  LOADK R20 K57 ["rbxasset://textures/StudioSharedUI/Help.png"]
  SETTABLEKS R20 R19 K16 ["Image"]
  GETIMPORT R20 K59 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["Size"]
  SETTABLEKS R19 R18 K46 ["HelpImage"]
  DUPTABLE R19 K63 [{"Top", "Left", "Right"}]
  LOADN R20 8
  SETTABLEKS R20 R19 K60 ["Top"]
  LOADN R20 8
  SETTABLEKS R20 R19 K61 ["Left"]
  LOADN R20 8
  SETTABLEKS R20 R19 K62 ["Right"]
  SETTABLEKS R19 R18 K47 ["Padding"]
  GETIMPORT R19 K37 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["Position"]
  LOADN R19 8
  SETTABLEKS R19 R18 K49 ["Spacing"]
  LOADK R19 K64 ["Label"]
  SETTABLEKS R19 R18 K50 ["TextStyle"]
  LOADN R19 1
  SETTABLEKS R19 R18 K51 ["ZIndex"]
  SETTABLE R18 R12 R17
  LOADK R19 K65 ["PreviewArea"]
  NAMECALL R17 R5 K26 ["add"]
  CALL R17 2 0
  GETTABLEKS R17 R5 K65 ["PreviewArea"]
  DUPTABLE R18 K74 [{"GenerateButtonSize", "GenerateButtonStyle", "RerollIcon", "LeftIcon", "RightIcon", "Padding", "PreviewLabelSize", "PreviewLabelStyle", "PromptLabelSize", "Size"}]
  GETIMPORT R19 K59 [UDim2.fromOffset]
  LOADN R20 130
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["GenerateButtonSize"]
  MOVE R20 R15
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADK R19 K75 ["Primary"]
  JUMP [+1]
  LOADK R19 K76 ["RoundPrimary"]
  SETTABLEKS R19 R18 K67 ["GenerateButtonStyle"]
  MOVE R20 R15
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R4 K77 ["Reroll"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K68 ["RerollIcon"]
  MOVE R20 R14
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R4 K78 ["PreviewAreaPrevious"]
  JUMP [+1]
  LOADK R19 K79 ["rbxasset://textures/DeveloperFramework/icon_backward.png"]
  SETTABLEKS R19 R18 K69 ["LeftIcon"]
  MOVE R20 R14
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R4 K80 ["PreviewAreaNext"]
  JUMP [+1]
  LOADK R19 K81 ["rbxasset://textures/DeveloperFramework/icon_forward.png"]
  SETTABLEKS R19 R18 K70 ["RightIcon"]
  LOADN R19 8
  SETTABLEKS R19 R18 K47 ["Padding"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 24
  CALL R19 4 1
  SETTABLEKS R19 R18 K71 ["PreviewLabelSize"]
  LOADK R19 K64 ["Label"]
  SETTABLEKS R19 R18 K72 ["PreviewLabelStyle"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 80
  CALL R19 4 1
  SETTABLEKS R19 R18 K73 ["PromptLabelSize"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 44
  CALL R19 4 1
  SETTABLEKS R19 R18 K54 ["Size"]
  SETTABLE R18 R12 R17
  GETIMPORT R17 K59 [UDim2.fromOffset]
  LOADN R18 75
  LOADN R19 32
  CALL R17 2 1
  GETIMPORT R18 K59 [UDim2.fromOffset]
  LOADN R19 42
  LOADN R20 42
  CALL R18 2 1
  GETIMPORT R19 K59 [UDim2.fromOffset]
  LOADN R20 32
  LOADN R21 32
  CALL R19 2 1
  DUPTABLE R20 K82 [{"Left", "Right"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K61 ["Left"]
  LOADN R21 2
  SETTABLEKS R21 R20 K62 ["Right"]
  GETTABLEKS R22 R20 K61 ["Left"]
  GETTABLEKS R23 R20 K62 ["Right"]
  ADD R21 R22 R23
  GETIMPORT R22 K59 [UDim2.fromOffset]
  LOADN R23 42
  LOADN R24 42
  CALL R22 2 1
  GETTABLEKS R26 R18 K83 ["X"]
  GETTABLEKS R25 R26 K84 ["Offset"]
  GETTABLEKS R27 R17 K83 ["X"]
  GETTABLEKS R26 R27 K84 ["Offset"]
  ADD R24 R25 R26
  ADD R23 R24 R21
  GETTABLEKS R27 R18 K83 ["X"]
  GETTABLEKS R26 R27 K84 ["Offset"]
  GETTABLEKS R28 R19 K83 ["X"]
  GETTABLEKS R27 R28 K84 ["Offset"]
  ADD R25 R26 R27
  ADD R24 R25 R21
  GETTABLEKS R28 R18 K83 ["X"]
  GETTABLEKS R27 R28 K84 ["Offset"]
  GETTABLEKS R30 R19 K83 ["X"]
  GETTABLEKS R29 R30 K84 ["Offset"]
  MULK R28 R29 K85 [3]
  ADD R26 R27 R28
  MULK R27 R21 K85 [3]
  ADD R25 R26 R27
  LOADK R28 K86 ["GenerationCard"]
  NAMECALL R26 R5 K26 ["add"]
  CALL R26 2 0
  GETTABLEKS R26 R5 K86 ["GenerationCard"]
  DUPTABLE R27 K102 [{"BackgroundColor", "CancelButtonSize", "CancelButtonStyle", "InstanceViewSize", "MenuButtonSize", "Padding", "PreviewImageSize", "ProgressBarWidth", "PromptLabelProgressSize", "PromptLabelSize", "PromptLabelCompletedSize", "StrokeColor", "SelectedStrokeColor", "ErrorStrokeColor", "ThumbsUpIcon", "ThumbsDownIcon", "ThumbsUpOutlineIcon", "ThumbsDownOutlineIcon"}]
  GETTABLEKS R28 R4 K42 ["MainBackground"]
  SETTABLEKS R28 R27 K40 ["BackgroundColor"]
  SETTABLEKS R17 R27 K87 ["CancelButtonSize"]
  LOADK R28 K103 ["Round"]
  SETTABLEKS R28 R27 K88 ["CancelButtonStyle"]
  SETTABLEKS R18 R27 K89 ["InstanceViewSize"]
  SETTABLEKS R19 R27 K90 ["MenuButtonSize"]
  SETTABLEKS R20 R27 K47 ["Padding"]
  SETTABLEKS R22 R27 K91 ["PreviewImageSize"]
  GETIMPORT R28 K105 [UDim.new]
  LOADN R29 1
  MINUS R30 R23
  CALL R28 2 1
  SETTABLEKS R28 R27 K92 ["ProgressBarWidth"]
  GETIMPORT R28 K34 [UDim2.new]
  LOADN R29 1
  MINUS R30 R23
  LOADN R31 0
  LOADN R32 40
  CALL R28 4 1
  SETTABLEKS R28 R27 K93 ["PromptLabelProgressSize"]
  GETIMPORT R28 K34 [UDim2.new]
  LOADN R29 1
  MINUS R30 R24
  LOADN R31 0
  LOADN R32 40
  CALL R28 4 1
  SETTABLEKS R28 R27 K73 ["PromptLabelSize"]
  GETIMPORT R28 K34 [UDim2.new]
  LOADN R29 1
  MINUS R30 R25
  LOADN R31 0
  LOADN R32 40
  CALL R28 4 1
  SETTABLEKS R28 R27 K94 ["PromptLabelCompletedSize"]
  GETTABLEKS R28 R4 K106 ["Border"]
  SETTABLEKS R28 R27 K95 ["StrokeColor"]
  GETTABLEKS R28 R4 K107 ["DialogMainButton"]
  SETTABLEKS R28 R27 K96 ["SelectedStrokeColor"]
  GETTABLEKS R28 R4 K108 ["WarningMain"]
  SETTABLEKS R28 R27 K97 ["ErrorStrokeColor"]
  GETTABLEKS R28 R4 K109 ["ThumbsUp"]
  SETTABLEKS R28 R27 K98 ["ThumbsUpIcon"]
  GETTABLEKS R28 R4 K110 ["ThumbsDown"]
  SETTABLEKS R28 R27 K99 ["ThumbsDownIcon"]
  GETTABLEKS R28 R4 K111 ["ThumbsUpOutline"]
  SETTABLEKS R28 R27 K100 ["ThumbsUpOutlineIcon"]
  GETTABLEKS R28 R4 K112 ["ThumbsDownOutline"]
  SETTABLEKS R28 R27 K101 ["ThumbsDownOutlineIcon"]
  SETTABLE R27 R12 R26
  LOADK R28 K113 ["ViewSelector"]
  NAMECALL R26 R5 K26 ["add"]
  CALL R26 2 0
  GETTABLEKS R26 R5 K113 ["ViewSelector"]
  DUPTABLE R27 K120 [{"BackgroundColor", "DisablePan", "DisableZoom", "InitialFocusDirection", "LightColor", "LightDirection", "Size", "TextColor"}]
  GETTABLEKS R28 R4 K43 ["Titlebar"]
  SETTABLEKS R28 R27 K40 ["BackgroundColor"]
  LOADB R28 1
  SETTABLEKS R28 R27 K114 ["DisablePan"]
  LOADB R28 1
  SETTABLEKS R28 R27 K115 ["DisableZoom"]
  LOADK R28 K121 [{0, 0, 1}]
  SETTABLEKS R28 R27 K116 ["InitialFocusDirection"]
  GETIMPORT R28 K123 [Color3.new]
  LOADN R29 1
  LOADN R30 1
  LOADN R31 1
  CALL R28 3 1
  SETTABLEKS R28 R27 K117 ["LightColor"]
  LOADK R28 K124 [{-1, -1, -1}]
  SETTABLEKS R28 R27 K118 ["LightDirection"]
  GETIMPORT R28 K34 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 44
  CALL R28 4 1
  SETTABLEKS R28 R27 K54 ["Size"]
  MOVE R29 R13
  CALL R29 0 1
  JUMPIFNOT R29 [+7]
  GETIMPORT R28 K123 [Color3.new]
  LOADN R29 1
  LOADN R30 1
  LOADN R31 1
  CALL R28 3 1
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K119 ["TextColor"]
  SETTABLE R27 R12 R26
  LOADK R28 K125 ["ArtStyle"]
  NAMECALL R26 R5 K26 ["add"]
  CALL R26 2 0
  GETTABLEKS R26 R5 K125 ["ArtStyle"]
  DUPTABLE R27 K130 [{"Padding", "Spacing", "StrengthLabelSize", "StrengthTextSize", "StrengthPaneContentSpacing", "StrengthPaneHeight"}]
  LOADN R28 10
  SETTABLEKS R28 R27 K47 ["Padding"]
  LOADN R28 10
  SETTABLEKS R28 R27 K49 ["Spacing"]
  LOADN R28 70
  SETTABLEKS R28 R27 K126 ["StrengthLabelSize"]
  LOADN R28 18
  SETTABLEKS R28 R27 K127 ["StrengthTextSize"]
  LOADN R28 30
  SETTABLEKS R28 R27 K128 ["StrengthPaneContentSpacing"]
  LOADN R28 32
  SETTABLEKS R28 R27 K129 ["StrengthPaneHeight"]
  SETTABLE R27 R12 R26
  LOADK R28 K131 ["PromptSelectorWithPreview"]
  NAMECALL R26 R5 K26 ["add"]
  CALL R26 2 0
  GETTABLEKS R26 R5 K131 ["PromptSelectorWithPreview"]
  DUPTABLE R27 K152 [{"ClearIcon", "ImportIcon", "PreviewBackgroundColor", "PreviewBorderColor", "ImportIconColor", "ImportImageBackground", "ButtonColor", "ButtonHeight", "ButtonIconColor", "ButtonIconHoveredColor", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight", "ColumnWidth", "LabelColumnWidth", "PreviewSize", "PaddingVertical", "PaddingHorizontal", "TextHeight"}]
  LOADK R28 K153 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R28 R27 K132 ["ClearIcon"]
  LOADK R28 K154 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R28 R27 K133 ["ImportIcon"]
  GETTABLEKS R28 R4 K42 ["MainBackground"]
  SETTABLEKS R28 R27 K134 ["PreviewBackgroundColor"]
  GETTABLEKS R28 R4 K106 ["Border"]
  SETTABLEKS R28 R27 K135 ["PreviewBorderColor"]
  GETTABLEKS R28 R4 K155 ["ButtonText"]
  SETTABLEKS R28 R27 K136 ["ImportIconColor"]
  GETTABLEKS R28 R4 K156 ["InputFieldBackground"]
  SETTABLEKS R28 R27 K137 ["ImportImageBackground"]
  GETTABLEKS R28 R4 K157 ["Button"]
  SETTABLEKS R28 R27 K138 ["ButtonColor"]
  LOADN R28 24
  SETTABLEKS R28 R27 K139 ["ButtonHeight"]
  GETTABLEKS R28 R4 K158 ["Icon"]
  SETTABLEKS R28 R27 K140 ["ButtonIconColor"]
  GETIMPORT R28 K160 [Color3.fromRGB]
  LOADN R29 255
  LOADN R30 255
  LOADN R31 255
  CALL R28 3 1
  SETTABLEKS R28 R27 K141 ["ButtonIconHoveredColor"]
  LOADK R28 K161 [0.4]
  SETTABLEKS R28 R27 K142 ["ToolbarTransparency"]
  GETTABLEKS R28 R4 K42 ["MainBackground"]
  SETTABLEKS R28 R27 K143 ["ToolbarBackgroundColor"]
  GETTABLEKS R28 R4 K42 ["MainBackground"]
  SETTABLEKS R28 R27 K144 ["ToolbarButtonBackgroundColor"]
  LOADN R28 32
  SETTABLEKS R28 R27 K145 ["ToolbarHeight"]
  GETIMPORT R28 K105 [UDim.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K146 ["ColumnWidth"]
  GETIMPORT R28 K105 [UDim.new]
  LOADN R29 0
  LOADN R30 108
  CALL R28 2 1
  SETTABLEKS R28 R27 K147 ["LabelColumnWidth"]
  LOADN R28 74
  SETTABLEKS R28 R27 K148 ["PreviewSize"]
  LOADN R28 4
  SETTABLEKS R28 R27 K149 ["PaddingVertical"]
  LOADN R28 21
  SETTABLEKS R28 R27 K150 ["PaddingHorizontal"]
  LOADN R28 16
  SETTABLEKS R28 R27 K151 ["TextHeight"]
  SETTABLE R27 R12 R26
  GETTABLEKS R26 R5 K13 ["Alert"]
  GETTABLEKS R28 R1 K162 ["Dictionary"]
  GETTABLEKS R27 R28 K163 ["join"]
  MOVE R28 R7
  NEWTABLE R29 1 0
  GETTABLEKS R31 R1 K162 ["Dictionary"]
  GETTABLEKS R30 R31 K163 ["join"]
  GETTABLEKS R31 R7 K164 ["&Error"]
  DUPTABLE R32 K166 [{"HorizontalPadding"}]
  GETIMPORT R33 K105 [UDim.new]
  LOADN R34 0
  LOADN R35 12
  CALL R33 2 1
  SETTABLEKS R33 R32 K165 ["HorizontalPadding"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K167 ["&EntryError"]
  CALL R27 2 1
  SETTABLE R27 R12 R26
  GETTABLEKS R26 R5 K16 ["Image"]
  GETTABLEKS R28 R1 K162 ["Dictionary"]
  GETTABLEKS R27 R28 K163 ["join"]
  MOVE R28 R9
  NEWTABLE R29 4 0
  DUPTABLE R30 K168 [{"Color"}]
  GETTABLEKS R31 R4 K169 ["TextPrimary"]
  SETTABLEKS R31 R30 K53 ["Color"]
  SETTABLEKS R30 R29 K170 ["&Colored"]
  DUPTABLE R30 K168 [{"Color"}]
  GETTABLEKS R31 R4 K108 ["WarningMain"]
  SETTABLEKS R31 R30 K53 ["Color"]
  SETTABLEKS R30 R29 K171 ["&ColoredWarning"]
  DUPTABLE R30 K172 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
  GETTABLEKS R31 R4 K80 ["PreviewAreaNext"]
  SETTABLEKS R31 R30 K16 ["Image"]
  GETTABLEKS R31 R4 K169 ["TextPrimary"]
  SETTABLEKS R31 R30 K53 ["Color"]
  GETIMPORT R31 K37 [Vector2.new]
  LOADK R32 K38 [0.5]
  LOADK R33 K38 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K45 ["AnchorPoint"]
  GETIMPORT R31 K59 [UDim2.fromOffset]
  LOADN R32 16
  LOADN R33 16
  CALL R31 2 1
  SETTABLEKS R31 R30 K54 ["Size"]
  GETIMPORT R31 K174 [UDim2.fromScale]
  LOADK R32 K38 [0.5]
  LOADK R33 K38 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K48 ["Position"]
  SETTABLEKS R30 R29 K175 ["&PreviewAreaNext"]
  DUPTABLE R30 K172 [{"Image", "Color", "AnchorPoint", "Size", "Position"}]
  GETTABLEKS R31 R4 K78 ["PreviewAreaPrevious"]
  SETTABLEKS R31 R30 K16 ["Image"]
  GETTABLEKS R31 R4 K169 ["TextPrimary"]
  SETTABLEKS R31 R30 K53 ["Color"]
  GETIMPORT R31 K37 [Vector2.new]
  LOADK R32 K38 [0.5]
  LOADK R33 K38 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K45 ["AnchorPoint"]
  GETIMPORT R31 K59 [UDim2.fromOffset]
  LOADN R32 16
  LOADN R33 16
  CALL R31 2 1
  SETTABLEKS R31 R30 K54 ["Size"]
  GETIMPORT R31 K174 [UDim2.fromScale]
  LOADK R32 K38 [0.5]
  LOADK R33 K38 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K48 ["Position"]
  SETTABLEKS R30 R29 K176 ["&PreviewAreaPrevious"]
  CALL R27 2 1
  SETTABLE R27 R12 R26
  GETTABLEKS R26 R5 K15 ["IconButton"]
  GETTABLEKS R28 R1 K162 ["Dictionary"]
  GETTABLEKS R27 R28 K163 ["join"]
  MOVE R28 R8
  NEWTABLE R29 2 0
  DUPTABLE R30 K183 [{"BackgroundColor", "BorderColor", "Color", "Cursor", "HoverColor", "IconScaleType", "IconSize", "ImageTransparency", "Size"}]
  MOVE R32 R14
  CALL R32 0 1
  JUMPIFNOT R32 [+7]
  GETIMPORT R31 K123 [Color3.new]
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R31 3 1
  JUMP [+2]
  GETTABLEKS R31 R4 K184 ["SecondaryMain"]
  SETTABLEKS R31 R30 K40 ["BackgroundColor"]
  MOVE R32 R14
  CALL R32 0 1
  JUMPIFNOT R32 [+7]
  GETIMPORT R31 K123 [Color3.new]
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R31 3 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K177 ["BorderColor"]
  MOVE R32 R14
  CALL R32 0 1
  JUMPIFNOT R32 [+7]
  GETIMPORT R31 K123 [Color3.new]
  LOADN R32 1
  LOADN R33 1
  LOADN R34 1
  CALL R31 3 1
  JUMP [+2]
  GETTABLEKS R31 R4 K185 ["SecondaryMuted"]
  SETTABLEKS R31 R30 K53 ["Color"]
  LOADK R31 K186 ["PointingHand"]
  SETTABLEKS R31 R30 K178 ["Cursor"]
  MOVE R32 R14
  CALL R32 0 1
  JUMPIFNOT R32 [+3]
  GETTABLEKS R31 R4 K187 ["PrimaryStatesHoverBackground"]
  JUMP [+2]
  GETTABLEKS R31 R4 K188 ["SecondaryStatesHoverBackground"]
  SETTABLEKS R31 R30 K179 ["HoverColor"]
  GETIMPORT R31 K192 [Enum.ScaleType.Fit]
  SETTABLEKS R31 R30 K180 ["IconScaleType"]
  LOADN R31 24
  SETTABLEKS R31 R30 K181 ["IconSize"]
  MOVE R32 R14
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 1
  JUMP [+1]
  LOADK R31 K38 [0.5]
  SETTABLEKS R31 R30 K182 ["ImageTransparency"]
  GETIMPORT R31 K59 [UDim2.fromOffset]
  LOADN R32 24
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K54 ["Size"]
  SETTABLEKS R30 R29 K193 ["&PreviewAreaImageRotateButton"]
  DUPTABLE R30 K194 [{"BackgroundColor", "Color", "HoverColor"}]
  GETTABLEKS R31 R4 K184 ["SecondaryMain"]
  SETTABLEKS R31 R30 K40 ["BackgroundColor"]
  GETTABLEKS R31 R4 K185 ["SecondaryMuted"]
  SETTABLEKS R31 R30 K53 ["Color"]
  GETTABLEKS R31 R4 K188 ["SecondaryStatesHoverBackground"]
  SETTABLEKS R31 R30 K179 ["HoverColor"]
  SETTABLEKS R30 R29 K195 ["&EntryAreaCancelAngleButton"]
  CALL R27 2 1
  SETTABLE R27 R12 R26
  MOVE R26 R16
  CALL R26 0 1
  JUMPIFNOT R26 [+31]
  GETTABLEKS R26 R5 K17 ["Shimmer"]
  GETTABLEKS R28 R1 K162 ["Dictionary"]
  GETTABLEKS R27 R28 K163 ["join"]
  MOVE R28 R10
  DUPTABLE R29 K201 [{"ColorStart", "ColorEnd", "ColorEndTintPercent", "CornerRadius", "Time"}]
  GETTABLEKS R30 R4 K202 ["DialogMainButtonSelected"]
  SETTABLEKS R30 R29 K196 ["ColorStart"]
  GETIMPORT R30 K123 [Color3.new]
  LOADN R31 1
  LOADN R32 1
  LOADN R33 1
  CALL R30 3 1
  SETTABLEKS R30 R29 K197 ["ColorEnd"]
  LOADK R30 K203 [0.6]
  SETTABLEKS R30 R29 K198 ["ColorEndTintPercent"]
  LOADN R30 3
  SETTABLEKS R30 R29 K199 ["CornerRadius"]
  LOADN R30 2
  SETTABLEKS R30 R29 K200 ["Time"]
  CALL R27 2 1
  SETTABLE R27 R12 R26
  RETURN R12 1
