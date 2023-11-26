PROTO_0:
  GETTABLEKS R2 R0 K0 ["Adornee"]
  GETTABLEKS R1 R2 K1 ["ClassName"]
  JUMPIFNOTEQKS R1 K2 ["Attachment"] [+42]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K4 ["BoxHandleAdornment"]
  DUPTABLE R3 K9 [{"Adornee", "CFrame", "Size", "Transparency", "Color3"}]
  GETTABLEKS R5 R0 K0 ["Adornee"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  SETTABLEKS R4 R3 K0 ["Adornee"]
  GETTABLEKS R5 R0 K0 ["Adornee"]
  GETTABLEKS R4 R5 K5 ["CFrame"]
  SETTABLEKS R4 R3 K5 ["CFrame"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["WorldView"]
  GETTABLEKS R5 R6 K12 ["BoxAdorn"]
  GETTABLEKS R4 R5 K6 ["Size"]
  SETTABLEKS R4 R3 K6 ["Size"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["WorldView"]
  GETTABLEKS R5 R6 K12 ["BoxAdorn"]
  GETTABLEKS R4 R5 K7 ["Transparency"]
  SETTABLEKS R4 R3 K7 ["Transparency"]
  GETTABLEKS R4 R0 K13 ["Color"]
  SETTABLEKS R4 R3 K8 ["Color3"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K14 ["SelectionBox"]
  DUPTABLE R3 K19 [{"LineThickness", "SurfaceTransparency", "SurfaceColor3", "Adornee", "Color3", "StudioSelectionBox"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["WorldView"]
  GETTABLEKS R5 R6 K12 ["BoxAdorn"]
  GETTABLEKS R4 R5 K15 ["LineThickness"]
  SETTABLEKS R4 R3 K15 ["LineThickness"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["WorldView"]
  GETTABLEKS R5 R6 K12 ["BoxAdorn"]
  GETTABLEKS R4 R5 K16 ["SurfaceTransparency"]
  SETTABLEKS R4 R3 K16 ["SurfaceTransparency"]
  GETTABLEKS R4 R0 K13 ["Color"]
  SETTABLEKS R4 R3 K17 ["SurfaceColor3"]
  GETTABLEKS R4 R0 K0 ["Adornee"]
  SETTABLEKS R4 R3 K0 ["Adornee"]
  GETTABLEKS R4 R0 K13 ["Color"]
  SETTABLEKS R4 R3 K8 ["Color3"]
  LOADB R4 1
  SETTABLEKS R4 R3 K18 ["StudioSelectionBox"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
