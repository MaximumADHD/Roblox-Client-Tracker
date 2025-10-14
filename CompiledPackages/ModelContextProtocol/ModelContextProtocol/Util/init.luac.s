MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModelContextProtocol"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Logging"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["MultiplexUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Util"]
  GETTABLEKS R4 R5 K9 ["Observable"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K10 ["ToolBuilder"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K11 ["ToolResult"]
  CALL R5 1 1
  DUPTABLE R6 K12 [{"ToolBuilder", "ToolResult", "MultiplexUtils", "Logging", "Observable"}]
  SETTABLEKS R4 R6 K10 ["ToolBuilder"]
  SETTABLEKS R5 R6 K11 ["ToolResult"]
  SETTABLEKS R2 R6 K8 ["MultiplexUtils"]
  SETTABLEKS R1 R6 K7 ["Logging"]
  SETTABLEKS R3 R6 K9 ["Observable"]
  RETURN R6 1
