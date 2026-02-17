PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 8 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["CloseWidget"]
  LOADK R6 K1 ["rbxasset://textures/ManageCollaborators/closeWidget_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["RightArrow"]
  LOADK R6 K3 ["rbxasset://textures/ManageCollaborators/arrowRight_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["DownArrow"]
  LOADK R6 K5 ["rbxasset://textures/ManageCollaborators/arrowDown_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["FriendIcon"]
  LOADK R6 K7 ["rbxasset://textures/ManageCollaborators/friendIcon_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["FooterBorder"]
  GETIMPORT R6 K11 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["Border"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["Gray"]
  GETTABLEN R6 R7 70
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R3 0
  GETUPVAL R4 4
  NEWTABLE R5 8 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["CloseWidget"]
  LOADK R7 K14 ["rbxasset://textures/ManageCollaborators/closeWidget_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["RightArrow"]
  LOADK R7 K15 ["rbxasset://textures/ManageCollaborators/arrowRight_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["DownArrow"]
  LOADK R7 K16 ["rbxasset://textures/ManageCollaborators/arrowDown_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["FriendIcon"]
  LOADK R7 K17 ["rbxasset://textures/ManageCollaborators/friendIcon_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["FooterBorder"]
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 244
  LOADN R9 244
  LOADN R10 244
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["Dropdown"]
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 228
  LOADN R9 238
  LOADN R10 254
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["Border"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["Gray"]
  GETTABLEN R7 R8 40
  SETTABLE R7 R5 R6
  CALL R3 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K19 ["mock"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  JUMP [+7]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K20 ["new"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 6
  NAMECALL R4 R1 K21 ["extend"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R3 R2 K8 ["getRawComponentStyle"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Cryo"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K10 ["UIData"]
  GETTABLEKS R6 R2 K11 ["ComponentSymbols"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R5 K12 ["ExpandablePane"]
  GETTABLEKS R8 R9 K13 ["style"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["&Default"]
  GETTABLEKS R9 R7 K15 ["Header"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R5 K16 ["Button"]
  GETTABLEKS R11 R12 K13 ["style"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["&RoundPrimary"]
  GETTABLEKS R12 R10 K18 ["&Round"]
  GETTABLEKS R13 R1 K7 ["Style"]
  GETTABLEKS R15 R13 K19 ["Themes"]
  GETTABLEKS R14 R15 K20 ["BaseTheme"]
  GETTABLEKS R16 R13 K19 ["Themes"]
  GETTABLEKS R15 R16 K21 ["StudioTheme"]
  GETTABLEKS R17 R13 K19 ["Themes"]
  GETTABLEKS R16 R17 K22 ["DarkTheme"]
  GETTABLEKS R18 R13 K19 ["Themes"]
  GETTABLEKS R17 R18 K23 ["LightTheme"]
  GETTABLEKS R18 R13 K24 ["StyleKey"]
  GETTABLEKS R19 R13 K25 ["ColorSystem"]
  GETTABLEKS R20 R1 K26 ["Dash"]
  GETTABLEKS R21 R20 K27 ["join"]
  GETIMPORT R22 K29 [game]
  LOADK R24 K30 ["Collab8818_ShowSearchItemDisplayName"]
  NAMECALL R22 R22 K31 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K29 [game]
  LOADK R25 K32 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
  NAMECALL R23 R23 K31 ["GetFastFlag"]
  CALL R23 2 1
  GETIMPORT R24 K29 [game]
  LOADK R26 K33 ["UpsellCollabSafety2"]
  NAMECALL R24 R24 K31 ["GetFastFlag"]
  CALL R24 2 1
  GETIMPORT R25 K29 [game]
  LOADK R27 K34 ["ManageCollabFilterWidgetSpacingFix"]
  NAMECALL R25 R25 K31 ["GetFastFlag"]
  CALL R25 2 1
  JUMPIFNOT R23 [+3]
  GETIMPORT R26 K38 [Enum.Font.BuilderSans]
  JUMP [+2]
  GETIMPORT R26 K40 [Enum.Font.SourceSans]
  JUMPIFNOT R23 [+3]
  GETIMPORT R27 K42 [Enum.Font.BuilderSansMedium]
  JUMP [+2]
  GETIMPORT R27 K44 [Enum.Font.SourceSansSemibold]
  NEWTABLE R28 32 0
  GETTABLEKS R29 R6 K12 ["ExpandablePane"]
  MOVE R30 R21
  GETTABLEKS R32 R6 K12 ["ExpandablePane"]
  GETTABLE R31 R14 R32
  NEWTABLE R32 1 0
  MOVE R33 R21
  MOVE R34 R8
  DUPTABLE R35 K45 [{"Header"}]
  MOVE R36 R21
  MOVE R37 R9
  DUPTABLE R38 K49 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R39 K51 [{"Size"}]
  GETIMPORT R40 K54 [UDim2.fromOffset]
  LOADN R41 0
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K50 ["Size"]
  SETTABLEKS R39 R38 K46 ["Arrow"]
  GETIMPORT R39 K56 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R39 R38 K47 ["HorizontalAlignment"]
  LOADN R39 0
  SETTABLEKS R39 R38 K48 ["Padding"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K15 ["Header"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K57 ["&Arrowless"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R6 K58 ["SelectInput"]
  MOVE R30 R21
  GETTABLEKS R32 R6 K58 ["SelectInput"]
  GETTABLE R31 R14 R32
  NEWTABLE R32 2 0
  MOVE R33 R21
  MOVE R34 R8
  DUPTABLE R35 K60 [{"PlaceholderTextColor"}]
  GETTABLEKS R36 R18 K61 ["TitlebarText"]
  SETTABLEKS R36 R35 K59 ["PlaceholderTextColor"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K62 ["&Editable"]
  MOVE R33 R21
  MOVE R34 R8
  DUPTABLE R35 K60 [{"PlaceholderTextColor"}]
  GETTABLEKS R36 R18 K63 ["DimmedText"]
  SETTABLEKS R36 R35 K59 ["PlaceholderTextColor"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K64 ["&NonEditable"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R6 K16 ["Button"]
  MOVE R30 R21
  GETTABLEKS R32 R6 K16 ["Button"]
  GETTABLE R31 R14 R32
  NEWTABLE R32 4 0
  MOVE R33 R21
  MOVE R34 R11
  DUPTABLE R35 K66 [{"Font", "TextSize"}]
  SETTABLEKS R26 R35 K36 ["Font"]
  LOADN R36 24
  SETTABLEKS R36 R35 K65 ["TextSize"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K67 ["&Active"]
  MOVE R33 R21
  MOVE R34 R11
  DUPTABLE R35 K66 [{"Font", "TextSize"}]
  SETTABLEKS R26 R35 K36 ["Font"]
  LOADN R36 24
  SETTABLEKS R36 R35 K65 ["TextSize"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K68 ["&Passive"]
  MOVE R33 R21
  MOVE R34 R12
  DUPTABLE R35 K66 [{"Font", "TextSize"}]
  SETTABLEKS R26 R35 K36 ["Font"]
  LOADN R36 24
  SETTABLEKS R36 R35 K65 ["TextSize"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K69 ["&Cancel"]
  MOVE R33 R21
  MOVE R34 R12
  DUPTABLE R35 K71 [{"Font", "TextSize", "border"}]
  SETTABLEKS R26 R35 K36 ["Font"]
  LOADN R36 22
  SETTABLEKS R36 R35 K65 ["TextSize"]
  GETTABLEKS R36 R18 K72 ["Border"]
  SETTABLEKS R36 R35 K70 ["border"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K73 ["&Pill"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R6 K74 ["StyledDialog"]
  GETTABLEKS R31 R4 K75 ["Dictionary"]
  GETTABLEKS R30 R31 K27 ["join"]
  MOVE R31 R3
  LOADK R32 K74 ["StyledDialog"]
  CALL R31 1 1
  NEWTABLE R32 2 0
  DUPTABLE R33 K79 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R34 K40 [Enum.Font.SourceSans]
  SETTABLEKS R34 R33 K36 ["Font"]
  LOADN R34 24
  SETTABLEKS R34 R33 K76 ["ButtonPadding"]
  LOADN R34 0
  SETTABLEKS R34 R33 K77 ["ContentPadding"]
  GETIMPORT R34 K81 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R34 R33 K78 ["ButtonHorizontalAlignment"]
  SETTABLEKS R33 R32 K82 ["&CancelDialog"]
  DUPTABLE R33 K79 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R34 K40 [Enum.Font.SourceSans]
  SETTABLEKS R34 R33 K36 ["Font"]
  LOADN R34 24
  SETTABLEKS R34 R33 K76 ["ButtonPadding"]
  LOADN R34 0
  SETTABLEKS R34 R33 K77 ["ContentPadding"]
  GETIMPORT R34 K81 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R34 R33 K78 ["ButtonHorizontalAlignment"]
  SETTABLEKS R33 R32 K83 ["&EnableTeamCreateDialog"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R6 K84 ["DropdownMenu"]
  GETTABLEKS R31 R4 K75 ["Dictionary"]
  GETTABLEKS R30 R31 K27 ["join"]
  MOVE R31 R3
  LOADK R32 K84 ["DropdownMenu"]
  CALL R31 1 1
  NEWTABLE R32 1 0
  DUPTABLE R33 K87 [{"Offset", "BackgroundColor"}]
  GETIMPORT R34 K90 [Vector2.new]
  LOADN R35 244
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K85 ["Offset"]
  JUMPIFNOT R22 [+3]
  GETTABLEKS R34 R18 K91 ["MainBackground"]
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K86 ["BackgroundColor"]
  SETTABLEKS R33 R32 K92 ["&Search"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R18 K91 ["MainBackground"]
  SETTABLEKS R29 R28 K93 ["backgroundColor"]
  DUPTABLE R29 K97 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 22
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K100 ["SubText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K94 ["Subtitle"]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 20
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K95 ["Normal"]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 16
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K96 ["Subtext"]
  SETTABLEKS R29 R28 K101 ["fontStyle"]
  DUPTABLE R29 K104 [{"padding", "edgePadding"}]
  LOADN R30 10
  SETTABLEKS R30 R29 K102 ["padding"]
  JUMPIFNOT R23 [+2]
  LOADN R30 20
  JUMP [+1]
  LOADN R30 67
  SETTABLEKS R30 R29 K103 ["edgePadding"]
  SETTABLEKS R29 R28 K105 ["buttonBar"]
  DUPTABLE R29 K108 [{"TitleText", "DescriptionText"}]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R27 R30 K36 ["Font"]
  LOADN R31 22
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K106 ["TitleText"]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 18
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K107 ["DescriptionText"]
  SETTABLEKS R29 R28 K109 ["confirmTcDialog"]
  DUPTABLE R29 K112 [{"Text", "Size", "Position"}]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R31 K40 [Enum.Font.SourceSans]
  SETTABLEKS R31 R30 K36 ["Font"]
  LOADN R31 24
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K110 ["Text"]
  GETIMPORT R30 K90 [Vector2.new]
  LOADN R31 87
  LOADN R32 65
  CALL R30 2 1
  SETTABLEKS R30 R29 K50 ["Size"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADK R31 K114 [0.5]
  LOADN R32 0
  LOADK R33 K114 [0.5]
  LOADN R34 10
  CALL R30 4 1
  SETTABLEKS R30 R29 K111 ["Position"]
  SETTABLEKS R29 R28 K115 ["cancelDialog"]
  DUPTABLE R29 K112 [{"Text", "Size", "Position"}]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R31 K40 [Enum.Font.SourceSans]
  SETTABLEKS R31 R30 K36 ["Font"]
  LOADN R31 24
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K110 ["Text"]
  GETIMPORT R30 K90 [Vector2.new]
  LOADN R31 87
  LOADN R32 65
  CALL R30 2 1
  SETTABLEKS R30 R29 K50 ["Size"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADK R31 K114 [0.5]
  LOADN R32 0
  LOADK R33 K114 [0.5]
  LOADN R34 10
  CALL R30 4 1
  SETTABLEKS R30 R29 K111 ["Position"]
  SETTABLEKS R29 R28 K116 ["enableTeamCreateDialog"]
  DUPTABLE R29 K118 [{"Text", "publishButton"}]
  DUPTABLE R30 K120 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 20
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K121 ["MainText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  LOADN R31 70
  SETTABLEKS R31 R30 K119 ["YOffset"]
  SETTABLEKS R30 R29 K110 ["Text"]
  DUPTABLE R30 K125 [{"offset", "paddingX", "paddingY"}]
  LOADN R31 125
  SETTABLEKS R31 R30 K122 ["offset"]
  LOADN R31 75
  SETTABLEKS R31 R30 K123 ["paddingX"]
  LOADN R31 15
  SETTABLEKS R31 R30 K124 ["paddingY"]
  SETTABLEKS R30 R29 K117 ["publishButton"]
  SETTABLEKS R29 R28 K126 ["saveToRobloxView"]
  DUPTABLE R29 K127 [{"Padding"}]
  JUMPIFNOT R23 [+2]
  LOADN R30 0
  JUMP [+1]
  LOADN R30 2
  SETTABLEKS R30 R29 K48 ["Padding"]
  SETTABLEKS R29 R28 K128 ["permissionsView"]
  DUPTABLE R29 K130 [{"hover"}]
  GETTABLEKS R30 R18 K131 ["MenuEntryHover"]
  SETTABLEKS R30 R29 K129 ["hover"]
  SETTABLEKS R29 R28 K132 ["menuEntry"]
  DUPTABLE R29 K136 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  JUMPIFNOT R23 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  JUMP [+5]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 32
  CALL R30 2 1
  SETTABLEKS R30 R29 K133 ["paddingTop"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 15
  CALL R30 2 1
  JUMP [+5]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 67
  CALL R30 2 1
  SETTABLEKS R30 R29 K134 ["paddingHorizontal"]
  DUPTABLE R30 K140 [{"fontStyle", "Height"}]
  DUPTABLE R31 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R31 K36 ["Font"]
  LOADN R32 16
  SETTABLEKS R32 R31 K65 ["TextSize"]
  GETTABLEKS R32 R18 K121 ["MainText"]
  SETTABLEKS R32 R31 K98 ["TextColor3"]
  SETTABLEKS R31 R30 K101 ["fontStyle"]
  LOADN R31 15
  SETTABLEKS R31 R30 K139 ["Height"]
  SETTABLEKS R30 R29 K135 ["ageWarning"]
  SETTABLEKS R29 R28 K141 ["searchWidget"]
  DUPTABLE R29 K162 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R30 R18 K72 ["Border"]
  SETTABLEKS R30 R29 K70 ["border"]
  GETTABLEKS R30 R18 K163 ["DialogMainButton"]
  SETTABLEKS R30 R29 K142 ["borderHover"]
  GETTABLEKS R30 R18 K163 ["DialogMainButton"]
  SETTABLEKS R30 R29 K143 ["borderSelected"]
  GETTABLEKS R30 R18 K63 ["DimmedText"]
  SETTABLEKS R30 R29 K144 ["placeholderText"]
  GETTABLEKS R30 R18 K164 ["SubBackground2"]
  SETTABLEKS R30 R29 K93 ["backgroundColor"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADN R31 0
  LOADN R32 26
  LOADN R33 0
  LOADN R34 14
  CALL R30 4 1
  SETTABLEKS R30 R29 K145 ["collabTypeTextPosition"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADN R31 1
  LOADN R32 228
  LOADN R33 0
  LOADN R34 14
  CALL R30 4 1
  SETTABLEKS R30 R29 K146 ["friendsAccessTextPosition"]
  GETTABLEKS R30 R18 K100 ["SubText"]
  SETTABLEKS R30 R29 K147 ["searchIcon"]
  DUPTABLE R30 K170 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R31 R18 K171 ["FriendIcon"]
  SETTABLEKS R31 R30 K165 ["Image"]
  LOADN R31 20
  SETTABLEKS R31 R30 K166 ["LabelWidth"]
  LOADN R31 13
  SETTABLEKS R31 R30 K167 ["LabelHeight"]
  LOADN R31 37
  SETTABLEKS R31 R30 K168 ["FrameWidth"]
  LOADN R31 17
  SETTABLEKS R31 R30 K169 ["Width"]
  LOADN R31 10
  SETTABLEKS R31 R30 K139 ["Height"]
  SETTABLEKS R30 R29 K148 ["friendIcon"]
  DUPTABLE R30 K174 [{"imageSelected", "image"}]
  GETTABLEKS R31 R18 K100 ["SubText"]
  SETTABLEKS R31 R30 K172 ["imageSelected"]
  GETTABLEKS R31 R18 K100 ["SubText"]
  SETTABLEKS R31 R30 K173 ["image"]
  SETTABLEKS R30 R29 K149 ["clearButton"]
  LOADN R30 25
  SETTABLEKS R30 R29 K150 ["headerHeight"]
  LOADN R30 75
  SETTABLEKS R30 R29 K151 ["itemHeight"]
  LOADN R30 5
  SETTABLEKS R30 R29 K152 ["ribbonWidth"]
  LOADN R30 48
  SETTABLEKS R30 R29 K153 ["thumbnailSize"]
  LOADN R30 40
  SETTABLEKS R30 R29 K154 ["thumbnailPaddingLeft"]
  LOADN R30 19
  SETTABLEKS R30 R29 K155 ["renderItemTextPadding"]
  LOADN R30 40
  SETTABLEKS R30 R29 K156 ["searchBarHeight"]
  LOADN R30 32
  SETTABLEKS R30 R29 K157 ["clearButtonIconSize"]
  LOADN R30 16
  SETTABLEKS R30 R29 K158 ["textPadding"]
  LOADN R30 204
  SETTABLEKS R30 R29 K159 ["nameLabelWidth"]
  LOADN R30 55
  SETTABLEKS R30 R29 K160 ["nameHeight"]
  DUPTABLE R30 K183 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R31 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R31 K36 ["Font"]
  LOADN R32 16
  SETTABLEKS R32 R31 K65 ["TextSize"]
  GETTABLEKS R32 R18 K121 ["MainText"]
  SETTABLEKS R32 R31 K98 ["TextColor3"]
  SETTABLEKS R31 R30 K175 ["collaboratorTypeText"]
  GETTABLEKS R31 R18 K184 ["InputFieldBackground"]
  SETTABLEKS R31 R30 K93 ["backgroundColor"]
  GETTABLEKS R31 R18 K121 ["MainText"]
  SETTABLEKS R31 R30 K176 ["itemText"]
  GETTABLEKS R31 R18 K100 ["SubText"]
  SETTABLEKS R31 R30 K177 ["headerText"]
  DUPTABLE R31 K185 [{"backgroundColor", "itemText"}]
  GETTABLEKS R32 R18 K186 ["Dropdown"]
  SETTABLEKS R32 R31 K93 ["backgroundColor"]
  GETTABLEKS R32 R18 K121 ["MainText"]
  SETTABLEKS R32 R31 K176 ["itemText"]
  SETTABLEKS R31 R30 K178 ["hovered"]
  DUPTABLE R31 K187 [{"offset"}]
  LOADN R32 2
  SETTABLEKS R32 R31 K122 ["offset"]
  SETTABLEKS R31 R30 K179 ["item"]
  DUPTABLE R31 K188 [{"backgroundColor"}]
  GETTABLEKS R32 R18 K189 ["ButtonHover"]
  SETTABLEKS R32 R31 K93 ["backgroundColor"]
  SETTABLEKS R31 R30 K180 ["selected"]
  LOADN R31 169
  SETTABLEKS R31 R30 K181 ["maxHeight"]
  LOADN R31 100
  SETTABLEKS R31 R30 K182 ["eligibilityLabelWidth"]
  SETTABLEKS R30 R29 K161 ["dropDown"]
  SETTABLEKS R29 R28 K190 ["searchBar"]
  DUPTABLE R29 K193 [{"loadingImage", "loadFailureImage"}]
  LOADK R30 K194 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R30 R29 K191 ["loadingImage"]
  LOADK R30 K195 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R30 R29 K192 ["loadFailureImage"]
  SETTABLEKS R29 R28 K196 ["groupThumbnail"]
  DUPTABLE R29 K199 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R30 R18 K200 ["TableItem"]
  SETTABLEKS R30 R29 K197 ["background"]
  LOADK R30 K201 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R30 R29 K198 ["maskImage"]
  LOADK R30 K202 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R30 R29 K191 ["loadingImage"]
  LOADK R30 K195 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R30 R29 K192 ["loadFailureImage"]
  SETTABLEKS R29 R28 K203 ["subjectThumbnail"]
  DUPTABLE R29 K204 [{"Image"}]
  LOADK R30 K205 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
  SETTABLEKS R30 R29 K165 ["Image"]
  SETTABLEKS R29 R28 K206 ["orgRoleThumbnail"]
  DUPTABLE R29 K209 [{"button", "padding", "width"}]
  DUPTABLE R30 K211 [{"height"}]
  LOADN R31 50
  SETTABLEKS R31 R30 K210 ["height"]
  SETTABLEKS R30 R29 K207 ["button"]
  LOADN R30 10
  SETTABLEKS R30 R29 K102 ["padding"]
  JUMPIFNOT R23 [+2]
  LOADN R30 210
  JUMP [+1]
  LOADN R30 8
  SETTABLEKS R30 R29 K208 ["width"]
  SETTABLEKS R29 R28 K212 ["selectInput"]
  DUPTABLE R29 K216 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  JUMPIFNOT R23 [+2]
  LOADN R30 20
  JUMP [+1]
  LOADN R30 47
  SETTABLEKS R30 R29 K213 ["yPadding"]
  LOADN R30 25
  SETTABLEKS R30 R29 K214 ["xPadding"]
  LOADN R30 35
  SETTABLEKS R30 R29 K215 ["yPaddingNonOwner"]
  SETTABLEKS R29 R28 K217 ["scrollingFrame"]
  DUPTABLE R29 K221 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R30 45
  SETTABLEKS R30 R29 K218 ["boxHeight"]
  DUPTABLE R30 K99 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R30 K36 ["Font"]
  LOADN R31 16
  SETTABLEKS R31 R30 K65 ["TextSize"]
  GETTABLEKS R31 R18 K61 ["TitlebarText"]
  SETTABLEKS R31 R30 K98 ["TextColor3"]
  SETTABLEKS R30 R29 K219 ["textStyle"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADN R31 0
  LOADN R32 67
  LOADK R33 K114 [0.5]
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K220 ["InnerTextPosition"]
  SETTABLEKS R29 R28 K222 ["saveMessage"]
  DUPTABLE R29 K225 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
  JUMPIFNOT R23 [+2]
  LOADN R30 50
  JUMP [+1]
  LOADN R30 98
  SETTABLEKS R30 R29 K210 ["height"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 20
  CALL R30 2 1
  JUMP [+5]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 26
  CALL R30 2 1
  SETTABLEKS R30 R29 K133 ["paddingTop"]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 67
  CALL R30 2 1
  SETTABLEKS R30 R29 K223 ["paddingLeft"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 22
  CALL R30 2 1
  JUMP [+5]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 75
  CALL R30 2 1
  SETTABLEKS R30 R29 K224 ["paddingRight"]
  SETTABLEKS R29 R28 K226 ["header"]
  DUPTABLE R29 K230 [{"font", "textSize", "textColor3"}]
  SETTABLEKS R26 R29 K227 ["font"]
  LOADN R30 40
  SETTABLEKS R30 R29 K228 ["textSize"]
  GETTABLEKS R30 R18 K61 ["TitlebarText"]
  SETTABLEKS R30 R29 K229 ["textColor3"]
  SETTABLEKS R29 R28 K231 ["title"]
  DUPTABLE R29 K232 [{"font", "textSize", "textColor3", "width"}]
  SETTABLEKS R26 R29 K227 ["font"]
  LOADN R30 24
  SETTABLEKS R30 R29 K228 ["textSize"]
  GETTABLEKS R30 R18 K61 ["TitlebarText"]
  SETTABLEKS R30 R29 K229 ["textColor3"]
  LOADN R30 175
  SETTABLEKS R30 R29 K208 ["width"]
  SETTABLEKS R29 R28 K233 ["copyLinkButton"]
  DUPTABLE R29 K236 [{"height", "gradientSize", "gradientTransparency", "border"}]
  JUMPIFNOT R23 [+2]
  LOADN R30 60
  JUMP [+1]
  LOADN R30 65
  SETTABLEKS R30 R29 K210 ["height"]
  LOADN R30 3
  SETTABLEKS R30 R29 K234 ["gradientSize"]
  LOADK R30 K237 [0.9]
  SETTABLEKS R30 R29 K235 ["gradientTransparency"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R30 R18 K72 ["Border"]
  JUMP [+2]
  GETTABLEKS R30 R18 K238 ["FooterBorder"]
  SETTABLEKS R30 R29 K70 ["border"]
  SETTABLEKS R29 R28 K239 ["footer"]
  DUPTABLE R29 K242 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
  JUMPIFNOT R23 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 20
  CALL R30 2 1
  JUMP [+5]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 67
  CALL R30 2 1
  SETTABLEKS R30 R29 K134 ["paddingHorizontal"]
  JUMPIFNOT R24 [+7]
  JUMPIFNOT R25 [+6]
  GETIMPORT R30 K138 [UDim.new]
  LOADN R31 0
  LOADN R32 12
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K133 ["paddingTop"]
  GETIMPORT R30 K113 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  JUMPIFNOT R24 [+3]
  JUMPIFNOT R25 [+2]
  LOADN R34 42
  JUMP [+1]
  LOADN R34 30
  CALL R30 4 1
  SETTABLEKS R30 R29 K240 ["size"]
  DUPTABLE R30 K243 [{"paddingHorizontal", "size"}]
  GETIMPORT R31 K138 [UDim.new]
  LOADN R32 0
  LOADN R33 8
  CALL R31 2 1
  SETTABLEKS R31 R30 K134 ["paddingHorizontal"]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 0
  LOADN R33 100
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K240 ["size"]
  SETTABLEKS R30 R29 K241 ["pills"]
  SETTABLEKS R29 R28 K244 ["collaboratorFilter"]
  DUPTABLE R29 K255 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R30 K0 ["script"]
  SETTABLEKS R30 R29 K245 ["FadeTransparency"]
  DUPTABLE R30 K261 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R31 14
  SETTABLEKS R31 R30 K257 ["ExpandTextSize"]
  JUMPIFNOT R23 [+8]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 0
  LOADN R33 238
  LOADN R34 0
  LOADN R35 60
  CALL R31 4 1
  JUMP [+7]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 0
  LOADN R33 153
  LOADN R34 0
  LOADN R35 74
  CALL R31 4 1
  SETTABLEKS R31 R30 K240 ["size"]
  LOADN R31 16
  SETTABLEKS R31 R30 K258 ["collaboratorItemOffset"]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 34
  CALL R31 4 1
  SETTABLEKS R31 R30 K259 ["expandablePaneSize"]
  DUPTABLE R31 K264 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R32 K113 [UDim2.new]
  LOADN R33 0
  LOADN R34 96
  LOADN R35 0
  LOADN R36 34
  CALL R32 4 1
  SETTABLEKS R32 R31 K240 ["size"]
  DUPTABLE R32 K266 [{"position", "size"}]
  GETIMPORT R33 K113 [UDim2.new]
  LOADN R34 0
  LOADN R35 42
  LOADK R36 K114 [0.5]
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K265 ["position"]
  GETIMPORT R33 K113 [UDim2.new]
  LOADN R34 0
  LOADN R35 17
  LOADN R36 0
  LOADN R37 17
  CALL R33 4 1
  SETTABLEKS R33 R32 K240 ["size"]
  SETTABLEKS R32 R31 K262 ["arrowLabel"]
  DUPTABLE R32 K267 [{"position"}]
  GETIMPORT R33 K113 [UDim2.new]
  LOADN R34 0
  LOADN R35 60
  LOADK R36 K114 [0.5]
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K265 ["position"]
  SETTABLEKS R32 R31 K263 ["textLabel"]
  SETTABLEKS R31 R30 K260 ["headerComponent"]
  SETTABLEKS R30 R29 K246 ["groupCollaboratorItem"]
  DUPTABLE R30 K269 [{"size", "xOffset", "hovered"}]
  LOADN R31 16
  SETTABLEKS R31 R30 K240 ["size"]
  LOADN R31 6
  SETTABLEKS R31 R30 K268 ["xOffset"]
  GETTABLEKS R31 R18 K186 ["Dropdown"]
  SETTABLEKS R31 R30 K178 ["hovered"]
  SETTABLEKS R30 R29 K247 ["deleteButton"]
  DUPTABLE R30 K272 [{"heightOffset", "yOffset"}]
  LOADN R31 54
  SETTABLEKS R31 R30 K270 ["heightOffset"]
  LOADN R31 11
  SETTABLEKS R31 R30 K271 ["yOffset"]
  SETTABLEKS R30 R29 K248 ["permissionEditor"]
  DUPTABLE R30 K277 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
  DUPTABLE R31 K279 [{"withSubText", "size", "xOffset"}]
  DUPTABLE R32 K280 [{"size"}]
  GETIMPORT R33 K113 [UDim2.new]
  LOADN R34 1
  LOADN R35 248
  LOADN R36 0
  LOADN R37 30
  CALL R33 4 1
  SETTABLEKS R33 R32 K240 ["size"]
  SETTABLEKS R32 R31 K278 ["withSubText"]
  GETIMPORT R32 K113 [UDim2.new]
  LOADN R33 1
  LOADN R34 248
  LOADN R35 0
  LOADN R36 54
  CALL R32 4 1
  SETTABLEKS R32 R31 K240 ["size"]
  LOADN R32 50
  SETTABLEKS R32 R31 K268 ["xOffset"]
  SETTABLEKS R31 R30 K273 ["withIcon"]
  NEWTABLE R31 2 1
  DUPTABLE R33 K280 [{"size"}]
  GETIMPORT R34 K113 [UDim2.new]
  LOADN R35 1
  LOADN R36 248
  LOADN R37 0
  LOADN R38 30
  CALL R34 4 1
  SETTABLEKS R34 R33 K240 ["size"]
  SETTABLEKS R33 R31 K278 ["withSubText"]
  GETIMPORT R32 K113 [UDim2.new]
  LOADN R33 1
  LOADN R34 130
  LOADN R35 0
  LOADN R36 54
  CALL R32 4 1
  SETLIST R31 R32 1 [1]
  LOADN R33 28
  SETTABLEKS R33 R31 K268 ["xOffset"]
  SETTABLEKS R31 R30 K274 ["withoutIcon"]
  DUPTABLE R31 K281 [{"yOffset"}]
  LOADN R32 246
  SETTABLEKS R32 R31 K271 ["yOffset"]
  SETTABLEKS R31 R30 K275 ["withSubtext"]
  DUPTABLE R31 K281 [{"yOffset"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K271 ["yOffset"]
  SETTABLEKS R31 R30 K276 ["withoutSubtext"]
  SETTABLEKS R30 R29 K249 ["collaboratorName"]
  DUPTABLE R30 K282 [{"withIcon", "withoutIcon", "yOffset"}]
  DUPTABLE R31 K283 [{"size", "xOffset"}]
  GETIMPORT R32 K113 [UDim2.new]
  LOADN R33 1
  LOADN R34 248
  LOADN R35 0
  LOADN R36 24
  CALL R32 4 1
  SETTABLEKS R32 R31 K240 ["size"]
  LOADN R32 50
  SETTABLEKS R32 R31 K268 ["xOffset"]
  SETTABLEKS R31 R30 K273 ["withIcon"]
  NEWTABLE R31 1 1
  GETIMPORT R32 K113 [UDim2.new]
  LOADN R33 1
  LOADN R34 130
  LOADN R35 0
  LOADN R36 24
  CALL R32 4 1
  SETLIST R31 R32 1 [1]
  LOADN R33 28
  SETTABLEKS R33 R31 K268 ["xOffset"]
  SETTABLEKS R31 R30 K274 ["withoutIcon"]
  LOADN R31 10
  SETTABLEKS R31 R30 K271 ["yOffset"]
  SETTABLEKS R30 R29 K250 ["collaboratorSubText"]
  DUPTABLE R30 K286 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 54
  CALL R31 4 1
  SETTABLEKS R31 R30 K284 ["withIconSize"]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 1
  LOADN R33 130
  LOADN R34 0
  LOADN R35 54
  CALL R31 4 1
  SETTABLEKS R31 R30 K285 ["withoutIconSize"]
  GETIMPORT R31 K113 [UDim2.new]
  LOADN R32 1
  LOADN R33 249
  LOADK R34 K114 [0.5]
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K265 ["position"]
  SETTABLEKS R30 R29 K251 ["ownerLabel"]
  LOADN R30 40
  SETTABLEKS R30 R29 K252 ["iconContainerSize"]
  DUPTABLE R30 K288 [{"width", "height", "position", "anchorPoint"}]
  JUMPIFNOT R23 [+2]
  LOADN R31 238
  JUMP [+1]
  LOADN R31 153
  SETTABLEKS R31 R30 K208 ["width"]
  LOADN R31 74
  SETTABLEKS R31 R30 K210 ["height"]
  LOADNIL R31
  SETTABLEKS R31 R30 K265 ["position"]
  LOADNIL R31
  SETTABLEKS R31 R30 K287 ["anchorPoint"]
  SETTABLEKS R30 R29 K253 ["nonRolesetFrame"]
  DUPTABLE R30 K290 [{"width", "height", "position", "anchorPont"}]
  JUMPIFNOT R23 [+2]
  LOADN R31 238
  JUMP [+1]
  LOADN R31 96
  SETTABLEKS R31 R30 K208 ["width"]
  LOADN R31 54
  SETTABLEKS R31 R30 K210 ["height"]
  GETIMPORT R31 K113 [UDim2.new]
  LOADK R32 K35 ["Enum"]
  LOADN R33 200
  LOADN R34 0
  LOADN R35 20
  CALL R31 4 1
  SETTABLEKS R31 R30 K265 ["position"]
  GETIMPORT R31 K90 [Vector2.new]
  LOADN R32 1
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K289 ["anchorPont"]
  SETTABLEKS R30 R29 K254 ["rolesetFrame"]
  SETTABLEKS R29 R28 K292 ["collaboratorItem"]
  GETTABLEKS R29 R18 K293 ["CloseWidget"]
  SETTABLEKS R29 R28 K294 ["deleteIcon"]
  DUPTABLE R29 K297 [{"right", "down"}]
  GETTABLEKS R30 R18 K298 ["RightArrow"]
  SETTABLEKS R30 R29 K295 ["right"]
  GETTABLEKS R30 R18 K299 ["DownArrow"]
  SETTABLEKS R30 R29 K296 ["down"]
  SETTABLEKS R29 R28 K300 ["arrows"]
  DUPCLOSURE R29 K301 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R28
  RETURN R29 1
