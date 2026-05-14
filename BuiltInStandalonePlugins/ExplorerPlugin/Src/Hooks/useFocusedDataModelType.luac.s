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
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["DataModelSessionStarted"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R0 R0 K2 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["CurrentDataModelTypeChanged"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R0 R0 K2 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_7:
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
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K2 ["useState"]
       21 LOADNIL                          R6
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K4 ["useEventConnection"]
       26 LOADK                            R10 K3 ["MultipleDocumentInterfaceInstance"]
       27 NAMECALL                         R8 R0 K5 ["GetPropertyChangedSignal"]
       29 CALL                             R8 2 1
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R10 0 0
       35 CALL                             R7 3 0
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R1
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 0
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       51 NEWCLOSURE                       R8 P2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R9 0 1
       56 MOVE                             R10 R3
       57 SETLIST                          R9 R10 1 [1]
       59 CALL                             R7 2 0
       60 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
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
       30 GETTABLEKS                       R4 R4 K11 ["Plugin"]
       32 DUPCLOSURE                       R5 K12 [PROTO_7]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
