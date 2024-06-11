PROTO_0:
  LOADNIL R0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mock"]
  GETUPVAL R2 2
  CALL R1 1 1
  MOVE R0 R1
  JUMP [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R1 2 1
  MOVE R0 R1
  GETUPVAL R3 4
  NAMECALL R1 R0 K2 ["extend"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R1 K5 [{"MainView", "PrimaryTools", "Filters", "MaterialGrid", "Footer"}]
  DUPTABLE R2 K8 [{"Padding", "ScrollBarThickness"}]
  LOADN R3 10
  SETTABLEKS R3 R2 K6 ["Padding"]
  LOADN R3 8
  SETTABLEKS R3 R2 K7 ["ScrollBarThickness"]
  SETTABLEKS R2 R1 K0 ["MainView"]
  DUPTABLE R2 K13 [{"Size", "Spacing", "Padding", "SearchBar", "ViewToggle"}]
  GETIMPORT R3 K16 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 40
  CALL R3 4 1
  SETTABLEKS R3 R2 K9 ["Size"]
  LOADN R3 4
  SETTABLEKS R3 R2 K10 ["Spacing"]
  LOADN R3 8
  SETTABLEKS R3 R2 K6 ["Padding"]
  DUPTABLE R3 K17 [{"Size"}]
  GETIMPORT R4 K16 [UDim2.new]
  LOADN R5 1
  LOADN R6 232
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K9 ["Size"]
  SETTABLEKS R3 R2 K11 ["SearchBar"]
  DUPTABLE R3 K20 [{"Size", "LeftIconGrid", "LeftIconList"}]
  GETIMPORT R4 K16 [UDim2.new]
  LOADN R5 0
  LOADN R6 24
  LOADN R7 0
  LOADN R8 24
  CALL R4 4 1
  SETTABLEKS R4 R3 K9 ["Size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K21 ["ViewToggleButtonGridIcon"]
  SETTABLEKS R4 R3 K18 ["LeftIconGrid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K22 ["ViewToggleButtonListIcon"]
  SETTABLEKS R4 R3 K19 ["LeftIconList"]
  SETTABLEKS R3 R2 K12 ["ViewToggle"]
  SETTABLEKS R2 R1 K1 ["PrimaryTools"]
  DUPTABLE R2 K31 [{"Size", "ChipSize", "TextColor", "BorderColor", "InactiveBackgroundColor", "InactiveHoverBackgroundColor", "ActiveBackgroundColor", "ActiveHoverBackgroundColor", "TextSize"}]
  GETIMPORT R3 K16 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 30
  CALL R3 4 1
  SETTABLEKS R3 R2 K9 ["Size"]
  GETIMPORT R3 K16 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 22
  CALL R3 4 1
  SETTABLEKS R3 R2 K23 ["ChipSize"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K32 ["FilterChipTextColor"]
  SETTABLEKS R3 R2 K24 ["TextColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K33 ["FilterChipBorderColor"]
  SETTABLEKS R3 R2 K25 ["BorderColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K34 ["FilterChipInactiveBackgroundColor"]
  SETTABLEKS R3 R2 K26 ["InactiveBackgroundColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K35 ["FilterChipInactiveHoverBackgroundColor"]
  SETTABLEKS R3 R2 K27 ["InactiveHoverBackgroundColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K36 ["FilterChipActiveBackgroundColor"]
  SETTABLEKS R3 R2 K28 ["ActiveBackgroundColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K37 ["FilterChipActiveHoverBackgroundColor"]
  SETTABLEKS R3 R2 K29 ["ActiveHoverBackgroundColor"]
  LOADN R3 15
  SETTABLEKS R3 R2 K30 ["TextSize"]
  SETTABLEKS R2 R1 K2 ["Filters"]
  DUPTABLE R2 K46 [{"GridItemsPerRow", "GridItemRowsPerPage", "GridItemPadding", "GridItemSize", "ListPadding", "SnapshotSize", "SnapshotBorderThickness", "TooltipDelay"}]
  LOADN R3 3
  SETTABLEKS R3 R2 K38 ["GridItemsPerRow"]
  LOADN R3 3
  SETTABLEKS R3 R2 K39 ["GridItemRowsPerPage"]
  LOADN R3 4
  SETTABLEKS R3 R2 K40 ["GridItemPadding"]
  LOADN R3 80
  SETTABLEKS R3 R2 K41 ["GridItemSize"]
  DUPTABLE R3 K49 [{"Top", "Left"}]
  LOADN R4 3
  SETTABLEKS R4 R3 K47 ["Top"]
  LOADN R4 3
  SETTABLEKS R4 R3 K48 ["Left"]
  SETTABLEKS R3 R2 K42 ["ListPadding"]
  GETIMPORT R3 K51 [UDim2.fromOffset]
  LOADN R4 64
  LOADN R5 64
  CALL R3 2 1
  SETTABLEKS R3 R2 K43 ["SnapshotSize"]
  LOADK R3 K52 [0.6]
  SETTABLEKS R3 R2 K44 ["SnapshotBorderThickness"]
  LOADK R3 K53 [0.4]
  SETTABLEKS R3 R2 K45 ["TooltipDelay"]
  SETTABLEKS R2 R1 K3 ["MaterialGrid"]
  DUPTABLE R2 K55 [{"Padding", "Spacing", "Size", "IconButton"}]
  LOADN R3 8
  SETTABLEKS R3 R2 K6 ["Padding"]
  LOADN R3 4
  SETTABLEKS R3 R2 K10 ["Spacing"]
  GETIMPORT R3 K16 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 40
  CALL R3 4 1
  SETTABLEKS R3 R2 K9 ["Size"]
  DUPTABLE R3 K60 [{"ActiveBackgroundColor", "BackgroundColor", "IconSize", "Spacing", "Padding", "MaterialManagerButton", "MaterialGeneratorButton"}]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K61 ["BackgroundDefault"]
  SETTABLEKS R4 R3 K28 ["ActiveBackgroundColor"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K62 ["Button"]
  SETTABLEKS R4 R3 K56 ["BackgroundColor"]
  LOADN R4 16
  SETTABLEKS R4 R3 K57 ["IconSize"]
  LOADN R4 8
  SETTABLEKS R4 R3 K10 ["Spacing"]
  LOADN R4 8
  SETTABLEKS R4 R3 K6 ["Padding"]
  DUPTABLE R4 K64 [{"Icon"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K65 ["MaterialManagerButtonIcon"]
  SETTABLEKS R5 R4 K63 ["Icon"]
  SETTABLEKS R4 R3 K58 ["MaterialManagerButton"]
  DUPTABLE R4 K66 [{"Icon", "Size"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K67 ["MaterialGeneratorButtonIcon"]
  SETTABLEKS R5 R4 K63 ["Icon"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 0
  LOADN R7 97
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Size"]
  SETTABLEKS R4 R3 K59 ["MaterialGeneratorButton"]
  SETTABLEKS R3 R2 K54 ["IconButton"]
  SETTABLEKS R2 R1 K4 ["Footer"]
  GETTABLEKS R3 R1 K3 ["MaterialGrid"]
  GETTABLEKS R2 R3 K41 ["GridItemSize"]
  GETTABLEKS R4 R1 K0 ["MainView"]
  GETTABLEKS R3 R4 K7 ["ScrollBarThickness"]
  GETTABLEKS R5 R1 K3 ["MaterialGrid"]
  GETTABLEKS R4 R5 K38 ["GridItemsPerRow"]
  GETTABLEKS R6 R1 K3 ["MaterialGrid"]
  GETTABLEKS R5 R6 K40 ["GridItemPadding"]
  MUL R8 R4 R2
  ADDK R10 R4 K68 [1]
  MUL R9 R10 R5
  ADD R7 R8 R9
  ADD R6 R7 R3
  GETTABLEKS R8 R1 K3 ["MaterialGrid"]
  GETTABLEKS R7 R8 K39 ["GridItemRowsPerPage"]
  MUL R9 R7 R2
  ADDK R11 R7 K68 [1]
  MUL R10 R11 R5
  ADD R8 R9 R10
  GETTABLEKS R12 R1 K1 ["PrimaryTools"]
  GETTABLEKS R11 R12 K9 ["Size"]
  GETTABLEKS R10 R11 K69 ["Y"]
  GETTABLEKS R9 R10 K70 ["Offset"]
  GETTABLEKS R13 R1 K2 ["Filters"]
  GETTABLEKS R12 R13 K9 ["Size"]
  GETTABLEKS R11 R12 K69 ["Y"]
  GETTABLEKS R10 R11 K70 ["Offset"]
  GETTABLEKS R14 R1 K4 ["Footer"]
  GETTABLEKS R13 R14 K9 ["Size"]
  GETTABLEKS R12 R13 K69 ["Y"]
  GETTABLEKS R11 R12 K70 ["Offset"]
  ADD R14 R9 R10
  ADD R13 R14 R8
  ADD R12 R13 R11
  GETTABLEKS R15 R1 K4 ["Footer"]
  GETTABLEKS R14 R15 K54 ["IconButton"]
  GETTABLEKS R13 R14 K57 ["IconSize"]
  GETTABLEKS R17 R1 K4 ["Footer"]
  GETTABLEKS R16 R17 K54 ["IconButton"]
  GETTABLEKS R15 R16 K59 ["MaterialGeneratorButton"]
  GETTABLEKS R14 R15 K9 ["Size"]
  GETTABLEKS R19 R14 K71 ["X"]
  GETTABLEKS R18 R19 K70 ["Offset"]
  SUB R17 R6 R18
  GETTABLEKS R20 R1 K4 ["Footer"]
  GETTABLEKS R19 R20 K6 ["Padding"]
  MULK R18 R19 K72 [2]
  SUB R16 R17 R18
  GETTABLEKS R18 R1 K4 ["Footer"]
  GETTABLEKS R17 R18 K10 ["Spacing"]
  SUB R15 R16 R17
  LOADNIL R16
  JUMPIFNOT R0 [+2]
  LOADK R16 K73 ["Material Manager"]
  JUMP [+22]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K74 ["Localization"]
  GETTABLEKS R17 R18 K15 ["new"]
  DUPTABLE R18 K78 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R19 3
  SETTABLEKS R19 R18 K75 ["stringResourceTable"]
  GETUPVAL R19 4
  SETTABLEKS R19 R18 K76 ["translationResourceTable"]
  LOADK R19 K79 ["MaterialPicker"]
  SETTABLEKS R19 R18 K77 ["pluginName"]
  CALL R17 1 1
  LOADK R20 K0 ["MainView"]
  LOADK R21 K58 ["MaterialManagerButton"]
  NAMECALL R18 R17 K80 ["getText"]
  CALL R18 3 1
  MOVE R16 R18
  SUB R19 R15 R13
  GETTABLEKS R23 R1 K4 ["Footer"]
  GETTABLEKS R22 R23 K54 ["IconButton"]
  GETTABLEKS R21 R22 K6 ["Padding"]
  MULK R20 R21 K72 [2]
  SUB R18 R19 R20
  GETTABLEKS R21 R1 K4 ["Footer"]
  GETTABLEKS R20 R21 K54 ["IconButton"]
  GETTABLEKS R19 R20 K10 ["Spacing"]
  SUB R17 R18 R19
  GETUPVAL R19 5
  MOVE R21 R16
  MOVE R22 R13
  GETIMPORT R23 K84 [Enum.Font.SourceSans]
  GETIMPORT R24 K86 [Vector2.new]
  MOVE R25 R15
  MOVE R26 R13
  CALL R24 2 -1
  NAMECALL R19 R19 K87 ["GetTextSize"]
  CALL R19 -1 1
  GETTABLEKS R18 R19 K71 ["X"]
  JUMPIFNOTLT R17 R18 [+4]
  SUB R20 R18 R17
  ADD R19 R15 R20
  ADDK R15 R19 K88 [16]
  LOADNIL R19
  GETUPVAL R20 6
  CALL R20 0 1
  JUMPIFNOT R20 [+17]
  GETTABLEKS R23 R14 K71 ["X"]
  GETTABLEKS R22 R23 K70 ["Offset"]
  SUB R21 R6 R22
  GETTABLEKS R24 R1 K4 ["Footer"]
  GETTABLEKS R23 R24 K6 ["Padding"]
  MULK R22 R23 K72 [2]
  SUB R20 R21 R22
  GETTABLEKS R22 R1 K4 ["Footer"]
  GETTABLEKS R21 R22 K10 ["Spacing"]
  SUB R19 R20 R21
  JUMP [+11]
  GETTABLEKS R23 R1 K4 ["Footer"]
  GETTABLEKS R22 R23 K6 ["Padding"]
  MULK R21 R22 K72 [2]
  SUB R20 R6 R21
  GETTABLEKS R22 R1 K4 ["Footer"]
  GETTABLEKS R21 R22 K10 ["Spacing"]
  SUB R19 R20 R21
  JUMPIFNOTLT R19 R15 [+3]
  SUB R20 R15 R19
  ADD R6 R6 R20
  DUPTABLE R20 K17 [{"Size"}]
  GETIMPORT R21 K86 [Vector2.new]
  MOVE R22 R6
  MOVE R23 R12
  CALL R21 2 1
  SETTABLEKS R21 R20 K9 ["Size"]
  SETTABLEKS R20 R1 K89 ["Popup"]
  GETTABLEKS R22 R1 K4 ["Footer"]
  GETTABLEKS R21 R22 K54 ["IconButton"]
  GETTABLEKS R20 R21 K58 ["MaterialManagerButton"]
  GETIMPORT R21 K16 [UDim2.new]
  LOADN R22 0
  MOVE R23 R15
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K9 ["Size"]
  GETTABLEKS R20 R1 K3 ["MaterialGrid"]
  GETIMPORT R21 K91 [NumberRange.new]
  LOADN R22 0
  GETTABLEKS R26 R1 K89 ["Popup"]
  GETTABLEKS R25 R26 K9 ["Size"]
  GETTABLEKS R24 R25 K71 ["X"]
  GETTABLEKS R26 R1 K0 ["MainView"]
  GETTABLEKS R25 R26 K7 ["ScrollBarThickness"]
  SUB R23 R24 R25
  CALL R21 2 1
  SETTABLEKS R21 R20 K92 ["ContainerXBounds"]
  GETTABLEKS R20 R1 K3 ["MaterialGrid"]
  GETIMPORT R21 K91 [NumberRange.new]
  GETTABLEKS R26 R1 K1 ["PrimaryTools"]
  GETTABLEKS R25 R26 K9 ["Size"]
  GETTABLEKS R24 R25 K69 ["Y"]
  GETTABLEKS R23 R24 K70 ["Offset"]
  GETTABLEKS R27 R1 K2 ["Filters"]
  GETTABLEKS R26 R27 K9 ["Size"]
  GETTABLEKS R25 R26 K69 ["Y"]
  GETTABLEKS R24 R25 K70 ["Offset"]
  ADD R22 R23 R24
  GETTABLEKS R26 R1 K89 ["Popup"]
  GETTABLEKS R25 R26 K9 ["Size"]
  GETTABLEKS R24 R25 K69 ["Y"]
  GETTABLEKS R28 R1 K4 ["Footer"]
  GETTABLEKS R27 R28 K9 ["Size"]
  GETTABLEKS R26 R27 K69 ["Y"]
  GETTABLEKS R25 R26 K70 ["Offset"]
  SUB R23 R24 R25
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["ContainerYBounds"]
  GETTABLEKS R20 R1 K3 ["MaterialGrid"]
  GETIMPORT R21 K16 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R8
  CALL R21 4 1
  SETTABLEKS R21 R20 K9 ["Size"]
  NEWTABLE R20 2 0
  NEWCLOSURE R21 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K94 ["createTheme"]
  GETTABLEKS R21 R1 K89 ["Popup"]
  SETTABLEKS R21 R20 K89 ["Popup"]
  RETURN R20 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["MaterialFramework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K9 ["_Index"]
  GETTABLEKS R6 R7 K10 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K10 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["Resources"]
  GETTABLEKS R4 R5 K13 ["Theme"]
  GETTABLEKS R6 R2 K14 ["Style"]
  GETTABLEKS R5 R6 K15 ["StyleKey"]
  GETTABLEKS R6 R2 K16 ["ContextServices"]
  GETTABLEKS R10 R0 K17 ["Src"]
  GETTABLEKS R9 R10 K12 ["Resources"]
  GETTABLEKS R8 R9 K18 ["Localization"]
  GETTABLEKS R7 R8 K19 ["SourceStrings"]
  GETTABLEKS R11 R0 K17 ["Src"]
  GETTABLEKS R10 R11 K12 ["Resources"]
  GETTABLEKS R9 R10 K18 ["Localization"]
  GETTABLEKS R8 R9 K20 ["LocalizedStrings"]
  GETIMPORT R9 K22 [game]
  LOADK R11 K23 ["TextService"]
  NAMECALL R9 R9 K24 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K25 ["Flags"]
  GETTABLEKS R11 R12 K26 ["getFFlagMaterialPickerRemoveToggles"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K25 ["Flags"]
  GETTABLEKS R12 R13 K27 ["getFFlagEnableMaterialGenerator"]
  CALL R11 1 1
  GETIMPORT R12 K30 [string.format]
  LOADK R13 K31 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
  LOADK R14 K32 ["Light"]
  CALL R12 2 1
  GETIMPORT R13 K30 [string.format]
  LOADK R14 K31 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Generate.png"]
  LOADK R15 K33 ["Dark"]
  CALL R13 2 1
  GETIMPORT R14 K30 [string.format]
  LOADK R15 K34 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R16 K32 ["Light"]
  CALL R14 2 1
  GETIMPORT R15 K30 [string.format]
  LOADK R16 K34 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R17 K33 ["Dark"]
  CALL R15 2 1
  GETIMPORT R16 K30 [string.format]
  LOADK R17 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R18 K32 ["Light"]
  CALL R16 2 1
  GETIMPORT R17 K30 [string.format]
  LOADK R18 K35 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R19 K33 ["Dark"]
  CALL R17 2 1
  GETIMPORT R18 K30 [string.format]
  LOADK R19 K36 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R20 K32 ["Light"]
  CALL R18 2 1
  GETIMPORT R19 K30 [string.format]
  LOADK R20 K36 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R21 K33 ["Dark"]
  CALL R19 2 1
  NEWTABLE R20 16 0
  GETTABLEKS R21 R5 K37 ["MaterialGeneratorButtonIcon"]
  SETTABLE R13 R20 R21
  GETTABLEKS R21 R5 K38 ["MaterialManagerButtonIcon"]
  SETTABLE R15 R20 R21
  GETTABLEKS R21 R5 K39 ["ViewToggleButtonGridIcon"]
  SETTABLE R17 R20 R21
  GETTABLEKS R21 R5 K40 ["ViewToggleButtonListIcon"]
  SETTABLE R19 R20 R21
  GETTABLEKS R21 R5 K41 ["FilterChipTextColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K45 ["FFFFFF"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K46 ["FilterChipBorderColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K47 ["262626"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K48 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K49 ["3C3C3C"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K50 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K51 ["424242"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K52 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K53 ["1A1A1A"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K54 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R22 K44 [Color3.fromHex]
  LOADK R23 K55 ["252525"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  NEWTABLE R21 16 0
  GETTABLEKS R22 R5 K37 ["MaterialGeneratorButtonIcon"]
  SETTABLE R12 R21 R22
  GETTABLEKS R22 R5 K38 ["MaterialManagerButtonIcon"]
  SETTABLE R14 R21 R22
  GETTABLEKS R22 R5 K39 ["ViewToggleButtonGridIcon"]
  SETTABLE R16 R21 R22
  GETTABLEKS R22 R5 K40 ["ViewToggleButtonListIcon"]
  SETTABLE R18 R21 R22
  GETTABLEKS R22 R5 K41 ["FilterChipTextColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K56 ["000000"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K46 ["FilterChipBorderColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K57 ["B6B6B6"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K48 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K45 ["FFFFFF"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K50 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K58 ["E4EEFE"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K52 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K59 ["A8A8A8"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K54 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R23 K44 [Color3.fromHex]
  LOADK R24 K60 ["D8E6FF"]
  CALL R23 1 1
  SETTABLE R23 R21 R22
  DUPCLOSURE R22 K61 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R20
  CAPTURE VAL R21
  RETURN R22 1
