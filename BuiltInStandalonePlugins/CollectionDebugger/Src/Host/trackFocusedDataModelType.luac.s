PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CurrentDataModelType"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        8 GETTABLEKS                       R1 R1 K1 ["Name"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETTABLEKS                       R3 R0 K1 ["CurrentDataModelType"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETTABLEKS                       R2 R0 K1 ["CurrentDataModelType"]
       15 GETTABLEKS                       R2 R2 K2 ["Name"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 CALL                             R1 1 0
       20 JUMPIFNOT                        R0 ; [+9]
       21 GETTABLEKS                       R1 R0 K3 ["CurrentDataModelTypeChanged"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R1 R1 K4 ["Connect"]
       28 CALL                             R1 2 1
       29 SETUPVAL                         R1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 JUMPIFNOT                        R0 ; [+14]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R2 R0 K1 ["FocusedDataModelSession"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K2 ["DataModelSessionStarted"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K3 ["Connect"]
       20 CALL                             R1 2 1
       21 SETUPVAL                         R1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R1 2
       26 NAMECALL                         R1 R1 K0 ["Disconnect"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 2
       31 GETUPVAL                         R1 3
       32 LOADNIL                          R2
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 NAMECALL                         R5 R4 K0 ["Disconnect"]
       18 CALL                             R5 1 0
       19 FORGLOOP                         R0 2 ; [-4]
       21 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R3
        5 CAPTURE                          VAL R1
        6 LOADNIL                          R5
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          REF R5
        9 CAPTURE                          VAL R4
       10 CAPTURE                          REF R3
       11 CAPTURE                          VAL R1
       12 MOVE                             R7 R6
       13 GETTABLEKS                       R8 R0 K0 ["MultipleDocumentInterfaceInstance"]
       15 CALL                             R7 1 0
       16 MOVE                             R8 R2
       17 LOADK                            R11 K0 ["MultipleDocumentInterfaceInstance"]
       18 NAMECALL                         R9 R0 K1 ["GetPropertyChangedSignal"]
       20 CALL                             R9 2 1
       21 NEWCLOSURE                       R11 P2
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R9 R9 K2 ["Connect"]
       26 CALL                             R9 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R7 K5 [table.insert]
       30 CALL                             R7 -1 0
       31 NEWCLOSURE                       R7 P3
       32 CAPTURE                          REF R3
       33 CAPTURE                          REF R5
       34 CAPTURE                          VAL R2
       35 CLOSEUPVALS                      R3
       36 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_6]
        2 RETURN                           R0 1
