PROTO_0:
        0 DUPTABLE                         R0 K2 [{"menuVisible", "setMenuVisible"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["menuVisible"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setMenuVisible"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["createElement"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K3 ["Provider"]
       24 DUPTABLE                         R6 K5 [{"value"}]
       25 SETTABLEKS                       R3 R6 K4 ["value"]
       27 GETTABLEKS                       R7 R0 K6 ["children"]
       29 CALL                             R4 3 -1
       30 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K2 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["MenuVisibleContext"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K8 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
