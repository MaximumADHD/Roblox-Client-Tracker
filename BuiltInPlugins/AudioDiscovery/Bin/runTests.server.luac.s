PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADN R2 0
  NAMECALL R0 R0 K4 ["ExitAsync"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K6 ["commonInit"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["RunningUnderCLI"]
  CALL R4 0 1
  JUMPIF R4 [+4]
  GETTABLEKS R4 R2 K13 ["RunTests"]
  CALL R4 0 1
  JUMPIFNOT R4 [+92]
  GETIMPORT R4 K15 [game]
  LOADK R6 K16 ["RetireAudioDiscoveryPlugin"]
  NAMECALL R4 R4 K17 ["GetFastFlag"]
  CALL R4 2 1
  JUMPIF R4 [+85]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K18 ["Dev"]
  GETTABLEKS R5 R6 K19 ["TestEZ"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K20 ["TestBootstrap"]
  GETTABLEKS R7 R4 K21 ["Reporters"]
  GETTABLEKS R6 R7 K22 ["TeamCityReporter"]
  GETTABLEKS R8 R4 K21 ["Reporters"]
  GETTABLEKS R7 R8 K23 ["TextReporter"]
  GETIMPORT R10 K26 [_G]
  GETTABLEKS R9 R10 K24 ["TEAMCITY"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R6
  JUMPIF R8 [+1]
  MOVE R8 R7
  GETTABLEKS R9 R0 K7 ["Src"]
  DUPTABLE R10 K30 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K27 ["showTimingInfo"]
  LOADNIL R11
  SETTABLEKS R11 R10 K28 ["testNamePattern"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K29 ["extraEnvironment"]
  GETIMPORT R11 K32 [print]
  LOADK R13 K33 ["----- All "]
  GETTABLEKS R14 R0 K34 ["Name"]
  LOADK R15 K35 [" Tests ------"]
  CONCAT R12 R13 R15
  CALL R11 1 0
  NEWTABLE R13 0 1
  MOVE R14 R9
  SETLIST R13 R14 1 [1]
  MOVE R14 R8
  MOVE R15 R10
  NAMECALL R11 R5 K36 ["run"]
  CALL R11 4 0
  GETIMPORT R11 K32 [print]
  LOADK R12 K37 ["----------------------------------"]
  CALL R11 1 0
  GETTABLEKS R11 R2 K38 ["RunDeveloperFrameworkTests"]
  CALL R11 0 1
  JUMPIFNOT R11 [+19]
  GETIMPORT R11 K32 [print]
  LOADK R12 K39 [""]
  CALL R11 1 0
  GETIMPORT R11 K32 [print]
  LOADK R12 K40 ["----- All DeveloperFramework Tests ------"]
  CALL R11 1 0
  GETTABLEKS R12 R3 K41 ["TestHelpers"]
  GETTABLEKS R11 R12 K42 ["runFrameworkTests"]
  MOVE R12 R4
  MOVE R13 R8
  CALL R11 2 0
  GETIMPORT R11 K32 [print]
  LOADK R12 K37 ["----------------------------------"]
  CALL R11 1 0
  GETTABLEKS R4 R2 K12 ["RunningUnderCLI"]
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETIMPORT R4 K44 [pcall]
  DUPCLOSURE R5 K45 [PROTO_0]
  CALL R4 1 0
  RETURN R0 0
