MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PerformanceTools"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K25 [{"BackButtonIcon", "InformationImage", "DownArrow", "UpArrow", "LeftArrow", "RightArrow", "MeasuringBarBackground", "MeasuringBarFillLow", "MeasuringBarFillMedium", "MeasuringBarFillHigh", "SemanticColorSurface300Inverse", "SemanticColorContentStandardInverse", "QualityBarFullSquare", "QualityBarEmptySquare", "QualityBarDisabledSquare"}]
  LOADK R4 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/Back.png"]
  SETTABLEKS R4 R3 K10 ["BackButtonIcon"]
  LOADK R4 K27 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
  SETTABLEKS R4 R3 K11 ["InformationImage"]
  LOADK R4 K28 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K12 ["DownArrow"]
  LOADK R4 K29 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
  SETTABLEKS R4 R3 K13 ["UpArrow"]
  LOADK R4 K30 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Back.png"]
  SETTABLEKS R4 R3 K14 ["LeftArrow"]
  LOADK R4 K31 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Fwd.png"]
  SETTABLEKS R4 R3 K15 ["RightArrow"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K35 ["#D0D9FB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["MeasuringBarBackground"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K36 ["#13E986"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["MeasuringBarFillLow"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K37 ["#F9DD64"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["MeasuringBarFillMedium"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K38 ["#FB654F"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["MeasuringBarFillHigh"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K39 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K34 [Color3.fromHex]
  LOADK R5 K40 ["#202227"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K42 [Color3.new]
  LOADK R5 K43 [0.4]
  LOADK R6 K43 [0.4]
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K22 ["QualityBarFullSquare"]
  GETIMPORT R4 K42 [Color3.new]
  LOADK R5 K44 [0.5]
  LOADK R6 K44 [0.5]
  LOADK R7 K44 [0.5]
  CALL R4 3 1
  SETTABLEKS R4 R3 K23 ["QualityBarEmptySquare"]
  GETIMPORT R4 K42 [Color3.new]
  LOADK R5 K45 [0.25]
  LOADK R6 K45 [0.25]
  LOADK R7 K45 [0.25]
  CALL R4 3 1
  SETTABLEKS R4 R3 K24 ["QualityBarDisabledSquare"]
  MOVE R4 R2
  LOADK R5 K46 ["PerformanceToolsDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
