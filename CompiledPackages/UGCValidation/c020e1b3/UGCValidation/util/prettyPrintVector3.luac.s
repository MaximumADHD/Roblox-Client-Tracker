PROTO_0:
        0 ORK                              R2 R1 K0 [2]
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+14]
        4 GETIMPORT                        R3 K3 [string.format]
        6 LOADK                            R4 K4 ["%%.%df"]
        7 MOVE                             R5 R2
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 0
       10 GETIMPORT                        R5 K3 [string.format]
       12 LOADK                            R6 K5 ["%s, %s, %s"]
       13 MOVE                             R7 R3
       14 MOVE                             R8 R3
       15 MOVE                             R9 R3
       16 CALL                             R5 4 1
       17 SETTABLE                         R5 R4 R2
       18 GETIMPORT                        R3 K3 [string.format]
       20 GETUPVAL                         R5 0
       21 GETTABLE                         R4 R5 R2
       22 GETTABLEKS                       R5 R0 K6 ["X"]
       24 GETTABLEKS                       R6 R0 K7 ["Y"]
       26 GETTABLEKS                       R7 R0 K8 ["Z"]
       28 CALL                             R3 4 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
