PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R1 R0 K0 ["parent"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["observeDebugData"]
        7 GETTABLEKS                       R2 R0 K0 ["parent"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["of"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["children"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K0 ["children"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R6 K1 ["id"]
       18 GETUPVAL                         R8 1
       19 JUMPIFNOTEQ                      R7 R8 ; [+4]
       21 GETTABLEKS                       R7 R6 K2 ["weight"]
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 2 ; [-9]
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["of"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K1 ["observeDebugData"]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["switchMap"]
       17 MOVE                             R2 R0
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U1
       21 CALL                             R1 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R2 R3 K3 ["createComputed"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U0
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 2
       17 GETTABLEKS                       R5 R1 K3 ["observeDebugData"]
       19 MOVE                             R6 R0
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useObserveNodeWeight"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R1
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["GraphDebugDataContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R5 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R6 K11 ["Signals"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Util"]
       37 GETTABLEKS                       R7 R8 K11 ["Signals"]
       39 GETTABLEKS                       R6 R7 K13 ["SignalsInstanceUtils"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 2 0
       44 DUPCLOSURE                       R7 K14 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R7 R6 K15 ["useObserveNodeWeight"]
       51 DUPCLOSURE                       R7 K16 [PROTO_6]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R6 K17 ["useObserveIsDisabled"]
       57 RETURN                           R6 1
