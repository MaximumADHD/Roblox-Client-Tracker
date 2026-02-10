PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"LayoutOrder", "id", "name", "creator", "price", "rowState", "onRowStateChanged"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  GETTABLEKS R4 R0 K9 ["bundleId"]
  SETTABLEKS R4 R3 K2 ["id"]
  GETTABLEKS R4 R0 K3 ["name"]
  SETTABLEKS R4 R3 K3 ["name"]
  GETTABLEKS R4 R0 K4 ["creator"]
  SETTABLEKS R4 R3 K4 ["creator"]
  GETTABLEKS R4 R0 K5 ["price"]
  SETTABLEKS R4 R3 K5 ["price"]
  GETTABLEKS R4 R0 K6 ["rowState"]
  SETTABLEKS R4 R3 K6 ["rowState"]
  GETTABLEKS R4 R0 K7 ["onRowStateChanged"]
  SETTABLEKS R4 R3 K7 ["onRowStateChanged"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["ItemRow"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1
