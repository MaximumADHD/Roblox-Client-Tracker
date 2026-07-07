PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["properties"]
        4 GETTABLEKS                       R1 R1 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsoluteSize"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AbsolutePosition"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AbsolutePosition"]
        9 SUB                              R1 R2 R3
       10 DIV                              R2 R1 R0
       11 GETTABLEKS                       R4 R0 K2 ["X"]
       13 GETTABLEKS                       R5 R0 K3 ["Y"]
       15 DIV                              R3 R4 R5
       16 GETUPVAL                         R5 2
       17 DIV                              R4 R5 R3
       18 GETIMPORT                        R5 K6 [Vector2.new]
       20 GETTABLEKS                       R7 R2 K2 ["X"]
       22 GETUPVAL                         R8 2
       23 MUL                              R6 R7 R8
       24 GETTABLEKS                       R9 R2 K3 ["Y"]
       26 MINUS                            R8 R9
       27 MUL                              R7 R8 R4
       28 CALL                             R5 2 1
       29 GETIMPORT                        R6 K6 [Vector2.new]
       31 GETTABLEKS                       R8 R5 K2 ["X"]
       33 FASTCALL1                        MATH_ROUND R8 ; [+2]
       34 GETIMPORT                        R7 K9 [math.round]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R9 R5 K3 ["Y"]
       39 FASTCALL1                        MATH_ROUND R9 ; [+2]
       40 GETIMPORT                        R8 K9 [math.round]
       42 CALL                             R8 1 1
       43 CALL                             R6 2 -1
       44 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R1 R0 K1 ["X"]
        5 LOADN                            R2 0
        6 JUMPIFLT                         R1 R2 ; [+6]
        8 GETTABLEKS                       R1 R0 K2 ["Y"]
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R1 R2 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 JUMPIF                           R1 ; [+5]
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K3 ["LayerCollector"]
       18 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       20 CALL                             R1 2 1
       21 SETUPVAL                         R1 1
       22 GETUPVAL                         R1 1
       23 JUMPIFNOT                        R1 ; [+20]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["AbsolutePosition"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K5 ["AbsoluteSize"]
       30 ADD                              R3 R1 R2
       31 GETTABLEKS                       R4 R0 K1 ["X"]
       33 GETTABLEKS                       R5 R3 K1 ["X"]
       35 JUMPIFLT                         R5 R4 ; [+7]
       37 GETTABLEKS                       R4 R0 K2 ["Y"]
       39 GETTABLEKS                       R5 R3 K2 ["Y"]
       41 JUMPIFNOTLT                      R5 R4 ; [+2]
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 2
       45 GETUPVAL                         R2 3
       46 CALL                             R2 0 -1
       47 CALL                             R1 -1 0
       48 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        6 LOADNIL                          R2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 GETUPVAL                         R4 0
       11 LOADK                            R6 K1 ["AbsolutePosition"]
       12 NAMECALL                         R4 R4 K2 ["GetPropertyChangedSignal"]
       14 CALL                             R4 2 1
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 NAMECALL                         R4 R4 K3 ["Connect"]
       22 CALL                             R4 2 1
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          VAL R4
       25 CLOSEUPVALS                      R2
       26 RETURN                           R5 1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["provide"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_10:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["switchMap"]
       10 GETUPVAL                         R2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["properties"]
        4 GETTABLEKS                       R1 R1 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsolutePosition"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_12]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 JUMPIFNOT                        R2 ; [+6]
        8 DUPTABLE                         R3 K2 [{"absolutePosition", "absoluteSize"}]
        9 SETTABLEKS                       R1 R3 K0 ["absolutePosition"]
       11 SETTABLEKS                       R2 R3 K1 ["absoluteSize"]
       13 RETURN                           R3 1
       14 LOADNIL                          R3
       15 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 DUPTABLE                         R0 K6 [{"observeFrame", "setFrame", "observeAbsolutePosition", "observeAbsoluteSize", "observeAbsoluteSizeState", "observeRelativeAbsolutePosition"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeFrame"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setFrame"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAbsolutePosition"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeAbsoluteSize"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeAbsoluteSizeState"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["observeRelativeAbsolutePosition"]
       19 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R0 2 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R0
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R5 0 1
       29 MOVE                             R6 R0
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       36 NEWCLOSURE                       R5 P3
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U3
       40 NEWTABLE                         R6 0 1
       42 MOVE                             R7 R0
       43 SETLIST                          R6 R7 1 [1]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       49 NEWCLOSURE                       R6 P4
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R7 0 2
       55 MOVE                             R8 R4
       56 MOVE                             R9 R2
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       63 NEWCLOSURE                       R7 P5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R8 0 6
       72 MOVE                             R9 R0
       73 MOVE                             R10 R1
       74 MOVE                             R11 R4
       75 MOVE                             R12 R2
       76 MOVE                             R13 R5
       77 MOVE                             R14 R3
       78 SETLIST                          R8 R9 6 [1]
       80 CALL                             R6 2 -1
       81 RETURN                           R6 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K8 ["Signals"]
       34 GETTABLEKS                       R5 R5 K11 ["TypedInstanceSignals"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K12 [PROTO_17]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
