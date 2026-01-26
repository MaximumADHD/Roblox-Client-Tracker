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
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonAddAnnotationSmall.png"]
  SETTABLEKS R4 R3 K11 ["AddAnnotation"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Large/AnnotationsLarge.png"]
  SETTABLEKS R4 R3 K13 ["AnnotationLarge"]
  LOADK R4 K14 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLEKS R4 R3 K15 ["CheckboxOn"]
  LOADK R4 K16 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLEKS R4 R3 K17 ["CheckboxOff"]
  LOADK R4 K18 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Standard/Resolve.png"]
  SETTABLEKS R4 R3 K19 ["ResolveIcon"]
  LOADK R4 K20 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLEKS R4 R3 K21 ["ResolveIconResolved"]
  LOADK R4 K22 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLEKS R4 R3 K23 ["Error"]
  LOADK R4 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/CloseWidget.png"]
  SETTABLEKS R4 R3 K25 ["Close"]
  LOADK R4 K26 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Standard/More.png"]
  SETTABLEKS R4 R3 K27 ["Settings"]
  LOADK R4 K28 ["$PrimaryMain"]
  SETTABLEKS R4 R3 K29 ["EmptyStateButtonFill"]
  LOADK R4 K30 ["$PrimaryHoverBackground"]
  SETTABLEKS R4 R3 K31 ["EmptyStateButtonHovered"]
  LOADK R4 K32 ["$TextLink"]
  SETTABLEKS R4 R3 K33 ["EmptyStateButtonSelected"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K37 ["#1B254B"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["Shift200Color"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K39 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["SemanticColorActionSecondaryFill"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K44 ["SemanticColorActionSecondaryFillTransparency"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K46 ["SemanticColorActionSecondaryFillHoverTransparency"]
  LOADK R4 K47 [0.76]
  SETTABLEKS R4 R3 K48 ["SemanticColorActionSecondaryFillPressTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K49 ["#E5E5E6"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K51 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K53 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K54 ["SemanticColorContentMuted"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K39 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K55 ["SemanticColorContentStandard"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K56 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K57 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K59 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K60 ["SemanticColorComponentInputFill"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K61 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K62 ["SemanticColorComponentInputHover"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K63 ["SemanticColorComponentInputHoverTransparency"]
  LOADK R4 K64 [0.94]
  SETTABLEKS R4 R3 K65 ["SemanticColorComponentInputDisabledTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K66 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K67 ["SemanticColorDivider"]
  LOADK R4 K68 [0.88]
  SETTABLEKS R4 R3 K69 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K70 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K71 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K72 ["SemanticColorStatesHover"]
  LOADK R4 K64 [0.94]
  SETTABLEKS R4 R3 K73 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K66 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K74 ["SemanticColorStateLayerHover"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K75 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K66 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K76 ["SemanticColorStateLayerPress"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K77 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K78 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K79 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K80 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K45 [0.84]
  SETTABLEKS R4 R3 K81 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K82 ["SemanticColorSurface100"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K83 ["SemanticColorSurface200"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K84 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K85 ["SemanticColorSurface300"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K86 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K87 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K41 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K88 ["SemanticColorStatesSelected"]
  LOADK R4 K68 [0.88]
  SETTABLEKS R4 R3 K89 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K90 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K91 ["ResolveIconBase"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K92 ["#CBCBCB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K93 ["ResolveIconHovered"]
  GETIMPORT R4 K36 [Color3.fromHex]
  LOADK R5 K94 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K95 ["ResolveIconSelected"]
  LOADK R4 K96 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonBack.png"]
  SETTABLEKS R4 R3 K97 ["BackArrow"]
  LOADK R4 K98 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonFwd.png"]
  SETTABLEKS R4 R3 K99 ["NextArrow"]
  LOADK R4 K100 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLEKS R4 R3 K101 ["MoreIcon"]
  MOVE R4 R2
  LOADK R5 K102 ["PlaceAnnotationsLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
