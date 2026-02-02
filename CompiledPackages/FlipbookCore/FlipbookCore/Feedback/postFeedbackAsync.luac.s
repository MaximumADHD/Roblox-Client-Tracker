PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R3 1
  LOADK R5 K0 ["%*/feedback"]
  LOADNIL R7
  NAMECALL R5 R5 K1 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  DUPTABLE R5 K4 [{"method", "body"}]
  LOADK R6 K5 ["POST"]
  SETTABLEKS R6 R5 K2 ["method"]
  DUPTABLE R6 K11 [{"title", "body", "userId", "buildVersion", "buildChannel", "buildHash"}]
  SETTABLEKS R0 R6 K6 ["title"]
  SETTABLEKS R1 R6 K3 ["body"]
  GETUPVAL R8 2
  CALL R8 0 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K13 [tostring]
  CALL R7 -1 1
  SETTABLEKS R7 R6 K7 ["userId"]
  GETTABLEKS R7 R2 K14 ["version"]
  SETTABLEKS R7 R6 K8 ["buildVersion"]
  GETTABLEKS R7 R2 K15 ["channel"]
  SETTABLEKS R7 R6 K9 ["buildChannel"]
  GETTABLEKS R7 R2 K16 ["hash"]
  SETTABLEKS R7 R6 K10 ["buildHash"]
  SETTABLEKS R6 R5 K3 ["body"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Common"]
  GETTABLEKS R1 R2 K6 ["getBuildInfo"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Telemetry"]
  GETTABLEKS R2 R3 K8 ["getLocalUserId"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Http"]
  GETTABLEKS R3 R4 K10 ["requestAsync"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
