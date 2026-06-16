PROTO_0:
        0 GETIMPORT                        R0 K2 [string.rep]
        2 LOADK                            R1 K3 ["  "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [print]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [print]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [print]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [warn]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [warn]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [print]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 GETUPVAL                         R3 1
       32 ADDK                             R2 R3 K10 [1]
       33 SETUPVAL                         R2 1
       34 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        9 GETIMPORT                        R2 K4 [string.format]
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K6 [print]
       22 GETIMPORT                        R6 K8 [string.rep]
       24 LOADK                            R7 K9 ["  "]
       25 GETUPVAL                         R8 1
       26 CALL                             R6 2 1
       27 MOVE                             R4 R6
       28 MOVE                             R5 R1
       29 CONCAT                           R3 R4 R5
       30 CALL                             R2 1 0
       31 GETUPVAL                         R3 1
       32 ADDK                             R2 R3 K10 [1]
       33 SETUPVAL                         R2 1
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 SUBK                             R0 R1 K0 [1]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 8 0
        2 LOADN                            R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R3 R0 K0 ["log"]
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R1
       13 SETTABLEKS                       R3 R0 K1 ["debug"]
       15 NEWCLOSURE                       R3 P3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R3 R0 K2 ["info"]
       20 NEWCLOSURE                       R3 P4
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          REF R1
       23 SETTABLEKS                       R3 R0 K3 ["warn"]
       25 NEWCLOSURE                       R3 P5
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          REF R1
       28 SETTABLEKS                       R3 R0 K4 ["error"]
       30 NEWCLOSURE                       R3 P6
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          REF R1
       33 SETTABLEKS                       R3 R0 K5 ["group"]
       35 NEWCLOSURE                       R3 P7
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          REF R1
       38 SETTABLEKS                       R3 R0 K6 ["groupCollapsed"]
       40 NEWCLOSURE                       R3 P8
       41 CAPTURE                          REF R1
       42 SETTABLEKS                       R3 R0 K7 ["groupEnd"]
       44 CLOSEUPVALS                      R1
       45 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Collections"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K6 ["inspect"]
       14 DUPCLOSURE                       R3 K7 [PROTO_9]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
