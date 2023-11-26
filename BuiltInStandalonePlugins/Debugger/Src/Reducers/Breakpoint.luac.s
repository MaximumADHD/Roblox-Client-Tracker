PROTO_0:
  GETTABLEKS R2 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  JUMPIFNOT R2 [+22]
  GETTABLEKS R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  GETTABLEKS R4 R1 K1 ["debuggerConnectionId"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+16]
  GETTABLEKS R4 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  GETTABLEKS R5 R1 K1 ["debuggerConnectionId"]
  GETTABLE R3 R4 R5
  GETTABLEKS R5 R1 K2 ["metaBreakpoint"]
  GETTABLEKS R4 R5 K3 ["id"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+5]
  LOADB R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K5 [assert]
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Dictionary"]
  GETTABLEKS R2 R3 K7 ["join"]
  GETTABLEKS R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K1 ["debuggerConnectionId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Dictionary"]
  GETTABLEKS R6 R7 K7 ["join"]
  GETTABLEKS R8 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  JUMPIFNOT R8 [+6]
  GETTABLEKS R8 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  GETTABLEKS R9 R1 K1 ["debuggerConnectionId"]
  GETTABLE R7 R8 R9
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  NEWTABLE R8 1 0
  GETTABLEKS R10 R1 K2 ["metaBreakpoint"]
  GETTABLEKS R9 R10 K3 ["id"]
  GETTABLEKS R11 R1 K2 ["metaBreakpoint"]
  GETTABLEKS R10 R11 K3 ["id"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Dictionary"]
  GETTABLEKS R3 R4 K7 ["join"]
  GETTABLEKS R4 R0 K8 ["MetaBreakpoints"]
  NEWTABLE R5 1 0
  GETTABLEKS R7 R1 K2 ["metaBreakpoint"]
  GETTABLEKS R6 R7 K3 ["id"]
  GETTABLEKS R7 R1 K2 ["metaBreakpoint"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Dictionary"]
  GETTABLEKS R4 R5 K7 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K9 [{"BreakpointIdsInDebuggerConnection"}]
  SETTABLEKS R2 R6 K0 ["BreakpointIdsInDebuggerConnection"]
  DUPTABLE R7 K10 [{"MetaBreakpoints"}]
  SETTABLEKS R3 R7 K8 ["MetaBreakpoints"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETTABLEKS R4 R0 K3 ["MetaBreakpoints"]
  GETTABLEKS R6 R1 K4 ["metaBreakpoint"]
  GETTABLEKS R5 R6 K5 ["id"]
  GETTABLE R3 R4 R5
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Dictionary"]
  GETTABLEKS R2 R3 K7 ["join"]
  GETTABLEKS R3 R0 K3 ["MetaBreakpoints"]
  NEWTABLE R4 1 0
  GETTABLEKS R6 R1 K4 ["metaBreakpoint"]
  GETTABLEKS R5 R6 K5 ["id"]
  GETTABLEKS R6 R1 K4 ["metaBreakpoint"]
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Dictionary"]
  GETTABLEKS R3 R4 K7 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K8 [{"MetaBreakpoints"}]
  SETTABLEKS R2 R5 K3 ["MetaBreakpoints"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"SortDirection", "ColumnIndex"}]
  GETTABLEKS R5 R1 K5 ["sortDirection"]
  SETTABLEKS R5 R4 K2 ["SortDirection"]
  GETTABLEKS R5 R1 K6 ["columnIndex"]
  SETTABLEKS R5 R4 K3 ["ColumnIndex"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["MetaBreakpoints"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R3 R0 K0 ["MetaBreakpoints"]
  GETTABLEKS R4 R1 K1 ["metaBreakpointId"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+5]
  LOADB R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K3 [assert]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["MetaBreakpoints"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K1 ["metaBreakpointId"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K4 ["BreakpointIdsInDebuggerConnection"]
  CALL R3 1 1
  GETIMPORT R4 K6 [pairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R1 K1 ["metaBreakpointId"]
  LOADNIL R10
  SETTABLE R10 R8 R9
  FORGLOOP R4 2 [-5]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["Dictionary"]
  GETTABLEKS R4 R5 K8 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K9 [{"BreakpointIdsInDebuggerConnection"}]
  SETTABLEKS R3 R6 K4 ["BreakpointIdsInDebuggerConnection"]
  DUPTABLE R7 K10 [{"MetaBreakpoints"}]
  SETTABLEKS R2 R7 K0 ["MetaBreakpoints"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"listOfEnabledColumns"}]
  GETTABLEKS R5 R1 K2 ["listOfEnabledColumns"]
  SETTABLEKS R5 R4 K2 ["listOfEnabledColumns"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K10 ["Models"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R3 K11 ["BreakpointsWindow"]
  GETTABLEKS R6 R7 K12 ["AddBreakpoint"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R3 K11 ["BreakpointsWindow"]
  GETTABLEKS R7 R8 K13 ["DeleteBreakpoint"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R3 K11 ["BreakpointsWindow"]
  GETTABLEKS R8 R9 K14 ["ModifyBreakpoint"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R3 K11 ["BreakpointsWindow"]
  GETTABLEKS R9 R10 K15 ["SetBreakpointSortState"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R3 K11 ["BreakpointsWindow"]
  GETTABLEKS R10 R11 K16 ["BreakpointColumnFilter"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R4 K17 ["MetaBreakpoint"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K5 ["Packages"]
  GETTABLEKS R12 R13 K18 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K19 ["Util"]
  GETTABLEKS R13 R12 K20 ["deepCopy"]
  DUPTABLE R14 K26 [{"BreakpointIdsInDebuggerConnection", "MetaBreakpoints", "SortDirection", "ColumnIndex", "listOfEnabledColumns"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K21 ["BreakpointIdsInDebuggerConnection"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K22 ["MetaBreakpoints"]
  LOADNIL R15
  SETTABLEKS R15 R14 K23 ["SortDirection"]
  LOADNIL R15
  SETTABLEKS R15 R14 K24 ["ColumnIndex"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K25 ["listOfEnabledColumns"]
  GETTABLEKS R15 R1 K27 ["createReducer"]
  MOVE R16 R14
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K28 ["name"]
  DUPCLOSURE R19 K29 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R7 K28 ["name"]
  DUPCLOSURE R19 K30 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R8 K28 ["name"]
  DUPCLOSURE R19 K31 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K28 ["name"]
  DUPCLOSURE R19 K32 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R2
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R9 K28 ["name"]
  DUPCLOSURE R19 K33 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R19 R17 R18
  CALL R15 2 -1
  RETURN R15 -1
