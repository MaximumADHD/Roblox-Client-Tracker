PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["withLocalization is marked for removal and cannot be used"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K5 [{"render"}]
  SETTABLEKS R0 R3 K4 ["render"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Consumers"]
  GETTABLEKS R2 R0 K5 ["Packages"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R2 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K3 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["wrapStrictTable"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K11 ["LocalizationConsumer"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R10 R0 K3 ["Core"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K12 ["SharedFlags"]
  GETTABLEKS R7 R8 K13 ["getFFlagToolboxFinallyRemoveLegacyContext"]
  CALL R6 1 1
  NEWTABLE R7 1 0
  DUPCLOSURE R8 K14 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K15 ["withLocalization"]
  MOVE R8 R4
  MOVE R9 R7
  LOADK R10 K16 ["ContextHelper"]
  CALL R8 2 -1
  RETURN R8 -1
