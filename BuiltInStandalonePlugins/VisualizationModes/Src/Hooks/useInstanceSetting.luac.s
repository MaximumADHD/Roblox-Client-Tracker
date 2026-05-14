PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R0 R2
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 2
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K1 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 RETURN                           R1 1
       24 GETUPVAL                         R2 2
       25 RETURN                           R2 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFEQ                         R0 R1 ; [+6]
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R1 R2 R3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R1 R0 K0 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 NAMECALL                         R1 R1 K1 ["Connect"]
       20 CALL                             R1 2 1
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 SETTABLE                         R2 R0 R1
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R5 0 3
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 SETLIST                          R5 R6 3 [1]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["useState"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R3
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 4
       45 MOVE                             R9 R0
       46 MOVE                             R10 R1
       47 MOVE                             R11 R4
       48 MOVE                             R12 R5
       49 SETLIST                          R8 R9 4 [1]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       55 NEWCLOSURE                       R7 P3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R8 0 3
       61 MOVE                             R9 R4
       62 MOVE                             R10 R0
       63 MOVE                             R11 R1
       64 SETLIST                          R8 R9 3 [1]
       66 CALL                             R6 2 0
       67 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_6]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
