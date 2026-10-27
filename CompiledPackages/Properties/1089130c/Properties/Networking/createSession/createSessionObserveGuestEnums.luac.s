PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 2
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 SETTABLE                         R2 R4 R0
        9 SETTABLE                         R3 R5 R0
       10 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+15]
        3 LOADNIL                          R3
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["createSignal"]
        7 MOVE                             R7 R1
        8 GETUPVAL                         R8 2
        9 CALL                             R6 2 2
       10 GETUPVAL                         R8 3
       11 GETUPVAL                         R9 0
       12 SETTABLE                         R6 R8 R0
       13 SETTABLE                         R7 R9 R0
       14 MOVE                             R4 R6
       15 MOVE                             R5 R7
       16 MOVE                             R3 R4
       17 MOVE                             R2 R5
       18 MOVE                             R3 R2
       19 MOVE                             R4 R1
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+17]
        3 LOADNIL                          R2
        4 NEWTABLE                         R5 0 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["createSignal"]
        9 MOVE                             R7 R5
       10 GETUPVAL                         R8 2
       11 CALL                             R6 2 2
       12 GETUPVAL                         R8 0
       13 GETUPVAL                         R9 3
       14 SETTABLE                         R6 R8 R0
       15 SETTABLE                         R7 R9 R0
       16 MOVE                             R3 R6
       17 MOVE                             R4 R7
       18 MOVE                             R1 R3
       19 MOVE                             R2 R4
       20 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 DUPTABLE                         R3 K2 [{"onGuestEnumUpdate", "getObserveGuestEnum"}]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K0 ["onGuestEnumUpdate"]
       17 NEWCLOSURE                       R4 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R4 R3 K1 ["getObserveGuestEnum"]
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Signals"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["shallowEqual"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_3]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 RETURN                           R5 1
