PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 0
        3 CALL                             R1 2 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ReactFiberLane"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["NoLanes"]
       12 GETTABLEKS                       R2 R0 K7 ["mergeLanes"]
       14 NEWTABLE                         R3 2 0
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R4 R3 K8 ["workInProgressRootSkippedLanes"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K9 ["markSkippedUpdateLanes"]
       25 CLOSEUPVALS                      R1
       26 RETURN                           R3 1
