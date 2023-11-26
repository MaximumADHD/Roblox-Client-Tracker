MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"SourceLine", "Condition", "LogMessage", "ContinueExecution", "RemoveOnHit"}]
  LOADK R1 K6 ["SourceLineColumn"]
  SETTABLEKS R1 R0 K0 ["SourceLine"]
  LOADK R1 K7 ["ConditionColumn"]
  SETTABLEKS R1 R0 K1 ["Condition"]
  LOADK R1 K8 ["LogMessageColumn"]
  SETTABLEKS R1 R0 K2 ["LogMessage"]
  LOADK R1 K9 ["ContinueExecutionColumn"]
  SETTABLEKS R1 R0 K3 ["ContinueExecution"]
  LOADK R1 K10 ["RemoveOnHitColumn"]
  SETTABLEKS R1 R0 K4 ["RemoveOnHit"]
  RETURN R0 1
