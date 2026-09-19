PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 0
       25 MOVE                             R8 R6
       26 GETTABLE                         R9 R1 R5
       27 CALL                             R7 2 1
       28 JUMPIF                           R7 ; [+2]
       29 LOADB                            R7 0
       30 RETURN                           R7 1
       31 FORGLOOP                         R2 2 ; [-8]
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETUPVAL                         R7 0
       38 MOVE                             R8 R6
       39 GETTABLE                         R9 R0 R5
       40 CALL                             R7 2 1
       41 JUMPIF                           R7 ; [+2]
       42 LOADB                            R7 0
       43 RETURN                           R7 1
       44 FORGLOOP                         R2 2 ; [-8]
       46 LOADB                            R2 1
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [table.clone]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["current"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 DUPCLOSURE                       R2 K2 [PROTO_3]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["getter"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["createSignal"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K0 ["current"]
       14 GETTABLE                         R3 R4 R0
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["current"]
       19 DUPTABLE                         R5 K4 [{"getter", "setter"}]
       20 SETTABLEKS                       R2 R5 K1 ["getter"]
       22 SETTABLEKS                       R3 R5 K3 ["setter"]
       24 SETTABLE                         R5 R4 R0
       25 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQ                      R2 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K3 [table.clone]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["current"]
       12 CALL                             R2 1 1
       13 SETTABLE                         R1 R2 R0
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R2 R3 K0 ["current"]
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R5 2
       19 LOADB                            R6 0
       20 CALL                             R5 1 1
       21 ADDK                             R4 R5 K4 [1]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K0 ["current"]
       26 GETTABLE                         R3 R4 R0
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 4
       30 GETTABLEKS                       R5 R3 K5 ["getter"]
       32 LOADB                            R6 0
       33 CALL                             R5 1 1
       34 MOVE                             R6 R1
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R3 K6 ["setter"]
       40 MOVE                             R5 R1
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K3 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 0
       10 CALL                             R3 1 1
       11 ADDK                             R2 R3 K4 [1]
       12 CALL                             R1 1 0
       13 GETIMPORT                        R1 K2 [table.clone]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["current"]
       18 CALL                             R1 1 1
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETTABLE                         R7 R1 R5
       24 JUMPIFNOT                        R7 ; [+14]
       25 LOADNIL                          R8
       26 SETTABLE                         R8 R1 R5
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R9 R7 K5 ["getter"]
       30 LOADB                            R10 0
       31 CALL                             R9 1 1
       32 MOVE                             R10 R6
       33 CALL                             R8 2 1
       34 JUMPIF                           R8 ; [+4]
       35 GETTABLEKS                       R8 R7 K6 ["setter"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 0
       39 FORGLOOP                         R2 2 ; [-17]
       41 MOVE                             R2 R1
       42 LOADNIL                          R3
       43 LOADNIL                          R4
       44 FORGPREP                         R2
       45 GETTABLEKS                       R7 R6 K6 ["setter"]
       47 LOADNIL                          R8
       48 CALL                             R7 1 0
       49 FORGLOOP                         R2 2 ; [-5]
       51 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R0 K6 [{"setMap", "observe", "get", "set", "getMap", "observeMap"}]
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
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["observeMap"]
       19 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["useRef"]
        9 NEWTABLE                         R2 0 0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["useMemo"]
       15 DUPCLOSURE                       R3 K2 [PROTO_1]
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R0
       30 MOVE                             R8 R2
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R0
       44 MOVE                             R9 R1
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       51 NEWCLOSURE                       R7 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U3
       57 NEWTABLE                         R8 0 2
       59 MOVE                             R9 R0
       60 MOVE                             R10 R1
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       67 NEWCLOSURE                       R8 P4
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U3
       73 NEWTABLE                         R9 0 0
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       79 NEWCLOSURE                       R9 P5
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R10 0 1
       83 MOVE                             R11 R0
       84 SETLIST                          R10 R11 1 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       90 NEWCLOSURE                       R10 P6
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R11 0 1
       94 MOVE                             R12 R0
       95 SETLIST                          R11 R12 1 [1]
       97 CALL                             R9 2 1
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K1 ["useMemo"]
      101 NEWCLOSURE                       R11 P7
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R4
      108 NEWTABLE                         R12 0 6
      110 MOVE                             R13 R7
      111 MOVE                             R14 R5
      112 MOVE                             R15 R8
      113 MOVE                             R16 R6
      114 MOVE                             R17 R9
      115 MOVE                             R18 R4
      116 SETLIST                          R12 R13 6 [1]
      118 CALL                             R10 2 1
      119 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["SignalsUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 DUPCLOSURE                       R5 K11 [PROTO_11]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
