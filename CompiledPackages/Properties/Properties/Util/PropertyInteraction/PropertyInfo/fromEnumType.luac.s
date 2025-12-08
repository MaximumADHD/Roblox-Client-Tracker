PROTO_0:
  JUMPIFNOTEQKS R1 K0 ["Static"] [+16]
  DUPTABLE R3 K4 [{"type", "readonly", "extra"}]
  LOADK R4 K5 ["Enum"]
  SETTABLEKS R4 R3 K1 ["type"]
  SETTABLEKS R0 R3 K2 ["readonly"]
  DUPTABLE R4 K8 [{"mode", "enumName"}]
  LOADK R5 K0 ["Static"]
  SETTABLEKS R5 R4 K6 ["mode"]
  SETTABLEKS R2 R4 K7 ["enumName"]
  SETTABLEKS R4 R3 K3 ["extra"]
  RETURN R3 1
  DUPTABLE R3 K4 [{"type", "readonly", "extra"}]
  LOADK R4 K5 ["Enum"]
  SETTABLEKS R4 R3 K1 ["type"]
  SETTABLEKS R0 R3 K2 ["readonly"]
  DUPTABLE R4 K10 [{"mode", "extraGuestDataKey"}]
  LOADK R5 K11 ["Dynamic"]
  SETTABLEKS R5 R4 K6 ["mode"]
  SETTABLEKS R2 R4 K9 ["extraGuestDataKey"]
  SETTABLEKS R4 R3 K3 ["extra"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["PropertyTypes"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1
