PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["deregister"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K1 ["register"]
       12 CALL                             R1 3 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 LOADNIL                          R4
        4 CALL                             R3 1 1
        5 OR                               R4 R1 R3
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K0 ["toString"]
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 3
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R8 0 2
       18 MOVE                             R9 R5
       19 GETTABLEKS                       R10 R4 K1 ["current"]
       21 SETLIST                          R8 R9 2 [1]
       23 CALL                             R6 2 0
       24 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["useEffect"]
       16 GETTABLEKS                       R4 R2 K9 ["useRef"]
       18 GETIMPORT                        R5 K6 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R6 R6 K4 ["Parent"]
       24 GETTABLEKS                       R6 R6 K10 ["useWidgets"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R0 K11 ["Util"]
       31 GETTABLEKS                       R7 R7 K12 ["StudioUri"]
       33 CALL                             R6 1 1
       34 DUPCLOSURE                       R7 K13 [PROTO_2]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R3
       39 RETURN                           R7 1
