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
  GETTABLEKS R4 R5 K9 ["ToolBuilder"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K10 ["ToolResult"]
  CALL R4 1 1
  DUPTABLE R5 K11 [{"ToolBuilder", "ToolResult", "MultiplexUtils", "Logging"}]
  SETTABLEKS R3 R5 K9 ["ToolBuilder"]
  SETTABLEKS R4 R5 K10 ["ToolResult"]
  SETTABLEKS R2 R5 K8 ["MultiplexUtils"]
  SETTABLEKS R1 R5 K7 ["Logging"]
  RETURN R5 1
