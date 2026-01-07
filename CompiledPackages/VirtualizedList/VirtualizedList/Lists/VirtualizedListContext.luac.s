PROTO_0:
  GETTABLEKS R1 R0 K0 ["children"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Provider"]
  DUPTABLE R4 K4 [{"value"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["value"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  DUPTABLE R0 K8 [{"cellKey", "getScrollMetrics", "horizontal", "getOutermostParentListRef", "getNestedChildState", "registerAsNestedChild", "unregisterAsNestedChild", "debugInfo"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["cellKey"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getScrollMetrics"]
  SETTABLEKS R1 R0 K1 ["getScrollMetrics"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["horizontal"]
  SETTABLEKS R1 R0 K2 ["horizontal"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["getOutermostParentListRef"]
  SETTABLEKS R1 R0 K3 ["getOutermostParentListRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["getNestedChildState"]
  SETTABLEKS R1 R0 K4 ["getNestedChildState"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["registerAsNestedChild"]
  SETTABLEKS R1 R0 K5 ["registerAsNestedChild"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["unregisterAsNestedChild"]
  SETTABLEKS R1 R0 K6 ["unregisterAsNestedChild"]
  DUPTABLE R1 K11 [{"cellKey", "horizontal", "listKey", "parent"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["debugInfo"]
  GETTABLEKS R2 R3 K0 ["cellKey"]
  SETTABLEKS R2 R1 K0 ["cellKey"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["debugInfo"]
  GETTABLEKS R2 R3 K2 ["horizontal"]
  SETTABLEKS R2 R1 K2 ["horizontal"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["debugInfo"]
  GETTABLEKS R2 R3 K9 ["listKey"]
  SETTABLEKS R2 R1 K9 ["listKey"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["debugInfo"]
  GETTABLEKS R2 R3 K10 ["parent"]
  SETTABLEKS R2 R1 K10 ["parent"]
  SETTABLEKS R1 R0 K7 ["debugInfo"]
  RETURN R0 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["children"]
  GETTABLEKS R2 R0 K1 ["value"]
  GETUPVAL R3 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  NEWTABLE R5 0 10
  GETTABLEKS R6 R2 K2 ["getScrollMetrics"]
  GETTABLEKS R7 R2 K3 ["horizontal"]
  GETTABLEKS R8 R2 K4 ["getOutermostParentListRef"]
  GETTABLEKS R9 R2 K5 ["getNestedChildState"]
  GETTABLEKS R10 R2 K6 ["registerAsNestedChild"]
  GETTABLEKS R11 R2 K7 ["unregisterAsNestedChild"]
  GETTABLEKS R13 R2 K8 ["debugInfo"]
  GETTABLEKS R12 R13 K9 ["cellKey"]
  GETTABLEKS R14 R2 K8 ["debugInfo"]
  GETTABLEKS R13 R14 K3 ["horizontal"]
  GETTABLEKS R15 R2 K8 ["debugInfo"]
  GETTABLEKS R14 R15 K10 ["listKey"]
  GETTABLEKS R16 R2 K8 ["debugInfo"]
  GETTABLEKS R15 R16 K11 ["parent"]
  SETLIST R5 R6 10 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["Provider"]
  DUPTABLE R6 K14 [{"value"}]
  SETTABLEKS R3 R6 K1 ["value"]
  MOVE R7 R1
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["cellKey"]
  GETTABLEKS R2 R0 K1 ["children"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Provider"]
  DUPTABLE R6 K5 [{"value"}]
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R7
  JUMP [+11]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["assign"]
  GETIMPORT R8 K9 [table.clone]
  MOVE R9 R3
  CALL R8 1 1
  DUPTABLE R9 K10 [{"cellKey"}]
  SETTABLEKS R1 R9 K0 ["cellKey"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["value"]
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Object"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["useMemo"]
  GETTABLEKS R5 R3 K9 ["useContext"]
  NEWTABLE R6 4 0
  GETTABLEKS R7 R3 K10 ["createContext"]
  LOADNIL R8
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["VirtualizedListContext"]
  GETIMPORT R9 K13 [_G]
  GETTABLEKS R8 R9 K14 ["__DEV__"]
  JUMPIFNOT R8 [+3]
  LOADK R8 K11 ["VirtualizedListContext"]
  SETTABLEKS R8 R7 K15 ["displayName"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R8 R6 K17 ["VirtualizedListContextResetter"]
  DUPCLOSURE R9 K18 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R9 R6 K19 ["VirtualizedListContextProvider"]
  DUPCLOSURE R10 K20 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R10 R6 K21 ["VirtualizedListCellContextProvider"]
  RETURN R6 1
