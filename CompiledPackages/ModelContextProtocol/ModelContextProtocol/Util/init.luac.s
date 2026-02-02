MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModelContextProtocol"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Json"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["Logging"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Util"]
  GETTABLEKS R4 R5 K9 ["MultiplexUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K10 ["Observable"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K11 ["ToolBuilder"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Util"]
  GETTABLEKS R7 R8 K12 ["ToolResult"]
  CALL R6 1 1
  DUPTABLE R7 K13 [{"ToolBuilder", "ToolResult", "MultiplexUtils", "Logging", "Observable", "Json"}]
  SETTABLEKS R5 R7 K11 ["ToolBuilder"]
  SETTABLEKS R6 R7 K12 ["ToolResult"]
  SETTABLEKS R3 R7 K9 ["MultiplexUtils"]
  SETTABLEKS R2 R7 K8 ["Logging"]
  SETTABLEKS R4 R7 K10 ["Observable"]
  SETTABLEKS R1 R7 K7 ["Json"]
  RETURN R7 1
