MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["DialogSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Enums"]
  GETTABLEKS R3 R4 K8 ["OnCloseCallbackReason"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K9 ["Constants"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"nonSelectable", "isolatedSelectionGroup"}]
  GETTABLEKS R6 R3 K13 ["MODAL"]
  GETTABLEKS R5 R6 K14 ["DISABLE_SELECTION"]
  SETTABLEKS R5 R4 K10 ["nonSelectable"]
  GETTABLEKS R6 R3 K13 ["MODAL"]
  GETTABLEKS R5 R6 K15 ["TRAP_FOCUS"]
  SETTABLEKS R5 R4 K11 ["isolatedSelectionGroup"]
  RETURN R4 1
