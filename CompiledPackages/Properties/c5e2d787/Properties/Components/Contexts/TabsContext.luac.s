PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K5 [{[1] = "All", ["type"] = "Properties", ["propertiesInOrder"]}]
        3 SETTABLEKS                       R0 R2 K4 ["propertiesInOrder"]
        5 SETLIST                          R1 R2 1 [1]
        7 RETURN                           R1 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["id"]
        3 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETTABLEKS                       R1 R1 K0 ["categorizeProperties"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["tabs"]
        8 DUPCLOSURE                       R2 K3 [PROTO_2]
        9 CALL                             R0 2 1
       10 DUPTABLE                         R1 K5 [{"tabs", "getPropertyCategorizationForTab"}]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["tabs"]
       14 SETTABLEKS                       R2 R1 K2 ["tabs"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K4 ["getPropertyCategorizationForTab"]
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["tabs"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["Provider"]
       17 DUPTABLE                         R4 K4 [{"value"}]
       18 SETTABLEKS                       R1 R4 K3 ["value"]
       20 GETTABLEKS                       R5 R0 K5 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K4 ["Parent"]
       23 GETTABLEKS                       R5 R5 K9 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K10 ["createElement"]
       28 DUPTABLE                         R6 K13 [{"tabs", "getPropertyCategorizationForTab"}]
       29 NEWTABLE                         R7 0 0
       31 SETTABLEKS                       R7 R6 K11 ["tabs"]
       33 DUPCLOSURE                       R7 K14 [PROTO_1]
       34 SETTABLEKS                       R7 R6 K12 ["getPropertyCategorizationForTab"]
       36 GETTABLEKS                       R7 R4 K15 ["createContext"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 DUPCLOSURE                       R8 K16 [PROTO_5]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 DUPTABLE                         R9 K19 [{"Context", "Provider"}]
       46 SETTABLEKS                       R7 R9 K17 ["Context"]
       48 SETTABLEKS                       R8 R9 K18 ["Provider"]
       50 RETURN                           R9 1
