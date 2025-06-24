MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 37
  MOVE R5 R2
  LOADK R6 K11 [".Component-CategoryList"]
  DUPTABLE R7 K16 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R8 K19 [UDim2.fromScale]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Size"]
  LOADK R8 K20 ["$BackgroundPaper"]
  SETTABLEKS R8 R7 K13 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K14 ["BackgroundTransparency"]
  GETIMPORT R8 K23 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K15 ["AutomaticSize"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K24 [".Component-CategoryListItem"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K25 [">> TextButton"]
  DUPTABLE R12 K28 [{"TextXAlignment", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R13 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K26 ["TextXAlignment"]
  GETIMPORT R13 K23 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  LOADN R13 0
  SETTABLEKS R13 R12 K27 ["BorderSizePixel"]
  NEWTABLE R13 0 4
  MOVE R14 R2
  LOADK R15 K31 [":hover"]
  DUPTABLE R16 K33 [{"BackgroundColor3", "TextColor3"}]
  LOADK R17 K34 ["$ActionSelected"]
  SETTABLEKS R17 R16 K13 ["BackgroundColor3"]
  LOADK R17 K35 ["$CategoryListTextContrast"]
  SETTABLEKS R17 R16 K32 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K36 [":pressed"]
  DUPTABLE R17 K33 [{"BackgroundColor3", "TextColor3"}]
  LOADK R18 K34 ["$ActionSelected"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  LOADK R18 K35 ["$CategoryListTextContrast"]
  SETTABLEKS R18 R17 K32 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K37 [".Selected"]
  DUPTABLE R18 K33 [{"BackgroundColor3", "TextColor3"}]
  LOADK R19 K34 ["$ActionSelected"]
  SETTABLEKS R19 R18 K13 ["BackgroundColor3"]
  LOADK R19 K35 ["$CategoryListTextContrast"]
  SETTABLEKS R19 R18 K32 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K38 [".Unselected"]
  DUPTABLE R19 K33 [{"BackgroundColor3", "TextColor3"}]
  LOADK R20 K20 ["$BackgroundPaper"]
  SETTABLEKS R20 R19 K13 ["BackgroundColor3"]
  LOADK R20 K39 ["$TextSecondary"]
  SETTABLEKS R20 R19 K32 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K40 [".GeneralCategoryImage"]
  DUPTABLE R9 K42 [{"Image"}]
  LOADK R10 K43 ["$GeneralCategoryImage"]
  SETTABLEKS R10 R9 K41 ["Image"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K44 [".BodyCategoryImage"]
  DUPTABLE R10 K42 [{"Image"}]
  LOADK R11 K45 ["$BodyCategoryImage"]
  SETTABLEKS R11 R10 K41 ["Image"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K46 [".MovementCategoryImage"]
  DUPTABLE R11 K42 [{"Image"}]
  LOADK R12 K47 ["$MovementCategoryImage"]
  SETTABLEKS R12 R11 K41 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K48 [".AccessoriesCategoryImage"]
  DUPTABLE R12 K42 [{"Image"}]
  LOADK R13 K49 ["$AccessoriesCategoryImage"]
  SETTABLEKS R13 R12 K41 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K50 [".ClothingCategoryImage"]
  DUPTABLE R13 K42 [{"Image"}]
  LOADK R14 K51 ["$ClothingCategoryImage"]
  SETTABLEKS R14 R13 K41 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K52 [".ToggleSidebarExpandImage"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K53 [".Expanded"]
  DUPTABLE R18 K42 [{"Image"}]
  LOADK R19 K54 ["$CollapseSidebarImage"]
  SETTABLEKS R19 R18 K41 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K55 [".Collapsed"]
  DUPTABLE R19 K42 [{"Image"}]
  LOADK R20 K56 ["$ExpandSidebarImage"]
  SETTABLEKS R20 R19 K41 ["Image"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K57 [".Component-NavigationBar"]
  DUPTABLE R15 K59 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderColor3"}]
  GETIMPORT R16 K61 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 44
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  LOADK R16 K62 ["$ForegroundContrast"]
  SETTABLEKS R16 R15 K13 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K14 ["BackgroundTransparency"]
  LOADK R16 K63 ["$Divider"]
  SETTABLEKS R16 R15 K58 ["BorderColor3"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K64 ["::UIPadding"]
  DUPTABLE R19 K67 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K65 ["PaddingTop"]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K66 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K70 ["::UISizeConstraint"]
  DUPTABLE R20 K72 [{"MinSize"}]
  GETIMPORT R21 K74 [Vector2.new]
  LOADN R22 139
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K71 ["MinSize"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K75 [".AvatarTypeDropdownItem"]
  DUPTABLE R16 K76 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R17 K78 [UDim2.fromOffset]
  LOADN R18 200
  LOADN R19 66
  CALL R17 2 1
  SETTABLEKS R17 R16 K12 ["Size"]
  LOADK R17 K79 ["$ForegroundMain"]
  SETTABLEKS R17 R16 K13 ["BackgroundColor3"]
  GETIMPORT R17 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K15 ["AutomaticSize"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K82 ["::UIStroke"]
  DUPTABLE R20 K85 [{"Color", "Thickness"}]
  LOADK R21 K63 ["$Divider"]
  SETTABLEKS R21 R20 K83 ["Color"]
  LOADN R21 1
  SETTABLEKS R21 R20 K84 ["Thickness"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K31 [":hover"]
  DUPTABLE R21 K86 [{"BackgroundColor3"}]
  LOADK R22 K62 ["$ForegroundContrast"]
  SETTABLEKS R22 R21 K13 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K87 [".AvatarTypeDropdownToggleButton"]
  DUPTABLE R17 K88 [{"Image", "BackgroundTransparency"}]
  LOADK R18 K89 ["$AvatarTypeDropdownToggleImage"]
  SETTABLEKS R18 R17 K41 ["Image"]
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["BackgroundTransparency"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K90 [".Enabled"]
  DUPTABLE R21 K91 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K92 ["$ActionActivated"]
  SETTABLEKS R22 R21 K13 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K14 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K93 ["::UICorner"]
  DUPTABLE R22 K95 [{"CornerRadius"}]
  GETIMPORT R23 K69 [UDim.new]
  LOADN R24 0
  LOADN R25 3
  CALL R23 2 1
  SETTABLEKS R23 R22 K94 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K96 [".DropdownItem"]
  DUPTABLE R18 K76 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R19 K78 [UDim2.fromOffset]
  LOADN R20 200
  LOADN R21 66
  CALL R19 2 1
  SETTABLEKS R19 R18 K12 ["Size"]
  LOADK R19 K79 ["$ForegroundMain"]
  SETTABLEKS R19 R18 K13 ["BackgroundColor3"]
  GETIMPORT R19 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K15 ["AutomaticSize"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K31 [":hover"]
  DUPTABLE R22 K86 [{"BackgroundColor3"}]
  LOADK R23 K62 ["$ForegroundContrast"]
  SETTABLEKS R23 R22 K13 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K97 [".AvatarSettings-LeftTextPrimary"]
  DUPTABLE R19 K98 [{"TextColor3", "TextXAlignment"}]
  LOADK R20 K99 ["$TextPrimary"]
  SETTABLEKS R20 R19 K32 ["TextColor3"]
  GETIMPORT R20 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K26 ["TextXAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K100 [".AvatarSettings-SettingsPage"]
  DUPTABLE R20 K76 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R21 K19 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K12 ["Size"]
  LOADK R21 K79 ["$ForegroundMain"]
  SETTABLEKS R21 R20 K13 ["BackgroundColor3"]
  GETIMPORT R21 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K15 ["AutomaticSize"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K101 ["::UIListLayout"]
  DUPTABLE R24 K103 [{"Padding"}]
  GETIMPORT R25 K69 [UDim.new]
  LOADN R26 0
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K102 ["Padding"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K104 [".AvatarSettings-SettingsContent"]
  DUPTABLE R21 K86 [{"BackgroundColor3"}]
  LOADK R22 K79 ["$ForegroundMain"]
  SETTABLEKS R22 R21 K13 ["BackgroundColor3"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K64 ["::UIPadding"]
  DUPTABLE R25 K105 [{"PaddingTop"}]
  GETIMPORT R26 K69 [UDim.new]
  LOADN R27 0
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K65 ["PaddingTop"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K106 [".Component-ExpandableSection"]
  DUPTABLE R22 K107 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K14 ["BackgroundTransparency"]
  GETIMPORT R23 K61 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K12 ["Size"]
  GETIMPORT R23 K109 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K15 ["AutomaticSize"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K110 [".Component-ExpandableSection-Header"]
  DUPTABLE R7 K111 [{"BorderColor3", "BackgroundColor3", "Size", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R8 K63 ["$Divider"]
  SETTABLEKS R8 R7 K58 ["BorderColor3"]
  LOADK R8 K62 ["$ForegroundContrast"]
  SETTABLEKS R8 R7 K13 ["BackgroundColor3"]
  GETIMPORT R8 K61 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 24
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Size"]
  LOADN R8 0
  SETTABLEKS R8 R7 K14 ["BackgroundTransparency"]
  LOADN R8 1
  SETTABLEKS R8 R7 K27 ["BorderSizePixel"]
  NEWTABLE R8 0 2
  MOVE R9 R2
  LOADK R10 K64 ["::UIPadding"]
  DUPTABLE R11 K113 [{"PaddingLeft"}]
  GETIMPORT R12 K69 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K112 ["PaddingLeft"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K101 ["::UIListLayout"]
  DUPTABLE R12 K103 [{"Padding"}]
  GETIMPORT R13 K69 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K102 ["Padding"]
  CALL R10 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K114 [".Component-ExpandableSection-Content"]
  DUPTABLE R8 K116 [{"AutomaticSize", "Position", "Size"}]
  GETIMPORT R9 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K15 ["AutomaticSize"]
  GETIMPORT R9 K78 [UDim2.fromOffset]
  LOADN R10 0
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K115 ["Position"]
  GETIMPORT R9 K19 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Size"]
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K64 ["::UIPadding"]
  DUPTABLE R12 K117 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K69 [UDim.new]
  LOADN R14 0
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K112 ["PaddingLeft"]
  GETIMPORT R13 K69 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K65 ["PaddingTop"]
  GETIMPORT R13 K69 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K66 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K101 ["::UIListLayout"]
  DUPTABLE R13 K103 [{"Padding"}]
  GETIMPORT R14 K69 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K102 ["Padding"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K118 [".Component-ExpandableSection-Arrow"]
  DUPTABLE R9 K120 [{"Image", "ImageRectSize", "Size"}]
  LOADK R10 K121 ["$ArrowRightImage"]
  SETTABLEKS R10 R9 K41 ["Image"]
  GETIMPORT R10 K74 [Vector2.new]
  LOADN R11 16
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K119 ["ImageRectSize"]
  GETIMPORT R10 K78 [UDim2.fromOffset]
  LOADN R11 16
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K53 [".Expanded"]
  DUPTABLE R13 K42 [{"Image"}]
  LOADK R14 K122 ["$ArrowDownImage"]
  SETTABLEKS R14 R13 K41 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K123 [".Invisible"]
  DUPTABLE R14 K125 [{"BackgroundTransparency", "ImageTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K14 ["BackgroundTransparency"]
  LOADN R15 1
  SETTABLEKS R15 R14 K124 ["ImageTransparency"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K126 [".Component-WarningIcon"]
  DUPTABLE R10 K128 [{"BackgroundTransparency", "Image", "Size", "SizeConstraint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["BackgroundTransparency"]
  LOADK R11 K129 ["$WarningLargeImage"]
  SETTABLEKS R11 R10 K41 ["Image"]
  GETIMPORT R11 K19 [UDim2.fromScale]
  LOADK R12 K130 [0.8]
  LOADK R13 K130 [0.8]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K132 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R11 R10 K127 ["SizeConstraint"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K133 [".Component-HoverTextBox"]
  DUPTABLE R11 K136 [{"TextWrapped", "TextXAlignment", "TextYAlignment", "AutomaticSize", "BackgroundColor3"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K134 ["TextWrapped"]
  GETIMPORT R12 K138 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K26 ["TextXAlignment"]
  GETIMPORT R12 K139 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K135 ["TextYAlignment"]
  GETIMPORT R12 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K15 ["AutomaticSize"]
  LOADK R12 K140 ["$ActionEnabled"]
  SETTABLEKS R12 R11 K13 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K93 ["::UICorner"]
  CALL R13 1 1
  MOVE R14 R2
  LOADK R15 K64 ["::UIPadding"]
  DUPTABLE R16 K142 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R17 K69 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K66 ["PaddingBottom"]
  GETIMPORT R17 K69 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K112 ["PaddingLeft"]
  GETIMPORT R17 K69 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K141 ["PaddingRight"]
  GETIMPORT R17 K69 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K65 ["PaddingTop"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K143 [".GenericModeSelector-Subtext"]
  DUPTABLE R12 K145 [{"TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "TextColor3", "TextSize"}]
  GETIMPORT R13 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K26 ["TextXAlignment"]
  GETIMPORT R13 K147 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K135 ["TextYAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K134 ["TextWrapped"]
  GETIMPORT R13 K109 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  LOADK R13 K39 ["$TextSecondary"]
  SETTABLEKS R13 R12 K32 ["TextColor3"]
  LOADN R13 18
  SETTABLEKS R13 R12 K144 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K148 [".RadioButtonContainer >> TextLabel #DescriptionTextLabel"]
  DUPTABLE R13 K149 [{"TextSize", "TextColor3"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K144 ["TextSize"]
  LOADK R14 K39 ["$TextSecondary"]
  SETTABLEKS R14 R13 K32 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K150 [".PresetHoverTooltipDivider"]
  DUPTABLE R14 K151 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R15 K61 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K14 ["BackgroundTransparency"]
  LOADK R15 K99 ["$TextPrimary"]
  SETTABLEKS R15 R14 K13 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K152 [".PresetHoverTooltip"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K153 [">> Frame #ContentPane"]
  DUPTABLE R19 K154 [{"AutomaticSize"}]
  GETIMPORT R20 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K15 ["AutomaticSize"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K155 [">> ImageLabel #DropShadow"]
  DUPTABLE R20 K154 [{"AutomaticSize"}]
  GETIMPORT R21 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K15 ["AutomaticSize"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K156 [".PresetHoverTooltipCheckImage"]
  DUPTABLE R16 K42 [{"Image"}]
  LOADK R17 K157 ["$PresetTooltipCheckImage"]
  SETTABLEKS R17 R16 K41 ["Image"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K158 [".PresetHoverTooltipXImage"]
  DUPTABLE R17 K42 [{"Image"}]
  LOADK R18 K159 ["$PresetTooltipXImage"]
  SETTABLEKS R18 R17 K41 ["Image"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K160 [".GeneralSettingsGameplayDescriptionImage"]
  DUPTABLE R18 K42 [{"Image"}]
  LOADK R19 K161 ["$PresetInfoImage"]
  SETTABLEKS R19 R18 K41 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K162 [".ColumnSpacing-Standard ::UIListLayout"]
  DUPTABLE R19 K103 [{"Padding"}]
  GETIMPORT R20 K69 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K102 ["Padding"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K163 [".VerticalFlex-Fill ::UIListLayout"]
  DUPTABLE R20 K165 [{"VerficalFlex"}]
  GETIMPORT R21 K168 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R21 R20 K164 ["VerficalFlex"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K169 [".PublishBar"]
  DUPTABLE R21 K170 [{"BackgroundTransparency"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K14 ["BackgroundTransparency"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K82 ["::UIStroke"]
  DUPTABLE R25 K171 [{"Color"}]
  LOADK R26 K63 ["$Divider"]
  SETTABLEKS R26 R25 K83 ["Color"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K64 ["::UIPadding"]
  DUPTABLE R26 K172 [{"PaddingRight"}]
  GETIMPORT R27 K69 [UDim.new]
  LOADN R28 0
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K141 ["PaddingRight"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K101 ["::UIListLayout"]
  DUPTABLE R27 K103 [{"Padding"}]
  GETIMPORT R28 K69 [UDim.new]
  LOADN R29 0
  LOADN R30 8
  CALL R28 2 1
  SETTABLEKS R28 R27 K102 ["Padding"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K173 [".TitledComponentLabel"]
  DUPTABLE R22 K175 [{"FontFace"}]
  GETIMPORT R23 K177 [Font.new]
  LOADK R24 K178 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R25 K181 [Enum.FontWeight.Regular]
  GETIMPORT R26 K184 [Enum.FontStyle.Normal]
  CALL R23 3 1
  SETTABLEKS R23 R22 K174 ["FontFace"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K185 [".PresetImage"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 3
  MOVE R9 R2
  LOADK R10 K64 ["::UIPadding"]
  DUPTABLE R11 K67 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K69 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K65 ["PaddingTop"]
  GETIMPORT R12 K69 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K66 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K186 [".PlayerChoice"]
  DUPTABLE R12 K42 [{"Image"}]
  LOADK R13 K187 ["$PlayerChoicePresetImage"]
  SETTABLEKS R13 R12 K41 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K188 [".Consistent"]
  DUPTABLE R13 K42 [{"Image"}]
  LOADK R14 K189 ["$ConsistentPresetImage"]
  SETTABLEKS R14 R13 K41 ["Image"]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K190 [".HoverTooltipPresetImage"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K186 [".PlayerChoice"]
  DUPTABLE R12 K42 [{"Image"}]
  LOADK R13 K187 ["$PlayerChoicePresetImage"]
  SETTABLEKS R13 R12 K41 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K188 [".Consistent"]
  DUPTABLE R13 K42 [{"Image"}]
  LOADK R14 K189 ["$ConsistentPresetImage"]
  SETTABLEKS R14 R13 K41 ["Image"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K191 ["TextLabel"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K192 [".Bold"]
  DUPTABLE R13 K175 [{"FontFace"}]
  GETIMPORT R14 K177 [Font.new]
  LOADK R15 K178 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R16 K194 [Enum.FontWeight.Bold]
  GETIMPORT R17 K184 [Enum.FontStyle.Normal]
  CALL R14 3 1
  SETTABLEKS R14 R13 K174 ["FontFace"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K195 ["TextButton"]
  DUPTABLE R10 K196 [{"FontFace", "TextSize"}]
  GETIMPORT R11 K177 [Font.new]
  LOADK R12 K178 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R13 K198 [Enum.FontWeight.Medium]
  GETIMPORT R14 K184 [Enum.FontStyle.Normal]
  CALL R11 3 1
  SETTABLEKS R11 R10 K174 ["FontFace"]
  LOADN R11 18
  SETTABLEKS R11 R10 K144 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K199 ["UIListLayout"]
  DUPTABLE R11 K201 [{"SortOrder"}]
  GETIMPORT R12 K203 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K200 ["SortOrder"]
  CALL R9 2 -1
  SETLIST R4 R5 -1 [33]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["AvatarSettings"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
