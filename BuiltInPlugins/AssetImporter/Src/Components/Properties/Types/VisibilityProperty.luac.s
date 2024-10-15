PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+29]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K7 [{"OnClick", "Size", "LayoutOrder", "Selected", "Stylizer", "Style"}]
  GETTABLEKS R4 R0 K8 ["OnToggleItem"]
  SETTABLEKS R4 R3 K1 ["OnClick"]
  GETTABLEKS R4 R0 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETTABLEKS R4 R0 K9 ["Value"]
  SETTABLEKS R4 R3 K4 ["Selected"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K5 ["Stylizer"]
  LOADK R4 K10 ["EyeIcon"]
  SETTABLEKS R4 R3 K6 ["Style"]
  CALL R1 2 1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K11 [{"OnClick", "Size", "LayoutOrder", "Selected", "Stylizer"}]
  GETTABLEKS R4 R0 K8 ["OnToggleItem"]
  SETTABLEKS R4 R3 K1 ["OnClick"]
  GETTABLEKS R4 R0 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETTABLEKS R4 R0 K9 ["Value"]
  SETTABLEKS R4 R3 K4 ["Selected"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K5 ["Stylizer"]
  CALL R1 2 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DevFrameworkToggleAllowEyeIcon"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AssetImporter"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K13 ["Style"]
  GETTABLEKS R4 R5 K14 ["Stylizer"]
  GETTABLEKS R5 R2 K15 ["UI"]
  GETTABLEKS R6 R5 K16 ["ToggleButton"]
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R7 1
