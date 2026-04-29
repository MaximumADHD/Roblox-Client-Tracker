PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["properties"]
        4 GETTABLEKS                       R1 R2 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsoluteSize"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["properties"]
        4 GETTABLEKS                       R1 R2 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsolutePosition"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"observeFrame", "setFrame", "observeAbsolutePosition", "observeAbsoluteSize", "observeAbsoluteSizeState"}]
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
       16 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R0 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R0
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["useMemo"]
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R0
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R6 0 2
       43 MOVE                             R7 R3
       44 MOVE                             R8 R2
       45 SETLIST                          R6 R7 2 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K0 ["useMemo"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R7 0 5
       59 MOVE                             R8 R0
       60 MOVE                             R9 R1
       61 MOVE                             R10 R3
       62 MOVE                             R11 R2
       63 MOVE                             R12 R4
       64 SETLIST                          R7 R8 5 [1]
       66 CALL                             R5 2 -1
       67 RETURN                           R5 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R6 K8 ["Signals"]
       27 GETTABLEKS                       R4 R5 K10 ["SignalsInstanceUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Util"]
       34 GETTABLEKS                       R6 R7 K8 ["Signals"]
       36 GETTABLEKS                       R5 R6 K11 ["TypedInstanceSignals"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K12 [PROTO_8]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 RETURN                           R5 1
