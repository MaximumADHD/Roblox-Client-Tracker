PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  ADDK R1 R2 K0 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADN R3 0
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["createElement"]
  LOADK R5 K3 ["Frame"]
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["Tag"]
  LOADK R8 K5 ["Component-BasicExample X-Fit X-Column"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K8 [{"Label", "Button"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  LOADK R9 K9 ["TextLabel"]
  DUPTABLE R10 K11 [{"Text"}]
  LOADK R13 K12 ["CounterExample"]
  LOADK R14 K13 ["CounterLabel"]
  DUPTABLE R15 K15 [{"counter"}]
  SETTABLEKS R2 R15 K14 ["counter"]
  NAMECALL R11 R1 K16 ["getText"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Label"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  LOADK R9 K17 ["TextButton"]
  NEWTABLE R10 2 0
  LOADK R13 K12 ["CounterExample"]
  LOADK R14 K7 ["Button"]
  NAMECALL R11 R1 K16 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Text"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K18 ["Event"]
  GETTABLEKS R11 R12 K19 ["Activated"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Button"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
