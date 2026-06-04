PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionService"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_7]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R5 0 1
       24 GETTABLEKS                       R6 R0 K4 ["selectionService"]
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R5 0 1
       37 MOVE                             R6 R1
       38 SETLIST                          R5 R6 1 [1]
       40 CALL                             R3 2 1
       41 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["SelectionServiceContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 GETTABLEKS                       R5 R5 K12 ["SignalsInstanceUtils"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_9]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
