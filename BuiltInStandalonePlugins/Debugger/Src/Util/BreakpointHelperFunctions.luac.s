PROTO_0:
  GETTABLEKS R7 R1 K0 ["item"]
  GETTABLEKS R6 R7 K1 ["isEnabled"]
  NOT R5 R6
  GETTABLEKS R7 R1 K0 ["item"]
  GETTABLEKS R6 R7 K2 ["context"]
  JUMPIFNOTEQKNIL R6 [+22]
  MOVE R8 R5
  NAMECALL R6 R0 K3 ["SetEnabled"]
  CALL R6 2 0
  JUMPIFNOT R5 [+8]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["EnableMetaBreakpoint"]
  MOVE R9 R3
  NAMECALL R6 R2 K5 ["report"]
  CALL R6 3 0
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["DisableMetaBreakpoint"]
  MOVE R9 R3
  NAMECALL R6 R2 K5 ["report"]
  CALL R6 3 0
  RETURN R0 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["GetIntForGST"]
  GETTABLEKS R8 R1 K0 ["item"]
  GETTABLEKS R7 R8 K2 ["context"]
  CALL R6 1 1
  JUMPIFNOTEQKNIL R6 [+2]
  RETURN R0 0
  GETIMPORT R7 K9 [game]
  LOADK R9 K10 ["DebuggerUIService"]
  NAMECALL R7 R7 K11 ["GetService"]
  CALL R7 2 1
  LOADB R8 0
  JUMPIFNOT R4 [+10]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["kInvalidDebuggerConnectionId"]
  JUMPIFEQ R4 R9 [+6]
  MOVE R11 R4
  NAMECALL R9 R7 K13 ["IsConnectionForPlayDataModel"]
  CALL R9 2 1
  NOT R8 R9
  JUMPIFNOT R8 [+6]
  JUMPIFNOT R5 [+5]
  MOVE R11 R5
  NAMECALL R9 R0 K3 ["SetEnabled"]
  CALL R9 2 0
  JUMP [+9]
  GETTABLEKS R12 R1 K0 ["item"]
  GETTABLEKS R11 R12 K14 ["scriptGUID"]
  MOVE R12 R6
  MOVE R13 R5
  NAMECALL R9 R0 K15 ["SetChildBreakpointEnabledByScriptAndContext"]
  CALL R9 4 0
  JUMPIFNOT R5 [+8]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["EnableBreakpoint"]
  MOVE R12 R3
  NAMECALL R9 R2 K5 ["report"]
  CALL R9 3 0
  RETURN R0 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["DisableBreakpoint"]
  MOVE R12 R3
  NAMECALL R9 R2 K5 ["report"]
  CALL R9 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["AnalyticsEventNames"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["setBreakpointRowEnabled"]
  RETURN R3 1
