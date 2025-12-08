PROTO_0:
  GETTABLEKS R3 R0 K0 ["selectIds"]
  GETIMPORT R4 K3 [table.freeze]
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  CALL R4 1 -1
  CALL R3 -1 0
  GETTABLEKS R4 R0 K4 ["capabilities"]
  GETTABLEKS R3 R4 K5 ["respondsToScriptClicks"]
  JUMPIFNOT R3 [+27]
  GETTABLEKS R3 R0 K6 ["getExplorerNodeById"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K7 [+4]
  LOADK R6 K7 ["Clicking on unknown node"]
  GETIMPORT R4 K9 [assert]
  CALL R4 2 0
  GETUPVAL R4 0
  GETTABLEKS R6 R3 K10 ["datum"]
  GETTABLEKS R5 R6 K11 ["className"]
  CALL R4 1 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R1 K12 ["guestRpcInterface"]
  GETTABLEKS R4 R5 K13 ["clickScript"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RpcTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K7 ["Networking"]
  GETTABLEKS R4 R5 K8 ["createSession"]
  GETTABLEKS R3 R4 K9 ["createSessionTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Networking"]
  GETTABLEKS R5 R6 K8 ["createSession"]
  GETTABLEKS R4 R5 K10 ["isClassNameLuaSourceContainer"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
