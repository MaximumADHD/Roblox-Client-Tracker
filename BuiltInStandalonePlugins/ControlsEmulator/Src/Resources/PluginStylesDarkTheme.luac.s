MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 0 0
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
  SETTABLEKS R4 R3 K11 ["RightArrow"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K13 ["DownArrow"]
  GETIMPORT R4 K16 [Color3.new]
  LOADK R5 K17 [0.07059]
  LOADK R6 K17 [0.07059]
  LOADK R7 K18 [0.08235]
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["Color_Extended_Surface_Surface_0"]
  GETIMPORT R4 K16 [Color3.new]
  LOADK R5 K20 [0.09804]
  LOADK R6 K21 [0.10196]
  LOADK R7 K22 [0.12157]
  CALL R4 3 1
  SETTABLEKS R4 R3 K23 ["Color_Extended_Surface_Surface_100"]
  LOADK R4 K24 ["$Gray60"]
  SETTABLEKS R4 R3 K25 ["ControlInactiveColor"]
  LOADK R4 K26 ["$Gray50"]
  SETTABLEKS R4 R3 K27 ["ControlHoverColor"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K30 ["#D5D7DD"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K31 ["ControlActiveBackgroundColor"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K32 ["#2BB1FF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["ControlActiveColor"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K34 ["#008BDB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["ColorPrimaryMain"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K36 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["ColorSecondaryMain"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K38 ["#5A5C63"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K39 ["ContentDefault"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K40 ["#7E8395"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K41 ["ControlActiveSecondaryColor"]
  GETTABLEKS R4 R3 K19 ["Color_Extended_Surface_Surface_0"]
  SETTABLEKS R4 R3 K42 ["HeaderBackgroundColor"]
  GETTABLEKS R4 R3 K19 ["Color_Extended_Surface_Surface_0"]
  SETTABLEKS R4 R3 K43 ["BlueprintBackgroundColor"]
  GETTABLEKS R4 R3 K39 ["ContentDefault"]
  SETTABLEKS R4 R3 K44 ["BlueprintArrowColor"]
  LOADK R4 K45 ["$TextPrimary"]
  SETTABLEKS R4 R3 K46 ["BlueprintLabelsColor"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K47 ["#2F3139"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K48 ["DividerColor"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K49 ["#646464"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K50 ["MappingLabelHover"]
  GETIMPORT R4 K29 [Color3.fromHex]
  LOADK R5 K51 ["#353535"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["MappingLabel"]
  LOADK R4 K53 ["$Gray100"]
  SETTABLEKS R4 R3 K54 ["SeparatorColor"]
  LOADK R4 K55 ["$Gray90"]
  SETTABLEKS R4 R3 K56 ["InfoTooltipBackgroundColor"]
  LOADK R4 K57 ["$PrimaryMain"]
  SETTABLEKS R4 R3 K58 ["PrimaryButtonBackgroundColor"]
  LOADK R4 K59 ["$PrimaryHoverBackground"]
  SETTABLEKS R4 R3 K60 ["PrimaryButtonHoverBackgroundColor"]
  LOADK R4 K61 ["$Gray70"]
  SETTABLEKS R4 R3 K62 ["SecondaryButtonBackgroundColor"]
  LOADK R4 K24 ["$Gray60"]
  SETTABLEKS R4 R3 K63 ["SecondaryButtonHoverBackgroundColor"]
  LOADK R4 K64 ["$White"]
  SETTABLEKS R4 R3 K65 ["ButtonTextColor"]
  MOVE R4 R2
  LOADK R5 K66 ["ControlsEmulatorDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
