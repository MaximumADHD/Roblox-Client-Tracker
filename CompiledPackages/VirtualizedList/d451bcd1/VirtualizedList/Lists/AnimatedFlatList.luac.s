PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K8 [{"listRef", "onSelectedIndexChanged", "initialIndex", "cellRendererKey", "viewOffset", "animated", "data"}]
        7 GETTABLEKS                       R5 R0 K1 ["listRef"]
        9 OR                               R4 R5 R1
       10 SETTABLEKS                       R4 R3 K1 ["listRef"]
       12 GETTABLEKS                       R4 R0 K2 ["onSelectedIndexChanged"]
       14 SETTABLEKS                       R4 R3 K2 ["onSelectedIndexChanged"]
       16 GETTABLEKS                       R4 R0 K9 ["initialScrollIndex"]
       18 SETTABLEKS                       R4 R3 K3 ["initialIndex"]
       20 GETTABLEKS                       R4 R0 K4 ["cellRendererKey"]
       22 SETTABLEKS                       R4 R3 K4 ["cellRendererKey"]
       24 GETTABLEKS                       R4 R0 K5 ["viewOffset"]
       26 SETTABLEKS                       R4 R3 K5 ["viewOffset"]
       28 GETTABLEKS                       R4 R0 K6 ["animated"]
       30 SETTABLEKS                       R4 R3 K6 ["animated"]
       32 GETTABLEKS                       R4 R0 K7 ["data"]
       34 SETTABLEKS                       R4 R3 K7 ["data"]
       36 CALL                             R2 1 2
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K10 ["assign"]
       40 GETIMPORT                        R5 K13 [table.clone]
       42 MOVE                             R6 R0
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K17 [{"viewOffset", "animated", "onSelectedIndexChanged", "ref", "onScrollToIndexFailed", "onSelectionChanged"}]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K18 ["None"]
       48 SETTABLEKS                       R7 R6 K5 ["viewOffset"]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R7 R8 K18 ["None"]
       53 SETTABLEKS                       R7 R6 K6 ["animated"]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K18 ["None"]
       58 SETTABLEKS                       R7 R6 K2 ["onSelectedIndexChanged"]
       60 GETTABLEKS                       R8 R0 K1 ["listRef"]
       62 OR                               R7 R8 R1
       63 SETTABLEKS                       R7 R6 K14 ["ref"]
       65 GETTABLEKS                       R8 R0 K19 ["getItemLayout"]
       67 JUMPIFNOT                        R8 ; [+2]
       68 LOADNIL                          R7
       69 JUMP                             ; [+1]
       70 MOVE                             R7 R3
       71 SETTABLEKS                       R7 R6 K15 ["onScrollToIndexFailed"]
       73 SETTABLEKS                       R2 R6 K16 ["onSelectionChanged"]
       75 CALL                             R4 2 1
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R5 R6 K20 ["createElement"]
       79 GETUPVAL                         R6 3
       80 MOVE                             R7 R4
       81 CALL                             R5 2 -1
       82 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["Object"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R7 R8 K2 ["Parent"]
       27 GETTABLEKS                       R6 R7 K8 ["FlatList"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R8 R9 K2 ["Parent"]
       36 GETTABLEKS                       R7 R8 K9 ["Hooks"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K10 ["useFocusNavigationScrolling"]
       41 DUPCLOSURE                       R8 K11 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 RETURN                           R8 1
