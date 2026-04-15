PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["id"]
        7 GETTABLEKS                       R2 R0 K2 ["isPresent"]
        9 GETTABLEKS                       R3 R0 K3 ["onExitComplete"]
       11 GETTABLEKS                       R4 R0 K4 ["passThroughData"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R7 0 2
       21 MOVE                             R8 R3
       22 MOVE                             R9 R1
       23 SETLIST                          R7 R8 2 [1]
       25 CALL                             R5 2 1
       26 DUPTABLE                         R6 K6 [{"isPresent", "id", "onExitComplete", "passThroughData"}]
       27 GETUPVAL                         R7 2
       28 MOVE                             R8 R0
       29 CALL                             R7 1 1
       30 SETTABLEKS                       R7 R6 K2 ["isPresent"]
       32 SETTABLEKS                       R1 R6 K1 ["id"]
       34 SETTABLEKS                       R5 R6 K3 ["onExitComplete"]
       36 SETTABLEKS                       R4 R6 K4 ["passThroughData"]
       38 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K6 ["PresenceContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K2 ["Parent"]
       29 GETTABLEKS                       R5 R6 K7 ["PresenceUtils"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K8 ["isPresent"]
       34 DUPCLOSURE                       R6 K9 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
