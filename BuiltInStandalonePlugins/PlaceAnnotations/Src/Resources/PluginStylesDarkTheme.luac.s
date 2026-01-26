MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 64 0
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonAddAnnotationSmall.png"]
  SETTABLEKS R4 R3 K11 ["AddAnnotation"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Large/AnnotationsLarge.png"]
  SETTABLEKS R4 R3 K13 ["AnnotationLarge"]
  LOADK R4 K14 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
  SETTABLEKS R4 R3 K15 ["CheckboxOn"]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
  SETTABLEKS R4 R3 K17 ["CheckboxOff"]
  LOADK R4 K18 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/Resolve.png"]
  SETTABLEKS R4 R3 K19 ["ResolveIcon"]
  LOADK R4 K20 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
  SETTABLEKS R4 R3 K21 ["ResolveIconResolved"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
  SETTABLEKS R4 R3 K23 ["Error"]
  LOADK R4 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/CloseWidget.png"]
  SETTABLEKS R4 R3 K25 ["Close"]
  LOADK R4 K26 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K27 ["Settings"]
  LOADK R4 K28 ["$ForegroundContrast"]
  SETTABLEKS R4 R3 K29 ["EmptyStateButtonFill"]
  LOADK R4 K30 ["$ActionHover"]
  SETTABLEKS R4 R3 K31 ["EmptyStateButtonHovered"]
  LOADK R4 K32 ["$BackgroundPaper"]
  SETTABLEKS R4 R3 K33 ["EmptyStateButtonSelected"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K37 ["#D0D9FB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["Shift200Color"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K39 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["SemanticColorActionSecondaryFill"]
  LOADK R4 K43 [0.88]
  SETTABLEKS R4 R3 K44 ["SemanticColorActionSecondaryFillTransparency"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K46 ["SemanticColorActionSecondaryFillHoverTransparency"]
  LOADK R4 K47 [0.76]
  SETTABLEKS R4 R3 K48 ["SemanticColorActionSecondaryFillPressTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K49 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K51 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K53 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K54 ["SemanticColorContentMuted"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K39 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K55 ["SemanticColorContentStandard"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K56 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K57 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K59 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K60 ["SemanticColorComponentInputFill"]
  LOADK R4 K43 [0.88]
  SETTABLEKS R4 R3 K61 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K62 ["SemanticColorComponentInputHover"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K63 ["SemanticColorComponentInputHoverTransparency"]
  LOADK R4 K64 [0.92]
  SETTABLEKS R4 R3 K65 ["SemanticColorComponentInputDisabledTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K66 ["SemanticColorDivider"]
  LOADK R4 K43 [0.88]
  SETTABLEKS R4 R3 K67 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K68 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K69 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K70 ["SemanticColorStatesHover"]
  LOADK R4 K64 [0.92]
  SETTABLEKS R4 R3 K71 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K72 ["SemanticColorStateLayerHover"]
  LOADK R4 K64 [0.92]
  SETTABLEKS R4 R3 K73 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K74 ["SemanticColorStateLayerPress"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K75 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K76 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K77 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K64 [0.92]
  SETTABLEKS R4 R3 K78 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K76 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K79 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K80 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K81 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K82 ["SemanticColorSurface100"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K83 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K84 ["SemanticColorSurface200"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K49 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K85 ["SemanticColorSurface300"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K86 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K87 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K88 ["SemanticColorStatesSelected"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K89 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K90 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K91 ["ResolveIconBase"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K92 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K93 ["ResolveIconHovered"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K94 ["#2C2C2C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K95 ["ResolveIconSelected"]
  LOADK R4 K96 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonBack.png"]
  SETTABLEKS R4 R3 K97 ["BackArrow"]
  LOADK R4 K98 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonFwd.png"]
  SETTABLEKS R4 R3 K99 ["NextArrow"]
  LOADK R4 K100 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K101 ["MoreIcon"]
  MOVE R4 R2
  LOADK R5 K102 ["PlaceAnnotationsDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
