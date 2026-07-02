PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["UseParentKey"]
        9 GETUPVAL                         R1 2
       10 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["of"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Element"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+9]
       10 LOADB                            R2 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          REF R2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CLOSEUPVALS                      R2
       16 RETURN                           R3 1
       17 CLOSEUPVALS                      R2
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K3 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFEQKNIL                     R0 ; [+3]
       25 JUMPIFNOTEQKS                    R2 K4 ["boolean"] ; [+3]
       27 GETUPVAL                         R3 2
       28 RETURN                           R3 1
       29 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+6]
       31 GETIMPORT                        R3 K7 [pairs]
       33 MOVE                             R4 R0
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1
       36 GETIMPORT                        R3 K9 [error]
       38 LOADK                            R4 K10 ["Invalid elements"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["boolean"] ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["of"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["Element"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+9]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["UseParentKey"]
       24 JUMPIFNOTEQ                      R1 R2 ; [+2]
       26 RETURN                           R0 1
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 FASTCALL1                        TYPEOF R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K1 [typeof]
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+3]
       36 GETTABLE                         R2 R0 R1
       37 RETURN                           R2 1
       38 GETIMPORT                        R2 K8 [error]
       40 LOADK                            R3 K9 ["Invalid elements"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Type"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Symbol"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 NEWTABLE                         R3 4 0
       22 GETTABLEKS                       R4 R1 K8 ["named"]
       24 LOADK                            R5 K9 ["UseParentKey"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K9 ["UseParentKey"]
       28 DUPCLOSURE                       R4 K10 [PROTO_2]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K11 ["iterateElements"]
       34 DUPCLOSURE                       R4 K12 [PROTO_3]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K13 ["getElementByKey"]
       39 RETURN                           R3 1
