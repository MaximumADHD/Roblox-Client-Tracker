PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K1 [{"Start"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["Start"]
  RETURN R0 1

PROTO_2:
  LOADK R0 K0 ["0.0.0.2"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["stop"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K7 [game]
  LOADK R2 K8 ["DebugErrorReporterTestInStudio"]
  NAMECALL R0 R0 K9 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["launch"]
  GETTABLEKS R5 R1 K14 ["Name"]
  GETTABLEKS R6 R1 K15 ["ErrorReporter"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K16 ["isCli"]
  CALL R4 0 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [require]
  GETTABLEKS R6 R1 K15 ["ErrorReporter"]
  GETTABLEKS R5 R6 K17 ["StudioPluginErrorReporter"]
  CALL R4 1 1
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K18 ["ExpectedPrefix"]
  NAMECALL R5 R5 K19 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL1 ASSERT R7 [+2]
  GETIMPORT R6 K21 [assert]
  CALL R6 1 0
  GETTABLEKS R6 R4 K22 ["new"]
  DUPTABLE R7 K27 [{"expectedSecurityLevel", "expectedPrefix", "networking", "services"}]
  LOADN R8 6
  SETTABLEKS R8 R7 K23 ["expectedSecurityLevel"]
  GETTABLEKS R8 R5 K28 ["Value"]
  SETTABLEKS R8 R7 K24 ["expectedPrefix"]
  JUMPIFNOT R0 [+27]
  GETTABLEKS R10 R2 K29 ["Http"]
  GETTABLEKS R9 R10 K30 ["Networking"]
  GETTABLEKS R8 R9 K22 ["new"]
  DUPTABLE R9 K35 [{"isInternal", "loggingLevel", "allowYielding", "httpImpl"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K31 ["isInternal"]
  LOADN R10 7
  SETTABLEKS R10 R9 K32 ["loggingLevel"]
  LOADB R10 0
  SETTABLEKS R10 R9 K33 ["allowYielding"]
  DUPTABLE R10 K38 [{"ClassName", "RequestInternal"}]
  LOADK R11 K39 ["ErrorReporter Plugin's HttpImpl"]
  SETTABLEKS R11 R10 K36 ["ClassName"]
  DUPCLOSURE R11 K40 [PROTO_1]
  SETTABLEKS R11 R10 K37 ["RequestInternal"]
  SETTABLEKS R10 R9 K34 ["httpImpl"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["networking"]
  JUMPIFNOT R0 [+8]
  DUPTABLE R8 K42 [{"RunService"}]
  DUPTABLE R9 K44 [{"GetRobloxVersion"}]
  DUPCLOSURE R10 K45 [PROTO_2]
  SETTABLEKS R10 R9 K43 ["GetRobloxVersion"]
  SETTABLEKS R9 R8 K41 ["RunService"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["services"]
  CALL R6 1 1
  GETIMPORT R8 K47 [plugin]
  GETTABLEKS R7 R8 K48 ["Unloading"]
  DUPCLOSURE R9 K49 [PROTO_3]
  CAPTURE VAL R6
  NAMECALL R7 R7 K50 ["Connect"]
  CALL R7 2 0
  JUMPIFNOT R0 [+4]
  GETIMPORT R7 K52 [error]
  LOADK R8 K53 ["ErrorReporter test error"]
  CALL R7 1 0
  RETURN R0 0
