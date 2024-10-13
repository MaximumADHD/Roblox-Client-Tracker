PROTO_0:
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["AddChange setting key cannot be nil"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["AddChange value cannot be nil. You probably meant Cryo.None"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  DUPTABLE R2 K6 [{"setting", "value"}]
  SETTABLEKS R0 R2 K4 ["setting"]
  SETTABLEKS R1 R2 K5 ["value"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["Action"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K8 ["Name"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
