PROTO_0:
  DUPTABLE R1 K12 [{"id", "isEnabled", "isValid", "lineNumber", "scriptName", "scriptLine", "condition", "logMessage", "continueExecution", "debugpointType", "removeOnHit", "contextBreakpoints"}]
  GETTABLEKS R2 R0 K13 ["Id"]
  SETTABLEKS R2 R1 K0 ["id"]
  GETTABLEKS R2 R0 K14 ["Enabled"]
  SETTABLEKS R2 R1 K1 ["isEnabled"]
  GETTABLEKS R2 R0 K15 ["Valid"]
  SETTABLEKS R2 R1 K2 ["isValid"]
  GETTABLEKS R2 R0 K16 ["Line"]
  SETTABLEKS R2 R1 K3 ["lineNumber"]
  GETTABLEKS R2 R0 K17 ["Script"]
  SETTABLEKS R2 R1 K4 ["scriptName"]
  LOADK R2 K18 [""]
  SETTABLEKS R2 R1 K5 ["scriptLine"]
  GETTABLEKS R2 R0 K19 ["Condition"]
  SETTABLEKS R2 R1 K6 ["condition"]
  GETTABLEKS R2 R0 K20 ["LogMessage"]
  SETTABLEKS R2 R1 K7 ["logMessage"]
  GETTABLEKS R2 R0 K21 ["ContinueExecution"]
  SETTABLEKS R2 R1 K8 ["continueExecution"]
  GETTABLEKS R3 R0 K22 ["IsLogpoint"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K23 ["DebugpointType"]
  GETTABLEKS R2 R3 K24 ["Logpoint"]
  JUMPIF R2 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K23 ["DebugpointType"]
  GETTABLEKS R2 R3 K25 ["Breakpoint"]
  SETTABLEKS R2 R1 K9 ["debugpointType"]
  GETTABLEKS R2 R0 K26 ["RemoveOnHit"]
  SETTABLEKS R2 R1 K10 ["removeOnHit"]
  NAMECALL R2 R0 K27 ["GetContextBreakpoints"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["contextBreakpoints"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["isEnabled"]
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K3 [math.random]
  CALL R3 0 1
  LOADK R4 K4 [0.5]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["isEnabled"]
  GETTABLEKS R2 R0 K5 ["isValid"]
  JUMPIFNOTEQKNIL R2 [+4]
  LOADB R2 1
  SETTABLEKS R2 R0 K5 ["isValid"]
  GETTABLEKS R2 R0 K6 ["continueExecution"]
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K3 [math.random]
  CALL R3 0 1
  LOADK R4 K4 [0.5]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R0 K6 ["continueExecution"]
  GETTABLEKS R2 R0 K7 ["removeOnHit"]
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K3 [math.random]
  CALL R3 0 1
  LOADK R4 K4 [0.5]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R0 K7 ["removeOnHit"]
  DUPTABLE R2 K16 [{"id", "isEnabled", "isValid", "lineNumber", "scriptName", "scriptLine", "condition", "logMessage", "continueExecution", "debugpointType", "contextBreakpoints", "removeOnHit"}]
  GETTABLEKS R4 R0 K8 ["id"]
  OR R3 R4 R1
  SETTABLEKS R3 R2 K8 ["id"]
  GETTABLEKS R3 R0 K0 ["isEnabled"]
  SETTABLEKS R3 R2 K0 ["isEnabled"]
  GETTABLEKS R3 R0 K5 ["isValid"]
  SETTABLEKS R3 R2 K5 ["isValid"]
  GETTABLEKS R4 R0 K9 ["lineNumber"]
  OR R3 R4 R1
  SETTABLEKS R3 R2 K9 ["lineNumber"]
  GETTABLEKS R3 R0 K10 ["scriptName"]
  JUMPIF R3 [+7]
  LOADK R4 K17 ["script"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K19 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K10 ["scriptName"]
  GETTABLEKS R3 R0 K11 ["scriptLine"]
  JUMPIF R3 [+9]
  LOADK R4 K20 ["local varNum"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K19 [tostring]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K21 [" = 0"]
  CONCAT R3 R4 R6
  SETTABLEKS R3 R2 K11 ["scriptLine"]
  GETTABLEKS R3 R0 K12 ["condition"]
  JUMPIF R3 [+9]
  LOADK R4 K22 ["varNum"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K19 [tostring]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K23 [" == 0"]
  CONCAT R3 R4 R6
  SETTABLEKS R3 R2 K12 ["condition"]
  GETTABLEKS R3 R0 K13 ["logMessage"]
  JUMPIF R3 [+7]
  LOADK R4 K22 ["varNum"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K19 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K13 ["logMessage"]
  GETTABLEKS R3 R0 K6 ["continueExecution"]
  SETTABLEKS R3 R2 K6 ["continueExecution"]
  GETTABLEKS R3 R0 K14 ["debugpointType"]
  JUMPIF R3 [+20]
  FASTCALL2K MATH_FMOD R1 K24 [+5]
  MOVE R5 R1
  LOADK R6 K24 [2]
  GETIMPORT R4 K26 [math.fmod]
  CALL R4 2 1
  JUMPIFNOTEQKN R4 K27 [0] [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K28 ["DebugpointType"]
  GETTABLEKS R3 R4 K29 ["Breakpoint"]
  JUMPIF R3 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K28 ["DebugpointType"]
  GETTABLEKS R3 R4 K30 ["Logpoint"]
  SETTABLEKS R3 R2 K14 ["debugpointType"]
  GETTABLEKS R3 R0 K15 ["contextBreakpoints"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K15 ["contextBreakpoints"]
  GETTABLEKS R3 R0 K7 ["removeOnHit"]
  SETTABLEKS R3 R2 K7 ["removeOnHit"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R1
  DUPTABLE R4 K12 [{"fromMetaBreakpoint", "mockMetaBreakpoint"}]
  SETTABLEKS R2 R4 K10 ["fromMetaBreakpoint"]
  SETTABLEKS R3 R4 K11 ["mockMetaBreakpoint"]
  RETURN R4 1
