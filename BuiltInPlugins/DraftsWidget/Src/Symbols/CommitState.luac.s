MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Symbol"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"Uncommitted", "Committing", "Committed"}]
  GETTABLEKS R3 R1 K12 ["named"]
  LOADK R4 K13 ["CommitStatusUncommitted"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["Uncommitted"]
  GETTABLEKS R3 R1 K12 ["named"]
  LOADK R4 K14 ["CommitStatusCommitting"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Committing"]
  GETTABLEKS R3 R1 K12 ["named"]
  LOADK R4 K15 ["CommitStatusCommitted"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["Committed"]
  RETURN R2 1
