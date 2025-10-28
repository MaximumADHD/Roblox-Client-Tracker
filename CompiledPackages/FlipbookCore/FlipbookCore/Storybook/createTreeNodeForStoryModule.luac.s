PROTO_0:
  DUPTABLE R1 K6 [{"id", "label", "icon", "isExpanded", "instance", "children"}]
  GETUPVAL R2 0
  NAMECALL R2 R2 K7 ["GenerateGUID"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["id"]
  GETTABLEKS R2 R0 K8 ["Name"]
  LOADK R4 K9 ["%.story"]
  LOADK R5 K10 [""]
  NAMECALL R2 R2 K11 ["gsub"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["label"]
  LOADK R2 K12 ["story"]
  SETTABLEKS R2 R1 K2 ["icon"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["isExpanded"]
  SETTABLEKS R0 R1 K4 ["instance"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["children"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["TreeView"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R0
  RETURN R2 1
