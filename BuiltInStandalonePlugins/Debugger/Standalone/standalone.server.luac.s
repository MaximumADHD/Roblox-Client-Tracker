PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["mount"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 3
  GETUPVAL R1 4
  JUMPIFNOT R1 [+22]
  GETUPVAL R1 5
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 5
  NAMECALL R1 R1 K7 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K8 ["DeveloperTools"]
  GETTABLEKS R1 R2 K9 ["forStandalonePlugin"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Name"]
  GETIMPORT R3 K1 [plugin]
  NEWTABLE R4 0 0
  CALL R1 3 1
  SETUPVAL R1 5
  GETUPVAL R1 5
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 5
  LOADK R3 K10 ["Roact tree"]
  GETUPVAL R4 3
  NAMECALL R1 R1 K11 ["addRoactTree"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Common"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["defineLuaFlags"]
  CALL R2 1 0
  GETIMPORT R2 K7 [require]
  GETTABLEKS R6 R1 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K14 [game]
  LOADK R5 K15 ["DebuggerUIService"]
  NAMECALL R3 R3 K16 ["FindService"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K17 ["commonInit"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 0
  GETIMPORT R4 K14 [game]
  LOADK R6 K18 ["StudioService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  NAMECALL R4 R4 K20 ["HasInternalPermission"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K21 ["Packages"]
  GETTABLEKS R6 R7 K22 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R0 K21 ["Packages"]
  GETTABLEKS R7 R8 K23 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K24 ["MainPlugin"]
  CALL R7 1 1
  LOADNIL R8
  LOADNIL R9
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE REF R8
  CAPTURE VAL R4
  CAPTURE REF R9
  CAPTURE VAL R6
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE REF R8
  CAPTURE VAL R5
  GETIMPORT R13 K1 [plugin]
  GETTABLEKS R12 R13 K25 ["Unloading"]
  MOVE R14 R11
  NAMECALL R12 R12 K26 ["Connect"]
  CALL R12 2 0
  MOVE R12 R10
  CALL R12 0 0
  CLOSEUPVALS R8
  RETURN R0 0
