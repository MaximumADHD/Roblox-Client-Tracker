PROTO_0:
  DUPTABLE R4 K4 [{"id", "imageId", "approved", "isModerated"}]
  SETTABLEKS R0 R4 K0 ["id"]
  SETTABLEKS R0 R4 K1 ["imageId"]
  ORK R5 R1 K5 [False]
  SETTABLEKS R5 R4 K2 ["approved"]
  ORK R5 R3 K5 [False]
  SETTABLEKS R5 R4 K3 ["isModerated"]
  RETURN R4 1

PROTO_1:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["reviewStatus"]
  JUMPIFEQKNIL R2 [+12]
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["reviewStatus"]
  JUMPIFEQKS R2 K1 ["Finished"] [+7]
  GETTABLEKS R2 R0 K0 ["reviewStatus"]
  JUMPIFEQKS R2 K2 ["DoesNotRequire"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R2 R0 K3 ["isModerated"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R3 R0 K0 ["reviewStatus"]
  JUMPIFNOTEQKS R3 K4 ["Pending"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  DUPTABLE R3 K8 [{"id", "imageId", "approved", "isModerated"}]
  GETTABLEKS R4 R0 K5 ["id"]
  SETTABLEKS R4 R3 K5 ["id"]
  GETTABLEKS R4 R0 K5 ["id"]
  SETTABLEKS R4 R3 K6 ["imageId"]
  SETTABLEKS R1 R3 K7 ["approved"]
  SETTABLEKS R2 R3 K3 ["isModerated"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["from"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["fromDevelop"]
  RETURN R0 1
