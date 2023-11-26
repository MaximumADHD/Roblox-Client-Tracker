PROTO_0:
  DUPTABLE R3 K3 [{"_handler", "_draggerContext", "_boundsChanged"}]
  SETTABLEKS R1 R3 K0 ["_handler"]
  SETTABLEKS R0 R3 K1 ["_draggerContext"]
  SETTABLEKS R1 R3 K2 ["_boundsChanged"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K5 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["ScrubberSignal"]
  GETTABLEKS R3 R0 K2 ["_boundsChanged"]
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_scrubberChangedConnection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_scrubberChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["install"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["uninstall"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["setSelection"]
  RETURN R0 1
