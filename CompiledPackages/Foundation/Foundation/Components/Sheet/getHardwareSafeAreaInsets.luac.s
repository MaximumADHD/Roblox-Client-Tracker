PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  GETUPVAL R0 1
  JUMP [+1]
  GETUPVAL R0 2
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["ScreenGui"]
  CALL R1 1 1
  LOADK R2 K4 ["_FullscreenTestGui"]
  SETTABLEKS R2 R1 K5 ["Name"]
  SETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R2 K10 [Enum.ScreenInsets.None]
  SETTABLEKS R2 R1 K8 ["ScreenInsets"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["ScreenGui"]
  CALL R2 1 1
  LOADK R3 K11 ["_DeviceTestGui"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K6 ["Parent"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K12 ["FoundationOverlayLuaAppInsetsFix"]
  JUMPIFNOT R4 [+3]
  GETIMPORT R3 K14 [Enum.ScreenInsets.CoreUISafeInsets]
  JUMP [+2]
  GETIMPORT R3 K16 [Enum.ScreenInsets.DeviceSafeInsets]
  SETTABLEKS R3 R2 K8 ["ScreenInsets"]
  GETTABLEKS R4 R2 K17 ["AbsolutePosition"]
  GETTABLEKS R5 R1 K17 ["AbsolutePosition"]
  SUB R3 R4 R5
  GETTABLEKS R6 R1 K17 ["AbsolutePosition"]
  GETTABLEKS R7 R1 K18 ["AbsoluteSize"]
  ADD R5 R6 R7
  GETTABLEKS R7 R2 K17 ["AbsolutePosition"]
  GETTABLEKS R8 R2 K18 ["AbsoluteSize"]
  ADD R6 R7 R8
  SUB R4 R5 R6
  DUPTABLE R5 K23 [{"left", "top", "right", "bottom"}]
  GETTABLEKS R6 R3 K24 ["X"]
  SETTABLEKS R6 R5 K19 ["left"]
  GETTABLEKS R6 R3 K25 ["Y"]
  SETTABLEKS R6 R5 K20 ["top"]
  GETTABLEKS R6 R4 K24 ["X"]
  SETTABLEKS R6 R5 K21 ["right"]
  GETTABLEKS R6 R4 K25 ["Y"]
  SETTABLEKS R6 R5 K22 ["bottom"]
  LOADNIL R6
  SETTABLEKS R6 R1 K6 ["Parent"]
  LOADNIL R6
  SETTABLEKS R6 R2 K6 ["Parent"]
  NAMECALL R6 R1 K26 ["Destroy"]
  CALL R6 1 0
  NAMECALL R6 R2 K26 ["Destroy"]
  CALL R6 1 0
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["Wrappers"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Services"]
  GETTABLEKS R3 R4 K10 ["CoreGui"]
  GETTABLEKS R5 R1 K9 ["Services"]
  GETTABLEKS R4 R5 K11 ["RunService"]
  GETTABLEKS R6 R1 K9 ["Services"]
  GETTABLEKS R5 R6 K12 ["Players"]
  GETTABLEKS R7 R5 K13 ["LocalPlayer"]
  JUMPIFNOT R7 [+12]
  NAMECALL R7 R4 K14 ["IsRunning"]
  CALL R7 1 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R6 R5 K13 ["LocalPlayer"]
  LOADK R8 K15 ["PlayerGui"]
  LOADN R9 3
  NAMECALL R6 R6 K16 ["WaitForChild"]
  CALL R6 3 1
  JUMP [+1]
  LOADNIL R6
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Utility"]
  GETTABLEKS R8 R9 K17 ["isPluginSecurity"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R8 1
