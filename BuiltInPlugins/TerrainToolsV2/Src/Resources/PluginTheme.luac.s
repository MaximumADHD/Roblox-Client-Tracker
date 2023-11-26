PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RunningUnderCLI"]
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  DUPTABLE R0 K2 [{"Name"}]
  LOADK R1 K3 ["Light"]
  SETTABLEKS R1 R0 K1 ["Name"]
  RETURN R0 1
  GETIMPORT R2 K5 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K6 ["Studio"]
  GETTABLEKS R0 R1 K7 ["Theme"]
  RETURN R0 1

PROTO_1:
  MOVE R2 R1
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Name"]
  GETTABLE R2 R1 R3
  JUMPIFNOT R2 [+9]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["RunningUnderCLI"]
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  DUPTABLE R3 K2 [{"Name"}]
  LOADK R4 K3 ["Light"]
  SETTABLEKS R4 R3 K1 ["Name"]
  JUMP [+7]
  GETIMPORT R5 K5 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K6 ["Studio"]
  GETTABLEKS R3 R4 K7 ["Theme"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["new"]
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  GETIMPORT R6 K10 [Rect.new]
  LOADN R7 3
  LOADN R8 3
  LOADN R9 13
  LOADN R10 13
  CALL R6 4 1
  DUPTABLE R8 K15 [{"toggleOnImage", "toggleOffImage", "toggleLockModeOnImage", "toggleLockModeOffImage"}]
  LOADK R9 K16 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
  SETTABLEKS R9 R8 K11 ["toggleOnImage"]
  LOADK R9 K17 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
  SETTABLEKS R9 R8 K12 ["toggleOffImage"]
  LOADK R9 K18 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png"]
  SETTABLEKS R9 R8 K13 ["toggleLockModeOnImage"]
  LOADK R9 K19 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
  SETTABLEKS R9 R8 K14 ["toggleLockModeOffImage"]
  DUPTABLE R9 K21 [{"Dark"}]
  DUPTABLE R10 K15 [{"toggleOnImage", "toggleOffImage", "toggleLockModeOnImage", "toggleLockModeOffImage"}]
  LOADK R11 K22 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
  SETTABLEKS R11 R10 K11 ["toggleOnImage"]
  LOADK R11 K23 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
  SETTABLEKS R11 R10 K12 ["toggleOffImage"]
  LOADK R11 K24 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png"]
  SETTABLEKS R11 R10 K13 ["toggleLockModeOnImage"]
  LOADK R11 K25 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
  SETTABLEKS R11 R10 K14 ["toggleLockModeOffImage"]
  SETTABLEKS R10 R9 K20 ["Dark"]
  MOVE R10 R9
  JUMPIFNOT R10 [+3]
  GETTABLEKS R11 R3 K1 ["Name"]
  GETTABLE R10 R9 R11
  JUMPIFNOT R10 [+10]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K26 ["Dictionary"]
  GETTABLEKS R11 R12 K27 ["join"]
  MOVE R12 R8
  MOVE R13 R10
  CALL R11 2 1
  MOVE R7 R11
  JUMP [+2]
  MOVE R7 R8
  JUMP [0]
  DUPTABLE R9 K36 [{"sphereBrushImage", "cubeBrushImage", "cylinderBrushImage", "flattenBothImage", "flattenErodeImage", "flattenGrowImage", "pickHeightEnableImage", "pickHeightDisableImage"}]
  LOADK R10 K37 ["rbxasset://textures/TerrainTools/icon_shape_sphere.png"]
  SETTABLEKS R10 R9 K28 ["sphereBrushImage"]
  LOADK R10 K38 ["rbxasset://textures/TerrainTools/icon_shape_cube.png"]
  SETTABLEKS R10 R9 K29 ["cubeBrushImage"]
  LOADK R10 K39 ["rbxasset://textures/TerrainTools/icon_shape_cylinder.png"]
  SETTABLEKS R10 R9 K30 ["cylinderBrushImage"]
  LOADK R10 K40 ["rbxasset://textures/TerrainTools/icon_flatten_both.png"]
  SETTABLEKS R10 R9 K31 ["flattenBothImage"]
  LOADK R10 K41 ["rbxasset://textures/TerrainTools/icon_flatten_erode.png"]
  SETTABLEKS R10 R9 K32 ["flattenErodeImage"]
  LOADK R10 K42 ["rbxasset://textures/TerrainTools/icon_flatten_grow.png"]
  SETTABLEKS R10 R9 K33 ["flattenGrowImage"]
  LOADK R10 K43 ["rbxasset://textures/TerrainTools/icon_picker_enable.png"]
  SETTABLEKS R10 R9 K34 ["pickHeightEnableImage"]
  LOADK R10 K44 ["rbxasset://textures/TerrainTools/icon_picker_disable.png"]
  SETTABLEKS R10 R9 K35 ["pickHeightDisableImage"]
  DUPTABLE R10 K21 [{"Dark"}]
  DUPTABLE R11 K45 [{"pickHeightDisableImage"}]
  LOADK R12 K46 ["rbxasset://textures/TerrainTools/icon_picker_disable_dark.png"]
  SETTABLEKS R12 R11 K35 ["pickHeightDisableImage"]
  SETTABLEKS R11 R10 K20 ["Dark"]
  MOVE R11 R10
  JUMPIFNOT R11 [+3]
  GETTABLEKS R12 R3 K1 ["Name"]
  GETTABLE R11 R10 R12
  JUMPIFNOT R11 [+10]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K26 ["Dictionary"]
  GETTABLEKS R12 R13 K27 ["join"]
  MOVE R13 R9
  MOVE R14 R11
  CALL R12 2 1
  MOVE R8 R12
  JUMP [+2]
  MOVE R8 R9
  JUMP [0]
  DUPTABLE R10 K36 [{"sphereBrushImage", "cubeBrushImage", "cylinderBrushImage", "flattenBothImage", "flattenErodeImage", "flattenGrowImage", "pickHeightEnableImage", "pickHeightDisableImage"}]
  GETUPVAL R12 3
  LOADK R13 K47 ["TerrainBrushTypeSphere.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K28 ["sphereBrushImage"]
  GETUPVAL R12 3
  LOADK R13 K48 ["TerrainBrushTypeCube.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K29 ["cubeBrushImage"]
  GETUPVAL R12 3
  LOADK R13 K49 ["TerrainBrushTypeCylinder.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K30 ["cylinderBrushImage"]
  GETUPVAL R12 3
  LOADK R13 K50 ["FlattenModeRemoveAboveFillBelow.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K31 ["flattenBothImage"]
  GETUPVAL R12 3
  LOADK R13 K51 ["FlattenModeRemoveAbove.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K32 ["flattenErodeImage"]
  GETUPVAL R12 3
  LOADK R13 K52 ["FlattenModeFillBelow.png"]
  CONCAT R11 R12 R13
  SETTABLEKS R11 R10 K33 ["flattenGrowImage"]
  LOADK R11 K43 ["rbxasset://textures/TerrainTools/icon_picker_enable.png"]
  SETTABLEKS R11 R10 K34 ["pickHeightEnableImage"]
  LOADK R11 K44 ["rbxasset://textures/TerrainTools/icon_picker_disable.png"]
  SETTABLEKS R11 R10 K35 ["pickHeightDisableImage"]
  DUPTABLE R11 K21 [{"Dark"}]
  DUPTABLE R12 K53 [{"sphereBrushImage", "cubeBrushImage", "cylinderBrushImage", "flattenBothImage", "flattenErodeImage", "flattenGrowImage", "pickHeightDisableImage"}]
  GETUPVAL R14 4
  LOADK R15 K47 ["TerrainBrushTypeSphere.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K28 ["sphereBrushImage"]
  GETUPVAL R14 4
  LOADK R15 K48 ["TerrainBrushTypeCube.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K29 ["cubeBrushImage"]
  GETUPVAL R14 4
  LOADK R15 K49 ["TerrainBrushTypeCylinder.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K30 ["cylinderBrushImage"]
  GETUPVAL R14 4
  LOADK R15 K50 ["FlattenModeRemoveAboveFillBelow.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K31 ["flattenBothImage"]
  GETUPVAL R14 4
  LOADK R15 K51 ["FlattenModeRemoveAbove.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K32 ["flattenErodeImage"]
  GETUPVAL R14 4
  LOADK R15 K52 ["FlattenModeFillBelow.png"]
  CONCAT R13 R14 R15
  SETTABLEKS R13 R12 K33 ["flattenGrowImage"]
  LOADK R13 K46 ["rbxasset://textures/TerrainTools/icon_picker_disable_dark.png"]
  SETTABLEKS R13 R12 K35 ["pickHeightDisableImage"]
  SETTABLEKS R12 R11 K20 ["Dark"]
  MOVE R12 R11
  JUMPIFNOT R12 [+3]
  GETTABLEKS R13 R3 K1 ["Name"]
  GETTABLE R12 R11 R13
  JUMPIFNOT R12 [+10]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K26 ["Dictionary"]
  GETTABLEKS R13 R14 K27 ["join"]
  MOVE R14 R10
  MOVE R15 R12
  CALL R13 2 1
  MOVE R9 R13
  JUMP [+2]
  MOVE R9 R10
  JUMP [0]
  DUPTABLE R11 K59 [{"closeIcon", "openIcon", "panelColor", "font", "textSize"}]
  LOADK R12 K60 ["rbxasset://textures/TerrainTools/button_arrow.png"]
  SETTABLEKS R12 R11 K54 ["closeIcon"]
  LOADK R12 K61 ["rbxasset://textures/TerrainTools/button_arrow_down.png"]
  SETTABLEKS R12 R11 K55 ["openIcon"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K56 ["panelColor"]
  SETTABLEKS R12 R11 K56 ["panelColor"]
  GETIMPORT R12 K65 [Enum.Font.SourceSansBold]
  SETTABLEKS R12 R11 K57 ["font"]
  LOADN R12 18
  SETTABLEKS R12 R11 K58 ["textSize"]
  DUPTABLE R12 K21 [{"Dark"}]
  DUPTABLE R13 K66 [{"panelColor"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K67 ["panelColor_dark"]
  SETTABLEKS R14 R13 K56 ["panelColor"]
  SETTABLEKS R13 R12 K20 ["Dark"]
  MOVE R13 R12
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R3 K1 ["Name"]
  GETTABLE R13 R12 R14
  JUMPIFNOT R13 [+10]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K26 ["Dictionary"]
  GETTABLEKS R14 R15 K27 ["join"]
  MOVE R15 R11
  MOVE R16 R13
  CALL R14 2 1
  MOVE R10 R14
  JUMP [+2]
  MOVE R10 R11
  JUMP [0]
  DUPTABLE R12 K70 [{"styleSheet", "textSize", "textBoxColor"}]
  DUPTABLE R13 K77 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K78 ["buttonColor"]
  SETTABLEKS R14 R13 K71 ["ButtonColor"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K79 ["buttonHover"]
  SETTABLEKS R14 R13 K72 ["ButtonColor_Hover"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K80 ["buttonColorDisabled"]
  SETTABLEKS R14 R13 K73 ["ButtonColor_Disabled"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K81 ["buttonTextColor"]
  SETTABLEKS R14 R13 K74 ["TextColor"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K81 ["buttonTextColor"]
  SETTABLEKS R14 R13 K75 ["TextColor_Disabled"]
  GETTABLEKS R14 R5 K82 ["borderColor"]
  SETTABLEKS R14 R13 K76 ["BorderColor"]
  SETTABLEKS R13 R12 K68 ["styleSheet"]
  LOADN R13 16
  SETTABLEKS R13 R12 K58 ["textSize"]
  GETTABLEKS R13 R5 K83 ["backgroundColor"]
  SETTABLEKS R13 R12 K69 ["textBoxColor"]
  DUPTABLE R13 K21 [{"Dark"}]
  DUPTABLE R14 K84 [{"styleSheet", "textBoxColor"}]
  DUPTABLE R15 K77 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K78 ["buttonColor"]
  SETTABLEKS R16 R15 K71 ["ButtonColor"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K79 ["buttonHover"]
  SETTABLEKS R16 R15 K72 ["ButtonColor_Hover"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K85 ["buttonColorDisabled_Dark"]
  SETTABLEKS R16 R15 K73 ["ButtonColor_Disabled"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K81 ["buttonTextColor"]
  SETTABLEKS R16 R15 K74 ["TextColor"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K86 ["buttonTextDisabled_Dark"]
  SETTABLEKS R16 R15 K75 ["TextColor_Disabled"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K87 ["borderColor_dark"]
  SETTABLEKS R16 R15 K76 ["BorderColor"]
  SETTABLEKS R15 R14 K68 ["styleSheet"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K88 ["textBox_dark"]
  SETTABLEKS R15 R14 K69 ["textBoxColor"]
  SETTABLEKS R14 R13 K20 ["Dark"]
  MOVE R14 R13
  JUMPIFNOT R14 [+3]
  GETTABLEKS R15 R3 K1 ["Name"]
  GETTABLE R14 R13 R15
  JUMPIFNOT R14 [+10]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K26 ["Dictionary"]
  GETTABLEKS R15 R16 K27 ["join"]
  MOVE R16 R12
  MOVE R17 R14
  CALL R15 2 1
  MOVE R11 R15
  JUMP [+2]
  MOVE R11 R12
  JUMP [0]
  DUPTABLE R13 K90 [{"styleSheet", "styleSheetNotToggled", "textSize", "textBoxColor"}]
  DUPTABLE R14 K91 [{"ButtonColor", "ButtonColor_Hover", "TextColor", "BorderColor"}]
  GETIMPORT R15 K94 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 255
  LOADN R18 255
  CALL R15 3 1
  SETTABLEKS R15 R14 K71 ["ButtonColor"]
  GETIMPORT R15 K94 [Color3.fromRGB]
  LOADN R16 228
  LOADN R17 238
  LOADN R18 253
  CALL R15 3 1
  SETTABLEKS R15 R14 K72 ["ButtonColor_Hover"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K88 ["textBox_dark"]
  SETTABLEKS R15 R14 K74 ["TextColor"]
  GETTABLEKS R15 R5 K82 ["borderColor"]
  SETTABLEKS R15 R14 K76 ["BorderColor"]
  SETTABLEKS R14 R13 K68 ["styleSheet"]
  DUPTABLE R14 K91 [{"ButtonColor", "ButtonColor_Hover", "TextColor", "BorderColor"}]
  GETIMPORT R15 K94 [Color3.fromRGB]
  LOADN R16 219
  LOADN R17 219
  LOADN R18 219
  CALL R15 3 1
  SETTABLEKS R15 R14 K71 ["ButtonColor"]
  GETIMPORT R15 K94 [Color3.fromRGB]
  LOADN R16 239
  LOADN R17 239
  LOADN R18 239
  CALL R15 3 1
  SETTABLEKS R15 R14 K72 ["ButtonColor_Hover"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K88 ["textBox_dark"]
  SETTABLEKS R15 R14 K74 ["TextColor"]
  GETTABLEKS R15 R5 K82 ["borderColor"]
  SETTABLEKS R15 R14 K76 ["BorderColor"]
  SETTABLEKS R14 R13 K89 ["styleSheetNotToggled"]
  LOADN R14 14
  SETTABLEKS R14 R13 K58 ["textSize"]
  GETTABLEKS R14 R5 K83 ["backgroundColor"]
  SETTABLEKS R14 R13 K69 ["textBoxColor"]
  DUPTABLE R14 K21 [{"Dark"}]
  DUPTABLE R15 K95 [{"styleSheet", "styleSheetNotToggled", "textBoxColor"}]
  DUPTABLE R16 K91 [{"ButtonColor", "ButtonColor_Hover", "TextColor", "BorderColor"}]
  GETIMPORT R17 K94 [Color3.fromRGB]
  LOADN R18 85
  LOADN R19 85
  LOADN R20 85
  CALL R17 3 1
  SETTABLEKS R17 R16 K71 ["ButtonColor"]
  GETIMPORT R17 K94 [Color3.fromRGB]
  LOADN R18 55
  LOADN R19 55
  LOADN R20 55
  CALL R17 3 1
  SETTABLEKS R17 R16 K72 ["ButtonColor_Hover"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K81 ["buttonTextColor"]
  SETTABLEKS R17 R16 K74 ["TextColor"]
  GETTABLEKS R17 R5 K82 ["borderColor"]
  SETTABLEKS R17 R16 K76 ["BorderColor"]
  SETTABLEKS R16 R15 K68 ["styleSheet"]
  DUPTABLE R16 K91 [{"ButtonColor", "ButtonColor_Hover", "TextColor", "BorderColor"}]
  GETIMPORT R17 K94 [Color3.fromRGB]
  LOADN R18 35
  LOADN R19 35
  LOADN R20 35
  CALL R17 3 1
  SETTABLEKS R17 R16 K71 ["ButtonColor"]
  GETIMPORT R17 K94 [Color3.fromRGB]
  LOADN R18 45
  LOADN R19 45
  LOADN R20 45
  CALL R17 3 1
  SETTABLEKS R17 R16 K72 ["ButtonColor_Hover"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K81 ["buttonTextColor"]
  SETTABLEKS R17 R16 K74 ["TextColor"]
  GETTABLEKS R17 R5 K82 ["borderColor"]
  SETTABLEKS R17 R16 K76 ["BorderColor"]
  SETTABLEKS R16 R15 K89 ["styleSheetNotToggled"]
  GETTABLEKS R16 R5 K83 ["backgroundColor"]
  SETTABLEKS R16 R15 K69 ["textBoxColor"]
  SETTABLEKS R15 R14 K20 ["Dark"]
  MOVE R15 R14
  JUMPIFNOT R15 [+3]
  GETTABLEKS R16 R3 K1 ["Name"]
  GETTABLE R15 R14 R16
  JUMPIFNOT R15 [+10]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K26 ["Dictionary"]
  GETTABLEKS R16 R17 K27 ["join"]
  MOVE R17 R13
  MOVE R18 R15
  CALL R16 2 1
  MOVE R12 R16
  JUMP [+2]
  MOVE R12 R13
  JUMP [0]
  DUPTABLE R14 K101 [{"roundedBorderImage", "roundedBackgroundImage", "roundedElementSlice", "buttonSelectedColor", "buttonHoveredColor"}]
  LOADK R15 K102 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R15 R14 K96 ["roundedBorderImage"]
  LOADK R15 K103 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R15 R14 K97 ["roundedBackgroundImage"]
  SETTABLEKS R6 R14 K98 ["roundedElementSlice"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K104 ["singleSelectButtonSelected"]
  SETTABLEKS R15 R14 K99 ["buttonSelectedColor"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K105 ["singleSelectButtonHovered"]
  SETTABLEKS R15 R14 K100 ["buttonHoveredColor"]
  DUPTABLE R15 K21 [{"Dark"}]
  DUPTABLE R16 K106 [{"buttonSelectedColor", "buttonHoveredColor"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K107 ["singleSelectButtonSelected_dark"]
  SETTABLEKS R17 R16 K99 ["buttonSelectedColor"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K108 ["singleSelectButtonHovered_dark"]
  SETTABLEKS R17 R16 K100 ["buttonHoveredColor"]
  SETTABLEKS R16 R15 K20 ["Dark"]
  MOVE R16 R15
  JUMPIFNOT R16 [+3]
  GETTABLEKS R17 R3 K1 ["Name"]
  GETTABLE R16 R15 R17
  JUMPIFNOT R16 [+10]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K26 ["Dictionary"]
  GETTABLEKS R17 R18 K27 ["join"]
  MOVE R18 R14
  MOVE R19 R16
  CALL R17 2 1
  MOVE R13 R17
  JUMP [+2]
  MOVE R13 R14
  JUMP [0]
  DUPTABLE R15 K115 [{"lockedIcon", "unlockedIcon", "paperclipColor", "iconBackgroundHover", "iconBorderHover", "iconBackgroundHoverTransparency"}]
  LOADK R16 K116 ["rbxasset://textures/TerrainTools/locked.png"]
  SETTABLEKS R16 R15 K109 ["lockedIcon"]
  LOADK R16 K117 ["rbxasset://textures/TerrainTools/unlocked.png"]
  SETTABLEKS R16 R15 K110 ["unlockedIcon"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K118 ["propertyLockPaperclipColor"]
  SETTABLEKS R16 R15 K111 ["paperclipColor"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K119 ["propertyLockIconBackgroundHover"]
  SETTABLEKS R16 R15 K112 ["iconBackgroundHover"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K120 ["propertyLockIconBorderHover"]
  SETTABLEKS R16 R15 K113 ["iconBorderHover"]
  LOADN R16 0
  SETTABLEKS R16 R15 K114 ["iconBackgroundHoverTransparency"]
  DUPTABLE R16 K21 [{"Dark"}]
  DUPTABLE R17 K121 [{"iconBackgroundHover", "iconBorderHover", "iconBackgroundHoverTransparency"}]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K122 ["propertyLockIconBackgroundHover_dark"]
  SETTABLEKS R18 R17 K112 ["iconBackgroundHover"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K123 ["propertyLockIconBorderHover_dark"]
  SETTABLEKS R18 R17 K113 ["iconBorderHover"]
  LOADK R18 K124 [0.5]
  SETTABLEKS R18 R17 K114 ["iconBackgroundHoverTransparency"]
  SETTABLEKS R17 R16 K20 ["Dark"]
  MOVE R17 R16
  JUMPIFNOT R17 [+3]
  GETTABLEKS R18 R3 K1 ["Name"]
  GETTABLE R17 R16 R18
  JUMPIFNOT R17 [+10]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K26 ["Dictionary"]
  GETTABLEKS R18 R19 K27 ["join"]
  MOVE R19 R15
  MOVE R20 R17
  CALL R18 2 1
  MOVE R14 R18
  JUMP [+2]
  MOVE R14 R15
  JUMP [0]
  DUPTABLE R16 K129 [{"scrollTopImage", "scrollMidImage", "scrollBotImage", "verticalScrollBarInset"}]
  LOADK R17 K130 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
  SETTABLEKS R17 R16 K125 ["scrollTopImage"]
  LOADK R17 K131 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
  SETTABLEKS R17 R16 K126 ["scrollMidImage"]
  LOADK R17 K132 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
  SETTABLEKS R17 R16 K127 ["scrollBotImage"]
  GETIMPORT R17 K135 [Enum.ScrollBarInset.None]
  SETTABLEKS R17 R16 K128 ["verticalScrollBarInset"]
  MOVE R15 R16
  JUMP [0]
  DUPTABLE R17 K140 [{"currentTabSize", "currentTabOffset", "otherTabSize", "otherTabOffset"}]
  GETIMPORT R18 K142 [UDim2.new]
  LOADN R19 1
  LOADN R20 252
  LOADN R21 1
  LOADN R22 254
  CALL R18 4 1
  SETTABLEKS R18 R17 K136 ["currentTabSize"]
  GETIMPORT R18 K142 [UDim2.new]
  LOADN R19 0
  LOADN R20 2
  LOADN R21 0
  LOADN R22 2
  CALL R18 4 1
  SETTABLEKS R18 R17 K137 ["currentTabOffset"]
  GETIMPORT R18 K142 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 254
  CALL R18 4 1
  SETTABLEKS R18 R17 K138 ["otherTabSize"]
  GETIMPORT R18 K142 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K139 ["otherTabOffset"]
  MOVE R16 R17
  JUMP [0]
  DUPTABLE R18 K154 [{"expandIcon", "clearIcon", "importIcon", "previewBackgroundColor", "previewHoveredBackgroundColor", "previewBorderColor", "buttonIconColor", "buttonIconHoveredColor", "toolbarTransparency", "toolbarBackgroundColor", "toolbarButtonBackgroundColor"}]
  LOADK R19 K155 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
  SETTABLEKS R19 R18 K143 ["expandIcon"]
  LOADK R19 K156 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
  SETTABLEKS R19 R18 K144 ["clearIcon"]
  LOADK R19 K157 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
  SETTABLEKS R19 R18 K145 ["importIcon"]
  MOVE R19 R0
  GETTABLEKS R20 R1 K158 ["RibbonButton"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K146 ["previewBackgroundColor"]
  MOVE R19 R0
  GETTABLEKS R20 R1 K158 ["RibbonButton"]
  GETTABLEKS R21 R2 K159 ["Hover"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K147 ["previewHoveredBackgroundColor"]
  MOVE R19 R0
  GETTABLEKS R20 R1 K160 ["Border"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K148 ["previewBorderColor"]
  GETIMPORT R19 K94 [Color3.fromRGB]
  LOADN R20 167
  LOADN R21 167
  LOADN R22 167
  CALL R19 3 1
  SETTABLEKS R19 R18 K149 ["buttonIconColor"]
  GETIMPORT R19 K94 [Color3.fromRGB]
  LOADN R20 254
  LOADN R21 254
  LOADN R22 254
  CALL R19 3 1
  SETTABLEKS R19 R18 K150 ["buttonIconHoveredColor"]
  LOADK R19 K161 [0.4]
  SETTABLEKS R19 R18 K151 ["toolbarTransparency"]
  GETIMPORT R19 K94 [Color3.fromRGB]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  SETTABLEKS R19 R18 K152 ["toolbarBackgroundColor"]
  GETIMPORT R19 K94 [Color3.fromRGB]
  LOADN R20 39
  LOADN R21 39
  LOADN R22 39
  CALL R19 3 1
  SETTABLEKS R19 R18 K153 ["toolbarButtonBackgroundColor"]
  DUPTABLE R19 K21 [{"Dark"}]
  DUPTABLE R20 K162 [{"buttonIconColor", "buttonIconHoveredColor", "toolbarBackgroundColor", "toolbarButtonBackgroundColor"}]
  GETIMPORT R21 K94 [Color3.fromRGB]
  LOADN R22 167
  LOADN R23 167
  LOADN R24 167
  CALL R21 3 1
  SETTABLEKS R21 R20 K149 ["buttonIconColor"]
  GETIMPORT R21 K94 [Color3.fromRGB]
  LOADN R22 254
  LOADN R23 254
  LOADN R24 254
  CALL R21 3 1
  SETTABLEKS R21 R20 K150 ["buttonIconHoveredColor"]
  GETIMPORT R21 K94 [Color3.fromRGB]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R21 3 1
  SETTABLEKS R21 R20 K152 ["toolbarBackgroundColor"]
  GETIMPORT R21 K94 [Color3.fromRGB]
  LOADN R22 39
  LOADN R23 39
  LOADN R24 39
  CALL R21 3 1
  SETTABLEKS R21 R20 K153 ["toolbarButtonBackgroundColor"]
  SETTABLEKS R20 R19 K20 ["Dark"]
  MOVE R20 R19
  JUMPIFNOT R20 [+3]
  GETTABLEKS R21 R3 K1 ["Name"]
  GETTABLE R20 R19 R21
  JUMPIFNOT R20 [+10]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K26 ["Dictionary"]
  GETTABLEKS R21 R22 K27 ["join"]
  MOVE R22 R18
  MOVE R23 R20
  CALL R21 2 1
  MOVE R17 R21
  JUMP [+2]
  MOVE R17 R18
  JUMP [0]
  DUPTABLE R19 K166 [{"backgroundColor", "titleColor", "backgroundImage", "selectedImage"}]
  GETIMPORT R20 K94 [Color3.fromRGB]
  LOADN R21 182
  LOADN R22 182
  LOADN R23 182
  CALL R20 3 1
  SETTABLEKS R20 R19 K83 ["backgroundColor"]
  MOVE R20 R0
  GETTABLEKS R21 R1 K167 ["MainText"]
  GETTABLEKS R22 R2 K168 ["Default"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K163 ["titleColor"]
  LOADK R20 K169 ["rbxasset://textures/GameSettings/UncheckedBox.png"]
  SETTABLEKS R20 R19 K164 ["backgroundImage"]
  LOADK R20 K170 ["rbxasset://textures/GameSettings/CheckedBoxLight.png"]
  SETTABLEKS R20 R19 K165 ["selectedImage"]
  MOVE R18 R19
  JUMP [0]
  DUPTABLE R20 K173 [{"slice", "backgroundImage", "borderImage"}]
  GETIMPORT R21 K10 [Rect.new]
  LOADN R22 3
  LOADN R23 3
  LOADN R24 13
  LOADN R25 13
  CALL R21 4 1
  SETTABLEKS R21 R20 K171 ["slice"]
  LOADK R21 K103 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R21 R20 K164 ["backgroundImage"]
  LOADK R21 K102 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R21 R20 K172 ["borderImage"]
  MOVE R19 R20
  JUMP [0]
  DUPTABLE R21 K174 [{"font"}]
  GETIMPORT R22 K176 [Enum.Font.SourceSans]
  SETTABLEKS R22 R21 K57 ["font"]
  MOVE R20 R21
  JUMP [0]
  DUPTABLE R22 K178 [{"resetIcon", "buttonIconColor"}]
  LOADK R23 K179 ["rbxasset://textures/StudioToolbox/AssetConfig/restore.png"]
  SETTABLEKS R23 R22 K177 ["resetIcon"]
  GETIMPORT R23 K94 [Color3.fromRGB]
  LOADN R24 128
  LOADN R25 128
  LOADN R26 128
  CALL R23 3 1
  SETTABLEKS R23 R22 K149 ["buttonIconColor"]
  DUPTABLE R23 K21 [{"Dark"}]
  DUPTABLE R24 K180 [{"buttonIconColor"}]
  GETIMPORT R25 K94 [Color3.fromRGB]
  LOADN R26 204
  LOADN R27 204
  LOADN R28 204
  CALL R25 3 1
  SETTABLEKS R25 R24 K149 ["buttonIconColor"]
  SETTABLEKS R24 R23 K20 ["Dark"]
  MOVE R24 R23
  JUMPIFNOT R24 [+3]
  GETTABLEKS R25 R3 K1 ["Name"]
  GETTABLE R24 R23 R25
  JUMPIFNOT R24 [+10]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K26 ["Dictionary"]
  GETTABLEKS R25 R26 K27 ["join"]
  MOVE R26 R22
  MOVE R27 R24
  CALL R25 2 1
  MOVE R21 R25
  JUMP [+2]
  MOVE R21 R22
  JUMP [0]
  DUPTABLE R22 K182 [{"Default", "Primary"}]
  DUPTABLE R23 K186 [{"font", "isRound", "backgroundColor", "textColor", "borderColor", "hovered"}]
  GETTABLEKS R24 R5 K57 ["font"]
  SETTABLEKS R24 R23 K57 ["font"]
  LOADB R24 1
  SETTABLEKS R24 R23 K183 ["isRound"]
  GETTABLEKS R24 R5 K187 ["itemColor"]
  SETTABLEKS R24 R23 K83 ["backgroundColor"]
  GETTABLEKS R24 R5 K184 ["textColor"]
  SETTABLEKS R24 R23 K184 ["textColor"]
  GETTABLEKS R24 R5 K82 ["borderColor"]
  SETTABLEKS R24 R23 K82 ["borderColor"]
  DUPTABLE R24 K188 [{"backgroundColor", "textColor", "borderColor"}]
  GETTABLEKS R25 R5 K189 ["hoveredItemColor"]
  SETTABLEKS R25 R24 K83 ["backgroundColor"]
  GETTABLEKS R25 R5 K190 ["hoveredTextColor"]
  SETTABLEKS R25 R24 K184 ["textColor"]
  GETTABLEKS R25 R5 K82 ["borderColor"]
  SETTABLEKS R25 R24 K82 ["borderColor"]
  SETTABLEKS R24 R23 K185 ["hovered"]
  SETTABLEKS R23 R22 K168 ["Default"]
  DUPTABLE R23 K186 [{"font", "isRound", "backgroundColor", "textColor", "borderColor", "hovered"}]
  GETTABLEKS R24 R5 K57 ["font"]
  SETTABLEKS R24 R23 K57 ["font"]
  LOADB R24 1
  SETTABLEKS R24 R23 K183 ["isRound"]
  GETTABLEKS R24 R5 K191 ["primaryItemColor"]
  SETTABLEKS R24 R23 K83 ["backgroundColor"]
  GETTABLEKS R24 R5 K192 ["primaryTextColor"]
  SETTABLEKS R24 R23 K184 ["textColor"]
  GETTABLEKS R24 R5 K193 ["primaryBorderColor"]
  SETTABLEKS R24 R23 K82 ["borderColor"]
  DUPTABLE R24 K188 [{"backgroundColor", "textColor", "borderColor"}]
  GETTABLEKS R25 R5 K194 ["primaryHoveredItemColor"]
  SETTABLEKS R25 R24 K83 ["backgroundColor"]
  GETTABLEKS R25 R5 K195 ["primaryHoveredTextColor"]
  SETTABLEKS R25 R24 K184 ["textColor"]
  GETTABLEKS R25 R5 K196 ["primaryHoveredBorderColor"]
  SETTABLEKS R25 R24 K82 ["borderColor"]
  SETTABLEKS R24 R23 K185 ["hovered"]
  SETTABLEKS R23 R22 K181 ["Primary"]
  GETUPVAL R23 6
  MOVE R24 R5
  DUPTABLE R25 K216 [{"textSize", "padding", "font", "errorColor", "warningColor", "selectionBorderColor", "tabTheme", "toggleTheme", "toolRenderTheme", "brushSettingsTheme", "panelTheme", "roundTextButtonTheme", "roundToggleTextButtonTheme", "singleSelectButtonGroupTheme", "propertyLockTheme", "promptSelectorWithPreviewTheme", "checkBox", "roundFrame", "textButton", "iconButton", "button"}]
  LOADN R26 16
  SETTABLEKS R26 R25 K58 ["textSize"]
  LOADN R26 4
  SETTABLEKS R26 R25 K197 ["padding"]
  GETIMPORT R26 K176 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K57 ["font"]
  GETIMPORT R26 K94 [Color3.fromRGB]
  LOADN R27 216
  LOADN R28 104
  LOADN R29 104
  CALL R26 3 1
  SETTABLEKS R26 R25 K198 ["errorColor"]
  GETIMPORT R26 K94 [Color3.fromRGB]
  LOADN R27 255
  LOADN R28 128
  LOADN R29 0
  CALL R26 3 1
  SETTABLEKS R26 R25 K199 ["warningColor"]
  GETIMPORT R26 K94 [Color3.fromRGB]
  LOADN R27 0
  LOADN R28 162
  LOADN R29 255
  CALL R26 3 1
  SETTABLEKS R26 R25 K200 ["selectionBorderColor"]
  SETTABLEKS R16 R25 K201 ["tabTheme"]
  SETTABLEKS R7 R25 K202 ["toggleTheme"]
  SETTABLEKS R15 R25 K203 ["toolRenderTheme"]
  SETTABLEKS R9 R25 K204 ["brushSettingsTheme"]
  SETTABLEKS R10 R25 K205 ["panelTheme"]
  SETTABLEKS R11 R25 K206 ["roundTextButtonTheme"]
  SETTABLEKS R12 R25 K207 ["roundToggleTextButtonTheme"]
  SETTABLEKS R13 R25 K208 ["singleSelectButtonGroupTheme"]
  SETTABLEKS R14 R25 K209 ["propertyLockTheme"]
  SETTABLEKS R17 R25 K210 ["promptSelectorWithPreviewTheme"]
  SETTABLEKS R18 R25 K211 ["checkBox"]
  SETTABLEKS R19 R25 K212 ["roundFrame"]
  SETTABLEKS R20 R25 K213 ["textButton"]
  SETTABLEKS R21 R25 K214 ["iconButton"]
  SETTABLEKS R22 R25 K215 ["button"]
  DUPTABLE R26 K21 [{"Dark"}]
  DUPTABLE R27 K217 [{"borderColor"}]
  GETIMPORT R28 K94 [Color3.fromRGB]
  LOADN R29 26
  LOADN R30 26
  LOADN R31 26
  CALL R28 3 1
  SETTABLEKS R28 R27 K82 ["borderColor"]
  SETTABLEKS R27 R26 K20 ["Dark"]
  CALL R23 3 1
  RETURN R23 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createValues"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["newDummyTheme"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createValues"]
  CALL R0 1 -1
  RETURN R0 -1

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
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["DEPRECATED_Theme"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["StudioTheme"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["StudioStyle"]
  CALL R5 1 1
  GETTABLEKS R7 R1 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["deepJoin"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K12 ["Util"]
  GETTABLEKS R8 R9 K14 ["DebugFlags"]
  CALL R7 1 1
  GETIMPORT R8 K17 [string.format]
  LOADK R9 K18 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R10 K19 ["Light"]
  CALL R8 2 1
  GETIMPORT R9 K17 [string.format]
  LOADK R10 K18 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R11 K20 ["Dark"]
  CALL R9 2 1
  NEWTABLE R10 4 0
  DUPTABLE R11 K42 [{"buttonColor", "buttonHover", "buttonPressed", "buttonColorDisabled", "buttonColorDisabled_Dark", "buttonTextColor", "buttonTextDisabled_Dark", "borderColor_dark", "errorColor", "panelColor", "panelColor_dark", "textBox_dark", "singleSelectButtonSelected", "singleSelectButtonSelected_dark", "singleSelectButtonHovered", "singleSelectButtonHovered_dark", "propertyLockPaperclipColor", "propertyLockIconBackgroundHover", "propertyLockIconBackgroundHover_dark", "propertyLockIconBorderHover", "propertyLockIconBorderHover_dark"}]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 0
  LOADN R14 162
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["buttonColor"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 50
  LOADN R14 181
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["buttonHover"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 0
  LOADN R14 116
  LOADN R15 189
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["buttonPressed"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 153
  LOADN R14 218
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["buttonColorDisabled"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 60
  LOADN R14 60
  LOADN R15 60
  CALL R12 3 1
  SETTABLEKS R12 R11 K25 ["buttonColorDisabled_Dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 255
  LOADN R14 255
  LOADN R15 255
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["buttonTextColor"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 102
  LOADN R14 102
  LOADN R15 102
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["buttonTextDisabled_Dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 26
  LOADN R14 26
  LOADN R15 26
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["borderColor_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 216
  LOADN R14 104
  LOADN R15 104
  CALL R12 3 1
  SETTABLEKS R12 R11 K29 ["errorColor"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 240
  LOADN R14 240
  LOADN R15 240
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["panelColor"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 53
  LOADN R14 53
  LOADN R15 53
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["panelColor_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 37
  LOADN R14 37
  LOADN R15 37
  CALL R12 3 1
  SETTABLEKS R12 R11 K32 ["textBox_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 219
  LOADN R14 219
  LOADN R15 219
  CALL R12 3 1
  SETTABLEKS R12 R11 K33 ["singleSelectButtonSelected"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 85
  LOADN R14 85
  LOADN R15 85
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["singleSelectButtonSelected_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 228
  LOADN R14 238
  LOADN R15 253
  CALL R12 3 1
  SETTABLEKS R12 R11 K35 ["singleSelectButtonHovered"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 63
  LOADN R14 63
  LOADN R15 63
  CALL R12 3 1
  SETTABLEKS R12 R11 K36 ["singleSelectButtonHovered_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 151
  LOADN R14 151
  LOADN R15 151
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["propertyLockPaperclipColor"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 228
  LOADN R14 238
  LOADN R15 254
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["propertyLockIconBackgroundHover"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 163
  LOADN R14 162
  LOADN R15 165
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["propertyLockIconBackgroundHover_dark"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 219
  LOADN R14 219
  LOADN R15 219
  CALL R12 3 1
  SETTABLEKS R12 R11 K40 ["propertyLockIconBorderHover"]
  GETIMPORT R12 K45 [Color3.fromRGB]
  LOADN R13 227
  LOADN R14 227
  LOADN R15 227
  CALL R12 3 1
  SETTABLEKS R12 R11 K41 ["propertyLockIconBorderHover_dark"]
  DUPCLOSURE R12 K46 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R13 K47 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R13 R10 K48 ["createValues"]
  DUPCLOSURE R13 K49 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R13 R10 K50 ["new"]
  DUPCLOSURE R13 K51 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R13 R10 K52 ["mock"]
  RETURN R10 1
