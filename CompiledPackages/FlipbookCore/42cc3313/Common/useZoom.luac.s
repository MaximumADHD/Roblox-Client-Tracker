PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [0.25]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 SUBK                             R1 R2 K0 [0.25]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R0
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 0
       42 DUPTABLE                         R5 K6 [{"value", "zoomIn", "zoomOut"}]
       43 SETTABLEKS                       R1 R5 K3 ["value"]
       45 SETTABLEKS                       R3 R5 K4 ["zoomIn"]
       47 SETTABLEKS                       R4 R5 K5 ["zoomOut"]
       49 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
