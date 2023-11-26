PROTO_0:
  DUPTABLE R1 K10 [{"nameColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  GETTABLEKS R2 R0 K11 ["name"]
  SETTABLEKS R2 R1 K0 ["nameColumn"]
  GETTABLEKS R2 R0 K12 ["path"]
  SETTABLEKS R2 R1 K1 ["pathColumn"]
  GETTABLEKS R2 R0 K13 ["id"]
  SETTABLEKS R2 R1 K2 ["idColumn"]
  GETTABLEKS R2 R0 K14 ["scope"]
  SETTABLEKS R2 R1 K3 ["scopeColumn"]
  GETTABLEKS R2 R0 K15 ["value"]
  SETTABLEKS R2 R1 K4 ["valueColumn"]
  GETTABLEKS R2 R0 K16 ["dataType"]
  SETTABLEKS R2 R1 K5 ["dataTypeColumn"]
  GETTABLEKS R2 R0 K6 ["childPaths"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["childPaths"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["expanded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["textFilteredOut"]
  LOADB R2 0
  SETTABLEKS R2 R1 K9 ["scopeFilteredOut"]
  RETURN R1 1

PROTO_1:
  JUMPIFNOT R1 [+7]
  GETTABLEKS R6 R1 K0 ["pathColumn"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["SeparationToken"]
  CONCAT R5 R6 R7
  JUMP [+1]
  LOADK R5 K2 [""]
  DUPTABLE R6 K12 [{"nameColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  GETTABLEKS R7 R0 K13 ["Name"]
  SETTABLEKS R7 R6 K3 ["nameColumn"]
  MOVE R8 R5
  GETTABLEKS R9 R0 K13 ["Name"]
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K0 ["pathColumn"]
  GETTABLEKS R7 R0 K14 ["VariableId"]
  SETTABLEKS R7 R6 K4 ["idColumn"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R7 R1 K5 ["scopeColumn"]
  JUMPIF R7 [+1]
  MOVE R7 R2
  SETTABLEKS R7 R6 K5 ["scopeColumn"]
  GETTABLEKS R7 R0 K15 ["Value"]
  SETTABLEKS R7 R6 K6 ["valueColumn"]
  GETTABLEKS R7 R0 K16 ["Type"]
  SETTABLEKS R7 R6 K7 ["dataTypeColumn"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K8 ["childPaths"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["expanded"]
  LOADB R7 0
  SETTABLEKS R7 R6 K10 ["textFilteredOut"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["scopeFilteredOut"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K17 ["textMatchRow"]
  MOVE R9 R3
  MOVE R10 R6
  CALL R8 2 1
  NOT R7 R8
  SETTABLEKS R7 R6 K10 ["textFilteredOut"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["isScopeFiltered"]
  MOVE R8 R4
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["scopeFilteredOut"]
  RETURN R6 1

PROTO_2:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["newDummyRow"]
  CALL R4 0 1
  MOVE R5 R0
  LOADK R6 K1 [""]
  MOVE R7 R1
  MOVE R8 R2
  CALL R3 5 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["WatchWindowTableRow"]
  CALL R0 1 1
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R1 K6 ["Mocks"]
  GETTABLEKS R3 R4 K7 ["DebuggerVariable"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R1 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETTABLEKS R6 R1 K8 ["Util"]
  GETTABLEKS R5 R6 K10 ["WatchHelperFunctions"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  DUPCLOSURE R6 K12 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R2
  DUPTABLE R8 K17 [{"fromData", "fromInstance", "dummyRow"}]
  SETTABLEKS R5 R8 K14 ["fromData"]
  SETTABLEKS R6 R8 K15 ["fromInstance"]
  SETTABLEKS R7 R8 K16 ["dummyRow"]
  RETURN R8 1
