PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal and cannot be used"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K7 ["props"]
  GETTABLEKS R1 R2 K8 ["render"]
  CALL R1 0 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxFinallyRemoveLegacyContext"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["PureComponent"]
  LOADK R6 K12 ["LocalizationConsumer"]
  NAMECALL R4 R4 K13 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K15 ["render"]
  RETURN R4 1
