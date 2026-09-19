PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R0 R0 K0 ["GetSetting"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+11]
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K2 [typeof]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
       22 GETUPVAL                         R1 3
       23 MOVE                             R2 R0
       24 CALL                             R1 1 1
       25 MOVE                             R0 R1
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K2 [typeof]
       30 CALL                             R1 1 1
       31 GETUPVAL                         R3 2
       32 FASTCALL1                        TYPEOF R3 ; [+2]
       33 GETIMPORT                        R2 K2 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQ                      R1 R2 ; [+2]
       38 RETURN                           R0 1
       39 GETUPVAL                         R1 2
       40 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 3
       10 JUMPIFEQ                         R0 R1 ; [+4]
       12 GETUPVAL                         R1 4
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 LOADNIL                          R0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R1 1 1
       13 MOVE                             R0 R1
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R2 3
       16 FASTCALL1                        TYPE R2 ; [+2]
       17 GETIMPORT                        R1 K1 [type]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+3]
       22 GETUPVAL                         R0 3
       23 JUMP                             ; [+4]
       24 GETIMPORT                        R1 K4 [error]
       26 LOADK                            R2 K5 ["Bad state, can't serialize to string"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 1
       29 GETUPVAL                         R3 0
       30 MOVE                             R4 R0
       31 NAMECALL                         R1 R1 K6 ["SetSetting"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Plugin"]
        3 NAMECALL                         R4 R4 K1 ["use"]
        5 CALL                             R4 1 1
        6 NAMECALL                         R4 R4 K2 ["get"]
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R7 0 3
       19 MOVE                             R8 R4
       20 MOVE                             R9 R0
       21 MOVE                             R10 R1
       22 SETLIST                          R7 R8 3 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K4 ["useState"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 2
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R5
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 0
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R10 0 3
       55 MOVE                             R11 R6
       56 MOVE                             R12 R4
       57 MOVE                             R13 R0
       58 SETLIST                          R10 R11 3 [1]
       60 CALL                             R8 2 0
       61 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 DUPCLOSURE                       R4 K10 [PROTO_3]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
