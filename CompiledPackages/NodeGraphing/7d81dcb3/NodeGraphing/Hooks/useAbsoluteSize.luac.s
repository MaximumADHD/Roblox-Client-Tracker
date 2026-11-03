PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidVector2"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R2 R0 K1 ["X"]
       11 JUMPIFNOTEQKN                    R2 K2 [0] ; [+7]
       13 GETTABLEKS                       R2 R0 K3 ["Y"]
       15 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["isValidVector2"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+2]
        8 LOADB                            R1 0
        9 JUMP                             ; [+11]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K1 ["X"]
       13 JUMPIFNOTEQKN                    R2 K2 [0] ; [+7]
       15 GETTABLEKS                       R2 R0 K3 ["Y"]
       17 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADB                            R1 1
       23 SETUPVAL                         R1 2
       24 GETUPVAL                         R1 3
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K1 ["LayerCollector"]
        7 NAMECALL                         R1 R1 K2 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R1 2 1
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["AbsolutePosition"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 GETUPVAL                         R3 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K3 ["AbsoluteSize"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 GETUPVAL                         R3 2
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 CALL                             R3 4 1
       31 JUMPIFNOT                        R3 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 4
       34 CALL                             R3 0 1
       35 GETUPVAL                         R5 5
       36 GETTABLEKS                       R5 R5 K4 ["isValidVector2"]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 JUMPIF                           R5 ; [+2]
       41 LOADB                            R4 0
       42 JUMP                             ; [+11]
       43 LOADB                            R4 1
       44 GETTABLEKS                       R5 R3 K5 ["X"]
       46 JUMPIFNOTEQKN                    R5 K6 [0] ; [+7]
       48 GETTABLEKS                       R5 R3 K7 ["Y"]
       50 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 JUMPIFNOT                        R4 ; [+2]
       55 LOADB                            R4 1
       56 SETUPVAL                         R4 3
       57 GETUPVAL                         R4 6
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        6 LOADNIL                          R2
        7 LOADB                            R3 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          REF R3
       12 CAPTURE                          VAL R0
       13 GETUPVAL                         R5 0
       14 LOADK                            R7 K1 ["AbsolutePosition"]
       15 NAMECALL                         R5 R5 K2 ["GetPropertyChangedSignal"]
       17 CALL                             R5 2 1
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          REF R2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          REF R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R5 R5 K3 ["Connect"]
       28 CALL                             R5 2 1
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          VAL R5
       31 CLOSEUPVALS                      R2
       32 RETURN                           R6 1

PROTO_10:
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
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_11:
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
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_13]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
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
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R0
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       38 NEWCLOSURE                       R5 P3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U3
       42 NEWTABLE                         R6 0 1
       44 MOVE                             R7 R0
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 NEWTABLE                         R7 0 2
       57 MOVE                             R8 R4
       58 MOVE                             R9 R2
       59 SETLIST                          R7 R8 2 [1]
       61 CALL                             R5 2 1
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       65 NEWCLOSURE                       R7 P5
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R8 0 6
       74 MOVE                             R9 R0
       75 MOVE                             R10 R1
       76 MOVE                             R11 R4
       77 MOVE                             R12 R2
       78 MOVE                             R13 R5
       79 MOVE                             R14 R3
       80 SETLIST                          R8 R9 6 [1]
       82 CALL                             R6 2 -1
       83 RETURN                           R6 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["Vector2Utils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Util"]
       48 GETTABLEKS                       R7 R7 K13 ["shouldSkipOffsetUpdate"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K14 [PROTO_0]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R8 K15 [PROTO_18]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
