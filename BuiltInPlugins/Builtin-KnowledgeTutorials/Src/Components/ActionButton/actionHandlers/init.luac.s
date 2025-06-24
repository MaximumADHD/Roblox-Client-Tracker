MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"selectInstance", "openLink", "spotlight"}]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["selectInstance"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["selectInstance"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["openLink"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["openLink"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["spotlight"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["spotlight"]
  RETURN R2 1
