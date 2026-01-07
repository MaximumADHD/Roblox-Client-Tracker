PROTO_0:
  GETTABLEKS R2 R0 K0 ["getInstanceId"]
  MOVE R3 R1
  CALL R2 1 1
  GETTABLEKS R3 R1 K1 ["Parent"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["getInstanceId"]
  GETTABLEKS R4 R1 K1 ["Parent"]
  CALL R3 1 1
  DUPTABLE R4 K9 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
  SETTABLEKS R2 R4 K2 ["id"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K10 ["Name"]
  CALL R5 1 1
  JUMP [+2]
  GETTABLEKS R5 R1 K10 ["Name"]
  SETTABLEKS R5 R4 K3 ["name"]
  GETTABLEKS R5 R1 K11 ["ClassName"]
  SETTABLEKS R5 R4 K4 ["className"]
  SETTABLEKS R3 R4 K5 ["parentId"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+11]
  GETUPVAL R6 3
  MOVE R8 R1
  NAMECALL R6 R6 K12 ["CountChildren"]
  CALL R6 2 1
  LOADN R7 0
  JUMPIFLT R7 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMP [+9]
  NAMECALL R7 R1 K13 ["GetChildren"]
  CALL R7 1 1
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFLT R7 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["hasChildren"]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["fieldValues"]
  LOADNIL R5
  SETTABLEKS R5 R4 K8 ["isGhost"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InstanceExtensionsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Explorer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Guest"]
  GETTABLEKS R4 R5 K11 ["InstanceGuestRPCInterface"]
  GETTABLEKS R3 R4 K12 ["InstanceGuestRPCInterfaceTypes"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R1 K13 ["RpcTypes"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["formatInstanceName"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K16 ["Flags"]
  GETTABLEKS R6 R7 K17 ["getFFlagExplorerFormatInstanceName"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K16 ["Flags"]
  GETTABLEKS R7 R8 K18 ["getFFlagExplorerOptimizedHasChildren"]
  CALL R6 1 1
  MOVE R7 R6
  CALL R7 0 1
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R0
  RETURN R8 1
