PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["new"]
  CALL R0 0 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["init"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Utils"]
  GETTABLEKS R2 R3 K10 ["CliAdapter"]
  CALL R1 1 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K13 ["RunningEval"]
  JUMPIF R3 [+6]
  GETTABLEKS R3 R2 K14 ["launch"]
  LOADK R4 K4 ["StreamingServiceDispatcherRegistry"]
  GETTABLEKS R5 R0 K8 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K15 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K13 ["RunningEval"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K16 ["Flags"]
  GETTABLEKS R4 R5 K17 ["getFFlagAICOChatBot"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K16 ["Flags"]
  GETTABLEKS R5 R6 K18 ["getFFlagCAPNewUserExperiment"]
  CALL R4 1 1
  MOVE R5 R3
  CALL R5 0 1
  JUMPIF R5 [+4]
  MOVE R5 R4
  CALL R5 0 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K19 ["MainPlugin"]
  CALL R5 1 1
  LOADNIL R6
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE REF R6
  CAPTURE VAL R5
  GETIMPORT R9 K1 [plugin]
  GETTABLEKS R8 R9 K20 ["Unloading"]
  NEWCLOSURE R10 P1
  CAPTURE REF R6
  NAMECALL R8 R8 K21 ["Connect"]
  CALL R8 2 0
  GETIMPORT R8 K1 [plugin]
  GETTABLEKS R9 R0 K22 ["Name"]
  SETTABLEKS R9 R8 K22 ["Name"]
  GETTABLEKS R8 R5 K23 ["new"]
  CALL R8 0 1
  MOVE R6 R8
  NAMECALL R8 R6 K24 ["init"]
  CALL R8 1 0
  CLOSEUPVALS R6
  RETURN R0 0
