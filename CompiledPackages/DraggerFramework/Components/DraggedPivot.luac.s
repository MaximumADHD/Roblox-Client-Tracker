PROTO_0:
  GETTABLEKS R1 R0 K0 ["DraggerContext"]
  GETTABLEKS R4 R0 K1 ["CFrame"]
  GETTABLEKS R3 R4 K2 ["Position"]
  NAMECALL R1 R1 K3 ["getHandleScale"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  LOADK R3 K5 ["SphereHandleAdornment"]
  DUPTABLE R4 K12 [{"Adornee", "CFrame", "Radius", "ZIndex", "AlwaysOnTop", "Transparency", "Color3"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["Terrain"]
  SETTABLEKS R5 R4 K6 ["Adornee"]
  GETTABLEKS R5 R0 K1 ["CFrame"]
  SETTABLEKS R5 R4 K1 ["CFrame"]
  MULK R5 R1 K14 [0.4]
  SETTABLEKS R5 R4 K7 ["Radius"]
  LOADN R5 0
  SETTABLEKS R5 R4 K8 ["ZIndex"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["AlwaysOnTop"]
  LOADK R5 K15 [0.5]
  SETTABLEKS R5 R4 K10 ["Transparency"]
  GETTABLEKS R5 R0 K0 ["DraggerContext"]
  GETTABLEKS R7 R0 K16 ["IsActive"]
  NAMECALL R5 R5 K17 ["getSelectionBoxColor"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Color3"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R3 R1 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R4 1
