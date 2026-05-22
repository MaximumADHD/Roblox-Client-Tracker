PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSignal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 JUMPIF                           R0 ; [+4]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 2
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 2
        7 LOADN                            R1 0
        8 JUMPIFLT                         R1 R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 LOADN                            R1 0
        5 JUMPIFLT                         R1 R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 RETURN                           R0 0
       14 LOADNIL                          R0
       15 GETIMPORT                        R1 K3 [task.defer]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          REF R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CALL                             R1 1 1
       23 MOVE                             R0 R1
       24 SETUPVAL                         R0 2
       25 CLOSEUPVALS                      R0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K3 [task.cancel]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R1 2
       12 JUMPIF                           R1 ; [+4]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 1
       16 SETUPVAL                         R1 2
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K4 ["onDisposed"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 6
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 7
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADN                            R6 0
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          REF R6
       10 CAPTURE                          REF R5
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R3
       14 NEWCLOSURE                       R8 P1
       15 CAPTURE                          REF R6
       16 CAPTURE                          REF R4
       17 CAPTURE                          REF R5
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K1 ["createComputed"]
       21 NEWCLOSURE                       R10 P2
       22 CAPTURE                          REF R6
       23 CAPTURE                          REF R5
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R8
       29 CAPTURE                          VAL R2
       30 CALL                             R9 1 -1
       31 CLOSEUPVALS                      R4
       32 RETURN                           R9 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 1
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["createEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 1
       18 SETUPVAL                         R2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 1
        8 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createEffect"]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 1
       13 NEWCLOSURE                       R4 P2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          REF R1
       16 CLOSEUPVALS                      R1
       17 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLE                         R5 R6 R4
        6 GETUPVAL                         R6 2
        7 JUMPIFNOTEQ                      R5 R6 ; [+2]
        9 RETURN                           R0 0
       10 FORGLOOP                         R0 2 ; [-7]
       12 GETIMPORT                        R0 K2 [table.create]
       14 GETUPVAL                         R2 0
       15 LENGTH                           R1 R2
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 0
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETUPVAL                         R7 1
       22 GETTABLE                         R6 R7 R5
       23 SETTABLE                         R6 R0 R4
       24 FORGLOOP                         R1 2 ; [-4]
       26 GETIMPORT                        R1 K4 [table.freeze]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 3
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createEffect"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K3 [table.freeze]
       17 DUPTABLE                         R4 K6 [{"target", "dispose"}]
       18 SETTABLEKS                       R0 R4 K4 ["target"]
       20 SETTABLEKS                       R2 R4 K5 ["dispose"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

PROTO_17:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [table.clone]
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R4 1 -1
       11 CALL                             R3 -1 1
       12 SETUPVAL                         R3 1
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R9 0
       18 GETTABLE                         R8 R9 R7
       19 JUMPIFNOT                        R8 ; [+6]
       20 LOADNIL                          R8
       21 SETTABLE                         R8 R1 R7
       22 GETUPVAL                         R9 0
       23 GETTABLE                         R8 R9 R7
       24 SETTABLE                         R8 R2 R7
       25 JUMP                             ; [+4]
       26 GETUPVAL                         R8 3
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 SETTABLE                         R8 R2 R7
       30 FORGLOOP                         R3 2 ; [-14]
       32 MOVE                             R3 R1
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETTABLEKS                       R8 R7 K3 ["dispose"]
       38 CALL                             R8 0 0
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R9 R7 K4 ["target"]
       42 LOADNIL                          R10
       43 SETTABLE                         R10 R8 R9
       44 FORGLOOP                         R3 2 ; [-9]
       46 GETIMPORT                        R3 K6 [table.freeze]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 SETUPVAL                         R3 0
       51 GETUPVAL                         R3 5
       52 CALL                             R3 0 0
       53 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [table.clone]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 3
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R1 3
        9 SETUPVAL                         R1 4
       10 GETUPVAL                         R1 3
       11 SETUPVAL                         R1 1
       12 MOVE                             R1 R0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K3 ["dispose"]
       18 CALL                             R6 0 0
       19 FORGLOOP                         R1 2 ; [-4]
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R3
        6 CAPTURE                          REF R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R4
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K0 ["createEffect"]
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          REF R1
       20 CAPTURE                          REF R3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R4
       25 CALL                             R6 1 1
       26 NEWCLOSURE                       R7 P3
       27 CAPTURE                          VAL R6
       28 CAPTURE                          REF R1
       29 CAPTURE                          REF R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R3
       32 CLOSEUPVALS                      R1
       33 RETURN                           R7 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["provide"]
        3 DUPCLOSURE                       R3 K1 [PROTO_13]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 GETTABLEKS                       R2 R2 K8 ["Experimental"]
       15 GETTABLEKS                       R2 R2 K9 ["SignalExperimentalUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["Signals"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["SignalsExperimental"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["Symbol"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 4 0
       41 DUPCLOSURE                       R6 K13 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R6 R5 K14 ["of"]
       45 DUPCLOSURE                       R6 K15 [PROTO_5]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R5 K16 ["provide"]
       51 DUPCLOSURE                       R6 K17 [PROTO_12]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R6 R5 K18 ["switchMap"]
       56 GETIMPORT                        R6 K21 [table.freeze]
       58 NEWTABLE                         R7 0 0
       60 CALL                             R6 1 1
       61 MOVE                             R7 R4
       62 LOADK                            R8 K22 ["UNSET_SYMBOL"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K23 [PROTO_20]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R8 R5 K24 ["forEach"]
       71 RETURN                           R5 1
