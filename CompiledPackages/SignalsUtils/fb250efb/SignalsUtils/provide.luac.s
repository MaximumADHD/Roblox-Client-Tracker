PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 JUMPIF                           R0 ; [+4]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 2
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 2
        7 LOADN                            R1 0
        8 JUMPIFLT                         R1 R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 LOADN                            R1 0
        5 JUMPIFLT                         R1 R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 RETURN                           R0 0
       14 LOADNIL                          R0
       15 GETIMPORT                        R1 K3 [task.defer]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          REF R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CALL                             R1 1 1
       23 MOVE                             R0 R1
       24 SETUPVAL                         R0 2
       25 CLOSEUPVALS                      R0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K3 [task.cancel]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R1 2
       12 JUMPIF                           R1 ; [+4]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 1
       16 SETUPVAL                         R1 2
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K4 ["onDisposed"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 6
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 7
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADN                            R6 0
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          REF R6
       10 CAPTURE                          REF R5
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R3
       14 NEWCLOSURE                       R8 P1
       15 CAPTURE                          REF R6
       16 CAPTURE                          REF R4
       17 CAPTURE                          REF R5
       18 GETUPVAL                         R9 1
       19 NEWCLOSURE                       R10 P2
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R5
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R8
       27 CAPTURE                          VAL R2
       28 CALL                             R9 1 -1
       29 CLOSEUPVALS                      R4
       30 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SignalsUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SignalsExperimental"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Experimental"]
       25 GETTABLEKS                       R4 R4 K10 ["createComputed"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_4]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 RETURN                           R4 1
