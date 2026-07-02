PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 3
        8 CALL                             R2 2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R7 K2 [table.clone]
        2 MOVE                             R8 R0
        3 CALL                             R7 1 1
        4 GETIMPORT                        R8 K2 [table.clone]
        6 MOVE                             R9 R1
        7 CALL                             R8 1 1
        8 MOVE                             R9 R2
        9 LOADNIL                          R10
       10 LOADNIL                          R11
       11 FORGPREP                         R9
       12 GETTABLE                         R14 R8 R12
       13 JUMPIFNOTEQKNIL                  R14 ; [+4]
       15 NEWTABLE                         R14 0 0
       17 SETTABLE                         R14 R8 R12
       18 GETTABLE                         R18 R8 R12
       19 LENGTH                           R17 R18
       20 ADDK                             R16 R17 K3 [1]
       21 MOVE                             R14 R13
       22 LOADN                            R15 1
       23 FORNPREP                         R14
       24 GETUPVAL                         R17 0
       25 GETTABLEKS                       R17 R17 K4 ["createSignal"]
       27 MOVE                             R18 R3
       28 MOVE                             R19 R12
       29 CALL                             R18 1 -1
       30 CALL                             R17 -1 2
       31 GETUPVAL                         R19 0
       32 GETTABLEKS                       R19 R19 K4 ["createSignal"]
       34 LOADB                            R20 0
       35 CALL                             R19 1 2
       36 GETUPVAL                         R21 1
       37 GETTABLEKS                       R21 R21 K5 ["createBinding"]
       39 LOADN                            R22 1
       40 CALL                             R21 1 2
       41 GETUPVAL                         R23 1
       42 GETTABLEKS                       R23 R23 K5 ["createBinding"]
       44 LOADB                            R24 0
       45 CALL                             R23 1 2
       46 GETUPVAL                         R25 0
       47 GETTABLEKS                       R25 R25 K6 ["createEffect"]
       49 NEWCLOSURE                       R26 P0
       50 CAPTURE                          VAL R24
       51 CAPTURE                          VAL R19
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R17
       54 CALL                             R25 1 1
       55 GETTABLE                         R27 R8 R12
       56 DUPTABLE                         R28 K12 [{"setParams", "setLayoutOrder", "getUsed", "setUsed", "cleanup"}]
       57 NEWCLOSURE                       R29 P1
       58 CAPTURE                          VAL R18
       59 SETTABLEKS                       R29 R28 K7 ["setParams"]
       61 SETTABLEKS                       R22 R28 K8 ["setLayoutOrder"]
       63 SETTABLEKS                       R19 R28 K9 ["getUsed"]
       65 SETTABLEKS                       R20 R28 K10 ["setUsed"]
       67 NEWCLOSURE                       R29 P2
       68 CAPTURE                          VAL R25
       69 SETTABLEKS                       R29 R28 K11 ["cleanup"]
       71 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
       73 GETIMPORT                        R26 K14 [table.insert]
       75 CALL                             R26 2 0
       76 MOVE                             R26 R5
       77 MOVE                             R27 R12
       78 MOVE                             R28 R16
       79 CALL                             R26 2 1
       80 MOVE                             R27 R4
       81 MOVE                             R28 R12
       82 MOVE                             R29 R17
       83 MOVE                             R30 R21
       84 MOVE                             R31 R23
       85 CALL                             R27 4 1
       86 SETTABLE                         R27 R7 R26
       87 FORNLOOP                         R14
       88 FORGLOOP                         R9 2 ; [-77]
       90 RETURN                           R7 2

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 GETUPVAL                         R6 4
        9 GETUPVAL                         R7 5
       10 CALL                             R0 7 2
       11 GETUPVAL                         R2 6
       12 SETTABLEKS                       R0 R2 K0 ["current"]
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETTABLEKS                       R10 R9 K1 ["cleanup"]
       12 CALL                             R10 0 0
       13 FORGLOOP                         R5 2 ; [-4]
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["initialElementsPerBucket"]
        2 GETTABLEKS                       R2 R0 K1 ["elementsPerBucketNeeded"]
        4 GETTABLEKS                       R3 R0 K2 ["paramsConstructor"]
        6 GETTABLEKS                       R4 R0 K3 ["render"]
        8 GETTABLEKS                       R5 R0 K4 ["getKey"]
       10 GETTABLEKS                       R6 R0 K5 ["isVisible"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["useRef"]
       15 NEWTABLE                         R8 0 0
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K7 ["useLazyRef"]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R7
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R10 R7 K8 ["current"]
       33 GETTABLEKS                       R11 R8 K8 ["current"]
       35 MOVE                             R12 R2
       36 MOVE                             R13 R3
       37 MOVE                             R14 R4
       38 MOVE                             R15 R5
       39 MOVE                             R16 R6
       40 CALL                             R9 7 2
       41 SETTABLEKS                       R9 R7 K8 ["current"]
       43 SETTABLEKS                       R10 R8 K8 ["current"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R11 0 0
       52 CALL                             R9 2 0
       53 GETTABLEKS                       R9 R7 K8 ["current"]
       55 MOVE                             R10 R8
       56 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Signals"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K10 [PROTO_3]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R6 K11 [PROTO_7]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 RETURN                           R6 1
