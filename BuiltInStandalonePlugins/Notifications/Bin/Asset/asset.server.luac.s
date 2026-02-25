PROTO_0:
        0 GETIMPORT                        R1 K1 [plugin]
        2 GETTABLEKS                       R0 R1 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [plugin]
        2 GETTABLEKS                       R0 R1 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["FocusedDataModelSession"]
        5 GETTABLEKS                       R1 R0 K1 ["CurrentDataModelTypeAboutToChange"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K3 ["CurrentDataModelTypeChanged"]
       14 DUPCLOSURE                       R3 K4 [PROTO_2]
       15 NAMECALL                         R1 R1 K2 ["Connect"]
       17 CALL                             R1 2 0
       18 GETIMPORT                        R2 K6 [plugin]
       20 GETTABLEKS                       R1 R2 K7 ["HostDataModelTypeIsCurrent"]
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K4 ["Parent"]
       11 GETTABLEKS                       R0 R1 K4 ["Parent"]
       13 GETIMPORT                        R4 K3 [script]
       15 GETTABLEKS                       R3 R4 K4 ["Parent"]
       17 GETTABLEKS                       R2 R3 K4 ["Parent"]
       19 GETTABLEKS                       R1 R2 K5 ["Common"]
       21 GETIMPORT                        R2 K7 [require]
       23 GETTABLEKS                       R3 R1 K8 ["commonInit"]
       25 CALL                             R2 1 1
       26 MOVE                             R3 R2
       27 CALL                             R3 0 0
       28 GETIMPORT                        R3 K7 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Packages"]
       32 GETTABLEKS                       R4 R5 K10 ["TestLoader"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K11 ["launch"]
       37 LOADK                            R5 K12 ["Notifications"]
       38 GETTABLEKS                       R6 R0 K13 ["Src"]
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R4 R3 K14 ["isCli"]
       43 CALL                             R4 0 1
       44 JUMPIFNOT                        R4 ; [+1]
       45 RETURN                           R0 0
       46 GETIMPORT                        R5 K1 [plugin]
       48 GETTABLEKS                       R4 R5 K15 ["MultipleDocumentInterfaceInstance"]
       50 LOADNIL                          R5
       51 DUPCLOSURE                       R6 K16 [PROTO_0]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          REF R5
       56 MOVE                             R8 R7
       57 CALL                             R8 0 0
       58 CLOSEUPVALS                      R5
       59 RETURN                           R0 0
