PROTO_0:
  DUPTABLE R0 K7 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["input_tokens"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["output_tokens"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["cache_read_input_tokens"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["cache_creation_input_tokens"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["reasoning_tokens"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["timestamp"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["model"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K7 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["input_tokens"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["output_tokens"]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["cache_read_input_tokens"]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["cache_creation_input_tokens"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["reasoning_tokens"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["timestamp"]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["model"]
  SETTABLEKS R1 R0 K8 ["totalUsage"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["totalUsage"]
  GETIMPORT R2 K3 [os.time]
  CALL R2 0 1
  SETTABLEKS R2 R1 K4 ["timestamp"]
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R1 [+9]
  GETTABLEKS R3 R0 K0 ["totalUsage"]
  GETTABLEKS R2 R3 K1 ["model"]
  JUMPIF R2 [+4]
  GETTABLEKS R2 R0 K0 ["totalUsage"]
  SETTABLEKS R1 R2 K1 ["model"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R1 K0 ["input_tokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R1 K0 ["input_tokens"]
  SETTABLEKS R3 R2 K0 ["input_tokens"]
  GETTABLEKS R2 R1 K2 ["output_tokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R1 K2 ["output_tokens"]
  SETTABLEKS R3 R2 K2 ["output_tokens"]
  GETTABLEKS R2 R1 K3 ["cache_read_input_tokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R1 K3 ["cache_read_input_tokens"]
  SETTABLEKS R3 R2 K3 ["cache_read_input_tokens"]
  GETTABLEKS R2 R1 K4 ["cache_creation_input_tokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R1 K4 ["cache_creation_input_tokens"]
  SETTABLEKS R3 R2 K4 ["cache_creation_input_tokens"]
  GETTABLEKS R2 R1 K5 ["reasoning_tokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R1 K5 ["reasoning_tokens"]
  SETTABLEKS R3 R2 K5 ["reasoning_tokens"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["input_tokens"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R2 K0 ["input_tokens"]
  GETTABLEKS R4 R1 K0 ["input_tokens"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K0 ["input_tokens"]
  GETTABLEKS R2 R1 K2 ["output_tokens"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R2 K2 ["output_tokens"]
  GETTABLEKS R4 R1 K2 ["output_tokens"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K2 ["output_tokens"]
  GETTABLEKS R2 R1 K3 ["cache_read_input_tokens"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R2 K3 ["cache_read_input_tokens"]
  GETTABLEKS R4 R1 K3 ["cache_read_input_tokens"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K3 ["cache_read_input_tokens"]
  GETTABLEKS R2 R1 K4 ["cache_creation_input_tokens"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R2 K4 ["cache_creation_input_tokens"]
  GETTABLEKS R4 R1 K4 ["cache_creation_input_tokens"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K4 ["cache_creation_input_tokens"]
  GETTABLEKS R2 R1 K5 ["reasoning_tokens"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K1 ["totalUsage"]
  GETTABLEKS R3 R2 K5 ["reasoning_tokens"]
  GETTABLEKS R4 R1 K5 ["reasoning_tokens"]
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K5 ["reasoning_tokens"]
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"totalUsage"}]
  DUPTABLE R2 K9 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens", "reasoning_tokens", "timestamp", "model"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["input_tokens"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["output_tokens"]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["cache_read_input_tokens"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["cache_creation_input_tokens"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["reasoning_tokens"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["timestamp"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["model"]
  SETTABLEKS R2 R1 K0 ["totalUsage"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [setmetatable]
  CALL R2 2 0
  GETUPVAL R5 1
  GETTABLE R4 R5 R0
  NOT R3 R4
  FASTCALL2K ASSERT R3 K12 [+4]
  LOADK R4 K12 ["TokenUsageTracker with this name already exists"]
  GETIMPORT R2 K14 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  SETTABLE R1 R2 R0
  RETURN R1 1

PROTO_7:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  NEWTABLE R1 8 0
  SETTABLEKS R1 R1 K0 ["__index"]
  NEWTABLE R2 0 0
  DUPCLOSURE R3 K1 [PROTO_0]
  DUPCLOSURE R4 K2 [PROTO_1]
  SETTABLEKS R4 R1 K3 ["resetTotalUsage"]
  DUPCLOSURE R4 K4 [PROTO_2]
  SETTABLEKS R4 R1 K5 ["logTime"]
  DUPCLOSURE R4 K6 [PROTO_3]
  SETTABLEKS R4 R1 K7 ["logModel"]
  DUPCLOSURE R4 K8 [PROTO_4]
  SETTABLEKS R4 R1 K9 ["setUsage"]
  DUPCLOSURE R4 K10 [PROTO_5]
  SETTABLEKS R4 R1 K11 ["addUsage"]
  DUPCLOSURE R4 K12 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R0 K13 ["createTracker"]
  DUPCLOSURE R4 K14 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R4 R0 K15 ["getAllTrackers"]
  RETURN R0 1
