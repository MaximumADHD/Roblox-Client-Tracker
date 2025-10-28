MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["TreeViewContext"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["types"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"TreeNodeIcon", "TreeViewProvider", "TreeView", "useTreeViewContext", "getAncestry", "findFirstAncestor"}]
  GETTABLEKS R3 R1 K6 ["TreeNodeIcon"]
  SETTABLEKS R3 R2 K6 ["TreeNodeIcon"]
  GETTABLEKS R3 R0 K13 ["Provider"]
  SETTABLEKS R3 R2 K7 ["TreeViewProvider"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K8 ["TreeView"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["TreeView"]
  GETTABLEKS R3 R0 K14 ["use"]
  SETTABLEKS R3 R2 K9 ["useTreeViewContext"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K10 ["getAncestry"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["getAncestry"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K11 ["findFirstAncestor"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["findFirstAncestor"]
  RETURN R2 1
