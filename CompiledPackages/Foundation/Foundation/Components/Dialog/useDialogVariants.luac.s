PROTO_0:
  DUPTABLE R1 K2 [{"container", "dialog"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["size-full-full col align-x-center align-y-center"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K6 ["size-full-0 auto-y shrink-1 bg-surface-100 clip radius-medium"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["dialog"]
  NEWTABLE R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Small"]
  DUPTABLE R4 K2 [{"container", "dialog"}]
  DUPTABLE R5 K9 [{"margin"}]
  LOADK R6 K10 ["margin-small"]
  SETTABLEKS R6 R5 K8 ["margin"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"maxWidth"}]
  GETUPVAL R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["Small"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K11 ["maxWidth"]
  SETTABLEKS R5 R4 K1 ["dialog"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Large"]
  DUPTABLE R4 K2 [{"container", "dialog"}]
  DUPTABLE R5 K9 [{"margin"}]
  LOADK R6 K14 ["margin-large"]
  SETTABLEKS R6 R5 K8 ["margin"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"maxWidth"}]
  GETUPVAL R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["Large"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K11 ["maxWidth"]
  SETTABLEKS R5 R4 K1 ["dialog"]
  SETTABLE R4 R2 R3
  DUPTABLE R3 K17 [{"common", "size"}]
  SETTABLEKS R1 R3 K15 ["common"]
  SETTABLEKS R2 R3 K16 ["size"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["Dialog"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R2 3 1
  GETUPVAL R3 2
  GETTABLEKS R4 R2 K2 ["common"]
  GETTABLEKS R6 R2 K3 ["size"]
  GETTABLE R5 R6 R1
  JUMPIF R5 [+6]
  GETTABLEKS R6 R2 K3 ["size"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["Large"]
  GETTABLE R5 R6 R7
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["DialogSize"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Utility"]
  GETTABLEKS R4 R5 K11 ["composeStyleVariant"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Providers"]
  GETTABLEKS R6 R7 K13 ["Style"]
  GETTABLEKS R5 R6 K14 ["Tokens"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Providers"]
  GETTABLEKS R7 R8 K13 ["Style"]
  GETTABLEKS R6 R7 K15 ["VariantsContext"]
  CALL R5 1 1
  NEWTABLE R6 2 0
  GETTABLEKS R7 R2 K16 ["Small"]
  LOADN R8 104
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R2 K17 ["Large"]
  LOADN R8 128
  SETTABLE R8 R6 R7
  DUPCLOSURE R7 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPCLOSURE R8 K19 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R8 1
