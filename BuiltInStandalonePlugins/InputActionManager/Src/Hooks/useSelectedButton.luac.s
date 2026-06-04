PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["onSelectionChanged"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
       13 DUPCLOSURE                       R0 K1 [PROTO_2]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R0
       17 MOVE                             R7 R2
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelReference"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_4]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
