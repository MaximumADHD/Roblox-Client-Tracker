PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 MOVE                             R3 R1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R0 R5
        7 JUMPIFEQKNIL                     R6 ; [+3]
        9 GETTABLE                         R6 R0 R5
       10 SETTABLE                         R6 R2 R5
       11 FORNLOOP                         R3
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 SUBK                             R5 R1 K0 [1]
        3 CALL                             R3 2 1
        4 SETTABLE                         R2 R3 R1
        5 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 SUBK                             R6 R2 K0 [1]
        5 CALL                             R4 2 1
        6 SETTABLE                         R3 R4 R2
        7 MOVE                             R1 R4
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 SUBK                             R6 R2 K0 [1]
        5 CALL                             R4 2 1
        6 SETTABLE                         R3 R4 R2
        7 MOVE                             R1 R4
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 4
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["current"]
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R0 0
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETUPVAL                         R3 2
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 4
       18 GETIMPORT                        R4 K3 [task.delay]
       20 GETUPVAL                         R5 5
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K0 ["current"]
       30 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLT                      R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 GETUPVAL                         R4 0
        8 SUBK                             R3 R4 K0 [1]
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 3
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["current"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTLT                      R1 R0 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETIMPORT                        R2 K3 [task.delay]
       12 GETUPVAL                         R3 3
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U2
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K0 ["current"]
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Hooks"]
        3 GETTABLEKS                       R0 R0 K1 ["useTokens"]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R1 R0 K2 ["Time"]
        8 GETTABLEKS                       R1 R1 K3 ["Time_100"]
       10 GETTABLEKS                       R2 R0 K2 ["Time"]
       12 GETTABLEKS                       R2 R2 K4 ["Time_300"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K5 ["useState"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["useRef"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K6 ["useRef"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K6 ["useRef"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R3 R5 K7 ["current"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          VAL R7
       42 NEWTABLE                         R10 0 0
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R8
       51 NEWTABLE                         R11 0 1
       53 MOVE                             R12 R8
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       60 NEWCLOSURE                       R11 P2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R12 0 2
       69 MOVE                             R13 R9
       70 MOVE                             R14 R1
       71 SETLIST                          R12 R13 2 [1]
       73 CALL                             R10 2 1
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       77 NEWCLOSURE                       R12 P3
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U2
       84 NEWTABLE                         R13 0 2
       86 MOVE                             R14 R9
       87 MOVE                             R15 R2
       88 SETLIST                          R13 R14 2 [1]
       90 CALL                             R11 2 1
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K8 ["useCallback"]
       94 NEWCLOSURE                       R13 P4
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R4
       97 NEWTABLE                         R14 0 1
       99 MOVE                             R15 R9
      100 SETLIST                          R14 R15 1 [1]
      102 CALL                             R12 2 1
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R13 R13 K9 ["useEffect"]
      106 NEWCLOSURE                       R14 P5
      107 CAPTURE                          VAL R9
      108 NEWTABLE                         R15 0 1
      110 MOVE                             R16 R9
      111 SETLIST                          R15 R16 1 [1]
      113 CALL                             R13 2 0
      114 DUPTABLE                         R13 K15 [{"currentOpenPath", "openAtDepth", "closeAtDepth", "cancelPendingClose", "closeAll"}]
      115 SETTABLEKS                       R3 R13 K10 ["currentOpenPath"]
      117 SETTABLEKS                       R10 R13 K11 ["openAtDepth"]
      119 SETTABLEKS                       R11 R13 K12 ["closeAtDepth"]
      121 SETTABLEKS                       R8 R13 K13 ["cancelPendingClose"]
      123 SETTABLEKS                       R12 R13 K14 ["closeAll"]
      125 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 DUPCLOSURE                       R6 K11 [PROTO_1]
       28 CAPTURE                          VAL R5
       29 DUPCLOSURE                       R7 K12 [PROTO_13]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 RETURN                           R7 1
