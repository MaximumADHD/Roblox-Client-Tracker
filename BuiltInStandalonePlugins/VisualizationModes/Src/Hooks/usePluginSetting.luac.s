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
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K2 [typeof]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 2
       19 FASTCALL1                        TYPEOF R3 ; [+2]
       20 GETIMPORT                        R2 K2 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQ                      R1 R2 ; [+2]
       25 RETURN                           R0 1
       26 GETUPVAL                         R1 2
       27 RETURN                           R1 1

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
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 2
       10 NAMECALL                         R0 R0 K0 ["SetSetting"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Plugin"]
        3 NAMECALL                         R2 R2 K1 ["use"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 3
       18 MOVE                             R6 R2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 SETLIST                          R5 R6 3 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K4 ["useState"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 2
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R3
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       47 NEWCLOSURE                       R7 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R8 0 3
       53 MOVE                             R9 R4
       54 MOVE                             R10 R2
       55 MOVE                             R11 R0
       56 SETLIST                          R8 R9 3 [1]
       58 CALL                             R6 2 0
       59 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 DUPCLOSURE                       R4 K10 [PROTO_3]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
