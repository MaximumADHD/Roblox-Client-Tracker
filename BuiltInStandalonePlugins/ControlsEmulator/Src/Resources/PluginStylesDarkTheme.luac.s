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
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 46
  LOADN R6 46
  LOADN R7 46
  CALL R4 3 1
  SETTABLEKS R4 R3 K17 ["BlueprintBackgroundColor"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 255
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K18 ["BlueprintLabelsColor"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 100
  LOADN R6 100
  LOADN R7 100
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["MappingLabelHover"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 53
  LOADN R6 53
  LOADN R7 53
  CALL R4 3 1
  SETTABLEKS R4 R3 K20 ["MappingLabel"]
  LOADK R4 K21 ["$Gray100"]
  SETTABLEKS R4 R3 K22 ["SeparatorColor"]
  LOADK R4 K23 ["$Gray90"]
  SETTABLEKS R4 R3 K24 ["InfoTooltipBackgroundColor"]
  LOADK R4 K25 ["$Gray70"]
  SETTABLEKS R4 R3 K26 ["ControlInactiveColor"]
  LOADK R4 K27 ["$PrimaryHoverBackground"]
  SETTABLEKS R4 R3 K28 ["ControlActiveColor"]
  MOVE R4 R2
  LOADK R5 K29 ["ControlsEmulatorDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
