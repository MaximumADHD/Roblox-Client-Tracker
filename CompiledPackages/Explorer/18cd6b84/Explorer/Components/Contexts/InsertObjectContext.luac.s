PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 DUPTABLE                         R4 K4 [{"insertObjectOpenFor", "setInsertObjectOpenFor"}]
       14 SETTABLEKS                       R1 R4 K2 ["insertObjectOpenFor"]
       16 SETTABLEKS                       R3 R4 K3 ["setInsertObjectOpenFor"]
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K5 ["Provider"]
       22 DUPTABLE                         R7 K7 [{"value"}]
       23 SETTABLEKS                       R4 R7 K6 ["value"]
       25 GETTABLEKS                       R8 R0 K8 ["children"]
       27 CALL                             R5 3 -1
       28 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPTABLE                         R3 K12 [{["insertObjectOpenFor"] = , ["setInsertObjectOpenFor"]}]
       17 DUPCLOSURE                       R4 K13 [PROTO_1]
       18 SETTABLEKS                       R4 R3 K11 ["setInsertObjectOpenFor"]
       20 GETTABLEKS                       R4 R1 K14 ["createContext"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K15 [PROTO_5]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 DUPTABLE                         R6 K18 [{"Context", "Provider"}]
       29 SETTABLEKS                       R4 R6 K16 ["Context"]
       31 SETTABLEKS                       R5 R6 K17 ["Provider"]
       33 RETURN                           R6 1
