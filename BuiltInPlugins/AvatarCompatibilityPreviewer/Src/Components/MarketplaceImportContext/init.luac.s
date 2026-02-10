PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  DUPTABLE R3 K2 [{"setMarketplaceImportOpen"}]
  SETTABLEKS R2 R3 K1 ["setMarketplaceImportOpen"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Provider"]
  DUPTABLE R6 K6 [{"value"}]
  SETTABLEKS R3 R6 K5 ["value"]
  GETTABLEKS R7 R0 K7 ["children"]
  MOVE R8 R1
  JUMPIFNOT R8 [+8]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K2 [{"setMarketplaceImportOpen"}]
  SETTABLEKS R2 R10 K1 ["setMarketplaceImportOpen"]
  CALL R8 2 1
  CALL R4 4 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["createUnimplemented"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["MarketplaceImportDialogContainer"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"setMarketplaceImportOpen"}]
  MOVE R5 R2
  LOADK R6 K11 ["setMarketplaceImportOpen"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["setMarketplaceImportOpen"]
  GETTABLEKS R5 R1 K13 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPTABLE R7 K17 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K15 ["Context"]
  SETTABLEKS R6 R7 K16 ["Provider"]
  RETURN R7 1
