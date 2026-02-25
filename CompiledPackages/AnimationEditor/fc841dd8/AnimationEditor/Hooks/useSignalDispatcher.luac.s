PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["getter"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["createSignal"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K0 ["current"]
       14 GETTABLE                         R3 R4 R0
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["current"]
       19 DUPTABLE                         R5 K4 [{"getter", "setter"}]
       20 SETTABLEKS                       R2 R5 K1 ["getter"]
       22 SETTABLEKS                       R3 R5 K3 ["setter"]
       24 SETTABLE                         R5 R4 R0
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["current"]
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETTABLEKS                       R3 R2 K1 ["setter"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K3 ["current"]
        7 GETIMPORT                        R1 K2 [table.clone]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["current"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLE                         R7 R1 R5
       18 JUMPIFNOT                        R7 ; [+6]
       19 LOADNIL                          R8
       20 SETTABLE                         R8 R1 R5
       21 GETTABLEKS                       R8 R7 K4 ["setter"]
       23 MOVE                             R9 R6
       24 CALL                             R8 1 0
       25 FORGLOOP                         R2 2 ; [-9]
       27 MOVE                             R2 R1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETTABLEKS                       R7 R6 K4 ["setter"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 0
       35 FORGLOOP                         R2 2 ; [-5]
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["current"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K5 [{"setMap", "observe", "get", "set", "getMap"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setMap"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observe"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["get"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["set"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["getMap"]
       16 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useRef"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["useRef"]
        9 NEWTABLE                         R2 0 0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["useCallback"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 2
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R5 0 2
       34 MOVE                             R6 R0
       35 MOVE                             R7 R1
       36 SETLIST                          R5 R6 2 [1]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R6 0 0
       47 CALL                             R4 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       51 NEWCLOSURE                       R6 P3
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R7 0 1
       55 MOVE                             R8 R0
       56 SETLIST                          R7 R8 1 [1]
       58 CALL                             R5 2 1
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K1 ["useCallback"]
       62 NEWCLOSURE                       R7 P4
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R8 0 1
       66 MOVE                             R9 R0
       67 SETLIST                          R8 R9 1 [1]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K2 ["useMemo"]
       73 NEWCLOSURE                       R8 P5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 NEWTABLE                         R9 0 5
       81 MOVE                             R10 R4
       82 MOVE                             R11 R2
       83 MOVE                             R12 R5
       84 MOVE                             R13 R3
       85 MOVE                             R14 R6
       86 SETLIST                          R9 R10 5 [1]
       88 CALL                             R7 2 1
       89 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_6]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
