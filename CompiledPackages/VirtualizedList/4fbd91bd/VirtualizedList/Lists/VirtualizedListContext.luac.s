PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Provider"]
        8 DUPTABLE                         R4 K5 [{["value"] = }]
        9 MOVE                             R5 R1
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K9 [{[1] = , ["getScrollMetrics"], ["horizontal"], ["getOutermostParentListRef"], ["getNestedChildState"], ["registerAsNestedChild"], ["unregisterAsNestedChild"], ["debugInfo"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["getScrollMetrics"]
        4 SETTABLEKS                       R1 R0 K2 ["getScrollMetrics"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["horizontal"]
        9 SETTABLEKS                       R1 R0 K3 ["horizontal"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["getOutermostParentListRef"]
       14 SETTABLEKS                       R1 R0 K4 ["getOutermostParentListRef"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["getNestedChildState"]
       19 SETTABLEKS                       R1 R0 K5 ["getNestedChildState"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["registerAsNestedChild"]
       24 SETTABLEKS                       R1 R0 K6 ["registerAsNestedChild"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K7 ["unregisterAsNestedChild"]
       29 SETTABLEKS                       R1 R0 K7 ["unregisterAsNestedChild"]
       31 DUPTABLE                         R1 K12 [{"cellKey", "horizontal", "listKey", "parent"}]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K8 ["debugInfo"]
       35 GETTABLEKS                       R2 R2 K0 ["cellKey"]
       37 SETTABLEKS                       R2 R1 K0 ["cellKey"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K8 ["debugInfo"]
       42 GETTABLEKS                       R2 R2 K3 ["horizontal"]
       44 SETTABLEKS                       R2 R1 K3 ["horizontal"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K8 ["debugInfo"]
       49 GETTABLEKS                       R2 R2 K10 ["listKey"]
       51 SETTABLEKS                       R2 R1 K10 ["listKey"]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K8 ["debugInfo"]
       56 GETTABLEKS                       R2 R2 K11 ["parent"]
       58 SETTABLEKS                       R2 R1 K11 ["parent"]
       60 SETTABLEKS                       R1 R0 K8 ["debugInfo"]
       62 RETURN                           R0 1

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
