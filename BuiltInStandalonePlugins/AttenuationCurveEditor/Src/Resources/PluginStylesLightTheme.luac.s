MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["getFFlagAttenuationCurveEditorFixes"]
  CALL R2 0 1
  GETTABLEKS R3 R1 K10 ["getFFlagAttenuationCurveEditorEnableGhosting"]
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["Styling"]
  GETTABLEKS R5 R6 K14 ["createStyleSheet"]
  DUPTABLE R6 K22 [{"ColorGridLine", "ColorKeypointHighlight", "ColorScrollbarButton", "ColorScrollbarButtonPressed", "ColorScrollbarButtonHovered", "ColorScrollbarButtonBorder", "ColorScrollbarButtonText"}]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+7]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 100
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["ColorGridLine"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 50
  LOADN R9 50
  LOADN R10 50
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["ColorKeypointHighlight"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 200
  LOADN R9 200
  LOADN R10 200
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["ColorScrollbarButton"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 170
  LOADN R9 170
  LOADN R10 170
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["ColorScrollbarButtonPressed"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 230
  LOADN R9 230
  LOADN R10 230
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["ColorScrollbarButtonHovered"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 100
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["ColorScrollbarButtonBorder"]
  GETIMPORT R7 K25 [Color3.fromRGB]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["ColorScrollbarButtonText"]
  MOVE R7 R5
  LOADK R8 K26 ["AttenuationCurveEditorLightTheme"]
  NEWTABLE R9 0 0
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
