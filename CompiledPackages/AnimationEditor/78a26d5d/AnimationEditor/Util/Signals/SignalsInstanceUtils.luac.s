PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R1 R2 K4 ["onDisposed"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 6
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 7
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createSignal"]
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
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R9 R10 K1 ["createComputed"]
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

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 3
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R2 R3 K0 ["createEffect"]
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K0 ["createEffect"]
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 DUPCLOSURE                       R3 K1 [PROTO_5]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["forEach"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["createComputed"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createSignal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
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
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["createEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 1
       18 SETUPVAL                         R2 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 1
        8 RETURN                           R0 0

PROTO_23:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["createEffect"]
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

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETTABLEKS                       R5 R4 K1 ["Name"]
       11 GETUPVAL                         R6 2
       12 JUMPIFNOTEQ                      R5 R6 ; [+2]
       14 RETURN                           R4 1
       15 FORGLOOP                         R0 2 ; [-11]
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Name"]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 GETUPVAL                         R1 2
        9 JUMPIFNOTEQ                      R1 R0 ; [+2]
       11 RETURN                           R0 0
       12 SETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+14]
       14 GETIMPORT                        R1 K3 [table.find]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 0
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+19]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 0
       22 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       24 GETIMPORT                        R1 K5 [table.insert]
       26 CALL                             R1 2 0
       27 JUMP                             ; [+11]
       28 GETIMPORT                        R1 K3 [table.find]
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R3 0
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+5]
       34 GETIMPORT                        R2 K7 [table.remove]
       36 GETUPVAL                         R3 3
       37 MOVE                             R4 R1
       38 CALL                             R2 2 0
       39 GETUPVAL                         R1 4
       40 GETUPVAL                         R3 3
       41 GETTABLEN                        R2 R3 1
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 GETUPVAL                         R3 1
       17 LOADK                            R6 K0 ["Name"]
       18 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       20 CALL                             R4 2 1
       21 MOVE                             R6 R2
       22 NAMECALL                         R4 R4 K2 ["Connect"]
       24 CALL                             R4 2 1
       25 SETTABLE                         R4 R3 R0
       26 MOVE                             R3 R2
       27 CALL                             R3 0 0
       28 CLOSEUPVALS                      R1
       29 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 NAMECALL                         R1 R1 K0 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETIMPORT                        R1 K3 [table.find]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETIMPORT                        R2 K5 [table.remove]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R4 1
       24 GETTABLEN                        R3 R4 1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K0 ["Disconnect"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 GETUPVAL                         R0 3
       18 SETUPVAL                         R0 2
       19 GETUPVAL                         R0 3
       20 SETUPVAL                         R0 4
       21 RETURN                           R0 0

PROTO_30:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          REF R1
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K0 ["ChildAdded"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K1 ["Connect"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K2 ["ChildRemoved"]
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R1
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R5 R5 K1 ["Connect"]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 2
       28 NAMECALL                         R6 R6 K3 ["GetChildren"]
       30 CALL                             R6 1 3
       31 FORGPREP                         R6
       32 MOVE                             R11 R3
       33 MOVE                             R12 R10
       34 CALL                             R11 1 0
       35 FORGLOOP                         R6 2 ; [-4]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          REF R2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          REF R1
       43 CLOSEUPVALS                      R1
       44 RETURN                           R6 1

PROTO_31:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["provide"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["observeFirstNamedChild"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 -1
        8 RETURN                           R3 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetOrderedInputPinNames"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetOrderedInputPinNames"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["InputPinsChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAttributes"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetAttributes"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AttributeChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R3 R1 K0 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R3 2 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AncestryChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetChildren"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetChildren"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ChildAdded"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["ChildRemoved"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R2 R2 K1 ["Connect"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_55:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetChildren"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 1
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 JUMPIFNOT                        R6 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R5
       15 GETIMPORT                        R6 K3 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-12]
       20 RETURN                           R0 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K2 [table.insert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R2 K4 [table.freeze]
       15 GETIMPORT                        R3 K6 [table.clone]
       17 GETUPVAL                         R4 1
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_57:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETIMPORT                        R2 K4 [table.remove]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETIMPORT                        R3 K6 [table.freeze]
       14 GETIMPORT                        R4 K8 [table.clone]
       16 GETUPVAL                         R5 0
       17 CALL                             R4 1 -1
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_59:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["GetChildren"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K3 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K4 ["ChildAdded"]
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K5 ["Connect"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K6 ["ChildRemoved"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R4 R4 K5 ["Connect"]
       39 CALL                             R4 2 1
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1

PROTO_60:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_61:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeChildrenWithPredicate"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K0 ["FindFirstChildWhichIsA"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_64:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1

PROTO_65:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K0 ["FindFirstChildWhichIsA"]
        8 CALL                             R1 3 1
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1

PROTO_67:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+13]
        5 LOADK                            R3 K1 ["Parent"]
        6 NAMECALL                         R1 R0 K2 ["GetPropertyChangedSignal"]
        8 CALL                             R1 2 1
        9 NAMECALL                         R1 R1 K3 ["Wait"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["DescendantAdded"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["DescendantRemoving"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R2 R2 K1 ["Connect"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1

PROTO_70:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_71:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 1
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 JUMPIFNOT                        R6 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R5
       15 GETIMPORT                        R6 K3 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-12]
       20 RETURN                           R0 1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K2 [table.insert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R2 K4 [table.freeze]
       15 GETIMPORT                        R3 K6 [table.clone]
       17 GETUPVAL                         R4 1
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_73:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETIMPORT                        R2 K4 [table.remove]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETIMPORT                        R3 K6 [table.freeze]
       14 GETIMPORT                        R4 K8 [table.clone]
       16 GETUPVAL                         R5 0
       17 CALL                             R4 1 -1
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_75:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["GetDescendants"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K3 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K4 ["DescendantAdded"]
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K5 ["Connect"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K6 ["DescendantRemoving"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R4 R4 K5 ["Connect"]
       39 CALL                             R4 2 1
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1

PROTO_76:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["provide"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Util"]
       11 GETTABLEKS                       R4 R5 K7 ["Signals"]
       13 GETTABLEKS                       R3 R4 K8 ["Experimental"]
       15 GETTABLEKS                       R2 R3 K9 ["SignalExperimentalUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Signals"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R5 K11 ["SignalsExperimental"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R6 K12 ["Symbol"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["cleanHoles"]
       45 CALL                             R5 1 1
       46 NEWTABLE                         R6 16 0
       48 DUPCLOSURE                       R7 K14 [PROTO_4]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K15 ["provide"]
       54 GETIMPORT                        R7 K18 [table.freeze]
       56 NEWTABLE                         R8 0 0
       58 CALL                             R7 1 1
       59 MOVE                             R8 R4
       60 LOADK                            R9 K19 ["UNSET_SYMBOL"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K20 [PROTO_12]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R9 R6 K21 ["forEach"]
       69 DUPCLOSURE                       R9 K22 [PROTO_16]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R9 R6 K23 ["filter"]
       75 DUPCLOSURE                       R9 K24 [PROTO_17]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R9 R6 K25 ["of"]
       79 DUPCLOSURE                       R9 K26 [PROTO_24]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R9 R6 K27 ["switchMap"]
       84 DUPCLOSURE                       R9 K28 [PROTO_31]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R9 R6 K29 ["observeFirstNamedChild"]
       89 DUPCLOSURE                       R9 K30 [PROTO_33]
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R9 R6 K31 ["observeFirstNamedChildWhichIsA"]
       93 DUPCLOSURE                       R9 K32 [PROTO_38]
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R9 R6 K33 ["observeInputPins"]
       97 DUPCLOSURE                       R9 K34 [PROTO_43]
       98 CAPTURE                          VAL R6
       99 SETTABLEKS                       R9 R6 K35 ["observeAttributes"]
      101 DUPCLOSURE                       R9 K36 [PROTO_48]
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R9 R6 K37 ["observeFirstAncestor"]
      105 DUPCLOSURE                       R9 K38 [PROTO_54]
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R9 R6 K39 ["observeChildren"]
      109 DUPCLOSURE                       R9 K40 [PROTO_60]
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R9 R6 K41 ["observeChildrenWithPredicate"]
      113 DUPCLOSURE                       R9 K42 [PROTO_62]
      114 CAPTURE                          VAL R6
      115 SETTABLEKS                       R9 R6 K43 ["observeChildrenWhichIsA"]
      117 DUPCLOSURE                       R9 K44 [PROTO_70]
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R9 R6 K45 ["observeFirstDescendantWhichIsA"]
      121 DUPCLOSURE                       R9 K46 [PROTO_76]
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R9 R6 K47 ["observeDescendantsWithPredicate"]
      125 RETURN                           R6 1
