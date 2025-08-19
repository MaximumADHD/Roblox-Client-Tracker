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
  LOADK R24 K30 ["StudioManageCollabWideBox2"]
  NAMECALL R22 R22 K31 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K29 [game]
  LOADK R25 K32 ["Collab8818_ShowSearchItemDisplayName"]
  NAMECALL R23 R23 K31 ["GetFastFlag"]
  CALL R23 2 1
  GETIMPORT R24 K29 [game]
  LOADK R26 K33 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration"]
  NAMECALL R24 R24 K31 ["GetFastFlag"]
  CALL R24 2 1
  JUMPIFNOT R24 [+3]
  GETIMPORT R25 K37 [Enum.Font.BuilderSans]
  JUMP [+2]
  GETIMPORT R25 K39 [Enum.Font.SourceSans]
  JUMPIFNOT R24 [+3]
  GETIMPORT R26 K41 [Enum.Font.BuilderSansMedium]
  JUMP [+2]
  GETIMPORT R26 K43 [Enum.Font.SourceSansSemibold]
  NEWTABLE R27 32 0
  GETTABLEKS R28 R6 K12 ["ExpandablePane"]
  MOVE R29 R21
  GETTABLEKS R31 R6 K12 ["ExpandablePane"]
  GETTABLE R30 R14 R31
  NEWTABLE R31 1 0
  MOVE R32 R21
  MOVE R33 R8
  DUPTABLE R34 K44 [{"Header"}]
  MOVE R35 R21
  MOVE R36 R9
  DUPTABLE R37 K48 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R38 K50 [{"Size"}]
  GETIMPORT R39 K53 [UDim2.fromOffset]
  LOADN R40 0
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K49 ["Size"]
  SETTABLEKS R38 R37 K45 ["Arrow"]
  GETIMPORT R38 K55 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R38 R37 K46 ["HorizontalAlignment"]
  LOADN R38 0
  SETTABLEKS R38 R37 K47 ["Padding"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K15 ["Header"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K56 ["&Arrowless"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R6 K57 ["SelectInput"]
  MOVE R29 R21
  GETTABLEKS R31 R6 K57 ["SelectInput"]
  GETTABLE R30 R14 R31
  NEWTABLE R31 2 0
  MOVE R32 R21
  MOVE R33 R8
  DUPTABLE R34 K59 [{"PlaceholderTextColor"}]
  GETTABLEKS R35 R18 K60 ["TitlebarText"]
  SETTABLEKS R35 R34 K58 ["PlaceholderTextColor"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K61 ["&Editable"]
  MOVE R32 R21
  MOVE R33 R8
  DUPTABLE R34 K59 [{"PlaceholderTextColor"}]
  GETTABLEKS R35 R18 K62 ["DimmedText"]
  SETTABLEKS R35 R34 K58 ["PlaceholderTextColor"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K63 ["&NonEditable"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R6 K16 ["Button"]
  MOVE R29 R21
  GETTABLEKS R31 R6 K16 ["Button"]
  GETTABLE R30 R14 R31
  NEWTABLE R31 4 0
  MOVE R32 R21
  MOVE R33 R11
  DUPTABLE R34 K65 [{"Font", "TextSize"}]
  SETTABLEKS R25 R34 K35 ["Font"]
  LOADN R35 24
  SETTABLEKS R35 R34 K64 ["TextSize"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K66 ["&Active"]
  MOVE R32 R21
  MOVE R33 R11
  DUPTABLE R34 K65 [{"Font", "TextSize"}]
  SETTABLEKS R25 R34 K35 ["Font"]
  LOADN R35 24
  SETTABLEKS R35 R34 K64 ["TextSize"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K67 ["&Passive"]
  MOVE R32 R21
  MOVE R33 R12
  DUPTABLE R34 K65 [{"Font", "TextSize"}]
  SETTABLEKS R25 R34 K35 ["Font"]
  LOADN R35 24
  SETTABLEKS R35 R34 K64 ["TextSize"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K68 ["&Cancel"]
  MOVE R32 R21
  MOVE R33 R12
  DUPTABLE R34 K70 [{"Font", "TextSize", "border"}]
  SETTABLEKS R25 R34 K35 ["Font"]
  LOADN R35 22
  SETTABLEKS R35 R34 K64 ["TextSize"]
  GETTABLEKS R35 R18 K71 ["Border"]
  SETTABLEKS R35 R34 K69 ["border"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K72 ["&Pill"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R6 K73 ["StyledDialog"]
  GETTABLEKS R30 R4 K74 ["Dictionary"]
  GETTABLEKS R29 R30 K27 ["join"]
  MOVE R30 R3
  LOADK R31 K73 ["StyledDialog"]
  CALL R30 1 1
  NEWTABLE R31 2 0
  DUPTABLE R32 K78 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R33 K39 [Enum.Font.SourceSans]
  SETTABLEKS R33 R32 K35 ["Font"]
  LOADN R33 24
  SETTABLEKS R33 R32 K75 ["ButtonPadding"]
  LOADN R33 0
  SETTABLEKS R33 R32 K76 ["ContentPadding"]
  GETIMPORT R33 K80 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R33 R32 K77 ["ButtonHorizontalAlignment"]
  SETTABLEKS R32 R31 K81 ["&CancelDialog"]
  DUPTABLE R32 K78 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R33 K39 [Enum.Font.SourceSans]
  SETTABLEKS R33 R32 K35 ["Font"]
  LOADN R33 24
  SETTABLEKS R33 R32 K75 ["ButtonPadding"]
  LOADN R33 0
  SETTABLEKS R33 R32 K76 ["ContentPadding"]
  GETIMPORT R33 K80 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R33 R32 K77 ["ButtonHorizontalAlignment"]
  SETTABLEKS R32 R31 K82 ["&EnableTeamCreateDialog"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R6 K83 ["DropdownMenu"]
  GETTABLEKS R30 R4 K74 ["Dictionary"]
  GETTABLEKS R29 R30 K27 ["join"]
  MOVE R30 R3
  LOADK R31 K83 ["DropdownMenu"]
  CALL R30 1 1
  NEWTABLE R31 1 0
  DUPTABLE R32 K86 [{"Offset", "BackgroundColor"}]
  GETIMPORT R33 K89 [Vector2.new]
  LOADN R34 244
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K84 ["Offset"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R33 R18 K90 ["MainBackground"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K85 ["BackgroundColor"]
  SETTABLEKS R32 R31 K91 ["&Search"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  GETTABLEKS R28 R18 K90 ["MainBackground"]
  SETTABLEKS R28 R27 K92 ["backgroundColor"]
  DUPTABLE R28 K96 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 22
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K99 ["SubText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K93 ["Subtitle"]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 20
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K94 ["Normal"]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 16
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K95 ["Subtext"]
  SETTABLEKS R28 R27 K100 ["fontStyle"]
  DUPTABLE R28 K103 [{"padding", "edgePadding"}]
  LOADN R29 10
  SETTABLEKS R29 R28 K101 ["padding"]
  JUMPIFNOT R24 [+2]
  LOADN R29 75
  JUMP [+1]
  LOADN R29 67
  SETTABLEKS R29 R28 K102 ["edgePadding"]
  SETTABLEKS R28 R27 K104 ["buttonBar"]
  DUPTABLE R28 K107 [{"TitleText", "DescriptionText"}]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R26 R29 K35 ["Font"]
  LOADN R30 22
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K105 ["TitleText"]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 18
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K106 ["DescriptionText"]
  SETTABLEKS R28 R27 K108 ["confirmTcDialog"]
  DUPTABLE R28 K111 [{"Text", "Size", "Position"}]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R30 K39 [Enum.Font.SourceSans]
  SETTABLEKS R30 R29 K35 ["Font"]
  LOADN R30 24
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K109 ["Text"]
  GETIMPORT R29 K89 [Vector2.new]
  LOADN R30 87
  LOADN R31 65
  CALL R29 2 1
  SETTABLEKS R29 R28 K49 ["Size"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADK R30 K113 [0.5]
  LOADN R31 0
  LOADK R32 K113 [0.5]
  LOADN R33 10
  CALL R29 4 1
  SETTABLEKS R29 R28 K110 ["Position"]
  SETTABLEKS R28 R27 K114 ["cancelDialog"]
  DUPTABLE R28 K111 [{"Text", "Size", "Position"}]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R30 K39 [Enum.Font.SourceSans]
  SETTABLEKS R30 R29 K35 ["Font"]
  LOADN R30 24
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K109 ["Text"]
  GETIMPORT R29 K89 [Vector2.new]
  LOADN R30 87
  LOADN R31 65
  CALL R29 2 1
  SETTABLEKS R29 R28 K49 ["Size"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADK R30 K113 [0.5]
  LOADN R31 0
  LOADK R32 K113 [0.5]
  LOADN R33 10
  CALL R29 4 1
  SETTABLEKS R29 R28 K110 ["Position"]
  SETTABLEKS R28 R27 K115 ["enableTeamCreateDialog"]
  DUPTABLE R28 K117 [{"Text", "publishButton"}]
  DUPTABLE R29 K119 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 20
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K120 ["MainText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  LOADN R30 70
  SETTABLEKS R30 R29 K118 ["YOffset"]
  SETTABLEKS R29 R28 K109 ["Text"]
  DUPTABLE R29 K124 [{"offset", "paddingX", "paddingY"}]
  LOADN R30 125
  SETTABLEKS R30 R29 K121 ["offset"]
  LOADN R30 75
  SETTABLEKS R30 R29 K122 ["paddingX"]
  LOADN R30 15
  SETTABLEKS R30 R29 K123 ["paddingY"]
  SETTABLEKS R29 R28 K116 ["publishButton"]
  SETTABLEKS R28 R27 K125 ["saveToRobloxView"]
  DUPTABLE R28 K126 [{"Padding"}]
  JUMPIFNOT R24 [+2]
  LOADN R29 0
  JUMP [+1]
  LOADN R29 2
  SETTABLEKS R29 R28 K47 ["Padding"]
  SETTABLEKS R28 R27 K127 ["permissionsView"]
  DUPTABLE R28 K129 [{"hover"}]
  GETTABLEKS R29 R18 K130 ["MenuEntryHover"]
  SETTABLEKS R29 R28 K128 ["hover"]
  SETTABLEKS R28 R27 K131 ["menuEntry"]
  DUPTABLE R28 K135 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 32
  CALL R29 2 1
  SETTABLEKS R29 R28 K132 ["paddingTop"]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 67
  CALL R29 2 1
  SETTABLEKS R29 R28 K133 ["paddingHorizontal"]
  DUPTABLE R29 K139 [{"fontStyle", "Height"}]
  DUPTABLE R30 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R30 K35 ["Font"]
  LOADN R31 16
  SETTABLEKS R31 R30 K64 ["TextSize"]
  GETTABLEKS R31 R18 K120 ["MainText"]
  SETTABLEKS R31 R30 K97 ["TextColor3"]
  SETTABLEKS R30 R29 K100 ["fontStyle"]
  LOADN R30 15
  SETTABLEKS R30 R29 K138 ["Height"]
  SETTABLEKS R29 R28 K134 ["ageWarning"]
  SETTABLEKS R28 R27 K140 ["searchWidget"]
  DUPTABLE R28 K161 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R29 R18 K71 ["Border"]
  SETTABLEKS R29 R28 K69 ["border"]
  GETTABLEKS R29 R18 K162 ["DialogMainButton"]
  SETTABLEKS R29 R28 K141 ["borderHover"]
  GETTABLEKS R29 R18 K162 ["DialogMainButton"]
  SETTABLEKS R29 R28 K142 ["borderSelected"]
  GETTABLEKS R29 R18 K62 ["DimmedText"]
  SETTABLEKS R29 R28 K143 ["placeholderText"]
  GETTABLEKS R29 R18 K163 ["SubBackground2"]
  SETTABLEKS R29 R28 K92 ["backgroundColor"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADN R30 0
  LOADN R31 26
  LOADN R32 0
  LOADN R33 14
  CALL R29 4 1
  SETTABLEKS R29 R28 K144 ["collabTypeTextPosition"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADN R30 1
  LOADN R31 228
  LOADN R32 0
  LOADN R33 14
  CALL R29 4 1
  SETTABLEKS R29 R28 K145 ["friendsAccessTextPosition"]
  GETTABLEKS R29 R18 K99 ["SubText"]
  SETTABLEKS R29 R28 K146 ["searchIcon"]
  DUPTABLE R29 K169 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R30 R18 K170 ["FriendIcon"]
  SETTABLEKS R30 R29 K164 ["Image"]
  LOADN R30 20
  SETTABLEKS R30 R29 K165 ["LabelWidth"]
  LOADN R30 13
  SETTABLEKS R30 R29 K166 ["LabelHeight"]
  LOADN R30 37
  SETTABLEKS R30 R29 K167 ["FrameWidth"]
  LOADN R30 17
  SETTABLEKS R30 R29 K168 ["Width"]
  LOADN R30 10
  SETTABLEKS R30 R29 K138 ["Height"]
  SETTABLEKS R29 R28 K147 ["friendIcon"]
  DUPTABLE R29 K173 [{"imageSelected", "image"}]
  GETTABLEKS R30 R18 K99 ["SubText"]
  SETTABLEKS R30 R29 K171 ["imageSelected"]
  GETTABLEKS R30 R18 K99 ["SubText"]
  SETTABLEKS R30 R29 K172 ["image"]
  SETTABLEKS R29 R28 K148 ["clearButton"]
  LOADN R29 25
  SETTABLEKS R29 R28 K149 ["headerHeight"]
  LOADN R29 75
  SETTABLEKS R29 R28 K150 ["itemHeight"]
  LOADN R29 5
  SETTABLEKS R29 R28 K151 ["ribbonWidth"]
  LOADN R29 48
  SETTABLEKS R29 R28 K152 ["thumbnailSize"]
  LOADN R29 40
  SETTABLEKS R29 R28 K153 ["thumbnailPaddingLeft"]
  LOADN R29 19
  SETTABLEKS R29 R28 K154 ["renderItemTextPadding"]
  LOADN R29 40
  SETTABLEKS R29 R28 K155 ["searchBarHeight"]
  LOADN R29 32
  SETTABLEKS R29 R28 K156 ["clearButtonIconSize"]
  LOADN R29 16
  SETTABLEKS R29 R28 K157 ["textPadding"]
  LOADN R29 204
  SETTABLEKS R29 R28 K158 ["nameLabelWidth"]
  LOADN R29 55
  SETTABLEKS R29 R28 K159 ["nameHeight"]
  DUPTABLE R29 K182 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R30 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R30 K35 ["Font"]
  LOADN R31 16
  SETTABLEKS R31 R30 K64 ["TextSize"]
  GETTABLEKS R31 R18 K120 ["MainText"]
  SETTABLEKS R31 R30 K97 ["TextColor3"]
  SETTABLEKS R30 R29 K174 ["collaboratorTypeText"]
  GETTABLEKS R30 R18 K183 ["InputFieldBackground"]
  SETTABLEKS R30 R29 K92 ["backgroundColor"]
  GETTABLEKS R30 R18 K120 ["MainText"]
  SETTABLEKS R30 R29 K175 ["itemText"]
  GETTABLEKS R30 R18 K99 ["SubText"]
  SETTABLEKS R30 R29 K176 ["headerText"]
  DUPTABLE R30 K184 [{"backgroundColor", "itemText"}]
  GETTABLEKS R31 R18 K185 ["Dropdown"]
  SETTABLEKS R31 R30 K92 ["backgroundColor"]
  GETTABLEKS R31 R18 K120 ["MainText"]
  SETTABLEKS R31 R30 K175 ["itemText"]
  SETTABLEKS R30 R29 K177 ["hovered"]
  DUPTABLE R30 K186 [{"offset"}]
  LOADN R31 2
  SETTABLEKS R31 R30 K121 ["offset"]
  SETTABLEKS R30 R29 K178 ["item"]
  DUPTABLE R30 K187 [{"backgroundColor"}]
  GETTABLEKS R31 R18 K188 ["ButtonHover"]
  SETTABLEKS R31 R30 K92 ["backgroundColor"]
  SETTABLEKS R30 R29 K179 ["selected"]
  LOADN R30 169
  SETTABLEKS R30 R29 K180 ["maxHeight"]
  LOADN R30 100
  SETTABLEKS R30 R29 K181 ["eligibilityLabelWidth"]
  SETTABLEKS R29 R28 K160 ["dropDown"]
  SETTABLEKS R28 R27 K189 ["searchBar"]
  DUPTABLE R28 K192 [{"loadingImage", "loadFailureImage"}]
  LOADK R29 K193 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R29 R28 K190 ["loadingImage"]
  LOADK R29 K194 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R29 R28 K191 ["loadFailureImage"]
  SETTABLEKS R28 R27 K195 ["groupThumbnail"]
  DUPTABLE R28 K198 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R29 R18 K199 ["TableItem"]
  SETTABLEKS R29 R28 K196 ["background"]
  LOADK R29 K200 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R29 R28 K197 ["maskImage"]
  LOADK R29 K201 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R29 R28 K190 ["loadingImage"]
  LOADK R29 K194 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R29 R28 K191 ["loadFailureImage"]
  SETTABLEKS R28 R27 K202 ["subjectThumbnail"]
  DUPTABLE R28 K203 [{"Image"}]
  LOADK R29 K204 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
  SETTABLEKS R29 R28 K164 ["Image"]
  SETTABLEKS R28 R27 K205 ["orgRoleThumbnail"]
  DUPTABLE R28 K208 [{"button", "padding", "width"}]
  DUPTABLE R29 K210 [{"height"}]
  LOADN R30 50
  SETTABLEKS R30 R29 K209 ["height"]
  SETTABLEKS R29 R28 K206 ["button"]
  LOADN R29 10
  SETTABLEKS R29 R28 K101 ["padding"]
  JUMPIFNOT R22 [+2]
  LOADN R29 8
  JUMP [+1]
  LOADN R29 195
  SETTABLEKS R29 R28 K207 ["width"]
  SETTABLEKS R28 R27 K211 ["selectInput"]
  DUPTABLE R28 K215 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  LOADN R29 47
  SETTABLEKS R29 R28 K212 ["yPadding"]
  LOADN R29 25
  SETTABLEKS R29 R28 K213 ["xPadding"]
  LOADN R29 35
  SETTABLEKS R29 R28 K214 ["yPaddingNonOwner"]
  SETTABLEKS R28 R27 K216 ["scrollingFrame"]
  DUPTABLE R28 K220 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R29 45
  SETTABLEKS R29 R28 K217 ["boxHeight"]
  DUPTABLE R29 K98 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R29 K35 ["Font"]
  LOADN R30 16
  SETTABLEKS R30 R29 K64 ["TextSize"]
  GETTABLEKS R30 R18 K60 ["TitlebarText"]
  SETTABLEKS R30 R29 K97 ["TextColor3"]
  SETTABLEKS R29 R28 K218 ["textStyle"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADN R30 0
  LOADN R31 67
  LOADK R32 K113 [0.5]
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K219 ["InnerTextPosition"]
  SETTABLEKS R28 R27 K221 ["saveMessage"]
  DUPTABLE R28 K224 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
  LOADN R29 98
  SETTABLEKS R29 R28 K209 ["height"]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 26
  CALL R29 2 1
  SETTABLEKS R29 R28 K132 ["paddingTop"]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 67
  CALL R29 2 1
  SETTABLEKS R29 R28 K222 ["paddingLeft"]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 75
  CALL R29 2 1
  SETTABLEKS R29 R28 K223 ["paddingRight"]
  SETTABLEKS R28 R27 K225 ["header"]
  DUPTABLE R28 K229 [{"font", "textSize", "textColor3"}]
  SETTABLEKS R25 R28 K226 ["font"]
  LOADN R29 40
  SETTABLEKS R29 R28 K227 ["textSize"]
  GETTABLEKS R29 R18 K60 ["TitlebarText"]
  SETTABLEKS R29 R28 K228 ["textColor3"]
  SETTABLEKS R28 R27 K230 ["title"]
  DUPTABLE R28 K231 [{"font", "textSize", "textColor3", "width"}]
  SETTABLEKS R25 R28 K226 ["font"]
  LOADN R29 24
  SETTABLEKS R29 R28 K227 ["textSize"]
  GETTABLEKS R29 R18 K60 ["TitlebarText"]
  SETTABLEKS R29 R28 K228 ["textColor3"]
  LOADN R29 175
  SETTABLEKS R29 R28 K207 ["width"]
  SETTABLEKS R28 R27 K232 ["copyLinkButton"]
  DUPTABLE R28 K235 [{"height", "gradientSize", "gradientTransparency", "border"}]
  LOADN R29 65
  SETTABLEKS R29 R28 K209 ["height"]
  LOADN R29 3
  SETTABLEKS R29 R28 K233 ["gradientSize"]
  LOADK R29 K236 [0.9]
  SETTABLEKS R29 R28 K234 ["gradientTransparency"]
  GETTABLEKS R29 R18 K237 ["FooterBorder"]
  SETTABLEKS R29 R28 K69 ["border"]
  SETTABLEKS R28 R27 K238 ["footer"]
  DUPTABLE R28 K241 [{"paddingHorizontal", "size", "pills"}]
  GETIMPORT R29 K137 [UDim.new]
  LOADN R30 0
  LOADN R31 67
  CALL R29 2 1
  SETTABLEKS R29 R28 K133 ["paddingHorizontal"]
  GETIMPORT R29 K112 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 30
  CALL R29 4 1
  SETTABLEKS R29 R28 K239 ["size"]
  DUPTABLE R29 K242 [{"paddingHorizontal", "size"}]
  GETIMPORT R30 K137 [UDim.new]
  LOADN R31 0
  LOADN R32 8
  CALL R30 2 1
  SETTABLEKS R30 R29 K133 ["paddingHorizontal"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 0
  LOADN R32 100
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K239 ["size"]
  SETTABLEKS R29 R28 K240 ["pills"]
  SETTABLEKS R28 R27 K243 ["collaboratorFilter"]
  DUPTABLE R28 K254 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R29 K255 [0.75]
  SETTABLEKS R29 R28 K244 ["FadeTransparency"]
  DUPTABLE R29 K260 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R30 14
  SETTABLEKS R30 R29 K256 ["ExpandTextSize"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 0
  LOADN R32 153
  LOADN R33 0
  LOADN R34 60
  CALL R30 4 1
  SETTABLEKS R30 R29 K239 ["size"]
  LOADN R30 16
  SETTABLEKS R30 R29 K257 ["collaboratorItemOffset"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 34
  CALL R30 4 1
  SETTABLEKS R30 R29 K258 ["expandablePaneSize"]
  DUPTABLE R30 K263 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R31 K112 [UDim2.new]
  LOADN R32 0
  LOADN R33 96
  LOADN R34 0
  LOADN R35 34
  CALL R31 4 1
  SETTABLEKS R31 R30 K239 ["size"]
  DUPTABLE R31 K265 [{"position", "size"}]
  GETIMPORT R32 K112 [UDim2.new]
  LOADN R33 0
  LOADN R34 42
  LOADK R35 K113 [0.5]
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K264 ["position"]
  GETIMPORT R32 K112 [UDim2.new]
  LOADN R33 0
  LOADN R34 17
  LOADN R35 0
  LOADN R36 17
  CALL R32 4 1
  SETTABLEKS R32 R31 K239 ["size"]
  SETTABLEKS R31 R30 K261 ["arrowLabel"]
  DUPTABLE R31 K266 [{"position"}]
  GETIMPORT R32 K112 [UDim2.new]
  LOADN R33 0
  LOADN R34 60
  LOADK R35 K113 [0.5]
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K264 ["position"]
  SETTABLEKS R31 R30 K262 ["textLabel"]
  SETTABLEKS R30 R29 K259 ["headerComponent"]
  SETTABLEKS R29 R28 K245 ["groupCollaboratorItem"]
  DUPTABLE R29 K268 [{"size", "xOffset", "hovered"}]
  LOADN R30 16
  SETTABLEKS R30 R29 K239 ["size"]
  LOADN R30 6
  SETTABLEKS R30 R29 K267 ["xOffset"]
  GETTABLEKS R30 R18 K185 ["Dropdown"]
  SETTABLEKS R30 R29 K177 ["hovered"]
  SETTABLEKS R29 R28 K246 ["deleteButton"]
  DUPTABLE R29 K271 [{"heightOffset", "yOffset"}]
  LOADN R30 54
  SETTABLEKS R30 R29 K269 ["heightOffset"]
  LOADN R30 11
  SETTABLEKS R30 R29 K270 ["yOffset"]
  SETTABLEKS R29 R28 K247 ["permissionEditor"]
  DUPTABLE R29 K276 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
  DUPTABLE R30 K278 [{"withSubText", "size", "xOffset"}]
  DUPTABLE R31 K279 [{"size"}]
  GETIMPORT R32 K112 [UDim2.new]
  LOADN R33 1
  LOADN R34 248
  LOADN R35 0
  LOADN R36 30
  CALL R32 4 1
  SETTABLEKS R32 R31 K239 ["size"]
  SETTABLEKS R31 R30 K277 ["withSubText"]
  GETIMPORT R31 K112 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 54
  CALL R31 4 1
  SETTABLEKS R31 R30 K239 ["size"]
  LOADN R31 50
  SETTABLEKS R31 R30 K267 ["xOffset"]
  SETTABLEKS R30 R29 K272 ["withIcon"]
  NEWTABLE R30 2 1
  DUPTABLE R32 K279 [{"size"}]
  GETIMPORT R33 K112 [UDim2.new]
  LOADN R34 1
  LOADN R35 248
  LOADN R36 0
  LOADN R37 30
  CALL R33 4 1
  SETTABLEKS R33 R32 K239 ["size"]
  SETTABLEKS R32 R30 K277 ["withSubText"]
  GETIMPORT R31 K112 [UDim2.new]
  LOADN R32 1
  LOADN R33 130
  LOADN R34 0
  LOADN R35 54
  CALL R31 4 1
  SETLIST R30 R31 1 [1]
  LOADN R32 28
  SETTABLEKS R32 R30 K267 ["xOffset"]
  SETTABLEKS R30 R29 K273 ["withoutIcon"]
  DUPTABLE R30 K280 [{"yOffset"}]
  LOADN R31 246
  SETTABLEKS R31 R30 K270 ["yOffset"]
  SETTABLEKS R30 R29 K274 ["withSubtext"]
  DUPTABLE R30 K280 [{"yOffset"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K270 ["yOffset"]
  SETTABLEKS R30 R29 K275 ["withoutSubtext"]
  SETTABLEKS R29 R28 K248 ["collaboratorName"]
  DUPTABLE R29 K281 [{"withIcon", "withoutIcon", "yOffset"}]
  DUPTABLE R30 K282 [{"size", "xOffset"}]
  GETIMPORT R31 K112 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 24
  CALL R31 4 1
  SETTABLEKS R31 R30 K239 ["size"]
  LOADN R31 50
  SETTABLEKS R31 R30 K267 ["xOffset"]
  SETTABLEKS R30 R29 K272 ["withIcon"]
  NEWTABLE R30 1 1
  GETIMPORT R31 K112 [UDim2.new]
  LOADN R32 1
  LOADN R33 130
  LOADN R34 0
  LOADN R35 24
  CALL R31 4 1
  SETLIST R30 R31 1 [1]
  LOADN R32 28
  SETTABLEKS R32 R30 K267 ["xOffset"]
  SETTABLEKS R30 R29 K273 ["withoutIcon"]
  LOADN R30 10
  SETTABLEKS R30 R29 K270 ["yOffset"]
  SETTABLEKS R29 R28 K249 ["collaboratorSubText"]
  DUPTABLE R29 K285 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 1
  LOADN R32 248
  LOADN R33 0
  LOADN R34 54
  CALL R30 4 1
  SETTABLEKS R30 R29 K283 ["withIconSize"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 1
  LOADN R32 130
  LOADN R33 0
  LOADN R34 54
  CALL R30 4 1
  SETTABLEKS R30 R29 K284 ["withoutIconSize"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADN R31 1
  LOADN R32 249
  LOADK R33 K113 [0.5]
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K264 ["position"]
  SETTABLEKS R29 R28 K250 ["ownerLabel"]
  LOADN R29 40
  SETTABLEKS R29 R28 K251 ["iconContainerSize"]
  DUPTABLE R29 K287 [{"width", "height", "position", "anchorPoint"}]
  LOADN R30 153
  SETTABLEKS R30 R29 K207 ["width"]
  LOADN R30 74
  SETTABLEKS R30 R29 K209 ["height"]
  LOADNIL R30
  SETTABLEKS R30 R29 K264 ["position"]
  LOADNIL R30
  SETTABLEKS R30 R29 K286 ["anchorPoint"]
  SETTABLEKS R29 R28 K252 ["nonRolesetFrame"]
  DUPTABLE R29 K289 [{"width", "height", "position", "anchorPont"}]
  LOADN R30 96
  SETTABLEKS R30 R29 K207 ["width"]
  LOADN R30 54
  SETTABLEKS R30 R29 K209 ["height"]
  GETIMPORT R30 K112 [UDim2.new]
  LOADK R31 K34 ["Enum"]
  LOADN R32 200
  LOADN R33 0
  LOADN R34 20
  CALL R30 4 1
  SETTABLEKS R30 R29 K264 ["position"]
  GETIMPORT R30 K89 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K288 ["anchorPont"]
  SETTABLEKS R29 R28 K253 ["rolesetFrame"]
  SETTABLEKS R28 R27 K291 ["collaboratorItem"]
  GETTABLEKS R28 R18 K292 ["CloseWidget"]
  SETTABLEKS R28 R27 K293 ["deleteIcon"]
  DUPTABLE R28 K296 [{"right", "down"}]
  GETTABLEKS R29 R18 K297 ["RightArrow"]
  SETTABLEKS R29 R28 K294 ["right"]
  GETTABLEKS R29 R18 K298 ["DownArrow"]
  SETTABLEKS R29 R28 K295 ["down"]
  SETTABLEKS R28 R27 K299 ["arrows"]
  DUPCLOSURE R28 K300 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R27
  RETURN R28 1
