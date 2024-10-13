PROTO_0:
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETTABLEKS R2 R0 K1 ["Color"]
  GETTABLEKS R3 R0 K2 ["LineThickness"]
  GETTABLEKS R4 R0 K3 ["Lines"]
  GETTABLEKS R5 R0 K4 ["Scale"]
  GETTABLEKS R6 R0 K5 ["Size"]
  GETTABLEKS R7 R0 K6 ["Transform"]
  GETTABLEKS R8 R0 K7 ["Transparency"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createPortal"]
  NEWTABLE R10 1 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["createElement"]
  LOADK R12 K10 ["Folder"]
  NEWTABLE R13 0 0
  DUPTABLE R14 K13 [{"OnTopBox", "InTopBox"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K15 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Lines", "Scale", "Size", "Transform", "Transparency"}]
  SETTABLEKS R1 R17 K0 ["Adornee"]
  LOADB R18 1
  SETTABLEKS R18 R17 K14 ["AlwaysOnTop"]
  SETTABLEKS R2 R17 K1 ["Color"]
  SETTABLEKS R3 R17 K2 ["LineThickness"]
  SETTABLEKS R4 R17 K3 ["Lines"]
  SETTABLEKS R5 R17 K4 ["Scale"]
  SETTABLEKS R6 R17 K5 ["Size"]
  SETTABLEKS R7 R17 K6 ["Transform"]
  SETTABLEKS R8 R17 K7 ["Transparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K11 ["OnTopBox"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K15 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Lines", "Scale", "Size", "Transform", "Transparency"}]
  SETTABLEKS R1 R17 K0 ["Adornee"]
  LOADB R18 0
  SETTABLEKS R18 R17 K14 ["AlwaysOnTop"]
  SETTABLEKS R2 R17 K1 ["Color"]
  SETTABLEKS R3 R17 K2 ["LineThickness"]
  SETTABLEKS R4 R17 K3 ["Lines"]
  SETTABLEKS R5 R17 K4 ["Scale"]
  SETTABLEKS R6 R17 K5 ["Size"]
  SETTABLEKS R7 R17 K6 ["Transform"]
  SETTABLEKS R8 R17 K7 ["Transparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K12 ["InTopBox"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["RegionVisual"]
  GETIMPORT R11 K18 [game]
  LOADK R13 K19 ["CoreGui"]
  NAMECALL R11 R11 K20 ["GetService"]
  CALL R11 2 -1
  CALL R9 -1 -1
  RETURN R9 -1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Fill"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
