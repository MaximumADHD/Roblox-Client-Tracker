PROTO_0:
  SETTABLEKS R1 R0 K0 ["Enabled"]
  GETTABLEKS R2 R0 K1 ["mockMetaBreakpointManager"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R0 K1 ["mockMetaBreakpointManager"]
  GETTABLEKS R2 R3 K2 ["MetaBreakpointChanged"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  SETTABLEKS R1 R0 K0 ["ContinueExecution"]
  GETTABLEKS R2 R0 K1 ["mockMetaBreakpointManager"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R0 K1 ["mockMetaBreakpointManager"]
  GETTABLEKS R2 R3 K2 ["MetaBreakpointChanged"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  SETTABLEKS R1 R0 K0 ["RemoveOnHit"]
  GETTABLEKS R2 R0 K1 ["mockMetaBreakpointManager"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R3 R0 K1 ["mockMetaBreakpointManager"]
  GETTABLEKS R2 R3 K2 ["MetaBreakpointChanged"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  SETTABLEKS R1 R0 K0 ["mockMetaBreakpointManager"]
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Enabled"]
  JUMPIFNOTEQKNIL R1 [+4]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["Enabled"]
  GETTABLEKS R1 R0 K1 ["ContinueExecution"]
  JUMPIFNOTEQKNIL R1 [+4]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["ContinueExecution"]
  GETTABLEKS R1 R0 K2 ["IsLogpoint"]
  JUMPIFNOTEQKNIL R1 [+4]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["IsLogpoint"]
  GETTABLEKS R1 R0 K3 ["RemoveOnHit"]
  JUMPIFNOTEQKNIL R1 [+4]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["RemoveOnHit"]
  DUPTABLE R1 K9 [{"Script", "Line", "Condition", "Id", "LogMessage", "Enabled", "ContinueExecution", "IsLogpoint", "RemoveOnHit"}]
  GETTABLEKS R3 R0 K4 ["Script"]
  ORK R2 R3 K10 ["1234-5678-9ABC"]
  SETTABLEKS R2 R1 K4 ["Script"]
  GETTABLEKS R3 R0 K5 ["Line"]
  ORK R2 R3 K11 [1]
  SETTABLEKS R2 R1 K5 ["Line"]
  GETTABLEKS R3 R0 K6 ["Condition"]
  ORK R2 R3 K12 [""]
  SETTABLEKS R2 R1 K6 ["Condition"]
  GETTABLEKS R3 R0 K7 ["Id"]
  ORK R2 R3 K11 [1]
  SETTABLEKS R2 R1 K7 ["Id"]
  GETTABLEKS R3 R0 K8 ["LogMessage"]
  ORK R2 R3 K12 [""]
  SETTABLEKS R2 R1 K8 ["LogMessage"]
  GETTABLEKS R2 R0 K0 ["Enabled"]
  SETTABLEKS R2 R1 K0 ["Enabled"]
  GETTABLEKS R2 R0 K1 ["ContinueExecution"]
  SETTABLEKS R2 R1 K1 ["ContinueExecution"]
  GETTABLEKS R2 R0 K2 ["IsLogpoint"]
  SETTABLEKS R2 R1 K2 ["IsLogpoint"]
  GETTABLEKS R2 R0 K3 ["RemoveOnHit"]
  SETTABLEKS R2 R1 K3 ["RemoveOnHit"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K14 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["SetEnabled"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["SetContinueExecution"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["SetRemoveOnHit"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["SetMockMetaBreakpointManager"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["GetContextBreakpoints"]
  DUPCLOSURE R1 K11 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["new"]
  RETURN R0 1
