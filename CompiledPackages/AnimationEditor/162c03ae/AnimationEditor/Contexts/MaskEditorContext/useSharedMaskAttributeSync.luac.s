PROTO_0:
        0 DUPTABLE                         R1 K2 [{"flattenedJoints", "maskInstance"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["flattenedJoints"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K1 ["maskInstance"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["createComputed"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R9 R6 K0 ["maskInstance"]
       10 GETTABLE                         R7 R8 R9
       11 GETTABLEKS                       R8 R6 K1 ["flattenedJoints"]
       13 JUMPIFEQ                         R7 R8 ; [+23]
       15 GETTABLEKS                       R7 R6 K1 ["flattenedJoints"]
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 GETTABLEKS                       R12 R6 K0 ["maskInstance"]
       22 GETTABLEKS                       R14 R11 K2 ["name"]
       24 GETTABLEKS                       R15 R11 K3 ["value"]
       26 NAMECALL                         R12 R12 K4 ["SetAttribute"]
       28 CALL                             R12 3 0
       29 FORGLOOP                         R7 2 ; [-10]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R8 R6 K0 ["maskInstance"]
       34 GETTABLEKS                       R9 R6 K1 ["flattenedJoints"]
       36 SETTABLE                         R9 R7 R8
       37 FORGLOOP                         R2 2 ; [-31]
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 2 1
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R3 5
       12 GETTABLEKS                       R2 R3 K1 ["createEffect"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NEWTABLE                         R4 0 2
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Instances"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K6 ["Util"]
       27 GETTABLEKS                       R6 R7 K11 ["Signals"]
       29 GETTABLEKS                       R5 R6 K12 ["Experimental"]
       31 GETTABLEKS                       R4 R5 K13 ["SignalExperimentalUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K9 ["Parent"]
       38 GETTABLEKS                       R5 R6 K11 ["Signals"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Util"]
       45 GETTABLEKS                       R7 R8 K11 ["Signals"]
       47 GETTABLEKS                       R6 R7 K14 ["SignalsInstanceUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R8 R9 K9 ["Parent"]
       56 GETTABLEKS                       R7 R8 K15 ["observeFlattenedJoints"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_4]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 RETURN                           R7 1
