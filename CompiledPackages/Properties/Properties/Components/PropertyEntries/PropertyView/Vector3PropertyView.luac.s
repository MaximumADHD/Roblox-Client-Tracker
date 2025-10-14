PROTO_0:
  GETTABLEKS R2 R0 K0 ["info"]
  GETTABLEKS R1 R2 K1 ["parts"]
  GETTABLEKS R4 R1 K2 ["x"]
  GETTABLEKS R3 R4 K3 ["multiple"]
  JUMPIFNOT R3 [+2]
  LOADK R2 K4 ["-"]
  JUMP [+4]
  GETTABLEKS R3 R1 K2 ["x"]
  GETTABLEKS R2 R3 K5 ["value"]
  GETTABLEKS R5 R1 K6 ["y"]
  GETTABLEKS R4 R5 K3 ["multiple"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K4 ["-"]
  JUMP [+4]
  GETTABLEKS R4 R1 K6 ["y"]
  GETTABLEKS R3 R4 K5 ["value"]
  GETTABLEKS R6 R1 K7 ["z"]
  GETTABLEKS R5 R6 K3 ["multiple"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K4 ["-"]
  JUMP [+4]
  GETTABLEKS R5 R1 K7 ["z"]
  GETTABLEKS R4 R5 K5 ["value"]
  GETTABLEKS R7 R0 K0 ["info"]
  GETTABLEKS R6 R7 K8 ["readonly"]
  NOT R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["Fragment"]
  NEWTABLE R8 0 0
  DUPTABLE R9 K14 [{"X", "Y", "Z"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K22 [{"part", "size", "color", "editable", "value", "beginEditingAsync", "setPart", "finishEditing"}]
  LOADK R13 K2 ["x"]
  SETTABLEKS R13 R12 K15 ["part"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADK R14 K26 [0.29]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["size"]
  GETIMPORT R13 K29 [Color3.fromHex]
  LOADK R14 K30 ["#DF281F"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K17 ["color"]
  SETTABLEKS R5 R12 K18 ["editable"]
  SETTABLEKS R2 R12 K5 ["value"]
  GETTABLEKS R13 R0 K19 ["beginEditingAsync"]
  SETTABLEKS R13 R12 K19 ["beginEditingAsync"]
  GETTABLEKS R13 R0 K20 ["setPart"]
  SETTABLEKS R13 R12 K20 ["setPart"]
  GETTABLEKS R13 R0 K21 ["finishEditing"]
  SETTABLEKS R13 R12 K21 ["finishEditing"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["X"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K22 [{"part", "size", "color", "editable", "value", "beginEditingAsync", "setPart", "finishEditing"}]
  LOADK R13 K6 ["y"]
  SETTABLEKS R13 R12 K15 ["part"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADK R14 K26 [0.29]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["size"]
  GETIMPORT R13 K29 [Color3.fromHex]
  LOADK R14 K31 ["#39C582"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K17 ["color"]
  SETTABLEKS R5 R12 K18 ["editable"]
  SETTABLEKS R3 R12 K5 ["value"]
  GETTABLEKS R13 R0 K19 ["beginEditingAsync"]
  SETTABLEKS R13 R12 K19 ["beginEditingAsync"]
  GETTABLEKS R13 R0 K20 ["setPart"]
  SETTABLEKS R13 R12 K20 ["setPart"]
  GETTABLEKS R13 R0 K21 ["finishEditing"]
  SETTABLEKS R13 R12 K21 ["finishEditing"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Y"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K22 [{"part", "size", "color", "editable", "value", "beginEditingAsync", "setPart", "finishEditing"}]
  LOADK R13 K7 ["z"]
  SETTABLEKS R13 R12 K15 ["part"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADK R14 K26 [0.29]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["size"]
  GETIMPORT R13 K29 [Color3.fromHex]
  LOADK R14 K32 ["#2F7AC6"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K17 ["color"]
  SETTABLEKS R5 R12 K18 ["editable"]
  SETTABLEKS R4 R12 K5 ["value"]
  GETTABLEKS R13 R0 K19 ["beginEditingAsync"]
  SETTABLEKS R13 R12 K19 ["beginEditingAsync"]
  GETTABLEKS R13 R0 K20 ["setPart"]
  SETTABLEKS R13 R12 K20 ["setPart"]
  GETTABLEKS R13 R0 K21 ["finishEditing"]
  SETTABLEKS R13 R12 K21 ["finishEditing"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Z"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["PropertyEntries"]
  GETTABLEKS R3 R4 K8 ["PropertyView"]
  GETTABLEKS R2 R3 K9 ["NumberPartView"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K12 ["RpcTypes"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
