PROTO_0:
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETTABLEKS R2 R0 K1 ["AlwaysOnTop"]
  GETTABLEKS R3 R0 K2 ["Color"]
  GETTABLEKS R4 R0 K3 ["Size"]
  GETTABLEKS R5 R0 K4 ["Transform"]
  GETTABLEKS R6 R0 K5 ["Transparency"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["BoxHandleAdornment"]
  DUPTABLE R9 K11 [{"Adornee", "AlwaysOnTop", "Color3", "CFrame", "Size", "Transparency", "ZIndex"}]
  SETTABLEKS R1 R9 K0 ["Adornee"]
  SETTABLEKS R2 R9 K1 ["AlwaysOnTop"]
  SETTABLEKS R3 R9 K8 ["Color3"]
  SETTABLEKS R5 R9 K9 ["CFrame"]
  SETTABLEKS R4 R9 K3 ["Size"]
  JUMPIFNOT R2 [+2]
  MOVE R10 R6
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K5 ["Transparency"]
  LOADN R10 0
  SETTABLEKS R10 R9 K10 ["ZIndex"]
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
