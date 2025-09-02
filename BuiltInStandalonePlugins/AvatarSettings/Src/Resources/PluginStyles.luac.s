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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAvatarSettingsRemoveMouseDownNavbarColor"]
  CALL R4 1 1
  NEWTABLE R5 0 39
  MOVE R6 R2
  LOADK R7 K14 [".Component-CategoryList"]
  DUPTABLE R8 K19 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R9 K22 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Size"]
  LOADK R9 K23 ["$BackgroundPaper"]
  SETTABLEKS R9 R8 K16 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K17 ["BackgroundTransparency"]
  GETIMPORT R9 K26 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K18 ["AutomaticSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K27 [".Component-CategoryListItem"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K28 [">> TextButton"]
  DUPTABLE R13 K32 [{"TextXAlignment", "AutomaticSize", "BorderSizePixel", "AutoButtonColor"}]
  GETIMPORT R14 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K29 ["TextXAlignment"]
  GETIMPORT R14 K26 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K18 ["AutomaticSize"]
  LOADN R14 0
  SETTABLEKS R14 R13 K30 ["BorderSizePixel"]
  MOVE R15 R4
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADB R14 0
  JUMP [+1]
  LOADB R14 1
  SETTABLEKS R14 R13 K31 ["AutoButtonColor"]
  NEWTABLE R14 0 4
  MOVE R15 R2
  LOADK R16 K35 [":hover"]
  DUPTABLE R17 K37 [{"BackgroundColor3", "TextColor3"}]
  MOVE R19 R4
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K38 ["$ActionSelected"]
  SETTABLEKS R18 R17 K16 ["BackgroundColor3"]
  MOVE R19 R4
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K39 ["$CategoryListTextContrast"]
  SETTABLEKS R18 R17 K36 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K40 [":press"]
  DUPTABLE R18 K37 [{"BackgroundColor3", "TextColor3"}]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K38 ["$ActionSelected"]
  SETTABLEKS R19 R18 K16 ["BackgroundColor3"]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K39 ["$CategoryListTextContrast"]
  SETTABLEKS R19 R18 K36 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K41 [".Selected"]
  DUPTABLE R19 K37 [{"BackgroundColor3", "TextColor3"}]
  LOADK R20 K38 ["$ActionSelected"]
  SETTABLEKS R20 R19 K16 ["BackgroundColor3"]
  LOADK R20 K39 ["$CategoryListTextContrast"]
  SETTABLEKS R20 R19 K36 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K42 [".Unselected"]
  DUPTABLE R20 K37 [{"BackgroundColor3", "TextColor3"}]
  LOADK R21 K23 ["$BackgroundPaper"]
  SETTABLEKS R21 R20 K16 ["BackgroundColor3"]
  LOADK R21 K43 ["$TextSecondary"]
  SETTABLEKS R21 R20 K36 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K44 [".GeneralCategoryImage"]
  DUPTABLE R10 K46 [{"Image"}]
  LOADK R11 K47 ["$GeneralCategoryImage"]
  SETTABLEKS R11 R10 K45 ["Image"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K48 [".BodyCategoryImage"]
  DUPTABLE R11 K46 [{"Image"}]
  LOADK R12 K49 ["$BodyCategoryImage"]
  SETTABLEKS R12 R11 K45 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K50 [".MovementCategoryImage"]
  DUPTABLE R12 K46 [{"Image"}]
  LOADK R13 K51 ["$MovementCategoryImage"]
  SETTABLEKS R13 R12 K45 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K52 [".AccessoriesCategoryImage"]
  DUPTABLE R13 K46 [{"Image"}]
  LOADK R14 K53 ["$AccessoriesCategoryImage"]
  SETTABLEKS R14 R13 K45 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K54 [".ClothingCategoryImage"]
  DUPTABLE R14 K46 [{"Image"}]
  LOADK R15 K55 ["$ClothingCategoryImage"]
  SETTABLEKS R15 R14 K45 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K56 [".ToggleSidebarExpandImage"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K57 [".Expanded"]
  DUPTABLE R19 K46 [{"Image"}]
  LOADK R20 K58 ["$CollapseSidebarImage"]
  SETTABLEKS R20 R19 K45 ["Image"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K59 [".Collapsed"]
  DUPTABLE R20 K46 [{"Image"}]
  LOADK R21 K60 ["$ExpandSidebarImage"]
  SETTABLEKS R21 R20 K45 ["Image"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K61 [".Component-NavigationBar"]
  DUPTABLE R16 K63 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderColor3"}]
  GETIMPORT R17 K65 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 44
  CALL R17 4 1
  SETTABLEKS R17 R16 K15 ["Size"]
  LOADK R17 K66 ["$ForegroundContrast"]
  SETTABLEKS R17 R16 K16 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K67 ["$Divider"]
  SETTABLEKS R17 R16 K62 ["BorderColor3"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K68 ["::UIPadding"]
  DUPTABLE R20 K71 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K69 ["PaddingTop"]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K70 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K74 ["::UISizeConstraint"]
  DUPTABLE R21 K76 [{"MinSize"}]
  GETIMPORT R22 K78 [Vector2.new]
  LOADN R23 139
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K75 ["MinSize"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K79 [".AvatarTypeDropdownItem"]
  DUPTABLE R17 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R18 K82 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 66
  CALL R18 2 1
  SETTABLEKS R18 R17 K15 ["Size"]
  LOADK R18 K83 ["$ForegroundMain"]
  SETTABLEKS R18 R17 K16 ["BackgroundColor3"]
  GETIMPORT R18 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K18 ["AutomaticSize"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K86 ["::UIStroke"]
  DUPTABLE R21 K89 [{"Color", "Thickness"}]
  LOADK R22 K67 ["$Divider"]
  SETTABLEKS R22 R21 K87 ["Color"]
  LOADN R22 1
  SETTABLEKS R22 R21 K88 ["Thickness"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K35 [":hover"]
  DUPTABLE R22 K90 [{"BackgroundColor3"}]
  LOADK R23 K66 ["$ForegroundContrast"]
  SETTABLEKS R23 R22 K16 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K91 [".AvatarTypeDropdownToggleButton"]
  DUPTABLE R18 K92 [{"Image", "BackgroundTransparency"}]
  LOADK R19 K93 ["$AvatarTypeDropdownToggleImage"]
  SETTABLEKS R19 R18 K45 ["Image"]
  LOADN R19 1
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K94 [".Enabled"]
  DUPTABLE R22 K95 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K96 ["$ActionActivated"]
  SETTABLEKS R23 R22 K16 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K97 ["::UICorner"]
  DUPTABLE R23 K99 [{"CornerRadius"}]
  GETIMPORT R24 K73 [UDim.new]
  LOADN R25 0
  LOADN R26 3
  CALL R24 2 1
  SETTABLEKS R24 R23 K98 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K100 [".DropdownItem"]
  DUPTABLE R19 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R20 K82 [UDim2.fromOffset]
  LOADN R21 200
  LOADN R22 66
  CALL R20 2 1
  SETTABLEKS R20 R19 K15 ["Size"]
  LOADK R20 K83 ["$ForegroundMain"]
  SETTABLEKS R20 R19 K16 ["BackgroundColor3"]
  GETIMPORT R20 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K18 ["AutomaticSize"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K35 [":hover"]
  DUPTABLE R23 K90 [{"BackgroundColor3"}]
  LOADK R24 K66 ["$ForegroundContrast"]
  SETTABLEKS R24 R23 K16 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K101 [".AvatarSettings-LeftTextPrimary"]
  DUPTABLE R20 K102 [{"TextColor3", "TextXAlignment"}]
  LOADK R21 K103 ["$TextPrimary"]
  SETTABLEKS R21 R20 K36 ["TextColor3"]
  GETIMPORT R21 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K29 ["TextXAlignment"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K104 [".AvatarSettings-SettingsPage"]
  DUPTABLE R21 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
  GETIMPORT R22 K22 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K15 ["Size"]
  LOADK R22 K83 ["$ForegroundMain"]
  SETTABLEKS R22 R21 K16 ["BackgroundColor3"]
  GETIMPORT R22 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K18 ["AutomaticSize"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K105 ["::UIListLayout"]
  DUPTABLE R25 K107 [{"Padding"}]
  GETIMPORT R26 K73 [UDim.new]
  LOADN R27 0
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K106 ["Padding"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K108 [".AvatarSettings-SettingsContent"]
  DUPTABLE R22 K90 [{"BackgroundColor3"}]
  LOADK R23 K83 ["$ForegroundMain"]
  SETTABLEKS R23 R22 K16 ["BackgroundColor3"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K68 ["::UIPadding"]
  DUPTABLE R26 K109 [{"PaddingTop"}]
  GETIMPORT R27 K73 [UDim.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K69 ["PaddingTop"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K110 [".Component-ExpandableSection"]
  DUPTABLE R23 K111 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  GETIMPORT R24 K65 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K15 ["Size"]
  GETIMPORT R24 K113 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K18 ["AutomaticSize"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K114 [".Component-ExpandableSection-Header"]
  DUPTABLE R8 K115 [{"BorderColor3", "BackgroundColor3", "Size", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R9 K67 ["$Divider"]
  SETTABLEKS R9 R8 K62 ["BorderColor3"]
  LOADK R9 K66 ["$ForegroundContrast"]
  SETTABLEKS R9 R8 K16 ["BackgroundColor3"]
  GETIMPORT R9 K65 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K15 ["Size"]
  LOADN R9 0
  SETTABLEKS R9 R8 K17 ["BackgroundTransparency"]
  LOADN R9 1
  SETTABLEKS R9 R8 K30 ["BorderSizePixel"]
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K68 ["::UIPadding"]
  DUPTABLE R12 K117 [{"PaddingLeft"}]
  GETIMPORT R13 K73 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K116 ["PaddingLeft"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K105 ["::UIListLayout"]
  DUPTABLE R13 K107 [{"Padding"}]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K106 ["Padding"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K118 [".Component-ExpandableSection-Content"]
  DUPTABLE R9 K120 [{"AutomaticSize", "Position", "Size"}]
  GETIMPORT R10 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K18 ["AutomaticSize"]
  GETIMPORT R10 K82 [UDim2.fromOffset]
  LOADN R11 0
  LOADN R12 24
  CALL R10 2 1
  SETTABLEKS R10 R9 K119 ["Position"]
  GETIMPORT R10 K22 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Size"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K68 ["::UIPadding"]
  DUPTABLE R13 K121 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K116 ["PaddingLeft"]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K69 ["PaddingTop"]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K70 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K105 ["::UIListLayout"]
  DUPTABLE R14 K107 [{"Padding"}]
  GETIMPORT R15 K73 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K106 ["Padding"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K122 [".Component-ExpandableSection-Arrow"]
  DUPTABLE R10 K124 [{"Image", "ImageRectSize", "Size"}]
  LOADK R11 K125 ["$ArrowRightImage"]
  SETTABLEKS R11 R10 K45 ["Image"]
  GETIMPORT R11 K78 [Vector2.new]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K123 ["ImageRectSize"]
  GETIMPORT R11 K82 [UDim2.fromOffset]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Size"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K57 [".Expanded"]
  DUPTABLE R14 K46 [{"Image"}]
  LOADK R15 K126 ["$ArrowDownImage"]
  SETTABLEKS R15 R14 K45 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K127 [".Invisible"]
  DUPTABLE R15 K129 [{"BackgroundTransparency", "ImageTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  LOADN R16 1
  SETTABLEKS R16 R15 K128 ["ImageTransparency"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K130 [".Component-WarningIcon"]
  DUPTABLE R11 K132 [{"BackgroundTransparency", "Image", "Size", "SizeConstraint"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K17 ["BackgroundTransparency"]
  LOADK R12 K133 ["$WarningLargeImage"]
  SETTABLEKS R12 R11 K45 ["Image"]
  GETIMPORT R12 K22 [UDim2.fromScale]
  LOADK R13 K134 [0.8]
  LOADK R14 K134 [0.8]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Size"]
  GETIMPORT R12 K136 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R12 R11 K131 ["SizeConstraint"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K137 [".AssetIdSelector"]
  DUPTABLE R15 K138 [{"Size"}]
  GETIMPORT R16 K82 [UDim2.fromOffset]
  LOADN R17 20
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K139 [".Component-HoverTextBox"]
  DUPTABLE R12 K142 [{"TextWrapped", "TextXAlignment", "TextYAlignment", "AutomaticSize", "BackgroundColor3"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K140 ["TextWrapped"]
  GETIMPORT R13 K144 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K29 ["TextXAlignment"]
  GETIMPORT R13 K145 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K141 ["TextYAlignment"]
  GETIMPORT R13 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K18 ["AutomaticSize"]
  LOADK R13 K146 ["$ActionEnabled"]
  SETTABLEKS R13 R12 K16 ["BackgroundColor3"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K97 ["::UICorner"]
  CALL R14 1 1
  MOVE R15 R2
  LOADK R16 K68 ["::UIPadding"]
  DUPTABLE R17 K148 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K70 ["PaddingBottom"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K116 ["PaddingLeft"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K147 ["PaddingRight"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K69 ["PaddingTop"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K149 [".GenericModeSelector-Subtext"]
  DUPTABLE R13 K151 [{"TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "TextColor3", "TextSize"}]
  GETIMPORT R14 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K29 ["TextXAlignment"]
  GETIMPORT R14 K153 [Enum.TextYAlignment.Top]
  SETTABLEKS R14 R13 K141 ["TextYAlignment"]
  LOADB R14 1
  SETTABLEKS R14 R13 K140 ["TextWrapped"]
  GETIMPORT R14 K113 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K18 ["AutomaticSize"]
  LOADK R14 K43 ["$TextSecondary"]
  SETTABLEKS R14 R13 K36 ["TextColor3"]
  LOADN R14 18
  SETTABLEKS R14 R13 K150 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K154 [".RadioButtonContainer >> TextLabel #DescriptionTextLabel"]
  DUPTABLE R14 K155 [{"TextSize", "TextColor3"}]
  LOADN R15 16
  SETTABLEKS R15 R14 K150 ["TextSize"]
  LOADK R15 K43 ["$TextSecondary"]
  SETTABLEKS R15 R14 K36 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K156 [".PresetHoverTooltipDivider"]
  DUPTABLE R15 K157 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R16 K65 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  LOADK R16 K103 ["$TextPrimary"]
  SETTABLEKS R16 R15 K16 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K158 [".Separator"]
  DUPTABLE R16 K157 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R17 K65 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  CALL R17 4 1
  SETTABLEKS R17 R16 K15 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K159 ["$OtherDivider"]
  SETTABLEKS R17 R16 K16 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K160 [".PresetHoverTooltip"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K161 [">> Frame #ContentPane"]
  DUPTABLE R21 K162 [{"AutomaticSize"}]
  GETIMPORT R22 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K18 ["AutomaticSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K163 [">> ImageLabel #DropShadow"]
  DUPTABLE R22 K162 [{"AutomaticSize"}]
  GETIMPORT R23 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K18 ["AutomaticSize"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K164 [".PresetHoverTooltipCheckImage"]
  DUPTABLE R18 K46 [{"Image"}]
  LOADK R19 K165 ["$PresetTooltipCheckImage"]
  SETTABLEKS R19 R18 K45 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K166 [".PresetHoverTooltipXImage"]
  DUPTABLE R19 K46 [{"Image"}]
  LOADK R20 K167 ["$PresetTooltipXImage"]
  SETTABLEKS R20 R19 K45 ["Image"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K168 [".GeneralSettingsGameplayDescriptionImage"]
  DUPTABLE R20 K46 [{"Image"}]
  LOADK R21 K169 ["$PresetInfoImage"]
  SETTABLEKS R21 R20 K45 ["Image"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K170 [".ColumnSpacing-Standard ::UIListLayout"]
  DUPTABLE R21 K107 [{"Padding"}]
  GETIMPORT R22 K73 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K106 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K171 [".VerticalFlex-Fill ::UIListLayout"]
  DUPTABLE R22 K173 [{"VerficalFlex"}]
  GETIMPORT R23 K176 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R23 R22 K172 ["VerficalFlex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K177 [".PublishBar"]
  DUPTABLE R23 K178 [{"BackgroundTransparency"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K86 ["::UIStroke"]
  DUPTABLE R27 K179 [{"Color"}]
  LOADK R28 K67 ["$Divider"]
  SETTABLEKS R28 R27 K87 ["Color"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K68 ["::UIPadding"]
  DUPTABLE R28 K180 [{"PaddingRight"}]
  GETIMPORT R29 K73 [UDim.new]
  LOADN R30 0
  LOADN R31 8
  CALL R29 2 1
  SETTABLEKS R29 R28 K147 ["PaddingRight"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K105 ["::UIListLayout"]
  DUPTABLE R29 K107 [{"Padding"}]
  GETIMPORT R30 K73 [UDim.new]
  LOADN R31 0
  LOADN R32 8
  CALL R30 2 1
  SETTABLEKS R30 R29 K106 ["Padding"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K181 [".TitledComponentLabel"]
  DUPTABLE R8 K183 [{"FontFace"}]
  GETIMPORT R9 K185 [Font.new]
  LOADK R10 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R11 K189 [Enum.FontWeight.Regular]
  GETIMPORT R12 K192 [Enum.FontStyle.Normal]
  CALL R9 3 1
  SETTABLEKS R9 R8 K182 ["FontFace"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K193 [".PresetImage"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K68 ["::UIPadding"]
  DUPTABLE R13 K71 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K69 ["PaddingTop"]
  GETIMPORT R14 K73 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K70 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K194 [".PlayerChoice"]
  DUPTABLE R14 K46 [{"Image"}]
  LOADK R15 K195 ["$PlayerChoicePresetImage"]
  SETTABLEKS R15 R14 K45 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K196 [".Consistent"]
  DUPTABLE R15 K46 [{"Image"}]
  LOADK R16 K197 ["$ConsistentPresetImage"]
  SETTABLEKS R16 R15 K45 ["Image"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K198 [".HoverTooltipPresetImage"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K194 [".PlayerChoice"]
  DUPTABLE R14 K46 [{"Image"}]
  LOADK R15 K195 ["$PlayerChoicePresetImage"]
  SETTABLEKS R15 R14 K45 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K196 [".Consistent"]
  DUPTABLE R15 K46 [{"Image"}]
  LOADK R16 K197 ["$ConsistentPresetImage"]
  SETTABLEKS R16 R15 K45 ["Image"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K199 [".SaveToRobloxButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K200 [">> TextLabel"]
  DUPTABLE R15 K201 [{"TextSize", "FontFace"}]
  LOADN R16 20
  SETTABLEKS R16 R15 K150 ["TextSize"]
  GETIMPORT R16 K185 [Font.new]
  LOADK R17 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R18 K203 [Enum.FontWeight.Bold]
  GETIMPORT R19 K192 [Enum.FontStyle.Normal]
  CALL R16 3 1
  SETTABLEKS R16 R15 K182 ["FontFace"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K204 ["UIPadding"]
  DUPTABLE R19 K71 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K73 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K69 ["PaddingTop"]
  GETIMPORT R20 K73 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K70 ["PaddingBottom"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K205 ["TextLabel"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K206 [".Bold"]
  DUPTABLE R16 K183 [{"FontFace"}]
  GETIMPORT R17 K185 [Font.new]
  LOADK R18 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R19 K203 [Enum.FontWeight.Bold]
  GETIMPORT R20 K192 [Enum.FontStyle.Normal]
  CALL R17 3 1
  SETTABLEKS R17 R16 K182 ["FontFace"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K207 ["TextButton"]
  DUPTABLE R13 K208 [{"FontFace", "TextSize"}]
  GETIMPORT R14 K185 [Font.new]
  LOADK R15 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
  GETIMPORT R16 K210 [Enum.FontWeight.Medium]
  GETIMPORT R17 K192 [Enum.FontStyle.Normal]
  CALL R14 3 1
  SETTABLEKS R14 R13 K182 ["FontFace"]
  LOADN R14 18
  SETTABLEKS R14 R13 K150 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K211 ["UIListLayout"]
  DUPTABLE R14 K213 [{"SortOrder"}]
  GETIMPORT R15 K215 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K212 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R5 R6 -1 [33]
  NEWTABLE R6 0 0
  MOVE R7 R3
  LOADK R8 K2 ["AvatarSettings"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
