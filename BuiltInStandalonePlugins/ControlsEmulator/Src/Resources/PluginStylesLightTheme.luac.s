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
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 209
  LOADN R6 209
  LOADN R7 209
  CALL R4 3 1
  SETTABLEKS R4 R3 K17 ["BlueprintBackgroundColor"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K18 ["BlueprintLabelsColor"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 220
  LOADN R6 220
  LOADN R7 220
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["MappingLabelHover"]
  GETIMPORT R4 K16 [Color3.fromRGB]
  LOADN R5 202
  LOADN R6 202
  LOADN R7 202
  CALL R4 3 1
  SETTABLEKS R4 R3 K20 ["MappingLabel"]
  LOADK R4 K21 ["$Gray10"]
  SETTABLEKS R4 R3 K22 ["SeparatorColor"]
  LOADK R4 K21 ["$Gray10"]
  SETTABLEKS R4 R3 K23 ["InfoTooltipBackgroundColor"]
  GETIMPORT R4 K25 [Color3.fromHex]
  LOADK R5 K26 ["#A5A9B6"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["ControlInactiveColor"]
  GETIMPORT R4 K25 [Color3.fromHex]
  LOADK R5 K28 ["#335FFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K29 ["ControlActiveColor"]
  MOVE R4 R2
  LOADK R5 K30 ["ControlsEmulatorLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
