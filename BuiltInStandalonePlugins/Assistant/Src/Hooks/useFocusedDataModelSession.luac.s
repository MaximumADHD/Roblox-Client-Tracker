PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["DataModelSessionStarted"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["DataModelSessionEnded"]
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 GETTABLEKS                       R2 R0 K3 ["MultipleDocumentInterfaceInstance"]
       12 CALL                             R1 1 2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["useState"]
       16 LOADNIL                          R4
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K4 ["useEventConnection"]
       21 LOADK                            R8 K3 ["MultipleDocumentInterfaceInstance"]
       22 NAMECALL                         R6 R0 K5 ["GetPropertyChangedSignal"]
       24 CALL                             R6 2 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R8 0 0
       30 CALL                             R5 3 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 1
       39 MOVE                             R8 R1
       40 SETLIST                          R7 R8 1 [1]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       46 NEWCLOSURE                       R6 P2
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R7 0 1
       50 MOVE                             R8 R1
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 MOVE                             R6 R3
       55 MOVE                             R7 R5
       56 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Plugin"]
       32 DUPCLOSURE                       R6 K12 [PROTO_5]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R6 1
