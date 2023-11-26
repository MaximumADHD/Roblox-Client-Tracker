PROTO_0:
  DUPTABLE R1 K9 [{"expressionColumn", "pathColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  SETTABLEKS R0 R1 K0 ["expressionColumn"]
  SETTABLEKS R0 R1 K1 ["pathColumn"]
  LOADK R2 K10 [""]
  SETTABLEKS R2 R1 K2 ["scopeColumn"]
  LOADK R2 K10 [""]
  SETTABLEKS R2 R1 K3 ["valueColumn"]
  LOADK R2 K10 [""]
  SETTABLEKS R2 R1 K4 ["dataTypeColumn"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["childPaths"]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["expanded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["textFilteredOut"]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["scopeFilteredOut"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K9 [{"expressionColumn", "pathColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  GETTABLEKS R2 R0 K10 ["expression"]
  SETTABLEKS R2 R1 K0 ["expressionColumn"]
  GETTABLEKS R2 R0 K11 ["path"]
  SETTABLEKS R2 R1 K1 ["pathColumn"]
  GETTABLEKS R2 R0 K12 ["scope"]
  SETTABLEKS R2 R1 K2 ["scopeColumn"]
  GETTABLEKS R2 R0 K13 ["value"]
  SETTABLEKS R2 R1 K3 ["valueColumn"]
  GETTABLEKS R2 R0 K14 ["dataType"]
  SETTABLEKS R2 R1 K4 ["dataTypeColumn"]
  GETTABLEKS R2 R0 K5 ["childPaths"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["childPaths"]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["expanded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["textFilteredOut"]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["scopeFilteredOut"]
  RETURN R1 1

PROTO_2:
  DUPTABLE R2 K10 [{"expressionColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  SETTABLEKS R1 R2 K0 ["expressionColumn"]
  SETTABLEKS R1 R2 K1 ["pathColumn"]
  GETTABLEKS R3 R0 K11 ["VariableId"]
  SETTABLEKS R3 R2 K2 ["idColumn"]
  LOADK R3 K12 [""]
  SETTABLEKS R3 R2 K3 ["scopeColumn"]
  GETTABLEKS R3 R0 K13 ["Value"]
  SETTABLEKS R3 R2 K4 ["valueColumn"]
  GETTABLEKS R3 R0 K14 ["Type"]
  SETTABLEKS R3 R2 K5 ["dataTypeColumn"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["childPaths"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["expanded"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["textFilteredOut"]
  LOADB R3 0
  SETTABLEKS R3 R2 K9 ["scopeFilteredOut"]
  RETURN R2 1

PROTO_3:
  MOVE R3 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["SeparationToken"]
  CONCAT R2 R3 R4
  DUPTABLE R3 K11 [{"expressionColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
  GETTABLEKS R4 R0 K12 ["Name"]
  SETTABLEKS R4 R3 K1 ["expressionColumn"]
  MOVE R5 R2
  GETTABLEKS R6 R0 K12 ["Name"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K2 ["pathColumn"]
  GETTABLEKS R4 R0 K13 ["VariableId"]
  SETTABLEKS R4 R3 K3 ["idColumn"]
  LOADK R4 K14 [""]
  SETTABLEKS R4 R3 K4 ["scopeColumn"]
  GETTABLEKS R4 R0 K15 ["Value"]
  SETTABLEKS R4 R3 K5 ["valueColumn"]
  GETTABLEKS R4 R0 K16 ["Type"]
  SETTABLEKS R4 R3 K6 ["dataTypeColumn"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["childPaths"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["expanded"]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["textFilteredOut"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["scopeFilteredOut"]
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["newDummyRow"]
  CALL R2 0 1
  GETTABLEKS R3 R0 K1 ["pathColumn"]
  CALL R1 2 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Mocks"]
  GETTABLEKS R2 R3 K6 ["DebuggerVariable"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K9 ["WatchWindowTableRow"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  DUPCLOSURE R5 K11 [PROTO_1]
  DUPCLOSURE R6 K12 [PROTO_2]
  DUPCLOSURE R7 K13 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R8 K14 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R1
  DUPTABLE R9 K20 [{"fromData", "fromExpression", "fromInstance", "fromChildInstance", "dummyRow"}]
  SETTABLEKS R5 R9 K15 ["fromData"]
  SETTABLEKS R4 R9 K16 ["fromExpression"]
  SETTABLEKS R6 R9 K17 ["fromInstance"]
  SETTABLEKS R7 R9 K18 ["fromChildInstance"]
  SETTABLEKS R8 R9 K19 ["dummyRow"]
  RETURN R9 1
