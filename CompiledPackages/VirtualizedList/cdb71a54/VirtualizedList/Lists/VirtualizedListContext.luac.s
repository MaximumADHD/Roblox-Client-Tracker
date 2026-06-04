PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Provider"]
        8 DUPTABLE                         R4 K4 [{"value"}]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K3 ["value"]
       12 MOVE                             R5 R1
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K8 [{"cellKey", "getScrollMetrics", "horizontal", "getOutermostParentListRef", "getNestedChildState", "registerAsNestedChild", "unregisterAsNestedChild", "debugInfo"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["cellKey"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["getScrollMetrics"]
        7 SETTABLEKS                       R1 R0 K1 ["getScrollMetrics"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["horizontal"]
       12 SETTABLEKS                       R1 R0 K2 ["horizontal"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["getOutermostParentListRef"]
       17 SETTABLEKS                       R1 R0 K3 ["getOutermostParentListRef"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["getNestedChildState"]
       22 SETTABLEKS                       R1 R0 K4 ["getNestedChildState"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K5 ["registerAsNestedChild"]
       27 SETTABLEKS                       R1 R0 K5 ["registerAsNestedChild"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K6 ["unregisterAsNestedChild"]
       32 SETTABLEKS                       R1 R0 K6 ["unregisterAsNestedChild"]
       34 DUPTABLE                         R1 K11 [{"cellKey", "horizontal", "listKey", "parent"}]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K7 ["debugInfo"]
       38 GETTABLEKS                       R2 R2 K0 ["cellKey"]
       40 SETTABLEKS                       R2 R1 K0 ["cellKey"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K7 ["debugInfo"]
       45 GETTABLEKS                       R2 R2 K2 ["horizontal"]
       47 SETTABLEKS                       R2 R1 K2 ["horizontal"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K7 ["debugInfo"]
       52 GETTABLEKS                       R2 R2 K9 ["listKey"]
       54 SETTABLEKS                       R2 R1 K9 ["listKey"]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K7 ["debugInfo"]
       59 GETTABLEKS                       R2 R2 K10 ["parent"]
       61 SETTABLEKS                       R2 R1 K10 ["parent"]
       63 SETTABLEKS                       R1 R0 K7 ["debugInfo"]
       65 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETTABLEKS                       R2 R0 K1 ["value"]
        4 GETUPVAL                         R3 0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R5 0 10
        9 GETTABLEKS                       R6 R2 K2 ["getScrollMetrics"]
       11 GETTABLEKS                       R7 R2 K3 ["horizontal"]
       13 GETTABLEKS                       R8 R2 K4 ["getOutermostParentListRef"]
       15 GETTABLEKS                       R9 R2 K5 ["getNestedChildState"]
       17 GETTABLEKS                       R10 R2 K6 ["registerAsNestedChild"]
       19 GETTABLEKS                       R11 R2 K7 ["unregisterAsNestedChild"]
       21 GETTABLEKS                       R12 R2 K8 ["debugInfo"]
       23 GETTABLEKS                       R12 R12 K9 ["cellKey"]
       25 GETTABLEKS                       R13 R2 K8 ["debugInfo"]
       27 GETTABLEKS                       R13 R13 K3 ["horizontal"]
       29 GETTABLEKS                       R14 R2 K8 ["debugInfo"]
       31 GETTABLEKS                       R14 R14 K10 ["listKey"]
       33 GETTABLEKS                       R15 R2 K8 ["debugInfo"]
       35 GETTABLEKS                       R15 R15 K11 ["parent"]
       37 SETLIST                          R5 R6 10 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K12 ["createElement"]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K13 ["Provider"]
       46 DUPTABLE                         R6 K14 [{"value"}]
       47 SETTABLEKS                       R3 R6 K1 ["value"]
       49 MOVE                             R7 R1
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["cellKey"]
        2 GETTABLEKS                       R2 R0 K1 ["children"]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Provider"]
       13 DUPTABLE                         R6 K5 [{"value"}]
       14 JUMPIFNOTEQKNIL                  R3 ; [+3]
       16 LOADNIL                          R7
       17 JUMP                             ; [+11]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K6 ["assign"]
       21 GETIMPORT                        R8 K9 [table.clone]
       23 MOVE                             R9 R3
       24 CALL                             R8 1 1
       25 DUPTABLE                         R9 K10 [{"cellKey"}]
       26 SETTABLEKS                       R1 R9 K0 ["cellKey"]
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K4 ["value"]
       31 MOVE                             R7 R2
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Object"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["useMemo"]
       23 GETTABLEKS                       R5 R3 K9 ["useContext"]
       25 NEWTABLE                         R6 4 0
       27 GETTABLEKS                       R7 R3 K10 ["createContext"]
       29 LOADNIL                          R8
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K11 ["VirtualizedListContext"]
       33 GETIMPORT                        R8 K13 [_G]
       35 GETTABLEKS                       R8 R8 K14 ["__DEV__"]
       37 JUMPIFNOT                        R8 ; [+3]
       38 LOADK                            R8 K11 ["VirtualizedListContext"]
       39 SETTABLEKS                       R8 R7 K15 ["displayName"]
       41 DUPCLOSURE                       R8 K16 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R8 R6 K17 ["VirtualizedListContextResetter"]
       46 DUPCLOSURE                       R9 K18 [PROTO_2]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 SETTABLEKS                       R9 R6 K19 ["VirtualizedListContextProvider"]
       52 DUPCLOSURE                       R10 K20 [PROTO_3]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R10 R6 K21 ["VirtualizedListCellContextProvider"]
       59 RETURN                           R6 1
