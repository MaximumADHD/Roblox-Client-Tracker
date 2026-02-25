PROTO_0:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 JUMPIFNOTLT                      R0 R1 ; [+12]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R1 K5 [task.wait]
       15 CALL                             R1 0 0
       16 JUMPBACK                         ; [-17]
       17 GETUPVAL                         R0 3
       18 LOADK                            R1 K6 ["Timeout reached"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 ORK                              R4 R1 K3 [1]
        4 ADD                              R2 R3 R4
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K4 ["new"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K2 [os.time]
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTLT                      R1 R2 ; [+9]
        8 JUMPIF                           R0 ; [+7]
        9 GETIMPORT                        R1 K4 [wait]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 MOVE                             R0 R1
       15 JUMPBACK                         ; [-14]
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R1 2
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 3
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K2 [os.time]
        2 CALL                             R3 0 1
        3 ORK                              R4 R1 K3 [1]
        4 ADD                              R2 R3 R4
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["new"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R3
       12 CAPTURE                          REF R4
       13 CALL                             R5 1 1
       14 GETIMPORT                        R6 K6 [spawn]
       16 NEWCLOSURE                       R7 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          REF R3
       20 CAPTURE                          REF R4
       21 CALL                             R6 1 0
       22 CLOSEUPVALS                      R3
       23 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Util"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K4 ["Parent"]
       15 GETTABLEKS                       R2 R3 K7 ["Promise"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R4 R0 K8 ["SharedFlags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagDevFrameworkPollUntilTaskApi"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 DUPCLOSURE                       R3 K10 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 RETURN                           R3 1
       30 DUPCLOSURE                       R3 K11 [PROTO_5]
       31 CAPTURE                          VAL R1
       32 RETURN                           R3 1
