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
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETTABLEKS                       R1 R0 K0 ["parent"]
        3 JUMPIFNOT                        R1 ; [+22]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["switchMap"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["observeActiveDebugTargetIdentifier"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K3 ["observeDebugData_DEPRECATED"]
       22 GETTABLEKS                       R2 R0 K0 ["parent"]
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K4 ["of"]
       29 LOADNIL                          R2
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1

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
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+12]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["switchMap"]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["observeActiveDebugTargetIdentifier"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U0
       22 CALL                             R0 2 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K3 ["observeDebugData_DEPRECATED"]
       27 GETUPVAL                         R1 0
       28 CALL                             R0 1 1
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K1 ["switchMap"]
       32 MOVE                             R2 R0
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U3
       37 CALL                             R1 2 1
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K4 ["createComputed"]
       41 NEWCLOSURE                       R3 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U0
       44 CALL                             R2 1 -1
       45 RETURN                           R2 -1

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
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U4
       16 NEWTABLE                         R4 0 3
       18 GETUPVAL                         R6 3
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+3]
       21 GETTABLEKS                       R5 R1 K3 ["observeDebugData"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R5 R1 K4 ["observeDebugData_DEPRECATED"]
       26 GETUPVAL                         R7 3
       27 CALL                             R7 0 1
       28 JUMPIFNOT                        R7 ; [+3]
       29 GETTABLEKS                       R6 R1 K5 ["observeActiveDebugTargetIdentifier"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R6
       33 MOVE                             R7 R0
       34 SETLIST                          R4 R5 3 [1]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

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
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagAnimGraphUI_RunTimeDebug"]
       70 CALL                             R8 1 1
       71 NEWTABLE                         R9 1 0
       73 DUPCLOSURE                       R10 K19 [PROTO_5]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R10 R9 K20 ["useObserveNodeWeight"]
       81 RETURN                           R9 1
