PROTO_0:
  GETTABLEKS R1 R0 K0 ["SelectedObjectGui"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["SelectedObjectGui"]
  LOADK R4 K1 ["ScreenGui"]
  NAMECALL R2 R2 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  LOADK R3 K1 ["ScreenGui"]
  DUPTABLE R4 K6 [{"ZIndexBehavior", "DisplayOrder"}]
  GETTABLEKS R5 R0 K4 ["ZIndexBehavior"]
  SETTABLEKS R5 R4 K4 ["ZIndexBehavior"]
  GETTABLEKS R5 R0 K5 ["DisplayOrder"]
  SETTABLEKS R5 R4 K5 ["DisplayOrder"]
  GETTABLEKS R5 R0 K7 ["children"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["SelectedObjectGui"]
  LOADK R4 K8 ["SurfaceGui"]
  NAMECALL R2 R2 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+52]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  LOADK R3 K8 ["SurfaceGui"]
  DUPTABLE R4 K13 [{"ZIndexBehavior", "ZOffset", "AlwaysOnTop", "Face", "Adornee"}]
  GETTABLEKS R5 R0 K4 ["ZIndexBehavior"]
  SETTABLEKS R5 R4 K4 ["ZIndexBehavior"]
  GETTABLEKS R7 R0 K0 ["SelectedObjectGui"]
  GETTABLEKS R6 R7 K9 ["ZOffset"]
  GETTABLEKS R8 R0 K5 ["DisplayOrder"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R0 K5 ["DisplayOrder"]
  JUMP [+1]
  LOADN R7 0
  ADD R5 R6 R7
  SETTABLEKS R5 R4 K9 ["ZOffset"]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["AlwaysOnTop"]
  GETTABLEKS R6 R0 K0 ["SelectedObjectGui"]
  GETTABLEKS R5 R6 K11 ["Face"]
  SETTABLEKS R5 R4 K11 ["Face"]
  GETTABLEKS R7 R0 K0 ["SelectedObjectGui"]
  GETTABLEKS R6 R7 K12 ["Adornee"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K0 ["SelectedObjectGui"]
  GETTABLEKS R5 R6 K12 ["Adornee"]
  JUMP [+4]
  GETTABLEKS R6 R0 K0 ["SelectedObjectGui"]
  GETTABLEKS R5 R6 K14 ["Parent"]
  SETTABLEKS R5 R4 K12 ["Adornee"]
  GETTABLEKS R5 R0 K7 ["children"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  DUPTABLE R2 K1 [{"SelectedObjectGui"}]
  GETTABLEKS R4 R0 K2 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["SelectedObjectGui"]
  SETTABLEKS R3 R2 K0 ["SelectedObjectGui"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  GETTABLEKS R5 R3 K11 ["connect"]
  DUPCLOSURE R6 K12 [PROTO_1]
  CALL R5 1 1
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1
