PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorRemoveAccounting to be false"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["isEnumValue"]
  MOVE R3 R0
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["Bad accountingBudgetState"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R1 K6 [{"accountingBudgetState"}]
  SETTABLEKS R0 R1 K5 ["accountingBudgetState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Enum"]
  GETTABLEKS R4 R5 K11 ["AccountingBudgetState"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagMaterialGeneratorRemoveAccounting"]
  CALL R4 1 1
  MOVE R5 R2
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K14 ["Name"]
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CALL R5 2 -1
  RETURN R5 -1
