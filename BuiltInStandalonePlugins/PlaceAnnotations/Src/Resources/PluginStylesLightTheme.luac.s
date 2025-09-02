PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

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
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["EnableRibbonPluginFeature"]
  NAMECALL R3 R3 K13 ["GetEngineFeature"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  GETIMPORT R4 K15 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE REF R3
  CALL R4 1 0
  NEWTABLE R4 64 0
  JUMPIF R3 [+2]
  LOADK R5 K16 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddAnnotation.png"]
  JUMP [+1]
  LOADK R5 K17 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonAddAnnotationSmall.png"]
  SETTABLEKS R5 R4 K18 ["AddAnnotation"]
  LOADK R5 K19 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Large/AnnotationsLarge.png"]
  SETTABLEKS R5 R4 K20 ["AnnotationLarge"]
  LOADK R5 K21 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
  SETTABLEKS R5 R4 K22 ["CheckboxOn"]
  LOADK R5 K23 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
  SETTABLEKS R5 R4 K24 ["CheckboxOff"]
  LOADK R5 K25 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Standard/Resolve.png"]
  SETTABLEKS R5 R4 K26 ["ResolveIcon"]
  LOADK R5 K27 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Success.png"]
  SETTABLEKS R5 R4 K28 ["ResolveIconResolved"]
  LOADK R5 K29 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
  SETTABLEKS R5 R4 K30 ["Error"]
  LOADK R5 K31 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/CloseWidget.png"]
  SETTABLEKS R5 R4 K32 ["Close"]
  LOADK R5 K33 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Standard/More.png"]
  SETTABLEKS R5 R4 K34 ["Settings"]
  LOADK R5 K35 ["$PrimaryMain"]
  SETTABLEKS R5 R4 K36 ["EmptyStateButtonFill"]
  LOADK R5 K37 ["$PrimaryHoverBackground"]
  SETTABLEKS R5 R4 K38 ["EmptyStateButtonHovered"]
  LOADK R5 K39 ["$TextLink"]
  SETTABLEKS R5 R4 K40 ["EmptyStateButtonSelected"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K44 ["#1B254B"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K45 ["Shift200Color"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K46 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K47 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K48 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K49 ["SemanticColorActionSecondaryFill"]
  LOADK R5 K50 [0.92]
  SETTABLEKS R5 R4 K51 ["SemanticColorActionSecondaryFillTransparency"]
  LOADK R5 K52 [0.84]
  SETTABLEKS R5 R4 K53 ["SemanticColorActionSecondaryFillHoverTransparency"]
  LOADK R5 K54 [0.76]
  SETTABLEKS R5 R4 K55 ["SemanticColorActionSecondaryFillPressTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K56 ["#E5E5E6"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K57 ["SemanticColorComponentMediaFill"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K58 ["#BBBCBE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K59 ["SemanticColorContentDisabled"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K60 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K61 ["SemanticColorContentMuted"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K46 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K62 ["SemanticColorContentStandard"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K63 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K64 ["SemanticColorContentStandardInverse"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K65 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K66 ["SemanticColorContentStaticLight"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K48 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K67 ["SemanticColorComponentInputFill"]
  LOADK R5 K50 [0.92]
  SETTABLEKS R5 R4 K68 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K48 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K69 ["SemanticColorComponentInputHover"]
  LOADK R5 K52 [0.84]
  SETTABLEKS R5 R4 K70 ["SemanticColorComponentInputHoverTransparency"]
  LOADK R5 K71 [0.94]
  SETTABLEKS R5 R4 K72 ["SemanticColorComponentInputDisabledTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K73 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K74 ["SemanticColorDivider"]
  LOADK R5 K75 [0.88]
  SETTABLEKS R5 R4 K76 ["SemanticColorDividerTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K77 ["#3C64FA"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K78 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K48 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K79 ["SemanticColorStatesHover"]
  LOADK R5 K71 [0.94]
  SETTABLEKS R5 R4 K80 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K73 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K81 ["SemanticColorStateLayerHover"]
  LOADK R5 K50 [0.92]
  SETTABLEKS R5 R4 K82 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K73 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K83 ["SemanticColorStateLayerPress"]
  LOADK R5 K52 [0.84]
  SETTABLEKS R5 R4 K84 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K65 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K85 ["SemanticColorStateLayerHoverInverse"]
  LOADK R5 K50 [0.92]
  SETTABLEKS R5 R4 K86 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K65 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K87 ["SemanticColorStateLayerPressInverse"]
  LOADK R5 K52 [0.84]
  SETTABLEKS R5 R4 K88 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K65 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K89 ["SemanticColorSurface100"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K65 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K90 ["SemanticColorSurface200"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K91 ["#F2F2F3"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K92 ["SemanticColorSurface300"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K93 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K94 ["SemanticColorSurface300Inverse"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K48 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K95 ["SemanticColorStatesSelected"]
  LOADK R5 K75 [0.88]
  SETTABLEKS R5 R4 K96 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K97 ["#E1E1E1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K98 ["ResolveIconBase"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K99 ["#CBCBCB"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K100 ["ResolveIconHovered"]
  GETIMPORT R5 K43 [Color3.fromHex]
  LOADK R6 K101 ["#989898"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K102 ["ResolveIconSelected"]
  LOADK R5 K103 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonBack.png"]
  SETTABLEKS R5 R4 K104 ["BackArrow"]
  LOADK R5 K105 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Medium/RibbonFwd.png"]
  SETTABLEKS R5 R4 K106 ["NextArrow"]
  LOADK R5 K107 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
  SETTABLEKS R5 R4 K108 ["MoreIcon"]
  MOVE R5 R2
  LOADK R6 K109 ["PlaceAnnotationsLightTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  CLOSEUPVALS R3
  RETURN R5 -1
