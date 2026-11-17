PROTO_0:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["observeDebugData"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["observeDebugData"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["parent"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETTABLEKS                       R1 R0 K0 ["parent"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["switchMap"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["observeActiveDebugTargetIdentifier"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["of"]
       19 LOADNIL                          R2
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["of"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["switchMap"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["observeActiveDebugTargetIdentifier"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U0
       19 CALL                             R0 2 1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K1 ["switchMap"]
       23 MOVE                             R2 R0
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U0
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 3
       17 GETTABLEKS                       R5 R1 K3 ["observeDebugData"]
       19 GETTABLEKS                       R6 R1 K4 ["observeActiveDebugTargetIdentifier"]
       21 MOVE                             R7 R0
       22 SETLIST                          R4 R5 3 [1]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDebugDataContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K7 ["GraphDebugDataContext"]
       20 GETTABLEKS                       R3 R3 K8 ["GraphDebugDataUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["Signals"]
       43 GETTABLEKS                       R6 R6 K14 ["Experimental"]
       45 GETTABLEKS                       R6 R6 K15 ["SignalExperimentalUtils"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Parent"]
       52 GETTABLEKS                       R7 R7 K13 ["Signals"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Util"]
       59 GETTABLEKS                       R8 R8 K13 ["Signals"]
       61 GETTABLEKS                       R8 R8 K16 ["SignalsInstanceUtils"]
       63 CALL                             R7 1 1
       64 NEWTABLE                         R8 1 0
       66 DUPCLOSURE                       R9 K17 [PROTO_5]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R9 R8 K18 ["useObserveNodeWeight"]
       73 RETURN                           R8 1
