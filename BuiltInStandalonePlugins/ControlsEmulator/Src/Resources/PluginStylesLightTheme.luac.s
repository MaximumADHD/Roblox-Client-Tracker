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
  LOADK R4 K10 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowRight.png"]
  SETTABLEKS R4 R3 K11 ["RightArrow"]
  LOADK R4 K12 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K13 ["DownArrow"]
  GETIMPORT R4 K16 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K17 ["Color_Extended_Surface_Surface_0"]
  GETIMPORT R4 K16 [Color3.new]
  LOADK R5 K18 [0.95686]
  LOADK R6 K18 [0.95686]
  LOADK R7 K19 [0.96471]
  CALL R4 3 1
  SETTABLEKS R4 R3 K20 ["Color_Extended_Surface_Surface_100"]
  LOADK R4 K21 ["$Gray50"]
  SETTABLEKS R4 R3 K22 ["ControlInactiveColor"]
  LOADK R4 K23 ["$Gray60"]
  SETTABLEKS R4 R3 K24 ["ControlHoverColor"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K27 ["#494D5A"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["ControlActiveBackgroundColor"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K29 ["#335FFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["ControlActiveColor"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K31 ["#008BDB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K32 ["ColorPrimaryMain"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K33 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K34 ["ColorSecondaryMain"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K35 ["#B1B3B9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["ContentDefault"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K37 ["#7E8395"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["ControlActiveSecondaryColor"]
  GETTABLEKS R4 R3 K17 ["Color_Extended_Surface_Surface_0"]
  SETTABLEKS R4 R3 K39 ["HeaderBackgroundColor"]
  GETTABLEKS R4 R3 K17 ["Color_Extended_Surface_Surface_0"]
  SETTABLEKS R4 R3 K40 ["BlueprintBackgroundColor"]
  GETTABLEKS R4 R3 K36 ["ContentDefault"]
  SETTABLEKS R4 R3 K41 ["BlueprintArrowColor"]
  LOADK R4 K42 ["$TextPrimary"]
  SETTABLEKS R4 R3 K43 ["BlueprintLabelsColor"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K44 ["#DDDEE3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K45 ["DividerColor"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K46 ["#DCDCDC"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K47 ["MappingLabelHover"]
  GETIMPORT R4 K26 [Color3.fromHex]
  LOADK R5 K48 ["#CACACA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K49 ["MappingLabel"]
  LOADK R4 K50 ["$Gray10"]
  SETTABLEKS R4 R3 K51 ["SeparatorColor"]
  LOADK R4 K50 ["$Gray10"]
  SETTABLEKS R4 R3 K52 ["InfoTooltipBackgroundColor"]
  LOADK R4 K53 ["$PrimaryMain"]
  SETTABLEKS R4 R3 K54 ["PrimaryButtonBackgroundColor"]
  LOADK R4 K55 ["$PrimaryHoverBackground"]
  SETTABLEKS R4 R3 K56 ["PrimaryButtonHoverBackgroundColor"]
  LOADK R4 K57 ["$Gray70"]
  SETTABLEKS R4 R3 K58 ["SecondaryButtonBackgroundColor"]
  LOADK R4 K23 ["$Gray60"]
  SETTABLEKS R4 R3 K59 ["SecondaryButtonHoverBackgroundColor"]
  LOADK R4 K60 ["$White"]
  SETTABLEKS R4 R3 K61 ["ButtonTextColor"]
  MOVE R4 R2
  LOADK R5 K62 ["ControlsEmulatorLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
