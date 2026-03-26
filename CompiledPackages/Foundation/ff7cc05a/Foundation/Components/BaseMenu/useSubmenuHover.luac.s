PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 MOVE                             R3 R1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R0 R5
        7 JUMPIFNOT                        R6 ; [+2]
        8 GETTABLE                         R6 R0 R5
        9 SETTABLE                         R6 R2 R5
       10 FORNLOOP                         R3
       11 RETURN                           R2 1

PROTO_1:
        0 SUBK                             R4 R1 K0 [1]
        1 NEWTABLE                         R5 0 0
        3 LOADN                            R8 1
        4 MOVE                             R6 R4
        5 LOADN                            R7 1
        6 FORNPREP                         R6
        7 GETTABLE                         R9 R0 R8
        8 JUMPIFNOT                        R9 ; [+2]
        9 GETTABLE                         R9 R0 R8
       10 SETTABLE                         R9 R5 R8
       11 FORNLOOP                         R6
       12 MOVE                             R3 R5
       13 SETTABLE                         R2 R3 R1
       14 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K0 ["current"]
       17 JUMPIFNOT                        R0 ; [+10]
       18 GETIMPORT                        R0 K3 [task.cancel]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["current"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 1
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["current"]
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 SUBK                             R5 R2 K0 [1]
        3 NEWTABLE                         R6 0 0
        5 LOADN                            R9 1
        6 MOVE                             R7 R5
        7 LOADN                            R8 1
        8 FORNPREP                         R7
        9 GETTABLE                         R10 R0 R9
       10 JUMPIFNOT                        R10 ; [+2]
       11 GETTABLE                         R10 R0 R9
       12 SETTABLE                         R10 R6 R9
       13 FORNLOOP                         R7
       14 MOVE                             R4 R6
       15 SETTABLE                         R3 R4 R2
       16 MOVE                             R1 R4
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 SUBK                             R5 R2 K0 [1]
        3 NEWTABLE                         R6 0 0
        5 LOADN                            R9 1
        6 MOVE                             R7 R5
        7 LOADN                            R8 1
        8 FORNPREP                         R7
        9 GETTABLE                         R10 R0 R9
       10 JUMPIFNOT                        R10 ; [+2]
       11 GETTABLE                         R10 R0 R9
       12 SETTABLE                         R10 R6 R9
       13 FORNLOOP                         R7
       14 MOVE                             R4 R6
       15 SETTABLE                         R3 R4 R2
       16 MOVE                             R1 R4
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 3
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["current"]
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R0 0
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R3 2
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 3
       17 GETIMPORT                        R4 K3 [task.delay]
       19 GETUPVAL                         R5 4
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K0 ["current"]
       28 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLT                      R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 GETUPVAL                         R3 0
        6 SUBK                             R2 R3 K0 [1]
        7 NEWTABLE                         R3 0 0
        9 LOADN                            R6 1
       10 MOVE                             R4 R2
       11 LOADN                            R5 1
       12 FORNPREP                         R4
       13 GETTABLE                         R7 R0 R6
       14 JUMPIFNOT                        R7 ; [+2]
       15 GETTABLE                         R7 R0 R6
       16 SETTABLE                         R7 R3 R6
       17 FORNLOOP                         R4
       18 MOVE                             R1 R3
       19 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["current"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTLT                      R1 R0 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETIMPORT                        R2 K3 [task.delay]
       12 GETUPVAL                         R3 3
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K0 ["current"]
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K3 [task.cancel]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K0 ["current"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Time"]
        4 GETTABLEKS                       R1 R2 K1 ["Time_100"]
        6 GETTABLEKS                       R3 R0 K0 ["Time"]
        8 GETTABLEKS                       R2 R3 K2 ["Time_300"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["useState"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K4 ["useRef"]
       19 NEWTABLE                         R6 0 0
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K4 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K4 ["useRef"]
       30 LOADNIL                          R8
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R3 R5 K5 ["current"]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R11 0 2
       54 MOVE                             R12 R8
       55 MOVE                             R13 R1
       56 SETLIST                          R11 R12 2 [1]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       62 NEWCLOSURE                       R11 P2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 NEWTABLE                         R12 0 2
       70 MOVE                             R13 R8
       71 MOVE                             R14 R2
       72 SETLIST                          R12 R13 2 [1]
       74 CALL                             R10 2 1
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       78 NEWCLOSURE                       R12 P3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 NEWTABLE                         R13 0 1
       83 MOVE                             R14 R8
       84 SETLIST                          R13 R14 1 [1]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R12 R13 K7 ["useEffect"]
       90 NEWCLOSURE                       R13 P4
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 NEWTABLE                         R14 0 0
       95 CALL                             R12 2 0
       96 DUPTABLE                         R12 K12 [{"openPath", "openAtDepth", "closeAtDepth", "reset"}]
       97 SETTABLEKS                       R3 R12 K8 ["openPath"]
       99 SETTABLEKS                       R9 R12 K9 ["openAtDepth"]
      101 SETTABLEKS                       R10 R12 K10 ["closeAtDepth"]
      103 SETTABLEKS                       R11 R12 K11 ["reset"]
      105 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 DUPCLOSURE                       R6 K14 [PROTO_1]
       32 DUPCLOSURE                       R7 K15 [PROTO_13]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 RETURN                           R7 1
