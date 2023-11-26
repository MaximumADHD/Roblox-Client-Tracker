PROTO_0:
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETTABLEKS R2 R0 K1 ["Color"]
  GETTABLEKS R3 R0 K2 ["LineThickness"]
  GETTABLEKS R4 R0 K3 ["Lines"]
  GETTABLEKS R5 R0 K4 ["Transform"]
  GETTABLEKS R6 R0 K5 ["Scale"]
  GETTABLEKS R7 R0 K6 ["Size"]
  GETTABLEKS R8 R0 K7 ["Transparency"]
  GETTABLEKS R9 R0 K8 ["Wireframe"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["Portal"]
  DUPTABLE R12 K12 [{"target"}]
  GETIMPORT R13 K14 [game]
  LOADK R15 K15 ["CoreGui"]
  NAMECALL R13 R13 K16 ["GetService"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K11 ["target"]
  NEWTABLE R13 1 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K17 ["Folder"]
  NEWTABLE R16 0 0
  DUPTABLE R17 K20 [{"OnTopBox", "InTopBox"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K23 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "LineThickness", "Lines", "Scale", "Size", "Transparency", "Wireframe"}]
  SETTABLEKS R1 R20 K0 ["Adornee"]
  LOADB R21 1
  SETTABLEKS R21 R20 K21 ["AlwaysOnTop"]
  SETTABLEKS R5 R20 K22 ["CFrame"]
  SETTABLEKS R2 R20 K1 ["Color"]
  SETTABLEKS R3 R20 K2 ["LineThickness"]
  SETTABLEKS R4 R20 K3 ["Lines"]
  SETTABLEKS R6 R20 K5 ["Scale"]
  SETTABLEKS R7 R20 K6 ["Size"]
  SETTABLEKS R8 R20 K7 ["Transparency"]
  SETTABLEKS R9 R20 K8 ["Wireframe"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["OnTopBox"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K23 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "LineThickness", "Lines", "Scale", "Size", "Transparency", "Wireframe"}]
  SETTABLEKS R1 R20 K0 ["Adornee"]
  LOADB R21 0
  SETTABLEKS R21 R20 K21 ["AlwaysOnTop"]
  SETTABLEKS R5 R20 K22 ["CFrame"]
  SETTABLEKS R2 R20 K1 ["Color"]
  SETTABLEKS R3 R20 K2 ["LineThickness"]
  SETTABLEKS R4 R20 K3 ["Lines"]
  SETTABLEKS R6 R20 K5 ["Scale"]
  SETTABLEKS R7 R20 K6 ["Size"]
  SETTABLEKS R8 R20 K7 ["Transparency"]
  SETTABLEKS R9 R20 K8 ["Wireframe"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["InTopBox"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["RegionVisual"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K7 ["Box"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
