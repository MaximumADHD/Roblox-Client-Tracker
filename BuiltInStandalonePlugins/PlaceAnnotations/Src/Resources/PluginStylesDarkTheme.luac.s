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
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["SemanticColorActionSecondaryFill"]
  LOADK R4 K17 [0.88]
  SETTABLEKS R4 R3 K18 ["SemanticColorActionSecondaryFillTransparency"]
  LOADK R4 K19 [0.84]
  SETTABLEKS R4 R3 K20 ["SemanticColorActionSecondaryFillHoverTransparency"]
  LOADK R4 K21 [0.76]
  SETTABLEKS R4 R3 K22 ["SemanticColorActionSecondaryFillPressTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K25 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K27 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["SemanticColorContentMuted"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K13 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K29 ["SemanticColorContentStandard"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K30 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K31 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K32 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K34 ["SemanticColorComponentInputFill"]
  LOADK R4 K17 [0.88]
  SETTABLEKS R4 R3 K35 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["SemanticColorComponentInputHover"]
  LOADK R4 K19 [0.84]
  SETTABLEKS R4 R3 K37 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K32 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["SemanticColorDivider"]
  LOADK R4 K17 [0.88]
  SETTABLEKS R4 R3 K39 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K40 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K41 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["SemanticColorStatesHover"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K44 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K32 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K45 ["SemanticColorStateLayerHover"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K46 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K32 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K47 ["SemanticColorStateLayerPress"]
  LOADK R4 K19 [0.84]
  SETTABLEKS R4 R3 K48 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K49 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K43 [0.92]
  SETTABLEKS R4 R3 K51 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K49 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K19 [0.84]
  SETTABLEKS R4 R3 K53 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K54 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K55 ["SemanticColorSurface100"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K56 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K57 ["SemanticColorSurface200"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K23 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K58 ["SemanticColorSurface300"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K59 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K60 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K15 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K61 ["SemanticColorStatesSelected"]
  LOADK R4 K19 [0.84]
  SETTABLEKS R4 R3 K62 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K63 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K64 ["ResolveIconBase"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K65 ["#989898"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K66 ["ResolveIconHovered"]
  GETIMPORT R4 K12 [Color3.fromHex]
  LOADK R5 K67 ["#2C2C2C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K68 ["ResolveIconSelected"]
  LOADK R4 K69 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonBack.png"]
  SETTABLEKS R4 R3 K70 ["BackArrow"]
  LOADK R4 K71 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonFwd.png"]
  SETTABLEKS R4 R3 K72 ["NextArrow"]
  LOADK R4 K73 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
  SETTABLEKS R4 R3 K74 ["MoreIcon"]
  LOADK R4 K75 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/Resolve.png"]
  SETTABLEKS R4 R3 K76 ["ResolveIcon"]
  MOVE R4 R2
  LOADK R5 K77 ["PlaceAnnotationsDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
