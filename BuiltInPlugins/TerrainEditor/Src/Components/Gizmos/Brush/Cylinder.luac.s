PROTO_0:
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETTABLEKS R2 R0 K1 ["CFrame"]
  GETTABLEKS R3 R0 K2 ["Color"]
  GETTABLEKS R4 R0 K3 ["Height"]
  GETTABLEKS R5 R0 K4 ["Radius"]
  GETTABLEKS R6 R0 K5 ["Transparency"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["Fragment"]
  NEWTABLE R9 0 0
  DUPTABLE R10 K10 [{"OnTop", "Outline"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K11 ["CylinderHandleAdornment"]
  DUPTABLE R13 K14 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Height", "Radius", "Transparency", "ZIndex"}]
  SETTABLEKS R1 R13 K0 ["Adornee"]
  LOADB R14 1
  SETTABLEKS R14 R13 K12 ["AlwaysOnTop"]
  SETTABLEKS R2 R13 K1 ["CFrame"]
  SETTABLEKS R3 R13 K2 ["Color"]
  SETTABLEKS R4 R13 K3 ["Height"]
  SETTABLEKS R5 R13 K4 ["Radius"]
  SETTABLEKS R6 R13 K5 ["Transparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K13 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["OnTop"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K11 ["CylinderHandleAdornment"]
  DUPTABLE R13 K15 [{"Adornee", "CFrame", "Color", "Height", "Radius", "Transparency"}]
  SETTABLEKS R1 R13 K0 ["Adornee"]
  SETTABLEKS R2 R13 K1 ["CFrame"]
  SETTABLEKS R3 R13 K2 ["Color"]
  SETTABLEKS R4 R13 K3 ["Height"]
  SETTABLEKS R5 R13 K4 ["Radius"]
  SETTABLEKS R6 R13 K5 ["Transparency"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Outline"]
  CALL R7 3 -1
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
