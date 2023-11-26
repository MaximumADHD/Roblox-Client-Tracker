PROTO_0:
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETTABLEKS R2 R0 K1 ["CFrame"]
  GETTABLEKS R3 R0 K2 ["Color"]
  GETTABLEKS R4 R0 K3 ["Radius"]
  GETTABLEKS R5 R0 K4 ["Transparency"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Fragment"]
  NEWTABLE R8 0 0
  DUPTABLE R9 K9 [{"OnTop", "Outline"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K10 ["SphereHandleAdornment"]
  DUPTABLE R12 K13 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Radius", "Transparency", "ZIndex"}]
  SETTABLEKS R1 R12 K0 ["Adornee"]
  LOADB R13 1
  SETTABLEKS R13 R12 K11 ["AlwaysOnTop"]
  SETTABLEKS R2 R12 K1 ["CFrame"]
  SETTABLEKS R3 R12 K2 ["Color"]
  SETTABLEKS R4 R12 K3 ["Radius"]
  SETTABLEKS R5 R12 K4 ["Transparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K12 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["OnTop"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K10 ["SphereHandleAdornment"]
  DUPTABLE R12 K14 [{"Adornee", "CFrame", "Color", "Radius", "Transparency"}]
  SETTABLEKS R1 R12 K0 ["Adornee"]
  SETTABLEKS R2 R12 K1 ["CFrame"]
  SETTABLEKS R3 R12 K2 ["Color"]
  SETTABLEKS R4 R12 K3 ["Radius"]
  SETTABLEKS R5 R12 K4 ["Transparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K8 ["Outline"]
  CALL R6 3 -1
  RETURN R6 -1

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
